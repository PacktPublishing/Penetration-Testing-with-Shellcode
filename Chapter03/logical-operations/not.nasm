global _start
section .text
_start:
    mov al,0x00
    not al

    mov rax, 60
    mov rdi, 10
    syscall

section .data
