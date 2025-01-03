.data
# this array contains the 2 inputs being the dividend and the divisor
data_array: .half 20,0
.text

initialize:
li t0, 0
la s0, data_array
li s2, 0x11000020
li s3, 0x11000040
li t6, 0xDEADBEEF

# Load the first 16-bit value from array into t1
lh t1, 0(s0)
 # Load the second 16-bit value from array into t2
lh t2, 2(s0)
# Initialize quotient (t3) and remainder (t5)
li t3, 0 
addi t5, t1, 0
# check the edge case that you are dividing by 0( this should not work)
beqz t2, div_zero
#  divides by doing repeated subtraction and adding one to a counter. The counter will represent the quotient and the remainder
# remainder is found by setting the divedend to the remainder and repeatedly subtracting the divisor from it untill it is less than the dividend
division_loop: blt t5, t2, done
	sub t5, t5, t2
	addi t3, t3, 1
j division_loop
# store the values of the remainder and the qotient in their respective registers to print the results to the user
done:
sw t3, 0(s3)
sw t5, 0(s2)

div_zero: sw t6 ,0(s3)
