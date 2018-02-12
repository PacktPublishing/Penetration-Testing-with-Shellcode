section .text
_start:

    mov rax, 0x5
    inc rax
    inc rax

    mov rbx, 0x6
    dec rbx
    dec rbx

    mov rax, 60
    mov rdi, 0
    syscall

section .data
