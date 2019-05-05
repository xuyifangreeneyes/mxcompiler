default rel

global _n
global _h
global _now
global _a
global _Q
global _R
global _seed
global __globalInit
global random
global initialize
global swap
global pd
global show
global win
global merge
global move
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
		mov     qword [rel _seed], 1
		pop     rbp
		ret     

random:
		push    rbp
		mov     rbp, rsp
		mov     r9, qword [rel _R]
		mov     r8, qword [rel _seed]
		mov     rsi, qword [rel _Q]
		mov     rax, r8
		cqo     
		idiv    rsi
		mov     rcx, 48271
		imul    rcx, rdx
		mov     rax, r8
		cqo     
		idiv    rsi
		imul    r9, rax
		sub     rcx, r9
		cmp     rcx, 0
		jge     __L_3
__L_1:
		add     rcx, 2147483647
__L_3:
		mov     rax, rcx
		mov     qword [rel _seed], rax
		pop     rbp
		ret     

initialize:
		push    rbp
		mov     rbp, rsp
		mov     qword [rel _seed], rdi
		pop     rbp
		ret     

swap:
		push    rbp
		mov     rbp, rsp
		mov     rcx, qword [rel _a]
		shl     rdi, 3
		mov     r8, rcx
		add     r8, rdi
		mov     r9, qword [r8]
		shl     rsi, 3
		add     rcx, rsi
		mov     rdx, qword [rcx]
		mov     qword [r8], rdx
		mov     qword [rcx], r9
		pop     rbp
		ret     

pd:
		push    rbp
		mov     rbp, rsp
		mov     rcx, qword [rel _h]
__L_4:
		cmp     rcx, rdi
		jg      __L_5
__L_6:
		mov     r8, rcx
		add     r8, 1
		mov     rax, rcx
		imul    rax, r8
		cqo     
		mov     r8, 2
		idiv    r8
		cmp     rdi, rax
		jne     __L_7
__L_8:
		mov     qword [rel _h], rcx
		mov     rax, 1
		pop     rbp
		ret     
__L_7:
		inc     rcx
		jmp     __L_4
__L_5:
		mov     qword [rel _h], rcx
		mov     rax, 0
		pop     rbp
		ret     

show:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 32
		mov     qword [rbp - 8], r14
		mov     qword [rbp - 16], r13
		mov     qword [rbp - 24], rbx
		mov     r13, qword [rel _now]
		mov     r14, qword [rel _a]
		mov     rbx, 0
__L_9:
		cmp     rbx, r13
		jge     __L_10
__L_11:
		mov     rcx, rbx
		shl     rcx, 3
		mov     r8, r14
		add     r8, rcx
		mov     rdi, qword [r8]
		call    __printInt
		mov     rdi, __str_0
		call    print
		inc     rbx
		jmp     __L_9
__L_10:
		mov     rdi, __str_1
		call    println
		mov     r14, qword [rbp - 8]
		mov     r13, qword [rbp - 16]
		mov     rbx, qword [rbp - 24]
		mov     rsp, rbp
		pop     rbp
		ret     

win:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 32
		mov     qword [rbp - 8], r14
		mov     qword [rbp - 16], r13
		mov     qword [rbp - 24], rbx
		mov     r13, qword [rel _now]
		mov     rbx, qword [rel _h]
		mov     r14, qword [rel _a]
		mov     rdi, 816
		call    malloc
		mov     qword [rax], 101
		add     rax, 8
		cmp     r13, rbx
		je      __L_12
__L_13:
		mov     r14, qword [rbp - 8]
		mov     r13, qword [rbp - 16]
		mov     rbx, qword [rbp - 24]
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     
__L_12:
		mov     rcx, 0
__L_14:
		cmp     rcx, r13
		jge     __L_15
__L_16:
		mov     r8, rcx
		shl     r8, 3
		mov     rdx, r14
		add     rdx, r8
		mov     r9, qword [rdx]
		mov     rdx, rax
		add     rdx, r8
		mov     qword [rdx], r9
		inc     rcx
		jmp     __L_14
