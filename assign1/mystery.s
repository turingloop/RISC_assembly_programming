@ mystery.s is ... a mystery (and part of the Hello, ARM! assignment) 
.global main 
.func main 
.data 

message: .asciz "The sum of %d and %d is %d\n" 

.text 

main: 
	push {lr}        @ preserving lr on the stack
	mov r1, #18      @ r1 <- 10 
	mov r2, #14      @ r2 <- 14 
	add r3, r1, r2   @ r3 <- r1 + r2 
	ldr r0, =message @ r0 <- memory address of the message 
	/* Call the printf() function. It expects its arguments in r0, r1, r2, and r3*/   
	bl printf        @ branch to printf(), & store the address of the pop instruction in lr
	pop {lr} @ restoring the saved value of lr 
	bx lr
