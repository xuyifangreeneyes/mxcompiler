default rel

global __globalInit
global check
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

check:
		push    rbp
		mov     rbp, rsp
		cmp     rdi, rsi
		jge     __L_1
__L_2:
		cmp     rdi, 0
		jl      __L_1
__L_3:
		mov     rax, 1
		jmp     __L_4
__L_1:
		mov     rax, 0
__L_4:
		pop     rbp
		ret     

main:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 320
		mov     qword [rbp - 8], r15
		mov     qword [rbp - 16], r12
		mov     qword [rbp - 24], r13
		mov     qword [rbp - 32], rbx
		mov     qword [rbp - 40], r14
		call    __globalInit
		call    getInt
		mov     qword [rbp - 48], rax
		mov     rcx, qword [rbp - 48]
		mov     qword [rbp - 56], rcx
		sub     qword [rbp - 56], 1
		mov     rbx, qword [rbp - 48]
		imul    rbx, qword [rbp - 48]
		mov     rdi, rbx
		shl     rdi, 3
		add     rdi, 8
		call    malloc
		mov     qword [rax], rbx
		mov     qword [rbp - 64], rax
		add     qword [rbp - 64], 8
		mov     rcx, 0
__L_5:
		mov     r8, qword [rbp - 48]
		imul    r8, qword [rbp - 48]
		cmp     rcx, r8
		jge     __L_6
__L_7:
		mov     r8, rcx
		shl     r8, 3
		mov     rdx, qword [rbp - 64]
		add     rdx, r8
		mov     qword [rdx], 0
		inc     rcx
		jmp     __L_5
__L_6:
		mov     rbx, qword [rbp - 48]
		imul    rbx, qword [rbp - 48]
		mov     rdi, rbx
		shl     rdi, 3
		add     rdi, 8
		call    malloc
		mov     qword [rax], rbx
		mov     r12, rax
		add     r12, 8
		mov     rcx, 0
__L_8:
		mov     r8, qword [rbp - 48]
		imul    r8, qword [rbp - 48]
		cmp     rcx, r8
		jge     __L_9
__L_10:
		mov     r8, rcx
		shl     r8, 3
		mov     rdx, r12
		add     rdx, r8
		mov     qword [rdx], 0
		inc     rcx
		jmp     __L_8
__L_9:
		mov     rdi, qword [rbp - 48]
		shl     rdi, 3
		add     rdi, 8
		call    malloc
		mov     rcx, qword [rbp - 48]
		mov     qword [rax], rcx
		mov     rbx, rax
		add     rbx, 8
		mov     r14, 0
__L_11:
		cmp     r14, qword [rbp - 48]
		jge     __L_12
__L_13:
		mov     rdi, qword [rbp - 48]
		shl     rdi, 3
		add     rdi, 8
		call    malloc
		mov     rcx, qword [rbp - 48]
		mov     qword [rax], rcx
		add     rax, 8
		mov     rcx, r14
		shl     rcx, 3
		mov     r8, rbx
		add     r8, rcx
		mov     qword [r8], rax
		mov     rdx, 0
__L_14:
		cmp     rdx, qword [rbp - 48]
		jge     __L_15
__L_16:
		mov     rcx, r14
		shl     rcx, 3
		mov     r8, rbx
		add     r8, rcx
		mov     r8, qword [r8]
		mov     rcx, rdx
		shl     rcx, 3
		add     r8, rcx
		mov     qword [r8], -1
		inc     rdx
		jmp     __L_14
__L_15:
		inc     r14
		jmp     __L_11
__L_12:
		mov     rcx, qword [rbp - 64]
		add     rcx, 0
		mov     qword [rcx], 0
		mov     rcx, r12
		add     rcx, 0
		mov     qword [rcx], 0
		mov     rcx, rbx
		add     rcx, 0
		mov     rcx, qword [rcx]
		add     rcx, 0
		mov     qword [rcx], 0
		mov     rcx, 0
		mov     rdx, 0
		mov     r8, 0
__L_17:
		cmp     rcx, rdx
		jg      __L_20
