.p2align 2,,3
.syntax unified
.text

.global gimli_asm
.type gimli_asm, %function
@ void gimli_asm(uint32_t *state)
gimli_asm:
  push {r1-r12, lr}
  ldm r0, {r1-r12}
  vmov s0, r0
  movw r0, 0x7900
  movt r0, 0x9e37
  vmov s2, r0
  movw r0, #25
LOOP:
  subs r0, #1
  beq END
  vmov s1, r0
  ror r1, #8
  ror r2, #8
  ror r3, #8
  ror r4, #8
  and lr, r9, r5, ror #23
  eor lr, r1, lr, lsl #2
  orr r0, r1, r9
  eor r0, r1, r0, lsl #1
  and r1, r1, r5, ror #23
  eor r1, r9, r1, lsl #3
  eor r1, r1, r5, ror #23
  eor r9, lr, r9, lsl #1
  eor r5, r0, r5, ror #23
  and lr, r10, r6, ror #23
  eor lr, r2, lr, lsl #2
  orr r0, r2, r10
  eor r0, r2, r0, lsl #1
  and r2, r2, r6, ror #23
  eor r2, r10, r2, lsl #3
  eor r2, r2, r6, ror #23
  eor r10, lr, r10, lsl #1
  eor r6, r0, r6, ror #23
  and lr, r11, r7, ror #23
  eor lr, r3, lr, lsl #2
  orr r0, r3, r11
  eor r0, r3, r0, lsl #1
  and r3, r3, r7, ror #23
  eor r3, r11, r3, lsl #3
  eor r3, r3, r7, ror #23
  eor r11, lr, r11, lsl #1
  eor r7, r0, r7, ror #23
  and lr, r12, r8, ror #23
  eor lr, r4, lr, lsl #2
  orr r0, r4, r12
  eor r0, r4, r0, lsl #1
  and r4, r4, r8, ror #23
  eor r4, r12, r4, lsl #3
  eor r4, r4, r8, ror #23
  eor r12, lr, r12, lsl #1
  eor r8, r0, r8, ror #23
  vmov r0, s1
  ands lr, r0, #3
  bne ELSEIF
  vmov lr, s2
  orr lr, r0
  eor lr, r2
  mov r2, r1
  mov r1, lr
  mov lr, r3
  mov r3, r4
  mov r4, lr
  b LOOP
ELSEIF:
  subs lr, #2
  bne LOOP
  mov lr, r1
  mov r1, r3
  mov r3, lr
  mov lr, r2
  mov r2, r4
  mov r4, lr
  b LOOP
END:
  vmov r0, s0
  stm r0, {r1-r12}
  pop {r1-r12, pc}
