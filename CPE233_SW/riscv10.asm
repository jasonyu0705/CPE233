.data
	array: .word 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368
.text

init:
la t1,array # load the array adress into the t1
li t2,0x11000020
li t3,0 #initialize counter
li t4, 22 # initialize max counter

loop:

lw a1 ,0(t1) #load current value into a1
lw a3, 12(t1) # load value at 3 positions ahead into register 
sub s1, a3,a1# subtract the values of the 
sw s1, 0(t2)#store the result into a register 
addi t1,t1,4 #increment the counter
addi t3,t3,1 #incrument the loop counter
blt t3,t4,loop