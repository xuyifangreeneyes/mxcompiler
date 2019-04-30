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
		mov     %local_r12, r12
		mov     %local_r13, r13
		mov     %local_r15, r15
		mov     %local_r14, r14
		mov     %local_rbx, rbx
		mov     qword [rel _total], 0
		mov     r12, %local_r12
		mov     r13, %local_r13
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     rbx, %local_rbx
		ret     

main:
		mov     %local_r12, r12
		mov     %local_r13, r13
		mov     %local_r15, r15
		mov     %local_r14, r14
		mov     %local_rbx, rbx
		call    _globalInit
		mov     %tmp_173, qword [rel _total]
		call    getInt
		mov     %res_6, rax
		mov     %alloca_6, 1
		mov     %alloca_5, 0
		mov     %alloca_4, 0
		mov     %alloca_3, 0
		mov     %alloca_2, 0
		mov     %alloca_1, %tmp_173
__L_1:
		mov     %varDef_181, %alloca_6
		mov     %varDef_183, %alloca_5
		mov     %varDef_184, %alloca_4
		mov     %varDef_185, %alloca_3
		mov     %varDef_186, %alloca_2
		mov     %varDef_187, %alloca_1
		cmp     %varDef_181, %res_6
		jg      __L_2
__L_3:
		mov     %alloca_18, 1
		mov     %alloca_17, %varDef_183
		mov     %alloca_16, %varDef_184
		mov     %alloca_15, %varDef_185
		mov     %alloca_14, %varDef_186
		mov     %alloca_13, %varDef_187
__L_4:
		mov     %varDef_189, %alloca_18
		mov     %varDef_190, %alloca_17
		mov     %varDef_191, %alloca_16
		mov     %varDef_192, %alloca_15
		mov     %varDef_193, %alloca_14
		mov     %varDef_194, %alloca_13
		cmp     %varDef_189, %res_6
		jg      __L_5
__L_6:
		mov     %alloca_12, 1
		mov     %alloca_11, %varDef_191
		mov     %alloca_10, %varDef_192
		mov     %alloca_9, %varDef_193
		mov     %alloca_8, %varDef_194
__L_7:
		mov     %varDef_196, %alloca_12
		mov     %varDef_197, %alloca_11
		mov     %varDef_198, %alloca_10
		mov     %varDef_199, %alloca_9
		mov     %varDef_200, %alloca_8
		cmp     %varDef_196, %res_6
		jg      __L_8
__L_9:
		mov     %alloca_22, 1
		mov     %alloca_21, %varDef_198
		mov     %alloca_20, %varDef_199
		mov     %alloca_19, %varDef_200
__L_10:
		mov     %varDef_202, %alloca_22
		mov     %varDef_203, %alloca_21
		mov     %varDef_204, %alloca_20
		mov     %varDef_205, %alloca_19
		cmp     %varDef_202, %res_6
		jg      __L_11
__L_12:
		mov     %alloca_27, 1
		mov     %alloca_26, %varDef_204
		mov     %alloca_25, %varDef_205
__L_13:
		mov     %varDef_207, %alloca_27
		mov     %varDef_208, %alloca_26
		mov     %varDef_209, %alloca_25
		cmp     %varDef_207, %res_6
		jg      __L_14
__L_15:
		mov     %alloca_24, 1
		mov     %alloca_23, %varDef_209
__L_16:
		mov     %varDef_211, %alloca_24
		mov     %varDef_212, %alloca_23
		cmp     %varDef_211, %res_6
		jg      __L_17
__L_18:
		cmp     %varDef_181, %varDef_189
		jne     __L_19
__L_20:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_19:
		cmp     %varDef_181, %varDef_196
		jne     __L_22
__L_23:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_22:
		cmp     %varDef_181, %varDef_202
		jne     __L_24
__L_25:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_24:
		cmp     %varDef_181, %varDef_207
		jne     __L_26
__L_27:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_26:
		cmp     %varDef_181, %varDef_211
		jne     __L_28
__L_29:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_28:
		cmp     %varDef_181, 99
		jne     __L_30
__L_31:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_30:
		cmp     %varDef_181, 100
		jne     __L_32
__L_33:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_32:
		cmp     %varDef_181, 101
		jne     __L_34
__L_35:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_34:
		cmp     %varDef_181, 102
		jne     __L_36
__L_37:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_36:
		cmp     %varDef_189, %varDef_196
		jne     __L_38
__L_39:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_38:
		cmp     %varDef_189, %varDef_202
		jne     __L_40
__L_41:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_40:
		cmp     %varDef_189, %varDef_207
		jne     __L_42
__L_43:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_42:
		cmp     %varDef_189, %varDef_211
		jne     __L_44