__L_15:
		mov     rcx, 0
		mov     r8, 0
__L_17:
		mov     rdx, r13
		sub     rdx, 1
		cmp     rcx, rdx
		jge     __L_18
__L_19:
		mov     rdx, rcx
		add     rdx, 1
__L_20:
		cmp     rdx, r13
		jge     __L_21
__L_22:
		mov     r9, rcx
		shl     r9, 3
		mov     rbx, rax
		add     rbx, r9
		mov     rsi, qword [rbx]
		mov     r9, rdx
		shl     r9, 3
		mov     rbx, rax
		add     rbx, r9
		mov     r9, qword [rbx]
		cmp     rsi, r9
		jle     __L_25
__L_23:
		mov     r8, rcx
		shl     r8, 3
		mov     r9, rax
		add     r9, r8
		mov     r8, qword [r9]
		mov     rbx, rdx
		shl     rbx, 3
		mov     rsi, rax
		add     rsi, rbx
		mov     rbx, qword [rsi]
		mov     qword [r9], rbx
		mov     qword [rsi], r8
__L_25:
		inc     rdx
		jmp     __L_20
__L_21:
		inc     rcx
		jmp     __L_17
__L_18:
		mov     rcx, 0
__L_26:
		cmp     rcx, r13
		jge     __L_27
__L_28:
		mov     r8, rcx
		shl     r8, 3
		mov     rdx, rax
		add     rdx, r8
		mov     rdx, qword [rdx]
		mov     r8, rcx
		add     r8, 1
		cmp     rdx, r8
		je      __L_29
__L_30:
		mov     r14, qword [rbp - 8]
		mov     r13, qword [rbp - 16]
		mov     rbx, qword [rbp - 24]
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     
__L_29:
		inc     rcx
		jmp     __L_26
__L_27:
		mov     r14, qword [rbp - 8]
		mov     r13, qword [rbp - 16]
		mov     rbx, qword [rbp - 24]
		mov     rax, 1
		mov     rsp, rbp
		pop     rbp
		ret     

merge:
		push    rbp
		mov     rbp, rsp
		mov     r11, r14
		mov     rsi, qword [rel _now]
		mov     r10, qword [rel _a]
		mov     rax, 0
		mov     r9, 0
		mov     rdx, 0
		mov     r8, 0
		mov     rcx, 0
__L_31:
		cmp     rax, rsi
		jge     __L_32
__L_33:
		mov     r14, rax
		shl     r14, 3
		mov     rdi, r10
		add     rdi, r14
		mov     r14, qword [rdi]
		cmp     r14, 0
		jne     __L_36
__L_34:
		mov     r9, rax
		add     r9, 1
__L_37:
		cmp     r9, rsi
		jge     __L_36
__L_38:
		mov     r14, r9
		shl     r14, 3
		mov     rdi, r10
		add     rdi, r14
		mov     r14, qword [rdi]
		cmp     r14, 0
		je      __L_40
__L_41:
		mov     rcx, rax
		shl     rcx, 3
		mov     r8, r10
		add     r8, rcx
		mov     rcx, qword [r8]
		mov     rdx, r9
		shl     rdx, 3
		mov     r14, r10
		add     r14, rdx
		mov     rdx, qword [r14]
		mov     qword [r8], rdx
		mov     qword [r14], rcx
		mov     rdx, rcx
		mov     r8, r9
		mov     rcx, rax
		jmp     __L_36
__L_40:
		inc     r9
		jmp     __L_37
__L_36:
		inc     rax
		jmp     __L_31
__L_32:
		mov     rcx, 0
__L_42:
		cmp     rcx, rsi
		jl      __L_43
__L_44:
		mov     rcx, rsi
		jmp     __L_45
__L_43:
		mov     r8, rcx
		shl     r8, 3
		mov     rdx, r10
		add     rdx, r8
		mov     r8, qword [rdx]
		cmp     r8, 0
		je      __L_45
__L_46:
		inc     rcx
		jmp     __L_42
