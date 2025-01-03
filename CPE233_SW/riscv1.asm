li x10, 0x11000000 #gets the user input from SWITHES 
lhu x11, 0(x10) # loads the input value into a register
lhu x12, 0(x10) # loads the input value into a register
lhu x13, 0(x10) # loads the input value into a register
add x14,x11,x12 # adds the first 2 values and stores the result into a new register 
add x14,x13,x14A # adds the previous commands output with the third input value and store it in a register
sh x15, 0x20(x10) # write the output to the LEDs
