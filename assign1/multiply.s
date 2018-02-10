@multiply.s
.global main
.func main
.data

.text

main:
	mov r1, #9 @r0 <- 9
	mov r2, #7 @r1 <- 7
	mul r0, r1, r2 @r0 <- r1 * r2
	mov r2, #5 @ r1 <- 5
	mov r3, #3 @ r2 <- 3
	mul r1, r2, r3 @ r1 <- r2 * r3
	sub r0, r0, r1 @ r0 <- r0 - r1
	bx lr
