default rel

global _globalInit
global func
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
		mov     rsp, rbp
		pop     rbp
		ret     

func:
		push    rbp
		mov     rbp, rsp
		add     rdi, rsi
		add     rdi, rdx
		and     rdi, 1073741823
		mov     rax, rdi
		mov     rsp, rbp
		pop     rbp
		ret     

main:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 544
		mov     qword [rbp - 8], r15
		mov     qword [rbp - 16], r14
		mov     qword [rbp - 24], r12
		mov     qword [rbp - 32], r13
		mov     qword [rbp - 40], rbx
		call    _globalInit
		call    getInt
		mov     qword [rbp - 48], rax
		mov     rbx, qword [rbp - 48]
		imul    rbx, 8
		add     rbx, 8
		mov     rdi, rbx
		call    malloc
		mov     qword [rbp - 56], rax
		mov     r8, qword [rbp - 56]
		mov     rcx, qword [rbp - 48]
		mov     qword [r8], rcx
		mov     r12, qword [rbp - 56]
		add     r12, rbx
		mov     rbx, qword [rbp - 56]
		add     rbx, 8
__L_1:
		cmp     rbx, r12
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_2
__L_3:
		mov     rdi, qword [rbp - 48]
		imul    rdi, 8
		add     rdi, 8
		call    malloc
		mov     rcx, qword [rbp - 48]
		mov     qword [rax], rcx
		mov     qword [rbx], rax
		add     rbx, 8
		jmp     __L_1
__L_2:
		mov     rbx, qword [rbp - 48]
		imul    rbx, 8
		add     rbx, 8
		mov     rdi, rbx
		call    malloc
		mov     qword [rbp - 64], rax
		mov     r8, qword [rbp - 64]
		mov     rcx, qword [rbp - 48]
		mov     qword [r8], rcx
		mov     r12, qword [rbp - 64]
		add     r12, rbx
		mov     rbx, qword [rbp - 64]
		add     rbx, 8
__L_4:
		cmp     rbx, r12
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_5
__L_6:
		mov     rdi, qword [rbp - 48]
		imul    rdi, 8
		add     rdi, 8
		call    malloc
		mov     rcx, qword [rbp - 48]
		mov     qword [rax], rcx
		mov     qword [rbx], rax
		add     rbx, 8
		jmp     __L_4
__L_5:
		mov     rbx, qword [rbp - 48]
		imul    rbx, 8
		add     rbx, 8
		mov     rdi, rbx
		call    malloc
		mov     qword [rbp - 72], rax
		mov     r8, qword [rbp - 72]
		mov     rcx, qword [rbp - 48]
		mov     qword [r8], rcx
		mov     r12, qword [rbp - 72]
		add     r12, rbx
		mov     rbx, qword [rbp - 72]
		add     rbx, 8
__L_7:
		cmp     rbx, r12
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_8
__L_9:
		mov     rdi, qword [rbp - 48]
		imul    rdi, 8
		add     rdi, 8
		call    malloc
		mov     rcx, qword [rbp - 48]
		mov     qword [rax], rcx
		mov     qword [rbx], rax
		add     rbx, 8
		jmp     __L_7
__L_8:
		mov     rcx, 0
__L_10:
		cmp     rcx, qword [rbp - 48]
		setl    al
		movzx   r8, al
		cmp     r8, 0
		je      __L_11
__L_12:
		mov     rbx, 0
__L_13:
		cmp     rbx, qword [rbp - 48]
		setl    al
		movzx   r8, al
		cmp     r8, 0
		je      __L_14
__L_15:
		mov     r8, rcx
		add     r8, rbx
		mov     r9, qword [rbp - 56]
		add     r9, 8
		mov     rdx, rcx
		imul    rdx, 8
		add     r9, rdx
		mov     rdx, qword [r9]
		add     rdx, 8
		mov     r9, rbx
		imul    r9, 8
		add     rdx, r9
		mov     qword [rdx], r8
		inc     rbx
		jmp     __L_13
__L_14:
		inc     rcx
		jmp     __L_10
__L_11:
		mov     qword [rbp - 80], 0
		mov     qword [rbp - 88], 0
		mov     qword [rbp - 96], 0
		mov     qword [rbp - 104], 0
		mov     qword [rbp - 112], 0
		mov     qword [rbp - 120], 0
		mov     qword [rbp - 128], 0
		mov     r15, 0
		mov     qword [rbp - 136], 0
		mov     qword [rbp - 144], 0
		mov     qword [rbp - 152], 0
		mov     qword [rbp - 160], 0
		mov     rcx, 0
		mov     r9, 0
		mov     r10, 0
		mov     rax, 0
		mov     rdx, 0
		mov     r8, 0
