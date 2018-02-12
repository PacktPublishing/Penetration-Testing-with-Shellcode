global _start

section .text

_start:
    jmp code
    hello_world: db 'hello world',0xa

code:
    mov al, 1
    xor rdi, rdi
    add rdi, 1
    lea rsi, [rel hello_world]
    xor rdx,rdx
    add rdx,12 
    syscall

    xor rax,rax
    add rax,60
    xor rdi,rdi
    syscall
