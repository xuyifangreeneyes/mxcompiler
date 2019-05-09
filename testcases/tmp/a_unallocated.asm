default rel

global _i
global _a0
global _a1
global _a2
global _a3
global _a4
global _a5
global _a6
global _a7
global _a8
global _a9
global _a10
global _b0
global _b1
global _b2
global _b3
global _b4
global _b5
global _b6
global _b7
global _b8
global _b9
global _b10
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
		mov     %local_r13, r13
		mov     %local_r15, r15
		mov     %local_rbx, rbx
		mov     %local_r12, r12
		mov     %local_r14, r14
		mov     qword [rel _a7], 0
		mov     qword [rel _b1], 0
		mov     qword [rel _a1], 0
		mov     qword [rel _a0], 0
		mov     qword [rel _b3], 0
		mov     qword [rel _b6], 0
		mov     qword [rel _b4], 0
		mov     qword [rel _i], 0
		mov     qword [rel _a8], 0
		mov     qword [rel _b2], 0
		mov     qword [rel _b8], 0
		mov     qword [rel _b10], 0
		mov     qword [rel _a10], 0
		mov     qword [rel _b5], 0
		mov     qword [rel _a3], 0
		mov     qword [rel _a9], 0
		mov     qword [rel _a5], 0
		mov     qword [rel _b0], 0
		mov     qword [rel _b9], 0
		mov     qword [rel _a4], 0
		mov     qword [rel _a2], 0
		mov     qword [rel _a6], 0
		mov     qword [rel _b7], 0
		mov     r13, %local_r13
		mov     r15, %local_r15
		mov     rbx, %local_rbx
		mov     r12, %local_r12
		mov     r14, %local_r14
		ret     

main:
		mov     %local_r13, r13
		mov     %local_r15, r15
		mov     %local_rbx, rbx
		mov     %local_r12, r12
		mov     %local_r14, r14
__L_1:
		call    getInt
		mov     %res_2, rax
		mov     %varDef_221, 0
		mov     %varDef_217, 0
		mov     %varDef_213, 0
		mov     %varDef_219, 0
		mov     %varDef_209, 0
		mov     %varDef_218, 0
		mov     %varDef_214, 0
		mov     %varDef_211, 0
		mov     %varDef_210, 0
__L_2:
		cmp     %varDef_217, %res_2
		jge     __L_3
__L_4:
		mov     %res_7, %varDef_213
		add     %res_7, 1
		mov     %res_9, %varDef_211
		add     %res_9, 1
		mov     %res_11, %varDef_219
		add     %res_11, 1
		mov     %res_13, %res_7
		add     %res_13, 1
		mov     %res_15, %res_9
		add     %res_15, 1
		mov     %res_17, %res_11
		add     %res_17, 1
		mov     %res_27, %res_9
		add     %res_27, 0
		mov     rax, %varDef_217
		cdq     
		mov     %divisor_1, 10000000
		idiv    %divisor_1d
		mov     %res_40, rdx
		cmp     %res_40, 0
		je      __L_5
__L_6:
		mov     %varDef_256, %varDef_209
		jmp     __L_7
__L_5:
		mov     %res_44, %varDef_209
		add     %res_44, %res_7
		mov     %res_46, %res_44
		add     %res_46, %res_9
		mov     %res_48, %res_46
		add     %res_48, %res_11
		mov     %res_50, %res_48
		add     %res_50, %res_13
		mov     %res_52, %res_50
		add     %res_52, %res_15
		mov     %res_54, %res_52
		add     %res_54, %res_17
		mov     %res_56, %res_54
		add     %res_56, %res_13
		mov     %res_58, %res_56
		add     %res_58, %res_15
		mov     %res_60, %res_58
		add     %res_60, %res_17
		mov     %res_62, %res_60
		add     %res_62, %res_13
		mov     %res_64, %res_62
		add     %res_64, %res_27
		mov     %res_66, %res_64
		add     %res_66, %res_7
		mov     %res_68, %res_66
		add     %res_68, %res_9
		mov     %res_70, %res_68
		add     %res_70, %res_11
		mov     %res_72, %res_70
		add     %res_72, %res_13
		mov     %res_74, %res_72
		add     %res_74, %res_15
		mov     %res_76, %res_74
		add     %res_76, %res_17
		mov     %res_78, %res_76
		add     %res_78, %res_13
		mov     %res_80, %res_78
		add     %res_80, %res_15
		mov     %res_82, %res_80
		add     %res_82, %res_17
		mov     %res_84, %res_82
		add     %res_84, %res_13
		mov     %res_86, %res_84
		add     %res_86, %res_27
		mov     %res_87, %res_86
		and     %res_87, 2147450879
		mov     %varDef_256, %res_87
__L_7:
		mov     %res_89, %varDef_217
		add     %res_89, 1
		mov     %varDef_214, %res_13
		mov     %varDef_218, %res_17
		mov     %varDef_213, %res_7
		mov     %varDef_211, %res_9
		mov     %varDef_217, %res_89
		mov     %varDef_219, %res_11
		mov     %varDef_221, %res_27
		mov     %varDef_209, %varDef_256
		mov     %varDef_210, %res_15
		jmp     __L_2
__L_3:
		mov     rdi, %varDef_209
		call    __printlnInt
		mov     qword [rel _a7], %varDef_210
		mov     qword [rel _b1], %varDef_211
		mov     qword [rel _a1], %varDef_211
		mov     qword [rel _a0], %varDef_213
		mov     qword [rel _b3], %varDef_214
		mov     qword [rel _b6], %varDef_214
		mov     qword [rel _b4], %varDef_210
		mov     qword [rel _i], %varDef_217
		mov     qword [rel _a8], %varDef_218
		mov     qword [rel _b2], %varDef_219
		mov     qword [rel _b8], %varDef_218
		mov     qword [rel _b10], %varDef_221
		mov     qword [rel _a10], %varDef_221
		mov     qword [rel _b5], %varDef_218
		mov     qword [rel _a3], %varDef_214
		mov     qword [rel _a9], %varDef_214
		mov     qword [rel _a5], %varDef_218
		mov     qword [rel _b0], %varDef_213
		mov     qword [rel _b9], %varDef_214
		mov     qword [rel _a4], %varDef_210
		mov     qword [rel _a2], %varDef_219
		mov     qword [rel _a6], %varDef_214
		mov     qword [rel _b7], %varDef_210
		mov     r13, %local_r13
		mov     r15, %local_r15
		mov     rbx, %local_rbx
		mov     r12, %local_r12
		mov     r14, %local_r14
		mov     rax, 0
		ret     

SECTION .data

SECTION .bss

_i:
		resb    8

_a0:
		resb    8

_a1:
		resb    8

_a2:
		resb    8

_a3:
		resb    8

_a4:
		resb    8

_a5:
		resb    8

_a6:
		resb    8

_a7:
		resb    8

_a8:
		resb    8

_a9:
		resb    8

_a10:
		resb    8

_b0:
		resb    8

_b1:
		resb    8

_b2:
		resb    8

_b3:
		resb    8

_b4:
		resb    8

_b5:
		resb    8

_b6:
		resb    8

_b7:
		resb    8

_b8:
		resb    8

_b9:
		resb    8

_b10:
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