__L_16:
		mov     rbx, qword [rbp - 80]
		mov     qword [rbp - 168], rbx
		mov     rbx, qword [rbp - 88]
		mov     qword [rbp - 176], rbx
		mov     rbx, qword [rbp - 96]
		mov     qword [rbp - 184], rbx
		mov     rbx, qword [rbp - 104]
		mov     qword [rbp - 192], rbx
		mov     rbx, qword [rbp - 112]
		mov     qword [rbp - 200], rbx
		mov     rdi, qword [rbp - 120]
		mov     r13, qword [rbp - 128]
		mov     r11, r15
		mov     r15, qword [rbp - 136]
		mov     r12, qword [rbp - 144]
		mov     r14, qword [rbp - 152]
		mov     rsi, qword [rbp - 160]
		mov     rbx, rax
		mov     rax, qword [rbp - 48]
		cmp     qword [rbp - 168], rax
		setl    al
		movzx   rax, al
		cmp     rax, 0
		je      __L_17
__L_18:
		mov     qword [rbp - 208], 0
		mov     rax, qword [rbp - 176]
		mov     qword [rbp - 216], rax
		mov     rax, qword [rbp - 184]
		mov     qword [rbp - 224], rax
		mov     rax, qword [rbp - 192]
		mov     qword [rbp - 232], rax
		mov     rax, qword [rbp - 200]
		mov     qword [rbp - 240], rax
		mov     qword [rbp - 248], rdi
		mov     rdi, r13
		mov     r13, r11
		mov     qword [rbp - 256], r15
		mov     qword [rbp - 264], r14
		mov     r14, rsi
		mov     qword [rbp - 272], r10
		mov     rax, rbx
__L_19:
		mov     rbx, qword [rbp - 208]
		mov     qword [rbp - 280], rbx
		mov     rbx, qword [rbp - 216]
		mov     qword [rbp - 288], rbx
		mov     rbx, qword [rbp - 224]
		mov     qword [rbp - 296], rbx
		mov     rbx, qword [rbp - 232]
		mov     qword [rbp - 304], rbx
		mov     rbx, qword [rbp - 240]
		mov     qword [rbp - 312], rbx
		mov     r15, qword [rbp - 248]
		mov     r10, qword [rbp - 256]
		mov     r11, qword [rbp - 264]
		mov     rsi, qword [rbp - 272]
		mov     rbx, rax
		mov     rax, qword [rbp - 48]
		cmp     qword [rbp - 280], rax
		setl    al
		movzx   rax, al
		cmp     rax, 0
		je      __L_20
__L_21:
		mov     qword [rbp - 320], 0
		mov     rax, qword [rbp - 296]
		mov     qword [rbp - 328], rax
		mov     rax, qword [rbp - 304]
		mov     qword [rbp - 336], rax
		mov     rax, qword [rbp - 312]
		mov     qword [rbp - 344], rax
		mov     qword [rbp - 352], r15
		mov     qword [rbp - 360], rdi
		mov     qword [rbp - 368], r13
		mov     r15, r10
		mov     qword [rbp - 376], r12
		mov     qword [rbp - 384], r11
		mov     qword [rbp - 392], r14
		mov     rax, rdx
__L_22:
		mov     rdx, qword [rbp - 320]
		mov     qword [rbp - 400], rdx
		mov     rdx, qword [rbp - 328]
		mov     qword [rbp - 408], rdx
		mov     rdx, qword [rbp - 336]
		mov     qword [rbp - 416], rdx
		mov     rdx, qword [rbp - 344]
		mov     qword [rbp - 424], rdx
		mov     rdi, qword [rbp - 352]
		mov     r13, qword [rbp - 360]
		mov     r14, qword [rbp - 368]
		mov     r12, qword [rbp - 376]
		mov     r11, qword [rbp - 384]
		mov     rdx, qword [rbp - 392]
		mov     r10, rsi
		mov     rsi, rbx
		mov     rbx, rax
		mov     rax, qword [rbp - 48]
		cmp     qword [rbp - 400], rax
		setl    al
		movzx   rax, al
		cmp     rax, 0
		je      __L_23
__L_24:
		mov     rax, qword [rbp - 168]
		cmp     qword [rbp - 280], rax
		setge   al
		movzx   rax, al
		cmp     rax, 0
		jne     __L_25
