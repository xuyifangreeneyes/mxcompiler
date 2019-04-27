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
		mov     rdi, 96008
		call    malloc
		mov     qword [rax], 12000
		mov     qword [rel _xlist], rax
		mov     rdi, 96008
		call    malloc
		mov     qword [rax], 12000
		mov     qword [rel _ylist], rax
		mov     rdi, 72
		call    malloc
		mov     qword [rax], 8
		mov     qword [rel _dx], rax
		mov     rdi, 80
		call    malloc
		mov     qword [rax], 9
		mov     qword [rel _dy], rax
		mov     rsp, rbp
		pop     rbp
		ret     

origin:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 16
		mov     qword [rbp - 8], r13
		mov     r13, rdi
		mov     qword [rel _head], 0
		mov     qword [rel _tail], 0
		mov     rdi, r13
		imul    rdi, 8
		add     rdi, 8
		call    malloc
		mov     qword [rax], r13
		mov     qword [rel _step], rax
		mov     qword [rel _i], 0
__L_1:
		mov     rcx, qword [rel _i]
		cmp     rcx, r13
		jge     __L_2
__L_3:
		mov     rdi, r13
		imul    rdi, 8
		add     rdi, 8
		call    malloc
		mov     qword [rax], r13
		mov     rcx, qword [rel _step]
		add     rcx, 8
		mov     r8, qword [rel _i]
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], rax
		mov     qword [rel _j], 0
__L_4:
		mov     rcx, qword [rel _j]
		cmp     rcx, r13
		jge     __L_5
__L_6:
		mov     rcx, qword [rel _step]
		add     rcx, 8
		mov     r8, qword [rel _i]
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		add     rcx, 8
		mov     r8, qword [rel _j]
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], 0
		mov     rcx, qword [rel _j]
		inc     rcx
		mov     qword [rel _j], rcx
		jmp     __L_4
__L_5:
		mov     rcx, qword [rel _i]
		inc     rcx
		mov     qword [rel _i], rcx
		jmp     __L_1
__L_2:
		mov     r13, qword [rbp - 8]
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
		mov     rsp, rbp
		pop     rbp
		ret     

addList:
		push    rbp
		mov     rbp, rsp
__L_11:
		mov     rcx, qword [rel _N]
		cmp     rdi, rcx
		jge     __L_12
__L_13:
		cmp     rdi, 0
		jl      __L_12
__L_14:
		mov     rcx, 1
		jmp     __L_15
__L_12:
		mov     rcx, 0
__L_15:
		cmp     rcx, 0
		je      __L_16
__L_17:
		mov     rcx, qword [rel _N]
		cmp     rsi, rcx
		jge     __L_18
__L_19:
		cmp     rsi, 0
		jl      __L_18
__L_20:
		mov     rcx, 1
		jmp     __L_21
__L_18:
		mov     rcx, 0
__L_21:
		cmp     rcx, 0
		je      __L_16
__L_22:
		mov     rcx, qword [rel _step]
		add     rcx, 8
		mov     r8, rdi
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		add     rcx, 8
		mov     r8, rsi
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		cmp     rcx, -1
		jne     __L_16
__L_23:
		mov     rcx, qword [rel _tail]
		inc     rcx
		mov     qword [rel _tail], rcx
		mov     rcx, qword [rel _xlist]
		add     rcx, 8
		mov     r8, qword [rel _tail]
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], rdi
		mov     rcx, qword [rel _ylist]
		add     rcx, 8
		mov     r8, qword [rel _tail]
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], rsi
		mov     rcx, qword [rel _now]
		add     rcx, 1
		mov     r8, qword [rel _step]
		add     r8, 8
		mov     rdx, rdi
		imul    rdx, 8
		add     r8, rdx
		mov     r8, qword [r8]
		add     r8, 8
		mov     rdx, rsi
		imul    rdx, 8
		add     r8, rdx
		mov     qword [r8], rcx
		mov     rcx, qword [rel _targetx]
		cmp     rdi, rcx
		jne     __L_16
__L_24:
		mov     rcx, qword [rel _targety]
		cmp     rsi, rcx
		jne     __L_16
__L_25:
		mov     qword [rel _ok], 1
__L_16:
		mov     rsp, rbp
		pop     rbp
		ret     

main:
		push    rbp
		mov     rbp, rsp
		call    _globalInit
		mov     rdi, 106
		call    origin
		call    getInt
		mov     qword [rel _N], rax
		mov     rcx, qword [rel _N]
		sub     rcx, 1
		mov     qword [rel _targety], rcx
		mov     rcx, qword [rel _targety]
		mov     qword [rel _targetx], rcx
		mov     qword [rel _i], 0
__L_26:
		mov     r8, qword [rel _i]
		mov     rcx, qword [rel _N]
		cmp     r8, rcx
		jge     __L_27
__L_28:
		mov     qword [rel _j], 0
