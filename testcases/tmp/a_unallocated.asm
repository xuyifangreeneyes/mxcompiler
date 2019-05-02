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
		mov     %local_r12, r12
		mov     %local_r15, r15
		mov     %local_r13, r13
		mov     %local_rbx, rbx
		mov     r14, %local_r14
		mov     r12, %local_r12
		mov     r15, %local_r15
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		ret     

cd:
		mov     %local_r14, r14
		mov     %local_r12, r12
		mov     %local_r15, r15
		mov     %local_r13, r13
		mov     %local_rbx, rbx
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
		mov     %alloca_15, %newVal_14
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
		mov     %alloca_5, %cnewVal_101
		jmp     __L_9
__L_7:
		mov     %cres_103, %cres_45
		sub     %cres_103, 1
		cmp     %cres_103, 1
		jne     __L_10
__L_11:
		mov     %cnewVal_217, %argVal_8
		inc     %cnewVal_217
		mov     %alloca_4, %cnewVal_217
		jmp     __L_12
__L_10:
		mov     %cres_219, %cres_103
		sub     %cres_219, 1
		mov     rdi, %cres_219
		mov     rsi, %argVal_2
		mov     rdx, %argVal_4
		mov     rcx, %argVal_6
		mov     r8, %argVal_8
		call    cd
		mov     %cres_224, rax
		mov     rdi, %cres_219
		mov     rsi, %argVal_6
		mov     rdx, %argVal_2
		mov     rcx, %argVal_4
		mov     r8, %cres_224
		call    cd
		mov     %cres_231, rax
		mov     %cnewVal_234, %cres_231
		inc     %cnewVal_234
		mov     %alloca_4, %cnewVal_234
__L_12:
		mov     %varDef_466, %alloca_4
		mov     %cres_110, %cres_45
		sub     %cres_110, 1
		cmp     %cres_110, 1
		jne     __L_13
__L_14:
		mov     %cnewVal_246, %varDef_466
		inc     %cnewVal_246
		mov     %alloca_2, %cnewVal_246
		jmp     __L_15
__L_13:
		mov     %cres_248, %cres_110
		sub     %cres_248, 1
		mov     rdi, %cres_248
		mov     rsi, %argVal_4
		mov     rdx, %argVal_6
		mov     rcx, %argVal_2
		mov     r8, %varDef_466
		call    cd
		mov     %cres_253, rax
		mov     rdi, %cres_248
		mov     rsi, %argVal_2
		mov     rdx, %argVal_4
		mov     rcx, %argVal_6
		mov     r8, %cres_253
		call    cd
		mov     %cres_260, rax
		mov     %cnewVal_263, %cres_260
		inc     %cnewVal_263
		mov     %alloca_2, %cnewVal_263
__L_15:
		mov     %varDef_478, %alloca_2
		mov     %cnewVal_118, %varDef_478
		inc     %cnewVal_118
		mov     %alloca_5, %cnewVal_118
__L_9:
		mov     %varDef_482, %alloca_5
		mov     %cres_52, %res_17
		sub     %cres_52, 1
		cmp     %cres_52, 1
		jne     __L_16
__L_17:
		mov     %cnewVal_130, %varDef_482
		inc     %cnewVal_130
		mov     %alloca_1, %cnewVal_130
		jmp     __L_18
__L_16:
		mov     %cres_132, %cres_52
		sub     %cres_132, 1
		cmp     %cres_132, 1
		jne     __L_19
__L_20:
		mov     %cnewVal_275, %varDef_482
		inc     %cnewVal_275
		mov     %alloca_14, %cnewVal_275
		jmp     __L_21
__L_19:
		mov     %cres_277, %cres_132
		sub     %cres_277, 1
		mov     rdi, %cres_277
		mov     rsi, %argVal_6
		mov     rdx, %argVal_2
		mov     rcx, %argVal_4
		mov     r8, %varDef_482
		call    cd
		mov     %cres_282, rax
		mov     rdi, %cres_277
		mov     rsi, %argVal_4
		mov     rdx, %argVal_6
		mov     rcx, %argVal_2
		mov     r8, %cres_282
		call    cd
		mov     %cres_289, rax
		mov     %cnewVal_292, %cres_289
		inc     %cnewVal_292
		mov     %alloca_14, %cnewVal_292
