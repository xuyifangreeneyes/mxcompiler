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
		mov     qword [rbp - 8], r12
		mov     qword [rbp - 16], rbx
		mov     qword [rbp - 24], r14
		mov     rdi, 96008
		call    malloc
		mov     rbx, rax
		mov     qword [rbx], 12000
		add     rbx, 8
		mov     rdi, 96008
		call    malloc
		mov     r12, rax
		mov     qword [r12], 12000
		add     r12, 8
		mov     rdi, 72
		call    malloc
		mov     r14, rax
		mov     qword [r14], 8
		add     r14, 8
		mov     rdi, 80
		call    malloc
		mov     qword [rax], 9
		add     rax, 8
		mov     qword [rel _dx], r14
		mov     qword [rel _xlist], rbx
		mov     qword [rel _ylist], r12
		mov     qword [rel _dy], rax
		mov     r12, qword [rbp - 8]
		mov     rbx, qword [rbp - 16]
		mov     r14, qword [rbp - 24]
		mov     rsp, rbp
		pop     rbp
		ret     

origin:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 32
		mov     qword [rbp - 8], r12
		mov     qword [rbp - 16], rbx
		mov     qword [rbp - 24], r14
		mov     rbx, rdi
		mov     r14, qword [rel _j]
		mov     rdi, rbx
		shl     rdi, 3
		add     rdi, 8
		call    malloc
		mov     qword [rax], rbx
		mov     r12, rax
		add     r12, 8
		mov     r8, 0
		mov     rcx, r14
__L_1:
		mov     r14, r8
		cmp     r14, rbx
		jge     __L_2
__L_3:
		mov     rdi, rbx
		shl     rdi, 3
		add     rdi, 8
		call    malloc
		mov     qword [rax], rbx
		add     rax, 8
		mov     rcx, r14
		shl     rcx, 3
		mov     r8, r12
		add     r8, rcx
		mov     qword [r8], rax
		mov     rcx, 0
__L_4:
		cmp     rcx, rbx
		jge     __L_5
__L_6:
		mov     r8, r14
		shl     r8, 3
		mov     rdx, r12
		add     rdx, r8
		mov     rdx, qword [rdx]
		mov     r8, rcx
		shl     r8, 3
		add     rdx, r8
		mov     qword [rdx], 0
		inc     rcx
		jmp     __L_4
__L_5:
		mov     r8, r14
		inc     r8
		jmp     __L_1
__L_2:
		mov     qword [rel _tail], 0
		mov     qword [rel _i], r14
		mov     qword [rel _head], 0
		mov     qword [rel _step], r12
		mov     qword [rel _j], rcx
		mov     r12, qword [rbp - 8]
		mov     rbx, qword [rbp - 16]
		mov     r14, qword [rbp - 24]
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
		mov     qword [rbp - 8], r12
		mov     qword [rbp - 16], rbx
		mov     qword [rbp - 24], r14
		mov     r12, qword [rel _step]
		mov     rbx, qword [rel _targetx]
		mov     r10, qword [rel _ylist]
		mov     r9, qword [rel _xlist]
		mov     rcx, qword [rel _ok]
		mov     r11, qword [rel _targety]
		mov     r8, qword [rel _tail]
		mov     r14, qword [rel _N]
		mov     rax, qword [rel _now]
__L_11:
		cmp     rdi, r14
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
		cmp     rsi, r14
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
		mov     r14, r12
		add     r14, rdx
		mov     r14, qword [r14]
		mov     rdx, rsi
		shl     rdx, 3
		add     r14, rdx
		mov     rdx, qword [r14]
		cmp     rdx, -1
		jne     __L_18
__L_25:
		inc     r8
		mov     rdx, r8
		shl     rdx, 3
		add     r9, rdx
		mov     qword [r9], rdi
		add     r10, rdx
		mov     qword [r10], rsi
		add     rax, 1
		mov     rdx, rdi
		shl     rdx, 3
		add     r12, rdx
		mov     r9, qword [r12]
		mov     rdx, rsi
		shl     rdx, 3
		add     r9, rdx
		mov     qword [r9], rax
		cmp     rdi, rbx
		jne     __L_18
