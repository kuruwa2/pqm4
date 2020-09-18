.p2align 2,,3
.syntax unified
.text

.global shared_gimli_asm
.type shared_gimli_asm, %function
@ void shared_gimli_asm(uint32_t *state, uint32_t *shared_state)
shared_gimli_asm:
  push {r2-r12, lr}
  vmov s0, r0
  vmov s1, r1
  movw r0, 0x7900
  movt r0, 0x9e37
  vmov s2, r0
  movw r0, #25
LOOP:
  subs r0, #1
  beq END
  vmov s3, r0
  vmov r0, s0
  vmov lr, s1
  ldr r1,  [r0, #0]
  ldr r2,  [r0, #4]
  ldr r3,  [lr, #0]
  ldr r4,  [lr, #4]
  ldr r5,  [r0, #16]
  ldr r6,  [r0, #20]
  ldr r7,  [lr, #16]
  ldr r8,  [lr, #20]
  ldr r9,  [r0, #32]
  ldr r10, [r0, #36]
  ldr r11, [lr, #32]
  ldr r12, [lr, #36]
  ror r1, #8
  ror r2, #8
  ror r3, #8
  ror r4, #8
  and lr, r9, r5, ror #23
  and r0, r11, r5, ror #23
  eor lr, lr, r0
  and r0, r9, r7, ror #23
  eor lr, lr, r0
  eor lr, r1, lr, lsl #2
  eor lr, lr, r9, lsl #1
  vmov s4, lr
  and lr, r1, r9
  bic r0, r1, r11
  eor lr, lr, r0
  bic r0, r9, r3
  eor r0, r0, lr
  eor r0, r1, r0, lsl #1
  and lr, r1, r5, ror #23
  and r1, r1, r7, ror #23
  eor r1, r1, lr
  and lr, r3, r5, ror #23
  eor r1, r1, lr
  eor r1, r9, r1, lsl #3
  eor r1, r1, r5, ror #23
  eor r5, r0, r5, ror #23
  vmov r9, s4
  and lr, r10, r6, ror #23
  and r0, r12, r6, ror #23
  eor lr, lr, r0
  and r0, r10, r8, ror #23
  eor lr, lr, r0
  eor lr, r2, lr, lsl #2
  eor lr, lr, r10, lsl #1
  vmov s4, lr
  and lr, r2, r10
  bic r0, r2, r12
  eor lr, r0, lr
  bic r0, r10, r4
  eor r0, r0, lr
  eor r0, r2, r0, lsl #1
  and lr, r2, r6, ror #23
  and r2, r2, r8, ror #23
  eor r2, r2, lr
  and lr, r4, r6, ror #23
  eor r2, r2, lr
  eor r2, r10, r2, lsl #3
  eor r2, r2, r6, ror #23
  eor r6, r0, r6, ror #23
  vmov r10, s4
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
  vmov r0, s3
  ands lr, r0, #3
  bne LOOP2
  vmov lr, s2
  orr lr, r0
  eor lr, r2
  mov r2, r1
  mov r1, lr
  mov lr, r3
  mov r3, r4
  mov r4, lr
LOOP2:
  vmov r0, s0
  vmov lr, s1
  str r1,  [r0, #0]
  str r2,  [r0, #4]
  str r3,  [lr, #0]
  str r4,  [lr, #4]
  str r5,  [r0, #16]
  str r6,  [r0, #20]
  str r7,  [lr, #16]
  str r8,  [lr, #20]
  str r9,  [r0, #32]
  str r10, [r0, #36]
  str r11, [lr, #32]
  str r12, [lr, #36]
  ldr r1,  [r0, #8]
  ldr r2,  [r0, #12]
  ldr r3,  [lr, #8]
  ldr r4,  [lr, #12]
  ldr r5,  [r0, #24]
  ldr r6,  [r0, #28]
  ldr r7,  [lr, #24]
  ldr r8,  [lr, #28]
  ldr r9,  [r0, #40]
  ldr r10, [r0, #44]
  ldr r11, [lr, #40]
  ldr r12, [lr, #44]
  ror r1, #8
  ror r2, #8
  ror r3, #8
  ror r4, #8
  and lr, r9, r5, ror #23
  and r0, r11, r5, ror #23
  eor lr, lr, r0
  and r0, r9, r7, ror #23
  eor lr, lr, r0
  eor lr, r1, lr, lsl #2
  eor lr, lr, r9, lsl #1
  vmov s4, lr
  and lr, r1, r9
  bic r0, r1, r11
  eor lr, lr, r0
  bic r0, r9, r3
  eor r0, r0, lr
  eor r0, r1, r0, lsl #1
  and lr, r1, r5, ror #23
  and r1, r1, r7, ror #23
  eor r1, r1, lr
  and lr, r3, r5, ror #23
  eor r1, r1, lr
  eor r1, r9, r1, lsl #3
  eor r1, r1, r5, ror #23
  eor r5, r0, r5, ror #23
  vmov r9, s4
  and lr, r10, r6, ror #23
  and r0, r12, r6, ror #23
  eor lr, lr, r0
  and r0, r10, r8, ror #23
  eor lr, lr, r0
  eor lr, r2, lr, lsl #2
  eor lr, lr, r10, lsl #1
  vmov s4, lr
  and lr, r2, r10
  bic r0, r2, r12
  eor lr, r0, lr
  bic r0, r10, r4
  eor r0, r0, lr
  eor r0, r2, r0, lsl #1
  and lr, r2, r6, ror #23
  and r2, r2, r8, ror #23
  eor r2, r2, lr
  and lr, r4, r6, ror #23
  eor r2, r2, lr
  eor r2, r10, r2, lsl #3
  eor r2, r2, r6, ror #23
  eor r6, r0, r6, ror #23
  vmov r10, s4
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
  vmov r0, s3
  ands lr, r0, #3
  bne ELSEIF
  mov lr, r2
  mov r2, r1
  mov r1, lr
  mov lr, r3
  mov r3, r4
  mov r4, lr
  b SKRR
ELSEIF:
  subs lr, #2
  bne SKRR
  vmov r0, s0
  vmov lr, s1
  str r5,  [r0, #24]
  str r6,  [r0, #28]
  str r7,  [lr, #24]
  str r8,  [lr, #28]
  str r9,  [r0, #40]
  str r10, [r0, #44]
  str r11, [lr, #40]
  str r12, [lr, #44]
  ldr r5,  [r0, #0]
  ldr r6,  [r0, #4]
  ldr r7,  [lr, #0]
  ldr r8,  [lr, #4]
  str r1,  [r0, #0]
  str r2,  [r0, #4]
  str r3,  [lr, #0]
  str r4,  [lr, #4]
  str r5,  [r0, #8]
  str r6,  [r0, #12]
  str r7,  [lr, #8]
  str r8,  [lr, #12]
  vmov r0, s3
  b LOOP
SKRR:
  vmov r0, s0
  vmov lr, s1
  str r1,  [r0, #8]
  str r2,  [r0, #12]
  str r3,  [lr, #8]
  str r4,  [lr, #12]
  str r5,  [r0, #24]
  str r6,  [r0, #28]
  str r7,  [lr, #24]
  str r8,  [lr, #28]
  str r9,  [r0, #40]
  str r10, [r0, #44]
  str r11, [lr, #40]
  str r12, [lr, #44]
  vmov r0, s3
  b LOOP
END:
  pop {r2-r12, pc}