__L_18:
		mov     r9, rcx
		shl     r9, 3
		mov     r10, qword [rbp - 64]
		add     r10, r9
		mov     rax, qword [r10]
		shl     rax, 3
		mov     rsi, rbx
		add     rsi, rax
		mov     rsi, qword [rsi]
		mov     rax, r12
		add     rax, r9
		mov     r9, qword [rax]
		shl     r9, 3
		add     rsi, r9
		mov     r11, qword [rsi]
		mov     r14, qword [r10]
		sub     r14, 1
		mov     rsi, qword [rax]
		sub     rsi, 2
		cmp     r14, qword [rbp - 48]
		jge     __L_21
__L_22:
		cmp     r14, 0
		jl      __L_21
__L_23:
		mov     r9, 1
		jmp     __L_24
__L_21:
		mov     r9, 0
__L_24:
		cmp     r9, 0
		jne     __L_25
__L_26:
		mov     rax, qword [rbp - 72]
		mov     r9, qword [rbp - 80]
		mov     r10, qword [rbp - 88]
		mov     rsi, qword [rbp - 96]
		jmp     __L_27
__L_25:
		cmp     rsi, qword [rbp - 48]
		jge     __L_28
__L_29:
		cmp     rsi, 0
		jl      __L_28
__L_30:
		mov     r9, 1
		jmp     __L_31
__L_28:
		mov     r9, 0
__L_31:
		cmp     r9, 0
		jne     __L_32
__L_33:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_27
__L_32:
		mov     rax, r14
		shl     rax, 3
		mov     r10, rbx
		add     r10, rax
		mov     r10, qword [r10]
		mov     rax, rsi
		shl     rax, 3
		add     r10, rax
		mov     rax, qword [r10]
		cmp     rax, -1
		je      __L_34
__L_35:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_27
__L_34:
		add     rdx, 1
		mov     rax, rdx
		shl     rax, 3
		mov     r10, qword [rbp - 64]
		add     r10, rax
		mov     qword [r10], r14
		mov     r10, r12
		add     r10, rax
		mov     qword [r10], rsi
		mov     rax, r11
		add     rax, 1
		mov     r10, r14
		shl     r10, 3
		mov     r13, rbx
		add     r13, r10
		mov     r13, qword [r13]
		mov     r10, rsi
		shl     r10, 3
		add     r13, r10
		mov     qword [r13], rax
		cmp     r14, qword [rbp - 56]
		je      __L_36
__L_37:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_27
__L_36:
		cmp     rsi, qword [rbp - 56]
		je      __L_38
__L_39:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_27
__L_38:
		mov     r8, 1
		mov     rax, r9
		mov     r10, qword [rbp - 48]
__L_27:
		mov     qword [rbp - 72], rax
		mov     qword [rbp - 80], r9
		mov     qword [rbp - 88], r10
		mov     qword [rbp - 96], rsi
		mov     r9, rcx
		shl     r9, 3
		mov     rax, qword [rbp - 64]
		add     rax, r9
		mov     r14, qword [rax]
		sub     r14, 1
		mov     rax, r12
		add     rax, r9
		mov     rsi, qword [rax]
		add     rsi, 2
		cmp     r14, qword [rbp - 48]
		jge     __L_40
__L_41:
		cmp     r14, 0
		jl      __L_40
__L_42:
		mov     r9, 1
		jmp     __L_43
__L_40:
		mov     r9, 0
__L_43:
		cmp     r9, 0
		jne     __L_44
__L_45:
		mov     rax, qword [rbp - 104]
		mov     r9, qword [rbp - 112]
		mov     r10, qword [rbp - 120]
		mov     rsi, qword [rbp - 128]
		jmp     __L_46
__L_44:
		cmp     rsi, qword [rbp - 48]
		jge     __L_47
__L_48:
		cmp     rsi, 0
		jl      __L_47
__L_49:
		mov     r9, 1
		jmp     __L_50
__L_47:
		mov     r9, 0
__L_50:
		cmp     r9, 0
		jne     __L_51
__L_52:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_46
__L_51:
		mov     rax, r14
		shl     rax, 3
		mov     r10, rbx
		add     r10, rax
		mov     r10, qword [r10]
		mov     rax, rsi
		shl     rax, 3
		add     r10, rax
		mov     rax, qword [r10]
		cmp     rax, -1
		je      __L_53