__L_45:
		mov     qword [rel _now], rcx
		mov     r14, r11
		pop     rbp
		ret     

move:
		push    rbp
		mov     rbp, rsp
		mov     rcx, qword [rel _now]
		mov     rdx, qword [rel _a]
		mov     r8, 0
__L_48:
		cmp     r8, rcx
		jge     __L_49
__L_50:
		mov     r9, r8
		shl     r9, 3
		mov     rax, rdx
		add     rax, r9
		mov     r9, qword [rax]
		dec     r9
		mov     qword [rax], r9
		add     r8, 1
		jmp     __L_48
__L_49:
		mov     r8, rcx
		shl     r8, 3
		add     rdx, r8
		mov     qword [rdx], rcx
		inc     rcx
		mov     qword [rel _now], rcx
		pop     rbp
		ret     

main:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 384
		mov     qword [rbp - 8], r14
		mov     qword [rbp - 16], r13
		mov     qword [rbp - 24], rbx
		mov     qword [rbp - 32], r15
		mov     qword [rbp - 40], r12
		call    __globalInit
		mov     rcx, qword [rel _R]
		mov     qword [rbp - 48], rcx
		mov     rcx, qword [rel _now]
		mov     qword [rbp - 56], rcx
		mov     rcx, qword [rel _h]
		mov     qword [rbp - 64], rcx
		mov     rcx, qword [rel _seed]
		mov     qword [rbp - 72], rcx
		mov     rcx, qword [rel _a]
		mov     qword [rbp - 80], rcx
		mov     rbx, qword [rel _n]
		mov     r14, qword [rel _Q]
		call    getInt
		mov     qword [rbp - 88], rax
		mov     qword [rbp - 96], 0
		mov     qword [rbp - 104], 0
		mov     qword [rbp - 112], 0
		mov     qword [rbp - 120], 0
		mov     qword [rbp - 128], 0
		mov     qword [rbp - 136], 0
		mov     qword [rbp - 144], 0
		mov     qword [rbp - 152], 0
		mov     qword [rbp - 160], 0
		mov     qword [rbp - 168], 0
		mov     qword [rbp - 176], 0
		mov     rsi, 0
		mov     r12, 0
		mov     r15, 0
		mov     r13, 0
		mov     rcx, r14
		mov     rax, qword [rbp - 80]
		mov     r8, qword [rbp - 72]
		mov     r9, qword [rbp - 64]
		mov     r14, qword [rbp - 56]
		mov     rdx, qword [rbp - 48]
__L_51:
		mov     r10, qword [rbp - 96]
		mov     qword [rbp - 184], r10
		mov     r10, qword [rbp - 104]
		mov     qword [rbp - 192], r10
		mov     r10, qword [rbp - 112]
		mov     qword [rbp - 200], r10
		mov     r10, qword [rbp - 120]
		mov     qword [rbp - 208], r10
		mov     r10, qword [rbp - 128]
		mov     qword [rbp - 216], r10
		mov     r10, qword [rbp - 136]
		mov     qword [rbp - 224], r10
		mov     r10, qword [rbp - 144]
		mov     qword [rbp - 232], r10
		mov     r10, qword [rbp - 152]
		mov     qword [rbp - 240], r10
		mov     r10, qword [rbp - 160]
		mov     qword [rbp - 248], r10
		mov     r10, qword [rbp - 168]
		mov     qword [rbp - 256], r10
		mov     r10, qword [rbp - 176]
		mov     qword [rbp - 264], r10
		mov     qword [rbp - 272], rsi
		mov     rsi, rbx
		mov     rbx, r8
		mov     r8, rdx
		mov     rdx, qword [rbp - 88]
		cmp     qword [rbp - 184], rdx
		jge     __L_52
__L_53:
		mov     rdi, 1608
		call    malloc
		mov     qword [rax], 200
		mov     qword [rbp - 280], rax
		add     qword [rbp - 280], 8
		mov     rcx, 0
__L_54:
		mov     qword [rbp - 288], rcx
		cmp     qword [rbp - 288], 5050
		jg      __L_55
