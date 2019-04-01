

SECTION .text

print:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     rax, qword [rbp-8H]
        add     rax, 8
        mov     rsi, rax
        mov     edi, L_014
        mov     eax, 0
        call    printf
        nop
        leave
        ret


println:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     rax, qword [rbp-8H]
        add     rax, 8
        mov     rdi, rax
        call    puts
        nop
        leave
        ret


getString:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32800


        mov     rax, qword [fs:abs 28H]
        mov     qword [rbp-8H], rax
        xor     eax, eax
        lea     rax, [rbp-8010H]
        mov     rsi, rax
        mov     edi, L_014
        mov     eax, 0
        call    __isoc99_scanf
        lea     rax, [rbp-8010H]
        mov     rdi, rax
        call    strlen
        mov     qword [rbp-8020H], rax
        mov     rax, qword [rbp-8020H]
        add     rax, 8
        mov     rdi, rax
        call    malloc
        mov     qword [rbp-8018H], rax
        mov     rax, qword [rbp-8018H]
        mov     rdx, qword [rbp-8020H]
        mov     qword [rax], rdx
        mov     rax, qword [rbp-8018H]
        lea     rdx, [rax+8H]
        lea     rax, [rbp-8010H]
        mov     rsi, rax
        mov     rdi, rdx
        call    strcpy
        mov     rax, qword [rbp-8018H]
        mov     rcx, qword [rbp-8H]


        xor     rcx, qword [fs:abs 28H]
        jz      L_001
        call    __stack_chk_fail
L_001:  leave
        ret


getInt:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16


        mov     rax, qword [fs:abs 28H]
        mov     qword [rbp-8H], rax
        xor     eax, eax
        lea     rax, [rbp-10H]
        mov     rsi, rax
        mov     edi, L_015
        mov     eax, 0
        call    __isoc99_scanf
        mov     rax, qword [rbp-10H]
        mov     rdx, qword [rbp-8H]


        xor     rdx, qword [fs:abs 28H]
        jz      L_002
        call    __stack_chk_fail
L_002:  leave
        ret


toString:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     qword [rbp-18H], rdi
        mov     rax, qword [rbp-18H]
        mov     rcx, rax
        mov     edx, L_015
        mov     esi, 0
        mov     edi, 0
        mov     eax, 0
        call    snprintf
        cdqe
        mov     qword [rbp-10H], rax
        mov     rax, qword [rbp-10H]
        add     rax, 9
        mov     rdi, rax
        call    malloc
        mov     qword [rbp-8H], rax
        mov     rax, qword [rbp-10H]
        add     rax, 1
        mov     rsi, rax
        mov     rax, qword [rbp-8H]
        lea     rdi, [rax+8H]
        mov     rax, qword [rbp-18H]
        mov     rcx, rax
        mov     edx, L_015
        mov     eax, 0
        call    snprintf
        mov     rax, qword [rbp-10H]
        add     rax, 8
        mov     rdx, rax
        mov     rax, qword [rbp-8H]
        add     rax, rdx
        mov     byte [rax], 0
        mov     rax, qword [rbp-8H]
        mov     rdx, qword [rbp-10H]
        mov     qword [rax], rdx
        mov     rax, qword [rbp-8H]
        leave
        ret


_stringLength:
        push    rbp
        mov     rbp, rsp
        mov     qword [rbp-8H], rdi
        mov     rax, qword [rbp-8H]
        mov     rax, qword [rax]
        pop     rbp
        ret


_stringSubstring:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 64
        mov     qword [rbp-28H], rdi
        mov     qword [rbp-30H], rsi
        mov     qword [rbp-38H], rdx
        mov     rax, qword [rbp-38H]
        sub     rax, qword [rbp-30H]
        mov     qword [rbp-10H], rax
        mov     rax, qword [rbp-10H]
        add     rax, 9
        mov     rdi, rax
        call    malloc
        mov     qword [rbp-8H], rax
        mov     rax, qword [rbp-8H]
        mov     rdx, qword [rbp-10H]
        mov     qword [rax], rdx
        mov     dword [rbp-14H], 0
        jmp     L_004

