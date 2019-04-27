default rel

global _N
global _head
global _startx
global _starty
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
extern snprintf
extern __stack_chk_fail
extern strcpy
extern malloc
extern strlen
extern __isoc99_scanf
extern puts
extern strcmp
extern printf

SECTION .text

_globalInit:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 32
		mov     qword [rbp - 8], rbx
		mov     qword [rbp - 16], r14
		mov     qword [rbp - 24], r12
		mov     rdi, 96008
		call    malloc
		mov     rbx, rax
		mov     qword [rbx], 12000
		mov     rdi, 96008
		call    malloc
		mov     r12, rax
		mov     qword [r12], 12000
		mov     rdi, 72
		call    malloc
		mov     r14, rax
		mov     qword [r14], 8
		mov     rdi, 80
		call    malloc
		mov     qword [rax], 9
		mov     qword [rel _dx], r14
		mov     qword [rel _dy], rax
		mov     qword [rel _ylist], r12
		mov     qword [rel _xlist], rbx
		mov     rbx, qword [rbp - 8]
		mov     r14, qword [rbp - 16]
		mov     r12, qword [rbp - 24]
		mov     rsp, rbp
		pop     rbp
		ret     

origin:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 32
		mov     qword [rbp - 8], rbx
		mov     qword [rbp - 16], r14
		mov     qword [rbp - 24], r12
		mov     rbx, rdi
		mov     r14, qword [rel _j]
		mov     rdi, rbx
		imul    rdi, 8
		add     rdi, 8
		call    malloc
		mov     r12, rax
		mov     qword [r12], rbx
		mov     r8, 0
		mov     rcx, r14
__L_1:
		mov     r14, r8
		cmp     r14, rbx
		jge     __L_2
__L_3:
		mov     rdi, rbx
		imul    rdi, 8
		add     rdi, 8
		call    malloc
		mov     qword [rax], rbx
		mov     rcx, r12
		add     rcx, 8
		mov     r8, r14
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], rax
		mov     rcx, 0
__L_4:
		cmp     rcx, rbx
		jge     __L_5
__L_6:
		mov     r8, r12
		add     r8, 8
		mov     rdx, r14
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
		mov     r8, r14
		inc     r8
		jmp     __L_1
__L_2:
		mov     qword [rel _step], r12
		mov     qword [rel _tail], 0
		mov     qword [rel _i], r14
		mov     qword [rel _j], rcx
		mov     qword [rel _head], 0
		mov     rbx, qword [rbp - 8]
		mov     r14, qword [rbp - 16]
		mov     r12, qword [rbp - 24]
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
		mov     qword [rbp - 8], rbx
		mov     qword [rbp - 16], r14
		mov     qword [rbp - 24], r12
		mov     qword [rbp - 32], r15
		mov     qword [rbp - 40], r13
		mov     rdx, qword [rel _now]
		mov     rax, qword [rel _targetx]
		mov     rbx, qword [rel _xlist]
		mov     r11, qword [rel _targety]
		mov     r10, qword [rel _N]
		mov     r12, qword [rel _ylist]
		mov     r8, qword [rel _tail]
		mov     rcx, qword [rel _ok]
		mov     r9, qword [rel _step]
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
		mov     r14, r9
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
		mov     r14, rbx
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
		mov     r13, r9
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
		cmp     rdi, rax
		je      __L_27
__L_28:
		jmp     __L_18
__L_27:
		cmp     rsi, r11
		je      __L_29
__L_30:
		jmp     __L_18
__L_29:
		mov     rcx, 1
__L_18:
		mov     qword [rel _step], r9
		mov     qword [rel _ok], rcx
		mov     qword [rel _tail], r8
		mov     qword [rel _ylist], r12
		mov     qword [rel _N], r10
		mov     qword [rel _targety], r11
		mov     qword [rel _xlist], rbx
		mov     qword [rel _targetx], rax
		mov     qword [rel _now], rdx
		mov     rbx, qword [rbp - 8]
		mov     r14, qword [rbp - 16]
		mov     r12, qword [rbp - 24]
		mov     r15, qword [rbp - 32]
		mov     r13, qword [rbp - 40]
		mov     rsp, rbp
		pop     rbp
		ret     

main:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 224
		mov     qword [rbp - 8], rbx
		mov     qword [rbp - 16], r14
		mov     qword [rbp - 24], r12
		mov     qword [rbp - 32], r15
		mov     qword [rbp - 40], r13
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
		mov     r15, qword [rel _xlist]
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
		mov     r14, qword [rel _j]
		mov     rbx, qword [rel _tail]
		mov     r13, qword [rel _head]
		mov     r12, qword [rel _step]
		call    getInt
		mov     r8, rax
		mov     rcx, r8
		sub     rcx, 1
		mov     r9, 0
		mov     rdx, r14
__L_31:
		mov     qword [rbp - 104], r9
		cmp     qword [rbp - 104], r8
		jge     __L_32
__L_33:
		mov     rdx, 0
__L_34:
		cmp     rdx, r8
		jge     __L_35
__L_36:
		mov     r9, r12
		add     r9, 8
		mov     rax, qword [rbp - 104]
		imul    rax, 8
		add     r9, rax
		mov     r9, qword [r9]
		add     r9, 8
		mov     rax, rdx
		imul    rax, 8
		add     r9, rax
		mov     qword [r9], -1
		inc     rdx
		jmp     __L_34
__L_35:
		mov     r9, qword [rbp - 104]
		inc     r9
		jmp     __L_31
__L_32:
		mov     r9, qword [rbp - 80]
		add     r9, 8
		mov     rax, r9
		add     rax, 0
		mov     qword [rax], -2
		mov     rax, qword [rbp - 96]
		add     rax, 8
		mov     rsi, rax
		add     rsi, 0
		mov     qword [rsi], -1
		mov     rsi, r9
		add     rsi, 8
		mov     qword [rsi], -2
		mov     rsi, rax
		add     rsi, 8
		mov     qword [rsi], 1
		mov     rsi, r9
		add     rsi, 16
		mov     qword [rsi], 2
		mov     rsi, rax
		add     rsi, 16
		mov     qword [rsi], -1
		mov     rsi, r9
		add     rsi, 24
		mov     qword [rsi], 2
		mov     rsi, rax
		add     rsi, 24
		mov     qword [rsi], 1
		mov     rsi, r9
		add     rsi, 32
		mov     qword [rsi], -1
		mov     rsi, rax
		add     rsi, 32
		mov     qword [rsi], -2
		mov     rsi, r9
		add     rsi, 40
		mov     qword [rsi], -1
		mov     rsi, rax
		add     rsi, 40
		mov     qword [rsi], 2
		mov     rsi, r9
		add     rsi, 48
		mov     qword [rsi], 1
		mov     rsi, rax
		add     rsi, 48
		mov     qword [rsi], -2
		add     r9, 56
		mov     qword [r9], 1
		add     rax, 56
		mov     qword [rax], 2
		mov     qword [rbp - 112], r12
		mov     qword [rbp - 120], r13
		mov     qword [rbp - 128], r15
		mov     r9, qword [rbp - 88]
		mov     qword [rbp - 136], r9
		mov     r9, qword [rbp - 72]
		mov     qword [rbp - 144], r9
		mov     r10, rbx
		mov     r15, qword [rbp - 64]
		mov     r12, qword [rbp - 56]
		mov     rdi, rcx
		mov     r13, rdx
		mov     r14, qword [rbp - 48]
		mov     rax, rcx
__L_37:
		mov     r9, qword [rbp - 112]
		mov     rcx, qword [rbp - 120]
		mov     qword [rbp - 152], rcx
		mov     rdx, qword [rbp - 128]
		mov     r11, qword [rbp - 136]
		mov     rcx, qword [rbp - 144]
		mov     rsi, r15
		mov     rbx, rdi
		cmp     qword [rbp - 152], r10
		jle     __L_38
__L_39:
		mov     qword [rbp - 160], r9
		mov     r9, rdx
		mov     rdx, r11
		mov     r11, rsi
		mov     rsi, rbx
		mov     rbx, r13
		jmp     __L_40
