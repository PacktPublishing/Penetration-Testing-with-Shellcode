global _start
section .text
_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, hello_world
    mov rdx, length
    syscall


section .data
    hello_world: db 'hello world',0xa
    length: equ $-hello_world
