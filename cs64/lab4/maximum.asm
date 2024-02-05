# maximum.asm program
# CS 64, Z.Matni, zmatni@ucsb.edu
#
# Get 3 integer inputs from the user (std.in)
# Reveal the maximum value
# See assignment description for details

.data

	# TODO: Complete these declarations / initializations

	.asciiz "Enter the next number:\n"
	.asciiz "Minimum: "
    .asciiz "\n"

#Text Area (i.e. instructions)
.text

main:

	# TODO: Write your code here
    # You can have other labels expressed here, if you need to
	
	li $v0, 5
	syscall
	move $t1, $v0     #read in a

	li $v0, 5
	syscall
	move $t2, $v0     #read in b

	li $v0, 5
	syscall
	move $t3, $v0     #read in c

	bgt $t1, $t2, abiggerb  	#if a>b, go to abiggerb
	move $a0, $t2        		#load a0 (max so far) with b
	j withc

abiggerb:
	move $a0, $t1        		#load a0 (max so far) with a
	j withc            			#now compare with c

withc:
	bgt $a0, $t3, print  		#if a0 (max so far) is greater, print it
	move $a0, $t3             	#if not, max is c
	j print

print:
	li $v0, 1
	syscall

exit:
	li $v0, 10
	syscall
	# TODO: Write code to properly exit a SPIM simulation
