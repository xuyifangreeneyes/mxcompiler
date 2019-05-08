default rel

global __globalInit
global func
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
		mov     %local_rbx, rbx
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_r15, r15
		mov     r12, %local_r12
		mov     rbx, %local_rbx
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r15, %local_r15
		ret     

func:
		mov     %local_r12, r12
		mov     %local_rbx, rbx
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_r15, r15
		mov     %argVal_0, rdi
		mov     %argVal_2, rsi
		mov     %argVal_4, rdx
		mov     %res_8, %argVal_0
		add     %res_8, %argVal_2
		mov     %res_10, %res_8
		add     %res_10, %argVal_4
		mov     %res_11, %res_10
		and     %res_11, 1073741823
		mov     r12, %local_r12
		mov     rbx, %local_rbx
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r15, %local_r15
		mov     rax, %res_11
		ret     

main:
		mov     %local_r12, r12
		mov     %local_rbx, rbx
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_r15, r15
		call    __globalInit
		call    getInt
		mov     %res_1, rax
		mov     %memberLength_6, %res_1
		shl     %memberLength_6, 3
		mov     %arrayLength_7, %memberLength_6
		add     %arrayLength_7, 8
		mov     rdi, %arrayLength_7
		call    malloc
		mov     %arrayPtr_5, rax
		mov     qword [%arrayPtr_5], %res_1
		mov     %arrayBase_8, %arrayPtr_5
		add     %arrayBase_8, 8
		mov     %arrayEndPos_9, %arrayBase_8
		add     %arrayEndPos_9, %memberLength_6
		mov     %varDef_171, %arrayBase_8
__L_1:
		cmp     %varDef_171, %arrayEndPos_9
		jge     __L_2
__L_3:
		mov     %memberLength_14, %res_1
		shl     %memberLength_14, 3
		mov     %arrayLength_15, %memberLength_14
		add     %arrayLength_15, 8
		mov     rdi, %arrayLength_15
		call    malloc
		mov     %arrayPtr_13, rax
		mov     qword [%arrayPtr_13], %res_1
		mov     %arrayBase_16, %arrayPtr_13
		add     %arrayBase_16, 8
		mov     qword [%varDef_171], %arrayBase_16
		mov     %pos_17, %varDef_171
		add     %pos_17, 8
		mov     %varDef_171, %pos_17
		jmp     __L_1
__L_2:
		mov     %memberLength_22, %res_1
		shl     %memberLength_22, 3
		mov     %arrayLength_23, %memberLength_22
		add     %arrayLength_23, 8
		mov     rdi, %arrayLength_23
		call    malloc
		mov     %arrayPtr_21, rax
		mov     qword [%arrayPtr_21], %res_1
		mov     %arrayBase_24, %arrayPtr_21
		add     %arrayBase_24, 8
		mov     %arrayEndPos_25, %arrayBase_24
		add     %arrayEndPos_25, %memberLength_22
		mov     %varDef_175, %arrayBase_24
__L_4:
		cmp     %varDef_175, %arrayEndPos_25
		jge     __L_5
__L_6:
		mov     %memberLength_30, %res_1
		shl     %memberLength_30, 3
		mov     %arrayLength_31, %memberLength_30
		add     %arrayLength_31, 8
		mov     rdi, %arrayLength_31
		call    malloc
		mov     %arrayPtr_29, rax
		mov     qword [%arrayPtr_29], %res_1
		mov     %arrayBase_32, %arrayPtr_29
		add     %arrayBase_32, 8
		mov     qword [%varDef_175], %arrayBase_32
		mov     %pos_33, %varDef_175
		add     %pos_33, 8
		mov     %varDef_175, %pos_33
		jmp     __L_4
__L_5:
		mov     %memberLength_38, %res_1
		shl     %memberLength_38, 3
		mov     %arrayLength_39, %memberLength_38
		add     %arrayLength_39, 8
		mov     rdi, %arrayLength_39
		call    malloc
		mov     %arrayPtr_37, rax
		mov     qword [%arrayPtr_37], %res_1
		mov     %arrayBase_40, %arrayPtr_37
		add     %arrayBase_40, 8
		mov     %arrayEndPos_41, %arrayBase_40
		add     %arrayEndPos_41, %memberLength_38
		mov     %varDef_179, %arrayBase_40
__L_7:
		cmp     %varDef_179, %arrayEndPos_41
		jge     __L_8
__L_9:
		mov     %memberLength_46, %res_1
		shl     %memberLength_46, 3
		mov     %arrayLength_47, %memberLength_46
		add     %arrayLength_47, 8
		mov     rdi, %arrayLength_47
		call    malloc
		mov     %arrayPtr_45, rax
		mov     qword [%arrayPtr_45], %res_1
		mov     %arrayBase_48, %arrayPtr_45
		add     %arrayBase_48, 8
		mov     qword [%varDef_179], %arrayBase_48
		mov     %pos_49, %varDef_179
		add     %pos_49, 8
		mov     %varDef_179, %pos_49
		jmp     __L_7
__L_8:
		mov     %varDef_183, 0
__L_10:
		cmp     %varDef_183, %res_1
		jge     __L_11
__L_12:
		mov     %varDef_186, 0
__L_13:
		cmp     %varDef_186, %res_1
		jge     __L_14
__L_15:
		mov     %res_61, %varDef_183
		add     %res_61, %varDef_186
		mov     %offset_64, %varDef_183
		shl     %offset_64, 3
		mov     %elementAddr_65, %arrayBase_8
		add     %elementAddr_65, %offset_64
		mov     %arrayBase_66, qword [%elementAddr_65]
		mov     %offset_68, %varDef_186
		shl     %offset_68, 3
		mov     %elementAddr_69, %arrayBase_66
		add     %elementAddr_69, %offset_68
		mov     qword [%elementAddr_69], %res_61
		mov     %newVal_72, %varDef_186
		inc     %newVal_72
		mov     %varDef_186, %newVal_72
		jmp     __L_13
