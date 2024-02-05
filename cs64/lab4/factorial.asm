# factorial.asm program
# CS 64, Z.Matni, zmatni@ucsb.edu
#
# Assembly (NON-RECURSIVE) version of:
#   unsigned int n, fn=1;
#   cout << "Enter a number:\n";
#   cin >> n;
#   for (int x = 2; x <= n; x++) {
#       fn = fn * x;
#   }
#   cout << "Factorial of " << x << " is:\n" << fn << "\n";
#
.data

	# TODO: Write your initializations here

#Text Area (i.e. instructions)
.text
main:

	# TODO: Write your code here
	li $t1, 1	#initialize fn with 1
	li $t6, 2   #initialize x with 2

	li $v0, 5
	syscall
	move $t0, $v0  #initialize n

factfor:
	bgt $t6, $t0, print
	mult $t1, $t6
	mflo $t1
	addi $t6, $t6, 1
	j factfor

print:
	move $a0, $t1
	li $v0, 1
	syscall

exit:
	li $v0, 10
	syscall
	# TODO: Write code to properly exit a SPIM simulation
