order = ['r1','r2','r3','r4','r5','r6','r7','r8','r9','r10','r11','r12']

header = '''.p2align 2,,3
.syntax unified
.text

.global gimli_asm
.type gimli_asm, %function
@ void gimli_asm(uint32_t *state)
gimli_asm:
  push.w {r1-r12, lr}
  ldm.w r0, {r1-r12}
  vmov.w s0, r0
  movw.w r0, 0x7900
  movt.w r0, 0x9e37
  vmov.w s2, r0
'''

def assem(cmd, rx):
    res = '  ' + cmd + ' '
    for i in rx[:-1]:
        res += i + ', '
    res += rx[-1] + '\n'
    f.write(res)

def cal(r):
    assem("ror.w", [r[0], '#8'])
    assem("ror.w", [r[1], '#8'])
    assem("ror.w", [r[2], '#8'])
    assem("ror.w", [r[3], '#8'])
    assem("and.w", ['lr', r[8], r[4], 'ror #23'])
    assem("eor.w", ['lr', r[0], 'lr', 'lsl #2'])
    assem("orr.w", ['r0', r[0], r[8]])
    assem("eor.w", ['r0', r[0], 'r0', 'lsl #1'])
    assem("and.w", [r[0], r[0], r[4], 'ror #23'])
    assem("eor.w", [r[0], r[8], r[0], 'lsl #3'])
    assem("eor.w", [r[0], r[0], r[4], 'ror #23'])
    assem("eor.w", [r[8], 'lr', r[8], 'lsl #1'])
    assem("eor.w", [r[4], 'r0', r[4], 'ror #23'])
    assem("and.w", ['lr', r[9], r[5], 'ror #23'])
    assem("eor.w", ['lr', r[1], 'lr', 'lsl #2'])
    assem("orr.w", ['r0', r[1], r[9]])
    assem("eor.w", ['r0', r[1], 'r0', 'lsl #1'])
    assem("and.w", [r[1], r[1], r[5], 'ror #23'])
    assem("eor.w", [r[1], r[9], r[1], 'lsl #3'])
    assem("eor.w", [r[1], r[1], r[5], 'ror #23'])
    assem("eor.w", [r[9], 'lr', r[9], 'lsl #1'])
    assem("eor.w", [r[5], 'r0', r[5], 'ror #23'])
    assem("and.w", ['lr', r[10], r[6], 'ror #23'])
    assem("eor.w", ['lr', r[2], 'lr', 'lsl #2'])
    assem("orr.w", ['r0', r[2], r[10]])
    assem("eor.w", ['r0', r[2], 'r0', 'lsl #1'])
    assem("and.w", [r[2], r[2], r[6], 'ror #23'])
    assem("eor.w", [r[2], r[10], r[2], 'lsl #3'])
    assem("eor.w", [r[2], r[2], r[6], 'ror #23'])
    assem("eor.w", [r[10], 'lr', r[10], 'lsl #1'])
    assem("eor.w", [r[6], 'r0', r[6], 'ror #23'])
    assem("and.w", ['lr', r[11], r[7], 'ror #23'])
    assem("eor.w", ['lr', r[3], 'lr', 'lsl #2'])
    assem("orr.w", ['r0', r[3], r[11]])
    assem("eor.w", ['r0', r[3], 'r0', 'lsl #1'])
    assem("and.w", [r[3], r[3], r[7], 'ror #23'])
    assem("eor.w", [r[3], r[11], r[3], 'lsl #3'])
    assem("eor.w", [r[3], r[3], r[7], 'ror #23'])
    assem("eor.w", [r[11], 'lr', r[11], 'lsl #1'])
    assem("eor.w", [r[7], 'r0', r[7], 'ror #23'])

def schedule():
    global order
    for rounds in range(24, 0, -1):
        print(order)
        cal(order)
        if rounds & 3 == 0:
            assem("vmov.w", ['r0', 's2'])
            assem("orr.w", ['r0', 'r0', '#'+str(rounds)])
            assem("eor.w", [order[1], order[1], 'r0'])
            order = [order[1], order[0], order[3], order[2]] + order[4:]
        if rounds & 3 == 2:
            order = [order[2], order[3], order[0], order[1]] + order[4:]

if __name__ == '__main__':
    f = open("gimli.S", 'w')
    f.write(header)
    schedule()
    f.write("  vmov.w r0, s0\n")
    f.write("  stm.w r0, {r1-r12}\n")
    f.write("  pop.w {r1-r12, pc}")
    f.close()
