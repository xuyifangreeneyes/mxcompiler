default rel

global __globalInit
global __vector_init
global __vector_getDim
global __vector_dot
global __vector_scalarInPlaceMultiply
global __vector_add
global __vector_set
global __vector_tostring
global __vector_copy
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
		pop     rbp
		ret     

__vector_init:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 32
		mov     qword [rbp - 8], rbx
		mov     qword [rbp - 16], r15
		mov     qword [rbp - 24], r14
		mov     r14, rdi
		mov     rbx, rsi
		cmp     rbx, 0
		jne     __L_1
__L_2:
		mov     rbx, qword [rbp - 8]
		mov     r15, qword [rbp - 16]
		mov     r14, qword [rbp - 24]
		mov     rsp, rbp
		pop     rbp
		ret     
__L_1:
		mov     rdi, rbx
		call    __arraySize
		mov     r15, rax
		mov     rdi, r15
		shl     rdi, 3
		add     rdi, 8
		call    malloc
		mov     qword [rax], r15
		add     rax, 8
		mov     rcx, r14
		add     rcx, 0
		mov     qword [rcx], rax
		mov     rdi, rbx
		call    __arraySize
		mov     rcx, 0
__L_3:
		cmp     rcx, rax
		jge     __L_4
__L_5:
		mov     r8, rcx
		shl     r8, 3
		mov     rdx, rbx
		add     rdx, r8
		mov     r9, qword [rdx]
		mov     rdx, r14
		add     rdx, 0
		mov     rdx, qword [rdx]
		add     rdx, r8
		mov     qword [rdx], r9
		inc     rcx
		jmp     __L_3
__L_4:
		mov     rbx, qword [rbp - 8]
		mov     r15, qword [rbp - 16]
		mov     r14, qword [rbp - 24]
		mov     rsp, rbp
		pop     rbp
		ret     

__vector_getDim:
		push    rbp
		mov     rbp, rsp
		mov     rcx, rdi
		add     rcx, 0
		mov     rcx, qword [rcx]
		cmp     rcx, 0
		jne     __L_6
__L_7:
		mov     rax, 0
		pop     rbp
		ret     
__L_6:
		add     rdi, 0
		mov     rdi, qword [rdi]
		call    __arraySize
		pop     rbp
		ret     

__vector_dot:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 32
		mov     qword [rbp - 8], rbx
		mov     qword [rbp - 16], r14
		mov     qword [rbp - 24], r13
		mov     r14, rdi
		mov     r13, rsi
		mov     rbx, 0
		mov     qword [rbp - 32], 0
__L_8:
		mov     rcx, r14
		add     rcx, 0
		mov     rcx, qword [rcx]
		cmp     rcx, 0
		jne     __L_9
__L_10:
		mov     rax, 0
		jmp     __L_11
__L_9:
		mov     rcx, r14
		add     rcx, 0
		mov     rdi, qword [rcx]
		call    __arraySize
__L_11:
		cmp     rbx, rax
		jge     __L_12
__L_13:
		mov     rcx, r14
		add     rcx, 0
		mov     r8, qword [rcx]
		mov     rcx, rbx
		shl     rcx, 3
		add     r8, rcx
		mov     rdx, qword [r8]
		mov     r8, r13
		add     r8, 0
		mov     r8, qword [r8]
		add     r8, rcx
		mov     rcx, qword [r8]
		imul    rdx, rcx
		inc     rbx
		mov     qword [rbp - 32], rdx
		jmp     __L_8
__L_12:
		mov     rbx, qword [rbp - 8]
		mov     r14, qword [rbp - 16]
		mov     r13, qword [rbp - 24]
		mov     rax, qword [rbp - 32]
		mov     rsp, rbp
		pop     rbp
		ret     

__vector_scalarInPlaceMultiply:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 32
		mov     qword [rbp - 8], rbx
		mov     qword [rbp - 16], r14
		mov     qword [rbp - 24], rdi
		mov     r14, rsi
		mov     rcx, qword [rbp - 24]
		add     rcx, 0
		mov     rcx, qword [rcx]
		cmp     rcx, 0
		jne     __L_14