__L_21:
		mov     %varDef_512, %alloca_14
		mov     %cres_139, %cres_52
		sub     %cres_139, 1
		cmp     %cres_139, 1
		jne     __L_22
__L_23:
		mov     %cnewVal_304, %varDef_512
		inc     %cnewVal_304
		mov     %alloca_7, %cnewVal_304
		jmp     __L_24
__L_22:
		mov     %cres_306, %cres_139
		sub     %cres_306, 1
		mov     rdi, %cres_306
		mov     rsi, %argVal_2
		mov     rdx, %argVal_4
		mov     rcx, %argVal_6
		mov     r8, %varDef_512
		call    cd
		mov     %cres_311, rax
		mov     rdi, %cres_306
		mov     rsi, %argVal_6
		mov     rdx, %argVal_2
		mov     rcx, %argVal_4
		mov     r8, %cres_311
		call    cd
		mov     %cres_318, rax
		mov     %cnewVal_321, %cres_318
		inc     %cnewVal_321
		mov     %alloca_7, %cnewVal_321
__L_24:
		mov     %varDef_524, %alloca_7
		mov     %cnewVal_147, %varDef_524
		inc     %cnewVal_147
		mov     %alloca_1, %cnewVal_147
__L_18:
		mov     %varDef_528, %alloca_1
		mov     %cnewVal_60, %varDef_528
		inc     %cnewVal_60
		mov     %alloca_3, %cnewVal_60
__L_6:
		mov     %varDef_544, %alloca_3
		mov     %res_24, %argVal_0
		sub     %res_24, 1
		cmp     %res_24, 1
		jne     __L_25
__L_26:
		mov     %cnewVal_72, %varDef_544
		inc     %cnewVal_72
		mov     %alloca_6, %cnewVal_72
		jmp     __L_27
__L_25:
		mov     %cres_74, %res_24
		sub     %cres_74, 1
		cmp     %cres_74, 1
		jne     __L_28
__L_29:
		mov     %cnewVal_159, %varDef_544
		inc     %cnewVal_159
		mov     %alloca_9, %cnewVal_159
		jmp     __L_30
__L_28:
		mov     %cres_161, %cres_74
		sub     %cres_161, 1
		cmp     %cres_161, 1
		jne     __L_31
__L_32:
		mov     %cnewVal_333, %varDef_544
		inc     %cnewVal_333
		mov     %alloca_11, %cnewVal_333
		jmp     __L_33
__L_31:
		mov     %cres_335, %cres_161
		sub     %cres_335, 1
		mov     rdi, %cres_335
		mov     rsi, %argVal_4
		mov     rdx, %argVal_6
		mov     rcx, %argVal_2
		mov     r8, %varDef_544
		call    cd
		mov     %cres_340, rax
		mov     rdi, %cres_335
		mov     rsi, %argVal_2
		mov     rdx, %argVal_4
		mov     rcx, %argVal_6
		mov     r8, %cres_340
		call    cd
		mov     %cres_347, rax
		mov     %cnewVal_350, %cres_347
		inc     %cnewVal_350
		mov     %alloca_11, %cnewVal_350
__L_33:
		mov     %varDef_604, %alloca_11
		mov     %cres_168, %cres_74
		sub     %cres_168, 1
		cmp     %cres_168, 1
		jne     __L_34
__L_35:
		mov     %cnewVal_362, %varDef_604
		inc     %cnewVal_362
		mov     %alloca_13, %cnewVal_362
		jmp     __L_36
__L_34:
		mov     %cres_364, %cres_168
		sub     %cres_364, 1
		mov     rdi, %cres_364
		mov     rsi, %argVal_6
		mov     rdx, %argVal_2
		mov     rcx, %argVal_4
		mov     r8, %varDef_604
		call    cd
		mov     %cres_369, rax
		mov     rdi, %cres_364
		mov     rsi, %argVal_4
		mov     rdx, %argVal_6
		mov     rcx, %argVal_2
		mov     r8, %cres_369
		call    cd
		mov     %cres_376, rax
		mov     %cnewVal_379, %cres_376
		inc     %cnewVal_379
		mov     %alloca_13, %cnewVal_379
__L_36:
		mov     %varDef_616, %alloca_13
		mov     %cnewVal_176, %varDef_616
		inc     %cnewVal_176
		mov     %alloca_9, %cnewVal_176
__L_30:
		mov     %varDef_620, %alloca_9
		mov     %cres_81, %res_24
		sub     %cres_81, 1
		cmp     %cres_81, 1
		jne     __L_37