__L_29:
		mov     r8, qword [rel _j]
		mov     rcx, qword [rel _N]
		cmp     r8, rcx
		jge     __L_30
__L_31:
		mov     rcx, qword [rel _step]
		add     rcx, 8
		mov     r8, qword [rel _i]
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		add     rcx, 8
		mov     r8, qword [rel _j]
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], -1
		mov     rcx, qword [rel _j]
		inc     rcx
		mov     qword [rel _j], rcx
		jmp     __L_29
__L_30:
		mov     rcx, qword [rel _i]
		inc     rcx
		mov     qword [rel _i], rcx
		jmp     __L_26
__L_27:
		mov     rcx, qword [rel _dx]
		add     rcx, 8
		add     rcx, 0
		mov     qword [rcx], -2
		mov     rcx, qword [rel _dy]
		add     rcx, 8
		add     rcx, 0
		mov     qword [rcx], -1
		mov     rcx, qword [rel _dx]
		add     rcx, 8
		add     rcx, 8
		mov     qword [rcx], -2
		mov     rcx, qword [rel _dy]
		add     rcx, 8
		add     rcx, 8
		mov     qword [rcx], 1
		mov     rcx, qword [rel _dx]
		add     rcx, 8
		add     rcx, 16
		mov     qword [rcx], 2
		mov     rcx, qword [rel _dy]
		add     rcx, 8
		add     rcx, 16
		mov     qword [rcx], -1
		mov     rcx, qword [rel _dx]
		add     rcx, 8
		add     rcx, 24
		mov     qword [rcx], 2
		mov     rcx, qword [rel _dy]
		add     rcx, 8
		add     rcx, 24
		mov     qword [rcx], 1
		mov     rcx, qword [rel _dx]
		add     rcx, 8
		add     rcx, 32
		mov     qword [rcx], -1
		mov     rcx, qword [rel _dy]
		add     rcx, 8
		add     rcx, 32
		mov     qword [rcx], -2
		mov     rcx, qword [rel _dx]
		add     rcx, 8
		add     rcx, 40
		mov     qword [rcx], -1
		mov     rcx, qword [rel _dy]
		add     rcx, 8
		add     rcx, 40
		mov     qword [rcx], 2
		mov     rcx, qword [rel _dx]
		add     rcx, 8
		add     rcx, 48
		mov     qword [rcx], 1
		mov     rcx, qword [rel _dy]
		add     rcx, 8
		add     rcx, 48
		mov     qword [rcx], -2
		mov     rcx, qword [rel _dx]
		add     rcx, 8
		add     rcx, 56
		mov     qword [rcx], 1
		mov     rcx, qword [rel _dy]
		add     rcx, 8
		add     rcx, 56
		mov     qword [rcx], 2
__L_32:
		mov     r8, qword [rel _head]
		mov     rcx, qword [rel _tail]
		cmp     r8, rcx
		jg      __L_33
__L_34:
		mov     rcx, qword [rel _xlist]
		add     rcx, 8
		mov     r8, qword [rel _head]
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		mov     qword [rel _x], rcx
		mov     rcx, qword [rel _ylist]
		add     rcx, 8
		mov     r8, qword [rel _head]
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		mov     qword [rel _y], rcx
		mov     rcx, qword [rel _step]
		add     rcx, 8
		mov     r8, qword [rel _x]
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		add     rcx, 8
		mov     r8, qword [rel _y]
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		mov     qword [rel _now], rcx
		mov     qword [rel _j], 0
__L_35:
		mov     rcx, qword [rel _j]
		cmp     rcx, 8
		jge     __L_36
__L_37:
		mov     rdi, qword [rel _x]
		mov     rcx, qword [rel _dx]
		add     rcx, 8
		mov     r8, qword [rel _j]
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		add     rdi, rcx
		mov     rsi, qword [rel _y]
		mov     rcx, qword [rel _dy]
		add     rcx, 8
		mov     r8, qword [rel _j]
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		add     rsi, rcx
		call    addList
		mov     rcx, qword [rel _j]
		inc     rcx
		mov     qword [rel _j], rcx
		jmp     __L_35
__L_36:
		mov     rcx, qword [rel _ok]
		cmp     rcx, 1
		je      __L_33
__L_38:
		mov     rcx, qword [rel _head]
		inc     rcx
		mov     qword [rel _head], rcx
		jmp     __L_32
__L_33:
		mov     rcx, qword [rel _ok]
		cmp     rcx, 1
		jne     __L_39
__L_40:
		mov     rcx, qword [rel _step]
		add     rcx, 8
		mov     r8, qword [rel _targetx]
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		add     rcx, 8
		mov     r8, qword [rel _targety]
		imul    r8, 8
		add     rcx, r8
		mov     rdi, qword [rcx]
		call    toString
		mov     rdi, rax
		call    println
		jmp     __L_41
__L_39:
		mov     rdi, __str_0
		call    print
__L_41:
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