__L_27:
		cmp     rsi, r11
		jne     __L_18
__L_29:
		mov     rcx, 1
__L_18:
		mov     qword [rel _tail], r8
		mov     qword [rel _ok], rcx
		mov     r12, qword [rbp - 8]
		mov     rbx, qword [rbp - 16]
		mov     r14, qword [rbp - 24]
		pop     rbp
		ret     

main:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 208
		mov     qword [rbp - 8], r12
		mov     qword [rbp - 16], rbx
		mov     qword [rbp - 24], r14
		mov     qword [rbp - 32], r15
		mov     qword [rbp - 40], r13
		call    __globalInit
		mov     rcx, qword [rel _dy]
		mov     qword [rbp - 48], rcx
		mov     rcx, qword [rel _y]
		mov     qword [rbp - 56], rcx
		mov     r12, qword [rel _x]
		mov     r14, qword [rel _now]
		mov     rbx, qword [rel _j]
		mov     rcx, qword [rel _ylist]
		mov     qword [rbp - 64], rcx
		mov     rcx, qword [rel _xlist]
		mov     qword [rbp - 72], rcx
		mov     r13, qword [rel _ok]
		mov     rcx, qword [rel _dx]
		mov     qword [rbp - 80], rcx
__L_31:
		mov     rdi, 856
		call    malloc
		mov     qword [rax], 106
		mov     qword [rbp - 88], rax
		add     qword [rbp - 88], 8
		mov     r15, 0
__L_32:
		cmp     r15, 106
		jge     __L_33
__L_34:
		mov     rdi, 856
		call    malloc
		mov     qword [rax], 106
		add     rax, 8
		mov     rcx, r15
		shl     rcx, 3
		mov     r8, qword [rbp - 88]
		add     r8, rcx
		mov     qword [r8], rax
		mov     rbx, 0
__L_35:
		cmp     rbx, 106
		jge     __L_36
__L_37:
		mov     rcx, r15
		shl     rcx, 3
		mov     r8, qword [rbp - 88]
		add     r8, rcx
		mov     r8, qword [r8]
		mov     rcx, rbx
		shl     rcx, 3
		add     r8, rcx
		mov     qword [r8], 0
		inc     rbx
		jmp     __L_35
__L_36:
		inc     r15
		jmp     __L_32
__L_33:
		call    getInt
		mov     qword [rbp - 96], rax
		mov     rcx, qword [rbp - 96]
		mov     qword [rbp - 104], rcx
		sub     qword [rbp - 104], 1
		mov     rcx, 0
__L_38:
		mov     qword [rbp - 112], rcx
		mov     rcx, qword [rbp - 96]
		cmp     qword [rbp - 112], rcx
		jge     __L_39
__L_40:
		mov     rbx, 0
__L_41:
		cmp     rbx, qword [rbp - 96]
		jge     __L_42
__L_43:
		mov     r8, qword [rbp - 112]
		shl     r8, 3
		mov     rcx, qword [rbp - 88]
		add     rcx, r8
		mov     r8, qword [rcx]
		mov     rcx, rbx
		shl     rcx, 3
		add     r8, rcx
		mov     qword [r8], -1
		inc     rbx
		jmp     __L_41
__L_42:
		mov     rcx, qword [rbp - 112]
		inc     rcx
		jmp     __L_38
