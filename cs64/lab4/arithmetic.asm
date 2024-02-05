# arithmetic.asm program
# CS 64, Z.Matni, zmatni@ucsb.edu
#
# 1. Prompt the user for 3 inputs: a, b, c
# 2. Calculate 32*(a - 4*b) + 7*c using only one mult instruction
# 3. Print out the result

.text
main:
	# TODO: Write your code here
	li $v0, 5		#read in a
	syscall
	move $t0, $v0

	li $v0, 5		#read in b
	syscall
	move $t1, $v0

	li $v0, 5		#read in c
	syscall
	move $t2, $v0

	sll $t1, $t1, 2 #mult b by 4 is like left shift 2 bits, 4=2^2
	sub $t0, $t0, $t1

	sll $t0, $t0, 5 #mult by 32 is like left shift 5 bits, 32=2^5
	
	li $t7, 7
	mult $t2, $t7
	mflo $t2

	add $a0, $t0, $t2  #load register a0, with the final addition

	li $v0, 1          #print int result
	syscall			   #execute

exit:
	li $v0, 10
	syscall
	# Exit SPIM: Write your code here!

