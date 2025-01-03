#load the input value from switches
li x10, 0x11000000
lw x11, 0(x10) 
#and the last 3 bits and save the value into a register
andi x20,x11,3
# check if the value is divisible by 4
beq x20,x0, divfour
	#and the last bit and save the value into a register
	andi x20,x11,1
	#if the value is even, brnch
	beq x20,x0, not_odd

# if the value is odd then add 4095 and divide by 2 
li x21 ,0x0FFF
add x20,x20,x21
srai x20,x20,1
#jump to the after label
j after

#if the number is not odd, subtract 1
not_odd: li x15,1
sub x21 ,x11, x15
j after

#if the number is divisable by 4 then invert the bits in the number
divfour:
not x20,x11

# after store the word in a register 
after: sw x20,0x40(x10)