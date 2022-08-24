.global main		    	@ no more _start
.type main, %function	@ main is a function (assembler)
.func main		      	@ main is a function (debugger)
main:			          	@ main starts here
  // lr holds the addr to return to
  push {r4-r11, lr}

  ldr r0, =sysinfostruct // addr of a sysinfo struct
  mov r7, #116 // sysinfo
  swi 0

  // extract uptime, totalram, and freeram r1, r2, and r3
  ldr r0, =sysinfostruct
  ldr r1, [r0] // uptime
  ldr r2, [r0, #16] // totalram
  ldr r3, [r0, #20] // freeram

  // printf("%u %u %u\n", r1, r2, r3)
  ldr r0, =printints
  bl printf

  // return 0
  mov r0, #0

  // return from main
  pop {r4-r11, pc} // takes the old lr value we saved, and put it into pc

.data
printints: .asciz "%u %u %u\n" // makes a C-string for us!
sysinfostruct: .word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
