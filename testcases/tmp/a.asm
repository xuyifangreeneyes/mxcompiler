default rel

global _N
global _head
global _targetx
global _targety
global _x
global _y
global _xlist
global _ylist
global _tail
global _ok
global _now
global _dx
global _dy
global _step
global _i
global _j
global __globalInit
global origin
global check
global addList
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
		sub     rsp, 32
		mov     qword [rbp - 8], r13
		mov     qword [rbp - 16], r14
		mov     qword [rbp - 24], r15
		mov     rdi, 96008
		call    malloc
		mov     r14, rax
		mov     qword [r14], 12000
		add     r14, 8
		mov     rdi, 96008
		call    malloc
		mov     r13, rax
		mov     qword [r13], 12000
		add     r13, 8
		mov     rdi, 72
		call    malloc
		mov     r15, rax
		mov     qword [r15], 8
		add     r15, 8
		mov     rdi, 80
		call    malloc
		mov     qword [rax], 9
		add     rax, 8
		mov     qword [rel _dx], r15
		mov     qword [rel _xlist], r14
		mov     qword [rel _ylist], r13
		mov     qword [rel _dy], rax
		mov     r13, qword [rbp - 8]
		mov     r14, qword [rbp - 16]
		mov     r15, qword [rbp - 24]
		mov     rsp, rbp
		pop     rbp
		ret     

origin:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 32
		mov     qword [rbp - 8], r13
		mov     qword [rbp - 16], r14
		mov     qword [rbp - 24], r15
		mov     r13, rdi
		mov     r15, qword [rel _j]
		mov     rdi, r13
		shl     rdi, 3
		add     rdi, 8
		call    malloc
		mov     qword [rax], r13
		mov     r14, rax
		add     r14, 8
		mov     rcx, r15
		mov     r15, 0
__L_1:
		cmp     r15, r13
		jge     __L_2
__L_3:
		mov     rdi, r13
		shl     rdi, 3
		add     rdi, 8
		call    malloc
		mov     qword [rax], r13
		add     rax, 8
		mov     rcx, r15
		shl     rcx, 3
		mov     r8, r14
		add     r8, rcx
		mov     qword [r8], rax
		mov     rcx, 0
__L_4:
		cmp     rcx, r13
		jge     __L_5
__L_6:
		mov     r8, r15
		shl     r8, 3
		mov     rdx, r14
		add     rdx, r8
		mov     rdx, qword [rdx]
		mov     r8, rcx
		shl     r8, 3
		add     rdx, r8
		mov     qword [rdx], 0
		inc     rcx
		jmp     __L_4
__L_5:
		inc     r15
		jmp     __L_1
__L_2:
		mov     qword [rel _tail], 0
		mov     qword [rel _i], r15
		mov     qword [rel _head], 0
		mov     qword [rel _step], r14
		mov     qword [rel _j], rcx
		mov     r13, qword [rbp - 8]
		mov     r14, qword [rbp - 16]
		mov     r15, qword [rbp - 24]
		mov     rsp, rbp
		pop     rbp
		ret     

check:
		push    rbp
		mov     rbp, rsp
		mov     rcx, qword [rel _N]
		cmp     rdi, rcx
		jge     __L_7
__L_8:
		cmp     rdi, 0
		jl      __L_7
__L_9:
		mov     rax, 1
		jmp     __L_10
__L_7:
		mov     rax, 0
__L_10:
		pop     rbp
		ret     

addList:
		push    rbp
		mov     rbp, rsp
		mov     qword [rbp - 8], r13
		mov     qword [rbp - 16], r14
		mov     qword [rbp - 24], r15
		mov     r13, qword [rel _step]
		mov     r10, qword [rel _targetx]
		mov     r14, qword [rel _ylist]
		mov     r9, qword [rel _xlist]
		mov     rcx, qword [rel _ok]
		mov     r11, qword [rel _targety]
		mov     r8, qword [rel _tail]
		mov     r15, qword [rel _N]
		mov     rax, qword [rel _now]
__L_11:
		cmp     rdi, r15
		jge     __L_12
__L_13:
		cmp     rdi, 0
		jl      __L_12
__L_14:
		mov     rdx, 1
		jmp     __L_15
__L_12:
		mov     rdx, 0
