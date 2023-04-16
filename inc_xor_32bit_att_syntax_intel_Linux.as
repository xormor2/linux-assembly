# 32-bit x86 intel asm, AT&T syntax, for GNU+Linux as and ld
.section .text
.globl _start
_start:
    xor         %cx, %cx                # siirrä arvo 0 rekisteriin CX
incrementation:
    inc         %cx                     # lisää arvo 1 rekisteriin CX
    cmp         $10, %cx		# vertaile CX==10 (onko CX==10?)
    jl          incrementation          # jos CX<10 hyppää kohtaan incrementation
#    ret
    movl        $1, %eax                # käske antamaan poistumiskäsky järjestelmälle
    movl        $0, %ebx                # poistu ohjelmasta palautusarvolla 0
    int         $0x80                   # keskeytys 0x80 on 32-bit Linux järjestelmäkutsu vektorille EAX
