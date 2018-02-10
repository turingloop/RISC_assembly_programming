.global main
.func main

.data
width: .word 8
height: .word 5
area: .word 0

.text
main:
	ldr r0, =width@ r0 <- memory address of width
	ldr r0,[r0]     @ r0 <- width (8)
	ldr r1, =height @ r1 <- memory address of height
	ldr r1, [r1]    @ r1 <- height (5)
 
calc:	add r2, r0, r1  @ perform the grand calculation
	ldr r0, =area   @ r0 <- memory address of area
	str r2,[r0]     @ r2 -> area
        mov r0, r2      @ r0 <- r2 (so we can inspect it with echo $? )
	bx lr          @ we are done
