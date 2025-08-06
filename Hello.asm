global _start

section .data
	hello db "Hello, World!",10
	lenght equ $-hello
section  .text

_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, hello
	mov edx, lenght
	int 80h

	xor ebx, ebx
	mov eax, 1
	int 80h
