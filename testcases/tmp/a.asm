default rel

global _globalInit
global check
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

check:
		push    rbp
		mov     rbp, rsp
		cmp     rcx, r8
		setl    al
		movzx   r8, al
		cmp     r8, 0
		je      __L_1
__L_2:
		cmp     rcx, 0
		setge   al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_1
__L_3:
		mov     rax, 1
		jmp     __L_4
__L_1:
		mov     rax, 0
__L_4:
		mov     rsp, rbp
		pop     rbp
		ret     

main:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 224
		mov     qword [rbp - 8], r13
		mov     qword [rbp - 16], r15
		mov     qword [rbp - 24], r12
		mov     qword [rbp - 32], rbx
		mov     qword [rbp - 40], r14
		call    _globalInit
		call    getInt
		mov     qword [rbp - 48], rax
		mov     qword [rbp - 56], 0
		mov     qword [rbp - 64], 0
		mov     qword [rbp - 72], 0
		mov     qword [rbp - 80], 0
		mov     rcx, qword [rbp - 48]
		sub     rcx, 1
		mov     qword [rbp - 88], rcx
		mov     rcx, qword [rbp - 48]
		sub     rcx, 1
		mov     qword [rbp - 96], rcx
		mov     r15, 0
		mov     rbx, 0
		mov     qword [rbp - 104], 0
		mov     qword [rbp - 112], 0
		mov     rbx, qword [rbp - 48]
		mov     rcx, qword [rbp - 48]
		imul    rbx, rcx
		mov     rdi, rbx
		imul    rdi, 8
		add     rdi, 8
		call    malloc
		mov     qword [rax], rbx
		mov     r13, rax
		mov     rbx, 0
__L_5:
		mov     rcx, qword [rbp - 48]
		mov     r8, qword [rbp - 48]
		imul    rcx, r8
		cmp     rbx, rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_6
__L_7:
		mov     rcx, r13
		add     rcx, 8
		mov     r8, rbx
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], 0
__L_8:
		inc     rbx
		jmp     __L_5
__L_6:
		mov     rbx, qword [rbp - 48]
		mov     rcx, qword [rbp - 48]
		imul    rbx, rcx
		mov     rdi, rbx
		imul    rdi, 8
		add     rdi, 8
		call    malloc
		mov     qword [rax], rbx
		mov     r14, rax
		mov     rbx, 0
__L_9:
		mov     rcx, qword [rbp - 48]
		mov     r8, qword [rbp - 48]
		imul    rcx, r8
		cmp     rbx, rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_10
__L_11:
		mov     rcx, r14
		add     rcx, 8
		mov     r8, rbx
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], 0
__L_12:
		inc     rbx
		jmp     __L_9
__L_10:
		mov     rbx, qword [rbp - 48]
		mov     rdi, rbx
		imul    rdi, 8
		add     rdi, 8
		call    malloc
		mov     qword [rax], rbx
		mov     r12, rax
		mov     rbx, 0
__L_13:
		mov     rcx, qword [rbp - 48]
		cmp     rbx, rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_14
__L_15:
		mov     r15, qword [rbp - 48]
		mov     rdi, r15
		imul    rdi, 8
		add     rdi, 8
		call    malloc
		mov     qword [rax], r15
		mov     rcx, r12
		add     rcx, 8
		mov     r8, rbx
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], rax
		mov     rcx, 0
__L_16:
		mov     r8, qword [rbp - 48]
		cmp     rcx, r8
		setl    al
		movzx   r8, al
		cmp     r8, 0
		je      __L_17
__L_18:
		mov     r9, 1
		neg     r9
		mov     r8, r12
		add     r8, 8
		mov     rdx, rbx
		imul    rdx, 8
		add     r8, rdx
		mov     r8, qword [r8]
		add     r8, 8
		mov     rdx, rcx
		imul    rdx, 8
		add     r8, rdx
		mov     qword [r8], r9
__L_19:
		inc     rcx
		jmp     __L_16
__L_17:
__L_20:
		inc     rbx
		jmp     __L_13
__L_14:
		mov     r8, qword [rbp - 72]
		mov     rcx, r13
		add     rcx, 8
		mov     rdx, 0
		imul    rdx, 8
		add     rcx, rdx
		mov     qword [rcx], r8
		mov     r8, qword [rbp - 80]
		mov     rcx, r14
		add     rcx, 8
		mov     rdx, 0
		imul    rdx, 8
		add     rcx, rdx
		mov     qword [rcx], r8
		mov     rcx, r12
		add     rcx, 8
		mov     r8, qword [rbp - 72]
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		add     rcx, 8
		mov     r8, qword [rbp - 80]
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], 0
__L_21:
		mov     r8, qword [rbp - 56]
		mov     rcx, qword [rbp - 64]
		cmp     r8, rcx
		setle   al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_22
