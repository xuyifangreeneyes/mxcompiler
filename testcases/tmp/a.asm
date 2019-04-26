default rel

global _globalInit
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

main:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 512
		mov     qword [rbp - 8], r14
		mov     qword [rbp - 16], r12
		mov     qword [rbp - 24], r13
		mov     qword [rbp - 32], rbx
		mov     qword [rbp - 40], r15
		call    _globalInit
		call    getInt
		mov     qword [rbp - 48], rax
		mov     qword [rbp - 56], 0
		mov     qword [rbp - 64], 0
		mov     qword [rbp - 72], 0
		mov     qword [rbp - 80], 0
		mov     qword [rbp - 88], 0
		mov     qword [rbp - 96], 0
		mov     rax, 0
		mov     rdi, 0
		mov     r14, 0
		mov     rbx, 0
		mov     rdx, 0
		mov     r8, 0
		mov     rsi, 0
		mov     r13, 0
		mov     rcx, 0
		mov     r11, 0
		mov     r9, 0
		mov     r12, 0
		mov     r10, 0
__L_1:
		mov     r15, qword [rbp - 56]
		mov     qword [rbp - 104], r15
		mov     r15, qword [rbp - 64]
		mov     qword [rbp - 112], r15
		mov     r15, qword [rbp - 72]
		mov     qword [rbp - 120], r15
		mov     r15, qword [rbp - 80]
		mov     qword [rbp - 128], r15
		mov     r15, qword [rbp - 88]
		mov     qword [rbp - 136], r15
		mov     r15, qword [rbp - 96]
		mov     qword [rbp - 144], r15
		mov     r15, qword [rbp - 48]
		cmp     qword [rbp - 104], r15
		jge     __L_2
__L_3:
		mov     qword [rbp - 152], 0
		mov     r15, qword [rbp - 112]
		mov     qword [rbp - 160], r15
		mov     r15, qword [rbp - 120]
		mov     qword [rbp - 168], r15
		mov     r15, qword [rbp - 128]
		mov     qword [rbp - 176], r15
		mov     r15, qword [rbp - 136]
		mov     qword [rbp - 184], r15
		mov     r15, qword [rbp - 144]
		mov     qword [rbp - 192], r15
__L_4:
		mov     r15, qword [rbp - 152]
		mov     qword [rbp - 200], r15
		mov     r15, qword [rbp - 160]
		mov     qword [rbp - 208], r15
		mov     r15, qword [rbp - 168]
		mov     qword [rbp - 216], r15
		mov     r15, qword [rbp - 176]
		mov     qword [rbp - 224], r15
		mov     r15, qword [rbp - 184]
		mov     qword [rbp - 232], r15
		mov     r15, qword [rbp - 192]
		mov     qword [rbp - 240], r15
		mov     r15, qword [rbp - 48]
		cmp     qword [rbp - 200], r15
		jge     __L_5
__L_6:
		mov     qword [rbp - 248], 0
		mov     r15, qword [rbp - 216]
		mov     qword [rbp - 256], r15
		mov     r15, qword [rbp - 224]
		mov     qword [rbp - 264], r15
		mov     r15, qword [rbp - 232]
		mov     qword [rbp - 272], r15
		mov     r15, qword [rbp - 240]
		mov     qword [rbp - 280], r15
__L_7:
		mov     r15, qword [rbp - 248]
		mov     qword [rbp - 288], r15
		mov     r15, qword [rbp - 256]
		mov     qword [rbp - 296], r15
		mov     r15, qword [rbp - 264]
		mov     qword [rbp - 304], r15
		mov     r15, qword [rbp - 272]
		mov     qword [rbp - 312], r15
		mov     r15, qword [rbp - 280]
		mov     qword [rbp - 320], r15
		mov     r15, qword [rbp - 48]
		cmp     qword [rbp - 288], r15
		jge     __L_8
__L_9:
		mov     qword [rbp - 328], 0
		mov     r15, qword [rbp - 304]
		mov     qword [rbp - 336], r15
		mov     r15, qword [rbp - 312]
		mov     qword [rbp - 344], r15
		mov     r15, qword [rbp - 320]
		mov     qword [rbp - 352], r15
		mov     r15, rdi
