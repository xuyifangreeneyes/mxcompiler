default rel

global _N
global _total
global __globalInit
global main
global print
global println
global getString
global getInt
global toString
global __stringLength
global __stringSubstring
global __stringParseInt
global __stringOrd
global __arraySize
global __stringAdd
global __stringEq
global __stringNeq
global __stringLt
global __stringGt
global __stringLe
global __stringGe
global __printInt
global __printlnInt

extern strcmp
extern __sprintf_chk
extern __stack_chk_fail
extern memcpy
extern malloc
extern __isoc99_scanf
extern puts
extern __printf_chk

SECTION .text

__globalInit:
		push    rbp
		mov     rbp, rsp
		mov     qword [rel _total], 0
		pop     rbp
		ret

main:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 16
		mov     qword [rbp - 8], rbx
		mov     qword [rbp - 16], r13
		call    __globalInit
		mov     rbx, qword [rel _total]
		call    getInt
		mov     r13, rax
		mov     rcx, 1
		mov     rax, 0
		mov     rdx, 0
		mov     r9, 0
		mov     r8, 0
__L_1:
		cmp     rcx, r13
		jg      __L_2
__L_3:
		mov     rsi, 1
__L_4:
		cmp     rsi, r13
		jg      __L_5
__L_6:
		mov     rax, 1
__L_7:
		cmp     rax, r13
		jg      __L_8
__L_9:
		mov     rdx, 1
__L_10:
		cmp     rdx, r13
		jg      __L_11
__L_12:
		mov     r9, 1
__L_13:
		cmp     r9, r13
		jg      __L_14
__L_15:
		mov     r8, 1
__L_16:
		cmp     r8, r13
		jg      __L_17
__L_18:
		cmp     rcx, rsi
		jne     __L_19
__L_20:
		jmp     __L_21
__L_19:
		cmp     rcx, rax
		jne     __L_22
__L_23:
		jmp     __L_21
__L_22:
		cmp     rcx, rdx
		jne     __L_24
__L_25:
		jmp     __L_21
__L_24:
		cmp     rcx, r9
		jne     __L_26
__L_27:
		jmp     __L_21
__L_26:
		cmp     rcx, r8
		jne     __L_28
__L_29:
		jmp     __L_21
__L_28:
		cmp     rcx, 99
		jne     __L_30
__L_31:
		jmp     __L_21
__L_30:
		cmp     rcx, 100
		jne     __L_32
__L_33:
		jmp     __L_21
__L_32:
		cmp     rcx, 101
		jne     __L_34
__L_35:
		jmp     __L_21
__L_34:
		cmp     rcx, 102
		jne     __L_36
__L_37:
		jmp     __L_21
__L_36:
		cmp     rsi, rax
		jne     __L_38
__L_39:
		jmp     __L_21
__L_38:
		cmp     rsi, rdx
		jne     __L_40
__L_41:
		jmp     __L_21
__L_40:
		cmp     rsi, r9
		jne     __L_42
__L_43:
		jmp     __L_21
__L_42:
		cmp     rsi, r8
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
		cmp     rax, rdx
		jne     __L_54
__L_55:
		jmp     __L_21
__L_54:
		cmp     rax, r9
		jne     __L_56
__L_57:
		jmp     __L_21
__L_56:
		cmp     rax, r8
		jne     __L_58
__L_59:
		jmp     __L_21
__L_58:
		cmp     rax, 99
		jne     __L_60
__L_61:
		jmp     __L_21
__L_60:
		cmp     rax, 100
		jne     __L_62
__L_63:
		jmp     __L_21
__L_62:
		cmp     rax, 101
		jne     __L_64
__L_65:
		jmp     __L_21
__L_64:
		cmp     rax, 102
		jne     __L_66
__L_67:
		jmp     __L_21
__L_66:
		cmp     rdx, r9
		jne     __L_68
__L_69:
		jmp     __L_21
__L_68:
		cmp     rdx, r8
		jne     __L_70
__L_71:
		jmp     __L_21
__L_70:
		cmp     rdx, 99
		jne     __L_72
__L_73:
		jmp     __L_21
__L_72:
		cmp     rdx, 100
		jne     __L_74
__L_75:
		jmp     __L_21
__L_74:
		cmp     rdx, 101
		jne     __L_76
__L_77:
		jmp     __L_21
__L_76:
		cmp     rdx, 102
		jne     __L_78
__L_79:
		jmp     __L_21
__L_78:
		cmp     r9, r8
		jne     __L_80
__L_81:
		jmp     __L_21
__L_80:
		cmp     r9, 99
		jne     __L_82
__L_83:
		jmp     __L_21