__L_23:
		mov     rcx, r12
		add     rcx, 8
		mov     r8, r13
		add     r8, 8
		mov     rdx, qword [rbp - 56]
		imul    rdx, 8
		add     r8, rdx
		mov     r8, qword [r8]
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		add     rcx, 8
		mov     r8, r14
		add     r8, 8
		mov     rdx, qword [rbp - 56]
		imul    rdx, 8
		add     r8, rdx
		mov     r8, qword [r8]
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		mov     qword [rbp - 104], rcx
		mov     rcx, r13
		add     rcx, 8
		mov     r8, qword [rbp - 56]
		imul    r8, 8
		add     rcx, r8
		mov     r15, qword [rcx]
		sub     r15, 1
		mov     rcx, r14
		add     rcx, 8
		mov     r8, qword [rbp - 56]
		imul    r8, 8
		add     rcx, r8
		mov     rbx, qword [rcx]
		sub     rbx, 2
		mov     rdi, r15
		mov     rsi, qword [rbp - 48]
		call    check
		cmp     rax, 0
		je      __L_24
__L_25:
		mov     rdi, rbx
		mov     rsi, qword [rbp - 48]
		call    check
		cmp     rax, 0
		je      __L_24
__L_26:
		mov     rcx, r12
		add     rcx, 8
		mov     r8, r15
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		add     rcx, 8
		mov     r8, rbx
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		mov     r8, 1
		neg     r8
		cmp     rcx, r8
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_24
__L_27:
		mov     rcx, qword [rbp - 64]
		add     rcx, 1
		mov     qword [rbp - 64], rcx
		mov     rcx, r13
		add     rcx, 8
		mov     r8, qword [rbp - 64]
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], r15
		mov     rcx, r14
		add     rcx, 8
		mov     r8, qword [rbp - 64]
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], rbx
		mov     rcx, qword [rbp - 104]
		add     rcx, 1
		mov     r8, r12
		add     r8, 8
		mov     rdx, r15
		imul    rdx, 8
		add     r8, rdx
		mov     r8, qword [r8]
		add     r8, 8
		mov     rdx, rbx
		imul    rdx, 8
		add     r8, rdx
		mov     qword [r8], rcx
		mov     rcx, qword [rbp - 88]
		cmp     r15, rcx
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_28
__L_29:
		mov     rcx, qword [rbp - 96]
		cmp     rbx, rcx
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_28
__L_30:
		mov     qword [rbp - 112], 1
__L_28:
__L_24:
		mov     rcx, r13
		add     rcx, 8
		mov     r8, qword [rbp - 56]
		imul    r8, 8
		add     rcx, r8
		mov     r15, qword [rcx]
		sub     r15, 1
		mov     rcx, r14
		add     rcx, 8
		mov     r8, qword [rbp - 56]
		imul    r8, 8
		add     rcx, r8
		mov     rbx, qword [rcx]
		add     rbx, 2
		mov     rdi, r15
		mov     rsi, qword [rbp - 48]
		call    check
		cmp     rax, 0
		je      __L_31
__L_32:
		mov     rdi, rbx
		mov     rsi, qword [rbp - 48]
		call    check
		cmp     rax, 0
		je      __L_31
__L_33:
		mov     rcx, r12
		add     rcx, 8
		mov     r8, r15
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		add     rcx, 8
		mov     r8, rbx
		imul    r8, 8
		add     rcx, r8
		mov     r8, qword [rcx]
		mov     rcx, 1
		neg     rcx
		cmp     r8, rcx
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_31
__L_34:
		mov     rcx, qword [rbp - 64]
		add     rcx, 1
		mov     qword [rbp - 64], rcx
		mov     rcx, r13
		add     rcx, 8
		mov     r8, qword [rbp - 64]
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], r15
		mov     rcx, r14
		add     rcx, 8
		mov     r8, qword [rbp - 64]
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], rbx
		mov     rcx, qword [rbp - 104]
		add     rcx, 1
		mov     r8, r12
		add     r8, 8
		mov     rdx, r15
		imul    rdx, 8
		add     r8, rdx
		mov     r8, qword [r8]
		add     r8, 8
		mov     rdx, rbx
		imul    rdx, 8
		add     r8, rdx
		mov     qword [r8], rcx
		mov     rcx, qword [rbp - 88]
		cmp     r15, rcx
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_35
__L_36:
		mov     rcx, qword [rbp - 96]
		cmp     rbx, rcx
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_35
__L_37:
		mov     qword [rbp - 112], 1
