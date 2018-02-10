.global main
.func main

.text

main:
	mov r0, #10
	mov r2, #12
	cmp r2, r0
	blt else
		mov r0, #7
		b exit1
	else:
		mov  r0, #70
	exit1: bx lr
