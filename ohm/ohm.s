.global main
.func main
.data
.balign 4
outputs: .asciz "You will have %d volts\n" @output string
voltage: .word 0 @voltage
current: .word 50 @current
resistor1: .word 220 @resistor 1
resistor2: .word 30 @resistor 2
resistor3: .word 560 @resistor 3

.text

main:
	push {lr}	@preserves lr on stack
	ldr r1, =voltage @r1<-address of voltage address
	ldr r1, [r1]	@r1<- voltage value
	ldr r2, =current @r2<-address of current
	ldr r2, [r2]	@r2<-value of current
	ldr r3, =resistor1 @r3<-address of resistor1
	ldr r3, [r3]	@r3<-value of resistor1
	ldr r4, =resistor2 @r4<-address of resistor2
	ldr r4, [r4]	@r4<-value of r4
	ldr r5, =resistor3 @r5<-address of resistor3
	ldr r5, [r5] @r5<-value of r5
	add r3, r3, r4 @adding r3 and r4 aned putting the result in r3
	add r3, r3, r5 @final value after adding all resistors
	mul r1, r2, r3 @multiplying current and resistance
	ldr r0, =outputs @address of string
	bl printf @calls printf() function
	pop {lr} @pops lr for proper termination
	bx lr @exit
