#load and write value intoregister
li x10, 0x11000000
lw x11, 0(x10)
# load immediate into register
li x13, 0x8000
# check if the inputted value is greater than or equal to 32768
bge x11,x13, grFour
#if the value is not greater then 32768 then multiply by 2
slli x14,x11,0x1
#jump to after 
j after
# if its greater than, then divide by 4
grFour: srai x14,x11,0x2
#store the word in a register
after: sw x14,0x40(x10)