__L_38:
		mov     r12, rdx
		add     r12, 8
		mov     r11, qword [rbp - 152]
		imul    r11, 8
		add     r12, r11
		mov     r12, qword [r12]
		mov     qword [rbp - 168], r12
		mov     r12, rsi
		add     r12, 8
		add     r12, r11
		mov     r12, qword [r12]
		mov     r11, r9
		add     r11, 8
		mov     r14, qword [rbp - 168]
		imul    r14, 8
		add     r11, r14
		mov     r11, qword [r11]
		add     r11, 8
		mov     r14, r12
		imul    r14, 8
		add     r11, r14
		mov     r11, qword [r11]
		mov     r14, r9
		mov     r9, rdx
		mov     rdx, r11
		mov     r11, rsi
		mov     rsi, rbx
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
		mov     r13, qword [rbp - 168]
		add     r13, r15
		mov     r15, qword [rbp - 96]
		add     r15, 8
		add     r15, rdi
		mov     rdi, qword [r15]
		mov     r15, r12
		add     r15, rdi
		mov     qword [rel _step], r14
		mov     qword [rel _xlist], r9
		mov     qword [rel _now], rdx
		mov     qword [rel _ok], rcx
		mov     qword [rel _tail], r10
		mov     qword [rel _ylist], r11
		mov     qword [rel _N], r8
		mov     qword [rel _targety], rsi
		mov     qword [rel _targetx], rax
		mov     rdi, r13
		mov     rsi, r15
		call    addList
		mov     rax, qword [rel _targetx]
		mov     rsi, qword [rel _targety]
		mov     r8, qword [rel _N]
		mov     r11, qword [rel _ylist]
		mov     r10, qword [rel _tail]
		mov     rcx, qword [rel _ok]
		mov     r13, qword [rel _now]
		mov     r9, qword [rel _xlist]
		mov     rdx, qword [rel _step]
		inc     rbx
		mov     r14, rdx
		mov     rdx, r13
		jmp     __L_41
__L_42:
		cmp     rcx, 1
		jne     __L_44
__L_45:
		mov     qword [rbp - 160], r14
		mov     r14, qword [rbp - 168]
		jmp     __L_40
__L_44:
		mov     r13, qword [rbp - 152]
		inc     r13
		mov     qword [rbp - 112], r14
		mov     qword [rbp - 120], r13
		mov     qword [rbp - 128], r9
		mov     qword [rbp - 136], rdx
		mov     qword [rbp - 144], rcx
		mov     r15, r11
		mov     rdi, rsi
		mov     r13, rbx
		mov     r14, qword [rbp - 168]
		jmp     __L_37
__L_40:
		mov     r13, qword [rbp - 160]
		mov     qword [rbp - 176], r13
		mov     qword [rbp - 184], r9
		mov     qword [rbp - 192], rdx
		mov     qword [rbp - 200], rcx
		mov     qword [rbp - 208], r10
		mov     qword [rbp - 216], r11
		mov     qword [rbp - 224], r12
		mov     r12, r8
		mov     r13, rsi
		mov     r15, rax
		cmp     qword [rbp - 200], 1
		jne     __L_46
__L_47:
		mov     r8, qword [rbp - 176]
		add     r8, 8
		mov     rcx, r15
		imul    rcx, 8
		add     r8, rcx
		mov     rcx, qword [r8]
		add     rcx, 8
		mov     r8, r13
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
		mov     rcx, qword [rbp - 176]
		mov     qword [rel _step], rcx
		mov     rcx, qword [rbp - 96]
		mov     qword [rel _dy], rcx
		mov     rcx, qword [rbp - 104]
		mov     qword [rel _i], rcx
		mov     rcx, qword [rbp - 152]
		mov     qword [rel _head], rcx
		mov     rcx, qword [rbp - 184]
		mov     qword [rel _xlist], rcx
		mov     rcx, qword [rbp - 192]
		mov     qword [rel _now], rcx
		mov     rcx, qword [rbp - 80]
		mov     qword [rel _dx], rcx
		mov     rcx, qword [rbp - 200]
		mov     qword [rel _ok], rcx
		mov     rcx, qword [rbp - 208]
		mov     qword [rel _tail], rcx
		mov     rcx, qword [rbp - 216]
		mov     qword [rel _ylist], rcx
		mov     rcx, qword [rbp - 224]
		mov     qword [rel _y], rcx
		mov     qword [rel _N], r12
		mov     qword [rel _targety], r13
		mov     qword [rel _j], rbx
		mov     qword [rel _x], r14
		mov     qword [rel _targetx], r15
		mov     rbx, qword [rbp - 8]
		mov     r14, qword [rbp - 16]
		mov     r12, qword [rbp - 24]
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

_startx:
		resb    8

_starty:
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


