.data
hello:
    .string "Hyvää loppukesää!\n"
    hello_length = . - hello
.text
.globl _start
_start:
    movl $4, %eax # write(1, hello, strlen(hello))
    movl $1, %ebx
    movl $hello, %ecx
    movl $hello_length, %edx
    int  $0x80

    movl $1, %eax # exit(0)
    movl $0, %ebx
    int  $0x80