__L_15:
		cmp     rdx, 0
		je      __L_18
__L_16:
		cmp     rsi, r15
		jge     __L_19
__L_20:
		cmp     rsi, 0
		jl      __L_19
__L_21:
		mov     rdx, 1
		jmp     __L_22
__L_19:
		mov     rdx, 0
__L_22:
		cmp     rdx, 0
		je      __L_18
__L_23:
		mov     rdx, rdi
		shl     rdx, 3
		mov     r15, r13
		add     r15, rdx
		mov     r15, qword [r15]
		mov     rdx, rsi
		shl     rdx, 3
		add     r15, rdx
		mov     rdx, qword [r15]
		cmp     rdx, -1
		jne     __L_18
__L_25:
		inc     r8
		mov     rdx, r8
		shl     rdx, 3
		add     r9, rdx
		mov     qword [r9], rdi
		add     r14, rdx
		mov     qword [r14], rsi
		add     rax, 1
		mov     rdx, rdi
		shl     rdx, 3
		add     r13, rdx
		mov     r9, qword [r13]
		mov     rdx, rsi
		shl     rdx, 3
		add     r9, rdx
		mov     qword [r9], rax
		cmp     rdi, r10
		jne     __L_18
__L_27:
		cmp     rsi, r11
		jne     __L_18
__L_29:
		mov     rcx, 1
__L_18:
		mov     qword [rel _tail], r8
		mov     qword [rel _ok], rcx
		mov     r13, qword [rbp - 8]
		mov     r14, qword [rbp - 16]
		mov     r15, qword [rbp - 24]
		pop     rbp
		ret     

main:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 176
		mov     qword [rbp - 8], r13
		mov     qword [rbp - 16], r14
		mov     qword [rbp - 24], r15
		mov     qword [rbp - 32], rbx
		mov     qword [rbp - 40], r12
		mov     rcx, qword [rel _y]
		mov     qword [rbp - 48], rcx
		mov     rcx, qword [rel _x]
		mov     qword [rbp - 56], rcx
		mov     rcx, qword [rel _i]
		mov     qword [rbp - 64], rcx
		mov     r12, qword [rel _now]
		mov     r14, qword [rel _j]
		mov     r13, qword [rel _head]
		mov     rbx, qword [rel _ok]
		mov     r15, qword [rel _tail]
__L_31:
		mov     rdi, 96008
		call    malloc
		mov     qword [rax], 12000
		mov     qword [rbp - 72], rax
		add     qword [rbp - 72], 8
		mov     rdi, 96008
		call    malloc
		mov     qword [rax], 12000
		mov     qword [rbp - 80], rax
		add     qword [rbp - 80], 8
		mov     rdi, 72
		call    malloc
		mov     qword [rax], 8
		mov     qword [rbp - 88], rax
		add     qword [rbp - 88], 8
		mov     rdi, 80
		call    malloc
		mov     qword [rax], 9
		mov     qword [rbp - 96], rax
		add     qword [rbp - 96], 8
		mov     qword [rel _tail], r15
		mov     qword [rel _head], r13
		mov     qword [rel _j], r14
		mov     rcx, qword [rbp - 64]
		mov     qword [rel _i], rcx
		mov     rdi, 106
		call    origin
		mov     r15, qword [rel _j]
		mov     rcx, qword [rel _step]
		mov     qword [rbp - 104], rcx
		mov     r14, qword [rel _head]
		mov     r13, qword [rel _tail]
		call    getInt
		mov     qword [rbp - 112], rax
		mov     rcx, qword [rbp - 112]
		mov     qword [rbp - 120], rcx
		sub     qword [rbp - 120], 1
		mov     qword [rbp - 128], 0
		mov     r8, r15
__L_32:
		mov     rcx, qword [rbp - 112]
		cmp     qword [rbp - 128], rcx
		jge     __L_33
__L_34:
		mov     r8, 0
__L_35:
		cmp     r8, qword [rbp - 112]
		jge     __L_36
__L_37:
		mov     rdx, qword [rbp - 128]
		shl     rdx, 3
		mov     rcx, qword [rbp - 104]
		add     rcx, rdx
		mov     rdx, qword [rcx]
		mov     rcx, r8
		shl     rcx, 3
		add     rdx, rcx
		mov     qword [rdx], -1
		inc     r8
		jmp     __L_35
