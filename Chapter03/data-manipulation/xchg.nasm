global _start
section .text
_start:

    mov rax, 0x1234
    mov rbx, 0x5678
    xchg rax, rbx
    
    mov rcx, 0x9876
    xchg rcx,[mem1]

    mov rax, 60
    mov rdi, 0
    syscall

section .data
    mem1: dw 0x1234