__L_38:
		mov     %cnewVal_188, %varDef_620
		inc     %cnewVal_188
		mov     %alloca_8, %cnewVal_188
		jmp     __L_39
__L_37:
		mov     %cres_190, %cres_81
		sub     %cres_190, 1
		cmp     %cres_190, 1
		jne     __L_40
__L_41:
		mov     %cnewVal_391, %varDef_620
		inc     %cnewVal_391
		mov     %alloca_10, %cnewVal_391
		jmp     __L_42
__L_40:
		mov     %cres_393, %cres_190
		sub     %cres_393, 1
		mov     rdi, %cres_393
		mov     rsi, %argVal_2
		mov     rdx, %argVal_4
		mov     rcx, %argVal_6
		mov     r8, %varDef_620
		call    cd
		mov     %cres_398, rax
		mov     rdi, %cres_393
		mov     rsi, %argVal_6
		mov     rdx, %argVal_2
		mov     rcx, %argVal_4
		mov     r8, %cres_398
		call    cd
		mov     %cres_405, rax
		mov     %cnewVal_408, %cres_405
		inc     %cnewVal_408
		mov     %alloca_10, %cnewVal_408
__L_42:
		mov     %varDef_650, %alloca_10
		mov     %cres_197, %cres_81
		sub     %cres_197, 1
		cmp     %cres_197, 1
		jne     __L_43
__L_44:
		mov     %cnewVal_420, %varDef_650
		inc     %cnewVal_420
		mov     %alloca_12, %cnewVal_420
		jmp     __L_45
__L_43:
		mov     %cres_422, %cres_197
		sub     %cres_422, 1
		mov     rdi, %cres_422
		mov     rsi, %argVal_4
		mov     rdx, %argVal_6
		mov     rcx, %argVal_2
		mov     r8, %varDef_650
		call    cd
		mov     %cres_427, rax
		mov     rdi, %cres_422
		mov     rsi, %argVal_2
		mov     rdx, %argVal_4
		mov     rcx, %argVal_6
		mov     r8, %cres_427
		call    cd
		mov     %cres_434, rax
		mov     %cnewVal_437, %cres_434
		inc     %cnewVal_437
		mov     %alloca_12, %cnewVal_437
__L_45:
		mov     %varDef_662, %alloca_12
		mov     %cnewVal_205, %varDef_662
		inc     %cnewVal_205
		mov     %alloca_8, %cnewVal_205
__L_39:
		mov     %varDef_666, %alloca_8
		mov     %cnewVal_89, %varDef_666
		inc     %cnewVal_89
		mov     %alloca_6, %cnewVal_89
__L_27:
		mov     %varDef_682, %alloca_6
		mov     %newVal_31, %varDef_682
		inc     %newVal_31
		mov     %alloca_15, %newVal_31
__L_3:
		mov     %varDef_722, %alloca_15
		mov     r14, %local_r14
		mov     r12, %local_r12
		mov     r15, %local_r15
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		mov     rax, %varDef_722
		ret     

main:
		mov     %local_r14, r14
		mov     %local_r12, r12
		mov     %local_r15, r15
		mov     %local_r13, r13
		mov     %local_rbx, rbx
		call    __globalInit
		call    getInt
		mov     %res_4, rax
__L_46:
		cmp     %res_4, 1
		jne     __L_47
__L_48:
		mov     %alloca_17, 1
		jmp     __L_49
__L_47:
		mov     %cres_24, %res_4
		sub     %cres_24, 1
		cmp     %cres_24, 1
		jne     __L_50
__L_51:
		mov     %alloca_16, 1
		jmp     __L_52
__L_50:
		mov     %cres_53, %cres_24
		sub     %cres_53, 1
		cmp     %cres_53, 1
		jne     __L_53
__L_54:
		mov     %alloca_22, 1
		jmp     __L_55
__L_53:
		mov     %cres_111, %cres_53
		sub     %cres_111, 1
		mov     rdi, %cres_111
		mov     rsi, __str_0
		mov     rdx, __str_2
		mov     rcx, __str_1
		mov     r8, 0
		call    cd
		mov     %cres_116, rax
		mov     rdi, %cres_111
		mov     rsi, __str_1
		mov     rdx, __str_0
		mov     rcx, __str_2
		mov     r8, %cres_116
		call    cd
		mov     %cres_123, rax
		mov     %cnewVal_126, %cres_123
		inc     %cnewVal_126
		mov     %alloca_22, %cnewVal_126
