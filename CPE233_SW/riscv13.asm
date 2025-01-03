init:
li s0 0x11000000 #load switches to s0
la t0, isr #load the isr to t0
csrrw x0, mtvec, t0 #set up the ISR adres

li t0, 0x08 #MIE
csrrw x0, mstatus, t0 # enable  Inturupts 
addi t3,x0,0#clear the inturupt flag=t3

loop:
beq t3, x0, loop # check for the inturupt
sh t4,0x20(s0)# store t4 into LED
addi t3,x0, 0 # clear flag
j loop

isr:
addi t3,x0, 1 # set the flag to 1
lhu t4, 0x20(s0)# read teh LEDs to t4
lhu t6,0x0(s0)# read switches to t3
xor t4,t4,t6 # toggle the LEDs adn save to t4
mret