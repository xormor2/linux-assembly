$ nano inc_xor.as
# $ as inc_xor.as -o inc_xor.o -g
# $ ld inc_xor.o -o inc_xor
# $ gdb inc
# $ cat inc.as
.section .text
.globl _start
_start:
    xor         %cx, %cx                # siirrä arvo 0 rekisteriin CX
incrementation:
    inc         %cx                     # lisää arvo 1 rekisteriin CX
    jnz         incrementation          # jos CX ei ole nolla hyppää kohtaan incrementation
    movl        $1, %eax                # käske antamaan poistumiskäsky järjestelmälle
    movl        $0, %ebx                # poistu ohjelmasta palautusarvolla 0
    int         $0x80                   # keskeytys 0x80 on 32-bit Linux järjestelmäkutsu vektorille EAX
