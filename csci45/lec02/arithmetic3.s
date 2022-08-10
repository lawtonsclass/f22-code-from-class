.global _start  // _start is a global label
_start:
  // load the 4 out of the globals
  ldr r1, =four // r1 = &four
  ldr r1, [r1]  // r1 = *r1

  mov r2, #7
  mul r0, r1, r2
  mov r3, #3
  udiv r0, r0, r3 // udiv can't have an immediate at the end apparently
  add r0, r0, #42

  ldr r1, =result  // r1 = &result
  str r0, [r1]  // *r1 = r0

  ldr r0, [r1]  // r0 = *r1 

  mov r7, #1   // move 1 into the register r7
  // 1 is the code for the "exit" system call
  swi 0  // hey Linux kernel, please execute the system call that I just set up!

// you can put constants down here in the code section!
// the value can't changed because you can't change code memory as the
// program is running
four: .word 4  // .word means a 32-bit int

.data // this is the start of the .data section
// globals go down here

result: .word 0
