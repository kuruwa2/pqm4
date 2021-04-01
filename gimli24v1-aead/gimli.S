.p2align 2,,3
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
  ror.w r1, #8
  ror.w r2, #8
  ror.w r3, #8
  ror.w r4, #8
  and.w lr, r9, r5, ror #23
  eor.w lr, r1, lr, lsl #2
  orr.w r0, r1, r9
  eor.w r0, r1, r0, lsl #1
  and.w r1, r1, r5, ror #23
  eor.w r1, r9, r1, lsl #3
  eor.w r1, r1, r5, ror #23
  eor.w r9, lr, r9, lsl #1
  eor.w r5, r0, r5, ror #23
  and.w lr, r10, r6, ror #23
  eor.w lr, r2, lr, lsl #2
  orr.w r0, r2, r10
  eor.w r0, r2, r0, lsl #1
  and.w r2, r2, r6, ror #23
  eor.w r2, r10, r2, lsl #3
  eor.w r2, r2, r6, ror #23
  eor.w r10, lr, r10, lsl #1
  eor.w r6, r0, r6, ror #23
  and.w lr, r11, r7, ror #23
  eor.w lr, r3, lr, lsl #2
  orr.w r0, r3, r11
  eor.w r0, r3, r0, lsl #1
  and.w r3, r3, r7, ror #23
  eor.w r3, r11, r3, lsl #3
  eor.w r3, r3, r7, ror #23
  eor.w r11, lr, r11, lsl #1
  eor.w r7, r0, r7, ror #23
  and.w lr, r12, r8, ror #23
  eor.w lr, r4, lr, lsl #2
  orr.w r0, r4, r12
  eor.w r0, r4, r0, lsl #1
  and.w r4, r4, r8, ror #23
  eor.w r4, r12, r4, lsl #3
  eor.w r4, r4, r8, ror #23
  eor.w r12, lr, r12, lsl #1
  eor.w r8, r0, r8, ror #23
  vmov.w r0, s2
  orr.w r0, r0, #24
  eor.w r2, r2, r0
  ror.w r2, #8
  ror.w r1, #8
  ror.w r4, #8
  ror.w r3, #8
  and.w lr, r9, r5, ror #23
  eor.w lr, r2, lr, lsl #2
  orr.w r0, r2, r9
  eor.w r0, r2, r0, lsl #1
  and.w r2, r2, r5, ror #23
  eor.w r2, r9, r2, lsl #3
  eor.w r2, r2, r5, ror #23
  eor.w r9, lr, r9, lsl #1
  eor.w r5, r0, r5, ror #23
  and.w lr, r10, r6, ror #23
  eor.w lr, r1, lr, lsl #2
  orr.w r0, r1, r10
  eor.w r0, r1, r0, lsl #1
  and.w r1, r1, r6, ror #23
  eor.w r1, r10, r1, lsl #3
  eor.w r1, r1, r6, ror #23
  eor.w r10, lr, r10, lsl #1
  eor.w r6, r0, r6, ror #23
  and.w lr, r11, r7, ror #23
  eor.w lr, r4, lr, lsl #2
  orr.w r0, r4, r11
  eor.w r0, r4, r0, lsl #1
  and.w r4, r4, r7, ror #23
  eor.w r4, r11, r4, lsl #3
  eor.w r4, r4, r7, ror #23
  eor.w r11, lr, r11, lsl #1
  eor.w r7, r0, r7, ror #23
  and.w lr, r12, r8, ror #23
  eor.w lr, r3, lr, lsl #2
  orr.w r0, r3, r12
  eor.w r0, r3, r0, lsl #1
  and.w r3, r3, r8, ror #23
  eor.w r3, r12, r3, lsl #3
  eor.w r3, r3, r8, ror #23
  eor.w r12, lr, r12, lsl #1
  eor.w r8, r0, r8, ror #23
  ror.w r2, #8
  ror.w r1, #8
  ror.w r4, #8
  ror.w r3, #8
  and.w lr, r9, r5, ror #23
  eor.w lr, r2, lr, lsl #2
  orr.w r0, r2, r9
  eor.w r0, r2, r0, lsl #1
  and.w r2, r2, r5, ror #23
  eor.w r2, r9, r2, lsl #3
  eor.w r2, r2, r5, ror #23
  eor.w r9, lr, r9, lsl #1
  eor.w r5, r0, r5, ror #23
  and.w lr, r10, r6, ror #23
  eor.w lr, r1, lr, lsl #2
  orr.w r0, r1, r10
  eor.w r0, r1, r0, lsl #1
  and.w r1, r1, r6, ror #23
  eor.w r1, r10, r1, lsl #3
  eor.w r1, r1, r6, ror #23
  eor.w r10, lr, r10, lsl #1
  eor.w r6, r0, r6, ror #23
  and.w lr, r11, r7, ror #23
  eor.w lr, r4, lr, lsl #2
  orr.w r0, r4, r11
  eor.w r0, r4, r0, lsl #1
  and.w r4, r4, r7, ror #23
  eor.w r4, r11, r4, lsl #3
  eor.w r4, r4, r7, ror #23
  eor.w r11, lr, r11, lsl #1
  eor.w r7, r0, r7, ror #23
  and.w lr, r12, r8, ror #23
  eor.w lr, r3, lr, lsl #2
  orr.w r0, r3, r12
  eor.w r0, r3, r0, lsl #1
  and.w r3, r3, r8, ror #23
  eor.w r3, r12, r3, lsl #3
  eor.w r3, r3, r8, ror #23
  eor.w r12, lr, r12, lsl #1
  eor.w r8, r0, r8, ror #23
  ror.w r4, #8
  ror.w r3, #8
  ror.w r2, #8
  ror.w r1, #8
  and.w lr, r9, r5, ror #23
  eor.w lr, r4, lr, lsl #2
  orr.w r0, r4, r9
  eor.w r0, r4, r0, lsl #1
  and.w r4, r4, r5, ror #23
  eor.w r4, r9, r4, lsl #3
  eor.w r4, r4, r5, ror #23
  eor.w r9, lr, r9, lsl #1
  eor.w r5, r0, r5, ror #23
  and.w lr, r10, r6, ror #23
  eor.w lr, r3, lr, lsl #2
  orr.w r0, r3, r10
  eor.w r0, r3, r0, lsl #1
  and.w r3, r3, r6, ror #23
  eor.w r3, r10, r3, lsl #3
  eor.w r3, r3, r6, ror #23
  eor.w r10, lr, r10, lsl #1
  eor.w r6, r0, r6, ror #23
  and.w lr, r11, r7, ror #23
  eor.w lr, r2, lr, lsl #2
  orr.w r0, r2, r11
  eor.w r0, r2, r0, lsl #1
  and.w r2, r2, r7, ror #23
  eor.w r2, r11, r2, lsl #3
  eor.w r2, r2, r7, ror #23
  eor.w r11, lr, r11, lsl #1
  eor.w r7, r0, r7, ror #23
  and.w lr, r12, r8, ror #23
  eor.w lr, r1, lr, lsl #2
  orr.w r0, r1, r12
  eor.w r0, r1, r0, lsl #1
  and.w r1, r1, r8, ror #23
  eor.w r1, r12, r1, lsl #3
  eor.w r1, r1, r8, ror #23
  eor.w r12, lr, r12, lsl #1
  eor.w r8, r0, r8, ror #23
  ror.w r4, #8
  ror.w r3, #8
  ror.w r2, #8
  ror.w r1, #8
  and.w lr, r9, r5, ror #23
  eor.w lr, r4, lr, lsl #2
  orr.w r0, r4, r9
  eor.w r0, r4, r0, lsl #1
  and.w r4, r4, r5, ror #23
  eor.w r4, r9, r4, lsl #3
  eor.w r4, r4, r5, ror #23
  eor.w r9, lr, r9, lsl #1
  eor.w r5, r0, r5, ror #23
  and.w lr, r10, r6, ror #23
  eor.w lr, r3, lr, lsl #2
  orr.w r0, r3, r10
  eor.w r0, r3, r0, lsl #1
  and.w r3, r3, r6, ror #23
  eor.w r3, r10, r3, lsl #3
  eor.w r3, r3, r6, ror #23
  eor.w r10, lr, r10, lsl #1
  eor.w r6, r0, r6, ror #23
  and.w lr, r11, r7, ror #23
  eor.w lr, r2, lr, lsl #2
  orr.w r0, r2, r11
  eor.w r0, r2, r0, lsl #1
  and.w r2, r2, r7, ror #23
  eor.w r2, r11, r2, lsl #3
  eor.w r2, r2, r7, ror #23
  eor.w r11, lr, r11, lsl #1
  eor.w r7, r0, r7, ror #23
  and.w lr, r12, r8, ror #23
  eor.w lr, r1, lr, lsl #2
  orr.w r0, r1, r12
  eor.w r0, r1, r0, lsl #1
  and.w r1, r1, r8, ror #23
  eor.w r1, r12, r1, lsl #3
  eor.w r1, r1, r8, ror #23
  eor.w r12, lr, r12, lsl #1
  eor.w r8, r0, r8, ror #23
  vmov.w r0, s2
  orr.w r0, r0, #20
  eor.w r3, r3, r0
  ror.w r3, #8
  ror.w r4, #8
  ror.w r1, #8
  ror.w r2, #8
  and.w lr, r9, r5, ror #23
  eor.w lr, r3, lr, lsl #2
  orr.w r0, r3, r9
  eor.w r0, r3, r0, lsl #1
  and.w r3, r3, r5, ror #23
  eor.w r3, r9, r3, lsl #3
  eor.w r3, r3, r5, ror #23
  eor.w r9, lr, r9, lsl #1
  eor.w r5, r0, r5, ror #23
  and.w lr, r10, r6, ror #23
  eor.w lr, r4, lr, lsl #2
  orr.w r0, r4, r10
  eor.w r0, r4, r0, lsl #1
  and.w r4, r4, r6, ror #23
  eor.w r4, r10, r4, lsl #3
  eor.w r4, r4, r6, ror #23
  eor.w r10, lr, r10, lsl #1
  eor.w r6, r0, r6, ror #23
  and.w lr, r11, r7, ror #23
  eor.w lr, r1, lr, lsl #2
  orr.w r0, r1, r11
  eor.w r0, r1, r0, lsl #1
  and.w r1, r1, r7, ror #23
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r7, ror #23
  eor.w r11, lr, r11, lsl #1
  eor.w r7, r0, r7, ror #23
  and.w lr, r12, r8, ror #23
  eor.w lr, r2, lr, lsl #2
  orr.w r0, r2, r12
  eor.w r0, r2, r0, lsl #1
  and.w r2, r2, r8, ror #23
  eor.w r2, r12, r2, lsl #3
  eor.w r2, r2, r8, ror #23
  eor.w r12, lr, r12, lsl #1
  eor.w r8, r0, r8, ror #23
  ror.w r3, #8
  ror.w r4, #8
  ror.w r1, #8
  ror.w r2, #8
  and.w lr, r9, r5, ror #23
  eor.w lr, r3, lr, lsl #2
  orr.w r0, r3, r9
  eor.w r0, r3, r0, lsl #1
  and.w r3, r3, r5, ror #23
  eor.w r3, r9, r3, lsl #3
  eor.w r3, r3, r5, ror #23
  eor.w r9, lr, r9, lsl #1
  eor.w r5, r0, r5, ror #23
  and.w lr, r10, r6, ror #23
  eor.w lr, r4, lr, lsl #2
  orr.w r0, r4, r10
  eor.w r0, r4, r0, lsl #1
  and.w r4, r4, r6, ror #23
  eor.w r4, r10, r4, lsl #3
  eor.w r4, r4, r6, ror #23
  eor.w r10, lr, r10, lsl #1
  eor.w r6, r0, r6, ror #23
  and.w lr, r11, r7, ror #23
  eor.w lr, r1, lr, lsl #2
  orr.w r0, r1, r11
  eor.w r0, r1, r0, lsl #1
  and.w r1, r1, r7, ror #23
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r7, ror #23
  eor.w r11, lr, r11, lsl #1
  eor.w r7, r0, r7, ror #23
  and.w lr, r12, r8, ror #23
  eor.w lr, r2, lr, lsl #2
  orr.w r0, r2, r12
  eor.w r0, r2, r0, lsl #1
  and.w r2, r2, r8, ror #23
  eor.w r2, r12, r2, lsl #3
  eor.w r2, r2, r8, ror #23
  eor.w r12, lr, r12, lsl #1
  eor.w r8, r0, r8, ror #23
  ror.w r1, #8
  ror.w r2, #8
  ror.w r3, #8
  ror.w r4, #8
  and.w lr, r9, r5, ror #23
  eor.w lr, r1, lr, lsl #2
  orr.w r0, r1, r9
  eor.w r0, r1, r0, lsl #1
  and.w r1, r1, r5, ror #23
  eor.w r1, r9, r1, lsl #3
  eor.w r1, r1, r5, ror #23
  eor.w r9, lr, r9, lsl #1
  eor.w r5, r0, r5, ror #23
  and.w lr, r10, r6, ror #23
  eor.w lr, r2, lr, lsl #2
  orr.w r0, r2, r10
  eor.w r0, r2, r0, lsl #1
  and.w r2, r2, r6, ror #23
  eor.w r2, r10, r2, lsl #3
  eor.w r2, r2, r6, ror #23
  eor.w r10, lr, r10, lsl #1
  eor.w r6, r0, r6, ror #23
  and.w lr, r11, r7, ror #23
  eor.w lr, r3, lr, lsl #2
  orr.w r0, r3, r11
  eor.w r0, r3, r0, lsl #1
  and.w r3, r3, r7, ror #23
  eor.w r3, r11, r3, lsl #3
  eor.w r3, r3, r7, ror #23
  eor.w r11, lr, r11, lsl #1
  eor.w r7, r0, r7, ror #23
  and.w lr, r12, r8, ror #23
  eor.w lr, r4, lr, lsl #2
  orr.w r0, r4, r12
  eor.w r0, r4, r0, lsl #1
  and.w r4, r4, r8, ror #23
  eor.w r4, r12, r4, lsl #3
  eor.w r4, r4, r8, ror #23
  eor.w r12, lr, r12, lsl #1
  eor.w r8, r0, r8, ror #23
  ror.w r1, #8
  ror.w r2, #8
  ror.w r3, #8
  ror.w r4, #8
  and.w lr, r9, r5, ror #23
  eor.w lr, r1, lr, lsl #2
  orr.w r0, r1, r9
  eor.w r0, r1, r0, lsl #1
  and.w r1, r1, r5, ror #23
  eor.w r1, r9, r1, lsl #3
  eor.w r1, r1, r5, ror #23
  eor.w r9, lr, r9, lsl #1
  eor.w r5, r0, r5, ror #23
  and.w lr, r10, r6, ror #23
  eor.w lr, r2, lr, lsl #2
  orr.w r0, r2, r10
  eor.w r0, r2, r0, lsl #1
  and.w r2, r2, r6, ror #23
  eor.w r2, r10, r2, lsl #3
  eor.w r2, r2, r6, ror #23
  eor.w r10, lr, r10, lsl #1
  eor.w r6, r0, r6, ror #23
  and.w lr, r11, r7, ror #23
  eor.w lr, r3, lr, lsl #2
  orr.w r0, r3, r11
  eor.w r0, r3, r0, lsl #1
  and.w r3, r3, r7, ror #23
  eor.w r3, r11, r3, lsl #3
  eor.w r3, r3, r7, ror #23
  eor.w r11, lr, r11, lsl #1
  eor.w r7, r0, r7, ror #23
  and.w lr, r12, r8, ror #23
  eor.w lr, r4, lr, lsl #2
  orr.w r0, r4, r12
  eor.w r0, r4, r0, lsl #1
  and.w r4, r4, r8, ror #23
  eor.w r4, r12, r4, lsl #3
  eor.w r4, r4, r8, ror #23
  eor.w r12, lr, r12, lsl #1
  eor.w r8, r0, r8, ror #23
  vmov.w r0, s2
  orr.w r0, r0, #16
  eor.w r2, r2, r0
  ror.w r2, #8
  ror.w r1, #8
  ror.w r4, #8
  ror.w r3, #8
  and.w lr, r9, r5, ror #23
  eor.w lr, r2, lr, lsl #2
  orr.w r0, r2, r9
  eor.w r0, r2, r0, lsl #1
  and.w r2, r2, r5, ror #23
  eor.w r2, r9, r2, lsl #3
  eor.w r2, r2, r5, ror #23
  eor.w r9, lr, r9, lsl #1
  eor.w r5, r0, r5, ror #23
  and.w lr, r10, r6, ror #23
  eor.w lr, r1, lr, lsl #2
  orr.w r0, r1, r10
  eor.w r0, r1, r0, lsl #1
  and.w r1, r1, r6, ror #23
  eor.w r1, r10, r1, lsl #3
  eor.w r1, r1, r6, ror #23
  eor.w r10, lr, r10, lsl #1
  eor.w r6, r0, r6, ror #23
  and.w lr, r11, r7, ror #23
  eor.w lr, r4, lr, lsl #2
  orr.w r0, r4, r11
  eor.w r0, r4, r0, lsl #1
  and.w r4, r4, r7, ror #23
  eor.w r4, r11, r4, lsl #3
  eor.w r4, r4, r7, ror #23
  eor.w r11, lr, r11, lsl #1
  eor.w r7, r0, r7, ror #23
  and.w lr, r12, r8, ror #23
  eor.w lr, r3, lr, lsl #2
  orr.w r0, r3, r12
  eor.w r0, r3, r0, lsl #1
  and.w r3, r3, r8, ror #23
  eor.w r3, r12, r3, lsl #3
  eor.w r3, r3, r8, ror #23
  eor.w r12, lr, r12, lsl #1
  eor.w r8, r0, r8, ror #23
  ror.w r2, #8
  ror.w r1, #8
  ror.w r4, #8
  ror.w r3, #8
  and.w lr, r9, r5, ror #23
  eor.w lr, r2, lr, lsl #2
  orr.w r0, r2, r9
  eor.w r0, r2, r0, lsl #1
  and.w r2, r2, r5, ror #23
  eor.w r2, r9, r2, lsl #3
  eor.w r2, r2, r5, ror #23
  eor.w r9, lr, r9, lsl #1
  eor.w r5, r0, r5, ror #23
  and.w lr, r10, r6, ror #23
  eor.w lr, r1, lr, lsl #2
  orr.w r0, r1, r10
  eor.w r0, r1, r0, lsl #1
  and.w r1, r1, r6, ror #23
  eor.w r1, r10, r1, lsl #3
  eor.w r1, r1, r6, ror #23
  eor.w r10, lr, r10, lsl #1
  eor.w r6, r0, r6, ror #23
  and.w lr, r11, r7, ror #23
  eor.w lr, r4, lr, lsl #2
  orr.w r0, r4, r11
  eor.w r0, r4, r0, lsl #1
  and.w r4, r4, r7, ror #23
  eor.w r4, r11, r4, lsl #3
  eor.w r4, r4, r7, ror #23
  eor.w r11, lr, r11, lsl #1
  eor.w r7, r0, r7, ror #23
  and.w lr, r12, r8, ror #23
  eor.w lr, r3, lr, lsl #2
  orr.w r0, r3, r12
  eor.w r0, r3, r0, lsl #1
  and.w r3, r3, r8, ror #23
  eor.w r3, r12, r3, lsl #3
  eor.w r3, r3, r8, ror #23
  eor.w r12, lr, r12, lsl #1
  eor.w r8, r0, r8, ror #23
  ror.w r4, #8
  ror.w r3, #8
  ror.w r2, #8
  ror.w r1, #8
  and.w lr, r9, r5, ror #23
  eor.w lr, r4, lr, lsl #2
  orr.w r0, r4, r9
  eor.w r0, r4, r0, lsl #1
  and.w r4, r4, r5, ror #23
  eor.w r4, r9, r4, lsl #3
  eor.w r4, r4, r5, ror #23
  eor.w r9, lr, r9, lsl #1
  eor.w r5, r0, r5, ror #23
  and.w lr, r10, r6, ror #23
  eor.w lr, r3, lr, lsl #2
  orr.w r0, r3, r10
  eor.w r0, r3, r0, lsl #1
  and.w r3, r3, r6, ror #23
  eor.w r3, r10, r3, lsl #3
  eor.w r3, r3, r6, ror #23
  eor.w r10, lr, r10, lsl #1
  eor.w r6, r0, r6, ror #23
  and.w lr, r11, r7, ror #23
  eor.w lr, r2, lr, lsl #2
  orr.w r0, r2, r11
  eor.w r0, r2, r0, lsl #1
  and.w r2, r2, r7, ror #23
  eor.w r2, r11, r2, lsl #3
  eor.w r2, r2, r7, ror #23
  eor.w r11, lr, r11, lsl #1
  eor.w r7, r0, r7, ror #23
  and.w lr, r12, r8, ror #23
  eor.w lr, r1, lr, lsl #2
  orr.w r0, r1, r12
  eor.w r0, r1, r0, lsl #1
  and.w r1, r1, r8, ror #23
  eor.w r1, r12, r1, lsl #3
  eor.w r1, r1, r8, ror #23
  eor.w r12, lr, r12, lsl #1
  eor.w r8, r0, r8, ror #23
  ror.w r4, #8
  ror.w r3, #8
  ror.w r2, #8
  ror.w r1, #8
  and.w lr, r9, r5, ror #23
  eor.w lr, r4, lr, lsl #2
  orr.w r0, r4, r9
  eor.w r0, r4, r0, lsl #1
  and.w r4, r4, r5, ror #23
  eor.w r4, r9, r4, lsl #3
  eor.w r4, r4, r5, ror #23
  eor.w r9, lr, r9, lsl #1
  eor.w r5, r0, r5, ror #23
  and.w lr, r10, r6, ror #23
  eor.w lr, r3, lr, lsl #2
  orr.w r0, r3, r10
  eor.w r0, r3, r0, lsl #1
  and.w r3, r3, r6, ror #23
  eor.w r3, r10, r3, lsl #3
  eor.w r3, r3, r6, ror #23
  eor.w r10, lr, r10, lsl #1
  eor.w r6, r0, r6, ror #23
  and.w lr, r11, r7, ror #23
  eor.w lr, r2, lr, lsl #2
  orr.w r0, r2, r11
  eor.w r0, r2, r0, lsl #1
  and.w r2, r2, r7, ror #23
  eor.w r2, r11, r2, lsl #3
  eor.w r2, r2, r7, ror #23
  eor.w r11, lr, r11, lsl #1
  eor.w r7, r0, r7, ror #23
  and.w lr, r12, r8, ror #23
  eor.w lr, r1, lr, lsl #2
  orr.w r0, r1, r12
  eor.w r0, r1, r0, lsl #1
  and.w r1, r1, r8, ror #23
  eor.w r1, r12, r1, lsl #3
  eor.w r1, r1, r8, ror #23
  eor.w r12, lr, r12, lsl #1
  eor.w r8, r0, r8, ror #23
  vmov.w r0, s2
  orr.w r0, r0, #12
  eor.w r3, r3, r0
  ror.w r3, #8
  ror.w r4, #8
  ror.w r1, #8
  ror.w r2, #8
  and.w lr, r9, r5, ror #23
  eor.w lr, r3, lr, lsl #2
  orr.w r0, r3, r9
  eor.w r0, r3, r0, lsl #1
  and.w r3, r3, r5, ror #23
  eor.w r3, r9, r3, lsl #3
  eor.w r3, r3, r5, ror #23
  eor.w r9, lr, r9, lsl #1
  eor.w r5, r0, r5, ror #23
  and.w lr, r10, r6, ror #23
  eor.w lr, r4, lr, lsl #2
  orr.w r0, r4, r10
  eor.w r0, r4, r0, lsl #1
  and.w r4, r4, r6, ror #23
  eor.w r4, r10, r4, lsl #3
  eor.w r4, r4, r6, ror #23
  eor.w r10, lr, r10, lsl #1
  eor.w r6, r0, r6, ror #23
  and.w lr, r11, r7, ror #23
  eor.w lr, r1, lr, lsl #2
  orr.w r0, r1, r11
  eor.w r0, r1, r0, lsl #1
  and.w r1, r1, r7, ror #23
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r7, ror #23
  eor.w r11, lr, r11, lsl #1
  eor.w r7, r0, r7, ror #23
  and.w lr, r12, r8, ror #23
  eor.w lr, r2, lr, lsl #2
  orr.w r0, r2, r12
  eor.w r0, r2, r0, lsl #1
  and.w r2, r2, r8, ror #23
  eor.w r2, r12, r2, lsl #3
  eor.w r2, r2, r8, ror #23
  eor.w r12, lr, r12, lsl #1
  eor.w r8, r0, r8, ror #23
  ror.w r3, #8
  ror.w r4, #8
  ror.w r1, #8
  ror.w r2, #8
  and.w lr, r9, r5, ror #23
  eor.w lr, r3, lr, lsl #2
  orr.w r0, r3, r9
  eor.w r0, r3, r0, lsl #1
  and.w r3, r3, r5, ror #23
  eor.w r3, r9, r3, lsl #3
  eor.w r3, r3, r5, ror #23
  eor.w r9, lr, r9, lsl #1
  eor.w r5, r0, r5, ror #23
  and.w lr, r10, r6, ror #23
  eor.w lr, r4, lr, lsl #2
  orr.w r0, r4, r10
  eor.w r0, r4, r0, lsl #1
  and.w r4, r4, r6, ror #23
  eor.w r4, r10, r4, lsl #3
  eor.w r4, r4, r6, ror #23
  eor.w r10, lr, r10, lsl #1
  eor.w r6, r0, r6, ror #23
  and.w lr, r11, r7, ror #23
  eor.w lr, r1, lr, lsl #2
  orr.w r0, r1, r11
  eor.w r0, r1, r0, lsl #1
  and.w r1, r1, r7, ror #23
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r7, ror #23
  eor.w r11, lr, r11, lsl #1
  eor.w r7, r0, r7, ror #23
  and.w lr, r12, r8, ror #23
  eor.w lr, r2, lr, lsl #2
  orr.w r0, r2, r12
  eor.w r0, r2, r0, lsl #1
  and.w r2, r2, r8, ror #23
  eor.w r2, r12, r2, lsl #3
  eor.w r2, r2, r8, ror #23
  eor.w r12, lr, r12, lsl #1
  eor.w r8, r0, r8, ror #23
  ror.w r1, #8
  ror.w r2, #8
  ror.w r3, #8
  ror.w r4, #8
  and.w lr, r9, r5, ror #23
  eor.w lr, r1, lr, lsl #2
  orr.w r0, r1, r9
  eor.w r0, r1, r0, lsl #1
  and.w r1, r1, r5, ror #23
  eor.w r1, r9, r1, lsl #3
  eor.w r1, r1, r5, ror #23
  eor.w r9, lr, r9, lsl #1
  eor.w r5, r0, r5, ror #23
  and.w lr, r10, r6, ror #23
  eor.w lr, r2, lr, lsl #2
  orr.w r0, r2, r10
  eor.w r0, r2, r0, lsl #1
  and.w r2, r2, r6, ror #23
  eor.w r2, r10, r2, lsl #3
  eor.w r2, r2, r6, ror #23
  eor.w r10, lr, r10, lsl #1
  eor.w r6, r0, r6, ror #23
  and.w lr, r11, r7, ror #23
  eor.w lr, r3, lr, lsl #2
  orr.w r0, r3, r11
  eor.w r0, r3, r0, lsl #1
  and.w r3, r3, r7, ror #23
  eor.w r3, r11, r3, lsl #3
  eor.w r3, r3, r7, ror #23
  eor.w r11, lr, r11, lsl #1
  eor.w r7, r0, r7, ror #23
  and.w lr, r12, r8, ror #23
  eor.w lr, r4, lr, lsl #2
  orr.w r0, r4, r12
  eor.w r0, r4, r0, lsl #1
  and.w r4, r4, r8, ror #23
  eor.w r4, r12, r4, lsl #3
  eor.w r4, r4, r8, ror #23
  eor.w r12, lr, r12, lsl #1
  eor.w r8, r0, r8, ror #23
  ror.w r1, #8
  ror.w r2, #8
  ror.w r3, #8
  ror.w r4, #8
  and.w lr, r9, r5, ror #23
  eor.w lr, r1, lr, lsl #2
  orr.w r0, r1, r9
  eor.w r0, r1, r0, lsl #1
  and.w r1, r1, r5, ror #23
  eor.w r1, r9, r1, lsl #3
  eor.w r1, r1, r5, ror #23
  eor.w r9, lr, r9, lsl #1
  eor.w r5, r0, r5, ror #23
  and.w lr, r10, r6, ror #23
  eor.w lr, r2, lr, lsl #2
  orr.w r0, r2, r10
  eor.w r0, r2, r0, lsl #1
  and.w r2, r2, r6, ror #23
  eor.w r2, r10, r2, lsl #3
  eor.w r2, r2, r6, ror #23
  eor.w r10, lr, r10, lsl #1
  eor.w r6, r0, r6, ror #23
  and.w lr, r11, r7, ror #23
  eor.w lr, r3, lr, lsl #2
  orr.w r0, r3, r11
  eor.w r0, r3, r0, lsl #1
  and.w r3, r3, r7, ror #23
  eor.w r3, r11, r3, lsl #3
  eor.w r3, r3, r7, ror #23
  eor.w r11, lr, r11, lsl #1
  eor.w r7, r0, r7, ror #23
  and.w lr, r12, r8, ror #23
  eor.w lr, r4, lr, lsl #2
  orr.w r0, r4, r12
  eor.w r0, r4, r0, lsl #1
  and.w r4, r4, r8, ror #23
  eor.w r4, r12, r4, lsl #3
  eor.w r4, r4, r8, ror #23
  eor.w r12, lr, r12, lsl #1
  eor.w r8, r0, r8, ror #23
  vmov.w r0, s2
  orr.w r0, r0, #8
  eor.w r2, r2, r0
  ror.w r2, #8
  ror.w r1, #8
  ror.w r4, #8
  ror.w r3, #8
  and.w lr, r9, r5, ror #23
  eor.w lr, r2, lr, lsl #2
  orr.w r0, r2, r9
  eor.w r0, r2, r0, lsl #1
  and.w r2, r2, r5, ror #23
  eor.w r2, r9, r2, lsl #3
  eor.w r2, r2, r5, ror #23
  eor.w r9, lr, r9, lsl #1
  eor.w r5, r0, r5, ror #23
  and.w lr, r10, r6, ror #23
  eor.w lr, r1, lr, lsl #2
  orr.w r0, r1, r10
  eor.w r0, r1, r0, lsl #1
  and.w r1, r1, r6, ror #23
  eor.w r1, r10, r1, lsl #3
  eor.w r1, r1, r6, ror #23
  eor.w r10, lr, r10, lsl #1
  eor.w r6, r0, r6, ror #23
  and.w lr, r11, r7, ror #23
  eor.w lr, r4, lr, lsl #2
  orr.w r0, r4, r11
  eor.w r0, r4, r0, lsl #1
  and.w r4, r4, r7, ror #23
  eor.w r4, r11, r4, lsl #3
  eor.w r4, r4, r7, ror #23
  eor.w r11, lr, r11, lsl #1
  eor.w r7, r0, r7, ror #23
  and.w lr, r12, r8, ror #23
  eor.w lr, r3, lr, lsl #2
  orr.w r0, r3, r12
  eor.w r0, r3, r0, lsl #1
  and.w r3, r3, r8, ror #23
  eor.w r3, r12, r3, lsl #3
  eor.w r3, r3, r8, ror #23
  eor.w r12, lr, r12, lsl #1
  eor.w r8, r0, r8, ror #23
  ror.w r2, #8
  ror.w r1, #8
  ror.w r4, #8
  ror.w r3, #8
  and.w lr, r9, r5, ror #23
  eor.w lr, r2, lr, lsl #2
  orr.w r0, r2, r9
  eor.w r0, r2, r0, lsl #1
  and.w r2, r2, r5, ror #23
  eor.w r2, r9, r2, lsl #3
  eor.w r2, r2, r5, ror #23
  eor.w r9, lr, r9, lsl #1
  eor.w r5, r0, r5, ror #23
  and.w lr, r10, r6, ror #23
  eor.w lr, r1, lr, lsl #2
  orr.w r0, r1, r10
  eor.w r0, r1, r0, lsl #1
  and.w r1, r1, r6, ror #23
  eor.w r1, r10, r1, lsl #3
  eor.w r1, r1, r6, ror #23
  eor.w r10, lr, r10, lsl #1
  eor.w r6, r0, r6, ror #23
  and.w lr, r11, r7, ror #23
  eor.w lr, r4, lr, lsl #2
  orr.w r0, r4, r11
  eor.w r0, r4, r0, lsl #1
  and.w r4, r4, r7, ror #23
  eor.w r4, r11, r4, lsl #3
  eor.w r4, r4, r7, ror #23
  eor.w r11, lr, r11, lsl #1
  eor.w r7, r0, r7, ror #23
  and.w lr, r12, r8, ror #23
  eor.w lr, r3, lr, lsl #2
  orr.w r0, r3, r12
  eor.w r0, r3, r0, lsl #1
  and.w r3, r3, r8, ror #23
  eor.w r3, r12, r3, lsl #3
  eor.w r3, r3, r8, ror #23
  eor.w r12, lr, r12, lsl #1
  eor.w r8, r0, r8, ror #23
  ror.w r4, #8
  ror.w r3, #8
  ror.w r2, #8
  ror.w r1, #8
  and.w lr, r9, r5, ror #23
  eor.w lr, r4, lr, lsl #2
  orr.w r0, r4, r9
  eor.w r0, r4, r0, lsl #1
  and.w r4, r4, r5, ror #23
  eor.w r4, r9, r4, lsl #3
  eor.w r4, r4, r5, ror #23
  eor.w r9, lr, r9, lsl #1
  eor.w r5, r0, r5, ror #23
  and.w lr, r10, r6, ror #23
  eor.w lr, r3, lr, lsl #2
  orr.w r0, r3, r10
  eor.w r0, r3, r0, lsl #1
  and.w r3, r3, r6, ror #23
  eor.w r3, r10, r3, lsl #3
  eor.w r3, r3, r6, ror #23
  eor.w r10, lr, r10, lsl #1
  eor.w r6, r0, r6, ror #23
  and.w lr, r11, r7, ror #23
  eor.w lr, r2, lr, lsl #2
  orr.w r0, r2, r11
  eor.w r0, r2, r0, lsl #1
  and.w r2, r2, r7, ror #23
  eor.w r2, r11, r2, lsl #3
  eor.w r2, r2, r7, ror #23
  eor.w r11, lr, r11, lsl #1
  eor.w r7, r0, r7, ror #23
  and.w lr, r12, r8, ror #23
  eor.w lr, r1, lr, lsl #2
  orr.w r0, r1, r12
  eor.w r0, r1, r0, lsl #1
  and.w r1, r1, r8, ror #23
  eor.w r1, r12, r1, lsl #3
  eor.w r1, r1, r8, ror #23
  eor.w r12, lr, r12, lsl #1
  eor.w r8, r0, r8, ror #23
  ror.w r4, #8
  ror.w r3, #8
  ror.w r2, #8
  ror.w r1, #8
  and.w lr, r9, r5, ror #23
  eor.w lr, r4, lr, lsl #2
  orr.w r0, r4, r9
  eor.w r0, r4, r0, lsl #1
  and.w r4, r4, r5, ror #23
  eor.w r4, r9, r4, lsl #3
  eor.w r4, r4, r5, ror #23
  eor.w r9, lr, r9, lsl #1
  eor.w r5, r0, r5, ror #23
  and.w lr, r10, r6, ror #23
  eor.w lr, r3, lr, lsl #2
  orr.w r0, r3, r10
  eor.w r0, r3, r0, lsl #1
  and.w r3, r3, r6, ror #23
  eor.w r3, r10, r3, lsl #3
  eor.w r3, r3, r6, ror #23
  eor.w r10, lr, r10, lsl #1
  eor.w r6, r0, r6, ror #23
  and.w lr, r11, r7, ror #23
  eor.w lr, r2, lr, lsl #2
  orr.w r0, r2, r11
  eor.w r0, r2, r0, lsl #1
  and.w r2, r2, r7, ror #23
  eor.w r2, r11, r2, lsl #3
  eor.w r2, r2, r7, ror #23
  eor.w r11, lr, r11, lsl #1
  eor.w r7, r0, r7, ror #23
  and.w lr, r12, r8, ror #23
  eor.w lr, r1, lr, lsl #2
  orr.w r0, r1, r12
  eor.w r0, r1, r0, lsl #1
  and.w r1, r1, r8, ror #23
  eor.w r1, r12, r1, lsl #3
  eor.w r1, r1, r8, ror #23
  eor.w r12, lr, r12, lsl #1
  eor.w r8, r0, r8, ror #23
  vmov.w r0, s2
  orr.w r0, r0, #4
  eor.w r3, r3, r0
  ror.w r3, #8
  ror.w r4, #8
  ror.w r1, #8
  ror.w r2, #8
  and.w lr, r9, r5, ror #23
  eor.w lr, r3, lr, lsl #2
  orr.w r0, r3, r9
  eor.w r0, r3, r0, lsl #1
  and.w r3, r3, r5, ror #23
  eor.w r3, r9, r3, lsl #3
  eor.w r3, r3, r5, ror #23
  eor.w r9, lr, r9, lsl #1
  eor.w r5, r0, r5, ror #23
  and.w lr, r10, r6, ror #23
  eor.w lr, r4, lr, lsl #2
  orr.w r0, r4, r10
  eor.w r0, r4, r0, lsl #1
  and.w r4, r4, r6, ror #23
  eor.w r4, r10, r4, lsl #3
  eor.w r4, r4, r6, ror #23
  eor.w r10, lr, r10, lsl #1
  eor.w r6, r0, r6, ror #23
  and.w lr, r11, r7, ror #23
  eor.w lr, r1, lr, lsl #2
  orr.w r0, r1, r11
  eor.w r0, r1, r0, lsl #1
  and.w r1, r1, r7, ror #23
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r7, ror #23
  eor.w r11, lr, r11, lsl #1
  eor.w r7, r0, r7, ror #23
  and.w lr, r12, r8, ror #23
  eor.w lr, r2, lr, lsl #2
  orr.w r0, r2, r12
  eor.w r0, r2, r0, lsl #1
  and.w r2, r2, r8, ror #23
  eor.w r2, r12, r2, lsl #3
  eor.w r2, r2, r8, ror #23
  eor.w r12, lr, r12, lsl #1
  eor.w r8, r0, r8, ror #23
  ror.w r3, #8
  ror.w r4, #8
  ror.w r1, #8
  ror.w r2, #8
  and.w lr, r9, r5, ror #23
  eor.w lr, r3, lr, lsl #2
  orr.w r0, r3, r9
  eor.w r0, r3, r0, lsl #1
  and.w r3, r3, r5, ror #23
  eor.w r3, r9, r3, lsl #3
  eor.w r3, r3, r5, ror #23
  eor.w r9, lr, r9, lsl #1
  eor.w r5, r0, r5, ror #23
  and.w lr, r10, r6, ror #23
  eor.w lr, r4, lr, lsl #2
  orr.w r0, r4, r10
  eor.w r0, r4, r0, lsl #1
  and.w r4, r4, r6, ror #23
  eor.w r4, r10, r4, lsl #3
  eor.w r4, r4, r6, ror #23
  eor.w r10, lr, r10, lsl #1
  eor.w r6, r0, r6, ror #23
  and.w lr, r11, r7, ror #23
  eor.w lr, r1, lr, lsl #2
  orr.w r0, r1, r11
  eor.w r0, r1, r0, lsl #1
  and.w r1, r1, r7, ror #23
  eor.w r1, r11, r1, lsl #3
  eor.w r1, r1, r7, ror #23
  eor.w r11, lr, r11, lsl #1
  eor.w r7, r0, r7, ror #23
  and.w lr, r12, r8, ror #23
  eor.w lr, r2, lr, lsl #2
  orr.w r0, r2, r12
  eor.w r0, r2, r0, lsl #1
  and.w r2, r2, r8, ror #23
  eor.w r2, r12, r2, lsl #3
  eor.w r2, r2, r8, ror #23
  eor.w r12, lr, r12, lsl #1
  eor.w r8, r0, r8, ror #23
  ror.w r1, #8
  ror.w r2, #8
  ror.w r3, #8
  ror.w r4, #8
  and.w lr, r9, r5, ror #23
  eor.w lr, r1, lr, lsl #2
  orr.w r0, r1, r9
  eor.w r0, r1, r0, lsl #1
  and.w r1, r1, r5, ror #23
  eor.w r1, r9, r1, lsl #3
  eor.w r1, r1, r5, ror #23
  eor.w r9, lr, r9, lsl #1
  eor.w r5, r0, r5, ror #23
  and.w lr, r10, r6, ror #23
  eor.w lr, r2, lr, lsl #2
  orr.w r0, r2, r10
  eor.w r0, r2, r0, lsl #1
  and.w r2, r2, r6, ror #23
  eor.w r2, r10, r2, lsl #3
  eor.w r2, r2, r6, ror #23
  eor.w r10, lr, r10, lsl #1
  eor.w r6, r0, r6, ror #23
  and.w lr, r11, r7, ror #23
  eor.w lr, r3, lr, lsl #2
  orr.w r0, r3, r11
  eor.w r0, r3, r0, lsl #1
  and.w r3, r3, r7, ror #23
  eor.w r3, r11, r3, lsl #3
  eor.w r3, r3, r7, ror #23
  eor.w r11, lr, r11, lsl #1
  eor.w r7, r0, r7, ror #23
  and.w lr, r12, r8, ror #23
  eor.w lr, r4, lr, lsl #2
  orr.w r0, r4, r12
  eor.w r0, r4, r0, lsl #1
  and.w r4, r4, r8, ror #23
  eor.w r4, r12, r4, lsl #3
  eor.w r4, r4, r8, ror #23
  eor.w r12, lr, r12, lsl #1
  eor.w r8, r0, r8, ror #23
  vmov.w r0, s0
  stm.w r0, {r1-r12}
  pop.w {r1-r12, pc}