__L_10:
		mov     rdi, qword [rbp - 328]
		mov     qword [rbp - 360], rdi
		mov     rdi, qword [rbp - 336]
		mov     qword [rbp - 368], rdi
		mov     rdi, qword [rbp - 344]
		mov     qword [rbp - 376], rdi
		mov     rdi, qword [rbp - 352]
		mov     qword [rbp - 384], rdi
		mov     rdi, r15
		mov     r15, qword [rbp - 48]
		cmp     qword [rbp - 360], r15
		jge     __L_11
__L_12:
		mov     qword [rbp - 392], 0
		mov     r15, qword [rbp - 376]
		mov     qword [rbp - 400], r15
		mov     r15, qword [rbp - 384]
		mov     qword [rbp - 408], r15
		mov     qword [rbp - 416], rdi
		mov     qword [rbp - 424], r13
		mov     rdi, r11
__L_13:
		mov     r11, qword [rbp - 392]
		mov     qword [rbp - 432], r11
		mov     r11, qword [rbp - 400]
		mov     qword [rbp - 440], r11
		mov     r11, qword [rbp - 408]
		mov     qword [rbp - 448], r11
		mov     r13, qword [rbp - 416]
		mov     r11, qword [rbp - 424]
		mov     r15, qword [rbp - 48]
		cmp     qword [rbp - 432], r15
		jge     __L_14
__L_15:
		mov     qword [rbp - 456], 0
		mov     r15, qword [rbp - 448]
		mov     qword [rbp - 464], r15
		mov     qword [rbp - 472], r13
		mov     r13, r11
		mov     qword [rbp - 480], rdi
		mov     r11, r12
__L_16:
		mov     r12, qword [rbp - 456]
		mov     qword [rbp - 488], r12
		mov     r12, qword [rbp - 464]
		mov     qword [rbp - 496], r12
		mov     rdi, qword [rbp - 472]
		mov     r15, qword [rbp - 480]
		mov     r12, r11
		mov     r11, r10
		mov     r10, qword [rbp - 48]
		cmp     qword [rbp - 488], r10
		jge     __L_17
__L_18:
		mov     r10, 0
__L_19:
		mov     qword [rbp - 504], r10
		mov     r10, rdi
		mov     rdi, r15
		mov     r15, r12
		mov     r12, r11
		mov     r11, qword [rbp - 48]
		cmp     qword [rbp - 504], r11
		jge     __L_20
__L_21:
		mov     rcx, qword [rbp - 200]
		cmp     qword [rbp - 104], rcx
		jne     __L_22
__L_23:
		cmp     qword [rbp - 288], 0
		jg      __L_24
__L_22:
		mov     rcx, qword [rbp - 432]
		cmp     qword [rbp - 360], rcx
		jne     __L_25
__L_26:
		cmp     qword [rbp - 488], 0
		jle     __L_25
__L_27:
		cmp     qword [rbp - 504], 0
		jg      __L_24
__L_25:
		mov     rcx, qword [rbp - 504]
		cmp     qword [rbp - 104], rcx
		je      __L_24
__L_28:
		cmp     qword [rbp - 360], 0
		jle     __L_29
__L_30:
		cmp     qword [rbp - 488], 0
		jle     __L_29
__L_24:
		mov     rbx, 1
		jmp     __L_31
__L_29:
		mov     rbx, 0
__L_31:
		mov     rcx, qword [rbp - 200]
		cmp     qword [rbp - 104], rcx
		jne     __L_32
__L_33:
		cmp     qword [rbp - 288], 0
		jg      __L_34
__L_32:
		mov     rcx, qword [rbp - 432]
		cmp     qword [rbp - 360], rcx
		jne     __L_35
__L_36:
		cmp     qword [rbp - 488], 0
		jle     __L_35
__L_37:
		cmp     qword [rbp - 504], 0
		jg      __L_34
__L_35:
		mov     rcx, qword [rbp - 504]
		cmp     qword [rbp - 104], rcx
		je      __L_34
__L_38:
		cmp     qword [rbp - 360], 0
		jle     __L_39
__L_40:
		cmp     qword [rbp - 488], 0
		jle     __L_39
