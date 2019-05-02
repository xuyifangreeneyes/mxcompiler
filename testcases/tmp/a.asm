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
		push    rbp
		mov     rbp, rsp
		mov     rsp, rbp
		pop     rbp
		ret     

cd:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 48
		mov     qword [rbp - 8], r14
		mov     qword [rbp - 16], rbx
		mov     qword [rbp - 24], r12
		mov     qword [rbp - 32], r13
		mov     qword [rbp - 40], r15
		mov     qword [rbp - 48], rdi
		mov     r12, rsi
		mov     r13, rdx
		mov     r14, rcx
		cmp     qword [rbp - 48], 1
		jne     __L_1
__L_2:
		inc     r8
		jmp     __L_3
__L_1:
		mov     rbx, qword [rbp - 48]
		sub     rbx, 1
		cmp     rbx, 1
		jne     __L_4
__L_5:
		inc     r8
		jmp     __L_6
__L_4:
		mov     r15, rbx
		sub     r15, 1
		cmp     r15, 1
		jne     __L_7
__L_8:
		inc     r8
		jmp     __L_9
__L_7:
		sub     r15, 1
		mov     rdi, r15
		mov     rsi, r12
		mov     rdx, r14
		mov     rcx, r13
		call    cd
		mov     r8, rax
		mov     rdi, r15
		mov     rsi, r13
		mov     rdx, r12
		mov     rcx, r14
		call    cd
		mov     r8, rax
		inc     r8
__L_9:
		sub     rbx, 1
		cmp     rbx, 1
		jne     __L_10
__L_11:
		inc     r8
		jmp     __L_12
__L_10:
		sub     rbx, 1
		mov     rdi, rbx
		mov     rsi, r14
		mov     rdx, r13
		mov     rcx, r12
		call    cd
		mov     r8, rax
		mov     rdi, rbx
		mov     rsi, r12
		mov     rdx, r14
		mov     rcx, r13
		call    cd
		mov     r8, rax
		inc     r8
__L_12:
		inc     r8
__L_6:
		mov     rbx, qword [rbp - 48]
		sub     rbx, 1
		cmp     rbx, 1
		jne     __L_13
__L_14:
		inc     r8
		jmp     __L_15
__L_13:
		mov     r15, rbx
		sub     r15, 1
		cmp     r15, 1
		jne     __L_16
__L_17:
		inc     r8
		jmp     __L_18
__L_16:
		sub     r15, 1
		mov     rdi, r15
		mov     rsi, r13
		mov     rdx, r12
		mov     rcx, r14
		call    cd
		mov     r8, rax
		mov     rdi, r15
		mov     rsi, r14
		mov     rdx, r13
		mov     rcx, r12
		call    cd
		mov     r8, rax
		inc     r8
__L_18:
		sub     rbx, 1
		cmp     rbx, 1
		jne     __L_19
__L_20:
		inc     r8
		jmp     __L_21
__L_19:
		sub     rbx, 1
		mov     rdi, rbx
		mov     rsi, r12
		mov     rdx, r14
		mov     rcx, r13
		call    cd
		mov     r8, rax
		mov     rdi, rbx
		mov     rsi, r13
		mov     rdx, r12
		mov     rcx, r14
		call    cd
		mov     r8, rax
		inc     r8
__L_21:
		inc     r8
__L_15:
		inc     r8
__L_3:
		mov     rax, r8
		mov     r14, qword [rbp - 8]
		mov     rbx, qword [rbp - 16]
		mov     r12, qword [rbp - 24]
		mov     r13, qword [rbp - 32]
		mov     r15, qword [rbp - 40]
		mov     rsp, rbp
		pop     rbp
		ret     

main:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 16
		mov     qword [rbp - 8], r14
		mov     qword [rbp - 16], rbx
		call    __globalInit
		call    getInt
		mov     rbx, rax
__L_22:
		cmp     rbx, 1
		jne     __L_23
__L_24:
		mov     rax, 1
		jmp     __L_25
__L_23:
		mov     r14, rbx
		sub     r14, 1
		cmp     r14, 1
		jne     __L_26
__L_27:
		mov     rax, 1
		jmp     __L_28
__L_26:
		sub     r14, 1
		mov     rdi, r14
		mov     rsi, __str_0
		mov     rdx, __str_1
		mov     rcx, __str_2
		mov     r8, 0
		call    cd
		mov     r8, rax
		mov     rdi, r14
		mov     rsi, __str_2
		mov     rdx, __str_0
		mov     rcx, __str_1
		call    cd
		inc     rax
__L_28:
		sub     rbx, 1
		cmp     rbx, 1
		jne     __L_29
__L_30:
		inc     rax
		jmp     __L_31
__L_29:
		sub     rbx, 1
		mov     rdi, rbx
		mov     rsi, __str_1
		mov     rdx, __str_2
		mov     rcx, __str_0
		mov     r8, rax
		call    cd
		mov     r8, rax
		mov     rdi, rbx
		mov     rsi, __str_0
		mov     rdx, __str_1
		mov     rcx, __str_2
		call    cd
		inc     rax
__L_31:
		inc     rax
__L_25:
		mov     rdi, rax
		call    __printlnInt
		mov     r14, qword [rbp - 8]
		mov     rbx, qword [rbp - 16]
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
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