__L_56:
		mov     rcx, qword [rbp - 288]
		add     rcx, 1
		mov     rax, qword [rbp - 288]
		imul    rax, rcx
		cqo     
		mov     rcx, 2
		idiv    rcx
		mov     rcx, 5050
		cmp     rcx, rax
		jne     __L_57
__L_58:
		mov     rcx, 1
		jmp     __L_59
__L_57:
		mov     rcx, qword [rbp - 288]
		inc     rcx
		jmp     __L_54
__L_55:
		mov     rcx, 0
__L_59:
		cmp     rcx, 0
		jne     __L_60
__L_61:
		mov     rdi, __str_2
		call    println
		mov     qword [rel _Q], 44488
		mov     qword [rel _n], 5050
		mov     rcx, qword [rbp - 280]
		mov     qword [rel _a], rcx
		mov     qword [rel _seed], rbx
		mov     rcx, qword [rbp - 288]
		mov     qword [rel _h], rcx
		mov     qword [rel _now], r14
		mov     qword [rel _R], 3399
		mov     r14, qword [rbp - 8]
		mov     r13, qword [rbp - 16]
		mov     rbx, qword [rbp - 24]
		mov     r15, qword [rbp - 32]
		mov     r12, qword [rbp - 40]
		mov     rax, 1
		mov     rsp, rbp
		pop     rbp
		ret     
__L_60:
		mov     rdi, __str_3
		call    println
		mov     rax, rbx
		cqo     
		mov     rcx, 44488
		idiv    rcx
		mov     r8, 48271
		imul    r8, rdx
		mov     rax, rbx
		cqo     
		mov     rcx, 44488
		idiv    rcx
		mov     rcx, 3399
		imul    rcx, rax
		sub     r8, rcx
		cmp     r8, 0
		jge     __L_64
__L_62:
		add     r8, 2147483647
__L_64:
		mov     rax, r8
		cqo     
		mov     rcx, 44488
		idiv    rcx
		mov     rcx, 48271
		imul    rcx, rdx
		mov     rax, r8
		cqo     
		mov     r8, 44488
		idiv    r8
		mov     r8, 3399
		imul    r8, rax
		sub     rcx, r8
		cmp     rcx, 0
		jge     __L_67
__L_65:
		add     rcx, 2147483647
__L_67:
		mov     rbx, rcx
		mov     rax, rbx
		cqo     
		mov     rcx, 10
		idiv    rcx
		mov     r14, rdx
		add     r14, 1
		mov     rdi, r14
		call    __printlnInt
		mov     rsi, 0
		mov     rcx, 0
		mov     r8, qword [rbp - 192]
		mov     r9, qword [rbp - 200]
		mov     rax, qword [rbp - 208]
		mov     rdx, qword [rbp - 216]
__L_68:
		mov     qword [rbp - 296], r8
		mov     qword [rbp - 304], r9
		mov     qword [rbp - 312], rax
		mov     qword [rbp - 320], rdx
		mov     qword [rbp - 328], rbx
		mov     r8, r14
		sub     r8, 1
		cmp     rsi, r8
		jge     __L_69
__L_70:
		mov     rax, qword [rbp - 328]
		cqo     
		mov     r8, 44488
		idiv    r8
		mov     r8, 48271
		imul    r8, rdx
		mov     rax, qword [rbp - 328]
		cqo     
		mov     r9, 44488
		idiv    r9
		mov     rdx, 3399
		imul    rdx, rax
		mov     r9, r8
		sub     r9, rdx
		cmp     r9, 0
		jl      __L_71
__L_72:
		mov     r8, r9
		jmp     __L_73
__L_71:
		mov     r8, r9
		add     r8, 2147483647
__L_73:
		mov     rax, r8
		cqo     
		mov     rbx, 10
		idiv    rbx
		add     rdx, 1
		mov     rax, rsi
		shl     rax, 3
		mov     rbx, qword [rbp - 280]
		add     rbx, rax
		mov     qword [rbx], rdx
		mov     rdx, qword [rbp - 312]
		mov     r10, qword [rbp - 320]
		mov     rbx, r8
