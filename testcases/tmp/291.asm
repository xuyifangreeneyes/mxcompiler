default rel

global __globalInit
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

main:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 512
		mov     qword [rbp - 8], r12
		mov     qword [rbp - 16], r14
		mov     qword [rbp - 24], rbx
		mov     qword [rbp - 32], r15
		mov     qword [rbp - 40], r13
		call    __globalInit
		call    getInt
		mov     qword [rbp - 48], rax
		mov     qword [rbp - 56], 0
		mov     qword [rbp - 64], 0
		mov     qword [rbp - 72], 0
		mov     qword [rbp - 80], 0
		mov     qword [rbp - 88], 0
		mov     qword [rbp - 96], 0
		mov     rdi, 0
		mov     r13, 0
		mov     r9, 0
		mov     rax, 0
		mov     r11, 0
		mov     rbx, 0
		mov     rsi, 0
		mov     r8, 0
		mov     rcx, 0
		mov     r12, 0
		mov     r14, 0
		mov     rdx, 0
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
__L_13:
		mov     r13, qword [rbp - 392]
		mov     qword [rbp - 432], r13
		mov     r13, qword [rbp - 400]
		mov     qword [rbp - 440], r13
		mov     r13, qword [rbp - 408]
		mov     qword [rbp - 448], r13
		mov     r13, qword [rbp - 416]
		mov     rdi, qword [rbp - 424]
		mov     r15, qword [rbp - 48]
		cmp     qword [rbp - 432], r15
		jge     __L_14
__L_15:
		mov     qword [rbp - 456], 0
		mov     r15, qword [rbp - 448]
		mov     qword [rbp - 464], r15
		mov     qword [rbp - 472], r13
		mov     qword [rbp - 480], rdi
		mov     r15, r14
		mov     r13, r10
__L_16:
		mov     r10, qword [rbp - 456]
		mov     qword [rbp - 488], r10
		mov     r10, qword [rbp - 464]
		mov     qword [rbp - 496], r10
		mov     r10, qword [rbp - 472]
		mov     r14, qword [rbp - 480]
		mov     rdi, r15
		mov     r15, rdx
		mov     rdx, qword [rbp - 48]
		cmp     qword [rbp - 488], rdx
		jge     __L_17
__L_18:
		mov     rdx, 0
__L_19:
		mov     qword [rbp - 504], rdx
		mov     rdx, r10
		mov     r10, r14
		mov     r14, rdi
		mov     rdi, r15
		mov     r15, qword [rbp - 48]
		cmp     qword [rbp - 504], r15
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
		mov     r9, 1
		jmp     __L_31
__L_29:
		mov     r9, 0
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
		mov     rax, 1
		jmp     __L_41
__L_39:
		mov     rax, 0
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
		mov     rbx, qword [rbp - 200]
		cmp     qword [rbp - 104], rbx
		jne     __L_62
__L_63:
		cmp     qword [rbp - 288], 0
		jg      __L_64
__L_62:
		mov     rbx, qword [rbp - 432]
		cmp     qword [rbp - 360], rbx
		jne     __L_65
__L_66:
		cmp     qword [rbp - 488], 0
		jle     __L_65
__L_67:
		cmp     qword [rbp - 504], 0
		jg      __L_64
__L_65:
		mov     rbx, qword [rbp - 504]
		cmp     qword [rbp - 104], rbx
		je      __L_64
__L_68:
		cmp     qword [rbp - 360], 0
		jle     __L_69
__L_70:
		cmp     qword [rbp - 488], 0
		jle     __L_69
__L_64:
		mov     rbx, 1
		jmp     __L_71
__L_69:
		mov     rbx, 0
__L_71:
		mov     r12, rbx
		mov     rbx, qword [rbp - 200]
		cmp     qword [rbp - 104], rbx
		jne     __L_72
__L_73:
		cmp     qword [rbp - 288], 0
		jg      __L_74
__L_72:
		mov     rbx, qword [rbp - 432]
		cmp     qword [rbp - 360], rbx
		jne     __L_75
__L_76:
		cmp     qword [rbp - 488], 0
		jle     __L_75
__L_77:
		cmp     qword [rbp - 504], 0
		jg      __L_74
__L_75:
		mov     rbx, qword [rbp - 504]
		cmp     qword [rbp - 104], rbx
		je      __L_74
__L_78:
		cmp     qword [rbp - 360], 0
		jle     __L_79
__L_80:
		cmp     qword [rbp - 488], 0
		jle     __L_79
__L_74:
		mov     rbx, 1
		jmp     __L_81
__L_79:
		mov     rbx, 0
__L_81:
		mov     r13, rbx
		cmp     r9, 0
		jne     __L_82
__L_83:
		mov     rbx, rdx
		jmp     __L_84
__L_82:
		mov     rbx, rdx
		inc     rbx
__L_84:
		cmp     rax, 0
		jne     __L_85
__L_86:
		jmp     __L_87
__L_85:
		inc     rbx
__L_87:
		cmp     r8, 0
		jne     __L_88
__L_89:
		jmp     __L_90
__L_88:
		inc     rbx
__L_90:
		cmp     rcx, 0
		jne     __L_91
__L_92:
		jmp     __L_93
__L_91:
		inc     rbx
__L_93:
		cmp     r12, 0
		jne     __L_94
__L_95:
		jmp     __L_96
__L_94:
		inc     rbx
__L_96:
		cmp     r13, 0
		jne     __L_97
__L_98:
		jmp     __L_99
__L_97:
		inc     rbx
__L_99:
		mov     rdx, qword [rbp - 504]
		inc     rdx
		mov     r10, rbx
		mov     r14, r9
		mov     r11, rax
		mov     rbx, r8
		mov     rsi, r8
		mov     r8, rcx
		mov     rdi, r12
		mov     r15, r13
		jmp     __L_19
__L_20:
		mov     r15, qword [rbp - 488]
		inc     r15
		mov     qword [rbp - 456], r15
		mov     r15, qword [rbp - 504]
		mov     qword [rbp - 464], r15
		mov     qword [rbp - 472], rdx
		mov     qword [rbp - 480], r10
		mov     r15, r14
		mov     rdx, rdi
		jmp     __L_16
__L_17:
		mov     rdx, qword [rbp - 432]
		inc     rdx
		mov     qword [rbp - 392], rdx
		mov     rdx, qword [rbp - 488]
		mov     qword [rbp - 400], rdx
		mov     rdx, qword [rbp - 496]
		mov     qword [rbp - 408], rdx
		mov     qword [rbp - 416], r10
		mov     qword [rbp - 424], r14
		mov     r14, rdi
		mov     rdx, r15
		mov     r10, r13
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
		mov     r13, rdi
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
		call    __printInt
		mov     r12, qword [rbp - 8]
		mov     r14, qword [rbp - 16]
		mov     rbx, qword [rbp - 24]
		mov     r15, qword [rbp - 32]
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