__L_26:
		mov     rax, qword [rbp - 408]
		mov     qword [rbp - 432], rax
		mov     rax, qword [rbp - 416]
		mov     qword [rbp - 440], rax
		mov     rax, qword [rbp - 424]
		mov     qword [rbp - 448], rax
		mov     qword [rbp - 456], rdi
		mov     qword [rbp - 464], r13
		mov     qword [rbp - 472], r14
		mov     qword [rbp - 480], r15
		mov     r13, r11
		mov     rdi, r10
		mov     r10, rsi
		mov     r11, rbx
		jmp     __L_27
__L_25:
		mov     rsi, qword [rbp - 64]
		add     rsi, 8
		mov     r8, qword [rbp - 168]
		imul    r8, 8
		add     rsi, r8
		mov     rcx, qword [rsi]
		add     rcx, 8
		mov     rdx, qword [rbp - 280]
		mov     qword [rbp - 488], rdx
		mov     rdx, qword [rbp - 488]
		imul    rdx, 8
		mov     qword [rbp - 488], rdx
		add     rcx, qword [rbp - 488]
		mov     rcx, qword [rcx]
		mov     qword [rbp - 496], rcx
		mov     rcx, qword [rbp - 56]
		add     rcx, 8
		mov     qword [rbp - 504], rcx
		add     qword [rbp - 504], r8
		mov     rdx, qword [rbp - 504]
		mov     rdx, qword [rdx]
		add     rdx, 8
		mov     rax, qword [rbp - 400]
		imul    rax, 8
		add     rdx, rax
		mov     rdx, qword [rdx]
		mov     qword [rbp - 512], rdx
		mov     rbx, rcx
		add     rbx, rax
		mov     rcx, qword [rbx]
		add     rcx, 8
		add     rcx, qword [rbp - 488]
		mov     rcx, qword [rcx]
		mov     qword [rbp - 520], rcx
		mov     rcx, qword [rbp - 496]
		add     rcx, qword [rbp - 512]
		add     rcx, qword [rbp - 520]
		mov     r14, rcx
		and     r14, 1073741823
		mov     rcx, qword [rsi]
		add     rcx, 8
		add     rcx, qword [rbp - 488]
		mov     qword [rcx], r14
		mov     rcx, qword [rsi]
		add     rcx, 8
		add     rcx, qword [rbp - 488]
		mov     r12, qword [rcx]
		mov     rcx, qword [rbp - 504]
		mov     rcx, qword [rcx]
		add     rcx, 8
		add     rcx, rax
		mov     r13, qword [rcx]
		mov     rcx, qword [rbx]
		add     rcx, 8
		add     rcx, qword [rbp - 488]
		mov     r15, qword [rcx]
		mov     rcx, r12
		add     rcx, r13
		add     rcx, r15
		mov     rdi, rcx
		and     rdi, 1073741823
		mov     rcx, qword [rbp - 72]
		add     rcx, 8
		mov     r11, rcx
		add     r11, r8
		mov     rcx, qword [r11]
		add     rcx, 8
		add     rcx, qword [rbp - 488]
		mov     qword [rcx], rdi
		mov     rcx, qword [rsi]
		add     rcx, 8
		add     rcx, qword [rbp - 488]
		mov     r9, qword [rcx]
		mov     rcx, qword [rbp - 504]
		mov     rcx, qword [rcx]
		add     rcx, 8
		add     rcx, rax
		mov     rcx, qword [rcx]
		mov     r8, qword [rbx]
		add     r8, 8
		add     r8, qword [rbp - 488]
		mov     rdx, qword [r8]
		mov     r8, r9
		add     r8, rcx
		add     r8, rdx
		mov     r10, r8
		and     r10, 1073741823
		mov     r8, qword [r11]
		add     r8, 8
		add     r8, qword [rbp - 488]
		mov     qword [r8], r10
		mov     r8, qword [rsi]
		add     r8, 8
		add     r8, qword [rbp - 488]
		mov     r8, qword [r8]
		mov     rsi, qword [rbp - 504]
		mov     rsi, qword [rsi]
		add     rsi, 8
		add     rsi, rax
		mov     rax, qword [rsi]
		mov     rbx, qword [rbx]
		add     rbx, 8
		add     rbx, qword [rbp - 488]
		mov     rbx, qword [rbx]
		mov     rsi, r8
		add     rsi, rax
		add     rsi, rbx
		and     rsi, 1073741823
		mov     r11, qword [r11]
		add     r11, 8
		add     r11, qword [rbp - 488]
		mov     qword [r11], rsi
		mov     qword [rbp - 432], r14
		mov     r11, qword [rbp - 520]
		mov     qword [rbp - 440], r11
		mov     r11, qword [rbp - 512]
		mov     qword [rbp - 448], r11
		mov     r11, qword [rbp - 496]
		mov     qword [rbp - 456], r11
		mov     qword [rbp - 464], rdi
		mov     qword [rbp - 472], r15
		mov     qword [rbp - 480], r13
		mov     r13, r10
		mov     rdi, rsi
		mov     r10, rbx
		mov     r11, rax
