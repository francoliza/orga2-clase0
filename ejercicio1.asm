global sumar
section .text
sumar:
push rbp
mov rbp, rsp
push rbx
push r12
push r13
push r14
push r15
addpd xmm0, xmm1
mov rax, 1
pop r15
pop r14
pop r13
pop r12
pop rbx
pop rbp
ret