global _start

section .text
_start:

    xor rax, rax
    add rax, 1
    mov rdi, rax
    push 0x0a646c72
    mov rbx, 0x6f57206f6c6c6548
    push rbx
    mov rsi, rsp
    xor rdx, rdx
    add rdx, 12
    syscall

    xor rax, rax
    add rax, 60 
    xor rdi, rdi 
    syscall