__L_27:
		mov     rax, qword [rbp - 432]
		mov     qword [rbp - 528], rax
		mov     rax, qword [rbp - 440]
		mov     qword [rbp - 536], rax
		mov     rax, qword [rbp - 448]
		mov     qword [rbp - 544], rax
		mov     rsi, qword [rbp - 456]
		mov     rax, qword [rbp - 464]
		mov     rbx, qword [rbp - 472]
		mov     r14, qword [rbp - 480]
		mov     r15, qword [rbp - 400]
		inc     r15
		mov     qword [rbp - 320], r15
		mov     r15, qword [rbp - 528]
		mov     qword [rbp - 328], r15
		mov     r15, qword [rbp - 536]
		mov     qword [rbp - 336], r15
		mov     r15, qword [rbp - 544]
		mov     qword [rbp - 344], r15
		mov     qword [rbp - 352], rsi
		mov     qword [rbp - 360], rax
		mov     qword [rbp - 368], rbx
		mov     r15, r14
		mov     qword [rbp - 376], r12
		mov     qword [rbp - 384], r13
		mov     qword [rbp - 392], rdx
		mov     rsi, rdi
		mov     rbx, r10
		mov     rax, r11
		jmp     __L_22
__L_23:
		mov     rax, qword [rbp - 280]
		inc     rax
		mov     qword [rbp - 208], rax
		mov     rax, qword [rbp - 400]
		mov     qword [rbp - 216], rax
		mov     rax, qword [rbp - 408]
		mov     qword [rbp - 224], rax
		mov     rax, qword [rbp - 416]
		mov     qword [rbp - 232], rax
		mov     rax, qword [rbp - 424]
		mov     qword [rbp - 240], rax
		mov     qword [rbp - 248], rdi
		mov     rdi, r13
		mov     r13, r14
		mov     qword [rbp - 256], r15
		mov     qword [rbp - 264], r11
		mov     r14, rdx
		mov     qword [rbp - 272], r10
		mov     rax, rsi
		mov     rdx, rbx
		jmp     __L_19
__L_20:
		mov     rax, qword [rbp - 168]
		inc     rax
		mov     qword [rbp - 80], rax
		mov     rax, qword [rbp - 288]
		mov     qword [rbp - 88], rax
		mov     rax, qword [rbp - 296]
		mov     qword [rbp - 96], rax
		mov     rax, qword [rbp - 304]
		mov     qword [rbp - 104], rax
		mov     rax, qword [rbp - 312]
		mov     qword [rbp - 112], rax
		mov     qword [rbp - 120], r15
		mov     qword [rbp - 128], rdi
		mov     r15, r13
		mov     qword [rbp - 136], r10
		mov     qword [rbp - 144], r12
		mov     qword [rbp - 152], r11
		mov     qword [rbp - 160], r14
		mov     r10, rsi
		mov     rax, rbx
		jmp     __L_16
__L_17:
		mov     rcx, 0
		mov     rdi, 0
__L_28:
		cmp     rcx, qword [rbp - 48]
		setl    al
		movzx   r8, al
		cmp     r8, 0
		je      __L_29
__L_30:
		mov     r9, 0
__L_31:
		cmp     r9, qword [rbp - 48]
		setl    al
		movzx   r8, al
		cmp     r8, 0
		je      __L_32
__L_33:
		mov     rdx, qword [rbp - 64]
		add     rdx, 8
		mov     r8, rcx
		imul    r8, 8
		add     rdx, r8
		mov     r8, qword [rdx]
		add     r8, 8
		mov     rdx, r9
		imul    rdx, 8
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
		call    toString
		mov     rdi, rax
		call    print
		mov     r15, qword [rbp - 8]
		mov     r14, qword [rbp - 16]
		mov     r12, qword [rbp - 24]
		mov     r13, qword [rbp - 32]
		mov     rbx, qword [rbp - 40]
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     

SECTION .data

SECTION .bss


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


