global _start
section .text
_start:

    mov rax, 0x5
    stc
    adc rax, 0x1
    
    mov rbx, 0x5
    stc
    sbb rbx, 0x1

    mov rax, 60
    mov rdi, 0
    syscall

section .data