__L_74:
		mov     rax, rdx
		mov     rdx, r10
		mov     r10, rsi
		shl     r10, 3
		mov     r11, qword [rbp - 280]
		add     r11, r10
		mov     r10, qword [r11]
		add     r10, rcx
		cmp     r10, 5050
		jle     __L_75
__L_76:
		mov     rax, rbx
		cqo     
		mov     r10, 44488
		idiv    r10
		mov     r10, 48271
		imul    r10, rdx
		mov     rax, rbx
		cqo     
		mov     rbx, 44488
		idiv    rbx
		mov     rdx, 3399
		imul    rdx, rax
		sub     r10, rdx
		cmp     r10, 0
		jl      __L_77
__L_78:
		mov     rbx, r10
		jmp     __L_79
__L_77:
		mov     rbx, r10
		add     rbx, 2147483647
__L_79:
		mov     rax, rbx
		cqo     
		mov     r11, 10
		idiv    r11
		add     rdx, 1
		mov     rax, rsi
		shl     rax, 3
		mov     r11, qword [rbp - 280]
		add     r11, rax
		mov     qword [r11], rdx
		mov     rdx, rbx
		jmp     __L_74
__L_75:
		mov     r10, rsi
		shl     r10, 3
		mov     r11, qword [rbp - 280]
		add     r11, r10
		mov     r11, qword [r11]
		mov     r10, rcx
		add     r10, r11
		mov     rcx, rsi
		inc     rcx
		mov     rsi, rcx
		mov     rcx, r10
		jmp     __L_68
__L_69:
		mov     rdx, 5050
		sub     rdx, rcx
		mov     rcx, r14
		sub     rcx, 1
		shl     rcx, 3
		mov     r8, qword [rbp - 280]
		add     r8, rcx
		mov     qword [r8], rdx
		mov     rbx, 0
__L_80:
		cmp     rbx, r14
		jge     __L_81
__L_82:
		mov     rcx, rbx
		shl     rcx, 3
		mov     r8, qword [rbp - 280]
		add     r8, rcx
		mov     rdi, qword [r8]
		call    __printInt
		mov     rdi, __str_0
		call    print
		inc     rbx
		jmp     __L_80
__L_81:
		mov     rdi, __str_1
		call    println
		mov     rcx, qword [rbp - 224]
		mov     rax, 0
		mov     r8, qword [rbp - 256]
		mov     rdx, qword [rbp - 264]
		mov     r9, qword [rbp - 272]
__L_83:
		mov     qword [rbp - 336], rcx
		mov     qword [rbp - 344], r8
		mov     qword [rbp - 352], rdx
		mov     qword [rbp - 360], r9
		cmp     rax, r14
		jge     __L_84
__L_85:
		mov     rcx, rax
		shl     rcx, 3
		mov     r8, qword [rbp - 280]
		add     r8, rcx
		mov     rcx, qword [r8]
		cmp     rcx, 0
		je      __L_86
__L_87:
		mov     rcx, qword [rbp - 336]
		mov     r8, qword [rbp - 344]
		mov     rdx, qword [rbp - 352]
		mov     r9, qword [rbp - 360]
		jmp     __L_88
__L_86:
		mov     rcx, rax
		add     rcx, 1
__L_89:
		cmp     rcx, r14
		jl      __L_90
__L_91:
		mov     r8, qword [rbp - 344]
		mov     rdx, qword [rbp - 352]
		mov     r9, qword [rbp - 360]
		jmp     __L_88
__L_90:
		mov     r8, rcx
		shl     r8, 3
		mov     rdx, qword [rbp - 280]
		add     rdx, r8
		mov     r8, qword [rdx]
		cmp     r8, 0
		je      __L_92
