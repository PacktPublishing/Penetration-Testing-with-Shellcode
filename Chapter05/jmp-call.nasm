global _start

section .text

_start:
    jmp string
    
code:
    pop rsi
    mov al, 1
    xor rdi, rdi
    add rdi, 1
    xor rdx,rdx
    add rdx,12 
    syscall

    xor rax,rax
    add rax,60
    xor rdi,rdi
    syscall

string:
    call code
    hello_world: db 'hello world',0xa
