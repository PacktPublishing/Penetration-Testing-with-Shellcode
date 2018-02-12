global _start
section .text
_start:
    mov rax, 0xffffffff00000000
    ror rax, 32

    mov rax, 60
    mov rdi, 0
    syscall

section .data