__L_36:
		mov     rcx, qword [rbp - 128]
		inc     rcx
		mov     qword [rbp - 128], rcx
		jmp     __L_32
__L_33:
		mov     rcx, qword [rbp - 88]
		add     rcx, 0
		mov     qword [rcx], -2
		mov     rcx, qword [rbp - 96]
		add     rcx, 0
		mov     qword [rcx], -1
		mov     rcx, qword [rbp - 88]
		add     rcx, 8
		mov     qword [rcx], -2
		mov     rcx, qword [rbp - 96]
		add     rcx, 8
		mov     qword [rcx], 1
		mov     rcx, qword [rbp - 88]
		add     rcx, 16
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 96]
		add     rcx, 16
		mov     qword [rcx], -1
		mov     rcx, qword [rbp - 88]
		add     rcx, 24
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 96]
		add     rcx, 24
		mov     qword [rcx], 1
		mov     rcx, qword [rbp - 88]
		add     rcx, 32
		mov     qword [rcx], -1
		mov     rcx, qword [rbp - 96]
		add     rcx, 32
		mov     qword [rcx], -2
		mov     rcx, qword [rbp - 88]
		add     rcx, 40
		mov     qword [rcx], -1
		mov     rcx, qword [rbp - 96]
		add     rcx, 40
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 88]
		add     rcx, 48
		mov     qword [rcx], 1
		mov     rcx, qword [rbp - 96]
		add     rcx, 48
		mov     qword [rcx], -2
		mov     rcx, qword [rbp - 88]
		add     rcx, 56
		mov     qword [rcx], 1
		mov     rcx, qword [rbp - 96]
		add     rcx, 56
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 48]
		mov     rax, qword [rbp - 56]
		mov     qword [rbp - 136], r14
		mov     r9, r12
__L_38:
		cmp     qword [rbp - 136], r13
		jle     __L_39
__L_40:
		mov     qword [rbp - 144], r8
		mov     r15, r9
		mov     r12, rax
		mov     r14, rcx
		jmp     __L_41
__L_39:
		mov     r8, qword [rbp - 136]
		shl     r8, 3
		mov     rcx, qword [rbp - 72]
		add     rcx, r8
		mov     r12, qword [rcx]
		mov     rcx, qword [rbp - 80]
		add     rcx, r8
		mov     rcx, qword [rcx]
		mov     r8, r12
		shl     r8, 3
		mov     rdx, qword [rbp - 104]
		add     rdx, r8
		mov     rdx, qword [rdx]
		mov     r8, rcx
		shl     r8, 3
		add     rdx, r8
		mov     r15, qword [rdx]
		mov     rdx, 0
__L_42:
		cmp     rdx, 8
		jge     __L_43
__L_44:
		mov     r8, rdx
		shl     r8, 3
		mov     r9, qword [rbp - 88]
		add     r9, r8
		mov     r9, qword [r9]
		mov     r10, r12
		add     r10, r9
		mov     r9, qword [rbp - 96]
		add     r9, r8
		mov     r8, qword [r9]
		mov     r11, rcx
		add     r11, r8
		cmp     r10, qword [rbp - 112]
		jge     __L_45
__L_46:
		cmp     r10, 0
		jl      __L_45
__L_47:
		mov     r8, 1
		jmp     __L_48
__L_45:
		mov     r8, 0
__L_48:
		cmp     r8, 0
		jne     __L_49
__L_50:
		mov     rsi, qword [rbp - 152]
		mov     rax, qword [rbp - 160]
		mov     r9, qword [rbp - 168]
		jmp     __L_51
__L_49:
		cmp     r11, qword [rbp - 112]
		jge     __L_52
__L_53:
		cmp     r11, 0
		jl      __L_52
__L_54:
		mov     r9, 1
		jmp     __L_55
__L_52:
		mov     r9, 0
__L_55:
		cmp     r9, 0
		jne     __L_56
__L_57:
		mov     rax, r9
		mov     rsi, r11
		jmp     __L_51
__L_56:
		mov     rax, r10
		shl     rax, 3
		mov     rsi, qword [rbp - 104]
		add     rsi, rax
		mov     rsi, qword [rsi]
		mov     rax, r11
		shl     rax, 3
		add     rsi, rax
		mov     rax, qword [rsi]
		cmp     rax, -1
		je      __L_58
