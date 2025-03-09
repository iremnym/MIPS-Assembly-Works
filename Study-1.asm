#An assembly language program that takes a temperature value in Celsius from the user and converts it to Fahrenheit

.data
msg1: .asciiz "Sayıyı giriniz:"

.text
.globl main
main:

addi $v0, $zero, 5
syscall
add $t0,$v0, $zero

div $t1, $t0, 5
mul $t2, $t1, 9
add $t3, $t2, 32

la $a0,msg1
addi $v0, $zero, 4
syscall

add $a0, $t3, $zero
addi $v0, $zero, 1
syscall

addi $v0, $zero, 10
syscall