__L_14:
		mov     %newVal_75, %varDef_183
		inc     %newVal_75
		mov     %varDef_183, %newVal_75
		jmp     __L_10
__L_11:
		mov     %varDef_190, 0
__L_16:
		cmp     %varDef_190, %res_1
		jge     __L_17
__L_18:
		mov     %varDef_198, 0
__L_19:
		cmp     %varDef_198, %res_1
		jge     __L_20
__L_21:
		cmp     %varDef_198, %varDef_190
		jge     __L_22
__L_23:
		mov     %varDef_216, %varDef_200
		mov     %varDef_218, %varDef_202
		mov     %varDef_215, %varDef_199
		mov     %varDef_217, %varDef_201
		mov     %varDef_219, %varDef_203
		jmp     __L_24
__L_22:
		mov     %varDef_208, %varDef_202
		mov     %varDef_206, %varDef_200
		mov     %varDef_207, %varDef_201
		mov     %varDef_209, %varDef_203
		mov     %varDef_205, 0
__L_25:
		cmp     %varDef_205, %res_1
		jl      __L_26
__L_27:
		mov     %varDef_216, %varDef_206
		mov     %varDef_215, %varDef_205
		mov     %varDef_219, %varDef_209
		mov     %varDef_217, %varDef_207
		mov     %varDef_218, %varDef_208
		jmp     __L_24
__L_26:
		mov     %offset_91, %varDef_190
		shl     %offset_91, 3
		mov     %elementAddr_92, %arrayBase_24
		add     %elementAddr_92, %offset_91
		mov     %arrayBase_93, qword [%elementAddr_92]
		mov     %offset_95, %varDef_198
		shl     %offset_95, 3
		mov     %elementAddr_96, %arrayBase_93
		add     %elementAddr_96, %offset_95
		mov     %elementVal_97, qword [%elementAddr_96]
		mov     %elementAddr_101, %arrayBase_8
		add     %elementAddr_101, %offset_91
		mov     %arrayBase_102, qword [%elementAddr_101]
		mov     %offset_104, %varDef_205
		shl     %offset_104, 3
		mov     %elementAddr_105, %arrayBase_102
		add     %elementAddr_105, %offset_104
		mov     %elementVal_106, qword [%elementAddr_105]
		mov     %elementAddr_110, %arrayBase_8
		add     %elementAddr_110, %offset_104
		mov     %arrayBase_111, qword [%elementAddr_110]
		mov     %elementAddr_114, %arrayBase_111
		add     %elementAddr_114, %offset_95
		mov     %elementVal_115, qword [%elementAddr_114]
		mov     %cres_165, %elementVal_97
		add     %cres_165, %elementVal_106
		mov     %cres_167, %cres_165
		add     %cres_167, %elementVal_115
		mov     %cres_168, %cres_167
		and     %cres_168, 1073741823
		mov     %arrayBase_120, qword [%elementAddr_92]
		mov     %elementAddr_123, %arrayBase_120
		add     %elementAddr_123, %offset_95
		mov     qword [%elementAddr_123], %cres_168
		mov     %newVal_126, %varDef_205
		inc     %newVal_126
		mov     %varDef_208, %elementVal_106
		mov     %varDef_207, %elementVal_115
		mov     %varDef_205, %newVal_126
		mov     %varDef_209, %elementVal_97
		mov     %varDef_206, %cres_168
		jmp     __L_25
__L_24:
		mov     %newVal_129, %varDef_198
		inc     %newVal_129
		mov     %varDef_198, %newVal_129
		mov     %varDef_203, %varDef_219
		mov     %varDef_200, %varDef_216
		mov     %varDef_201, %varDef_217
		mov     %varDef_199, %varDef_215
		mov     %varDef_202, %varDef_218
		jmp     __L_19
__L_20:
		mov     %newVal_132, %varDef_190
		inc     %newVal_132
		mov     %varDef_190, %newVal_132
		jmp     __L_16
__L_17:
		mov     %varDef_224, 0
		mov     %varDef_226, 0
__L_28:
		cmp     %varDef_224, %res_1
		jge     __L_29
__L_30:
		mov     %varDef_228, 0
		mov     %varDef_229, %varDef_226
__L_31:
		cmp     %varDef_228, %res_1
		jge     __L_32
__L_33:
		mov     %offset_143, %varDef_224
		shl     %offset_143, 3
		mov     %elementAddr_144, %arrayBase_24
		add     %elementAddr_144, %offset_143
		mov     %arrayBase_145, qword [%elementAddr_144]
		mov     %offset_147, %varDef_228
		shl     %offset_147, 3
		mov     %elementAddr_148, %arrayBase_145
		add     %elementAddr_148, %offset_147
		mov     %elementVal_149, qword [%elementAddr_148]
		mov     %res_150, %varDef_229
		add     %res_150, %elementVal_149
		mov     %res_151, %res_150
		and     %res_151, 1073741823
		mov     %newVal_154, %varDef_228
		inc     %newVal_154
		mov     %varDef_228, %newVal_154
		mov     %varDef_229, %res_151
		jmp     __L_31
__L_32:
		mov     %newVal_157, %varDef_224
		inc     %newVal_157
		mov     %varDef_226, %varDef_229
		mov     %varDef_224, %newVal_157
		jmp     __L_28
__L_29:
		mov     rdi, %varDef_226
		call    __printInt
		mov     r12, %local_r12
		mov     rbx, %local_rbx
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r15, %local_r15
		mov     rax, 0
		ret     

SECTION .data

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


