.global _start  // _start is a global label
_start:
  mov r0, #87  // r0 = 87
  mov r1, #25
  mov r2, #7
  mov r3, #3
  mov r5, #2

  add r6, r0, r1 // r6 = r0 + r1
  mul r4, r6, r5 // r4 = r4 * r5
  sub r2, r2, #3 // r2 = r2 - 3
  udiv r4, r4, r2 // r4 = r4 / r2 (unsigned)

  mov r0, r4  // move r4 into the register r0
  mov r7, #1   // move 1 into the register r7
  // 1 is the code for the "exit" system call
  swi 0  // hey Linux kernel, please execute the system call that I just set up!
