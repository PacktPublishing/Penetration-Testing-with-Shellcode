global _start
section .text
_start:

    mov rax,0x1
    add rax,0x2
    
    mov rbx,0x3
    add bl, byte [mem1]

    mov rcx, 0x9
    sub rcx, 0x1

    mov dl,0x5
    sub byte [mem2], dl

    mov rax, 60
    mov rdi, 0
    syscall

section .data
    mem1: db 0x2
    mem2: db 0x9
