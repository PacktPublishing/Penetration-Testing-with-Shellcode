global _start
section .text
_start:

    mov al, [mem1]
    mov bx, [mem2]
    mov ecx, [mem3]
    mov rdx, [mem4]

    mov rax, 60
    mov rdi, 0
    syscall

section .data

    mem1: db 0x12
    mem2: dw 0x1234
    mem3: dd 0x12345678
    mem4: dq 0x1234567891234567