L_003:  mov     eax, dword [rbp-14H]
        add     eax, 8
        movsxd  rdx, eax
        mov     rax, qword [rbp-8H]
        add     rdx, rax
        mov     rax, qword [rbp-30H]
        lea     rcx, [rax+8H]
        mov     eax, dword [rbp-14H]
        cdqe
        add     rax, rcx
        mov     rcx, rax
        mov     rax, qword [rbp-28H]
        add     rax, rcx
        movzx   eax, byte [rax]
        mov     byte [rdx], al
        add     dword [rbp-14H], 1
L_004:  mov     eax, dword [rbp-14H]
        cdqe
        cmp     rax, qword [rbp-10H]
        jl      L_003
        mov     rax, qword [rbp-10H]
        add     rax, 8
        mov     rdx, rax
        mov     rax, qword [rbp-8H]
        add     rax, rdx
        mov     byte [rax], 0
        mov     rax, qword [rbp-8H]
        leave
        ret


_stringParseInt:
        push    rbp
        mov     rbp, rsp
        mov     qword [rbp-18H], rdi
        mov     qword [rbp-8H], 0
        mov     dword [rbp-0CH], 0
        add     qword [rbp-18H], 8
        mov     rax, qword [rbp-18H]
        movzx   eax, byte [rax]
        cmp     al, 45
        jnz     L_006
        mov     dword [rbp-0CH], 1
        add     qword [rbp-18H], 1
        jmp     L_006

L_005:  mov     rdx, qword [rbp-8H]
        mov     rax, rdx
        shl     rax, 2
        add     rax, rdx
        add     rax, rax
        mov     rdx, rax
        mov     rax, qword [rbp-18H]
        movzx   eax, byte [rax]
        movsx   eax, al
        sub     eax, 48
        cdqe
        add     rax, rdx
        mov     qword [rbp-8H], rax
        add     qword [rbp-18H], 1
L_006:  mov     rax, qword [rbp-18H]
        movzx   eax, byte [rax]
        cmp     al, 47
        jle     L_007
        mov     rax, qword [rbp-18H]
        movzx   eax, byte [rax]
        cmp     al, 57
        jle     L_005
L_007:  cmp     dword [rbp-0CH], 0
        jz      L_008
        mov     rax, qword [rbp-8H]
        neg     rax
        jmp     L_009

L_008:  mov     rax, qword [rbp-8H]
L_009:  pop     rbp
        ret


_stringOrd:
        push    rbp
        mov     rbp, rsp
        mov     qword [rbp-8H], rdi
        mov     qword [rbp-10H], rsi
        mov     rax, qword [rbp-10H]
        add     rax, 8
        mov     rdx, rax
        mov     rax, qword [rbp-8H]
        add     rax, rdx
        movzx   eax, byte [rax]
        movsx   rax, al
        pop     rbp
        ret


_stringAdd:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        mov     qword [rbp-28H], rdi
        mov     qword [rbp-30H], rsi
        mov     rax, qword [rbp-28H]
        mov     rax, qword [rax]
        mov     qword [rbp-18H], rax
        mov     rax, qword [rbp-30H]
        mov     rax, qword [rax]
        mov     qword [rbp-10H], rax
        mov     rax, qword [rbp-18H]
        lea     rdx, [rax+8H]
        mov     rax, qword [rbp-10H]
        add     rax, rdx
        add     rax, 1
        mov     rdi, rax
        call    malloc
        mov     qword [rbp-8H], rax
        mov     rdx, qword [rbp-18H]
        mov     rax, qword [rbp-10H]
        add     rdx, rax
        mov     rax, qword [rbp-8H]
        mov     qword [rax], rdx
        mov     dword [rbp-20H], 0
        jmp     L_011

L_010:  mov     eax, dword [rbp-20H]
        add     eax, 8
        movsxd  rdx, eax
        mov     rax, qword [rbp-8H]
        add     rdx, rax
        mov     eax, dword [rbp-20H]
        add     eax, 8
        movsxd  rcx, eax
        mov     rax, qword [rbp-28H]
        add     rax, rcx
        movzx   eax, byte [rax]
        mov     byte [rdx], al
        add     dword [rbp-20H], 1