__L_35:
__L_31:
		mov     rcx, r13
		add     rcx, 8
		mov     r8, qword [rbp - 56]
		imul    r8, 8
		add     rcx, r8
		mov     r15, qword [rcx]
		add     r15, 1
		mov     rcx, r14
		add     rcx, 8
		mov     r8, qword [rbp - 56]
		imul    r8, 8
		add     rcx, r8
		mov     rbx, qword [rcx]
		sub     rbx, 2
		mov     rdi, r15
		mov     rsi, qword [rbp - 48]
		call    check
		cmp     rax, 0
		je      __L_38
__L_39:
		mov     rdi, rbx
		mov     rsi, qword [rbp - 48]
		call    check
		cmp     rax, 0
		je      __L_38
__L_40:
		mov     rcx, r12
		add     rcx, 8
		mov     r8, r15
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		add     rcx, 8
		mov     r8, rbx
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		mov     r8, 1
		neg     r8
		cmp     rcx, r8
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_38
__L_41:
		mov     rcx, qword [rbp - 64]
		add     rcx, 1
		mov     qword [rbp - 64], rcx
		mov     rcx, r13
		add     rcx, 8
		mov     r8, qword [rbp - 64]
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], r15
		mov     rcx, r14
		add     rcx, 8
		mov     r8, qword [rbp - 64]
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], rbx
		mov     rcx, qword [rbp - 104]
		add     rcx, 1
		mov     r8, r12
		add     r8, 8
		mov     rdx, r15
		imul    rdx, 8
		add     r8, rdx
		mov     r8, qword [r8]
		add     r8, 8
		mov     rdx, rbx
		imul    rdx, 8
		add     r8, rdx
		mov     qword [r8], rcx
		mov     rcx, qword [rbp - 88]
		cmp     r15, rcx
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_42
__L_43:
		mov     rcx, qword [rbp - 96]
		cmp     rbx, rcx
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_42
__L_44:
		mov     qword [rbp - 112], 1
__L_42:
__L_38:
		mov     rcx, r13
		add     rcx, 8
		mov     r8, qword [rbp - 56]
		imul    r8, 8
		add     rcx, r8
		mov     r15, qword [rcx]
		add     r15, 1
		mov     rcx, r14
		add     rcx, 8
		mov     r8, qword [rbp - 56]
		imul    r8, 8
		add     rcx, r8
		mov     rbx, qword [rcx]
		add     rbx, 2
		mov     rdi, r15
		mov     rsi, qword [rbp - 48]
		call    check
		cmp     rax, 0
		je      __L_45
__L_46:
		mov     rdi, rbx
		mov     rsi, qword [rbp - 48]
		call    check
		cmp     rax, 0
		je      __L_45
__L_47:
		mov     rcx, r12
		add     rcx, 8
		mov     r8, r15
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		add     rcx, 8
		mov     r8, rbx
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		mov     r8, 1
		neg     r8
		cmp     rcx, r8
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_45
__L_48:
		mov     rcx, qword [rbp - 64]
		add     rcx, 1
		mov     qword [rbp - 64], rcx
		mov     rcx, r13
		add     rcx, 8
		mov     r8, qword [rbp - 64]
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], r15
		mov     rcx, r14
		add     rcx, 8
		mov     r8, qword [rbp - 64]
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], rbx
		mov     rcx, qword [rbp - 104]
		add     rcx, 1
		mov     r8, r12
		add     r8, 8
		mov     rdx, r15
		imul    rdx, 8
		add     r8, rdx
		mov     r8, qword [r8]
		add     r8, 8
		mov     rdx, rbx
		imul    rdx, 8
		add     r8, rdx
		mov     qword [r8], rcx
		mov     rcx, qword [rbp - 88]
		cmp     r15, rcx
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_49
__L_50:
		mov     rcx, qword [rbp - 96]
		cmp     rbx, rcx
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_49
__L_51:
		mov     qword [rbp - 112], 1