__L_15:
		mov     rbx, qword [rbp - 8]
		mov     r14, qword [rbp - 16]
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     
__L_14:
		mov     rbx, 0
__L_16:
		mov     rcx, qword [rbp - 24]
		add     rcx, 0
		mov     rcx, qword [rcx]
		cmp     rcx, 0
		jne     __L_17
__L_18:
		mov     rax, 0
		jmp     __L_19
__L_17:
		mov     rcx, qword [rbp - 24]
		add     rcx, 0
		mov     rdi, qword [rcx]
		call    __arraySize
__L_19:
		cmp     rbx, rax
		jge     __L_20
__L_21:
		mov     r9, qword [rbp - 24]
		add     r9, 0
		mov     r8, qword [r9]
		mov     rcx, rbx
		shl     rcx, 3
		add     r8, rcx
		mov     rdx, qword [r8]
		mov     r8, r14
		imul    r8, rdx
		mov     rdx, qword [r9]
		add     rdx, rcx
		mov     qword [rdx], r8
		inc     rbx
		jmp     __L_16
__L_20:
		mov     rbx, qword [rbp - 8]
		mov     r14, qword [rbp - 16]
		mov     rax, qword [rbp - 24]
		mov     rsp, rbp
		pop     rbp
		ret     

__vector_add:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 32
		mov     qword [rbp - 8], rbx
		mov     qword [rbp - 16], r14
		mov     qword [rbp - 24], r13
		mov     r13, rdi
		mov     r14, rsi
__L_22:
		mov     rcx, r13
		add     rcx, 0
		mov     rcx, qword [rcx]
		cmp     rcx, 0
		jne     __L_23
__L_24:
		mov     rbx, 0
		jmp     __L_25
__L_23:
		mov     rcx, r13
		add     rcx, 0
		mov     rdi, qword [rcx]
		call    __arraySize
		mov     rbx, rax
__L_25:
		mov     rcx, r14
		add     rcx, 0
		mov     rcx, qword [rcx]
		cmp     rcx, 0
		jne     __L_26
__L_27:
		mov     rax, 0
		jmp     __L_28
__L_26:
		mov     rcx, r14
		add     rcx, 0
		mov     rdi, qword [rcx]
		call    __arraySize
__L_28:
		cmp     rbx, rax
		jne     __L_29
__L_30:
		mov     rcx, r13
		add     rcx, 0
		mov     rcx, qword [rcx]
		cmp     rcx, 0
		jne     __L_31
__L_32:
		mov     rax, 0
		jmp     __L_33
__L_31:
		mov     rcx, r13
		add     rcx, 0
		mov     rdi, qword [rcx]
		call    __arraySize
__L_33:
		cmp     rax, 0
		jne     __L_34
__L_29:
		mov     rbx, qword [rbp - 8]
		mov     r14, qword [rbp - 16]
		mov     r13, qword [rbp - 24]
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     
__L_34:
		mov     rdi, 8
		call    malloc
		mov     qword [rbp - 32], rax
		mov     rcx, r13
		add     rcx, 0
		mov     rcx, qword [rcx]
		cmp     rcx, 0
		jne     __L_35
__L_36:
		mov     rbx, 0
		jmp     __L_37
__L_35:
		mov     rcx, r13
		add     rcx, 0
		mov     rdi, qword [rcx]
		call    __arraySize
		mov     rbx, rax
__L_37:
		mov     rdi, rbx
		shl     rdi, 3
		add     rdi, 8
		call    malloc
		mov     qword [rax], rbx
		add     rax, 8
		mov     rcx, qword [rbp - 32]
		add     rcx, 0
		mov     qword [rcx], rax
		mov     rbx, 0
__L_38:
		mov     rcx, r13
		add     rcx, 0
		mov     rcx, qword [rcx]
		cmp     rcx, 0
		jne     __L_39