__L_82:
		cmp     r9, 100
		jne     __L_84
__L_85:
		jmp     __L_21
__L_84:
		cmp     r9, 101
		jne     __L_86
__L_87:
		jmp     __L_21
__L_86:
		cmp     r9, 102
		jne     __L_88
__L_89:
		jmp     __L_21
__L_88:
		cmp     r8, 99
		jne     __L_90
__L_91:
		jmp     __L_21
__L_90:
		cmp     r8, 100
		jne     __L_92
__L_93:
		jmp     __L_21
__L_92:
		cmp     r8, 101
		jne     __L_94
__L_95:
		jmp     __L_21
__L_94:
		cmp     r8, 102
		jne     __L_96
__L_97:
		jmp     __L_21
__L_96:
		inc     rbx
__L_21:
		inc     r8
		jmp     __L_16
__L_17:
		inc     r9
		jmp     __L_13
__L_14:
		inc     rdx
		jmp     __L_10
__L_11:
		inc     rax
		jmp     __L_7
__L_8:
		inc     rsi
		jmp     __L_4
__L_5:
		inc     rcx
		jmp     __L_1
__L_2:
		mov     rdi, rbx
		call    __printlnInt
		mov     qword [rel _N], r13
		mov     qword [rel _total], rbx
		mov     rbx, qword [rbp - 8]
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


SECTION .text   6

print:
        lea     rdx, [rdi+8H]
        mov     esi, L_011
        mov     edi, 1
        xor     eax, eax
        jmp     __printf_chk


        nop





ALIGN   16

println:
        add     rdi, 8
        jmp     puts






ALIGN   8

__printInt:
        mov     rdx, rdi
        mov     esi, L_012
        mov     edi, 1
        xor     eax, eax
        jmp     __printf_chk







ALIGN   16

__printlnInt:
        mov     rdx, rdi
        mov     esi, L_013
        mov     edi, 1
        xor     eax, eax
        jmp     __printf_chk







ALIGN   16

getString:
        push    r12
        push    rbp
        mov     edi, L_011
        push    rbx
        sub     rsp, 32784


        mov     rax, qword [fs:abs 28H]
        mov     qword [rsp+8008H], rax
        xor     eax, eax
        mov     rsi, rsp
        mov     rbp, rsp
        mov     rbx, rsp
        call    __isoc99_scanf
L_001:  mov     edx, dword [rbx]
        add     rbx, 4
        lea     eax, [rdx-1010101H]
        not     edx
        and     eax, edx
        and     eax, 80808080H
        jz      L_001
        mov     edx, eax
        shr     edx, 16
        test    eax, 8080H
        cmove   eax, edx
        lea     rdx, [rbx+2H]
        mov     ecx, eax
        cmove   rbx, rdx
        add     cl, al
        sbb     rbx, 3
        sub     rbx, rbp
        lea     rdi, [rbx+8H]
        call    malloc
        lea     rdx, [rbx+1H]
        lea     rdi, [rax+8H]
        mov     qword [rax], rbx
        mov     rsi, rbp
        mov     r12, rax
        call    memcpy
        mov     rcx, qword [rsp+8008H]


        xor     rcx, qword [fs:abs 28H]
        mov     rax, r12
        jnz     L_002
        add     rsp, 32784
        pop     rbx
        pop     rbp
        pop     r12
        ret

L_002:  call    __stack_chk_fail




ALIGN   8

getInt:
        sub     rsp, 24
        mov     edi, L_012


        mov     rax, qword [fs:abs 28H]
        mov     qword [rsp+8H], rax
        xor     eax, eax
        mov     rsi, rsp
        call    __isoc99_scanf
        mov     rdx, qword [rsp+8H]


        xor     rdx, qword [fs:abs 28H]
        mov     rax, qword [rsp]
        jnz     L_003
        add     rsp, 24
        ret

L_003:  call    __stack_chk_fail
        nop
ALIGN   16

toString:
        push    rbp
        push    rbx
        mov     rbp, rdi
        mov     edi, 32
        sub     rsp, 8
        call    malloc
        lea     rdi, [rax+8H]
        mov     rbx, rax
        mov     r8, rbp
        mov     ecx, L_012
        mov     edx, 24
        mov     esi, 1
        xor     eax, eax
        call    __sprintf_chk
        cdqe
        mov     qword [rbx], rax
        add     rsp, 8
        mov     rax, rbx
        pop     rbx
        pop     rbp
        ret







ALIGN   16

__stringLength:
        mov     rax, qword [rdi]
        ret







ALIGN   16