__L_49:
__L_45:
		mov     rcx, r13
		add     rcx, 8
		mov     r8, qword [rbp - 56]
		imul    r8, 8
		add     rcx, r8
		mov     r15, qword [rcx]
		sub     r15, 2
		mov     rcx, r14
		add     rcx, 8
		mov     r8, qword [rbp - 56]
		imul    r8, 8
		add     rcx, r8
		mov     rbx, qword [rcx]
		sub     rbx, 1
		mov     rdi, r15
		mov     rsi, qword [rbp - 48]
		call    check
		cmp     rax, 0
		je      __L_52
__L_53:
		mov     rdi, rbx
		mov     rsi, qword [rbp - 48]
		call    check
		cmp     rax, 0
		je      __L_52
__L_54:
		mov     rcx, r12
		add     rcx, 8
		mov     r8, r15
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		add     rcx, 8
		mov     r8, rbx
		imul    r8, 8
		add     rcx, r8
		mov     r8, qword [rcx]
		mov     rcx, 1
		neg     rcx
		cmp     r8, rcx
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_52
__L_55:
		mov     rcx, qword [rbp - 64]
		add     rcx, 1
		mov     qword [rbp - 64], rcx
		mov     rcx, r13
		add     rcx, 8
		mov     r8, qword [rbp - 64]
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], r15
		mov     rcx, r14
		add     rcx, 8
		mov     r8, qword [rbp - 64]
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], rbx
		mov     rcx, qword [rbp - 104]
		add     rcx, 1
		mov     r8, r12
		add     r8, 8
		mov     rdx, r15
		imul    rdx, 8
		add     r8, rdx
		mov     r8, qword [r8]
		add     r8, 8
		mov     rdx, rbx
		imul    rdx, 8
		add     r8, rdx
		mov     qword [r8], rcx
		mov     rcx, qword [rbp - 88]
		cmp     r15, rcx
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_56
__L_57:
		mov     rcx, qword [rbp - 96]
		cmp     rbx, rcx
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_56
__L_58:
		mov     qword [rbp - 112], 1
__L_56:
__L_52:
		mov     rcx, r13
		add     rcx, 8
		mov     r8, qword [rbp - 56]
		imul    r8, 8
		add     rcx, r8
		mov     r15, qword [rcx]
		sub     r15, 2
		mov     rcx, r14
		add     rcx, 8
		mov     r8, qword [rbp - 56]
		imul    r8, 8
		add     rcx, r8
		mov     rbx, qword [rcx]
		add     rbx, 1
		mov     rdi, r15
		mov     rsi, qword [rbp - 48]
		call    check
		cmp     rax, 0
		je      __L_59
__L_60:
		mov     rdi, rbx
		mov     rsi, qword [rbp - 48]
		call    check
		cmp     rax, 0
		je      __L_59
__L_61:
		mov     rcx, r12
		add     rcx, 8
		mov     r8, r15
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		add     rcx, 8
		mov     r8, rbx
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		mov     r8, 1
		neg     r8
		cmp     rcx, r8
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_59
__L_62:
		mov     rcx, qword [rbp - 64]
		add     rcx, 1
		mov     qword [rbp - 64], rcx
		mov     rcx, r13
		add     rcx, 8
		mov     r8, qword [rbp - 64]
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], r15
		mov     rcx, r14
		add     rcx, 8
		mov     r8, qword [rbp - 64]
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], rbx
		mov     rcx, qword [rbp - 104]
		add     rcx, 1
		mov     r8, r12
		add     r8, 8
		mov     rdx, r15
		imul    rdx, 8
		add     r8, rdx
		mov     r8, qword [r8]
		add     r8, 8
		mov     rdx, rbx
		imul    rdx, 8
		add     r8, rdx
		mov     qword [r8], rcx
		mov     rcx, qword [rbp - 88]
		cmp     r15, rcx
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_63
__L_64:
		mov     rcx, qword [rbp - 96]
		cmp     rbx, rcx
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_63
__L_65:
		mov     qword [rbp - 112], 1
__L_63:
__L_59:
		mov     rcx, r13
		add     rcx, 8
		mov     r8, qword [rbp - 56]
		imul    r8, 8
		add     rcx, r8
		mov     r15, qword [rcx]
		add     r15, 2
		mov     rcx, r14
		add     rcx, 8
		mov     r8, qword [rbp - 56]
		imul    r8, 8
		add     rcx, r8
		mov     rbx, qword [rcx]
		sub     rbx, 1
		mov     rdi, r15
		mov     rsi, qword [rbp - 48]
		call    check
		cmp     rax, 0
		je      __L_66
__L_67:
		mov     rdi, rbx
		mov     rsi, qword [rbp - 48]
		call    check
		cmp     rax, 0
		je      __L_66