__L_40:
		mov     rax, 0
		jmp     __L_41
__L_39:
		mov     rcx, r13
		add     rcx, 0
		mov     rdi, qword [rcx]
		call    __arraySize
__L_41:
		cmp     rbx, rax
		jge     __L_42
__L_43:
		mov     rcx, r13
		add     rcx, 0
		mov     r8, qword [rcx]
		mov     rcx, rbx
		shl     rcx, 3
		add     r8, rcx
		mov     rdx, qword [r8]
		mov     r8, r14
		add     r8, 0
		mov     r8, qword [r8]
		add     r8, rcx
		mov     r8, qword [r8]
		add     rdx, r8
		mov     r8, qword [rbp - 32]
		add     r8, 0
		mov     r8, qword [r8]
		add     r8, rcx
		mov     qword [r8], rdx
		inc     rbx
		jmp     __L_38
__L_42:
		mov     rbx, qword [rbp - 8]
		mov     r14, qword [rbp - 16]
		mov     r13, qword [rbp - 24]
		mov     rax, qword [rbp - 32]
		mov     rsp, rbp
		pop     rbp
		ret     

__vector_set:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 32
		mov     qword [rbp - 8], rbx
		mov     qword [rbp - 16], r15
		mov     qword [rbp - 24], r14
		mov     rbx, rdi
		mov     r14, rsi
		mov     r15, rdx
__L_44:
		mov     rcx, rbx
		add     rcx, 0
		mov     rcx, qword [rcx]
		cmp     rcx, 0
		jne     __L_45
__L_46:
		mov     rax, 0
		jmp     __L_47
__L_45:
		mov     rcx, rbx
		add     rcx, 0
		mov     rdi, qword [rcx]
		call    __arraySize
__L_47:
		cmp     rax, r14
		jge     __L_48
__L_49:
		mov     rbx, qword [rbp - 8]
		mov     r15, qword [rbp - 16]
		mov     r14, qword [rbp - 24]
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     
__L_48:
		add     rbx, 0
		mov     rcx, qword [rbx]
		shl     r14, 3
		add     rcx, r14
		mov     qword [rcx], r15
		mov     rbx, qword [rbp - 8]
		mov     r15, qword [rbp - 16]
		mov     r14, qword [rbp - 24]
		mov     rax, 1
		mov     rsp, rbp
		pop     rbp
		ret     

__vector_tostring:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 32
		mov     qword [rbp - 8], rbx
		mov     qword [rbp - 16], r15
		mov     qword [rbp - 24], r14
		mov     r14, rdi
__L_50:
		mov     rcx, r14
		add     rcx, 0
		mov     rcx, qword [rcx]
		cmp     rcx, 0
		jne     __L_51
__L_52:
		mov     rax, 0
		jmp     __L_53
__L_51:
		mov     rcx, r14
		add     rcx, 0
		mov     rdi, qword [rcx]
		call    __arraySize
__L_53:
		cmp     rax, 0
		jg      __L_54
__L_55:
		mov     rax, __str_0
		jmp     __L_56
__L_54:
		mov     rcx, r14
		add     rcx, 0
		mov     rcx, qword [rcx]
		add     rcx, 0
		mov     rdi, qword [rcx]
		call    toString
		mov     rsi, rax
		mov     rdi, __str_0
		call    __stringAdd
__L_56:
		mov     rbx, 1
		mov     r15, rax
__L_57:
		mov     rcx, r14
		add     rcx, 0
		mov     rcx, qword [rcx]
		cmp     rcx, 0
		jne     __L_58
__L_59:
		mov     rax, 0
		jmp     __L_60
__L_58:
		mov     rcx, r14
		add     rcx, 0
		mov     rdi, qword [rcx]
		call    __arraySize
__L_60:
		cmp     rbx, rax
		jge     __L_61
