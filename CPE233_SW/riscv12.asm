.data
    input_array:  .half 0xabcd       # Example 16-bit value (14956 decimal)
    output_array: .word 0            # Array to store 5-digit BCD result (20-bit value)

.text
    .globl main
main:
# load input array and the value in the input array into registers as well as initialising registers for the output adn shift counter
    la t0, input_array             
    lhu t1, 0(t0)                   
    li t2, 0                    
    li t3, 0                      
loop_convert:
    # Call the divide by 10 subroutine. this will divide by the input value by 10 and leave the remainder in the return register and the quotient in the input values register
    jal ra, divide_by_10

    # Insert remainder into the correct position by shifting it by the numberof bits in t3 and "Oring" with the result in BCD
    sll a0, a0, t3           
    or t2, t2, a0          
    #increment the shifter by 4 bits and repear the process until the quitient is 0 (or that you have divided the number ally theway down to the most significant digit)
    addi t3, t3, 4         
    bnez t1, loop_convert    

    # Store the BCD result in output_array
    la t6, output_array              # Load address of output_array into t6
    sw t2, 0(t6)                     # Store the 32-bit BCD result in output_array

    # Exit the program
    j program_end

 # subroutine
divide_by_10:
    li t4, 0                         # Initialize the quotient to 0
    li t5, 10                        # initialize the divisor in t5

div_loop:
    bge t1, t5, sub_ten         # If t1 >= 10, jump to subtract_ten
    j end_div                     # Otherwise, finish divide

sub_ten:
    sub t1, t1, t5                   # subtrtact 10 from the divisor
    addi t4, t4, 1                   # Increment quotient
    j div_loop                     # Repeat the loop

end_div:
    mv a0, t1                        # Move the remainder into a0 (return value)
    mv t1, t4                        # Update t1 with the quotient 
    jr ra                            # Return to caller

program_end: 
