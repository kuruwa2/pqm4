.p2align 2,,3
.syntax unified
.text

.global shared_gimli_asm_opt_m3
.type shared_gimli_asm_opt_m3, %function
@ void shared_gimli_asm_opt_m3(uint32_t *state, uint32_t *shared_state)
shared_gimli_asm_opt_m3:
  push.w {r2-r12, lr}
  ldr.w r2, [r0, #0]
  ldr.w r3, [r0, #16]
  ldr.w r4, [r0, #32]
  ldr.w r5, [r1, #0]
  ldr.w r6, [r1, #16]
  ldr.w r7, [r1, #32]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #0]
  str.w r8, [r0, #16]
  str.w r10, [r0, #32]
  str.w lr, [r1, #0]
  str.w r9, [r1, #16]
  str.w r11, [r1, #32]
  ldr.w r2, [r0, #4]
  ldr.w r3, [r0, #20]
  ldr.w r4, [r0, #36]
  ldr.w r5, [r1, #4]
  ldr.w r6, [r1, #20]
  ldr.w r7, [r1, #36]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  movw.w r2, 0x7918
  movt.w r2, 0x9e37
  orr.w r2, r2, #24
  eor.w r12, r12, r2
  str.w r12, [r0, #4]
  str.w r8, [r0, #20]
  str.w r10, [r0, #36]
  str.w lr, [r1, #4]
  str.w r9, [r1, #20]
  str.w r11, [r1, #36]
  ldr.w r2, [r0, #8]
  ldr.w r3, [r0, #24]
  ldr.w r4, [r0, #40]
  ldr.w r5, [r1, #8]
  ldr.w r6, [r1, #24]
  ldr.w r7, [r1, #40]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #8]
  str.w r8, [r0, #24]
  str.w r10, [r0, #40]
  str.w lr, [r1, #8]
  str.w r9, [r1, #24]
  str.w r11, [r1, #40]
  ldr.w r2, [r0, #12]
  ldr.w r3, [r0, #28]
  ldr.w r4, [r0, #44]
  ldr.w r5, [r1, #12]
  ldr.w r6, [r1, #28]
  ldr.w r7, [r1, #44]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #12]
  str.w r8, [r0, #28]
  str.w r10, [r0, #44]
  str.w lr, [r1, #12]
  str.w r9, [r1, #28]
  str.w r11, [r1, #44]
  ldr.w r2, [r0, #4]
  ldr.w r3, [r0, #16]
  ldr.w r4, [r0, #32]
  ldr.w r5, [r1, #4]
  ldr.w r6, [r1, #16]
  ldr.w r7, [r1, #32]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #4]
  str.w r8, [r0, #16]
  str.w r10, [r0, #32]
  str.w lr, [r1, #4]
  str.w r9, [r1, #16]
  str.w r11, [r1, #32]
  ldr.w r2, [r0, #0]
  ldr.w r3, [r0, #20]
  ldr.w r4, [r0, #36]
  ldr.w r5, [r1, #0]
  ldr.w r6, [r1, #20]
  ldr.w r7, [r1, #36]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #0]
  str.w r8, [r0, #20]
  str.w r10, [r0, #36]
  str.w lr, [r1, #0]
  str.w r9, [r1, #20]
  str.w r11, [r1, #36]
  ldr.w r2, [r0, #12]
  ldr.w r3, [r0, #24]
  ldr.w r4, [r0, #40]
  ldr.w r5, [r1, #12]
  ldr.w r6, [r1, #24]
  ldr.w r7, [r1, #40]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #12]
  str.w r8, [r0, #24]
  str.w r10, [r0, #40]
  str.w lr, [r1, #12]
  str.w r9, [r1, #24]
  str.w r11, [r1, #40]
  ldr.w r2, [r0, #8]
  ldr.w r3, [r0, #28]
  ldr.w r4, [r0, #44]
  ldr.w r5, [r1, #8]
  ldr.w r6, [r1, #28]
  ldr.w r7, [r1, #44]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #8]
  str.w r8, [r0, #28]
  str.w r10, [r0, #44]
  str.w lr, [r1, #8]
  str.w r9, [r1, #28]
  str.w r11, [r1, #44]
  ldr.w r2, [r0, #4]
  ldr.w r3, [r0, #16]
  ldr.w r4, [r0, #32]
  ldr.w r5, [r1, #4]
  ldr.w r6, [r1, #16]
  ldr.w r7, [r1, #32]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #4]
  str.w r8, [r0, #16]
  str.w r10, [r0, #32]
  str.w lr, [r1, #4]
  str.w r9, [r1, #16]
  str.w r11, [r1, #32]
  ldr.w r2, [r0, #0]
  ldr.w r3, [r0, #20]
  ldr.w r4, [r0, #36]
  ldr.w r5, [r1, #0]
  ldr.w r6, [r1, #20]
  ldr.w r7, [r1, #36]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #0]
  str.w r8, [r0, #20]
  str.w r10, [r0, #36]
  str.w lr, [r1, #0]
  str.w r9, [r1, #20]
  str.w r11, [r1, #36]
  ldr.w r2, [r0, #12]
  ldr.w r3, [r0, #24]
  ldr.w r4, [r0, #40]
  ldr.w r5, [r1, #12]
  ldr.w r6, [r1, #24]
  ldr.w r7, [r1, #40]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #12]
  str.w r8, [r0, #24]
  str.w r10, [r0, #40]
  str.w lr, [r1, #12]
  str.w r9, [r1, #24]
  str.w r11, [r1, #40]
  ldr.w r2, [r0, #8]
  ldr.w r3, [r0, #28]
  ldr.w r4, [r0, #44]
  ldr.w r5, [r1, #8]
  ldr.w r6, [r1, #28]
  ldr.w r7, [r1, #44]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #8]
  str.w r8, [r0, #28]
  str.w r10, [r0, #44]
  str.w lr, [r1, #8]
  str.w r9, [r1, #28]
  str.w r11, [r1, #44]
  ldr.w r2, [r0, #12]
  ldr.w r3, [r0, #16]
  ldr.w r4, [r0, #32]
  ldr.w r5, [r1, #12]
  ldr.w r6, [r1, #16]
  ldr.w r7, [r1, #32]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #12]
  str.w r8, [r0, #16]
  str.w r10, [r0, #32]
  str.w lr, [r1, #12]
  str.w r9, [r1, #16]
  str.w r11, [r1, #32]
  ldr.w r2, [r0, #8]
  ldr.w r3, [r0, #20]
  ldr.w r4, [r0, #36]
  ldr.w r5, [r1, #8]
  ldr.w r6, [r1, #20]
  ldr.w r7, [r1, #36]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #8]
  str.w r8, [r0, #20]
  str.w r10, [r0, #36]
  str.w lr, [r1, #8]
  str.w r9, [r1, #20]
  str.w r11, [r1, #36]
  ldr.w r2, [r0, #4]
  ldr.w r3, [r0, #24]
  ldr.w r4, [r0, #40]
  ldr.w r5, [r1, #4]
  ldr.w r6, [r1, #24]
  ldr.w r7, [r1, #40]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #4]
  str.w r8, [r0, #24]
  str.w r10, [r0, #40]
  str.w lr, [r1, #4]
  str.w r9, [r1, #24]
  str.w r11, [r1, #40]
  ldr.w r2, [r0, #0]
  ldr.w r3, [r0, #28]
  ldr.w r4, [r0, #44]
  ldr.w r5, [r1, #0]
  ldr.w r6, [r1, #28]
  ldr.w r7, [r1, #44]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #0]
  str.w r8, [r0, #28]
  str.w r10, [r0, #44]
  str.w lr, [r1, #0]
  str.w r9, [r1, #28]
  str.w r11, [r1, #44]
  ldr.w r2, [r0, #12]
  ldr.w r3, [r0, #16]
  ldr.w r4, [r0, #32]
  ldr.w r5, [r1, #12]
  ldr.w r6, [r1, #16]
  ldr.w r7, [r1, #32]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #12]
  str.w r8, [r0, #16]
  str.w r10, [r0, #32]
  str.w lr, [r1, #12]
  str.w r9, [r1, #16]
  str.w r11, [r1, #32]
  ldr.w r2, [r0, #8]
  ldr.w r3, [r0, #20]
  ldr.w r4, [r0, #36]
  ldr.w r5, [r1, #8]
  ldr.w r6, [r1, #20]
  ldr.w r7, [r1, #36]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  movw.w r2, 0x7914
  movt.w r2, 0x9e37
  orr.w r2, r2, #20
  eor.w r12, r12, r2
  str.w r12, [r0, #8]
  str.w r8, [r0, #20]
  str.w r10, [r0, #36]
  str.w lr, [r1, #8]
  str.w r9, [r1, #20]
  str.w r11, [r1, #36]
  ldr.w r2, [r0, #4]
  ldr.w r3, [r0, #24]
  ldr.w r4, [r0, #40]
  ldr.w r5, [r1, #4]
  ldr.w r6, [r1, #24]
  ldr.w r7, [r1, #40]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #4]
  str.w r8, [r0, #24]
  str.w r10, [r0, #40]
  str.w lr, [r1, #4]
  str.w r9, [r1, #24]
  str.w r11, [r1, #40]
  ldr.w r2, [r0, #0]
  ldr.w r3, [r0, #28]
  ldr.w r4, [r0, #44]
  ldr.w r5, [r1, #0]
  ldr.w r6, [r1, #28]
  ldr.w r7, [r1, #44]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #0]
  str.w r8, [r0, #28]
  str.w r10, [r0, #44]
  str.w lr, [r1, #0]
  str.w r9, [r1, #28]
  str.w r11, [r1, #44]
  ldr.w r2, [r0, #8]
  ldr.w r3, [r0, #16]
  ldr.w r4, [r0, #32]
  ldr.w r5, [r1, #8]
  ldr.w r6, [r1, #16]
  ldr.w r7, [r1, #32]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #8]
  str.w r8, [r0, #16]
  str.w r10, [r0, #32]
  str.w lr, [r1, #8]
  str.w r9, [r1, #16]
  str.w r11, [r1, #32]
  ldr.w r2, [r0, #12]
  ldr.w r3, [r0, #20]
  ldr.w r4, [r0, #36]
  ldr.w r5, [r1, #12]
  ldr.w r6, [r1, #20]
  ldr.w r7, [r1, #36]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #12]
  str.w r8, [r0, #20]
  str.w r10, [r0, #36]
  str.w lr, [r1, #12]
  str.w r9, [r1, #20]
  str.w r11, [r1, #36]
  ldr.w r2, [r0, #0]
  ldr.w r3, [r0, #24]
  ldr.w r4, [r0, #40]
  ldr.w r5, [r1, #0]
  ldr.w r6, [r1, #24]
  ldr.w r7, [r1, #40]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #0]
  str.w r8, [r0, #24]
  str.w r10, [r0, #40]
  str.w lr, [r1, #0]
  str.w r9, [r1, #24]
  str.w r11, [r1, #40]
  ldr.w r2, [r0, #4]
  ldr.w r3, [r0, #28]
  ldr.w r4, [r0, #44]
  ldr.w r5, [r1, #4]
  ldr.w r6, [r1, #28]
  ldr.w r7, [r1, #44]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #4]
  str.w r8, [r0, #28]
  str.w r10, [r0, #44]
  str.w lr, [r1, #4]
  str.w r9, [r1, #28]
  str.w r11, [r1, #44]
  ldr.w r2, [r0, #8]
  ldr.w r3, [r0, #16]
  ldr.w r4, [r0, #32]
  ldr.w r5, [r1, #8]
  ldr.w r6, [r1, #16]
  ldr.w r7, [r1, #32]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #8]
  str.w r8, [r0, #16]
  str.w r10, [r0, #32]
  str.w lr, [r1, #8]
  str.w r9, [r1, #16]
  str.w r11, [r1, #32]
  ldr.w r2, [r0, #12]
  ldr.w r3, [r0, #20]
  ldr.w r4, [r0, #36]
  ldr.w r5, [r1, #12]
  ldr.w r6, [r1, #20]
  ldr.w r7, [r1, #36]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #12]
  str.w r8, [r0, #20]
  str.w r10, [r0, #36]
  str.w lr, [r1, #12]
  str.w r9, [r1, #20]
  str.w r11, [r1, #36]
  ldr.w r2, [r0, #0]
  ldr.w r3, [r0, #24]
  ldr.w r4, [r0, #40]
  ldr.w r5, [r1, #0]
  ldr.w r6, [r1, #24]
  ldr.w r7, [r1, #40]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #0]
  str.w r8, [r0, #24]
  str.w r10, [r0, #40]
  str.w lr, [r1, #0]
  str.w r9, [r1, #24]
  str.w r11, [r1, #40]
  ldr.w r2, [r0, #4]
  ldr.w r3, [r0, #28]
  ldr.w r4, [r0, #44]
  ldr.w r5, [r1, #4]
  ldr.w r6, [r1, #28]
  ldr.w r7, [r1, #44]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #4]
  str.w r8, [r0, #28]
  str.w r10, [r0, #44]
  str.w lr, [r1, #4]
  str.w r9, [r1, #28]
  str.w r11, [r1, #44]
  ldr.w r2, [r0, #0]
  ldr.w r3, [r0, #16]
  ldr.w r4, [r0, #32]
  ldr.w r5, [r1, #0]
  ldr.w r6, [r1, #16]
  ldr.w r7, [r1, #32]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #0]
  str.w r8, [r0, #16]
  str.w r10, [r0, #32]
  str.w lr, [r1, #0]
  str.w r9, [r1, #16]
  str.w r11, [r1, #32]
  ldr.w r2, [r0, #4]
  ldr.w r3, [r0, #20]
  ldr.w r4, [r0, #36]
  ldr.w r5, [r1, #4]
  ldr.w r6, [r1, #20]
  ldr.w r7, [r1, #36]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #4]
  str.w r8, [r0, #20]
  str.w r10, [r0, #36]
  str.w lr, [r1, #4]
  str.w r9, [r1, #20]
  str.w r11, [r1, #36]
  ldr.w r2, [r0, #8]
  ldr.w r3, [r0, #24]
  ldr.w r4, [r0, #40]
  ldr.w r5, [r1, #8]
  ldr.w r6, [r1, #24]
  ldr.w r7, [r1, #40]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #8]
  str.w r8, [r0, #24]
  str.w r10, [r0, #40]
  str.w lr, [r1, #8]
  str.w r9, [r1, #24]
  str.w r11, [r1, #40]
  ldr.w r2, [r0, #12]
  ldr.w r3, [r0, #28]
  ldr.w r4, [r0, #44]
  ldr.w r5, [r1, #12]
  ldr.w r6, [r1, #28]
  ldr.w r7, [r1, #44]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #12]
  str.w r8, [r0, #28]
  str.w r10, [r0, #44]
  str.w lr, [r1, #12]
  str.w r9, [r1, #28]
  str.w r11, [r1, #44]
  ldr.w r2, [r0, #0]
  ldr.w r3, [r0, #16]
  ldr.w r4, [r0, #32]
  ldr.w r5, [r1, #0]
  ldr.w r6, [r1, #16]
  ldr.w r7, [r1, #32]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #0]
  str.w r8, [r0, #16]
  str.w r10, [r0, #32]
  str.w lr, [r1, #0]
  str.w r9, [r1, #16]
  str.w r11, [r1, #32]
  ldr.w r2, [r0, #4]
  ldr.w r3, [r0, #20]
  ldr.w r4, [r0, #36]
  ldr.w r5, [r1, #4]
  ldr.w r6, [r1, #20]
  ldr.w r7, [r1, #36]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  movw.w r2, 0x7910
  movt.w r2, 0x9e37
  orr.w r2, r2, #16
  eor.w r12, r12, r2
  str.w r12, [r0, #4]
  str.w r8, [r0, #20]
  str.w r10, [r0, #36]
  str.w lr, [r1, #4]
  str.w r9, [r1, #20]
  str.w r11, [r1, #36]
  ldr.w r2, [r0, #8]
  ldr.w r3, [r0, #24]
  ldr.w r4, [r0, #40]
  ldr.w r5, [r1, #8]
  ldr.w r6, [r1, #24]
  ldr.w r7, [r1, #40]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #8]
  str.w r8, [r0, #24]
  str.w r10, [r0, #40]
  str.w lr, [r1, #8]
  str.w r9, [r1, #24]
  str.w r11, [r1, #40]
  ldr.w r2, [r0, #12]
  ldr.w r3, [r0, #28]
  ldr.w r4, [r0, #44]
  ldr.w r5, [r1, #12]
  ldr.w r6, [r1, #28]
  ldr.w r7, [r1, #44]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #12]
  str.w r8, [r0, #28]
  str.w r10, [r0, #44]
  str.w lr, [r1, #12]
  str.w r9, [r1, #28]
  str.w r11, [r1, #44]
  ldr.w r2, [r0, #4]
  ldr.w r3, [r0, #16]
  ldr.w r4, [r0, #32]
  ldr.w r5, [r1, #4]
  ldr.w r6, [r1, #16]
  ldr.w r7, [r1, #32]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #4]
  str.w r8, [r0, #16]
  str.w r10, [r0, #32]
  str.w lr, [r1, #4]
  str.w r9, [r1, #16]
  str.w r11, [r1, #32]
  ldr.w r2, [r0, #0]
  ldr.w r3, [r0, #20]
  ldr.w r4, [r0, #36]
  ldr.w r5, [r1, #0]
  ldr.w r6, [r1, #20]
  ldr.w r7, [r1, #36]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #0]
  str.w r8, [r0, #20]
  str.w r10, [r0, #36]
  str.w lr, [r1, #0]
  str.w r9, [r1, #20]
  str.w r11, [r1, #36]
  ldr.w r2, [r0, #12]
  ldr.w r3, [r0, #24]
  ldr.w r4, [r0, #40]
  ldr.w r5, [r1, #12]
  ldr.w r6, [r1, #24]
  ldr.w r7, [r1, #40]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #12]
  str.w r8, [r0, #24]
  str.w r10, [r0, #40]
  str.w lr, [r1, #12]
  str.w r9, [r1, #24]
  str.w r11, [r1, #40]
  ldr.w r2, [r0, #8]
  ldr.w r3, [r0, #28]
  ldr.w r4, [r0, #44]
  ldr.w r5, [r1, #8]
  ldr.w r6, [r1, #28]
  ldr.w r7, [r1, #44]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #8]
  str.w r8, [r0, #28]
  str.w r10, [r0, #44]
  str.w lr, [r1, #8]
  str.w r9, [r1, #28]
  str.w r11, [r1, #44]
  ldr.w r2, [r0, #4]
  ldr.w r3, [r0, #16]
  ldr.w r4, [r0, #32]
  ldr.w r5, [r1, #4]
  ldr.w r6, [r1, #16]
  ldr.w r7, [r1, #32]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #4]
  str.w r8, [r0, #16]
  str.w r10, [r0, #32]
  str.w lr, [r1, #4]
  str.w r9, [r1, #16]
  str.w r11, [r1, #32]
  ldr.w r2, [r0, #0]
  ldr.w r3, [r0, #20]
  ldr.w r4, [r0, #36]
  ldr.w r5, [r1, #0]
  ldr.w r6, [r1, #20]
  ldr.w r7, [r1, #36]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #0]
  str.w r8, [r0, #20]
  str.w r10, [r0, #36]
  str.w lr, [r1, #0]
  str.w r9, [r1, #20]
  str.w r11, [r1, #36]
  ldr.w r2, [r0, #12]
  ldr.w r3, [r0, #24]
  ldr.w r4, [r0, #40]
  ldr.w r5, [r1, #12]
  ldr.w r6, [r1, #24]
  ldr.w r7, [r1, #40]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #12]
  str.w r8, [r0, #24]
  str.w r10, [r0, #40]
  str.w lr, [r1, #12]
  str.w r9, [r1, #24]
  str.w r11, [r1, #40]
  ldr.w r2, [r0, #8]
  ldr.w r3, [r0, #28]
  ldr.w r4, [r0, #44]
  ldr.w r5, [r1, #8]
  ldr.w r6, [r1, #28]
  ldr.w r7, [r1, #44]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #8]
  str.w r8, [r0, #28]
  str.w r10, [r0, #44]
  str.w lr, [r1, #8]
  str.w r9, [r1, #28]
  str.w r11, [r1, #44]
  ldr.w r2, [r0, #12]
  ldr.w r3, [r0, #16]
  ldr.w r4, [r0, #32]
  ldr.w r5, [r1, #12]
  ldr.w r6, [r1, #16]
  ldr.w r7, [r1, #32]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #12]
  str.w r8, [r0, #16]
  str.w r10, [r0, #32]
  str.w lr, [r1, #12]
  str.w r9, [r1, #16]
  str.w r11, [r1, #32]
  ldr.w r2, [r0, #8]
  ldr.w r3, [r0, #20]
  ldr.w r4, [r0, #36]
  ldr.w r5, [r1, #8]
  ldr.w r6, [r1, #20]
  ldr.w r7, [r1, #36]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #8]
  str.w r8, [r0, #20]
  str.w r10, [r0, #36]
  str.w lr, [r1, #8]
  str.w r9, [r1, #20]
  str.w r11, [r1, #36]
  ldr.w r2, [r0, #4]
  ldr.w r3, [r0, #24]
  ldr.w r4, [r0, #40]
  ldr.w r5, [r1, #4]
  ldr.w r6, [r1, #24]
  ldr.w r7, [r1, #40]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #4]
  str.w r8, [r0, #24]
  str.w r10, [r0, #40]
  str.w lr, [r1, #4]
  str.w r9, [r1, #24]
  str.w r11, [r1, #40]
  ldr.w r2, [r0, #0]
  ldr.w r3, [r0, #28]
  ldr.w r4, [r0, #44]
  ldr.w r5, [r1, #0]
  ldr.w r6, [r1, #28]
  ldr.w r7, [r1, #44]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #0]
  str.w r8, [r0, #28]
  str.w r10, [r0, #44]
  str.w lr, [r1, #0]
  str.w r9, [r1, #28]
  str.w r11, [r1, #44]
  ldr.w r2, [r0, #12]
  ldr.w r3, [r0, #16]
  ldr.w r4, [r0, #32]
  ldr.w r5, [r1, #12]
  ldr.w r6, [r1, #16]
  ldr.w r7, [r1, #32]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #12]
  str.w r8, [r0, #16]
  str.w r10, [r0, #32]
  str.w lr, [r1, #12]
  str.w r9, [r1, #16]
  str.w r11, [r1, #32]
  ldr.w r2, [r0, #8]
  ldr.w r3, [r0, #20]
  ldr.w r4, [r0, #36]
  ldr.w r5, [r1, #8]
  ldr.w r6, [r1, #20]
  ldr.w r7, [r1, #36]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  movw.w r2, 0x790c
  movt.w r2, 0x9e37
  orr.w r2, r2, #12
  eor.w r12, r12, r2
  str.w r12, [r0, #8]
  str.w r8, [r0, #20]
  str.w r10, [r0, #36]
  str.w lr, [r1, #8]
  str.w r9, [r1, #20]
  str.w r11, [r1, #36]
  ldr.w r2, [r0, #4]
  ldr.w r3, [r0, #24]
  ldr.w r4, [r0, #40]
  ldr.w r5, [r1, #4]
  ldr.w r6, [r1, #24]
  ldr.w r7, [r1, #40]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #4]
  str.w r8, [r0, #24]
  str.w r10, [r0, #40]
  str.w lr, [r1, #4]
  str.w r9, [r1, #24]
  str.w r11, [r1, #40]
  ldr.w r2, [r0, #0]
  ldr.w r3, [r0, #28]
  ldr.w r4, [r0, #44]
  ldr.w r5, [r1, #0]
  ldr.w r6, [r1, #28]
  ldr.w r7, [r1, #44]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #0]
  str.w r8, [r0, #28]
  str.w r10, [r0, #44]
  str.w lr, [r1, #0]
  str.w r9, [r1, #28]
  str.w r11, [r1, #44]
  ldr.w r2, [r0, #8]
  ldr.w r3, [r0, #16]
  ldr.w r4, [r0, #32]
  ldr.w r5, [r1, #8]
  ldr.w r6, [r1, #16]
  ldr.w r7, [r1, #32]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #8]
  str.w r8, [r0, #16]
  str.w r10, [r0, #32]
  str.w lr, [r1, #8]
  str.w r9, [r1, #16]
  str.w r11, [r1, #32]
  ldr.w r2, [r0, #12]
  ldr.w r3, [r0, #20]
  ldr.w r4, [r0, #36]
  ldr.w r5, [r1, #12]
  ldr.w r6, [r1, #20]
  ldr.w r7, [r1, #36]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #12]
  str.w r8, [r0, #20]
  str.w r10, [r0, #36]
  str.w lr, [r1, #12]
  str.w r9, [r1, #20]
  str.w r11, [r1, #36]
  ldr.w r2, [r0, #0]
  ldr.w r3, [r0, #24]
  ldr.w r4, [r0, #40]
  ldr.w r5, [r1, #0]
  ldr.w r6, [r1, #24]
  ldr.w r7, [r1, #40]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #0]
  str.w r8, [r0, #24]
  str.w r10, [r0, #40]
  str.w lr, [r1, #0]
  str.w r9, [r1, #24]
  str.w r11, [r1, #40]
  ldr.w r2, [r0, #4]
  ldr.w r3, [r0, #28]
  ldr.w r4, [r0, #44]
  ldr.w r5, [r1, #4]
  ldr.w r6, [r1, #28]
  ldr.w r7, [r1, #44]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #4]
  str.w r8, [r0, #28]
  str.w r10, [r0, #44]
  str.w lr, [r1, #4]
  str.w r9, [r1, #28]
  str.w r11, [r1, #44]
  ldr.w r2, [r0, #8]
  ldr.w r3, [r0, #16]
  ldr.w r4, [r0, #32]
  ldr.w r5, [r1, #8]
  ldr.w r6, [r1, #16]
  ldr.w r7, [r1, #32]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #8]
  str.w r8, [r0, #16]
  str.w r10, [r0, #32]
  str.w lr, [r1, #8]
  str.w r9, [r1, #16]
  str.w r11, [r1, #32]
  ldr.w r2, [r0, #12]
  ldr.w r3, [r0, #20]
  ldr.w r4, [r0, #36]
  ldr.w r5, [r1, #12]
  ldr.w r6, [r1, #20]
  ldr.w r7, [r1, #36]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #12]
  str.w r8, [r0, #20]
  str.w r10, [r0, #36]
  str.w lr, [r1, #12]
  str.w r9, [r1, #20]
  str.w r11, [r1, #36]
  ldr.w r2, [r0, #0]
  ldr.w r3, [r0, #24]
  ldr.w r4, [r0, #40]
  ldr.w r5, [r1, #0]
  ldr.w r6, [r1, #24]
  ldr.w r7, [r1, #40]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #0]
  str.w r8, [r0, #24]
  str.w r10, [r0, #40]
  str.w lr, [r1, #0]
  str.w r9, [r1, #24]
  str.w r11, [r1, #40]
  ldr.w r2, [r0, #4]
  ldr.w r3, [r0, #28]
  ldr.w r4, [r0, #44]
  ldr.w r5, [r1, #4]
  ldr.w r6, [r1, #28]
  ldr.w r7, [r1, #44]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #4]
  str.w r8, [r0, #28]
  str.w r10, [r0, #44]
  str.w lr, [r1, #4]
  str.w r9, [r1, #28]
  str.w r11, [r1, #44]
  ldr.w r2, [r0, #0]
  ldr.w r3, [r0, #16]
  ldr.w r4, [r0, #32]
  ldr.w r5, [r1, #0]
  ldr.w r6, [r1, #16]
  ldr.w r7, [r1, #32]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #0]
  str.w r8, [r0, #16]
  str.w r10, [r0, #32]
  str.w lr, [r1, #0]
  str.w r9, [r1, #16]
  str.w r11, [r1, #32]
  ldr.w r2, [r0, #4]
  ldr.w r3, [r0, #20]
  ldr.w r4, [r0, #36]
  ldr.w r5, [r1, #4]
  ldr.w r6, [r1, #20]
  ldr.w r7, [r1, #36]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #4]
  str.w r8, [r0, #20]
  str.w r10, [r0, #36]
  str.w lr, [r1, #4]
  str.w r9, [r1, #20]
  str.w r11, [r1, #36]
  ldr.w r2, [r0, #8]
  ldr.w r3, [r0, #24]
  ldr.w r4, [r0, #40]
  ldr.w r5, [r1, #8]
  ldr.w r6, [r1, #24]
  ldr.w r7, [r1, #40]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #8]
  str.w r8, [r0, #24]
  str.w r10, [r0, #40]
  str.w lr, [r1, #8]
  str.w r9, [r1, #24]
  str.w r11, [r1, #40]
  ldr.w r2, [r0, #12]
  ldr.w r3, [r0, #28]
  ldr.w r4, [r0, #44]
  ldr.w r5, [r1, #12]
  ldr.w r6, [r1, #28]
  ldr.w r7, [r1, #44]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #12]
  str.w r8, [r0, #28]
  str.w r10, [r0, #44]
  str.w lr, [r1, #12]
  str.w r9, [r1, #28]
  str.w r11, [r1, #44]
  ldr.w r2, [r0, #0]
  ldr.w r3, [r0, #16]
  ldr.w r4, [r0, #32]
  ldr.w r5, [r1, #0]
  ldr.w r6, [r1, #16]
  ldr.w r7, [r1, #32]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #0]
  str.w r8, [r0, #16]
  str.w r10, [r0, #32]
  str.w lr, [r1, #0]
  str.w r9, [r1, #16]
  str.w r11, [r1, #32]
  ldr.w r2, [r0, #4]
  ldr.w r3, [r0, #20]
  ldr.w r4, [r0, #36]
  ldr.w r5, [r1, #4]
  ldr.w r6, [r1, #20]
  ldr.w r7, [r1, #36]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  movw.w r2, 0x7908
  movt.w r2, 0x9e37
  orr.w r2, r2, #8
  eor.w r12, r12, r2
  str.w r12, [r0, #4]
  str.w r8, [r0, #20]
  str.w r10, [r0, #36]
  str.w lr, [r1, #4]
  str.w r9, [r1, #20]
  str.w r11, [r1, #36]
  ldr.w r2, [r0, #8]
  ldr.w r3, [r0, #24]
  ldr.w r4, [r0, #40]
  ldr.w r5, [r1, #8]
  ldr.w r6, [r1, #24]
  ldr.w r7, [r1, #40]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #8]
  str.w r8, [r0, #24]
  str.w r10, [r0, #40]
  str.w lr, [r1, #8]
  str.w r9, [r1, #24]
  str.w r11, [r1, #40]
  ldr.w r2, [r0, #12]
  ldr.w r3, [r0, #28]
  ldr.w r4, [r0, #44]
  ldr.w r5, [r1, #12]
  ldr.w r6, [r1, #28]
  ldr.w r7, [r1, #44]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #12]
  str.w r8, [r0, #28]
  str.w r10, [r0, #44]
  str.w lr, [r1, #12]
  str.w r9, [r1, #28]
  str.w r11, [r1, #44]
  ldr.w r2, [r0, #4]
  ldr.w r3, [r0, #16]
  ldr.w r4, [r0, #32]
  ldr.w r5, [r1, #4]
  ldr.w r6, [r1, #16]
  ldr.w r7, [r1, #32]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #4]
  str.w r8, [r0, #16]
  str.w r10, [r0, #32]
  str.w lr, [r1, #4]
  str.w r9, [r1, #16]
  str.w r11, [r1, #32]
  ldr.w r2, [r0, #0]
  ldr.w r3, [r0, #20]
  ldr.w r4, [r0, #36]
  ldr.w r5, [r1, #0]
  ldr.w r6, [r1, #20]
  ldr.w r7, [r1, #36]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #0]
  str.w r8, [r0, #20]
  str.w r10, [r0, #36]
  str.w lr, [r1, #0]
  str.w r9, [r1, #20]
  str.w r11, [r1, #36]
  ldr.w r2, [r0, #12]
  ldr.w r3, [r0, #24]
  ldr.w r4, [r0, #40]
  ldr.w r5, [r1, #12]
  ldr.w r6, [r1, #24]
  ldr.w r7, [r1, #40]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #12]
  str.w r8, [r0, #24]
  str.w r10, [r0, #40]
  str.w lr, [r1, #12]
  str.w r9, [r1, #24]
  str.w r11, [r1, #40]
  ldr.w r2, [r0, #8]
  ldr.w r3, [r0, #28]
  ldr.w r4, [r0, #44]
  ldr.w r5, [r1, #8]
  ldr.w r6, [r1, #28]
  ldr.w r7, [r1, #44]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #8]
  str.w r8, [r0, #28]
  str.w r10, [r0, #44]
  str.w lr, [r1, #8]
  str.w r9, [r1, #28]
  str.w r11, [r1, #44]
  ldr.w r2, [r0, #4]
  ldr.w r3, [r0, #16]
  ldr.w r4, [r0, #32]
  ldr.w r5, [r1, #4]
  ldr.w r6, [r1, #16]
  ldr.w r7, [r1, #32]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #4]
  str.w r8, [r0, #16]
  str.w r10, [r0, #32]
  str.w lr, [r1, #4]
  str.w r9, [r1, #16]
  str.w r11, [r1, #32]
  ldr.w r2, [r0, #0]
  ldr.w r3, [r0, #20]
  ldr.w r4, [r0, #36]
  ldr.w r5, [r1, #0]
  ldr.w r6, [r1, #20]
  ldr.w r7, [r1, #36]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #0]
  str.w r8, [r0, #20]
  str.w r10, [r0, #36]
  str.w lr, [r1, #0]
  str.w r9, [r1, #20]
  str.w r11, [r1, #36]
  ldr.w r2, [r0, #12]
  ldr.w r3, [r0, #24]
  ldr.w r4, [r0, #40]
  ldr.w r5, [r1, #12]
  ldr.w r6, [r1, #24]
  ldr.w r7, [r1, #40]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #12]
  str.w r8, [r0, #24]
  str.w r10, [r0, #40]
  str.w lr, [r1, #12]
  str.w r9, [r1, #24]
  str.w r11, [r1, #40]
  ldr.w r2, [r0, #8]
  ldr.w r3, [r0, #28]
  ldr.w r4, [r0, #44]
  ldr.w r5, [r1, #8]
  ldr.w r6, [r1, #28]
  ldr.w r7, [r1, #44]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #8]
  str.w r8, [r0, #28]
  str.w r10, [r0, #44]
  str.w lr, [r1, #8]
  str.w r9, [r1, #28]
  str.w r11, [r1, #44]
  ldr.w r2, [r0, #12]
  ldr.w r3, [r0, #16]
  ldr.w r4, [r0, #32]
  ldr.w r5, [r1, #12]
  ldr.w r6, [r1, #16]
  ldr.w r7, [r1, #32]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #12]
  str.w r8, [r0, #16]
  str.w r10, [r0, #32]
  str.w lr, [r1, #12]
  str.w r9, [r1, #16]
  str.w r11, [r1, #32]
  ldr.w r2, [r0, #8]
  ldr.w r3, [r0, #20]
  ldr.w r4, [r0, #36]
  ldr.w r5, [r1, #8]
  ldr.w r6, [r1, #20]
  ldr.w r7, [r1, #36]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #8]
  str.w r8, [r0, #20]
  str.w r10, [r0, #36]
  str.w lr, [r1, #8]
  str.w r9, [r1, #20]
  str.w r11, [r1, #36]
  ldr.w r2, [r0, #4]
  ldr.w r3, [r0, #24]
  ldr.w r4, [r0, #40]
  ldr.w r5, [r1, #4]
  ldr.w r6, [r1, #24]
  ldr.w r7, [r1, #40]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #4]
  str.w r8, [r0, #24]
  str.w r10, [r0, #40]
  str.w lr, [r1, #4]
  str.w r9, [r1, #24]
  str.w r11, [r1, #40]
  ldr.w r2, [r0, #0]
  ldr.w r3, [r0, #28]
  ldr.w r4, [r0, #44]
  ldr.w r5, [r1, #0]
  ldr.w r6, [r1, #28]
  ldr.w r7, [r1, #44]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #0]
  str.w r8, [r0, #28]
  str.w r10, [r0, #44]
  str.w lr, [r1, #0]
  str.w r9, [r1, #28]
  str.w r11, [r1, #44]
  ldr.w r2, [r0, #12]
  ldr.w r3, [r0, #16]
  ldr.w r4, [r0, #32]
  ldr.w r5, [r1, #12]
  ldr.w r6, [r1, #16]
  ldr.w r7, [r1, #32]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #12]
  str.w r8, [r0, #16]
  str.w r10, [r0, #32]
  str.w lr, [r1, #12]
  str.w r9, [r1, #16]
  str.w r11, [r1, #32]
  ldr.w r2, [r0, #8]
  ldr.w r3, [r0, #20]
  ldr.w r4, [r0, #36]
  ldr.w r5, [r1, #8]
  ldr.w r6, [r1, #20]
  ldr.w r7, [r1, #36]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  movw.w r2, 0x7904
  movt.w r2, 0x9e37
  orr.w r2, r2, #4
  eor.w r12, r12, r2
  str.w r12, [r0, #8]
  str.w r8, [r0, #20]
  str.w r10, [r0, #36]
  str.w lr, [r1, #8]
  str.w r9, [r1, #20]
  str.w r11, [r1, #36]
  ldr.w r2, [r0, #4]
  ldr.w r3, [r0, #24]
  ldr.w r4, [r0, #40]
  ldr.w r5, [r1, #4]
  ldr.w r6, [r1, #24]
  ldr.w r7, [r1, #40]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #4]
  str.w r8, [r0, #24]
  str.w r10, [r0, #40]
  str.w lr, [r1, #4]
  str.w r9, [r1, #24]
  str.w r11, [r1, #40]
  ldr.w r2, [r0, #0]
  ldr.w r3, [r0, #28]
  ldr.w r4, [r0, #44]
  ldr.w r5, [r1, #0]
  ldr.w r6, [r1, #28]
  ldr.w r7, [r1, #44]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #0]
  str.w r8, [r0, #28]
  str.w r10, [r0, #44]
  str.w lr, [r1, #0]
  str.w r9, [r1, #28]
  str.w r11, [r1, #44]
  ldr.w r2, [r0, #8]
  ldr.w r3, [r0, #16]
  ldr.w r4, [r0, #32]
  ldr.w r5, [r1, #8]
  ldr.w r6, [r1, #16]
  ldr.w r7, [r1, #32]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #8]
  str.w r8, [r0, #16]
  str.w r10, [r0, #32]
  str.w lr, [r1, #8]
  str.w r9, [r1, #16]
  str.w r11, [r1, #32]
  ldr.w r2, [r0, #12]
  ldr.w r3, [r0, #20]
  ldr.w r4, [r0, #36]
  ldr.w r5, [r1, #12]
  ldr.w r6, [r1, #20]
  ldr.w r7, [r1, #36]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #12]
  str.w r8, [r0, #20]
  str.w r10, [r0, #36]
  str.w lr, [r1, #12]
  str.w r9, [r1, #20]
  str.w r11, [r1, #36]
  ldr.w r2, [r0, #0]
  ldr.w r3, [r0, #24]
  ldr.w r4, [r0, #40]
  ldr.w r5, [r1, #0]
  ldr.w r6, [r1, #24]
  ldr.w r7, [r1, #40]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #0]
  str.w r8, [r0, #24]
  str.w r10, [r0, #40]
  str.w lr, [r1, #0]
  str.w r9, [r1, #24]
  str.w r11, [r1, #40]
  ldr.w r2, [r0, #4]
  ldr.w r3, [r0, #28]
  ldr.w r4, [r0, #44]
  ldr.w r5, [r1, #4]
  ldr.w r6, [r1, #28]
  ldr.w r7, [r1, #44]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #4]
  str.w r8, [r0, #28]
  str.w r10, [r0, #44]
  str.w lr, [r1, #4]
  str.w r9, [r1, #28]
  str.w r11, [r1, #44]
  ldr.w r2, [r0, #8]
  ldr.w r3, [r0, #16]
  ldr.w r4, [r0, #32]
  ldr.w r5, [r1, #8]
  ldr.w r6, [r1, #16]
  ldr.w r7, [r1, #32]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #8]
  str.w r8, [r0, #16]
  str.w r10, [r0, #32]
  str.w lr, [r1, #8]
  str.w r9, [r1, #16]
  str.w r11, [r1, #32]
  ldr.w r2, [r0, #12]
  ldr.w r3, [r0, #20]
  ldr.w r4, [r0, #36]
  ldr.w r5, [r1, #12]
  ldr.w r6, [r1, #20]
  ldr.w r7, [r1, #36]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #12]
  str.w r8, [r0, #20]
  str.w r10, [r0, #36]
  str.w lr, [r1, #12]
  str.w r9, [r1, #20]
  str.w r11, [r1, #36]
  ldr.w r2, [r0, #0]
  ldr.w r3, [r0, #24]
  ldr.w r4, [r0, #40]
  ldr.w r5, [r1, #0]
  ldr.w r6, [r1, #24]
  ldr.w r7, [r1, #40]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #0]
  str.w r8, [r0, #24]
  str.w r10, [r0, #40]
  str.w lr, [r1, #0]
  str.w r9, [r1, #24]
  str.w r11, [r1, #40]
  ldr.w r2, [r0, #4]
  ldr.w r3, [r0, #28]
  ldr.w r4, [r0, #44]
  ldr.w r5, [r1, #4]
  ldr.w r6, [r1, #28]
  ldr.w r7, [r1, #44]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #4]
  str.w r8, [r0, #28]
  str.w r10, [r0, #44]
  str.w lr, [r1, #4]
  str.w r9, [r1, #28]
  str.w r11, [r1, #44]
  ldr.w r2, [r0, #0]
  ldr.w r3, [r0, #16]
  ldr.w r4, [r0, #32]
  ldr.w r5, [r1, #0]
  ldr.w r6, [r1, #16]
  ldr.w r7, [r1, #32]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #0]
  str.w r8, [r0, #16]
  str.w r10, [r0, #32]
  str.w lr, [r1, #0]
  str.w r9, [r1, #16]
  str.w r11, [r1, #32]
  ldr.w r2, [r0, #4]
  ldr.w r3, [r0, #20]
  ldr.w r4, [r0, #36]
  ldr.w r5, [r1, #4]
  ldr.w r6, [r1, #20]
  ldr.w r7, [r1, #36]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #4]
  str.w r8, [r0, #20]
  str.w r10, [r0, #36]
  str.w lr, [r1, #4]
  str.w r9, [r1, #20]
  str.w r11, [r1, #36]
  ldr.w r2, [r0, #8]
  ldr.w r3, [r0, #24]
  ldr.w r4, [r0, #40]
  ldr.w r5, [r1, #8]
  ldr.w r6, [r1, #24]
  ldr.w r7, [r1, #40]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #8]
  str.w r8, [r0, #24]
  str.w r10, [r0, #40]
  str.w lr, [r1, #8]
  str.w r9, [r1, #24]
  str.w r11, [r1, #40]
  ldr.w r2, [r0, #12]
  ldr.w r3, [r0, #28]
  ldr.w r4, [r0, #44]
  ldr.w r5, [r1, #12]
  ldr.w r6, [r1, #28]
  ldr.w r7, [r1, #44]
  ror.w r2, #8
  ror.w r5, #8
  and.w r8, r2, r4
  orr.w r9, r2, r7
  orr.w r10, r5, r4
  and.w r11, r5, r7
  eor.w r8, r8, r9
  eor.w r9, r10, r11
  eor.w r8, r2, r8, lsl #1
  eor.w r9, r5, r9, lsl #1
  eor.w r8, r8, r3, ror #23
  eor.w r9, r9, r6, ror #23
  and.w r10, r4, r3, ror #23
  orn.w r11, r4, r6, ror #23
  and.w r12, r7, r3, ror #23
  orn.w lr, r7, r6, ror #23
  eor.w r10, r10, r11
  eor.w r11, r12, lr
  eor.w r10, r2, r10, lsl #2
  eor.w r11, r5, r11, lsl #2
  eor.w r10, r10, r4, lsl #1
  eor.w r11, r11, r7, lsl #1
  and.w r12, r2, r3, ror #23
  orn.w r2, r2, r6, ror #23
  and.w lr, r5, r3, ror #23
  orn.w r5, r5, r6, ror #23
  eor.w r12, r12, r2
  eor.w lr, lr, r5
  eor.w r12, r4, r12, lsl #3
  eor.w lr, r7, lr, lsl #3
  eor.w r12, r12, r3, ror #23
  eor.w lr, lr, r6, ror #23
  str.w r12, [r0, #12]
  str.w r8, [r0, #28]
  str.w r10, [r0, #44]
  str.w lr, [r1, #12]
  str.w r9, [r1, #28]
  str.w r11, [r1, #44]
  pop.w {r2-r12, pc}
