section .data
   msg:  DB 'Entero: %d, Double: %5.2f, String: %s', 10,0
   largo EQU $ - msg
    global imprimir_parametros
extern printf
section .text
imprimir_parametros:
    push rbp
    sub rsp, 24
    mov rbp, rsp 
    push rbx
    push r12
    push r13
    push r14
    push r15
    mov r12, rsi
    mov rsi, rdi
    mov rdi, msg
    mov rdx, r12
    mov rax, 1
    call printf
    pop r15
    pop r14
    pop r13
    pop r12
    pop rbx
    add rsp, 24
    pop rbp
ret