__L_45:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_44:
		cmp     %varDef_189, 99
		jne     __L_46
__L_47:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_46:
		cmp     %varDef_189, 100
		jne     __L_48
__L_49:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_48:
		cmp     %varDef_189, 101
		jne     __L_50
__L_51:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_50:
		cmp     %varDef_189, 102
		jne     __L_52
__L_53:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_52:
		cmp     %varDef_196, %varDef_202
		jne     __L_54
__L_55:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_54:
		cmp     %varDef_196, %varDef_207
		jne     __L_56
__L_57:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_56:
		cmp     %varDef_196, %varDef_211
		jne     __L_58
__L_59:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_58:
		cmp     %varDef_196, 99
		jne     __L_60
__L_61:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_60:
		cmp     %varDef_196, 100
		jne     __L_62
__L_63:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_62:
		cmp     %varDef_196, 101
		jne     __L_64
__L_65:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_64:
		cmp     %varDef_196, 102
		jne     __L_66
__L_67:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_66:
		cmp     %varDef_202, %varDef_207
		jne     __L_68
__L_69:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_68:
		cmp     %varDef_202, %varDef_211
		jne     __L_70
__L_71:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_70:
		cmp     %varDef_202, 99
		jne     __L_72
__L_73:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_72:
		cmp     %varDef_202, 100
		jne     __L_74
__L_75:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_74:
		cmp     %varDef_202, 101
		jne     __L_76
__L_77:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_76:
		cmp     %varDef_202, 102
		jne     __L_78
__L_79:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_78:
		cmp     %varDef_207, %varDef_211
		jne     __L_80
__L_81:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_80:
		cmp     %varDef_207, 99
		jne     __L_82
__L_83:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_82:
		cmp     %varDef_207, 100
		jne     __L_84
__L_85:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_84:
		cmp     %varDef_207, 101
		jne     __L_86
__L_87:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_86:
		cmp     %varDef_207, 102
		jne     __L_88
__L_89:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_88:
		cmp     %varDef_211, 99
		jne     __L_90
__L_91:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_90:
		cmp     %varDef_211, 100
		jne     __L_92
__L_93:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_92:
		cmp     %varDef_211, 101
		jne     __L_94
__L_95:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_94:
		cmp     %varDef_211, 102
		jne     __L_96
__L_97:
		mov     %alloca_7, %varDef_212
		jmp     __L_21
__L_96:
		mov     %newVal_150, %varDef_212
		inc     %newVal_150
		mov     %alloca_7, %newVal_150
__L_21:
		mov     %varDef_214, %alloca_7
		mov     %newVal_153, %varDef_211
		inc     %newVal_153
		mov     %alloca_24, %newVal_153
		mov     %alloca_23, %varDef_214
		jmp     __L_16
__L_17:
		mov     %newVal_156, %varDef_207
		inc     %newVal_156
		mov     %alloca_27, %newVal_156
		mov     %alloca_26, %varDef_211
		mov     %alloca_25, %varDef_212
		jmp     __L_13
__L_14:
		mov     %newVal_159, %varDef_202
		inc     %newVal_159
		mov     %alloca_22, %newVal_159
		mov     %alloca_21, %varDef_207
		mov     %alloca_20, %varDef_208
		mov     %alloca_19, %varDef_209
		jmp     __L_10
__L_11:
		mov     %newVal_162, %varDef_196
		inc     %newVal_162
		mov     %alloca_12, %newVal_162
		mov     %alloca_11, %varDef_202
		mov     %alloca_10, %varDef_203
		mov     %alloca_9, %varDef_204
		mov     %alloca_8, %varDef_205
		jmp     __L_7
__L_8:
		mov     %newVal_165, %varDef_189
		inc     %newVal_165
		mov     %alloca_18, %newVal_165
		mov     %alloca_17, %varDef_196
		mov     %alloca_16, %varDef_197
		mov     %alloca_15, %varDef_198
		mov     %alloca_14, %varDef_199
		mov     %alloca_13, %varDef_200
		jmp     __L_4
__L_5:
		mov     %newVal_168, %varDef_181
		inc     %newVal_168
		mov     %alloca_6, %newVal_168
		mov     %alloca_5, %varDef_190
		mov     %alloca_4, %varDef_191
		mov     %alloca_3, %varDef_192
		mov     %alloca_2, %varDef_193
		mov     %alloca_1, %varDef_194
		jmp     __L_1
__L_2:
		mov     rdi, %varDef_187
		call    toString
		mov     %res_169, rax
		mov     rdi, %res_169
		call    println
		mov     qword [rel _total], %varDef_187
		mov     qword [rel _N], %res_6
		mov     r12, %local_r12
		mov     r13, %local_r13
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     rbx, %local_rbx
		mov     rax, 0
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


