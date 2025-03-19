.data
result: .asciiz "Büyük olan sayý: "
result2: .asciiz "Sayýlar esittir."


.text
.globl main

main:
addi $v0, $zero, 5
syscall
add $t0, $v0, $zero

addi $v0, $zero, 5
syscall
add $t1, $v0, $zero

beq $t0, $t1, print_equal
bne $t0, $t1, check_bigger

check_bigger:
slt $t2, $t0, $t1 
beq $t2, $zero, print_t0

print_t1:
add $t2, $t1, $zero 
j print_result

print_t0:
add $t2, $t0, $zero 
j print_result

print_result:
la $a0, result
addi $v0, $zero, 4
syscall

add $a0, $t2, $zero
addi $v0, $zero, 1
syscall
j exit

print_equal:
addi $v0, $zero, 4
la $a0, result2
syscall
j exit

exit:
addi $v0, $zero, 10
syscall
