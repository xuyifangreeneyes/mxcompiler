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
		mov     %local_r12, r12
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     qword [rel _total], 0
		mov     r12, %local_r12
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		ret     

main:
		mov     %local_r12, r12
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		call    __globalInit
		mov     %tmp_173, qword [rel _total]
		call    getInt
		mov     %res_6, rax
		mov     %alloca_11, 1
		mov     %alloca_10, 0
		mov     %alloca_9, 0
		mov     %alloca_8, 0
		mov     %alloca_7, 0
		mov     %alloca_6, %tmp_173
__L_1:
		mov     %varDef_180, %alloca_11
		mov     %varDef_182, %alloca_10
		mov     %varDef_183, %alloca_9
		mov     %varDef_184, %alloca_8
		mov     %varDef_185, %alloca_7
		mov     %varDef_186, %alloca_6
		cmp     %varDef_180, %res_6
		jg      __L_2
__L_3:
		mov     %alloca_17, 1
		mov     %alloca_16, %varDef_182
		mov     %alloca_15, %varDef_183
		mov     %alloca_14, %varDef_184
		mov     %alloca_13, %varDef_185
		mov     %alloca_12, %varDef_186
__L_4:
		mov     %varDef_188, %alloca_17
		mov     %varDef_189, %alloca_16
		mov     %varDef_190, %alloca_15
		mov     %varDef_191, %alloca_14
		mov     %varDef_192, %alloca_13
		mov     %varDef_193, %alloca_12
		cmp     %varDef_188, %res_6
		jg      __L_5
__L_6:
		mov     %alloca_26, 1
		mov     %alloca_25, %varDef_190
		mov     %alloca_24, %varDef_191
		mov     %alloca_23, %varDef_192
		mov     %alloca_22, %varDef_193
__L_7:
		mov     %varDef_195, %alloca_26
		mov     %varDef_196, %alloca_25
		mov     %varDef_197, %alloca_24
		mov     %varDef_198, %alloca_23
		mov     %varDef_199, %alloca_22
		cmp     %varDef_195, %res_6
		jg      __L_8
__L_9:
		mov     %alloca_21, 1
		mov     %alloca_20, %varDef_197
		mov     %alloca_19, %varDef_198
		mov     %alloca_18, %varDef_199
__L_10:
		mov     %varDef_201, %alloca_21
		mov     %varDef_202, %alloca_20
		mov     %varDef_203, %alloca_19
		mov     %varDef_204, %alloca_18
		cmp     %varDef_201, %res_6
		jg      __L_11
__L_12:
		mov     %alloca_5, 1
		mov     %alloca_4, %varDef_203
		mov     %alloca_3, %varDef_204
__L_13:
		mov     %varDef_206, %alloca_5
		mov     %varDef_207, %alloca_4
		mov     %varDef_208, %alloca_3
		cmp     %varDef_206, %res_6
		jg      __L_14
__L_15:
		mov     %alloca_2, 1
		mov     %alloca_1, %varDef_208
__L_16:
		mov     %varDef_210, %alloca_2
		mov     %varDef_211, %alloca_1
		cmp     %varDef_210, %res_6
		jg      __L_17
__L_18:
		cmp     %varDef_180, %varDef_188
		jne     __L_19
__L_20:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_19:
		cmp     %varDef_180, %varDef_195
		jne     __L_22
__L_23:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_22:
		cmp     %varDef_180, %varDef_201
		jne     __L_24
__L_25:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_24:
		cmp     %varDef_180, %varDef_206
		jne     __L_26
__L_27:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_26:
		cmp     %varDef_180, %varDef_210
		jne     __L_28
__L_29:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_28:
		cmp     %varDef_180, 99
		jne     __L_30
__L_31:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_30:
		cmp     %varDef_180, 100
		jne     __L_32
__L_33:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_32:
		cmp     %varDef_180, 101
		jne     __L_34
__L_35:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_34:
		cmp     %varDef_180, 102
		jne     __L_36
__L_37:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_36:
		cmp     %varDef_188, %varDef_195
		jne     __L_38
__L_39:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_38:
		cmp     %varDef_188, %varDef_201
		jne     __L_40
__L_41:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_40:
		cmp     %varDef_188, %varDef_206
		jne     __L_42
__L_43:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_42:
		cmp     %varDef_188, %varDef_210
		jne     __L_44
__L_45:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_44:
		cmp     %varDef_188, 99
		jne     __L_46
__L_47:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_46:
		cmp     %varDef_188, 100
		jne     __L_48