__L_68:
		mov     rcx, r12
		add     rcx, 8
		mov     r8, r15
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		add     rcx, 8
		mov     r8, rbx
		imul    r8, 8
		add     rcx, r8
		mov     r8, qword [rcx]
		mov     rcx, 1
		neg     rcx
		cmp     r8, rcx
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_66
__L_69:
		mov     rcx, qword [rbp - 64]
		add     rcx, 1
		mov     qword [rbp - 64], rcx
		mov     rcx, r13
		add     rcx, 8
		mov     r8, qword [rbp - 64]
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], r15
		mov     rcx, r14
		add     rcx, 8
		mov     r8, qword [rbp - 64]
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], rbx
		mov     rcx, qword [rbp - 104]
		add     rcx, 1
		mov     r8, r12
		add     r8, 8
		mov     rdx, r15
		imul    rdx, 8
		add     r8, rdx
		mov     r8, qword [r8]
		add     r8, 8
		mov     rdx, rbx
		imul    rdx, 8
		add     r8, rdx
		mov     qword [r8], rcx
		mov     rcx, qword [rbp - 88]
		cmp     r15, rcx
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_70
__L_71:
		mov     rcx, qword [rbp - 96]
		cmp     rbx, rcx
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_70
__L_72:
		mov     qword [rbp - 112], 1
__L_70:
__L_66:
		mov     rcx, r13
		add     rcx, 8
		mov     r8, qword [rbp - 56]
		imul    r8, 8
		add     rcx, r8
		mov     r15, qword [rcx]
		add     r15, 2
		mov     rcx, r14
		add     rcx, 8
		mov     r8, qword [rbp - 56]
		imul    r8, 8
		add     rcx, r8
		mov     rbx, qword [rcx]
		add     rbx, 1
		mov     rdi, r15
		mov     rsi, qword [rbp - 48]
		call    check
		cmp     rax, 0
		je      __L_73
__L_74:
		mov     rdi, rbx
		mov     rsi, qword [rbp - 48]
		call    check
		cmp     rax, 0
		je      __L_73
__L_75:
		mov     rcx, r12
		add     rcx, 8
		mov     r8, r15
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		add     rcx, 8
		mov     r8, rbx
		imul    r8, 8
		add     rcx, r8
		mov     rcx, qword [rcx]
		mov     r8, 1
		neg     r8
		cmp     rcx, r8
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_73
__L_76:
		mov     rcx, qword [rbp - 64]
		add     rcx, 1
		mov     qword [rbp - 64], rcx
		mov     rcx, r13
		add     rcx, 8
		mov     r8, qword [rbp - 64]
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], r15
		mov     rcx, r14
		add     rcx, 8
		mov     r8, qword [rbp - 64]
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], rbx
		mov     rcx, qword [rbp - 104]
		add     rcx, 1
		mov     r8, r12
		add     r8, 8
		mov     rdx, r15
		imul    rdx, 8
		add     r8, rdx
		mov     r8, qword [r8]
		add     r8, 8
		mov     rdx, rbx
		imul    rdx, 8
		add     r8, rdx
		mov     qword [r8], rcx
		mov     rcx, qword [rbp - 88]
		cmp     r15, rcx
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_77
__L_78:
		mov     rcx, qword [rbp - 96]
		cmp     rbx, rcx
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_77
__L_79:
		mov     qword [rbp - 112], 1
__L_77:
__L_73:
		mov     rcx, qword [rbp - 112]
		cmp     rcx, 1
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_80
__L_81:
		jmp     __L_22
__L_80:
		mov     rcx, qword [rbp - 56]
		add     rcx, 1
		mov     qword [rbp - 56], rcx
		jmp     __L_21
__L_22:
		mov     rcx, qword [rbp - 112]
		cmp     rcx, 1
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_82
__L_83:
		add     r12, 8
		mov     rcx, qword [rbp - 88]
		imul    rcx, 8
		add     r12, rcx
		mov     rcx, qword [r12]
		add     rcx, 8
		mov     r8, qword [rbp - 96]
		imul    r8, 8
		add     rcx, r8
		mov     rdi, qword [rcx]
		call    toString
		mov     rdi, rax
		call    println
		jmp     __L_84
__L_82:
		mov     rdi, __str_0
		call    print
__L_84:
		mov     r13, qword [rbp - 8]
		mov     r15, qword [rbp - 16]
		mov     r12, qword [rbp - 24]
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


