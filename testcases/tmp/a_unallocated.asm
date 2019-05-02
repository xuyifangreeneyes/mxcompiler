default rel

global __globalInit
global cd
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
		mov     %local_r14, r14
		mov     %local_rbx, rbx
		mov     %local_r12, r12
		mov     %local_r13, r13
		mov     %local_r15, r15
		mov     r14, %local_r14
		mov     rbx, %local_rbx
		mov     r12, %local_r12
		mov     r13, %local_r13
		mov     r15, %local_r15
		ret     

cd:
		mov     %local_r14, r14
		mov     %local_rbx, rbx
		mov     %local_r12, r12
		mov     %local_r13, r13
		mov     %local_r15, r15
		mov     %argVal_0, rdi
		mov     %argVal_2, rsi
		mov     %argVal_4, rdx
		mov     %argVal_6, rcx
		mov     %argVal_8, r8
		cmp     %argVal_0, 1
		jne     __L_1
__L_2:
		mov     %newVal_14, %argVal_8
		inc     %newVal_14
		mov     %alloca_6, %newVal_14
		jmp     __L_3
__L_1:
		mov     %res_17, %argVal_0
		sub     %res_17, 1
		cmp     %res_17, 1
		jne     __L_4
__L_5:
		mov     %cnewVal_43, %argVal_8
		inc     %cnewVal_43
		mov     %alloca_3, %cnewVal_43
		jmp     __L_6
__L_4:
		mov     %cres_45, %res_17
		sub     %cres_45, 1
		cmp     %cres_45, 1
		jne     __L_7
__L_8:
		mov     %cnewVal_101, %argVal_8
		inc     %cnewVal_101
		mov     %alloca_7, %cnewVal_101
		jmp     __L_9
__L_7:
		mov     %cres_103, %cres_45
		sub     %cres_103, 1
		mov     rdi, %cres_103
		mov     rsi, %argVal_2
		mov     rdx, %argVal_6
		mov     rcx, %argVal_4
		mov     r8, %argVal_8
		call    cd
		mov     %cres_108, rax
		mov     rdi, %cres_103
		mov     rsi, %argVal_4
		mov     rdx, %argVal_2
		mov     rcx, %argVal_6
		mov     r8, %cres_108
		call    cd
		mov     %cres_115, rax
		mov     %cnewVal_118, %cres_115
		inc     %cnewVal_118
		mov     %alloca_7, %cnewVal_118
__L_9:
		mov     %varDef_228, %alloca_7
		mov     %cres_52, %res_17
		sub     %cres_52, 1
		cmp     %cres_52, 1
		jne     __L_10
__L_11:
		mov     %cnewVal_130, %varDef_228
		inc     %cnewVal_130
		mov     %alloca_4, %cnewVal_130
		jmp     __L_12
__L_10:
		mov     %cres_132, %cres_52
		sub     %cres_132, 1
		mov     rdi, %cres_132
		mov     rsi, %argVal_6
		mov     rdx, %argVal_4
		mov     rcx, %argVal_2
		mov     r8, %varDef_228
		call    cd
		mov     %cres_137, rax
		mov     rdi, %cres_132
		mov     rsi, %argVal_2
		mov     rdx, %argVal_6
		mov     rcx, %argVal_4
		mov     r8, %cres_137
		call    cd
		mov     %cres_144, rax
		mov     %cnewVal_147, %cres_144
		inc     %cnewVal_147
		mov     %alloca_4, %cnewVal_147
__L_12:
		mov     %varDef_240, %alloca_4
		mov     %cnewVal_60, %varDef_240
		inc     %cnewVal_60
		mov     %alloca_3, %cnewVal_60
__L_6:
		mov     %varDef_244, %alloca_3
		mov     %res_24, %argVal_0
		sub     %res_24, 1
		cmp     %res_24, 1
		jne     __L_13
__L_14:
		mov     %cnewVal_72, %varDef_244
		inc     %cnewVal_72
		mov     %alloca_2, %cnewVal_72
		jmp     __L_15
__L_13:
		mov     %cres_74, %res_24
		sub     %cres_74, 1
		cmp     %cres_74, 1
		jne     __L_16
__L_17:
		mov     %cnewVal_159, %varDef_244
		inc     %cnewVal_159
		mov     %alloca_1, %cnewVal_159
		jmp     __L_18
__L_16:
		mov     %cres_161, %cres_74
		sub     %cres_161, 1
		mov     rdi, %cres_161
		mov     rsi, %argVal_4
		mov     rdx, %argVal_2
		mov     rcx, %argVal_6
		mov     r8, %varDef_244
		call    cd
		mov     %cres_166, rax
		mov     rdi, %cres_161
		mov     rsi, %argVal_6
		mov     rdx, %argVal_4
		mov     rcx, %argVal_2
		mov     r8, %cres_166
		call    cd
		mov     %cres_173, rax
		mov     %cnewVal_176, %cres_173
		inc     %cnewVal_176
		mov     %alloca_1, %cnewVal_176