__L_39:
		mov     rcx, qword [rbp - 80]
		add     rcx, 0
		mov     qword [rcx], -2
		mov     rcx, qword [rbp - 48]
		add     rcx, 0
		mov     qword [rcx], -1
		mov     rcx, qword [rbp - 80]
		add     rcx, 8
		mov     qword [rcx], -2
		mov     rcx, qword [rbp - 48]
		add     rcx, 8
		mov     qword [rcx], 1
		mov     rcx, qword [rbp - 80]
		add     rcx, 16
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 48]
		add     rcx, 16
		mov     qword [rcx], -1
		mov     rcx, qword [rbp - 80]
		add     rcx, 24
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 48]
		add     rcx, 24
		mov     qword [rcx], 1
		mov     rcx, qword [rbp - 80]
		add     rcx, 32
		mov     qword [rcx], -1
		mov     rcx, qword [rbp - 48]
		add     rcx, 32
		mov     qword [rcx], -2
		mov     rcx, qword [rbp - 80]
		add     rcx, 40
		mov     qword [rcx], -1
		mov     rcx, qword [rbp - 48]
		add     rcx, 40
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 80]
		add     rcx, 48
		mov     qword [rcx], 1
		mov     rcx, qword [rbp - 48]
		add     rcx, 48
		mov     qword [rcx], -2
		mov     rcx, qword [rbp - 80]
		add     rcx, 56
		mov     qword [rcx], 1
		mov     rcx, qword [rbp - 48]
		add     rcx, 56
		mov     qword [rcx], 2
		mov     rdx, 0
		mov     rdi, r13
		mov     r13, 0
		mov     rax, r14
		mov     r8, r12
		mov     rcx, qword [rbp - 56]
__L_44:
		mov     r9, rdx
		mov     r14, rdi
		mov     qword [rbp - 120], r13
		cmp     qword [rbp - 120], r9
		jle     __L_45
__L_46:
		mov     rdx, r9
		mov     r9, r14
		jmp     __L_47
__L_45:
		mov     r8, qword [rbp - 120]
		shl     r8, 3
		mov     rcx, qword [rbp - 72]
		add     rcx, r8
		mov     rcx, qword [rcx]
		mov     qword [rbp - 128], rcx
		mov     rcx, qword [rbp - 64]
		add     rcx, r8
		mov     r10, qword [rcx]
		mov     r8, qword [rbp - 128]
		shl     r8, 3
		mov     rcx, qword [rbp - 88]
		add     rcx, r8
		mov     r8, qword [rcx]
		mov     rcx, r10
		shl     rcx, 3
		add     r8, rcx
		mov     rsi, qword [r8]
		mov     rax, qword [rbp - 136]
		mov     rdx, qword [rbp - 144]
		mov     rbx, qword [rbp - 152]
		mov     r12, qword [rbp - 160]
		mov     r8, qword [rbp - 168]
		mov     rcx, qword [rbp - 176]
		mov     rdi, qword [rbp - 184]
		mov     r13, qword [rbp - 192]
		mov     r11, 0
__L_48:
		mov     qword [rbp - 136], rax
		mov     qword [rbp - 144], rdx
		mov     qword [rbp - 152], rbx
		mov     qword [rbp - 160], r12
		mov     qword [rbp - 168], r8
		mov     qword [rbp - 176], rcx
		mov     qword [rbp - 184], rdi
		mov     qword [rbp - 192], r13
		mov     rdx, r9
		mov     r12, r14
		cmp     r11, 8
		jge     __L_49
__L_50:
		mov     rcx, r11
		shl     rcx, 3
		mov     r8, qword [rbp - 80]
		add     r8, rcx
		mov     r9, qword [r8]
		mov     r8, qword [rbp - 128]
		add     r8, r9
		mov     r9, qword [rbp - 48]
		add     r9, rcx
		mov     rcx, qword [r9]
		mov     rax, r10
		add     rax, rcx
		cmp     r8, qword [rbp - 96]
		jge     __L_51
__L_52:
		cmp     r8, 0
		jl      __L_51
__L_53:
		mov     rcx, 1
		jmp     __L_54
__L_51:
		mov     rcx, 0
__L_54:
		mov     rbx, rcx
		cmp     rbx, 0
		jne     __L_55
__L_56:
		mov     rcx, qword [rbp - 176]
		mov     r14, qword [rbp - 184]
		mov     r9, qword [rbp - 192]
		jmp     __L_57
__L_55:
		cmp     rax, qword [rbp - 96]
		jge     __L_58
__L_59:
		cmp     rax, 0
		jl      __L_58
__L_60:
		mov     r14, 1
		jmp     __L_61
__L_58:
		mov     r14, 0