L_011:  mov     eax, dword [rbp-20H]
        cdqe
        cmp     rax, qword [rbp-18H]
        jl      L_010
        mov     dword [rbp-1CH], 0
        jmp     L_013

L_012:  mov     rax, qword [rbp-18H]
        lea     rdx, [rax+8H]
        mov     eax, dword [rbp-1CH]
        cdqe
        add     rax, rdx
        mov     rdx, rax
        mov     rax, qword [rbp-8H]
        add     rdx, rax
        mov     eax, dword [rbp-1CH]
        add     eax, 8
        movsxd  rcx, eax
        mov     rax, qword [rbp-30H]
        add     rax, rcx
        movzx   eax, byte [rax]
        mov     byte [rdx], al
        add     dword [rbp-1CH], 1
L_013:  mov     eax, dword [rbp-1CH]
        cdqe
        cmp     rax, qword [rbp-10H]
        jl      L_012
        mov     rax, qword [rbp-18H]
        lea     rdx, [rax+8H]
        mov     rax, qword [rbp-10H]
        add     rax, rdx
        mov     rdx, rax
        mov     rax, qword [rbp-8H]
        add     rax, rdx
        mov     byte [rax], 0
        mov     rax, qword [rbp-8H]
        leave
        ret


_stringEq:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     qword [rbp-10H], rsi
        mov     rax, qword [rbp-10H]
        lea     rdx, [rax+8H]
        mov     rax, qword [rbp-8H]
        add     rax, 8
        mov     rsi, rdx
        mov     rdi, rax
        call    strcmp
        test    eax, eax
        sete    al
        movzx   eax, al
        leave
        ret


_stringNeq:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     qword [rbp-10H], rsi
        mov     rax, qword [rbp-10H]
        lea     rdx, [rax+8H]
        mov     rax, qword [rbp-8H]
        add     rax, 8
        mov     rsi, rdx
        mov     rdi, rax
        call    strcmp
        test    eax, eax
        setne   al
        movzx   eax, al
        leave
        ret


_stringLt:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     qword [rbp-10H], rsi
        mov     rax, qword [rbp-10H]
        lea     rdx, [rax+8H]
        mov     rax, qword [rbp-8H]
        add     rax, 8
        mov     rsi, rdx
        mov     rdi, rax
        call    strcmp
        shr     eax, 31
        movzx   eax, al
        leave
        ret


_stringGt:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     qword [rbp-10H], rsi
        mov     rax, qword [rbp-10H]
        lea     rdx, [rax+8H]
        mov     rax, qword [rbp-8H]
        add     rax, 8
        mov     rsi, rdx
        mov     rdi, rax
        call    strcmp
        test    eax, eax
        setg    al
        movzx   eax, al
        leave
        ret


_stringLe:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     qword [rbp-10H], rsi
        mov     rax, qword [rbp-10H]
        lea     rdx, [rax+8H]
        mov     rax, qword [rbp-8H]
        add     rax, 8
        mov     rsi, rdx
        mov     rdi, rax
        call    strcmp
        test    eax, eax
        setle   al
        movzx   eax, al
        leave
        ret


_stringGe:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     qword [rbp-10H], rsi
        mov     rax, qword [rbp-10H]
        lea     rdx, [rax+8H]
        mov     rax, qword [rbp-8H]
        add     rax, 8
        mov     rsi, rdx
        mov     rdi, rax
        call    strcmp
        not     eax
        shr     eax, 31
        movzx   eax, al
        leave
        ret


_arraySize:
        push    rbp
        mov     rbp, rsp
        mov     qword [rbp-8H], rdi
        mov     rax, qword [rbp-8H]
        mov     rax, qword [rax]
        pop     rbp
        ret



SECTION .data


SECTION .bss


SECTION .rodata

L_014:
        db 25H, 73H, 00H

L_015:
        db 25H, 6CH, 64H, 00H