__L_54:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_46
__L_53:
		add     rdx, 1
		mov     rax, rdx
		shl     rax, 3
		mov     r10, qword [rbp - 64]
		add     r10, rax
		mov     qword [r10], r14
		mov     r10, r12
		add     r10, rax
		mov     qword [r10], rsi
		mov     rax, r11
		add     rax, 1
		mov     r10, r14
		shl     r10, 3
		mov     r13, rbx
		add     r13, r10
		mov     r13, qword [r13]
		mov     r10, rsi
		shl     r10, 3
		add     r13, r10
		mov     qword [r13], rax
		cmp     r14, qword [rbp - 56]
		je      __L_55
__L_56:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_46
__L_55:
		cmp     rsi, qword [rbp - 56]
		je      __L_57
__L_58:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_46
__L_57:
		mov     r8, 1
		mov     rax, r9
		mov     r10, qword [rbp - 48]
__L_46:
		mov     qword [rbp - 104], rax
		mov     qword [rbp - 112], r9
		mov     qword [rbp - 120], r10
		mov     qword [rbp - 128], rsi
		mov     r9, rcx
		shl     r9, 3
		mov     rax, qword [rbp - 64]
		add     rax, r9
		mov     r14, qword [rax]
		add     r14, 1
		mov     rax, r12
		add     rax, r9
		mov     rsi, qword [rax]
		sub     rsi, 2
		cmp     r14, qword [rbp - 48]
		jge     __L_59
__L_60:
		cmp     r14, 0
		jl      __L_59
__L_61:
		mov     r9, 1
		jmp     __L_62
__L_59:
		mov     r9, 0
__L_62:
		cmp     r9, 0
		jne     __L_63
__L_64:
		mov     rax, qword [rbp - 136]
		mov     r9, qword [rbp - 144]
		mov     r10, qword [rbp - 152]
		mov     rsi, qword [rbp - 160]
		jmp     __L_65
__L_63:
		cmp     rsi, qword [rbp - 48]
		jge     __L_66
__L_67:
		cmp     rsi, 0
		jl      __L_66
__L_68:
		mov     r9, 1
		jmp     __L_69
__L_66:
		mov     r9, 0
__L_69:
		cmp     r9, 0
		jne     __L_70
__L_71:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_65
__L_70:
		mov     rax, r14
		shl     rax, 3
		mov     r10, rbx
		add     r10, rax
		mov     r10, qword [r10]
		mov     rax, rsi
		shl     rax, 3
		add     r10, rax
		mov     rax, qword [r10]
		cmp     rax, -1
		je      __L_72
__L_73:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_65
__L_72:
		add     rdx, 1
		mov     rax, rdx
		shl     rax, 3
		mov     r10, qword [rbp - 64]
		add     r10, rax
		mov     qword [r10], r14
		mov     r10, r12
		add     r10, rax
		mov     qword [r10], rsi
		mov     rax, r11
		add     rax, 1
		mov     r10, r14
		shl     r10, 3
		mov     r13, rbx
		add     r13, r10
		mov     r13, qword [r13]
		mov     r10, rsi
		shl     r10, 3
		add     r13, r10
		mov     qword [r13], rax
		cmp     r14, qword [rbp - 56]
		je      __L_74
__L_75:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_65
__L_74:
		cmp     rsi, qword [rbp - 56]
		je      __L_76
__L_77:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_65
__L_76:
		mov     r8, 1
		mov     rax, r9
		mov     r10, qword [rbp - 48]
__L_65:
		mov     qword [rbp - 136], rax
		mov     qword [rbp - 144], r9
		mov     qword [rbp - 152], r10
		mov     qword [rbp - 160], rsi
		mov     r9, rcx
		shl     r9, 3
		mov     rax, qword [rbp - 64]
		add     rax, r9
		mov     r14, qword [rax]
		add     r14, 1
		mov     rax, r12
		add     rax, r9
		mov     rsi, qword [rax]
		add     rsi, 2
		cmp     r14, qword [rbp - 48]
		jge     __L_78
__L_79:
		cmp     r14, 0
		jl      __L_78
__L_80:
		mov     r9, 1
		jmp     __L_81
__L_78:
		mov     r9, 0
__L_81:
		cmp     r9, 0
		jne     __L_82
__L_83:
		mov     rax, qword [rbp - 168]
		mov     r9, qword [rbp - 176]
		mov     r10, qword [rbp - 184]
		mov     rsi, qword [rbp - 192]
		jmp     __L_84
__L_82:
		cmp     rsi, qword [rbp - 48]
		jge     __L_85
