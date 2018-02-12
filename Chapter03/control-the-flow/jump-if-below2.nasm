global _start
section .text
_start:
    mov al, 0xaa
    add al, 0xaa

jb exit_ten

    mov rax, 60
    mov rdi, 0
    syscall

exit_ten:
    mov rax, 60
    mov rdi, 10
    syscall
section .data
