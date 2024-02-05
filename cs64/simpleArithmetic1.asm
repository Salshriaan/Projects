# DEMO FILE FOR CMSPC 64
# (c) Z. Matni, 2023
######################################
# simpleArithmetic1.asm
######################################

.text
main:

# TODO: implement the arithmetic function: a + b - c, where a = 133, b = -110, c = 141.
#       Variables a, b, c, MUST be stored in registers $t0, $t1, $t2, respectively.
#       Think about which register the result should be stored in.
# YOUR ADDED LINES GO HERE:

        li $t0, 133
        li $t1, -110
        li $t2, 141

        add $t3, $t0, $t1

        sub $t3, $t3, $t2
# DO NOT EDIT THE FOLLOWING INSTRUCTIONS!
# Print to std.output
        li $v0, 1
        syscall

# End program
        li $v0, 10
        syscall
		