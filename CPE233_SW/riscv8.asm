# Read a 32-bit value from SWITCHES (address 0x11000000), delay for 0.5 seconds, and then output the
# value to 7 SEGMENT (address 0x11000040). The OTTER MCU operates at 25 MHz so each instruction
# takes 40 ns to run. (Hint: Use loops.) There is no method to verify the run time in RARS and RARS does
# not execute at the same speed as the OTTER. You will need to verify your timing by showing your
# calculation for the number of instructions being performed between the load (reading from the
# switches) and store (writing to the 7 segment display) instructions

# instructions needed post load (1e+9/40)/2 = 12,500,000 for 0.5s
# base instructions needed 2, loop instructions 3x. 
# 12,500,000 - 2 = 12,599,998
# 12,599,998 / 3 = 4,166,666

# load some values
li x5, 0x11000000 #store switches addr in x5
lw x10, 0(x5) # load switches value into x10


# ///////////////////// delay timer starts here /////////////////////
li x13, 4166666 # max counter number, 1st instruction
li x12, 0 # counter initialized to 0, 2nd instruction

# for(counter = 0, counter < multiplier, counter ++) loop
loop: bge x12, x13, after_loop # if counter x12 >= runs needed, we exit loop
   addi x12, x12, 1 # counter = counter +1
   j loop #loop
# ///////////////////// delay timer ends here /////////////////////

after_loop: sw x10, 0x40(x5) # store value