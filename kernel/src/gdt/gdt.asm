global LoadGDT

section .text
bits 64
LoadGDT:
	lgdt [rdi] ;rdi wil be the first parameter
	mov ax, 0x10 ;kernel data segment
	mov ds, ax
	mov es, ax
	mov fs, ax
	mov gs, ax
	mov ss, ax
	pop rdi
	mov rax, 0x08 ;kernel code segment
	push rax
	push rdi
	ret