__L_93:
		mov     r8, rax
		shl     r8, 3
		mov     rbx, qword [rbp - 280]
		add     rbx, r8
		mov     r8, qword [rbx]
		mov     rdx, rcx
		shl     rdx, 3
		mov     r9, qword [rbp - 280]
		add     r9, rdx
		mov     rdx, qword [r9]
		mov     qword [rbx], rdx
		mov     qword [r9], r8
		mov     rdx, rcx
		mov     r9, rax
		jmp     __L_88
__L_92:
		inc     rcx
		jmp     __L_89
__L_88:
		inc     rax
		jmp     __L_83
__L_84:
		mov     rcx, 0
__L_94:
		cmp     rcx, r14
		jl      __L_95
__L_96:
		mov     rsi, 0
		mov     rax, qword [rbp - 232]
		mov     r10, qword [rbp - 240]
		mov     r9, qword [rbp - 248]
		mov     r8, r12
		mov     rdx, r15
		mov     rbx, r13
		mov     rcx, r14
		jmp     __L_97
__L_95:
		mov     r8, rcx
		shl     r8, 3
		mov     rdx, qword [rbp - 280]
		add     rdx, r8
		mov     r8, qword [rdx]
		cmp     r8, 0
		jne     __L_98
__L_99:
		mov     rsi, 0
		mov     rax, qword [rbp - 232]
		mov     r10, qword [rbp - 240]
		mov     r9, qword [rbp - 248]
		mov     r8, r12
		mov     rdx, r15
		mov     rbx, r13
		jmp     __L_97
__L_98:
		inc     rcx
		jmp     __L_94
__L_97:
		mov     qword [rbp - 368], rsi
		mov     qword [rbp - 376], rax
		mov     qword [rbp - 384], r10
		mov     r15, r9
		mov     r12, r8
		mov     r13, rdx
		mov     r14, rcx
		mov     rcx, qword [rbp - 280]
		mov     qword [rel _a], rcx
		mov     rcx, qword [rbp - 288]
		mov     qword [rel _h], rcx
		mov     qword [rel _now], r14
		call    win
		cmp     rax, 0
		jne     __L_100
__L_101:
		mov     rsi, qword [rbp - 368]
		inc     rsi
		mov     rax, 0
__L_102:
		cmp     rax, r14
		jge     __L_103
__L_104:
		mov     rcx, rax
		shl     rcx, 3
		mov     r8, qword [rbp - 280]
		add     r8, rcx
		mov     rcx, qword [r8]
		dec     rcx
		mov     qword [r8], rcx
		add     rax, 1
		jmp     __L_102
__L_103:
		mov     rcx, r14
		shl     rcx, 3
		mov     r8, qword [rbp - 280]
		add     r8, rcx
		mov     qword [r8], r14
		mov     rcx, r14
		inc     rcx
		mov     r10, qword [rbp - 384]
		mov     r9, 0
		mov     r8, r12
		mov     rdx, r13
__L_105:
		cmp     r9, rcx
		jge     __L_106
__L_107:
		mov     r12, r9
		shl     r12, 3
		mov     r11, qword [rbp - 280]
		add     r11, r12
		mov     r12, qword [r11]
		cmp     r12, 0
		jne     __L_110
__L_108:
		mov     r10, r9
		add     r10, 1
__L_111:
		cmp     r10, rcx
		jge     __L_110
__L_112:
		mov     r12, r10
		shl     r12, 3
		mov     r11, qword [rbp - 280]
		add     r11, r12
		mov     r12, qword [r11]
		cmp     r12, 0
		je      __L_114
__L_115:
		mov     r8, r9
		shl     r8, 3
		mov     r12, qword [rbp - 280]
		add     r12, r8
		mov     r8, qword [r12]
		mov     rdx, r10
		shl     rdx, 3
		mov     rbx, qword [rbp - 280]
		add     rbx, rdx
		mov     rdx, qword [rbx]
		mov     qword [r12], rdx
		mov     qword [rbx], r8
		mov     rdx, r10
		mov     rbx, r9
		jmp     __L_110
__L_114:
		inc     r10
		jmp     __L_111
__L_110:
		inc     r9
		jmp     __L_105
__L_106:
		mov     r9, 0
__L_116:
		cmp     r9, rcx
		jge     __L_97
