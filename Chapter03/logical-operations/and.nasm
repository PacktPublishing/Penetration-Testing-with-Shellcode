global _start
section .text
_start:
    mov rax,0x10111011
    mov rbx,0x11010110
    and rax,rbx

    mov rax, 60
    mov rdi, 10
    syscall

section .data