__L_62:
		mov     rdi, r15
		mov     rsi, __str_1
		call    __stringAdd
		mov     r15, rax
		mov     rcx, r14
		add     rcx, 0
		mov     r8, qword [rcx]
		mov     rcx, rbx
		shl     rcx, 3
		add     r8, rcx
		mov     rdi, qword [r8]
		call    toString
		mov     rsi, rax
		mov     rdi, r15
		call    __stringAdd
		mov     r15, rax
		inc     rbx
		jmp     __L_57
__L_61:
		mov     rdi, r15
		mov     rsi, __str_2
		call    __stringAdd
		mov     rbx, qword [rbp - 8]
		mov     r15, qword [rbp - 16]
		mov     r14, qword [rbp - 24]
		mov     rsp, rbp
		pop     rbp
		ret     

__vector_copy:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 32
		mov     qword [rbp - 8], rbx
		mov     qword [rbp - 16], r15
		mov     qword [rbp - 24], r14
		mov     rbx, rdi
		mov     r14, rsi
		cmp     r14, 0
		jne     __L_63
__L_64:
		mov     rbx, qword [rbp - 8]
		mov     r15, qword [rbp - 16]
		mov     r14, qword [rbp - 24]
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     
__L_63:
		mov     rcx, r14
		add     rcx, 0
		mov     rcx, qword [rcx]
		cmp     rcx, 0
		jne     __L_65
__L_66:
		mov     rax, 0
		jmp     __L_67
__L_65:
		mov     rcx, r14
		add     rcx, 0
		mov     rdi, qword [rcx]
		call    __arraySize
__L_67:
		cmp     rax, 0
		jne     __L_68
__L_69:
		add     rbx, 0
		mov     qword [rbx], 0
		jmp     __L_70
__L_68:
		mov     rcx, r14
		add     rcx, 0
		mov     rcx, qword [rcx]
		cmp     rcx, 0
		jne     __L_71
__L_72:
		mov     r15, 0
		jmp     __L_73
__L_71:
		mov     rcx, r14
		add     rcx, 0
		mov     rdi, qword [rcx]
		call    __arraySize
		mov     r15, rax
__L_73:
		mov     rdi, r15
		shl     rdi, 3
		add     rdi, 8
		call    malloc
		mov     qword [rax], r15
		add     rax, 8
		mov     rcx, rbx
		add     rcx, 0
		mov     qword [rcx], rax
		mov     r15, 0
__L_74:
		mov     rcx, rbx
		add     rcx, 0
		mov     rcx, qword [rcx]
		cmp     rcx, 0
		jne     __L_75
__L_76:
		mov     rax, 0
		jmp     __L_77
__L_75:
		mov     rcx, rbx
		add     rcx, 0
		mov     rdi, qword [rcx]
		call    __arraySize
__L_77:
		cmp     r15, rax
		jge     __L_70
__L_78:
		mov     rcx, r14
		add     rcx, 0
		mov     r8, qword [rcx]
		mov     rcx, r15
		shl     rcx, 3
		add     r8, rcx
		mov     rdx, qword [r8]
		mov     r8, rbx
		add     r8, 0
		mov     r8, qword [r8]
		add     r8, rcx
		mov     qword [r8], rdx
		inc     r15
		jmp     __L_74
__L_70:
		mov     rbx, qword [rbp - 8]
		mov     r15, qword [rbp - 16]
		mov     r14, qword [rbp - 24]
		mov     rax, 1
		mov     rsp, rbp
		pop     rbp
		ret     

main:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 16
		mov     qword [rbp - 8], rbx
		mov     qword [rbp - 16], r15
		call    __globalInit
		mov     rdi, 8
		call    malloc
		mov     r15, rax
		mov     rdi, 88
		call    malloc
		mov     qword [rax], 10
		add     rax, 8
		mov     rcx, 0
__L_79:
		cmp     rcx, 10
		jge     __L_80
__L_81:
		mov     r9, 9
		sub     r9, rcx
		mov     r8, rcx
		shl     r8, 3
		mov     rdx, rax
		add     rdx, r8
		mov     qword [rdx], r9
		inc     rcx
		jmp     __L_79
