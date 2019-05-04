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
		push    rbp
		mov     rbp, rsp
		pop     rbp
		ret

func:
		push    rbp
		mov     rbp, rsp
		add     rdi, rsi
		add     rdi, rdx
		and     rdi, 1073741823
		mov     rax, rdi
		pop     rbp
		ret

main:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 48
		mov     qword [rbp - 8], r12
		mov     qword [rbp - 16], rbx
		mov     qword [rbp - 24], r15
		mov     qword [rbp - 32], r14
		mov     qword [rbp - 40], r13
		call    __globalInit
		call    getInt
		mov     rbx, rax
		mov     r13, rbx
		shl     r13, 3
		add     r13, 8
		mov     rdi, r13
		call    malloc
		mov     r14, rax
		mov     qword [r14], rbx
		mov     r12, r14
		add     r12, r13
		mov     r13, r14
		add     r13, 8
__L_1:
		cmp     r13, r12
		jge     __L_2
__L_3:
		mov     rdi, rbx
		shl     rdi, 3
		add     rdi, 8
		call    malloc
		mov     qword [rax], rbx
		mov     qword [r13], rax
		add     r13, 8
		jmp     __L_1
__L_2:
		mov     r13, rbx
		shl     r13, 3
		add     r13, 8
		mov     rdi, r13
		call    malloc
		mov     r12, rax
		mov     qword [r12], rbx
		mov     r15, r12
		add     r15, r13
		mov     r13, r12
		add     r13, 8
__L_4:
		cmp     r13, r15
		jge     __L_5
__L_6:
		mov     rdi, rbx
		shl     rdi, 3
		add     rdi, 8
		call    malloc
		mov     qword [rax], rbx
		mov     qword [r13], rax
		add     r13, 8
		jmp     __L_4
__L_5:
		mov     r13, rbx
		shl     r13, 3
		add     r13, 8
		mov     rdi, r13
		call    malloc
		mov     qword [rax], rbx
		mov     r15, rax
		add     r15, r13
		add     rax, 8
__L_7:
		mov     r13, rax
		cmp     r13, r15
		jge     __L_8
__L_9:
		mov     rdi, rbx
		shl     rdi, 3
		add     rdi, 8
		call    malloc
		mov     qword [rax], rbx
		mov     qword [r13], rax
		mov     rax, r13
		add     rax, 8
		jmp     __L_7
__L_8:
		mov     rcx, 0
__L_10:
		cmp     rcx, rbx
		jge     __L_11
__L_12:
		mov     rax, 0
__L_13:
		cmp     rax, rbx
		jge     __L_14
__L_15:
		mov     r8, rcx
		add     r8, rax
		mov     rdx, r14
		add     rdx, 8
		mov     r9, rcx
		shl     r9, 3
		add     rdx, r9
		mov     rdx, qword [rdx]
		add     rdx, 8
		mov     r9, rax
		shl     r9, 3
		add     rdx, r9
		mov     qword [rdx], r8
		inc     rax
		jmp     __L_13
__L_14:
		inc     rcx
		jmp     __L_10
__L_11:
		mov     rdx, 0
		mov     r9, 0
		mov     rax, 0
		mov     rcx, 0
		mov     rsi, 0
		mov     r8, 0
__L_16:
		mov     r10, rdx
		cmp     r10, rbx
		jge     __L_17
__L_18:
		mov     rdx, 0
__L_19:
		cmp     rdx, rbx
		jge     __L_20
__L_21:
		mov     r9, 0
__L_22:
		cmp     r9, rbx
		jge     __L_23
__L_24:
		cmp     rdx, r10
		jl      __L_27
__L_25:
		mov     r11, r12
		add     r11, 8
		mov     rcx, r10
		shl     rcx, 3
		add     r11, rcx
		mov     r8, qword [r11]
		add     r8, 8
		mov     r13, rdx
		shl     r13, 3
		add     r8, r13
		mov     r8, qword [r8]
		mov     rax, r14
		add     rax, 8
		mov     rsi, rax
		add     rsi, rcx
		mov     rcx, qword [rsi]
		add     rcx, 8
		mov     rdi, r9
		shl     rdi, 3
		add     rcx, rdi
		mov     rsi, qword [rcx]
		add     rax, rdi
		mov     rcx, qword [rax]
		add     rcx, 8
		add     rcx, r13
		mov     rcx, qword [rcx]
		mov     rax, r8
		add     rax, rsi
		add     rax, rcx
		and     rax, 1073741823
		mov     r11, qword [r11]
		add     r11, 8
		add     r11, r13
		mov     qword [r11], rax
__L_27:
		inc     r9
		jmp     __L_22
__L_23:
		inc     rdx
		jmp     __L_19
__L_20:
		mov     rdx, r10
		inc     rdx
		jmp     __L_16
__L_17:
		mov     rcx, 0
		mov     rdi, 0
__L_28:
		cmp     rcx, rbx
		jge     __L_29
__L_30:
		mov     r9, 0
__L_31:
		cmp     r9, rbx
		jge     __L_32
__L_33:
		mov     r8, r12
		add     r8, 8
		mov     rdx, rcx
		shl     rdx, 3
		add     r8, rdx
		mov     r8, qword [r8]
		add     r8, 8
		mov     rdx, r9
		shl     rdx, 3
		add     r8, rdx
		mov     r8, qword [r8]
		add     rdi, r8
		and     rdi, 1073741823
		inc     r9
		jmp     __L_31
__L_32:
		inc     rcx
		jmp     __L_28
__L_29:
		call    __printInt
		mov     r12, qword [rbp - 8]
		mov     rbx, qword [rbp - 16]
		mov     r15, qword [rbp - 24]
		mov     r14, qword [rbp - 32]
		mov     r13, qword [rbp - 40]
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
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


