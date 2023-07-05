#ohjelma alkaa

.data
viesti_alkuosoite:
    .string "Tämä on ihan helvetin pitkä viesti joka ei sano muuta kuin että 3²+4²=5²=9+16=25.\n"
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
