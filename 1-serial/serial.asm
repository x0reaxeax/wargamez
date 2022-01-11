check_serial:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 0x20
    mov     qword [rbp-0x18 {var_20}], rdi  ; arg1 is now var_20 [rbp-0x18]
    mov     dword [rbp-0x4 {var_c}], 0x0
    mov     rax, qword [rbp-0x18 {var_20}]
    mov     rdi, rax 0000134d
    call    strlen
    cmp     rax, 0x6                        ; check if strlen(arg1) == 6
    je      0x1384


addr_0x1384:
    mov     rax, qword [rbp-0x18 {var_20}]
    movzx   eax, byte [rax]                 
    cmp     al, 0x31                        ; check if first character is `1`
    jne     0x1393

; the same thing repeats 5 more times (need strlen == 6)
; ...

addr_0x1393:
    ; ...
    cmp     al, 0x38                        ; '8'
    jne     0x13a6

addr_0x13a6:
    ; ...
    cmp     al, 0x39                        ; '9'
    jne     0x13b9

addr_0x13b9:
    ; ...
    cmp     al, 0x37                        ; '7'
    jne     0x13cc

addr_0x13cc:
    ; ...
    cmp     al, 0x31                        ; '1'
    jne     0x13df

addr_0x13df:
    ; ...
    cmp     al, 0x35                        ; '5'
    ; no need for anything else           ----------
    ;                                      189715

; ------------------------------------------------
; SERIAL CHECK
; ------------------------------------------------
; ENTER VALID SERIAL NUMBER: 
; >> 189715
; EVALUATING...VALID SERIAL
; Press enter to continue...
