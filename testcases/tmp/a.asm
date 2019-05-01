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
global _globalInit
global origin
global check
global addList
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
extern __sprintf_chk
extern __stack_chk_fail
extern memcpy
extern malloc
extern __isoc99_scanf
extern puts
extern __printf_chk

SECTION .text

_globalInit:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 32
		mov     qword [rbp - 8], r15
		mov     qword [rbp - 16], r12
		mov     qword [rbp - 24], r14
		mov     rdi, 96008
		call    malloc
		mov     r12, rax
		mov     qword [r12], 12000
		mov     rdi, 96008
		call    malloc
		mov     r14, rax
		mov     qword [r14], 12000
		mov     rdi, 72
		call    malloc
		mov     r15, rax
		mov     qword [r15], 8
		mov     rdi, 80
		call    malloc
		mov     qword [rax], 9
		mov     qword [rel _dx], r15
		mov     qword [rel _dy], rax
		mov     qword [rel _ylist], r14
		mov     qword [rel _xlist], r12
		mov     r15, qword [rbp - 8]
		mov     r12, qword [rbp - 16]
		mov     r14, qword [rbp - 24]
		mov     rsp, rbp
		pop     rbp
		ret     

origin:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 32
		mov     qword [rbp - 8], r15
		mov     qword [rbp - 16], r12
		mov     qword [rbp - 24], r14
		mov     r14, rdi
		mov     r15, qword [rel _j]
		mov     rdi, r14
		imul    rdi, 8
		add     rdi, 8
		call    malloc
		mov     r12, rax
		mov     qword [r12], r14
		mov     r8, 0
		mov     rcx, r15
__L_1:
		mov     r15, r8
		cmp     r15, r14
		jge     __L_2
__L_3:
		mov     rdi, r14
		imul    rdi, 8
		add     rdi, 8
		call    malloc
		mov     qword [rax], r14
		mov     rcx, r12
		add     rcx, 8
		mov     r8, r15
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], rax
		mov     rcx, 0
__L_4:
		cmp     rcx, r14
		jge     __L_5
__L_6:
		mov     r8, r12
		add     r8, 8
		mov     rdx, r15
		imul    rdx, 8
		add     r8, rdx
		mov     r8, qword [r8]
		add     r8, 8
		mov     rdx, rcx
		imul    rdx, 8
		add     r8, rdx
		mov     qword [r8], 0
		inc     rcx
		jmp     __L_4
__L_5:
		mov     r8, r15
		inc     r8
		jmp     __L_1
__L_2:
		mov     qword [rel _step], r12
		mov     qword [rel _tail], 0
		mov     qword [rel _i], r15
		mov     qword [rel _j], rcx
		mov     qword [rel _head], 0
		mov     r15, qword [rbp - 8]
		mov     r12, qword [rbp - 16]
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
		mov     qword [rel _N], rcx
		mov     rsp, rbp
		pop     rbp
		ret     

addList:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 48
		mov     qword [rbp - 8], r15
		mov     qword [rbp - 16], r12
		mov     qword [rbp - 24], r14
		mov     qword [rbp - 32], r13
		mov     qword [rbp - 40], rbx
		mov     rdx, qword [rel _now]
		mov     rbx, qword [rel _targetx]
		mov     r9, qword [rel _xlist]
		mov     rax, qword [rel _targety]
		mov     r10, qword [rel _N]
		mov     r12, qword [rel _ylist]
		mov     r8, qword [rel _tail]
		mov     rcx, qword [rel _ok]
		mov     r11, qword [rel _step]
__L_11:
		cmp     rdi, r10
		jge     __L_12
__L_13:
		cmp     rdi, 0
		jl      __L_12
__L_14:
		mov     r14, 1
		jmp     __L_15
__L_12:
		mov     r14, 0
__L_15:
		cmp     r14, 0
		jne     __L_16
__L_17:
		jmp     __L_18
__L_16:
		cmp     rsi, r10
		jge     __L_19
__L_20:
		cmp     rsi, 0
		jl      __L_19
__L_21:
		mov     r14, 1
		jmp     __L_22
__L_19:
		mov     r14, 0
__L_22:
		cmp     r14, 0
		jne     __L_23
__L_24:
		jmp     __L_18
__L_23:
		mov     r14, r11
		add     r14, 8
		mov     r13, rdi
		imul    r13, 8
		add     r14, r13
		mov     r14, qword [r14]
		add     r14, 8
		mov     r13, rsi
		imul    r13, 8
		add     r14, r13
		mov     r14, qword [r14]
		cmp     r14, -1
		je      __L_25
