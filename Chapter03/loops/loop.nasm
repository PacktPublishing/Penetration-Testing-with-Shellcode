global _start
section .text
_start:

    mov rcx,0x5
    mov rbx,0x1

increment:

    inc rbx
    loop increment

    mov rax, 60
    mov rdi, 0
    syscall

section .data
