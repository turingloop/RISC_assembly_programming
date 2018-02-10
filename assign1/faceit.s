.global main
.func main
.data

.text

main:
	mov r1, #0xF @r1 <- 0xF
	mov r2, #4096 @r2 <- 4096
	mul r0, r1, r2 @r0  <- r1 * r2
	mov r2, #0xA @r2 <- 0xA
	mov r3, #256 @r3 <- 256
	mul r1, r2, r3 @r1 <- r2 * r3
	add r0, r0, r1 @r0 <- r0 + r1
	mov r2, #0xC @r2 <- 0xC
	mov r3, #16 @r3 <- 16
	mul r1, r2, r3 @ r1 <- r2 * r3
	add r0, r0, r1 @r0 <- r0 + r1
	mov r1, #0xE @this is same even if we multiply with 1, so we are not gonna do that
	add r0, r0, r1 @final sum
	bx lr