__L_26:
		jmp     __L_18
__L_25:
		inc     r8
		mov     r14, r9
		add     r14, 8
		mov     r13, r8
		imul    r13, 8
		add     r14, r13
		mov     qword [r14], rdi
		mov     r14, r12
		add     r14, 8
		add     r14, r13
		mov     qword [r14], rsi
		mov     r14, rdx
		add     r14, 1
		mov     r13, r11
		add     r13, 8
		mov     r15, rdi
		imul    r15, 8
		add     r13, r15
		mov     r13, qword [r13]
		add     r13, 8
		mov     r15, rsi
		imul    r15, 8
		add     r13, r15
		mov     qword [r13], r14
		cmp     rdi, rbx
		je      __L_27
__L_28:
		jmp     __L_18
__L_27:
		cmp     rsi, rax
		je      __L_29
__L_30:
		jmp     __L_18
__L_29:
		mov     rcx, 1
__L_18:
		mov     qword [rel _step], r11
		mov     qword [rel _ok], rcx
		mov     qword [rel _tail], r8
		mov     qword [rel _ylist], r12
		mov     qword [rel _N], r10
		mov     qword [rel _targety], rax
		mov     qword [rel _xlist], r9
		mov     qword [rel _targetx], rbx
		mov     qword [rel _now], rdx
		mov     r15, qword [rbp - 8]
		mov     r12, qword [rbp - 16]
		mov     r14, qword [rbp - 24]
		mov     r13, qword [rbp - 32]
		mov     rbx, qword [rbp - 40]
		mov     rsp, rbp
		pop     rbp
		ret     

main:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 240
		mov     qword [rbp - 8], r15
		mov     qword [rbp - 16], r12
		mov     qword [rbp - 24], r14
		mov     qword [rbp - 32], r13
		mov     qword [rbp - 40], rbx
		call    _globalInit
		mov     rcx, qword [rel _x]
		mov     qword [rbp - 48], rcx
		mov     rax, qword [rel _j]
		mov     rcx, qword [rel _y]
		mov     qword [rbp - 56], rcx
		mov     rcx, qword [rel _ylist]
		mov     qword [rbp - 64], rcx
		mov     r9, qword [rel _tail]
		mov     rcx, qword [rel _ok]
		mov     qword [rbp - 72], rcx
		mov     rcx, qword [rel _dx]
		mov     qword [rbp - 80], rcx
		mov     rcx, qword [rel _now]
		mov     qword [rbp - 88], rcx
		mov     r13, qword [rel _xlist]
		mov     rdx, qword [rel _head]
		mov     r8, qword [rel _i]
		mov     rcx, qword [rel _dy]
		mov     qword [rbp - 96], rcx
		mov     rcx, qword [rel _step]
		mov     qword [rel _step], rcx
		mov     qword [rel _i], r8
		mov     qword [rel _head], rdx
		mov     qword [rel _tail], r9
		mov     qword [rel _j], rax
		mov     rdi, 106
		call    origin
		mov     r12, qword [rel _j]
		mov     rbx, qword [rel _tail]
		mov     r15, qword [rel _head]
		mov     r14, qword [rel _step]
		call    getInt
		mov     r9, rax
		mov     rcx, r9
		sub     rcx, 1
		mov     r8, 0
		mov     r10, r12
__L_31:
		mov     qword [rbp - 104], r8
		cmp     qword [rbp - 104], r9
		jge     __L_32
__L_33:
		mov     r10, 0
__L_34:
		cmp     r10, r9
		jge     __L_35
__L_36:
		mov     r8, r14
		add     r8, 8
		mov     rdx, qword [rbp - 104]
		imul    rdx, 8
		add     r8, rdx
		mov     r8, qword [r8]
		add     r8, 8
		mov     rdx, r10
		imul    rdx, 8
		add     r8, rdx
		mov     qword [r8], -1
		inc     r10
		jmp     __L_34
__L_35:
		mov     r8, qword [rbp - 104]
		inc     r8
		jmp     __L_31
