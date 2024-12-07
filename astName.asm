    la $t0, i
    lw $t1, 0($t0)
    
    la $t0, j
    lw $t2, 0($t0)

    sub $t3, $t1, $t2
    add $t4, $t1, $t2

    la $t0, A
    sll $t3, $t3, 2
    add $t0, $t0, $t3
    lw $t5, 0($t0)

    la $t0, A
    sll $t4, $t4, 2
    add $t0, $t0, $t4
    lw $t6, 0($t0)

    add $t7, $t5, $t6

    la $t0, B
    li $t3, 3
    sll $t3, $t3, 2
    add $t0, $t0, $t3
    sw $t7, 0($t0)