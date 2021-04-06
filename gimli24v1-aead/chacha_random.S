.p2align 2,,3
.syntax unified
.text

.global chacha_random_asm
.type chacha_random_asm, %function
@ void chacha_random_asm(uint32_t *in, uint32_t *random)
chacha_random_asm:
  push {r2-r12, lr}
  vmov.w s0, r1
  ldr.w r12, [r0, #56]
  ldr.w lr, [r0, #60]
  ldr.w r11, [r0, #52]
  vmov.w s21, lr
  ror.w lr, #8
  vmov.w s20, r12
  ror.w r12, #8
  vmov.w s19, r11
  ror.w r11, #8
  vmov.w s4, lr
  vmov.w s3, r12
  vmov.w s2, r11
  movw.w lr, #18
  vmov.w s22, lr
  ldr.w r12, [r0, #48]
  add.w lr, r12, #1
  str.w lr, [r0, #48]
  ldr.w r11, [r0, #44]
  ldr.w r10, [r0, #40]
  ldr.w r9, [r0, #36]
  ldr.w r8, [r0, #32]
  ldr.w r7, [r0, #28]
  ldr.w r6, [r0, #24]
  ldr.w r5, [r0, #20]
  ldr.w r4, [r0, #16]
  ldr.w r3, [r0, #12]
  ldr.w r2, [r0, #8]
  ldr.w r1, [r0, #4]
  ldr.w r0, [r0]
  movw.w lr, #5
  vmov.w s6, r0
  vmov.w s7, r1
  vmov.w s8, r2
  vmov.w s9, r3
  vmov.w s10, r4
  vmov.w s11, r5
  vmov.w s12, r6
  vmov.w s13, r7
  vmov.w s14, r8
  vmov.w s15, r9
  vmov.w s16, r10
  vmov.w s17, r11
  vmov.w s18, r12
  ror.w r4, #7
  ror.w r5, #7
  ror.w r6, #7
  ror.w r7, #7
  ror.w r12, #8
ARX:
  subs.w lr, #1
  beq.w END
  vmov.w s5, lr
  vmov.w lr, s2
  add.w r0, r0, r4, ror #25
  eor.w r12, r0, r12, ror #24
  add.w r8, r8, r12, ror #16
  eor.w r4, r8, r4, ror #25
  add.w r0, r0, r4, ror #20
  eor.w r12, r0, r12, ror #16
  add.w r8, r8, r12, ror #24
  eor.w r4, r8, r4, ror #20
  add.w r1, r1, r5, ror #25
  eor.w lr, r1, lr, ror #24
  add.w r9, r9, lr, ror #16
  eor.w r5, r9, r5, ror #25
  add.w r1, r1, r5, ror #20
  eor.w lr, r1, lr, ror #16
  add.w r9, r9, lr, ror #24
  eor.w r5, r9, r5, ror #20
  vmov.w s1, r12
  vmov.w r12, s3
  vmov.w s2, lr
  vmov.w lr, s4
  add.w r2, r2, r6, ror #25
  eor.w r12, r2, r12, ror #24
  add.w r10, r10, r12, ror #16
  eor.w r6, r10, r6, ror #25
  add.w r2, r2, r6, ror #20
  eor.w r12, r2, r12, ror #16
  add.w r10, r10, r12, ror #24
  eor.w r6, r10, r6, ror #20
  add.w r3, r3, r7, ror #25
  eor.w lr, r3, lr, ror #24
  add.w r11, r11, lr, ror #16
  eor.w r7, r11, r7, ror #25
  add.w r3, r3, r7, ror #20
  eor.w lr, r3, lr, ror #16
  add.w r11, r11, lr, ror #24
  eor.w r7, r11, r7, ror #20
  add.w r0, r0, r5, ror #25
  eor.w lr, r0, lr, ror #24
  add.w r10, r10, lr, ror #16
  eor.w r5, r10, r5, ror #25
  add.w r0, r0, r5, ror #20
  eor.w lr, r0, lr, ror #16
  add.w r10, r10, lr, ror #24
  eor.w r5, r10, r5, ror #20
  add.w r3, r3, r4, ror #25
  eor.w r12, r3, r12, ror #24
  add.w r9, r9, r12, ror #16
  eor.w r4, r9, r4, ror #25
  add.w r3, r3, r4, ror #20
  eor.w r12, r3, r12, ror #16
  add.w r9, r9, r12, ror #24
  eor.w r4, r9, r4, ror #20
  vmov.w s3, r12
  vmov.w r12, s1
  vmov.w s4, lr
  vmov.w lr, s2
  add.w r1, r1, r6, ror #25
  eor.w r12, r1, r12, ror #24
  add.w r11, r11, r12, ror #16
  eor.w r6, r11, r6, ror #25
  add.w r1, r1, r6, ror #20
  eor.w r12, r1, r12, ror #16
  add.w r11, r11, r12, ror #24
  eor.w r6, r11, r6, ror #20
  add.w r2, r2, r7, ror #25
  eor.w lr, r2, lr, ror #24
  add.w r8, r8, lr, ror #16
  eor.w r7, r8, r7, ror #25
  add.w r2, r2, r7, ror #20
  eor.w lr, r2, lr, ror #16
  add.w r8, r8, lr, ror #24
  eor.w r7, r8, r7, ror #20
  vmov.w s2, lr
  vmov.w lr, s5
  b.w ARX
END:
  ror.w r4, #25
  ror.w r5, #25
  ror.w r6, #25
  ror.w r7, #25
  vmov.w s1, r12
  vmov.w lr, s0
  vmov.w r12, s6
  add.w r0, r12
  vmov.w r12, s7
  add.w r1, r12
  vmov.w r12, s8
  add.w r2, r12
  vmov.w r12, s9
  add.w r3, r12
  vmov.w r12, s10
  add.w r4, r12
  vmov.w r12, s11
  add.w r5, r12
  vmov.w r12, s12
  add.w r6, r12
  vmov.w r12, s13
  add.w r7, r12
  vmov.w r12, s14
  add.w r8, r12
  vmov.w r12, s15
  add.w r9, r12
  vmov.w r12, s16
  add.w r10, r12
  vmov.w r12, s17
  add.w r11, r12
  str.w r0, [lr, #0]
  str.w r1, [lr, #4]
  str.w r2, [lr, #8]
  str.w r3, [lr, #12]
  str.w r4, [lr, #16]
  str.w r5, [lr, #20]
  str.w r6, [lr, #24]
  str.w r7, [lr, #28]
  str.w r8, [lr, #32]
  str.w r9, [lr, #36]
  str.w r10, [lr, #40]
  str.w r11, [lr, #44]
  vmov.w r0, s1
  vmov.w r1, s2
  vmov.w r2, s3
  vmov.w r3, s4
  ror.w r0, #24
  vmov.w r12, s18
  add.w r0, r12
  ror.w r1, #24
  vmov.w r12, s19
  add.w r1, r12
  ror.w r2, #24
  vmov.w r12, s20
  add.w r2, r12
  ror.w r3, #24
  vmov.w r12, s21
  add.w r3, r12
  str.w r0, [lr, #48]
  str.w r1, [lr, #52]
  str.w r2, [lr, #56]
  str.w r3, [lr, #60]
  vmov.w r0, s22
  subs.w r0, #1
  beq.w END2
  add.w lr, #64
  vmov.w s0, lr
  vmov.w s22, r0
  movw.w lr, #5
  vmov.w r0, s19
  vmov.w r1, s20
  vmov.w r2, s21
  ror.w r0, #8
  ror.w r1, #8
  ror.w r2, #8
  vmov.w s4, r2
  vmov.w s3, r1
  vmov.w s2, r0
  vmov.w r0, s6
  vmov.w r1, s7
  vmov.w r2, s8
  vmov.w r3, s9
  vmov.w r4, s10
  vmov.w r5, s11
  vmov.w r6, s12
  vmov.w r7, s13
  vmov.w r8, s14
  vmov.w r9, s15
  vmov.w r10, s16
  vmov.w r11, s17
  vmov.w r12, s18
  add.w r12, #1
  vmov.w s18, r12
  ror.w r4, #7
  ror.w r5, #7
  ror.w r6, #7
  ror.w r7, #7
  ror.w r12, #8
  b.w ARX
END2:
  pop {r2-r12, pc}
