global _start
section .text
_start:

    lea rax, [mem1]
    lea rbx, [rax]

    mov rax, 60
    mov rdi, 0
    syscall

section .data
    mem1: dw 0x1234