__L_86:
		cmp     rsi, 0
		jl      __L_85
__L_87:
		mov     r9, 1
		jmp     __L_88
__L_85:
		mov     r9, 0
__L_88:
		cmp     r9, 0
		jne     __L_89
__L_90:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_84
__L_89:
		mov     rax, r14
		shl     rax, 3
		mov     r10, rbx
		add     r10, rax
		mov     r10, qword [r10]
		mov     rax, rsi
		shl     rax, 3
		add     r10, rax
		mov     rax, qword [r10]
		cmp     rax, -1
		je      __L_91
__L_92:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_84
__L_91:
		add     rdx, 1
		mov     rax, rdx
		shl     rax, 3
		mov     r10, qword [rbp - 64]
		add     r10, rax
		mov     qword [r10], r14
		mov     r10, r12
		add     r10, rax
		mov     qword [r10], rsi
		mov     rax, r11
		add     rax, 1
		mov     r10, r14
		shl     r10, 3
		mov     r13, rbx
		add     r13, r10
		mov     r13, qword [r13]
		mov     r10, rsi
		shl     r10, 3
		add     r13, r10
		mov     qword [r13], rax
		cmp     r14, qword [rbp - 56]
		je      __L_93
__L_94:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_84
__L_93:
		cmp     rsi, qword [rbp - 56]
		je      __L_95
__L_96:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_84
__L_95:
		mov     r8, 1
		mov     rax, r9
		mov     r10, qword [rbp - 48]
__L_84:
		mov     qword [rbp - 168], rax
		mov     qword [rbp - 176], r9
		mov     qword [rbp - 184], r10
		mov     qword [rbp - 192], rsi
		mov     r9, rcx
		shl     r9, 3
		mov     rax, qword [rbp - 64]
		add     rax, r9
		mov     r14, qword [rax]
		sub     r14, 2
		mov     rax, r12
		add     rax, r9
		mov     rsi, qword [rax]
		sub     rsi, 1
		cmp     r14, qword [rbp - 48]
		jge     __L_97
__L_98:
		cmp     r14, 0
		jl      __L_97
__L_99:
		mov     r9, 1
		jmp     __L_100
__L_97:
		mov     r9, 0
__L_100:
		cmp     r9, 0
		jne     __L_101
__L_102:
		mov     rax, qword [rbp - 200]
		mov     r9, qword [rbp - 208]
		mov     r10, qword [rbp - 216]
		mov     rsi, qword [rbp - 224]
		jmp     __L_103
__L_101:
		cmp     rsi, qword [rbp - 48]
		jge     __L_104
__L_105:
		cmp     rsi, 0
		jl      __L_104
__L_106:
		mov     r9, 1
		jmp     __L_107
__L_104:
		mov     r9, 0
__L_107:
		cmp     r9, 0
		jne     __L_108
__L_109:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_103
__L_108:
		mov     rax, r14
		shl     rax, 3
		mov     r10, rbx
		add     r10, rax
		mov     r10, qword [r10]
		mov     rax, rsi
		shl     rax, 3
		add     r10, rax
		mov     rax, qword [r10]
		cmp     rax, -1
		je      __L_110
__L_111:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_103
__L_110:
		add     rdx, 1
		mov     rax, rdx
		shl     rax, 3
		mov     r10, qword [rbp - 64]
		add     r10, rax
		mov     qword [r10], r14
		mov     r10, r12
		add     r10, rax
		mov     qword [r10], rsi
		mov     rax, r11
		add     rax, 1
		mov     r10, r14
		shl     r10, 3
		mov     r13, rbx
		add     r13, r10
		mov     r13, qword [r13]
		mov     r10, rsi
		shl     r10, 3
		add     r13, r10
		mov     qword [r13], rax
		cmp     r14, qword [rbp - 56]
		je      __L_112
__L_113:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_103
__L_112:
		cmp     rsi, qword [rbp - 56]
		je      __L_114
__L_115:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_103
__L_114:
		mov     r8, 1
		mov     rax, r9
		mov     r10, qword [rbp - 48]
__L_103:
		mov     qword [rbp - 200], rax
		mov     qword [rbp - 208], r9
		mov     qword [rbp - 216], r10
		mov     qword [rbp - 224], rsi
		mov     r9, rcx
		shl     r9, 3
		mov     rax, qword [rbp - 64]
		add     rax, r9
		mov     r14, qword [rax]
		sub     r14, 2
		mov     rax, r12
		add     rax, r9
		mov     rsi, qword [rax]
		add     rsi, 1
		cmp     r14, qword [rbp - 48]
		jge     __L_116
