global _start
section .text
_start:

jmp exit_ten
    mov rax, 60
    mov rdi, 12
    syscall

    mov rax, 60
    mov rdi, 0
    syscall

exit_ten:
    mov rax, 60
    mov rdi, 10
    syscall

    mov rax, 60
    mov rdi, 1
    syscall

section .data
