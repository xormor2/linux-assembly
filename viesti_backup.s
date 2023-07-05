#ohjelma alkaa

.data
viesti_alkuosoite:
    .string "Hyvää loppukesää!\n"
    viestin_pituus = . - viesti_alkuosoite

.text

.globl _start
_start:
    movl $4, %eax # write(1, hello, strlen(hello))
    movl $1, %ebx
    movl $viesti_alkuosoite, %ecx
    movl $viestin_pituus, %edx
    int  $0x80

    movl $1, %eax # exit(0)
    movl $0, %ebx
    int  $0x80
#ohjelma päättyy
