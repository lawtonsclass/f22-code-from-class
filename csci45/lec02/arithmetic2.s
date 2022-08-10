.global _start  // _start is a global label
_start:
  mov r1, #4
  mov r2, #7
  mul r0, r1, r2
  mov r3, #3
  udiv r0, r0, r3 // udiv can't have an immediate at the end apparently
  add r0, r0, #42

  mov r7, #1   // move 1 into the register r7
  // 1 is the code for the "exit" system call
  swi 0  // hey Linux kernel, please execute the system call that I just set up!