__L_18:
		mov     %varDef_274, %alloca_1
		mov     %cres_81, %res_24
		sub     %cres_81, 1
		cmp     %cres_81, 1
		jne     __L_19
__L_20:
		mov     %cnewVal_188, %varDef_274
		inc     %cnewVal_188
		mov     %alloca_5, %cnewVal_188
		jmp     __L_21
__L_19:
		mov     %cres_190, %cres_81
		sub     %cres_190, 1
		mov     rdi, %cres_190
		mov     rsi, %argVal_2
		mov     rdx, %argVal_6
		mov     rcx, %argVal_4
		mov     r8, %varDef_274
		call    cd
		mov     %cres_195, rax
		mov     rdi, %cres_190
		mov     rsi, %argVal_4
		mov     rdx, %argVal_2
		mov     rcx, %argVal_6
		mov     r8, %cres_195
		call    cd
		mov     %cres_202, rax
		mov     %cnewVal_205, %cres_202
		inc     %cnewVal_205
		mov     %alloca_5, %cnewVal_205
__L_21:
		mov     %varDef_286, %alloca_5
		mov     %cnewVal_89, %varDef_286
		inc     %cnewVal_89
		mov     %alloca_2, %cnewVal_89
__L_15:
		mov     %varDef_290, %alloca_2
		mov     %newVal_31, %varDef_290
		inc     %newVal_31
		mov     %alloca_6, %newVal_31
__L_3:
		mov     %varDef_306, %alloca_6
		mov     r14, %local_r14
		mov     rbx, %local_rbx
		mov     r12, %local_r12
		mov     r13, %local_r13
		mov     r15, %local_r15
		mov     rax, %varDef_306
		ret     

main:
		mov     %local_r14, r14
		mov     %local_rbx, rbx
		mov     %local_r12, r12
		mov     %local_r13, r13
		mov     %local_r15, r15
		call    __globalInit
		call    getInt
		mov     %res_4, rax
__L_22:
		cmp     %res_4, 1
		jne     __L_23
__L_24:
		mov     %alloca_10, 1
		jmp     __L_25
__L_23:
		mov     %cres_24, %res_4
		sub     %cres_24, 1
		cmp     %cres_24, 1
		jne     __L_26
__L_27:
		mov     %alloca_8, 1
		jmp     __L_28
__L_26:
		mov     %cres_53, %cres_24
		sub     %cres_53, 1
		mov     rdi, %cres_53
		mov     rsi, __str_0
		mov     rdx, __str_1
		mov     rcx, __str_2
		mov     r8, 0
		call    cd
		mov     %cres_58, rax
		mov     rdi, %cres_53
		mov     rsi, __str_2
		mov     rdx, __str_0
		mov     rcx, __str_1
		mov     r8, %cres_58
		call    cd
		mov     %cres_65, rax
		mov     %cnewVal_68, %cres_65
		inc     %cnewVal_68
		mov     %alloca_8, %cnewVal_68
__L_28:
		mov     %varDef_118, %alloca_8
		mov     %cres_31, %res_4
		sub     %cres_31, 1
		cmp     %cres_31, 1
		jne     __L_29
__L_30:
		mov     %cnewVal_80, %varDef_118
		inc     %cnewVal_80
		mov     %alloca_9, %cnewVal_80
		jmp     __L_31
__L_29:
		mov     %cres_82, %cres_31
		sub     %cres_82, 1
		mov     rdi, %cres_82
		mov     rsi, __str_1
		mov     rdx, __str_2
		mov     rcx, __str_0
		mov     r8, %varDef_118
		call    cd
		mov     %cres_87, rax
		mov     rdi, %cres_82
		mov     rsi, __str_0
		mov     rdx, __str_1
		mov     rcx, __str_2
		mov     r8, %cres_87
		call    cd
		mov     %cres_94, rax
		mov     %cnewVal_97, %cres_94
		inc     %cnewVal_97
		mov     %alloca_9, %cnewVal_97
__L_31:
		mov     %varDef_130, %alloca_9
		mov     %cnewVal_39, %varDef_130
		inc     %cnewVal_39
		mov     %alloca_10, %cnewVal_39
__L_25:
		mov     %varDef_134, %alloca_10
		mov     rdi, %varDef_134
		call    __printlnInt
		mov     r14, %local_r14
		mov     rbx, %local_rbx
		mov     r12, %local_r12
		mov     r13, %local_r13
		mov     r15, %local_r15
		mov     rax, 0
		ret     

SECTION .data

__str_0:
		dq      1
		db      41H, 00H

__str_1:
		dq      1
		db      42H, 00H

__str_2:
		dq      1
		db      43H, 00H

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


