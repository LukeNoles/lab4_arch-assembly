    .data
array:  .word 1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 0

    .text
    .globl main

main:
    li $s0, 0
    la $s1, array

loop:
    lw $s2, 0($s1)
    beq $s2, $zero, done
    addi $s0, $s0, 1
    addi $s1, $s1, 4
    j loop

done:
    li $v0, 1
    move $a0, $s0
    syscall

    li $v0, 10
    syscall