__L_55:
		mov     %varDef_240, %alloca_22
		mov     %cres_60, %cres_24
		sub     %cres_60, 1
		cmp     %cres_60, 1
		jne     __L_56
__L_57:
		mov     %cnewVal_138, %varDef_240
		inc     %cnewVal_138
		mov     %alloca_18, %cnewVal_138
		jmp     __L_58
__L_56:
		mov     %cres_140, %cres_60
		sub     %cres_140, 1
		mov     rdi, %cres_140
		mov     rsi, __str_2
		mov     rdx, __str_1
		mov     rcx, __str_0
		mov     r8, %varDef_240
		call    cd
		mov     %cres_145, rax
		mov     rdi, %cres_140
		mov     rsi, __str_0
		mov     rdx, __str_2
		mov     rcx, __str_1
		mov     r8, %cres_145
		call    cd
		mov     %cres_152, rax
		mov     %cnewVal_155, %cres_152
		inc     %cnewVal_155
		mov     %alloca_18, %cnewVal_155
__L_58:
		mov     %varDef_252, %alloca_18
		mov     %cnewVal_68, %varDef_252
		inc     %cnewVal_68
		mov     %alloca_16, %cnewVal_68
__L_52:
		mov     %varDef_256, %alloca_16
		mov     %cres_31, %res_4
		sub     %cres_31, 1
		cmp     %cres_31, 1
		jne     __L_59
__L_60:
		mov     %cnewVal_80, %varDef_256
		inc     %cnewVal_80
		mov     %alloca_19, %cnewVal_80
		jmp     __L_61
__L_59:
		mov     %cres_82, %cres_31
		sub     %cres_82, 1
		cmp     %cres_82, 1
		jne     __L_62
__L_63:
		mov     %cnewVal_167, %varDef_256
		inc     %cnewVal_167
		mov     %alloca_21, %cnewVal_167
		jmp     __L_64
__L_62:
		mov     %cres_169, %cres_82
		sub     %cres_169, 1
		mov     rdi, %cres_169
		mov     rsi, __str_1
		mov     rdx, __str_0
		mov     rcx, __str_2
		mov     r8, %varDef_256
		call    cd
		mov     %cres_174, rax
		mov     rdi, %cres_169
		mov     rsi, __str_2
		mov     rdx, __str_1
		mov     rcx, __str_0
		mov     r8, %cres_174
		call    cd
		mov     %cres_181, rax
		mov     %cnewVal_184, %cres_181
		inc     %cnewVal_184
		mov     %alloca_21, %cnewVal_184
__L_64:
		mov     %varDef_286, %alloca_21
		mov     %cres_89, %cres_31
		sub     %cres_89, 1
		cmp     %cres_89, 1
		jne     __L_65
__L_66:
		mov     %cnewVal_196, %varDef_286
		inc     %cnewVal_196
		mov     %alloca_20, %cnewVal_196
		jmp     __L_67
__L_65:
		mov     %cres_198, %cres_89
		sub     %cres_198, 1
		mov     rdi, %cres_198
		mov     rsi, __str_0
		mov     rdx, __str_2
		mov     rcx, __str_1
		mov     r8, %varDef_286
		call    cd
		mov     %cres_203, rax
		mov     rdi, %cres_198
		mov     rsi, __str_1
		mov     rdx, __str_0
		mov     rcx, __str_2
		mov     r8, %cres_203
		call    cd
		mov     %cres_210, rax
		mov     %cnewVal_213, %cres_210
		inc     %cnewVal_213
		mov     %alloca_20, %cnewVal_213
__L_67:
		mov     %varDef_298, %alloca_20
		mov     %cnewVal_97, %varDef_298
		inc     %cnewVal_97
		mov     %alloca_19, %cnewVal_97
__L_61:
		mov     %varDef_302, %alloca_19
		mov     %cnewVal_39, %varDef_302
		inc     %cnewVal_39
		mov     %alloca_17, %cnewVal_39
__L_49:
		mov     %varDef_318, %alloca_17
		mov     rdi, %varDef_318
		call    __printlnInt
		mov     r14, %local_r14
		mov     r12, %local_r12
		mov     r15, %local_r15
		mov     r13, %local_r13
		mov     rbx, %local_rbx
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


