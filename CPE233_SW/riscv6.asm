addi x10,x0,0# load a counter into the program
# load the 2 values into 2 registers
li x11 ,0x11000000
lw x15, 0(x11) 
li x12 ,0x11000000
lw x16, 0(x12) 

#store and value into register
li x20 ,0x0000ffff
#get the first and last bts of the input in 2 seperate registers
srli x15, x15, 16
and x16, x16, x20
# while the counter has not reached the second number
loop: bge x10, x16, after
# repeatedly add to the first value to it
add x13,x13,x15
addi x10,x10,1
j loop
# store word
after:sw x13,0x40(x11)