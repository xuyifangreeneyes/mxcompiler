default rel

global main
global n
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
global _globalInit
global init
global is_prime
global find
global work
global main

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
		mov     rsp, rbp
		pop     rbp
		ret     

init:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 16
		call    getInt
		mov     qword [rbp-8], rax
		mov     rax, qword [rbp-8]
		mov     qword [rel n], rax
		mov     rsp, rbp
		pop     rbp
		ret     

is_prime:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 160
		mov     qword [rbp-8], rdi
		mov     rax, rbp
		sub     rax, 16
		mov     qword [rbp-24], rax
		mov     rax, rbp
		sub     rax, 32
		mov     qword [rbp-40], rax
		mov     rax, qword [rbp-8]
		mov     rdx, qword [rbp-40]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-40]
		mov     rax, qword [rdx]
		mov     qword [rbp-48], rax
		mov     rax, qword [rbp-48]
		cmp     rax, 1
		sete    al
		movzx   rax, al
		mov     qword [rbp-56], rax
		mov     rax, qword [rbp-56]
		cmp     rax, 0
		jne     L1
		jmp     L2
L1:
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     
L2:
		mov     rax, 2
		mov     rdx, qword [rbp-24]
		mov     qword [rdx], rax
		jmp     L3
L3:
		mov     rdx, qword [rbp-24]
		mov     rax, qword [rdx]
		mov     qword [rbp-64], rax
		mov     rdx, qword [rbp-24]
		mov     rax, qword [rdx]
		mov     qword [rbp-72], rax
		mov     rax, qword [rbp-64]
		imul    rax, qword [rbp-72]
		mov     qword [rbp-80], rax
		mov     rdx, qword [rbp-40]
		mov     rax, qword [rdx]
		mov     qword [rbp-88], rax
		mov     rax, qword [rbp-80]
		cmp     rax, qword [rbp-88]
		setle   al
		movzx   rax, al
		mov     qword [rbp-96], rax
		mov     rax, qword [rbp-96]
		cmp     rax, 0
		jne     L4
		jmp     L8
L4:
		mov     rdx, qword [rbp-40]
		mov     rax, qword [rdx]
		mov     qword [rbp-104], rax
		mov     rdx, qword [rbp-24]
		mov     rax, qword [rdx]
		mov     qword [rbp-112], rax
		mov     rax, qword [rbp-104]
		cqo     
		mov     rcx, qword [rbp-112]
		idiv    rcx
		mov     qword [rbp-120], rdx
		mov     rax, qword [rbp-120]
		cmp     rax, 0
		sete    al
		movzx   rax, al
		mov     qword [rbp-128], rax
		mov     rax, qword [rbp-128]
		cmp     rax, 0
		jne     L5
		jmp     L6
L5:
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     
L6:
		jmp     L7
L7:
		mov     rdx, qword [rbp-24]
		mov     rax, qword [rdx]
		mov     qword [rbp-136], rax
		mov     rdx, qword [rbp-24]
		mov     rax, qword [rdx]
		mov     qword [rbp-144], rax
		mov     rax, qword [rbp-144]
		inc     rax
		mov     qword [rbp-152], rax
		mov     rax, qword [rbp-152]
		mov     rdx, qword [rbp-24]
		mov     qword [rdx], rax
		jmp     L3
L8:
		mov     rax, 1
		mov     rsp, rbp
		pop     rbp
		ret     

find:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 480
		mov     qword [rbp-8], rdi
		mov     qword [rbp-16], rsi
		mov     rax, rbp
		sub     rax, 24
		mov     qword [rbp-32], rax
		mov     rax, rbp
		sub     rax, 40
		mov     qword [rbp-48], rax
		mov     rax, rbp
		sub     rax, 56
		mov     qword [rbp-64], rax
		mov     rax, rbp
		sub     rax, 72
		mov     qword [rbp-80], rax
		mov     rax, qword [rbp-8]
		mov     rdx, qword [rbp-80]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-16]
		mov     rdx, qword [rbp-64]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-88], rax
		mov     rdi, qword [rbp-88]
		call    is_prime
		mov     qword [rbp-96], rax
		mov     rax, qword [rbp-96]
		cmp     rax, 0
		jne     L9
		jmp     L13
L9:
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-104], rax
		mov     rax, qword [rbp-104]
		cmp     rax, 0
		setg    al
		movzx   rax, al
		mov     qword [rbp-112], rax
		mov     rax, qword [rbp-112]
		cmp     rax, 0
		jne     L10
		jmp     L11
L10:
		mov     rdi, _str_0
		call    println
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-120], rax
		mov     rdi, qword [rbp-120]
		call    toString
		mov     qword [rbp-128], rax
		mov     rdi, qword [rbp-128]
		mov     rsi, _str_1
		call    _stringAdd
		mov     qword [rbp-136], rax
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-144], rax
		mov     rdi, qword [rbp-144]
		call    toString
		mov     qword [rbp-152], rax
		mov     rdi, qword [rbp-136]
		mov     rsi, qword [rbp-152]
		call    _stringAdd
		mov     qword [rbp-160], rax
		mov     rdi, qword [rbp-160]
		call    println
		jmp     L12
