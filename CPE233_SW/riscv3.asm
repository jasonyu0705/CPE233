li x5, 0x11000000 # gets the user input from SWITHES 
lh x8 ,(x5) # loads the input value into a register
neg x8,x8 # gets the two's complement of the 
sh x8, 0x20 (x5) # write the output to the LEDs