__L_34:
		mov     rdx, 1
		jmp     __L_41
__L_39:
		mov     rdx, 0
__L_41:
		mov     rcx, qword [rbp - 200]
		cmp     qword [rbp - 104], rcx
		jne     __L_42
__L_43:
		cmp     qword [rbp - 288], 0
		jg      __L_44
__L_42:
		mov     rcx, qword [rbp - 432]
		cmp     qword [rbp - 360], rcx
		jne     __L_45
__L_46:
		cmp     qword [rbp - 488], 0
		jle     __L_45
__L_47:
		cmp     qword [rbp - 504], 0
		jg      __L_44
__L_45:
		mov     rcx, qword [rbp - 504]
		cmp     qword [rbp - 104], rcx
		je      __L_44
__L_48:
		cmp     qword [rbp - 360], 0
		jle     __L_49
__L_50:
		cmp     qword [rbp - 488], 0
		jle     __L_49
__L_44:
		mov     r8, 1
		jmp     __L_51
__L_49:
		mov     r8, 0
__L_51:
		mov     rcx, qword [rbp - 200]
		cmp     qword [rbp - 104], rcx
		jne     __L_52
__L_53:
		cmp     qword [rbp - 288], 0
		jg      __L_54
__L_52:
		mov     rcx, qword [rbp - 432]
		cmp     qword [rbp - 360], rcx
		jne     __L_55
__L_56:
		cmp     qword [rbp - 488], 0
		jle     __L_55
__L_57:
		cmp     qword [rbp - 504], 0
		jg      __L_54
__L_55:
		mov     rcx, qword [rbp - 504]
		cmp     qword [rbp - 104], rcx
		je      __L_54
__L_58:
		cmp     qword [rbp - 360], 0
		jle     __L_59
__L_60:
		cmp     qword [rbp - 488], 0
		jle     __L_59
__L_54:
		mov     rcx, 1
		jmp     __L_61
__L_59:
		mov     rcx, 0
__L_61:
		mov     r9, qword [rbp - 200]
		cmp     qword [rbp - 104], r9
		jne     __L_62
__L_63:
		cmp     qword [rbp - 288], 0
		jg      __L_64
__L_62:
		mov     r9, qword [rbp - 432]
		cmp     qword [rbp - 360], r9
		jne     __L_65
__L_66:
		cmp     qword [rbp - 488], 0
		jle     __L_65
__L_67:
		cmp     qword [rbp - 504], 0
		jg      __L_64
__L_65:
		mov     r9, qword [rbp - 504]
		cmp     qword [rbp - 104], r9
		je      __L_64
__L_68:
		cmp     qword [rbp - 360], 0
		jle     __L_69
__L_70:
		cmp     qword [rbp - 488], 0
		jle     __L_69
__L_64:
		mov     r9, 1
		jmp     __L_71
__L_69:
		mov     r9, 0
__L_71:
		mov     rsi, qword [rbp - 200]
		cmp     qword [rbp - 104], rsi
		jne     __L_72
__L_73:
		cmp     qword [rbp - 288], 0
		jg      __L_74
__L_72:
		mov     rsi, qword [rbp - 432]
		cmp     qword [rbp - 360], rsi
		jne     __L_75
__L_76:
		cmp     qword [rbp - 488], 0
		jle     __L_75
__L_77:
		cmp     qword [rbp - 504], 0
		jg      __L_74
__L_75:
		mov     rsi, qword [rbp - 504]
		cmp     qword [rbp - 104], rsi
		je      __L_74
__L_78:
		cmp     qword [rbp - 360], 0
		jle     __L_79
__L_80:
		cmp     qword [rbp - 488], 0
		jle     __L_79
__L_74:
		mov     rsi, 1
		jmp     __L_81
__L_79:
		mov     rsi, 0
__L_81:
		mov     r12, rsi
		cmp     rbx, 0
		jne     __L_82
__L_83:
		mov     rsi, rax
		jmp     __L_84
__L_82:
		mov     rsi, rax
		inc     rsi
__L_84:
		cmp     rdx, 0
		jne     __L_85
__L_86:
		jmp     __L_87
__L_85:
		inc     rsi
__L_87:
		cmp     r8, 0
		jne     __L_88