__stringSubstring:
        push    r13
        sub     rdx, rsi
        push    r12
        push    rbp
        push    rbx
        mov     r13, rdi
        lea     rdi, [rdx+9H]
        mov     rbx, rdx
        mov     r12, rsi
        sub     rsp, 8
        call    malloc
        test    rbx, rbx
        mov     rbp, rax
        mov     qword [rax], rbx
        jle     L_004
        lea     rdi, [rax+8H]
        lea     rsi, [r13+r12+8H]
        mov     rdx, rbx
        call    memcpy
L_004:  mov     byte [rbp+rbx+8H], 0
        add     rsp, 8
        mov     rax, rbp
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        ret






ALIGN   8

__stringParseInt:
        movsx   edx, byte [rdi+8H]
        cmp     dl, 45
        jz      L_007
        lea     eax, [rdx-30H]
        cmp     al, 9
        ja      L_008
        lea     rcx, [rdi+8H]
        xor     edi, edi
L_005:  xor     eax, eax




ALIGN   16
L_006:  sub     edx, 48
        lea     rax, [rax+rax*4]
        add     rcx, 1
        movsxd  rdx, edx
        lea     rax, [rdx+rax*2]
        movsx   edx, byte [rcx]
        lea     esi, [rdx-30H]
        cmp     sil, 9
        jbe     L_006
        mov     rdx, rax
        neg     rdx
        test    edi, edi
        cmovne  rax, rdx
        ret





ALIGN   8
L_007:  movsx   edx, byte [rdi+9H]
        lea     rcx, [rdi+9H]
        lea     eax, [rdx-30H]
        cmp     al, 9
        ja      L_008
        mov     edi, 1
        jmp     L_005

L_008:  xor     eax, eax
        ret






ALIGN   8

__stringOrd:
        movsx   rax, byte [rdi+rsi+8H]
        ret







ALIGN   16

__stringAdd:
        push    r15
        push    r14
        mov     r14, rsi
        push    r13
        push    r12
        push    rbp
        push    rbx
        sub     rsp, 24
        mov     r12, qword [rdi]
        mov     rbp, qword [rsi]
        mov     qword [rsp+8H], rdi
        lea     r13, [r12+8H]
        lea     r15, [r13+rbp]
        lea     rdi, [r15+1H]
        call    malloc
        mov     rbx, rax
        lea     rax, [r12+rbp]
        test    r12, r12
        mov     rdx, qword [rsp+8H]
        mov     qword [rbx], rax
        jle     L_009
        lea     rsi, [rdx+8H]
        lea     rdi, [rbx+8H]
        mov     rdx, r12
        call    memcpy
L_009:  test    rbp, rbp
        jle     L_010
        lea     rdi, [rbx+r13]
        lea     rsi, [r14+8H]
        mov     rdx, rbp
        call    memcpy
L_010:  mov     byte [rbx+r15], 0
        add     rsp, 24
        mov     rax, rbx
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        ret


        nop

ALIGN   16
__stringEq:
        sub     rsp, 8
        add     rsi, 8
        add     rdi, 8
        call    strcmp
        test    eax, eax
        sete    al
        add     rsp, 8
        movzx   eax, al
        ret






ALIGN   8

__stringNeq:
        sub     rsp, 8
        add     rsi, 8
        add     rdi, 8
        call    strcmp
        test    eax, eax
        setne   al
        add     rsp, 8
        movzx   eax, al
        ret






ALIGN   8

__stringLt:
        sub     rsp, 8
        add     rsi, 8
        add     rdi, 8
        call    strcmp
        cdqe
        add     rsp, 8
        shr     rax, 63
        ret






ALIGN   8

__stringGt:
        sub     rsp, 8
        add     rsi, 8
        add     rdi, 8
        call    strcmp
        test    eax, eax
        setg    al
        add     rsp, 8
        movzx   eax, al
        ret






ALIGN   8

__stringLe:
        sub     rsp, 8
        add     rsi, 8
        add     rdi, 8
        call    strcmp
        test    eax, eax
        setle   al
        add     rsp, 8
        movzx   eax, al
        ret






ALIGN   8

__stringGe:
        sub     rsp, 8
        add     rsi, 8
        add     rdi, 8
        call    strcmp
        cdqe
        add     rsp, 8
        not     rax
        shr     rax, 63
        ret


        nop

ALIGN   16
__arraySize:
        mov     rax, qword [rdi]
        ret



SECTION .data


SECTION .bss


SECTION .rodata.str1.1

L_011:
        db 25H, 73H, 00H

L_012:
        db 25H, 6CH, 64H, 00H

L_013:
        db 25H, 6CH, 64H, 0AH, 00H


SECTION .text.unlikely


