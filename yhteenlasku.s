.data
yhteenlasku:
	.ascii "Tämä ohjelma laskee yhteen kaksi lukua.\n"
.text
.globl _start
_start:
	movl $2, %eax
	addl $3, %eax

	movl $1, %eax
	movl $0, %ebx
	int  $0x80