__L_32:
		mov     r8, qword [rbp - 80]
		add     r8, 8
		mov     rdx, r8
		add     rdx, 0
		mov     qword [rdx], -2
		mov     rdx, qword [rbp - 96]
		add     rdx, 8
		mov     rax, rdx
		add     rax, 0
		mov     qword [rax], -1
		mov     rax, r8
		add     rax, 8
		mov     qword [rax], -2
		mov     rax, rdx
		add     rax, 8
		mov     qword [rax], 1
		mov     rax, r8
		add     rax, 16
		mov     qword [rax], 2
		mov     rax, rdx
		add     rax, 16
		mov     qword [rax], -1
		mov     rax, r8
		add     rax, 24
		mov     qword [rax], 2
		mov     rax, rdx
		add     rax, 24
		mov     qword [rax], 1
		mov     rax, r8
		add     rax, 32
		mov     qword [rax], -1
		mov     rax, rdx
		add     rax, 32
		mov     qword [rax], -2
		mov     rax, r8
		add     rax, 40
		mov     qword [rax], -1
		mov     rax, rdx
		add     rax, 40
		mov     qword [rax], 2
		mov     rax, r8
		add     rax, 48
		mov     qword [rax], 1
		mov     rax, rdx
		add     rax, 48
		mov     qword [rax], -2
		add     r8, 56
		mov     qword [r8], 1
		add     rdx, 56
		mov     qword [rdx], 2
		mov     qword [rbp - 112], r14
		mov     qword [rbp - 120], r15
		mov     qword [rbp - 128], r13
		mov     r8, qword [rbp - 88]
		mov     qword [rbp - 136], r8
		mov     r8, qword [rbp - 72]
		mov     rdx, rbx
		mov     rax, qword [rbp - 64]
		mov     r15, qword [rbp - 56]
		mov     rsi, r9
		mov     rdi, rcx
		mov     r11, r10
		mov     r12, qword [rbp - 48]
		mov     r10, rcx
__L_37:
		mov     r9, qword [rbp - 112]
		mov     rcx, qword [rbp - 120]
		mov     qword [rbp - 144], rcx
		mov     rcx, qword [rbp - 128]
		mov     r13, qword [rbp - 136]
		mov     r14, r15
		mov     rbx, rdi
		cmp     qword [rbp - 144], rdx
		jle     __L_38
__L_39:
		mov     qword [rbp - 152], r9
		mov     qword [rbp - 160], rcx
		mov     qword [rbp - 168], r13
		mov     rcx, rax
		mov     r9, r14
		mov     rax, rsi
		mov     rsi, rbx
		mov     r13, r12
		jmp     __L_40
__L_38:
		mov     r12, rcx
		add     r12, 8
		mov     r11, qword [rbp - 144]
		imul    r11, 8
		add     r12, r11
		mov     r12, qword [r12]
		mov     qword [rbp - 176], r12
		mov     r12, rax
		add     r12, 8
		add     r12, r11
		mov     r12, qword [r12]
		mov     r11, r9
		add     r11, 8
		mov     r14, qword [rbp - 176]
		imul    r14, 8
		add     r11, r14
		mov     r11, qword [r11]
		add     r11, 8
		mov     r14, r12
		imul    r14, 8
		add     r11, r14
		mov     r11, qword [r11]
		mov     r14, rbx
		mov     rbx, 0
__L_41:
		cmp     rbx, 8
		jge     __L_42
__L_43:
		mov     r13, qword [rbp - 80]
		add     r13, 8
		mov     rdi, rbx
		imul    rdi, 8
		add     r13, rdi
		mov     r15, qword [r13]
		mov     r13, qword [rbp - 176]
		add     r13, r15
		mov     r15, qword [rbp - 96]
		add     r15, 8
		add     r15, rdi
		mov     rdi, qword [r15]
		mov     r15, r12
		add     r15, rdi
		mov     qword [rel _step], r9
		mov     qword [rel _xlist], rcx
		mov     qword [rel _now], r11
		mov     qword [rel _ok], r8
		mov     qword [rel _tail], rdx
		mov     qword [rel _ylist], rax
		mov     qword [rel _N], rsi
		mov     qword [rel _targety], r14
		mov     qword [rel _targetx], r10
		mov     rdi, r13
		mov     rsi, r15
		call    addList
		mov     r10, qword [rel _targetx]
		mov     r14, qword [rel _targety]
		mov     rsi, qword [rel _N]
		mov     rax, qword [rel _ylist]
		mov     rdx, qword [rel _tail]
		mov     r8, qword [rel _ok]
		mov     r13, qword [rel _now]
		mov     r11, qword [rel _xlist]
		mov     rcx, qword [rel _step]
		inc     rbx
		mov     r9, rcx
		mov     rcx, r11
		mov     r11, r13
		jmp     __L_41
