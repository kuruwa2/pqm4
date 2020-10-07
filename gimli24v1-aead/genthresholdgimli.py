order = [0,1,2,3]
rs0 = ['r3', 'r4', 'r5']
rs1 = ['r6', 'r7', 'r8']
rs2 = ['r9', 'r10', 'r11']
rs3 = ['r0', 'r1', 'r2']

header = '''.p2align 2,,3
.syntax unified
.text

.global threshold_gimli_asm
.type threshold_gimli_asm, %function
@ void threshold_gimli_asm(uint32_t *state, uint32_t *shared_state1, uint32_t *shared_state2)
threshold_gimli_asm:
  push.w {r3-r12, lr}
  vmov.w s0, r0
  vmov.w s1, r1
  vmov.w s2, r2
  movw.w lr, 0x7900
  movt.w lr, 0x9e37
  vmov.w s3, lr
'''

def assem(cmd, rx):
    res = '  ' + cmd + ' '
    for i in rx[:-1]:
        res += i + ', '
    res += rx[-1] + '\n'
    f.write(res)

def load(rs, ps, o):
    assem("ldr.w", [rs, '['+ps+", #"+str(o*4)+']'])

def save(rs, ps, o):
    assem("str.w", [rs, '['+ps+', #'+str(o*4)+']'])

def cal(r1, r2, r3, r4):
    assem("ror.w", [r1[0], '#8'])
    assem("ror.w", [r2[0], '#8'])
    assem("ror.w", [r3[0], '#8'])
    assem("bic.w", [r4[0], r1[0], r3[2]])
    assem("bic.w", ['lr', r1[2], r3[0]])
    assem("eor.w", [r4[0], r4[0], 'lr'])
    assem("orr.w", ['lr', r3[0], r3[2]])
    assem("eor.w", [r4[0], r4[0], 'lr'])
    assem("eor.w", [r4[0], r3[0], r4[0], 'lsl #1'])
    assem("eor.w", [r4[0], r4[0], r3[1], 'ror #23']) # y1=r4[0]
    assem("and.w", [r4[1], r1[0], r3[1], 'ror #23'])
    assem("and.w", ['lr', r3[0], r1[1], 'ror #23'])
    assem("eor.w", [r4[1], r4[1], 'lr'])
    assem("and.w", ['lr', r3[0], r3[1], 'ror #23'])
    assem("eor.w", [r4[1], r4[1], 'lr'])
    assem("eor.w", [r4[1], r3[2], r4[1], 'lsl #3'])
    assem("eor.w", [r4[1], r4[1], r3[1], 'ror #23']) #x1=r4[1]
    assem("and.w", [r4[2], r1[0], r1[2]])
    assem("and.w", ['lr', r1[0], r2[2]])
    assem("eor.w", [r4[2], r4[2], 'lr'])
    assem("and.w", ['lr', r2[0], r1[2]])
    assem("eor.w", [r4[2], r4[2], 'lr'])
    assem("eor.w", [r4[2], r1[0], r4[2], 'lsl #1'])
    assem("eor.w", [r4[2], r4[2], r1[1], 'ror #23']) # y2=r4[2]
    assem("and.w", ['r12', r1[0], r1[1], 'ror #23'])
    assem("and.w", ['lr', r1[0], r2[1], 'ror #23'])
    assem("eor.w", ['r12', 'r12', 'lr'])
    assem("and.w", ['lr', r2[0], r1[1], 'ror #23'])
    assem("eor.w", ['r12', 'r12', 'lr'])
    assem("eor.w", ['r12', r1[2], 'r12', 'lsl #3'])
    assem("eor.w", ['r12', 'r12', r1[1], 'ror #23']) # x2=r12
    assem("eor.w", [r1[0], r1[0], r1[2], 'lsl #1'])
    assem("and.w", ['lr',  r1[2], r1[1], 'ror #23'])
    assem("eor.w", [r1[0], r1[0], 'lr', 'lsl #2'])
    assem("and.w", ['lr', r2[2], r1[1], 'ror #23'])
    assem("eor.w", [r1[0], r1[0], 'lr', 'lsl #2'])
    assem("and.w", ['lr', r1[2], r2[1], 'ror #23'])
    assem("eor.w", [r1[0], r1[0], 'lr', 'lsl #2']) #z2=r1[0]
    assem("and.w", [r1[1], r3[2], r1[1], 'ror #23'])
    assem("and.w", ['lr', r1[2], r3[1], 'ror #23'])
    assem("eor.w", [r1[1], r1[1], 'lr'])
    assem("and.w", ['lr', r3[2], r3[1], 'ror #23'])
    assem("eor.w", [r1[1], r1[1], 'lr'])
    assem("eor.w", [r1[1], r3[0], r1[1], 'lsl #2'])
    assem("eor.w", [r1[1], r1[1], r3[2], 'lsl #1']) #z1=r1[1]
    assem("bic.w", [r1[2], r2[0], r3[2]])
    assem("bic.w", ['lr', r2[2], r3[0]])
    assem("eor.w", [r1[2], r1[2], 'lr'])
    assem("and.w", ['lr', r2[0], r2[2]])
    assem("eor.w", [r1[2], r1[2], 'lr'])
    assem("eor.w", [r1[2], r2[0], r1[2], 'lsl #1'])
    assem("eor.w", [r1[2], r1[2], r2[1], 'ror #23']) #y0=r1[2]
    assem("and.w", [r3[0], r3[0], r2[1], 'ror #23'])
    assem("and.w", ['lr', r2[0], r3[1], 'ror #23'])
    assem("eor.w", [r3[0], r3[0], 'lr'])
    assem("and.w", ['lr', r2[0], r2[1], 'ror #23'])
    assem("eor.w", [r3[0], r3[0], 'lr'])
    assem("eor.w", [r3[0], r2[2], r3[0], 'lsl #3'])
    assem("eor.w", [r3[0], r3[0], r2[1], 'ror #23']) #x0=r3[0]
    assem("and.w", [r3[1], r2[2], r3[1], 'ror #23'])
    assem("and.w", ['lr', r3[2], r2[1], 'ror #23'])
    assem("eor.w", [r3[1], r3[1], 'lr'])
    assem("and.w", ['lr', r2[2], r2[1], 'ror #23'])
    assem("eor.w", [r3[1], r3[1], 'lr'])
    assem("eor.w", [r3[1], r2[0], r3[1], 'lsl #2'])
    assem("eor.w", [r3[1], r3[1], r2[2], 'lsl #1']) #z0=r3[1]