__L_117:
		cmp     r14, 0
		jl      __L_116
__L_118:
		mov     r9, 1
		jmp     __L_119
__L_116:
		mov     r9, 0
__L_119:
		cmp     r9, 0
		jne     __L_120
__L_121:
		mov     rax, qword [rbp - 232]
		mov     r9, qword [rbp - 240]
		mov     r10, qword [rbp - 248]
		mov     rsi, qword [rbp - 256]
		jmp     __L_122
__L_120:
		cmp     rsi, qword [rbp - 48]
		jge     __L_123
__L_124:
		cmp     rsi, 0
		jl      __L_123
__L_125:
		mov     r9, 1
		jmp     __L_126
__L_123:
		mov     r9, 0
__L_126:
		cmp     r9, 0
		jne     __L_127
__L_128:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_122
__L_127:
		mov     rax, r14
		shl     rax, 3
		mov     r10, rbx
		add     r10, rax
		mov     r10, qword [r10]
		mov     rax, rsi
		shl     rax, 3
		add     r10, rax
		mov     rax, qword [r10]
		cmp     rax, -1
		je      __L_129
__L_130:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_122
__L_129:
		add     rdx, 1
		mov     rax, rdx
		shl     rax, 3
		mov     r10, qword [rbp - 64]
		add     r10, rax
		mov     qword [r10], r14
		mov     r10, r12
		add     r10, rax
		mov     qword [r10], rsi
		mov     rax, r11
		add     rax, 1
		mov     r10, r14
		shl     r10, 3
		mov     r13, rbx
		add     r13, r10
		mov     r13, qword [r13]
		mov     r10, rsi
		shl     r10, 3
		add     r13, r10
		mov     qword [r13], rax
		cmp     r14, qword [rbp - 56]
		je      __L_131
__L_132:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_122
__L_131:
		cmp     rsi, qword [rbp - 56]
		je      __L_133
__L_134:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_122
__L_133:
		mov     r8, 1
		mov     rax, r9
		mov     r10, qword [rbp - 48]
__L_122:
		mov     qword [rbp - 232], rax
		mov     qword [rbp - 240], r9
		mov     qword [rbp - 248], r10
		mov     qword [rbp - 256], rsi
		mov     r9, rcx
		shl     r9, 3
		mov     rax, qword [rbp - 64]
		add     rax, r9
		mov     r14, qword [rax]
		add     r14, 2
		mov     rax, r12
		add     rax, r9
		mov     rsi, qword [rax]
		sub     rsi, 1
		cmp     r14, qword [rbp - 48]
		jge     __L_135
__L_136:
		cmp     r14, 0
		jl      __L_135
__L_137:
		mov     r9, 1
		jmp     __L_138
__L_135:
		mov     r9, 0
__L_138:
		cmp     r9, 0
		jne     __L_139
__L_140:
		mov     rax, qword [rbp - 264]
		mov     r9, qword [rbp - 272]
		mov     r10, qword [rbp - 280]
		mov     rsi, qword [rbp - 288]
		jmp     __L_141
__L_139:
		cmp     rsi, qword [rbp - 48]
		jge     __L_142
__L_143:
		cmp     rsi, 0
		jl      __L_142
__L_144:
		mov     r9, 1
		jmp     __L_145
__L_142:
		mov     r9, 0
__L_145:
		cmp     r9, 0
		jne     __L_146
__L_147:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_141
__L_146:
		mov     rax, r14
		shl     rax, 3
		mov     r10, rbx
		add     r10, rax
		mov     r10, qword [r10]
		mov     rax, rsi
		shl     rax, 3
		add     r10, rax
		mov     rax, qword [r10]
		cmp     rax, -1
		je      __L_148
__L_149:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_141
__L_148:
		add     rdx, 1
		mov     rax, rdx
		shl     rax, 3
		mov     r10, qword [rbp - 64]
		add     r10, rax
		mov     qword [r10], r14
		mov     r10, r12
		add     r10, rax
		mov     qword [r10], rsi
		mov     rax, r11
		add     rax, 1
		mov     r10, r14
		shl     r10, 3
		mov     r13, rbx
		add     r13, r10
		mov     r13, qword [r13]
		mov     r10, rsi
		shl     r10, 3
		add     r13, r10
		mov     qword [r13], rax
		cmp     r14, qword [rbp - 56]
		je      __L_150