__L_80:
		mov     rdi, r15
		mov     rsi, rax
		call    __vector_init
		mov     rdi, __str_3
		call    print
		mov     rdi, r15
		call    __vector_tostring
		mov     rdi, rax
		call    println
		mov     rdi, 8
		call    malloc
		mov     rbx, rax
		mov     rdi, rbx
		mov     rsi, r15
		call    __vector_copy
		mov     rcx, rbx
		add     rcx, 0
		mov     rcx, qword [rcx]
		cmp     rcx, 0
		jne     __L_82
__L_83:
		mov     rax, 0
		jmp     __L_84
__L_82:
		mov     rcx, rbx
		add     rcx, 0
		mov     rdi, qword [rcx]
		call    __arraySize
__L_84:
		cmp     rax, 3
		jge     __L_85
__L_86:
		mov     rcx, 0
		jmp     __L_87
__L_85:
		mov     rcx, rbx
		add     rcx, 0
		mov     rcx, qword [rcx]
		add     rcx, 24
		mov     qword [rcx], 817
		mov     rcx, 1
__L_87:
		cmp     rcx, 0
		je      __L_88
__L_89:
		mov     rdi, __str_4
		call    println
__L_88:
		mov     rdi, __str_5
		call    print
		mov     rdi, rbx
		call    __vector_tostring
		mov     rdi, rax
		call    println
		mov     rdi, __str_6
		call    print
		mov     rdi, r15
		mov     rsi, rbx
		call    __vector_add
		mov     rdi, rax
		call    __vector_tostring
		mov     rdi, rax
		call    println
		mov     rdi, __str_7
		call    print
		mov     rdi, r15
		mov     rsi, rbx
		call    __vector_dot
		mov     rdi, rax
		call    __printlnInt
		mov     rdi, __str_8
		call    print
		mov     rdi, rbx
		mov     rsi, 8
		call    __vector_scalarInPlaceMultiply
		mov     rdi, rax
		call    __vector_tostring
		mov     rdi, rax
		call    println
		mov     rbx, qword [rbp - 8]
		mov     r15, qword [rbp - 16]
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     

SECTION .data

__str_0:
		dq      2
		db      28H, 20H, 00H

__str_1:
		dq      2
		db      2CH, 20H, 00H

__str_2:
		dq      2
		db      20H, 29H, 00H

__str_3:
		dq      10
		db      76H, 65H, 63H, 74H, 6FH, 72H, 20H, 78H, 3AH, 20H, 00H

__str_4:
		dq      8
		db      65H, 78H, 63H, 69H, 74H, 65H, 64H, 21H, 00H

__str_5:
		dq      10
		db      76H, 65H, 63H, 74H, 6FH, 72H, 20H, 79H, 3AH, 20H, 00H

__str_6:
		dq      7
		db      78H, 20H, 2BH, 20H, 79H, 3AH, 20H, 00H

__str_7:
		dq      7
		db      78H, 20H, 2AH, 20H, 79H, 3AH, 20H, 00H

__str_8:
		dq      14
		db      28H, 31H, 20H, 3CH, 3CH, 20H, 33H, 29H, 20H, 2AH, 20H, 79H, 3AH, 20H, 00H

SECTION .bss


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
        sub     rdx, rsi
        push    r14
        mov     r14, rdi
        push    r13
        lea     rdi, [rdx+0AH]
        push    r12
        lea     r12, [rdx+1H]
        push    rbp
        push    rbx
        mov     r13, rsi
        mov     rbx, rdx
        call    malloc
        test    r12, r12
        mov     rbp, rax
        mov     qword [rax], r12
        jle     L_004
        lea     rdi, [rax+8H]
        lea     rsi, [r14+r13+8H]
        mov     rdx, r12
        call    memcpy
L_004:  mov     byte [rbp+rbx+9H], 0
        mov     rax, rbp
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
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
        mov     rax, qword [rdi-8H]
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


