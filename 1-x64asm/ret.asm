[BITS  64]

section .text
global calc_arg

; arg1 = rdi, arg2 = rsi
calc_arg:
    push rdi    ; push arg1
    push rsi    ; push arg2
    pop rdi     ; pop arg2 into rdi
    pop rsi     ; pop arg1 into rsi
    ; arg1 and arg2 were just swapped
    
    xor eax, eax
    mov rax, rsi    ; arg1
    add rax, rsi    ; arg1 + arg1
    add rax, 1024   ; (arg1 + arg1) + 1024
    sub rdi, 256    ; argv2 - 256
    add rax, rdi    ; (arg1 + arg1) + 1024 + (arg2 - 256)
    ret
    ; (x + x) + 1024 + (y - 256) = 31337
    ; 2x + y + 768 = 31337
    ; 768*2 + 29033 + 768 = 31337