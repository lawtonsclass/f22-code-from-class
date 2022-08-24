.global main		    	@ no more _start
.type main, %function	@ main is a function (assembler)
.func main		      	@ main is a function (debugger)
main:			          	@ main starts here
  // lr holds the addr to return to
  push {lr}
  
  // put the addr of the C-string to print in r0
  ldr r0, =hellostring
  // call printf
  bl printf // this implicitly sets lr to be the addr of the next instruction in main

  // return 0
  mov r0, #0

  // return from main
  pop {pc} // takes the old lr value we saved, and put it into pc

.data
hellostring: .asciz "Hello, world!\n" // makes a C-string for us!
