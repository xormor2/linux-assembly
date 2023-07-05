.data
	.ascii "Tää ohjelma siirtää arvon 0xffff rekisteriin eax\n"
.text
.globl _start
_start:
	movl $0xffff,%eax

	movl $1,%eax #interrupt vector 1 in eax
	movl $0,%ebx #return value 0 in ebx
	int $0x80    #interrupt number 0x80 (Linux interrupt)