__L_151:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_141
__L_150:
		cmp     rsi, qword [rbp - 56]
		je      __L_152
__L_153:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_141
__L_152:
		mov     r8, 1
		mov     rax, r9
		mov     r10, qword [rbp - 48]
__L_141:
		mov     qword [rbp - 264], rax
		mov     qword [rbp - 272], r9
		mov     qword [rbp - 280], r10
		mov     qword [rbp - 288], rsi
		mov     r9, rcx
		shl     r9, 3
		mov     rax, qword [rbp - 64]
		add     rax, r9
		mov     r14, qword [rax]
		add     r14, 2
		mov     rax, r12
		add     rax, r9
		mov     rsi, qword [rax]
		add     rsi, 1
		cmp     r14, qword [rbp - 48]
		jge     __L_154
__L_155:
		cmp     r14, 0
		jl      __L_154
__L_156:
		mov     r9, 1
		jmp     __L_157
__L_154:
		mov     r9, 0
__L_157:
		cmp     r9, 0
		jne     __L_158
__L_159:
		mov     rax, qword [rbp - 296]
		mov     r9, qword [rbp - 304]
		mov     r10, qword [rbp - 312]
		mov     rsi, qword [rbp - 320]
		jmp     __L_160
__L_158:
		cmp     rsi, qword [rbp - 48]
		jge     __L_161
__L_162:
		cmp     rsi, 0
		jl      __L_161
__L_163:
		mov     r9, 1
		jmp     __L_164
__L_161:
		mov     r9, 0
__L_164:
		cmp     r9, 0
		jne     __L_165
__L_166:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_160
__L_165:
		mov     rax, r14
		shl     rax, 3
		mov     r10, rbx
		add     r10, rax
		mov     r10, qword [r10]
		mov     rax, rsi
		shl     rax, 3
		add     r10, rax
		mov     rax, qword [r10]
		cmp     rax, -1
		je      __L_167
__L_168:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_160
__L_167:
		add     rdx, 1
		mov     rax, rdx
		shl     rax, 3
		mov     r10, qword [rbp - 64]
		add     r10, rax
		mov     qword [r10], r14
		mov     r10, r12
		add     r10, rax
		mov     qword [r10], rsi
		add     r11, 1
		mov     rax, r14
		shl     rax, 3
		mov     r10, rbx
		add     r10, rax
		mov     r10, qword [r10]
		mov     rax, rsi
		shl     rax, 3
		add     r10, rax
		mov     qword [r10], r11
		cmp     r14, qword [rbp - 56]
		je      __L_169
__L_170:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_160
__L_169:
		cmp     rsi, qword [rbp - 56]
		je      __L_171
__L_172:
		mov     rax, r9
		mov     r10, qword [rbp - 48]
		jmp     __L_160
__L_171:
		mov     r8, 1
		mov     rax, r9
		mov     r10, qword [rbp - 48]
__L_160:
		mov     qword [rbp - 296], rax
		mov     qword [rbp - 304], r9
		mov     qword [rbp - 312], r10
		mov     qword [rbp - 320], rsi
		cmp     r8, 1
		je      __L_20
__L_173:
		add     rcx, 1
		jmp     __L_17
__L_20:
		cmp     r8, 1
		jne     __L_175
__L_176:
		mov     r8, qword [rbp - 56]
		shl     r8, 3
		add     rbx, r8
		mov     rcx, qword [rbx]
		add     rcx, r8
		mov     rdi, qword [rcx]
		call    __printlnInt
		jmp     __L_177
__L_175:
		mov     rdi, __str_0
		call    print
__L_177:
		mov     r15, qword [rbp - 8]
		mov     r12, qword [rbp - 16]
		mov     r13, qword [rbp - 24]
		mov     rbx, qword [rbp - 32]
		mov     r14, qword [rbp - 40]
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     

SECTION .data

__str_0:
		dq      13
		db      6EH, 6FH, 20H, 73H, 6FH, 6CH, 75H, 74H, 69H, 6FH, 6EH, 21H, 0AH, 00H

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