__L_117:
		mov     r12, r9
		shl     r12, 3
		mov     r11, qword [rbp - 280]
		add     r11, r12
		mov     r12, qword [r11]
		cmp     r12, 0
		jne     __L_119
__L_120:
		mov     rcx, r9
		jmp     __L_97
__L_119:
		inc     r9
		jmp     __L_116
__L_100:
		mov     rdi, __str_4
		call    print
		mov     rdi, qword [rbp - 368]
		call    __printInt
		mov     rdi, __str_5
		call    println
		mov     rcx, qword [rbp - 184]
		inc     rcx
		mov     qword [rbp - 96], rcx
		mov     rcx, qword [rbp - 296]
		mov     qword [rbp - 104], rcx
		mov     rcx, qword [rbp - 304]
		mov     qword [rbp - 112], rcx
		mov     rcx, qword [rbp - 312]
		mov     qword [rbp - 120], rcx
		mov     rcx, qword [rbp - 320]
		mov     qword [rbp - 128], rcx
		mov     rcx, qword [rbp - 336]
		mov     qword [rbp - 136], rcx
		mov     rcx, qword [rbp - 376]
		mov     qword [rbp - 144], rcx
		mov     rcx, qword [rbp - 384]
		mov     qword [rbp - 152], rcx
		mov     qword [rbp - 160], r15
		mov     rcx, qword [rbp - 344]
		mov     qword [rbp - 168], rcx
		mov     rcx, qword [rbp - 352]
		mov     qword [rbp - 176], rcx
		mov     rsi, qword [rbp - 360]
		mov     r15, r13
		mov     r13, rbx
		mov     rcx, 44488
		mov     rbx, 5050
		mov     rax, qword [rbp - 280]
		mov     r8, qword [rbp - 328]
		mov     r9, qword [rbp - 288]
		mov     rdx, 3399
		jmp     __L_51
__L_52:
		mov     qword [rel _Q], rcx
		mov     qword [rel _n], rsi
		mov     qword [rel _a], rax
		mov     qword [rel _seed], rbx
		mov     qword [rel _h], r9
		mov     qword [rel _now], r14
		mov     qword [rel _R], r8
		mov     r14, qword [rbp - 8]
		mov     r13, qword [rbp - 16]
		mov     rbx, qword [rbp - 24]
		mov     r15, qword [rbp - 32]
		mov     r12, qword [rbp - 40]
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     

SECTION .data

__str_0:
		dq      1
		db      20H, 00H

__str_1:
		dq      0
		db      00H

__str_2:
		dq      79
		db      53H, 6FH, 72H, 72H, 79H, 2CH, 20H, 74H, 68H, 65H, 20H, 6EH, 75H, 6DH, 62H, 65H, 72H, 20H, 6EH, 20H, 6DH, 75H, 73H, 74H, 20H, 62H, 65H, 20H, 61H, 20H, 6EH, 75H, 6DH, 62H, 65H, 72H, 20H, 73H, 2EH, 74H, 2EH, 20H, 74H, 68H, 65H, 72H, 65H, 20H, 65H, 78H, 69H, 73H, 74H, 73H, 20H, 69H, 20H, 73H, 61H, 74H, 69H, 73H, 66H, 79H, 69H, 6EH, 67H, 20H, 6EH, 3DH, 31H, 2BH, 32H, 2BH, 2EH, 2EH, 2EH, 2BH, 69H, 00H

__str_3:
		dq      12
		db      4CH, 65H, 74H, 27H, 73H, 20H, 73H, 74H, 61H, 72H, 74H, 21H, 00H

__str_4:
		dq      7
		db      54H, 6FH, 74H, 61H, 6CH, 3AH, 20H, 00H

__str_5:
		dq      8
		db      20H, 73H, 74H, 65H, 70H, 28H, 73H, 29H, 00H

SECTION .bss

_n:
		resb    8

_h:
		resb    8

_now:
		resb    8

_a:
		resb    8

_Q:
		resb    8

_R:
		resb    8

_seed:
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


