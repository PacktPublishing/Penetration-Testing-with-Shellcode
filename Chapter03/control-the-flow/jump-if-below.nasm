global _start
section .text
_start:

    mov rax, 1
    mov rdi, 1
    mov rsi, hello_one
    mov rdx, length_one
    syscall
    stc

jb print_three

    mov rax, 1
    mov rdi, 1
    mov rsi, hello_two
    mov rdx, length_two
    syscall

print_three:

    mov rax, 1
    mov rdi, 1
    mov rsi, hello_three
    mov rdx, length_three
    syscall

    mov rax, 60
    mov rdi, 11
    syscall
section .data
    hello_one: db 'hello one',0xa
    length_one: equ $-hello_one
    
    hello_two: db 'hello two',0xa
    length_two: equ $-hello_two
    
    hello_three: db 'hello three',0xa
    length_three: equ $-hello_three