__L_59:
		mov     rsi, r11
		mov     rax, r9
		jmp     __L_51
__L_58:
		inc     r13
		mov     rax, r13
		shl     rax, 3
		mov     rsi, qword [rbp - 72]
		add     rsi, rax
		mov     qword [rsi], r10
		mov     rsi, qword [rbp - 80]
		add     rsi, rax
		mov     qword [rsi], r11
		mov     rax, r15
		add     rax, 1
		mov     rsi, r10
		shl     rsi, 3
		mov     r14, qword [rbp - 104]
		add     r14, rsi
		mov     r14, qword [r14]
		mov     rsi, r11
		shl     rsi, 3
		add     r14, rsi
		mov     qword [r14], rax
		cmp     r10, qword [rbp - 120]
		je      __L_60
__L_61:
		mov     rax, r9
		mov     rsi, r11
		jmp     __L_51
__L_60:
		cmp     r11, qword [rbp - 120]
		je      __L_62
__L_63:
		mov     rax, r9
		mov     rsi, r11
		jmp     __L_51
__L_62:
		mov     rax, r9
		mov     rsi, r11
		mov     rbx, 1
__L_51:
		inc     rdx
		mov     qword [rbp - 152], rsi
		mov     qword [rbp - 160], rax
		mov     qword [rbp - 168], r9
		jmp     __L_42
__L_43:
		cmp     rbx, 1
		jne     __L_64
__L_65:
		mov     r14, rcx
		mov     qword [rbp - 144], rdx
		jmp     __L_41
__L_64:
		mov     r8, qword [rbp - 136]
		inc     r8
		mov     r9, r15
		mov     rax, r12
		mov     qword [rbp - 136], r8
		mov     r8, rdx
		jmp     __L_38
__L_41:
		cmp     rbx, 1
		jne     __L_66
__L_67:
		mov     r8, qword [rbp - 120]
		shl     r8, 3
		mov     rcx, qword [rbp - 104]
		add     rcx, r8
		mov     rcx, qword [rcx]
		add     rcx, r8
		mov     rdi, qword [rcx]
		call    __printlnInt
		jmp     __L_68
__L_66:
		mov     rdi, __str_0
		call    print
__L_68:
		mov     rcx, qword [rbp - 88]
		mov     qword [rel _dx], rcx
		mov     rcx, qword [rbp - 120]
		mov     qword [rel _targety], rcx
		mov     qword [rel _tail], r13
		mov     qword [rel _ok], rbx
		mov     rcx, qword [rbp - 72]
		mov     qword [rel _xlist], rcx
		mov     rcx, qword [rbp - 80]
		mov     qword [rel _ylist], rcx
		mov     rcx, qword [rbp - 136]
		mov     qword [rel _head], rcx
		mov     rcx, qword [rbp - 144]
		mov     qword [rel _j], rcx
		mov     qword [rel _now], r15
		mov     rcx, qword [rbp - 112]
		mov     qword [rel _N], rcx
		mov     rcx, qword [rbp - 120]
		mov     qword [rel _targetx], rcx
		mov     rcx, qword [rbp - 128]
		mov     qword [rel _i], rcx
		mov     qword [rel _x], r12
		mov     qword [rel _y], r14
		mov     rcx, qword [rbp - 96]
		mov     qword [rel _dy], rcx
		mov     r13, qword [rbp - 8]
		mov     r14, qword [rbp - 16]
		mov     r15, qword [rbp - 24]
		mov     rbx, qword [rbp - 32]
		mov     r12, qword [rbp - 40]
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     

SECTION .data

__str_0:
		dq      13
		db      6EH, 6FH, 20H, 73H, 6FH, 6CH, 75H, 74H, 69H, 6FH, 6EH, 21H, 0AH, 00H

SECTION .bss

_N:
		resb    8

_head:
		resb    8

_targetx:
		resb    8

_targety:
		resb    8

_x:
		resb    8

_y:
		resb    8

_xlist:
		resb    8

_ylist:
		resb    8

_tail:
		resb    8

_ok:
		resb    8

_now:
		resb    8

_dx:
		resb    8

_dy:
		resb    8

_step:
		resb    8

_i:
		resb    8

_j:
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


