################################################################################
# Main initializes registers, including CSR, clears the 7 seg display, checks 
# the SWITCHES to either enable or disable interrupts (SW0), and checks a 
# register (s1) acting as an interrupt flag. If the flag is set, it will update 
# the 7 seg display with the updated interrupt count which is saved in the data 
# segment to save register use.
# 
# When changing any CSR register (MSTATUS, MTVEC) the register is read after 
# writing and verified to change correctly. If a value doesn't match, an error 
# code is set (s3) and the program goes to a fail loop that sets 7 Seg to 
# 0xFFxx with xx being the error code (listed below).
#
# The ISR sets the interrupt flag  register (s1). The current interrupt count
# is read from the data segment, incremented, and written back. MSTATUS is also
# read to verify the MIE pending bit is set accordingly. If an error is 
# detected an interrupt error flag register (s2) is set.
#
# Fail Codes (s3)
# 1 - Error setting MTVEC
# 2 - Error setting MSTATUS
# 3 - Error clearing MSTATUS
# 4 - Error with MSTATUS in the ISR 
################################################################################
# Register Use Table
# s0 : MMIO
# s1 : Interrupt Flag
# s2 : Interrupt error Flag
# s3 : Fail Code 
################################################################################
.eqv MMIO,   0x11000000	          # MMIO address and offsets
.eqv LEDS    0x20
.eqv SEV_SEG 0x40
.eqv STACK   0x10000
.eqv INT_EN, 8                    # enable interrupts MSTATUS = 0x08

.data                             # keep interrupt count in data segment
INTR_COUNT: .half 0

.text
INIT:        li    sp, STACK           # setup sp
             li    s0, MMIO            # setup MMIO pointer
             la    t0, INTR_COUNT 
             sh    x0, 0(t0)           # clear interrupt count
             la    t0, ISR
             csrrw x0, mtvec, t0       # setup ISR address
             addi  t1, x0, 0
             csrrw t1, mtvec, t0       # read mtvec
             addi  s3, x0, 1           # ERROR Code 1
             bne   t0, t1, FAIL        # check mtvec
             addi  s1, x0, 0           # clear interrupt flag
             addi  s2, x0, 0           # clear interrupt error flag
             sw    x0, SEV_SEG(s0)     # clear 7 seg

LOOP:        lw    a0, 0(s0)           # read SWITCHES
             andi  a0, a0, 0x01        # Mask SWITCH 0
             sw    a0, LEDS(s0)        # set LEDs
             call  SET_INT             # subroutine to enable or disable interrupts
             beqz  a0, NO_ERROR        # return 0 if no error
             add   s3, a0, x0          # copy error code
             j     FAIL
      
NO_ERROR:    beq   s1, x0, LOOP        # check for interrupt flag
             la    t0, INTR_COUNT     
             lhu   t0, 0(t0)           # not zero, so read new interrupt count
             sh    t0, SEV_SEG(s0)     # update 7 seg with new count
             addi  s1, x0, 0           # clear interrupt flag
             beqz  s2, LOOP            # check interrupt error flag 
             addi  s3, x0, 4           # set error code for mstatus interrupt

FAIL:        li    t0, INT_EN          # Fail State
             csrrc x0, mstatus, t0     # disable interrupts	
             li    t0, 0xFF00
             or    s3, s3, t0          # ERROR Code
             sw    s3, SEV_SEG(s0)     # display ERROR on 7 Seg
STOP:        j     STOP

################################################################################
# Set/Clear Interrupts Subroutine - Subroutine to set or clear MIE bit of 
#   MSTATUS. After updating MSTATUS, register is read back and checked. If the
#   values don’t match, an error code is returned
# a0: 1 - enable, 0 - disable
# return a0: error code (0 = no error)
################################################################################
SET_INT:     li    t0, INT_EN      
             beqz  a0, SET_INT_DIS     # check for enable / disable MIE
             addi  a0, x0, 0           # clear return value (error code)
             csrrs x0, mstatus, t0     # enable interrupts
             addi  t1, x0, 0
             csrrc t1, mstatus, x0     # read mstatus
             and   t1, t1, t0          # mask MIE bit
             beq   t0, t1, SET_INT_RET # check MIE bit for error
             addi  a0, x0, 2           # set error code return value
             ret
SET_INT_DIS: addi  a0, x0, 0           # clear return value (error code)
             csrrc x0, mstatus, t0     # disable interrupts
             addi  t1, x0, 0
             csrrs t1, mstatus, x0     # read mstatus
             and   t1, t1, t0          # mask MIE bit
             beqz  t1, SET_INT_RET     # check MIE bit for error
             addi  a0, x0, 3           # set error code return value
SET_INT_RET: ret

################################################################################
# ISR - Sets interrupt flag (s1) and increments count saved in saved in data 
#   segment. Also checks MPIE and MIE bit of MSTATUS and sets interrupt error
#   registers accordingly
################################################################################
ISR:         addi  sp, sp, -8          # push t1, t2 to stack
             sw    t1, 4(sp)
             sw    t2, 0(sp)
             addi  s1, x0, 1           # set interrupt flag
             la    t1, INTR_COUNT
             lhu   t2, 0(t1)           # read current interrupt count
             addi  t2, t2, 1           # increment interrupt count
             sh    t2, 0(t1)           # save new interrupt count
             li    t2, 0x80            # MPIE and MIE bit mask 
             csrrs t1, mstatus, x0     # read mstatus
             beq   t1, t2, ISR_RET
             addi  s2, x0, 1           # set interrupt error flag
ISR_RET:     lw    t2, 0(sp)           # pop t1, t2 from stack
             lw    t1, 4(sp)
             addi  sp, sp, 8  
             mret