def schedule():
    global rs0,rs1,rs2,rs3,order
    for rounds in range(24, 0, -1):
        print(order)
        for col in range(4):
            load(rs0[0], rs3[0], order[col])
            load(rs0[1], rs3[0], col+4)
            load(rs0[2], rs3[0], col+8)
            load(rs1[0], rs3[1], order[col])
            load(rs1[1], rs3[1], col+4)
            load(rs1[2], rs3[1], col+8)
            load(rs2[0], rs3[2], order[col])
            load(rs2[1], rs3[2], col+4)
            load(rs2[2], rs3[2], col+8)
            cal(rs0, rs1, rs2, rs3)
            if rounds & 3 == 0 and col == 1:
                assem("vmov.w", [rs1[0], 's3'])
                assem("orr.w", [rs1[0], rs1[0], '#'+str(rounds)])
                assem("eor.w", [rs2[0], rs2[0], rs1[0]])
            assem("vmov.w", [rs1[0], 's0'])
            assem("vmov.w", [rs1[1], 's1'])
            assem("vmov.w", [rs1[2], 's2'])
            save(rs2[0], rs1[0], order[col])
            save(rs0[2], rs1[0], col+4)
            save(rs2[1], rs1[0], col+8)
            save(rs3[1], rs1[1], order[col])
            save(rs3[0], rs1[1], col+4)
            save(rs0[1], rs1[1], col+8)
            save('r12' , rs1[2], order[col])
            save(rs3[2], rs1[2], col+4)
            save(rs0[0], rs1[2], col+8)
            rs1, rs3 = rs3, rs1
        if rounds & 3 == 0:
            order = [order[1], order[0], order[3], order[2]]
        if rounds & 3 == 2:
            order = [order[2], order[3], order[0], order[1]]

if __name__ == '__main__':
    f = open("threshold_gimli.S", 'w')
    f.write(header)
    schedule()
    f.write("  pop.w {r3-r12, pc}")
    f.close()
