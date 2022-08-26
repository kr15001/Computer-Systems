
.data

pr1: .asciiz # formula A= 3(2*x^2+1)
newline: .asciiz#print new line
pr2: .asciiz #The Program run successfully
re1: .asciiz 

.text
.globl main

main:
li $v0, 4 #call for string for 1
la $a0, pr1 #String being stored
syscall
  
li $v0, 4 # call for new line instructions
la $a0, newline #  string being stored
syscall
  
li $t0, 0 #storing 0 in $t0
li $t1, 7 #storing 7 in $t1
  
startingloop:
 
mul $t2, $t0, $t0 #square root
mul $t2, $t2, 2 #multiplying 2 into t2 
add $t2, $t2 1 #adding 1 into t2 
mul $t2, $t2, 3 #multiplying  3 into t2 
li $v0, 4 #call for print string 1
la $a0, re1 #address of string
syscall
  
li $v0, 1 #print new line integer
move $a0, $t2 #move t2 to a0
syscall
  
add $t0, $t0, 1 # 1++ incrementation
ble $t0,$t1,startingloop #loop
  
#finaloop

li $v0, 4 #call for new line
la $a0, newline #String loaded
syscall
  
li $v0, 4 #printing node 2
la $a0, pr2 #string location in register
syscall
  
li $v0, 10 #exit
syscall

