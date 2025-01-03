
# load the value into register
li x11 ,0x11000000
#(12500000-1-1)/3
lw x15, 0(x11) 
li x10,0# load a counter into the program
# load a max loop number into the program
li x16, 4166666


# while the counter has not reached the second number
loop: bge x10, x16, after
 addi x10,x10,1
j loop
# store word
after:sw x15,0x40(x11)