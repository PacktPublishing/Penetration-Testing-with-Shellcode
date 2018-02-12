global _start
section .text
_start:
    mov rax, 0x0fffffffffffffff
    sal rax, 4
    sal rax, 4

    mov rax, 60
    mov rdi, 0
    syscall

section .data
