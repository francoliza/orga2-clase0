section .data
    msg: DB "Resultado: %d", 10, 0
    largo EQU $ - msg
    global sumaloca
extern printf
section .text       ;aca va el codigo
sumaloca:           ;direccion de retorno      
    push rbp        
    mov rbp, rsp    
    push rbx        
    push r12        
    push r13        
    push r14        
    push r15
    sub rdi, rsi            ; 1 - 1 = 0
    add rdi, rdx            ; 0 - 1 = -1
    sub rdi, rcx            ;-1 + 1 = 0
    add rdi, r8             ; 0 - 1 = -1
    sub rdi, r9             ;-1 + 1 = 0
    mov r12, [rbp + 16]     ; 0 + 10 = 10
    add rdi, r12            ;10 - 10 = 0
    mov r12, [rbp + 24]
    sub rdi, r12
    mov rsi, rdi
    mov rdi, msg
    mov rax, 0      ;no sé muy bien pero funciona si esta esa instruccion
    call printf     
    pop r15         
    pop r14         
    pop r13         
    pop r12         
    pop rbx    
    pop rbp         
ret                 
