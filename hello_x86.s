.data
hello:
    .string "Hoitaja tuli! Lauri Mömmö sai mömmöt. Pööm.\n"
    hoitaja_tuli_merkkijonon_pituus = . - hello
.text
.globl _start
_start:
    movl $4, %eax # write(1, hello, strlen(hello))
    movl $1, %ebx
    movl $hello, %ecx
    movl $hoitaja_tuli_merkkijonon_pituus, %edx
    int  $0x80

    movl $1, %eax # exit(0)
    movl $0, %ebx
    int  $0x80