__L_89:
		jmp     __L_90
__L_88:
		inc     rsi
__L_90:
		cmp     rcx, 0
		jne     __L_91
__L_92:
		jmp     __L_93
__L_91:
		inc     rsi
__L_93:
		cmp     r9, 0
		jne     __L_94
__L_95:
		jmp     __L_96
__L_94:
		inc     rsi
__L_96:
		cmp     r12, 0
		jne     __L_97
__L_98:
		jmp     __L_99
__L_97:
		inc     rsi
__L_99:
		mov     rax, qword [rbp - 504]
		inc     rax
		mov     r10, rax
		mov     rax, rsi
		mov     rdi, rbx
		mov     r14, rbx
		mov     rbx, rdx
		mov     rsi, r8
		mov     r13, rcx
		mov     r15, r9
		mov     r11, r12
		jmp     __L_19
__L_20:
		mov     r11, qword [rbp - 488]
		inc     r11
		mov     qword [rbp - 456], r11
		mov     r11, qword [rbp - 504]
		mov     qword [rbp - 464], r11
		mov     qword [rbp - 472], r10
		mov     qword [rbp - 480], rdi
		mov     r11, r15
		mov     r10, r12
		jmp     __L_16
__L_17:
		mov     r10, qword [rbp - 432]
		inc     r10
		mov     qword [rbp - 392], r10
		mov     r10, qword [rbp - 488]
		mov     qword [rbp - 400], r10
		mov     r10, qword [rbp - 496]
		mov     qword [rbp - 408], r10
		mov     qword [rbp - 416], rdi
		mov     qword [rbp - 424], r13
		mov     rdi, r15
		mov     r10, r11
		jmp     __L_13
__L_14:
		mov     r15, qword [rbp - 360]
		inc     r15
		mov     qword [rbp - 328], r15
		mov     r15, qword [rbp - 432]
		mov     qword [rbp - 336], r15
		mov     r15, qword [rbp - 440]
		mov     qword [rbp - 344], r15
		mov     r15, qword [rbp - 448]
		mov     qword [rbp - 352], r15
		mov     r15, r13
		mov     r13, r11
		mov     r11, rdi
		jmp     __L_10
__L_11:
		mov     r15, qword [rbp - 288]
		inc     r15
		mov     qword [rbp - 248], r15
		mov     r15, qword [rbp - 360]
		mov     qword [rbp - 256], r15
		mov     r15, qword [rbp - 368]
		mov     qword [rbp - 264], r15
		mov     r15, qword [rbp - 376]
		mov     qword [rbp - 272], r15
		mov     r15, qword [rbp - 384]
		mov     qword [rbp - 280], r15
		jmp     __L_7
__L_8:
		mov     r15, qword [rbp - 200]
		inc     r15
		mov     qword [rbp - 152], r15
		mov     r15, qword [rbp - 288]
		mov     qword [rbp - 160], r15
		mov     r15, qword [rbp - 296]
		mov     qword [rbp - 168], r15
		mov     r15, qword [rbp - 304]
		mov     qword [rbp - 176], r15
		mov     r15, qword [rbp - 312]
		mov     qword [rbp - 184], r15
		mov     r15, qword [rbp - 320]
		mov     qword [rbp - 192], r15
		jmp     __L_4
__L_5:
		mov     r15, qword [rbp - 104]
		inc     r15
		mov     qword [rbp - 56], r15
		mov     r15, qword [rbp - 208]
		mov     qword [rbp - 64], r15
		mov     r15, qword [rbp - 216]
		mov     qword [rbp - 72], r15
		mov     r15, qword [rbp - 224]
		mov     qword [rbp - 80], r15
		mov     r15, qword [rbp - 232]
		mov     qword [rbp - 88], r15
		mov     r15, qword [rbp - 240]
		mov     qword [rbp - 96], r15
		jmp     __L_1
__L_2:
		mov     rdi, rax
		call    toString
		mov     rdi, rax
		call    print
		mov     r14, qword [rbp - 8]
		mov     r12, qword [rbp - 16]
		mov     r13, qword [rbp - 24]
		mov     rbx, qword [rbp - 32]
		mov     r15, qword [rbp - 40]
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