__L_49:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_48:
		cmp     %varDef_188, 101
		jne     __L_50
__L_51:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_50:
		cmp     %varDef_188, 102
		jne     __L_52
__L_53:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_52:
		cmp     %varDef_195, %varDef_201
		jne     __L_54
__L_55:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_54:
		cmp     %varDef_195, %varDef_206
		jne     __L_56
__L_57:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_56:
		cmp     %varDef_195, %varDef_210
		jne     __L_58
__L_59:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_58:
		cmp     %varDef_195, 99
		jne     __L_60
__L_61:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_60:
		cmp     %varDef_195, 100
		jne     __L_62
__L_63:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_62:
		cmp     %varDef_195, 101
		jne     __L_64
__L_65:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_64:
		cmp     %varDef_195, 102
		jne     __L_66
__L_67:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_66:
		cmp     %varDef_201, %varDef_206
		jne     __L_68
__L_69:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_68:
		cmp     %varDef_201, %varDef_210
		jne     __L_70
__L_71:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_70:
		cmp     %varDef_201, 99
		jne     __L_72
__L_73:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_72:
		cmp     %varDef_201, 100
		jne     __L_74
__L_75:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_74:
		cmp     %varDef_201, 101
		jne     __L_76
__L_77:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_76:
		cmp     %varDef_201, 102
		jne     __L_78
__L_79:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_78:
		cmp     %varDef_206, %varDef_210
		jne     __L_80
__L_81:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_80:
		cmp     %varDef_206, 99
		jne     __L_82
__L_83:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_82:
		cmp     %varDef_206, 100
		jne     __L_84
__L_85:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_84:
		cmp     %varDef_206, 101
		jne     __L_86
__L_87:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_86:
		cmp     %varDef_206, 102
		jne     __L_88
__L_89:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_88:
		cmp     %varDef_210, 99
		jne     __L_90
__L_91:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_90:
		cmp     %varDef_210, 100
		jne     __L_92
__L_93:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_92:
		cmp     %varDef_210, 101
		jne     __L_94
__L_95:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_94:
		cmp     %varDef_210, 102
		jne     __L_96
__L_97:
		mov     %alloca_27, %varDef_211
		jmp     __L_21
__L_96:
		mov     %newVal_150, %varDef_211
		inc     %newVal_150
		mov     %alloca_27, %newVal_150
__L_21:
		mov     %varDef_213, %alloca_27
		mov     %newVal_153, %varDef_210
		inc     %newVal_153
		mov     %alloca_2, %newVal_153
		mov     %alloca_1, %varDef_213
		jmp     __L_16
__L_17:
		mov     %newVal_156, %varDef_206
		inc     %newVal_156
		mov     %alloca_5, %newVal_156
		mov     %alloca_4, %varDef_210
		mov     %alloca_3, %varDef_211
		jmp     __L_13
__L_14:
		mov     %newVal_159, %varDef_201
		inc     %newVal_159
		mov     %alloca_21, %newVal_159
		mov     %alloca_20, %varDef_206
		mov     %alloca_19, %varDef_207
		mov     %alloca_18, %varDef_208
		jmp     __L_10
__L_11:
		mov     %newVal_162, %varDef_195
		inc     %newVal_162
		mov     %alloca_26, %newVal_162
		mov     %alloca_25, %varDef_201
		mov     %alloca_24, %varDef_202
		mov     %alloca_23, %varDef_203
		mov     %alloca_22, %varDef_204
		jmp     __L_7
__L_8:
		mov     %newVal_165, %varDef_188
		inc     %newVal_165
		mov     %alloca_17, %newVal_165
		mov     %alloca_16, %varDef_195
		mov     %alloca_15, %varDef_196
		mov     %alloca_14, %varDef_197
		mov     %alloca_13, %varDef_198
		mov     %alloca_12, %varDef_199
		jmp     __L_4
__L_5:
		mov     %newVal_168, %varDef_180
		inc     %newVal_168
		mov     %alloca_11, %newVal_168
		mov     %alloca_10, %varDef_189
		mov     %alloca_9, %varDef_190
		mov     %alloca_8, %varDef_191
		mov     %alloca_7, %varDef_192
		mov     %alloca_6, %varDef_193
		jmp     __L_1
__L_2:
		mov     rdi, %varDef_186
		call    __printlnInt
		mov     qword [rel _N], %res_6
		mov     qword [rel _total], %varDef_186
		mov     r12, %local_r12
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     rax, 0
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


