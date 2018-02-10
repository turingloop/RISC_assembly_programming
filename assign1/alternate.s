@alternate.s
.global main
.func main
.data

.text

main:
	mov r0, #1 @r0 <- 0
	add r0, r0, #3 @r0 <- r0 + 3
	sub r0, r0, #5 @r0 <- r0 - 5
	add r0, r0, #7 @r0 <- r0 + 7
	sub r0, r0, #9 @r0 <- r0 - 9
	add r0, r0, #11 @r0 <- r0 + 11
	sub r0, r0, #13 @r0 <- r0 - 13
	bx lr
