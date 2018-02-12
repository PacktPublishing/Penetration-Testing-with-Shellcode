global _start
section .text
_start:

    mov rcx, 0x5

increment:

    push rcx
    mov rax, 1
    mov rdi, 1
    mov rsi, hello
    mov rdx, length
    syscall
    pop rcx

loop increment
   
    mov rax, 60
    mov rdi, 0
    syscall

section .data
    hello: db 'Hello There!',0xa
    length: equ $-hello
