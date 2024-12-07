    .data
array:  .word 1, 2, 4, 8, 9, 11, 12, 16, 21, 24

    .text
    .globl main

main:
    li $s1, 10
    li $s2, 0
    la $s3, array
    li $s0, 0

loop:
    bge $s0, $s1, finish
    lw $s4, 0($s3)
    li $s5, 4
    div $s4, $s5
    mfhi $s6
    beqz $s6, count
    addi $s0, $s0, 1
    addi $s3, $s3, 4
    j loop

count:
    addi $s2, $s2, 1
    addi $s0, $s0, 1
    addi $s3, $s3, 4
    j loop

finish:
    li $v0, 1
    move $a0, $s2
    syscall
    li $v0, 10
    