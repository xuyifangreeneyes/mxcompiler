default rel

global _N
global _total
global _globalInit
global main
global print
global println
global getString
global getInt
global toString
global _stringLength
global _stringSubstring
global _stringParseInt
global _stringOrd
global _arraySize
global _stringAdd
global _stringEq
global _stringNeq
global _stringLt
global _stringGt
global _stringLe
global _stringGe

extern strcmp
extern snprintf
extern __stack_chk_fail
extern strcpy
extern malloc
extern strlen
extern __isoc99_scanf
extern puts
extern printf

SECTION .text

_globalInit:
		push    rbp
		mov     rbp, rsp
		mov     qword [rel _total], 0
		mov     rsp, rbp
		pop     rbp
		ret     

main:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 16
		mov     qword [rbp - 8], r12
		mov     qword [rbp - 16], r13
		call    _globalInit
		mov     r12, qword [rel _total]
		call    getInt
		mov     r13, rax
		mov     r9, 1
		mov     r8, 0
		mov     rax, 0
		mov     rcx, 0
		mov     rdx, 0
		mov     rsi, r12
__L_1:
		mov     r12, rsi
		cmp     r9, r13
		jg      __L_2
__L_3:
		mov     rsi, 1
__L_4:
		cmp     rsi, r13
		jg      __L_5
__L_6:
		mov     r8, 1
		mov     r10, r12
__L_7:
		mov     r12, r10
		cmp     r8, r13
		jg      __L_8
__L_9:
		mov     rax, 1
		mov     r10, r12
__L_10:
		cmp     rax, r13
		jg      __L_11
__L_12:
		mov     rcx, 1
__L_13:
		cmp     rcx, r13
		jg      __L_14
__L_15:
		mov     rdx, 1
__L_16:
		cmp     rdx, r13
		jg      __L_17
__L_18:
		cmp     r9, rsi
		jne     __L_19
__L_20:
		jmp     __L_21
__L_19:
		cmp     r9, r8
		jne     __L_22
__L_23:
		jmp     __L_21
__L_22:
		cmp     r9, rax
		jne     __L_24
__L_25:
		jmp     __L_21
__L_24:
		cmp     r9, rcx
		jne     __L_26
__L_27:
		jmp     __L_21
__L_26:
		cmp     r9, rdx
		jne     __L_28
__L_29:
		jmp     __L_21
__L_28:
		cmp     r9, 99
		jne     __L_30
__L_31:
		jmp     __L_21
__L_30:
		cmp     r9, 100
		jne     __L_32
__L_33:
		jmp     __L_21
__L_32:
		cmp     r9, 101
		jne     __L_34
__L_35:
		jmp     __L_21
__L_34:
		cmp     r9, 102
		jne     __L_36
__L_37:
		jmp     __L_21
__L_36:
		cmp     rsi, r8
		jne     __L_38
__L_39:
		jmp     __L_21
__L_38:
		cmp     rsi, rax
		jne     __L_40
__L_41:
		jmp     __L_21
__L_40:
		cmp     rsi, rcx
		jne     __L_42
__L_43:
		jmp     __L_21
__L_42:
		cmp     rsi, rdx
		jne     __L_44
__L_45:
		jmp     __L_21
__L_44:
		cmp     rsi, 99
		jne     __L_46
__L_47:
		jmp     __L_21
__L_46:
		cmp     rsi, 100
		jne     __L_48
__L_49:
		jmp     __L_21
__L_48:
		cmp     rsi, 101
		jne     __L_50
__L_51:
		jmp     __L_21
__L_50:
		cmp     rsi, 102
		jne     __L_52
__L_53:
		jmp     __L_21
__L_52:
		cmp     r8, rax
		jne     __L_54
__L_55:
		jmp     __L_21
__L_54:
		cmp     r8, rcx
		jne     __L_56
__L_57:
		jmp     __L_21
__L_56:
		cmp     r8, rdx
		jne     __L_58
__L_59:
		jmp     __L_21
__L_58:
		cmp     r8, 99
		jne     __L_60
__L_61:
		jmp     __L_21
__L_60:
		cmp     r8, 100
		jne     __L_62
__L_63:
		jmp     __L_21
__L_62:
		cmp     r8, 101
		jne     __L_64
__L_65:
		jmp     __L_21
__L_64:
		cmp     r8, 102
		jne     __L_66
__L_67:
		jmp     __L_21
__L_66:
		cmp     rax, rcx
		jne     __L_68
__L_69:
		jmp     __L_21
__L_68:
		cmp     rax, rdx
		jne     __L_70
__L_71:
		jmp     __L_21
__L_70:
		cmp     rax, 99
		jne     __L_72
__L_73:
		jmp     __L_21
__L_72:
		cmp     rax, 100
		jne     __L_74
__L_75:
		jmp     __L_21
__L_74:
		cmp     rax, 101
		jne     __L_76
__L_77:
		jmp     __L_21
__L_76:
		cmp     rax, 102
		jne     __L_78
__L_79:
		jmp     __L_21
__L_78:
		cmp     rcx, rdx
		jne     __L_80
__L_81:
		jmp     __L_21
__L_80:
		cmp     rcx, 99
		jne     __L_82
__L_83:
		jmp     __L_21
__L_82:
		cmp     rcx, 100
		jne     __L_84
__L_85:
		jmp     __L_21
__L_84:
		cmp     rcx, 101
		jne     __L_86
__L_87:
		jmp     __L_21
__L_86:
		cmp     rcx, 102
		jne     __L_88
__L_89:
		jmp     __L_21
__L_88:
		cmp     rdx, 99
		jne     __L_90
__L_91:
		jmp     __L_21
__L_90:
		cmp     rdx, 100
		jne     __L_92
__L_93:
		jmp     __L_21
__L_92:
		cmp     rdx, 101
		jne     __L_94
__L_95:
		jmp     __L_21
__L_94:
		cmp     rdx, 102
		jne     __L_96
__L_97:
		jmp     __L_21
__L_96:
		inc     r10
__L_21:
		inc     rdx
		jmp     __L_16
__L_17:
		inc     rcx
		jmp     __L_13
__L_14:
		inc     rax
		jmp     __L_10
__L_11:
		inc     r8
		jmp     __L_7
__L_8:
		inc     rsi
		jmp     __L_4
__L_5:
		inc     r9
		mov     rsi, r12
		jmp     __L_1
__L_2:
		mov     rdi, r12
		call    toString
		mov     rdi, rax
		call    println
		mov     qword [rel _total], r12
		mov     qword [rel _N], r13
		mov     r12, qword [rbp - 8]
		mov     r13, qword [rbp - 16]
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     

SECTION .data

SECTION .bss

_N:
		resb    8

_total:
		resb    8


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