__L_42:
		cmp     r8, 1
		jne     __L_44
__L_45:
		mov     qword [rbp - 152], r9
		mov     qword [rbp - 160], rcx
		mov     qword [rbp - 168], r11
		mov     rcx, rax
		mov     r9, r12
		mov     rax, rsi
		mov     rsi, r14
		mov     r11, rbx
		mov     r13, qword [rbp - 176]
		jmp     __L_40
__L_44:
		mov     r13, qword [rbp - 144]
		inc     r13
		mov     qword [rbp - 112], r9
		mov     qword [rbp - 120], r13
		mov     qword [rbp - 128], rcx
		mov     qword [rbp - 136], r11
		mov     r15, r12
		mov     rdi, r14
		mov     r11, rbx
		mov     r12, qword [rbp - 176]
		jmp     __L_37
__L_40:
		mov     rbx, qword [rbp - 152]
		mov     qword [rbp - 184], rbx
		mov     rbx, qword [rbp - 160]
		mov     qword [rbp - 192], rbx
		mov     rbx, qword [rbp - 168]
		mov     qword [rbp - 200], rbx
		mov     qword [rbp - 208], r8
		mov     qword [rbp - 216], rdx
		mov     qword [rbp - 224], rcx
		mov     qword [rbp - 232], r9
		mov     rbx, rax
		mov     r12, rsi
		mov     r14, r11
		mov     r15, r10
		cmp     qword [rbp - 208], 1
		jne     __L_46
__L_47:
		mov     r8, qword [rbp - 184]
		add     r8, 8
		mov     rcx, r15
		imul    rcx, 8
		add     r8, rcx
		mov     rcx, qword [r8]
		add     rcx, 8
		mov     r8, r12
		imul    r8, 8
		add     rcx, r8
		mov     rdi, qword [rcx]
		call    toString
		mov     rdi, rax
		call    println
		jmp     __L_48
__L_46:
		mov     rdi, __str_0
		call    print
__L_48:
		mov     rcx, qword [rbp - 184]
		mov     qword [rel _step], rcx
		mov     rcx, qword [rbp - 96]
		mov     qword [rel _dy], rcx
		mov     rcx, qword [rbp - 104]
		mov     qword [rel _i], rcx
		mov     rcx, qword [rbp - 144]
		mov     qword [rel _head], rcx
		mov     rcx, qword [rbp - 192]
		mov     qword [rel _xlist], rcx
		mov     rcx, qword [rbp - 200]
		mov     qword [rel _now], rcx
		mov     rcx, qword [rbp - 80]
		mov     qword [rel _dx], rcx
		mov     rcx, qword [rbp - 208]
		mov     qword [rel _ok], rcx
		mov     rcx, qword [rbp - 216]
		mov     qword [rel _tail], rcx
		mov     rcx, qword [rbp - 224]
		mov     qword [rel _ylist], rcx
		mov     rcx, qword [rbp - 232]
		mov     qword [rel _y], rcx
		mov     qword [rel _N], rbx
		mov     qword [rel _targety], r12
		mov     qword [rel _j], r14
		mov     qword [rel _x], r13
		mov     qword [rel _targetx], r15
		mov     r15, qword [rbp - 8]
		mov     r12, qword [rbp - 16]
		mov     r14, qword [rbp - 24]
		mov     r13, qword [rbp - 32]
		mov     rbx, qword [rbp - 40]
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

_stringLength:
        mov     rax, qword [rdi]
        ret







ALIGN   16

_stringSubstring:
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

_stringParseInt:
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

_stringOrd:
        movsx   rax, byte [rdi+rsi+8H]
        ret







ALIGN   16

_stringAdd:
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
_stringEq:
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

_stringNeq:
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

_stringLt:
        sub     rsp, 8
        add     rsi, 8
        add     rdi, 8
        call    strcmp
        cdqe
        add     rsp, 8
        shr     rax, 63
        ret






ALIGN   8

_stringGt:
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

_stringLe:
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

_stringGe:
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
_arraySize:
        mov     rax, qword [rdi]
        ret



SECTION .data


SECTION .bss


SECTION .rodata.str1.1

L_011:
        db 25H, 73H, 00H

L_012:
        db 25H, 6CH, 64H, 00H


SECTION .text.unlikely