__L_61:
		cmp     r14, 0
		jne     __L_62
__L_63:
		mov     rcx, r14
		mov     r9, rax
		jmp     __L_57
__L_62:
		mov     rcx, r8
		shl     rcx, 3
		mov     r9, qword [rbp - 88]
		add     r9, rcx
		mov     r9, qword [r9]
		mov     rcx, rax
		shl     rcx, 3
		add     r9, rcx
		mov     rcx, qword [r9]
		cmp     rcx, -1
		je      __L_64
__L_65:
		mov     rcx, r14
		mov     r9, rax
		jmp     __L_57
__L_64:
		inc     rdx
		mov     rcx, rdx
		shl     rcx, 3
		mov     r9, qword [rbp - 72]
		add     r9, rcx
		mov     qword [r9], r8
		mov     r9, qword [rbp - 64]
		add     r9, rcx
		mov     qword [r9], rax
		mov     rcx, rsi
		add     rcx, 1
		mov     r9, r8
		shl     r9, 3
		mov     r13, qword [rbp - 88]
		add     r13, r9
		mov     r13, qword [r13]
		mov     r9, rax
		shl     r9, 3
		add     r13, r9
		mov     qword [r13], rcx
		cmp     r8, qword [rbp - 104]
		je      __L_66
__L_67:
		mov     rcx, r14
		mov     r9, rax
		jmp     __L_57
__L_66:
		cmp     rax, qword [rbp - 104]
		je      __L_68
__L_69:
		mov     rcx, r14
		mov     r9, rax
		jmp     __L_57
__L_68:
		mov     rcx, r14
		mov     r9, rax
		mov     r12, 1
__L_57:
		mov     rdi, r14
		mov     r13, r9
		mov     r9, rdx
		mov     r14, r12
		inc     r11
		mov     rdx, r8
		mov     r12, rbx
		jmp     __L_48
__L_49:
		cmp     r12, 1
		jne     __L_70
__L_71:
		mov     r9, r12
		mov     rbx, r11
		mov     rax, rsi
		mov     r8, qword [rbp - 128]
		mov     rcx, r10
		jmp     __L_47
__L_70:
		mov     r13, qword [rbp - 120]
		inc     r13
		mov     rdi, r12
		mov     rbx, r11
		mov     rax, rsi
		mov     r8, qword [rbp - 128]
		mov     rcx, r10
		jmp     __L_44
__L_47:
		mov     qword [rbp - 200], rdx
		mov     r12, r9
		mov     r14, rax
		mov     r13, r8
		mov     r15, rcx
		cmp     r12, 1
		jne     __L_72
__L_73:
		mov     r8, qword [rbp - 104]
		shl     r8, 3
		mov     rcx, qword [rbp - 88]
		add     rcx, r8
		mov     rcx, qword [rcx]
		add     rcx, r8
		mov     rdi, qword [rcx]
		call    __printlnInt
		jmp     __L_74
__L_72:
		mov     rdi, __str_0
		call    print
__L_74:
		mov     rcx, qword [rbp - 200]
		mov     qword [rel _tail], rcx
		mov     rcx, qword [rbp - 104]
		mov     qword [rel _targety], rcx
		mov     qword [rel _ok], r12
		mov     rcx, qword [rbp - 120]
		mov     qword [rel _head], rcx
		mov     rcx, qword [rbp - 88]
		mov     qword [rel _step], rcx
		mov     qword [rel _j], rbx
		mov     qword [rel _now], r14
		mov     rcx, qword [rbp - 96]
		mov     qword [rel _N], rcx
		mov     rcx, qword [rbp - 104]
		mov     qword [rel _targetx], rcx
		mov     rcx, qword [rbp - 112]
		mov     qword [rel _i], rcx
		mov     qword [rel _x], r13
		mov     qword [rel _y], r15
		mov     r12, qword [rbp - 8]
		mov     rbx, qword [rbp - 16]
		mov     r14, qword [rbp - 24]
		mov     r15, qword [rbp - 32]
		mov     r13, qword [rbp - 40]
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


