.p2align 2,,3
.syntax unified
.text

.global threshold_gimli_asm_m3
.type threshold_gimli_asm_m3, %function
@ void threshold_gimli_asm_m3(uint32_t *state, uint32_t *shared_state1, uint32_t *shared_state2)
threshold_gimli_asm_m3:
  push.w {r3-r12, lr}
  ldr.w r3, [r0, #0]
  ldr.w r4, [r0, #16]
  ldr.w r5, [r0, #32]
  ldr.w r6, [r1, #0]
  ldr.w r7, [r1, #16]
  ldr.w r8, [r1, #32]
  ldr.w r9, [r2, #0]
  ldr.w r10, [r2, #16]
  ldr.w r11, [r2, #32]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #0]
  str.w r5, [r6, #16]
  str.w r10, [r6, #32]
  str.w r1, [r7, #0]
  str.w r0, [r7, #16]
  str.w r4, [r7, #32]
  str.w r12, [r8, #0]
  str.w r2, [r8, #16]
  str.w r3, [r8, #32]
  ldr.w r3, [r6, #4]
  ldr.w r4, [r6, #20]
  ldr.w r5, [r6, #36]
  ldr.w r0, [r7, #4]
  ldr.w r1, [r7, #20]
  ldr.w r2, [r7, #36]
  ldr.w r9, [r8, #4]
  ldr.w r10, [r8, #20]
  ldr.w r11, [r8, #36]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  movw.w r0, 0x7918
  movt.w r0, 0x9e37
  eor.w r9, r9, r0
  pop.w {r0-r2}
  str.w r9, [r0, #4]
  str.w r5, [r0, #20]
  str.w r10, [r0, #36]
  str.w r7, [r1, #4]
  str.w r6, [r1, #20]
  str.w r4, [r1, #36]
  str.w r12, [r2, #4]
  str.w r8, [r2, #20]
  str.w r3, [r2, #36]
  ldr.w r3, [r0, #8]
  ldr.w r4, [r0, #24]
  ldr.w r5, [r0, #40]
  ldr.w r6, [r1, #8]
  ldr.w r7, [r1, #24]
  ldr.w r8, [r1, #40]
  ldr.w r9, [r2, #8]
  ldr.w r10, [r2, #24]
  ldr.w r11, [r2, #40]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #8]
  str.w r5, [r6, #24]
  str.w r10, [r6, #40]
  str.w r1, [r7, #8]
  str.w r0, [r7, #24]
  str.w r4, [r7, #40]
  str.w r12, [r8, #8]
  str.w r2, [r8, #24]
  str.w r3, [r8, #40]
  ldr.w r3, [r6, #12]
  ldr.w r4, [r6, #28]
  ldr.w r5, [r6, #44]
  ldr.w r0, [r7, #12]
  ldr.w r1, [r7, #28]
  ldr.w r2, [r7, #44]
  ldr.w r9, [r8, #12]
  ldr.w r10, [r8, #28]
  ldr.w r11, [r8, #44]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #12]
  str.w r5, [r0, #28]
  str.w r10, [r0, #44]
  str.w r7, [r1, #12]
  str.w r6, [r1, #28]
  str.w r4, [r1, #44]
  str.w r12, [r2, #12]
  str.w r8, [r2, #28]
  str.w r3, [r2, #44]
  ldr.w r3, [r0, #4]
  ldr.w r4, [r0, #16]
  ldr.w r5, [r0, #32]
  ldr.w r6, [r1, #4]
  ldr.w r7, [r1, #16]
  ldr.w r8, [r1, #32]
  ldr.w r9, [r2, #4]
  ldr.w r10, [r2, #16]
  ldr.w r11, [r2, #32]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #4]
  str.w r5, [r6, #16]
  str.w r10, [r6, #32]
  str.w r1, [r7, #4]
  str.w r0, [r7, #16]
  str.w r4, [r7, #32]
  str.w r12, [r8, #4]
  str.w r2, [r8, #16]
  str.w r3, [r8, #32]
  ldr.w r3, [r6, #0]
  ldr.w r4, [r6, #20]
  ldr.w r5, [r6, #36]
  ldr.w r0, [r7, #0]
  ldr.w r1, [r7, #20]
  ldr.w r2, [r7, #36]
  ldr.w r9, [r8, #0]
  ldr.w r10, [r8, #20]
  ldr.w r11, [r8, #36]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #0]
  str.w r5, [r0, #20]
  str.w r10, [r0, #36]
  str.w r7, [r1, #0]
  str.w r6, [r1, #20]
  str.w r4, [r1, #36]
  str.w r12, [r2, #0]
  str.w r8, [r2, #20]
  str.w r3, [r2, #36]
  ldr.w r3, [r0, #12]
  ldr.w r4, [r0, #24]
  ldr.w r5, [r0, #40]
  ldr.w r6, [r1, #12]
  ldr.w r7, [r1, #24]
  ldr.w r8, [r1, #40]
  ldr.w r9, [r2, #12]
  ldr.w r10, [r2, #24]
  ldr.w r11, [r2, #40]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #12]
  str.w r5, [r6, #24]
  str.w r10, [r6, #40]
  str.w r1, [r7, #12]
  str.w r0, [r7, #24]
  str.w r4, [r7, #40]
  str.w r12, [r8, #12]
  str.w r2, [r8, #24]
  str.w r3, [r8, #40]
  ldr.w r3, [r6, #8]
  ldr.w r4, [r6, #28]
  ldr.w r5, [r6, #44]
  ldr.w r0, [r7, #8]
  ldr.w r1, [r7, #28]
  ldr.w r2, [r7, #44]
  ldr.w r9, [r8, #8]
  ldr.w r10, [r8, #28]
  ldr.w r11, [r8, #44]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #8]
  str.w r5, [r0, #28]
  str.w r10, [r0, #44]
  str.w r7, [r1, #8]
  str.w r6, [r1, #28]
  str.w r4, [r1, #44]
  str.w r12, [r2, #8]
  str.w r8, [r2, #28]
  str.w r3, [r2, #44]
  ldr.w r3, [r0, #4]
  ldr.w r4, [r0, #16]
  ldr.w r5, [r0, #32]
  ldr.w r6, [r1, #4]
  ldr.w r7, [r1, #16]
  ldr.w r8, [r1, #32]
  ldr.w r9, [r2, #4]
  ldr.w r10, [r2, #16]
  ldr.w r11, [r2, #32]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #4]
  str.w r5, [r6, #16]
  str.w r10, [r6, #32]
  str.w r1, [r7, #4]
  str.w r0, [r7, #16]
  str.w r4, [r7, #32]
  str.w r12, [r8, #4]
  str.w r2, [r8, #16]
  str.w r3, [r8, #32]
  ldr.w r3, [r6, #0]
  ldr.w r4, [r6, #20]
  ldr.w r5, [r6, #36]
  ldr.w r0, [r7, #0]
  ldr.w r1, [r7, #20]
  ldr.w r2, [r7, #36]
  ldr.w r9, [r8, #0]
  ldr.w r10, [r8, #20]
  ldr.w r11, [r8, #36]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #0]
  str.w r5, [r0, #20]
  str.w r10, [r0, #36]
  str.w r7, [r1, #0]
  str.w r6, [r1, #20]
  str.w r4, [r1, #36]
  str.w r12, [r2, #0]
  str.w r8, [r2, #20]
  str.w r3, [r2, #36]
  ldr.w r3, [r0, #12]
  ldr.w r4, [r0, #24]
  ldr.w r5, [r0, #40]
  ldr.w r6, [r1, #12]
  ldr.w r7, [r1, #24]
  ldr.w r8, [r1, #40]
  ldr.w r9, [r2, #12]
  ldr.w r10, [r2, #24]
  ldr.w r11, [r2, #40]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #12]
  str.w r5, [r6, #24]
  str.w r10, [r6, #40]
  str.w r1, [r7, #12]
  str.w r0, [r7, #24]
  str.w r4, [r7, #40]
  str.w r12, [r8, #12]
  str.w r2, [r8, #24]
  str.w r3, [r8, #40]
  ldr.w r3, [r6, #8]
  ldr.w r4, [r6, #28]
  ldr.w r5, [r6, #44]
  ldr.w r0, [r7, #8]
  ldr.w r1, [r7, #28]
  ldr.w r2, [r7, #44]
  ldr.w r9, [r8, #8]
  ldr.w r10, [r8, #28]
  ldr.w r11, [r8, #44]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #8]
  str.w r5, [r0, #28]
  str.w r10, [r0, #44]
  str.w r7, [r1, #8]
  str.w r6, [r1, #28]
  str.w r4, [r1, #44]
  str.w r12, [r2, #8]
  str.w r8, [r2, #28]
  str.w r3, [r2, #44]
  ldr.w r3, [r0, #12]
  ldr.w r4, [r0, #16]
  ldr.w r5, [r0, #32]
  ldr.w r6, [r1, #12]
  ldr.w r7, [r1, #16]
  ldr.w r8, [r1, #32]
  ldr.w r9, [r2, #12]
  ldr.w r10, [r2, #16]
  ldr.w r11, [r2, #32]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #12]
  str.w r5, [r6, #16]
  str.w r10, [r6, #32]
  str.w r1, [r7, #12]
  str.w r0, [r7, #16]
  str.w r4, [r7, #32]
  str.w r12, [r8, #12]
  str.w r2, [r8, #16]
  str.w r3, [r8, #32]
  ldr.w r3, [r6, #8]
  ldr.w r4, [r6, #20]
  ldr.w r5, [r6, #36]
  ldr.w r0, [r7, #8]
  ldr.w r1, [r7, #20]
  ldr.w r2, [r7, #36]
  ldr.w r9, [r8, #8]
  ldr.w r10, [r8, #20]
  ldr.w r11, [r8, #36]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #8]
  str.w r5, [r0, #20]
  str.w r10, [r0, #36]
  str.w r7, [r1, #8]
  str.w r6, [r1, #20]
  str.w r4, [r1, #36]
  str.w r12, [r2, #8]
  str.w r8, [r2, #20]
  str.w r3, [r2, #36]
  ldr.w r3, [r0, #4]
  ldr.w r4, [r0, #24]
  ldr.w r5, [r0, #40]
  ldr.w r6, [r1, #4]
  ldr.w r7, [r1, #24]
  ldr.w r8, [r1, #40]
  ldr.w r9, [r2, #4]
  ldr.w r10, [r2, #24]
  ldr.w r11, [r2, #40]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #4]
  str.w r5, [r6, #24]
  str.w r10, [r6, #40]
  str.w r1, [r7, #4]
  str.w r0, [r7, #24]
  str.w r4, [r7, #40]
  str.w r12, [r8, #4]
  str.w r2, [r8, #24]
  str.w r3, [r8, #40]
  ldr.w r3, [r6, #0]
  ldr.w r4, [r6, #28]
  ldr.w r5, [r6, #44]
  ldr.w r0, [r7, #0]
  ldr.w r1, [r7, #28]
  ldr.w r2, [r7, #44]
  ldr.w r9, [r8, #0]
  ldr.w r10, [r8, #28]
  ldr.w r11, [r8, #44]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #0]
  str.w r5, [r0, #28]
  str.w r10, [r0, #44]
  str.w r7, [r1, #0]
  str.w r6, [r1, #28]
  str.w r4, [r1, #44]
  str.w r12, [r2, #0]
  str.w r8, [r2, #28]
  str.w r3, [r2, #44]
  ldr.w r3, [r0, #12]
  ldr.w r4, [r0, #16]
  ldr.w r5, [r0, #32]
  ldr.w r6, [r1, #12]
  ldr.w r7, [r1, #16]
  ldr.w r8, [r1, #32]
  ldr.w r9, [r2, #12]
  ldr.w r10, [r2, #16]
  ldr.w r11, [r2, #32]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #12]
  str.w r5, [r6, #16]
  str.w r10, [r6, #32]
  str.w r1, [r7, #12]
  str.w r0, [r7, #16]
  str.w r4, [r7, #32]
  str.w r12, [r8, #12]
  str.w r2, [r8, #16]
  str.w r3, [r8, #32]
  ldr.w r3, [r6, #8]
  ldr.w r4, [r6, #20]
  ldr.w r5, [r6, #36]
  ldr.w r0, [r7, #8]
  ldr.w r1, [r7, #20]
  ldr.w r2, [r7, #36]
  ldr.w r9, [r8, #8]
  ldr.w r10, [r8, #20]
  ldr.w r11, [r8, #36]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  movw.w r0, 0x7914
  movt.w r0, 0x9e37
  eor.w r9, r9, r0
  pop.w {r0-r2}
  str.w r9, [r0, #8]
  str.w r5, [r0, #20]
  str.w r10, [r0, #36]
  str.w r7, [r1, #8]
  str.w r6, [r1, #20]
  str.w r4, [r1, #36]
  str.w r12, [r2, #8]
  str.w r8, [r2, #20]
  str.w r3, [r2, #36]
  ldr.w r3, [r0, #4]
  ldr.w r4, [r0, #24]
  ldr.w r5, [r0, #40]
  ldr.w r6, [r1, #4]
  ldr.w r7, [r1, #24]
  ldr.w r8, [r1, #40]
  ldr.w r9, [r2, #4]
  ldr.w r10, [r2, #24]
  ldr.w r11, [r2, #40]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #4]
  str.w r5, [r6, #24]
  str.w r10, [r6, #40]
  str.w r1, [r7, #4]
  str.w r0, [r7, #24]
  str.w r4, [r7, #40]
  str.w r12, [r8, #4]
  str.w r2, [r8, #24]
  str.w r3, [r8, #40]
  ldr.w r3, [r6, #0]
  ldr.w r4, [r6, #28]
  ldr.w r5, [r6, #44]
  ldr.w r0, [r7, #0]
  ldr.w r1, [r7, #28]
  ldr.w r2, [r7, #44]
  ldr.w r9, [r8, #0]
  ldr.w r10, [r8, #28]
  ldr.w r11, [r8, #44]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #0]
  str.w r5, [r0, #28]
  str.w r10, [r0, #44]
  str.w r7, [r1, #0]
  str.w r6, [r1, #28]
  str.w r4, [r1, #44]
  str.w r12, [r2, #0]
  str.w r8, [r2, #28]
  str.w r3, [r2, #44]
  ldr.w r3, [r0, #8]
  ldr.w r4, [r0, #16]
  ldr.w r5, [r0, #32]
  ldr.w r6, [r1, #8]
  ldr.w r7, [r1, #16]
  ldr.w r8, [r1, #32]
  ldr.w r9, [r2, #8]
  ldr.w r10, [r2, #16]
  ldr.w r11, [r2, #32]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #8]
  str.w r5, [r6, #16]
  str.w r10, [r6, #32]
  str.w r1, [r7, #8]
  str.w r0, [r7, #16]
  str.w r4, [r7, #32]
  str.w r12, [r8, #8]
  str.w r2, [r8, #16]
  str.w r3, [r8, #32]
  ldr.w r3, [r6, #12]
  ldr.w r4, [r6, #20]
  ldr.w r5, [r6, #36]
  ldr.w r0, [r7, #12]
  ldr.w r1, [r7, #20]
  ldr.w r2, [r7, #36]
  ldr.w r9, [r8, #12]
  ldr.w r10, [r8, #20]
  ldr.w r11, [r8, #36]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #12]
  str.w r5, [r0, #20]
  str.w r10, [r0, #36]
  str.w r7, [r1, #12]
  str.w r6, [r1, #20]
  str.w r4, [r1, #36]
  str.w r12, [r2, #12]
  str.w r8, [r2, #20]
  str.w r3, [r2, #36]
  ldr.w r3, [r0, #0]
  ldr.w r4, [r0, #24]
  ldr.w r5, [r0, #40]
  ldr.w r6, [r1, #0]
  ldr.w r7, [r1, #24]
  ldr.w r8, [r1, #40]
  ldr.w r9, [r2, #0]
  ldr.w r10, [r2, #24]
  ldr.w r11, [r2, #40]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #0]
  str.w r5, [r6, #24]
  str.w r10, [r6, #40]
  str.w r1, [r7, #0]
  str.w r0, [r7, #24]
  str.w r4, [r7, #40]
  str.w r12, [r8, #0]
  str.w r2, [r8, #24]
  str.w r3, [r8, #40]
  ldr.w r3, [r6, #4]
  ldr.w r4, [r6, #28]
  ldr.w r5, [r6, #44]
  ldr.w r0, [r7, #4]
  ldr.w r1, [r7, #28]
  ldr.w r2, [r7, #44]
  ldr.w r9, [r8, #4]
  ldr.w r10, [r8, #28]
  ldr.w r11, [r8, #44]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #4]
  str.w r5, [r0, #28]
  str.w r10, [r0, #44]
  str.w r7, [r1, #4]
  str.w r6, [r1, #28]
  str.w r4, [r1, #44]
  str.w r12, [r2, #4]
  str.w r8, [r2, #28]
  str.w r3, [r2, #44]
  ldr.w r3, [r0, #8]
  ldr.w r4, [r0, #16]
  ldr.w r5, [r0, #32]
  ldr.w r6, [r1, #8]
  ldr.w r7, [r1, #16]
  ldr.w r8, [r1, #32]
  ldr.w r9, [r2, #8]
  ldr.w r10, [r2, #16]
  ldr.w r11, [r2, #32]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #8]
  str.w r5, [r6, #16]
  str.w r10, [r6, #32]
  str.w r1, [r7, #8]
  str.w r0, [r7, #16]
  str.w r4, [r7, #32]
  str.w r12, [r8, #8]
  str.w r2, [r8, #16]
  str.w r3, [r8, #32]
  ldr.w r3, [r6, #12]
  ldr.w r4, [r6, #20]
  ldr.w r5, [r6, #36]
  ldr.w r0, [r7, #12]
  ldr.w r1, [r7, #20]
  ldr.w r2, [r7, #36]
  ldr.w r9, [r8, #12]
  ldr.w r10, [r8, #20]
  ldr.w r11, [r8, #36]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #12]
  str.w r5, [r0, #20]
  str.w r10, [r0, #36]
  str.w r7, [r1, #12]
  str.w r6, [r1, #20]
  str.w r4, [r1, #36]
  str.w r12, [r2, #12]
  str.w r8, [r2, #20]
  str.w r3, [r2, #36]
  ldr.w r3, [r0, #0]
  ldr.w r4, [r0, #24]
  ldr.w r5, [r0, #40]
  ldr.w r6, [r1, #0]
  ldr.w r7, [r1, #24]
  ldr.w r8, [r1, #40]
  ldr.w r9, [r2, #0]
  ldr.w r10, [r2, #24]
  ldr.w r11, [r2, #40]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #0]
  str.w r5, [r6, #24]
  str.w r10, [r6, #40]
  str.w r1, [r7, #0]
  str.w r0, [r7, #24]
  str.w r4, [r7, #40]
  str.w r12, [r8, #0]
  str.w r2, [r8, #24]
  str.w r3, [r8, #40]
  ldr.w r3, [r6, #4]
  ldr.w r4, [r6, #28]
  ldr.w r5, [r6, #44]
  ldr.w r0, [r7, #4]
  ldr.w r1, [r7, #28]
  ldr.w r2, [r7, #44]
  ldr.w r9, [r8, #4]
  ldr.w r10, [r8, #28]
  ldr.w r11, [r8, #44]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #4]
  str.w r5, [r0, #28]
  str.w r10, [r0, #44]
  str.w r7, [r1, #4]
  str.w r6, [r1, #28]
  str.w r4, [r1, #44]
  str.w r12, [r2, #4]
  str.w r8, [r2, #28]
  str.w r3, [r2, #44]
  ldr.w r3, [r0, #0]
  ldr.w r4, [r0, #16]
  ldr.w r5, [r0, #32]
  ldr.w r6, [r1, #0]
  ldr.w r7, [r1, #16]
  ldr.w r8, [r1, #32]
  ldr.w r9, [r2, #0]
  ldr.w r10, [r2, #16]
  ldr.w r11, [r2, #32]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #0]
  str.w r5, [r6, #16]
  str.w r10, [r6, #32]
  str.w r1, [r7, #0]
  str.w r0, [r7, #16]
  str.w r4, [r7, #32]
  str.w r12, [r8, #0]
  str.w r2, [r8, #16]
  str.w r3, [r8, #32]
  ldr.w r3, [r6, #4]
  ldr.w r4, [r6, #20]
  ldr.w r5, [r6, #36]
  ldr.w r0, [r7, #4]
  ldr.w r1, [r7, #20]
  ldr.w r2, [r7, #36]
  ldr.w r9, [r8, #4]
  ldr.w r10, [r8, #20]
  ldr.w r11, [r8, #36]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #4]
  str.w r5, [r0, #20]
  str.w r10, [r0, #36]
  str.w r7, [r1, #4]
  str.w r6, [r1, #20]
  str.w r4, [r1, #36]
  str.w r12, [r2, #4]
  str.w r8, [r2, #20]
  str.w r3, [r2, #36]
  ldr.w r3, [r0, #8]
  ldr.w r4, [r0, #24]
  ldr.w r5, [r0, #40]
  ldr.w r6, [r1, #8]
  ldr.w r7, [r1, #24]
  ldr.w r8, [r1, #40]
  ldr.w r9, [r2, #8]
  ldr.w r10, [r2, #24]
  ldr.w r11, [r2, #40]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #8]
  str.w r5, [r6, #24]
  str.w r10, [r6, #40]
  str.w r1, [r7, #8]
  str.w r0, [r7, #24]
  str.w r4, [r7, #40]
  str.w r12, [r8, #8]
  str.w r2, [r8, #24]
  str.w r3, [r8, #40]
  ldr.w r3, [r6, #12]
  ldr.w r4, [r6, #28]
  ldr.w r5, [r6, #44]
  ldr.w r0, [r7, #12]
  ldr.w r1, [r7, #28]
  ldr.w r2, [r7, #44]
  ldr.w r9, [r8, #12]
  ldr.w r10, [r8, #28]
  ldr.w r11, [r8, #44]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #12]
  str.w r5, [r0, #28]
  str.w r10, [r0, #44]
  str.w r7, [r1, #12]
  str.w r6, [r1, #28]
  str.w r4, [r1, #44]
  str.w r12, [r2, #12]
  str.w r8, [r2, #28]
  str.w r3, [r2, #44]
  ldr.w r3, [r0, #0]
  ldr.w r4, [r0, #16]
  ldr.w r5, [r0, #32]
  ldr.w r6, [r1, #0]
  ldr.w r7, [r1, #16]
  ldr.w r8, [r1, #32]
  ldr.w r9, [r2, #0]
  ldr.w r10, [r2, #16]
  ldr.w r11, [r2, #32]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #0]
  str.w r5, [r6, #16]
  str.w r10, [r6, #32]
  str.w r1, [r7, #0]
  str.w r0, [r7, #16]
  str.w r4, [r7, #32]
  str.w r12, [r8, #0]
  str.w r2, [r8, #16]
  str.w r3, [r8, #32]
  ldr.w r3, [r6, #4]
  ldr.w r4, [r6, #20]
  ldr.w r5, [r6, #36]
  ldr.w r0, [r7, #4]
  ldr.w r1, [r7, #20]
  ldr.w r2, [r7, #36]
  ldr.w r9, [r8, #4]
  ldr.w r10, [r8, #20]
  ldr.w r11, [r8, #36]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  movw.w r0, 0x7910
  movt.w r0, 0x9e37
  eor.w r9, r9, r0
  pop.w {r0-r2}
  str.w r9, [r0, #4]
  str.w r5, [r0, #20]
  str.w r10, [r0, #36]
  str.w r7, [r1, #4]
  str.w r6, [r1, #20]
  str.w r4, [r1, #36]
  str.w r12, [r2, #4]
  str.w r8, [r2, #20]
  str.w r3, [r2, #36]
  ldr.w r3, [r0, #8]
  ldr.w r4, [r0, #24]
  ldr.w r5, [r0, #40]
  ldr.w r6, [r1, #8]
  ldr.w r7, [r1, #24]
  ldr.w r8, [r1, #40]
  ldr.w r9, [r2, #8]
  ldr.w r10, [r2, #24]
  ldr.w r11, [r2, #40]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #8]
  str.w r5, [r6, #24]
  str.w r10, [r6, #40]
  str.w r1, [r7, #8]
  str.w r0, [r7, #24]
  str.w r4, [r7, #40]
  str.w r12, [r8, #8]
  str.w r2, [r8, #24]
  str.w r3, [r8, #40]
  ldr.w r3, [r6, #12]
  ldr.w r4, [r6, #28]
  ldr.w r5, [r6, #44]
  ldr.w r0, [r7, #12]
  ldr.w r1, [r7, #28]
  ldr.w r2, [r7, #44]
  ldr.w r9, [r8, #12]
  ldr.w r10, [r8, #28]
  ldr.w r11, [r8, #44]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #12]
  str.w r5, [r0, #28]
  str.w r10, [r0, #44]
  str.w r7, [r1, #12]
  str.w r6, [r1, #28]
  str.w r4, [r1, #44]
  str.w r12, [r2, #12]
  str.w r8, [r2, #28]
  str.w r3, [r2, #44]
  ldr.w r3, [r0, #4]
  ldr.w r4, [r0, #16]
  ldr.w r5, [r0, #32]
  ldr.w r6, [r1, #4]
  ldr.w r7, [r1, #16]
  ldr.w r8, [r1, #32]
  ldr.w r9, [r2, #4]
  ldr.w r10, [r2, #16]
  ldr.w r11, [r2, #32]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #4]
  str.w r5, [r6, #16]
  str.w r10, [r6, #32]
  str.w r1, [r7, #4]
  str.w r0, [r7, #16]
  str.w r4, [r7, #32]
  str.w r12, [r8, #4]
  str.w r2, [r8, #16]
  str.w r3, [r8, #32]
  ldr.w r3, [r6, #0]
  ldr.w r4, [r6, #20]
  ldr.w r5, [r6, #36]
  ldr.w r0, [r7, #0]
  ldr.w r1, [r7, #20]
  ldr.w r2, [r7, #36]
  ldr.w r9, [r8, #0]
  ldr.w r10, [r8, #20]
  ldr.w r11, [r8, #36]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #0]
  str.w r5, [r0, #20]
  str.w r10, [r0, #36]
  str.w r7, [r1, #0]
  str.w r6, [r1, #20]
  str.w r4, [r1, #36]
  str.w r12, [r2, #0]
  str.w r8, [r2, #20]
  str.w r3, [r2, #36]
  ldr.w r3, [r0, #12]
  ldr.w r4, [r0, #24]
  ldr.w r5, [r0, #40]
  ldr.w r6, [r1, #12]
  ldr.w r7, [r1, #24]
  ldr.w r8, [r1, #40]
  ldr.w r9, [r2, #12]
  ldr.w r10, [r2, #24]
  ldr.w r11, [r2, #40]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #12]
  str.w r5, [r6, #24]
  str.w r10, [r6, #40]
  str.w r1, [r7, #12]
  str.w r0, [r7, #24]
  str.w r4, [r7, #40]
  str.w r12, [r8, #12]
  str.w r2, [r8, #24]
  str.w r3, [r8, #40]
  ldr.w r3, [r6, #8]
  ldr.w r4, [r6, #28]
  ldr.w r5, [r6, #44]
  ldr.w r0, [r7, #8]
  ldr.w r1, [r7, #28]
  ldr.w r2, [r7, #44]
  ldr.w r9, [r8, #8]
  ldr.w r10, [r8, #28]
  ldr.w r11, [r8, #44]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #8]
  str.w r5, [r0, #28]
  str.w r10, [r0, #44]
  str.w r7, [r1, #8]
  str.w r6, [r1, #28]
  str.w r4, [r1, #44]
  str.w r12, [r2, #8]
  str.w r8, [r2, #28]
  str.w r3, [r2, #44]
  ldr.w r3, [r0, #4]
  ldr.w r4, [r0, #16]
  ldr.w r5, [r0, #32]
  ldr.w r6, [r1, #4]
  ldr.w r7, [r1, #16]
  ldr.w r8, [r1, #32]
  ldr.w r9, [r2, #4]
  ldr.w r10, [r2, #16]
  ldr.w r11, [r2, #32]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #4]
  str.w r5, [r6, #16]
  str.w r10, [r6, #32]
  str.w r1, [r7, #4]
  str.w r0, [r7, #16]
  str.w r4, [r7, #32]
  str.w r12, [r8, #4]
  str.w r2, [r8, #16]
  str.w r3, [r8, #32]
  ldr.w r3, [r6, #0]
  ldr.w r4, [r6, #20]
  ldr.w r5, [r6, #36]
  ldr.w r0, [r7, #0]
  ldr.w r1, [r7, #20]
  ldr.w r2, [r7, #36]
  ldr.w r9, [r8, #0]
  ldr.w r10, [r8, #20]
  ldr.w r11, [r8, #36]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #0]
  str.w r5, [r0, #20]
  str.w r10, [r0, #36]
  str.w r7, [r1, #0]
  str.w r6, [r1, #20]
  str.w r4, [r1, #36]
  str.w r12, [r2, #0]
  str.w r8, [r2, #20]
  str.w r3, [r2, #36]
  ldr.w r3, [r0, #12]
  ldr.w r4, [r0, #24]
  ldr.w r5, [r0, #40]
  ldr.w r6, [r1, #12]
  ldr.w r7, [r1, #24]
  ldr.w r8, [r1, #40]
  ldr.w r9, [r2, #12]
  ldr.w r10, [r2, #24]
  ldr.w r11, [r2, #40]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #12]
  str.w r5, [r6, #24]
  str.w r10, [r6, #40]
  str.w r1, [r7, #12]
  str.w r0, [r7, #24]
  str.w r4, [r7, #40]
  str.w r12, [r8, #12]
  str.w r2, [r8, #24]
  str.w r3, [r8, #40]
  ldr.w r3, [r6, #8]
  ldr.w r4, [r6, #28]
  ldr.w r5, [r6, #44]
  ldr.w r0, [r7, #8]
  ldr.w r1, [r7, #28]
  ldr.w r2, [r7, #44]
  ldr.w r9, [r8, #8]
  ldr.w r10, [r8, #28]
  ldr.w r11, [r8, #44]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #8]
  str.w r5, [r0, #28]
  str.w r10, [r0, #44]
  str.w r7, [r1, #8]
  str.w r6, [r1, #28]
  str.w r4, [r1, #44]
  str.w r12, [r2, #8]
  str.w r8, [r2, #28]
  str.w r3, [r2, #44]
  ldr.w r3, [r0, #12]
  ldr.w r4, [r0, #16]
  ldr.w r5, [r0, #32]
  ldr.w r6, [r1, #12]
  ldr.w r7, [r1, #16]
  ldr.w r8, [r1, #32]
  ldr.w r9, [r2, #12]
  ldr.w r10, [r2, #16]
  ldr.w r11, [r2, #32]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #12]
  str.w r5, [r6, #16]
  str.w r10, [r6, #32]
  str.w r1, [r7, #12]
  str.w r0, [r7, #16]
  str.w r4, [r7, #32]
  str.w r12, [r8, #12]
  str.w r2, [r8, #16]
  str.w r3, [r8, #32]
  ldr.w r3, [r6, #8]
  ldr.w r4, [r6, #20]
  ldr.w r5, [r6, #36]
  ldr.w r0, [r7, #8]
  ldr.w r1, [r7, #20]
  ldr.w r2, [r7, #36]
  ldr.w r9, [r8, #8]
  ldr.w r10, [r8, #20]
  ldr.w r11, [r8, #36]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #8]
  str.w r5, [r0, #20]
  str.w r10, [r0, #36]
  str.w r7, [r1, #8]
  str.w r6, [r1, #20]
  str.w r4, [r1, #36]
  str.w r12, [r2, #8]
  str.w r8, [r2, #20]
  str.w r3, [r2, #36]
  ldr.w r3, [r0, #4]
  ldr.w r4, [r0, #24]
  ldr.w r5, [r0, #40]
  ldr.w r6, [r1, #4]
  ldr.w r7, [r1, #24]
  ldr.w r8, [r1, #40]
  ldr.w r9, [r2, #4]
  ldr.w r10, [r2, #24]
  ldr.w r11, [r2, #40]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #4]
  str.w r5, [r6, #24]
  str.w r10, [r6, #40]
  str.w r1, [r7, #4]
  str.w r0, [r7, #24]
  str.w r4, [r7, #40]
  str.w r12, [r8, #4]
  str.w r2, [r8, #24]
  str.w r3, [r8, #40]
  ldr.w r3, [r6, #0]
  ldr.w r4, [r6, #28]
  ldr.w r5, [r6, #44]
  ldr.w r0, [r7, #0]
  ldr.w r1, [r7, #28]
  ldr.w r2, [r7, #44]
  ldr.w r9, [r8, #0]
  ldr.w r10, [r8, #28]
  ldr.w r11, [r8, #44]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #0]
  str.w r5, [r0, #28]
  str.w r10, [r0, #44]
  str.w r7, [r1, #0]
  str.w r6, [r1, #28]
  str.w r4, [r1, #44]
  str.w r12, [r2, #0]
  str.w r8, [r2, #28]
  str.w r3, [r2, #44]
  ldr.w r3, [r0, #12]
  ldr.w r4, [r0, #16]
  ldr.w r5, [r0, #32]
  ldr.w r6, [r1, #12]
  ldr.w r7, [r1, #16]
  ldr.w r8, [r1, #32]
  ldr.w r9, [r2, #12]
  ldr.w r10, [r2, #16]
  ldr.w r11, [r2, #32]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #12]
  str.w r5, [r6, #16]
  str.w r10, [r6, #32]
  str.w r1, [r7, #12]
  str.w r0, [r7, #16]
  str.w r4, [r7, #32]
  str.w r12, [r8, #12]
  str.w r2, [r8, #16]
  str.w r3, [r8, #32]
  ldr.w r3, [r6, #8]
  ldr.w r4, [r6, #20]
  ldr.w r5, [r6, #36]
  ldr.w r0, [r7, #8]
  ldr.w r1, [r7, #20]
  ldr.w r2, [r7, #36]
  ldr.w r9, [r8, #8]
  ldr.w r10, [r8, #20]
  ldr.w r11, [r8, #36]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  movw.w r0, 0x790c
  movt.w r0, 0x9e37
  eor.w r9, r9, r0
  pop.w {r0-r2}
  str.w r9, [r0, #8]
  str.w r5, [r0, #20]
  str.w r10, [r0, #36]
  str.w r7, [r1, #8]
  str.w r6, [r1, #20]
  str.w r4, [r1, #36]
  str.w r12, [r2, #8]
  str.w r8, [r2, #20]
  str.w r3, [r2, #36]
  ldr.w r3, [r0, #4]
  ldr.w r4, [r0, #24]
  ldr.w r5, [r0, #40]
  ldr.w r6, [r1, #4]
  ldr.w r7, [r1, #24]
  ldr.w r8, [r1, #40]
  ldr.w r9, [r2, #4]
  ldr.w r10, [r2, #24]
  ldr.w r11, [r2, #40]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #4]
  str.w r5, [r6, #24]
  str.w r10, [r6, #40]
  str.w r1, [r7, #4]
  str.w r0, [r7, #24]
  str.w r4, [r7, #40]
  str.w r12, [r8, #4]
  str.w r2, [r8, #24]
  str.w r3, [r8, #40]
  ldr.w r3, [r6, #0]
  ldr.w r4, [r6, #28]
  ldr.w r5, [r6, #44]
  ldr.w r0, [r7, #0]
  ldr.w r1, [r7, #28]
  ldr.w r2, [r7, #44]
  ldr.w r9, [r8, #0]
  ldr.w r10, [r8, #28]
  ldr.w r11, [r8, #44]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #0]
  str.w r5, [r0, #28]
  str.w r10, [r0, #44]
  str.w r7, [r1, #0]
  str.w r6, [r1, #28]
  str.w r4, [r1, #44]
  str.w r12, [r2, #0]
  str.w r8, [r2, #28]
  str.w r3, [r2, #44]
  ldr.w r3, [r0, #8]
  ldr.w r4, [r0, #16]
  ldr.w r5, [r0, #32]
  ldr.w r6, [r1, #8]
  ldr.w r7, [r1, #16]
  ldr.w r8, [r1, #32]
  ldr.w r9, [r2, #8]
  ldr.w r10, [r2, #16]
  ldr.w r11, [r2, #32]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #8]
  str.w r5, [r6, #16]
  str.w r10, [r6, #32]
  str.w r1, [r7, #8]
  str.w r0, [r7, #16]
  str.w r4, [r7, #32]
  str.w r12, [r8, #8]
  str.w r2, [r8, #16]
  str.w r3, [r8, #32]
  ldr.w r3, [r6, #12]
  ldr.w r4, [r6, #20]
  ldr.w r5, [r6, #36]
  ldr.w r0, [r7, #12]
  ldr.w r1, [r7, #20]
  ldr.w r2, [r7, #36]
  ldr.w r9, [r8, #12]
  ldr.w r10, [r8, #20]
  ldr.w r11, [r8, #36]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #12]
  str.w r5, [r0, #20]
  str.w r10, [r0, #36]
  str.w r7, [r1, #12]
  str.w r6, [r1, #20]
  str.w r4, [r1, #36]
  str.w r12, [r2, #12]
  str.w r8, [r2, #20]
  str.w r3, [r2, #36]
  ldr.w r3, [r0, #0]
  ldr.w r4, [r0, #24]
  ldr.w r5, [r0, #40]
  ldr.w r6, [r1, #0]
  ldr.w r7, [r1, #24]
  ldr.w r8, [r1, #40]
  ldr.w r9, [r2, #0]
  ldr.w r10, [r2, #24]
  ldr.w r11, [r2, #40]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #0]
  str.w r5, [r6, #24]
  str.w r10, [r6, #40]
  str.w r1, [r7, #0]
  str.w r0, [r7, #24]
  str.w r4, [r7, #40]
  str.w r12, [r8, #0]
  str.w r2, [r8, #24]
  str.w r3, [r8, #40]
  ldr.w r3, [r6, #4]
  ldr.w r4, [r6, #28]
  ldr.w r5, [r6, #44]
  ldr.w r0, [r7, #4]
  ldr.w r1, [r7, #28]
  ldr.w r2, [r7, #44]
  ldr.w r9, [r8, #4]
  ldr.w r10, [r8, #28]
  ldr.w r11, [r8, #44]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #4]
  str.w r5, [r0, #28]
  str.w r10, [r0, #44]
  str.w r7, [r1, #4]
  str.w r6, [r1, #28]
  str.w r4, [r1, #44]
  str.w r12, [r2, #4]
  str.w r8, [r2, #28]
  str.w r3, [r2, #44]
  ldr.w r3, [r0, #8]
  ldr.w r4, [r0, #16]
  ldr.w r5, [r0, #32]
  ldr.w r6, [r1, #8]
  ldr.w r7, [r1, #16]
  ldr.w r8, [r1, #32]
  ldr.w r9, [r2, #8]
  ldr.w r10, [r2, #16]
  ldr.w r11, [r2, #32]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #8]
  str.w r5, [r6, #16]
  str.w r10, [r6, #32]
  str.w r1, [r7, #8]
  str.w r0, [r7, #16]
  str.w r4, [r7, #32]
  str.w r12, [r8, #8]
  str.w r2, [r8, #16]
  str.w r3, [r8, #32]
  ldr.w r3, [r6, #12]
  ldr.w r4, [r6, #20]
  ldr.w r5, [r6, #36]
  ldr.w r0, [r7, #12]
  ldr.w r1, [r7, #20]
  ldr.w r2, [r7, #36]
  ldr.w r9, [r8, #12]
  ldr.w r10, [r8, #20]
  ldr.w r11, [r8, #36]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #12]
  str.w r5, [r0, #20]
  str.w r10, [r0, #36]
  str.w r7, [r1, #12]
  str.w r6, [r1, #20]
  str.w r4, [r1, #36]
  str.w r12, [r2, #12]
  str.w r8, [r2, #20]
  str.w r3, [r2, #36]
  ldr.w r3, [r0, #0]
  ldr.w r4, [r0, #24]
  ldr.w r5, [r0, #40]
  ldr.w r6, [r1, #0]
  ldr.w r7, [r1, #24]
  ldr.w r8, [r1, #40]
  ldr.w r9, [r2, #0]
  ldr.w r10, [r2, #24]
  ldr.w r11, [r2, #40]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #0]
  str.w r5, [r6, #24]
  str.w r10, [r6, #40]
  str.w r1, [r7, #0]
  str.w r0, [r7, #24]
  str.w r4, [r7, #40]
  str.w r12, [r8, #0]
  str.w r2, [r8, #24]
  str.w r3, [r8, #40]
  ldr.w r3, [r6, #4]
  ldr.w r4, [r6, #28]
  ldr.w r5, [r6, #44]
  ldr.w r0, [r7, #4]
  ldr.w r1, [r7, #28]
  ldr.w r2, [r7, #44]
  ldr.w r9, [r8, #4]
  ldr.w r10, [r8, #28]
  ldr.w r11, [r8, #44]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #4]
  str.w r5, [r0, #28]
  str.w r10, [r0, #44]
  str.w r7, [r1, #4]
  str.w r6, [r1, #28]
  str.w r4, [r1, #44]
  str.w r12, [r2, #4]
  str.w r8, [r2, #28]
  str.w r3, [r2, #44]
  ldr.w r3, [r0, #0]
  ldr.w r4, [r0, #16]
  ldr.w r5, [r0, #32]
  ldr.w r6, [r1, #0]
  ldr.w r7, [r1, #16]
  ldr.w r8, [r1, #32]
  ldr.w r9, [r2, #0]
  ldr.w r10, [r2, #16]
  ldr.w r11, [r2, #32]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #0]
  str.w r5, [r6, #16]
  str.w r10, [r6, #32]
  str.w r1, [r7, #0]
  str.w r0, [r7, #16]
  str.w r4, [r7, #32]
  str.w r12, [r8, #0]
  str.w r2, [r8, #16]
  str.w r3, [r8, #32]
  ldr.w r3, [r6, #4]
  ldr.w r4, [r6, #20]
  ldr.w r5, [r6, #36]
  ldr.w r0, [r7, #4]
  ldr.w r1, [r7, #20]
  ldr.w r2, [r7, #36]
  ldr.w r9, [r8, #4]
  ldr.w r10, [r8, #20]
  ldr.w r11, [r8, #36]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #4]
  str.w r5, [r0, #20]
  str.w r10, [r0, #36]
  str.w r7, [r1, #4]
  str.w r6, [r1, #20]
  str.w r4, [r1, #36]
  str.w r12, [r2, #4]
  str.w r8, [r2, #20]
  str.w r3, [r2, #36]
  ldr.w r3, [r0, #8]
  ldr.w r4, [r0, #24]
  ldr.w r5, [r0, #40]
  ldr.w r6, [r1, #8]
  ldr.w r7, [r1, #24]
  ldr.w r8, [r1, #40]
  ldr.w r9, [r2, #8]
  ldr.w r10, [r2, #24]
  ldr.w r11, [r2, #40]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #8]
  str.w r5, [r6, #24]
  str.w r10, [r6, #40]
  str.w r1, [r7, #8]
  str.w r0, [r7, #24]
  str.w r4, [r7, #40]
  str.w r12, [r8, #8]
  str.w r2, [r8, #24]
  str.w r3, [r8, #40]
  ldr.w r3, [r6, #12]
  ldr.w r4, [r6, #28]
  ldr.w r5, [r6, #44]
  ldr.w r0, [r7, #12]
  ldr.w r1, [r7, #28]
  ldr.w r2, [r7, #44]
  ldr.w r9, [r8, #12]
  ldr.w r10, [r8, #28]
  ldr.w r11, [r8, #44]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #12]
  str.w r5, [r0, #28]
  str.w r10, [r0, #44]
  str.w r7, [r1, #12]
  str.w r6, [r1, #28]
  str.w r4, [r1, #44]
  str.w r12, [r2, #12]
  str.w r8, [r2, #28]
  str.w r3, [r2, #44]
  ldr.w r3, [r0, #0]
  ldr.w r4, [r0, #16]
  ldr.w r5, [r0, #32]
  ldr.w r6, [r1, #0]
  ldr.w r7, [r1, #16]
  ldr.w r8, [r1, #32]
  ldr.w r9, [r2, #0]
  ldr.w r10, [r2, #16]
  ldr.w r11, [r2, #32]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #0]
  str.w r5, [r6, #16]
  str.w r10, [r6, #32]
  str.w r1, [r7, #0]
  str.w r0, [r7, #16]
  str.w r4, [r7, #32]
  str.w r12, [r8, #0]
  str.w r2, [r8, #16]
  str.w r3, [r8, #32]
  ldr.w r3, [r6, #4]
  ldr.w r4, [r6, #20]
  ldr.w r5, [r6, #36]
  ldr.w r0, [r7, #4]
  ldr.w r1, [r7, #20]
  ldr.w r2, [r7, #36]
  ldr.w r9, [r8, #4]
  ldr.w r10, [r8, #20]
  ldr.w r11, [r8, #36]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  movw.w r0, 0x7908
  movt.w r0, 0x9e37
  eor.w r9, r9, r0
  pop.w {r0-r2}
  str.w r9, [r0, #4]
  str.w r5, [r0, #20]
  str.w r10, [r0, #36]
  str.w r7, [r1, #4]
  str.w r6, [r1, #20]
  str.w r4, [r1, #36]
  str.w r12, [r2, #4]
  str.w r8, [r2, #20]
  str.w r3, [r2, #36]
  ldr.w r3, [r0, #8]
  ldr.w r4, [r0, #24]
  ldr.w r5, [r0, #40]
  ldr.w r6, [r1, #8]
  ldr.w r7, [r1, #24]
  ldr.w r8, [r1, #40]
  ldr.w r9, [r2, #8]
  ldr.w r10, [r2, #24]
  ldr.w r11, [r2, #40]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #8]
  str.w r5, [r6, #24]
  str.w r10, [r6, #40]
  str.w r1, [r7, #8]
  str.w r0, [r7, #24]
  str.w r4, [r7, #40]
  str.w r12, [r8, #8]
  str.w r2, [r8, #24]
  str.w r3, [r8, #40]
  ldr.w r3, [r6, #12]
  ldr.w r4, [r6, #28]
  ldr.w r5, [r6, #44]
  ldr.w r0, [r7, #12]
  ldr.w r1, [r7, #28]
  ldr.w r2, [r7, #44]
  ldr.w r9, [r8, #12]
  ldr.w r10, [r8, #28]
  ldr.w r11, [r8, #44]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #12]
  str.w r5, [r0, #28]
  str.w r10, [r0, #44]
  str.w r7, [r1, #12]
  str.w r6, [r1, #28]
  str.w r4, [r1, #44]
  str.w r12, [r2, #12]
  str.w r8, [r2, #28]
  str.w r3, [r2, #44]
  ldr.w r3, [r0, #4]
  ldr.w r4, [r0, #16]
  ldr.w r5, [r0, #32]
  ldr.w r6, [r1, #4]
  ldr.w r7, [r1, #16]
  ldr.w r8, [r1, #32]
  ldr.w r9, [r2, #4]
  ldr.w r10, [r2, #16]
  ldr.w r11, [r2, #32]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #4]
  str.w r5, [r6, #16]
  str.w r10, [r6, #32]
  str.w r1, [r7, #4]
  str.w r0, [r7, #16]
  str.w r4, [r7, #32]
  str.w r12, [r8, #4]
  str.w r2, [r8, #16]
  str.w r3, [r8, #32]
  ldr.w r3, [r6, #0]
  ldr.w r4, [r6, #20]
  ldr.w r5, [r6, #36]
  ldr.w r0, [r7, #0]
  ldr.w r1, [r7, #20]
  ldr.w r2, [r7, #36]
  ldr.w r9, [r8, #0]
  ldr.w r10, [r8, #20]
  ldr.w r11, [r8, #36]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #0]
  str.w r5, [r0, #20]
  str.w r10, [r0, #36]
  str.w r7, [r1, #0]
  str.w r6, [r1, #20]
  str.w r4, [r1, #36]
  str.w r12, [r2, #0]
  str.w r8, [r2, #20]
  str.w r3, [r2, #36]
  ldr.w r3, [r0, #12]
  ldr.w r4, [r0, #24]
  ldr.w r5, [r0, #40]
  ldr.w r6, [r1, #12]
  ldr.w r7, [r1, #24]
  ldr.w r8, [r1, #40]
  ldr.w r9, [r2, #12]
  ldr.w r10, [r2, #24]
  ldr.w r11, [r2, #40]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #12]
  str.w r5, [r6, #24]
  str.w r10, [r6, #40]
  str.w r1, [r7, #12]
  str.w r0, [r7, #24]
  str.w r4, [r7, #40]
  str.w r12, [r8, #12]
  str.w r2, [r8, #24]
  str.w r3, [r8, #40]
  ldr.w r3, [r6, #8]
  ldr.w r4, [r6, #28]
  ldr.w r5, [r6, #44]
  ldr.w r0, [r7, #8]
  ldr.w r1, [r7, #28]
  ldr.w r2, [r7, #44]
  ldr.w r9, [r8, #8]
  ldr.w r10, [r8, #28]
  ldr.w r11, [r8, #44]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #8]
  str.w r5, [r0, #28]
  str.w r10, [r0, #44]
  str.w r7, [r1, #8]
  str.w r6, [r1, #28]
  str.w r4, [r1, #44]
  str.w r12, [r2, #8]
  str.w r8, [r2, #28]
  str.w r3, [r2, #44]
  ldr.w r3, [r0, #4]
  ldr.w r4, [r0, #16]
  ldr.w r5, [r0, #32]
  ldr.w r6, [r1, #4]
  ldr.w r7, [r1, #16]
  ldr.w r8, [r1, #32]
  ldr.w r9, [r2, #4]
  ldr.w r10, [r2, #16]
  ldr.w r11, [r2, #32]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #4]
  str.w r5, [r6, #16]
  str.w r10, [r6, #32]
  str.w r1, [r7, #4]
  str.w r0, [r7, #16]
  str.w r4, [r7, #32]
  str.w r12, [r8, #4]
  str.w r2, [r8, #16]
  str.w r3, [r8, #32]
  ldr.w r3, [r6, #0]
  ldr.w r4, [r6, #20]
  ldr.w r5, [r6, #36]
  ldr.w r0, [r7, #0]
  ldr.w r1, [r7, #20]
  ldr.w r2, [r7, #36]
  ldr.w r9, [r8, #0]
  ldr.w r10, [r8, #20]
  ldr.w r11, [r8, #36]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #0]
  str.w r5, [r0, #20]
  str.w r10, [r0, #36]
  str.w r7, [r1, #0]
  str.w r6, [r1, #20]
  str.w r4, [r1, #36]
  str.w r12, [r2, #0]
  str.w r8, [r2, #20]
  str.w r3, [r2, #36]
  ldr.w r3, [r0, #12]
  ldr.w r4, [r0, #24]
  ldr.w r5, [r0, #40]
  ldr.w r6, [r1, #12]
  ldr.w r7, [r1, #24]
  ldr.w r8, [r1, #40]
  ldr.w r9, [r2, #12]
  ldr.w r10, [r2, #24]
  ldr.w r11, [r2, #40]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #12]
  str.w r5, [r6, #24]
  str.w r10, [r6, #40]
  str.w r1, [r7, #12]
  str.w r0, [r7, #24]
  str.w r4, [r7, #40]
  str.w r12, [r8, #12]
  str.w r2, [r8, #24]
  str.w r3, [r8, #40]
  ldr.w r3, [r6, #8]
  ldr.w r4, [r6, #28]
  ldr.w r5, [r6, #44]
  ldr.w r0, [r7, #8]
  ldr.w r1, [r7, #28]
  ldr.w r2, [r7, #44]
  ldr.w r9, [r8, #8]
  ldr.w r10, [r8, #28]
  ldr.w r11, [r8, #44]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #8]
  str.w r5, [r0, #28]
  str.w r10, [r0, #44]
  str.w r7, [r1, #8]
  str.w r6, [r1, #28]
  str.w r4, [r1, #44]
  str.w r12, [r2, #8]
  str.w r8, [r2, #28]
  str.w r3, [r2, #44]
  ldr.w r3, [r0, #12]
  ldr.w r4, [r0, #16]
  ldr.w r5, [r0, #32]
  ldr.w r6, [r1, #12]
  ldr.w r7, [r1, #16]
  ldr.w r8, [r1, #32]
  ldr.w r9, [r2, #12]
  ldr.w r10, [r2, #16]
  ldr.w r11, [r2, #32]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #12]
  str.w r5, [r6, #16]
  str.w r10, [r6, #32]
  str.w r1, [r7, #12]
  str.w r0, [r7, #16]
  str.w r4, [r7, #32]
  str.w r12, [r8, #12]
  str.w r2, [r8, #16]
  str.w r3, [r8, #32]
  ldr.w r3, [r6, #8]
  ldr.w r4, [r6, #20]
  ldr.w r5, [r6, #36]
  ldr.w r0, [r7, #8]
  ldr.w r1, [r7, #20]
  ldr.w r2, [r7, #36]
  ldr.w r9, [r8, #8]
  ldr.w r10, [r8, #20]
  ldr.w r11, [r8, #36]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #8]
  str.w r5, [r0, #20]
  str.w r10, [r0, #36]
  str.w r7, [r1, #8]
  str.w r6, [r1, #20]
  str.w r4, [r1, #36]
  str.w r12, [r2, #8]
  str.w r8, [r2, #20]
  str.w r3, [r2, #36]
  ldr.w r3, [r0, #4]
  ldr.w r4, [r0, #24]
  ldr.w r5, [r0, #40]
  ldr.w r6, [r1, #4]
  ldr.w r7, [r1, #24]
  ldr.w r8, [r1, #40]
  ldr.w r9, [r2, #4]
  ldr.w r10, [r2, #24]
  ldr.w r11, [r2, #40]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #4]
  str.w r5, [r6, #24]
  str.w r10, [r6, #40]
  str.w r1, [r7, #4]
  str.w r0, [r7, #24]
  str.w r4, [r7, #40]
  str.w r12, [r8, #4]
  str.w r2, [r8, #24]
  str.w r3, [r8, #40]
  ldr.w r3, [r6, #0]
  ldr.w r4, [r6, #28]
  ldr.w r5, [r6, #44]
  ldr.w r0, [r7, #0]
  ldr.w r1, [r7, #28]
  ldr.w r2, [r7, #44]
  ldr.w r9, [r8, #0]
  ldr.w r10, [r8, #28]
  ldr.w r11, [r8, #44]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #0]
  str.w r5, [r0, #28]
  str.w r10, [r0, #44]
  str.w r7, [r1, #0]
  str.w r6, [r1, #28]
  str.w r4, [r1, #44]
  str.w r12, [r2, #0]
  str.w r8, [r2, #28]
  str.w r3, [r2, #44]
  ldr.w r3, [r0, #12]
  ldr.w r4, [r0, #16]
  ldr.w r5, [r0, #32]
  ldr.w r6, [r1, #12]
  ldr.w r7, [r1, #16]
  ldr.w r8, [r1, #32]
  ldr.w r9, [r2, #12]
  ldr.w r10, [r2, #16]
  ldr.w r11, [r2, #32]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #12]
  str.w r5, [r6, #16]
  str.w r10, [r6, #32]
  str.w r1, [r7, #12]
  str.w r0, [r7, #16]
  str.w r4, [r7, #32]
  str.w r12, [r8, #12]
  str.w r2, [r8, #16]
  str.w r3, [r8, #32]
  ldr.w r3, [r6, #8]
  ldr.w r4, [r6, #20]
  ldr.w r5, [r6, #36]
  ldr.w r0, [r7, #8]
  ldr.w r1, [r7, #20]
  ldr.w r2, [r7, #36]
  ldr.w r9, [r8, #8]
  ldr.w r10, [r8, #20]
  ldr.w r11, [r8, #36]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  movw.w r0, 0x7904
  movt.w r0, 0x9e37
  eor.w r9, r9, r0
  pop.w {r0-r2}
  str.w r9, [r0, #8]
  str.w r5, [r0, #20]
  str.w r10, [r0, #36]
  str.w r7, [r1, #8]
  str.w r6, [r1, #20]
  str.w r4, [r1, #36]
  str.w r12, [r2, #8]
  str.w r8, [r2, #20]
  str.w r3, [r2, #36]
  ldr.w r3, [r0, #4]
  ldr.w r4, [r0, #24]
  ldr.w r5, [r0, #40]
  ldr.w r6, [r1, #4]
  ldr.w r7, [r1, #24]
  ldr.w r8, [r1, #40]
  ldr.w r9, [r2, #4]
  ldr.w r10, [r2, #24]
  ldr.w r11, [r2, #40]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #4]
  str.w r5, [r6, #24]
  str.w r10, [r6, #40]
  str.w r1, [r7, #4]
  str.w r0, [r7, #24]
  str.w r4, [r7, #40]
  str.w r12, [r8, #4]
  str.w r2, [r8, #24]
  str.w r3, [r8, #40]
  ldr.w r3, [r6, #0]
  ldr.w r4, [r6, #28]
  ldr.w r5, [r6, #44]
  ldr.w r0, [r7, #0]
  ldr.w r1, [r7, #28]
  ldr.w r2, [r7, #44]
  ldr.w r9, [r8, #0]
  ldr.w r10, [r8, #28]
  ldr.w r11, [r8, #44]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #0]
  str.w r5, [r0, #28]
  str.w r10, [r0, #44]
  str.w r7, [r1, #0]
  str.w r6, [r1, #28]
  str.w r4, [r1, #44]
  str.w r12, [r2, #0]
  str.w r8, [r2, #28]
  str.w r3, [r2, #44]
  ldr.w r3, [r0, #8]
  ldr.w r4, [r0, #16]
  ldr.w r5, [r0, #32]
  ldr.w r6, [r1, #8]
  ldr.w r7, [r1, #16]
  ldr.w r8, [r1, #32]
  ldr.w r9, [r2, #8]
  ldr.w r10, [r2, #16]
  ldr.w r11, [r2, #32]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #8]
  str.w r5, [r6, #16]
  str.w r10, [r6, #32]
  str.w r1, [r7, #8]
  str.w r0, [r7, #16]
  str.w r4, [r7, #32]
  str.w r12, [r8, #8]
  str.w r2, [r8, #16]
  str.w r3, [r8, #32]
  ldr.w r3, [r6, #12]
  ldr.w r4, [r6, #20]
  ldr.w r5, [r6, #36]
  ldr.w r0, [r7, #12]
  ldr.w r1, [r7, #20]
  ldr.w r2, [r7, #36]
  ldr.w r9, [r8, #12]
  ldr.w r10, [r8, #20]
  ldr.w r11, [r8, #36]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #12]
  str.w r5, [r0, #20]
  str.w r10, [r0, #36]
  str.w r7, [r1, #12]
  str.w r6, [r1, #20]
  str.w r4, [r1, #36]
  str.w r12, [r2, #12]
  str.w r8, [r2, #20]
  str.w r3, [r2, #36]
  ldr.w r3, [r0, #0]
  ldr.w r4, [r0, #24]
  ldr.w r5, [r0, #40]
  ldr.w r6, [r1, #0]
  ldr.w r7, [r1, #24]
  ldr.w r8, [r1, #40]
  ldr.w r9, [r2, #0]
  ldr.w r10, [r2, #24]
  ldr.w r11, [r2, #40]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #0]
  str.w r5, [r6, #24]
  str.w r10, [r6, #40]
  str.w r1, [r7, #0]
  str.w r0, [r7, #24]
  str.w r4, [r7, #40]
  str.w r12, [r8, #0]
  str.w r2, [r8, #24]
  str.w r3, [r8, #40]
  ldr.w r3, [r6, #4]
  ldr.w r4, [r6, #28]
  ldr.w r5, [r6, #44]
  ldr.w r0, [r7, #4]
  ldr.w r1, [r7, #28]
  ldr.w r2, [r7, #44]
  ldr.w r9, [r8, #4]
  ldr.w r10, [r8, #28]
  ldr.w r11, [r8, #44]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #4]
  str.w r5, [r0, #28]
  str.w r10, [r0, #44]
  str.w r7, [r1, #4]
  str.w r6, [r1, #28]
  str.w r4, [r1, #44]
  str.w r12, [r2, #4]
  str.w r8, [r2, #28]
  str.w r3, [r2, #44]
  ldr.w r3, [r0, #8]
  ldr.w r4, [r0, #16]
  ldr.w r5, [r0, #32]
  ldr.w r6, [r1, #8]
  ldr.w r7, [r1, #16]
  ldr.w r8, [r1, #32]
  ldr.w r9, [r2, #8]
  ldr.w r10, [r2, #16]
  ldr.w r11, [r2, #32]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #8]
  str.w r5, [r6, #16]
  str.w r10, [r6, #32]
  str.w r1, [r7, #8]
  str.w r0, [r7, #16]
  str.w r4, [r7, #32]
  str.w r12, [r8, #8]
  str.w r2, [r8, #16]
  str.w r3, [r8, #32]
  ldr.w r3, [r6, #12]
  ldr.w r4, [r6, #20]
  ldr.w r5, [r6, #36]
  ldr.w r0, [r7, #12]
  ldr.w r1, [r7, #20]
  ldr.w r2, [r7, #36]
  ldr.w r9, [r8, #12]
  ldr.w r10, [r8, #20]
  ldr.w r11, [r8, #36]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #12]
  str.w r5, [r0, #20]
  str.w r10, [r0, #36]
  str.w r7, [r1, #12]
  str.w r6, [r1, #20]
  str.w r4, [r1, #36]
  str.w r12, [r2, #12]
  str.w r8, [r2, #20]
  str.w r3, [r2, #36]
  ldr.w r3, [r0, #0]
  ldr.w r4, [r0, #24]
  ldr.w r5, [r0, #40]
  ldr.w r6, [r1, #0]
  ldr.w r7, [r1, #24]
  ldr.w r8, [r1, #40]
  ldr.w r9, [r2, #0]
  ldr.w r10, [r2, #24]
  ldr.w r11, [r2, #40]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #0]
  str.w r5, [r6, #24]
  str.w r10, [r6, #40]
  str.w r1, [r7, #0]
  str.w r0, [r7, #24]
  str.w r4, [r7, #40]
  str.w r12, [r8, #0]
  str.w r2, [r8, #24]
  str.w r3, [r8, #40]
  ldr.w r3, [r6, #4]
  ldr.w r4, [r6, #28]
  ldr.w r5, [r6, #44]
  ldr.w r0, [r7, #4]
  ldr.w r1, [r7, #28]
  ldr.w r2, [r7, #44]
  ldr.w r9, [r8, #4]
  ldr.w r10, [r8, #28]
  ldr.w r11, [r8, #44]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #4]
  str.w r5, [r0, #28]
  str.w r10, [r0, #44]
  str.w r7, [r1, #4]
  str.w r6, [r1, #28]
  str.w r4, [r1, #44]
  str.w r12, [r2, #4]
  str.w r8, [r2, #28]
  str.w r3, [r2, #44]
  ldr.w r3, [r0, #0]
  ldr.w r4, [r0, #16]
  ldr.w r5, [r0, #32]
  ldr.w r6, [r1, #0]
  ldr.w r7, [r1, #16]
  ldr.w r8, [r1, #32]
  ldr.w r9, [r2, #0]
  ldr.w r10, [r2, #16]
  ldr.w r11, [r2, #32]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #0]
  str.w r5, [r6, #16]
  str.w r10, [r6, #32]
  str.w r1, [r7, #0]
  str.w r0, [r7, #16]
  str.w r4, [r7, #32]
  str.w r12, [r8, #0]
  str.w r2, [r8, #16]
  str.w r3, [r8, #32]
  ldr.w r3, [r6, #4]
  ldr.w r4, [r6, #20]
  ldr.w r5, [r6, #36]
  ldr.w r0, [r7, #4]
  ldr.w r1, [r7, #20]
  ldr.w r2, [r7, #36]
  ldr.w r9, [r8, #4]
  ldr.w r10, [r8, #20]
  ldr.w r11, [r8, #36]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #4]
  str.w r5, [r0, #20]
  str.w r10, [r0, #36]
  str.w r7, [r1, #4]
  str.w r6, [r1, #20]
  str.w r4, [r1, #36]
  str.w r12, [r2, #4]
  str.w r8, [r2, #20]
  str.w r3, [r2, #36]
  ldr.w r3, [r0, #8]
  ldr.w r4, [r0, #24]
  ldr.w r5, [r0, #40]
  ldr.w r6, [r1, #8]
  ldr.w r7, [r1, #24]
  ldr.w r8, [r1, #40]
  ldr.w r9, [r2, #8]
  ldr.w r10, [r2, #24]
  ldr.w r11, [r2, #40]
  push.w {r0-r2}
  ror.w r3, #8
  ror.w r6, #8
  ror.w r9, #8
  bic.w r0, r3, r11
  bic.w lr, r5, r9
  eor.w r0, r0, lr
  orr.w lr, r9, r11
  eor.w r0, r0, lr
  eor.w r0, r9, r0, lsl #1
  eor.w r0, r0, r10, ror #23
  and.w r1, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r1, r1, lr
  and.w lr, r9, r10, ror #23
  eor.w r1, r1, lr
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r10, ror #23
  and.w r2, r3, r5
  and.w lr, r3, r8
  eor.w r2, r2, lr
  and.w lr, r6, r5
  eor.w r2, r2, lr
  eor.w r2, r3, r2, lsl #1
  eor.w r2, r2, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r7, ror #23
  eor.w r12, r12, lr
  and.w lr, r6, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r8, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r7, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r6, r11
  bic.w lr, r8, r9
  eor.w r5, r5, lr
  and.w lr, r6, r8
  eor.w r5, r5, lr
  eor.w r5, r6, r5, lsl #1
  eor.w r5, r5, r7, ror #23
  and.w r9, r9, r7, ror #23
  and.w lr, r6, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r6, r7, ror #23
  eor.w r9, r9, lr
  eor.w r9, r8, r9, lsl #3
  eor.w r9, r9, r7, ror #23
  and.w r10, r8, r10, ror #23
  and.w lr, r11, r7, ror #23
  eor.w r10, r10, lr
  and.w lr, r8, r7, ror #23
  eor.w r10, r10, lr
  eor.w r10, r6, r10, lsl #2
  eor.w r10, r10, r8, lsl #1
  pop.w {r6-r8}
  str.w r9, [r6, #8]
  str.w r5, [r6, #24]
  str.w r10, [r6, #40]
  str.w r1, [r7, #8]
  str.w r0, [r7, #24]
  str.w r4, [r7, #40]
  str.w r12, [r8, #8]
  str.w r2, [r8, #24]
  str.w r3, [r8, #40]
  ldr.w r3, [r6, #12]
  ldr.w r4, [r6, #28]
  ldr.w r5, [r6, #44]
  ldr.w r0, [r7, #12]
  ldr.w r1, [r7, #28]
  ldr.w r2, [r7, #44]
  ldr.w r9, [r8, #12]
  ldr.w r10, [r8, #28]
  ldr.w r11, [r8, #44]
  push.w {r6-r8}
  ror.w r3, #8
  ror.w r0, #8
  ror.w r9, #8
  bic.w r6, r3, r11
  bic.w lr, r5, r9
  eor.w r6, r6, lr
  orr.w lr, r9, r11
  eor.w r6, r6, lr
  eor.w r6, r9, r6, lsl #1
  eor.w r6, r6, r10, ror #23
  and.w r7, r3, r10, ror #23
  and.w lr, r9, r4, ror #23
  eor.w r7, r7, lr
  and.w lr, r9, r10, ror #23
  eor.w r7, r7, lr
  eor.w r7, r11, r7, lsl #3
  eor.w r7, r7, r10, ror #23
  and.w r8, r3, r5
  and.w lr, r3, r2
  eor.w r8, r8, lr
  and.w lr, r0, r5
  eor.w r8, r8, lr
  eor.w r8, r3, r8, lsl #1
  eor.w r8, r8, r4, ror #23
  and.w r12, r3, r4, ror #23
  and.w lr, r3, r1, ror #23
  eor.w r12, r12, lr
  and.w lr, r0, r4, ror #23
  eor.w r12, r12, lr
  eor.w r12, r5, r12, lsl #3
  eor.w r12, r12, r4, ror #23
  eor.w r3, r3, r5, lsl #1
  and.w lr, r5, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r2, r4, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w lr, r5, r1, ror #23
  eor.w r3, r3, lr, lsl #2
  and.w r4, r11, r4, ror #23
  and.w lr, r5, r10, ror #23
  eor.w r4, r4, lr
  and.w lr, r11, r10, ror #23
  eor.w r4, r4, lr
  eor.w r4, r9, r4, lsl #2
  eor.w r4, r4, r11, lsl #1
  bic.w r5, r0, r11
  bic.w lr, r2, r9
  eor.w r5, r5, lr
  and.w lr, r0, r2
  eor.w r5, r5, lr
  eor.w r5, r0, r5, lsl #1
  eor.w r5, r5, r1, ror #23
  and.w r9, r9, r1, ror #23
  and.w lr, r0, r10, ror #23
  eor.w r9, r9, lr
  and.w lr, r0, r1, ror #23
  eor.w r9, r9, lr
  eor.w r9, r2, r9, lsl #3
  eor.w r9, r9, r1, ror #23
  and.w r10, r2, r10, ror #23
  and.w lr, r11, r1, ror #23
  eor.w r10, r10, lr
  and.w lr, r2, r1, ror #23
  eor.w r10, r10, lr
  eor.w r10, r0, r10, lsl #2
  eor.w r10, r10, r2, lsl #1
  pop.w {r0-r2}
  str.w r9, [r0, #12]
  str.w r5, [r0, #28]
  str.w r10, [r0, #44]
  str.w r7, [r1, #12]
  str.w r6, [r1, #28]
  str.w r4, [r1, #44]
  str.w r12, [r2, #12]
  str.w r8, [r2, #28]
  str.w r3, [r2, #44]
  pop.w {r3-r12, pc}