L11:
		mov     rdi, _str_2
		call    println
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-168], rax
		mov     rdi, qword [rbp-168]
		call    toString
		mov     qword [rbp-176], rax
		mov     rdi, qword [rbp-176]
		call    println
		jmp     L12
L12:
		mov     rsp, rbp
		pop     rbp
		ret     
L13:
		mov     rax, 5
		mov     rdx, qword [rbp-48]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-184], rax
		mov     rax, 1
		neg     rax
		mov     qword [rbp-192], rax
		mov     rax, qword [rbp-184]
		cmp     rax, qword [rbp-192]
		sete    al
		movzx   rax, al
		mov     qword [rbp-200], rax
		mov     rax, qword [rbp-200]
		cmp     rax, 0
		jne     L14
		jmp     L21
L14:
		mov     rax, 6
		mov     rdx, qword [rbp-32]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-208], rax
		mov     rax, qword [rbp-208]
		sub     rax, 2
		mov     qword [rbp-216], rax
		mov     rax, qword [rbp-216]
		mov     rdx, qword [rbp-32]
		mov     qword [rdx], rax
		jmp     L15
L15:
		jmp     L16
L16:
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-224], rax
		mov     rdi, qword [rbp-224]
		call    is_prime
		mov     qword [rbp-232], rax
		mov     rax, qword [rbp-232]
		cmp     rax, 0
		jne     L17
		jmp     L18
L17:
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-240], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-248], rax
		mov     rax, qword [rbp-240]
		sub     rax, qword [rbp-248]
		mov     qword [rbp-256], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-264], rax
		mov     rdi, qword [rbp-256]
		mov     rsi, qword [rbp-264]
		call    find
		mov     rsp, rbp
		pop     rbp
		ret     
L18:
		jmp     L19
L19:
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-272], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-280], rax
		mov     rax, qword [rbp-280]
		dec     rax
		mov     qword [rbp-288], rax
		mov     rax, qword [rbp-288]
		mov     rdx, qword [rbp-32]
		mov     qword [rdx], rax
		jmp     L15
L20:
		jmp     L29
L21:
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-296], rax
		mov     rax, qword [rbp-296]
		sub     rax, 1
		mov     qword [rbp-304], rax
		mov     rax, qword [rbp-304]
		mov     rdx, qword [rbp-48]
		mov     qword [rdx], rax
		jmp     L22
L22:
		jmp     L23
L23:
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-312], rax
		mov     rdi, qword [rbp-312]
		call    is_prime
		mov     qword [rbp-320], rax
		mov     rax, qword [rbp-320]
		cmp     rax, 0
		jne     L24
		jmp     L26
L24:
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-328], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-336], rax
		mov     rax, qword [rbp-328]
		sub     rax, qword [rbp-336]
		mov     qword [rbp-344], rax
		mov     rdi, qword [rbp-344]
		call    is_prime
		mov     qword [rbp-352], rax
		mov     rax, qword [rbp-352]
		cmp     rax, 0
		jne     L25
		jmp     L26
L25:
		mov     rdi, _str_3
		call    println
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-360], rax
		mov     rdi, qword [rbp-360]
		call    toString
		mov     qword [rbp-368], rax
		mov     rdi, qword [rbp-368]
		mov     rsi, _str_1
		call    _stringAdd
		mov     qword [rbp-376], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-384], rax
		mov     rdi, qword [rbp-384]
		call    toString
		mov     qword [rbp-392], rax
		mov     rdi, qword [rbp-376]
		mov     rsi, qword [rbp-392]
		call    _stringAdd
		mov     qword [rbp-400], rax
		mov     rdi, qword [rbp-400]
		mov     rsi, _str_1
		call    _stringAdd
		mov     qword [rbp-408], rax
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-416], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-424], rax
		mov     rax, qword [rbp-416]
		sub     rax, qword [rbp-424]
		mov     qword [rbp-432], rax
		mov     rdi, qword [rbp-432]
		call    toString
		mov     qword [rbp-440], rax
		mov     rdi, qword [rbp-408]
		mov     rsi, qword [rbp-440]
		call    _stringAdd
		mov     qword [rbp-448], rax
		mov     rdi, qword [rbp-448]
		call    println
		mov     rsp, rbp
		pop     rbp
		ret     
L26:
		jmp     L27
L27:
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-456], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-464], rax
		mov     rax, qword [rbp-464]
		dec     rax
		mov     qword [rbp-472], rax
		mov     rax, qword [rbp-472]
		mov     rdx, qword [rbp-48]
		mov     qword [rdx], rax
		jmp     L22
L28:
		jmp     L29
L29:
		mov     rsp, rbp
		pop     rbp
		ret     

work:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 16
		mov     rax, qword [rel n]
		mov     qword [rbp-8], rax
		mov     rax, 1
		neg     rax
		mov     qword [rbp-16], rax
		mov     rdi, qword [rbp-8]
		mov     rsi, qword [rbp-16]
		call    find
		mov     rsp, rbp
		pop     rbp
		ret     

main:
		push    rbp
		mov     rbp, rsp
		call    _globalInit
		call    init
		call    work
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     

SECTION .data

_str_0:
		dq      1
		db      32H, 00H

_str_1:
		dq      1
		db      20H, 00H

_str_2:
		dq      1
		db      31H, 00H

_str_3:
		dq      1
		db      33H, 00H

SECTION .bss
n:
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


