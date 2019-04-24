default rel

global _N
global _n
global _a
global _bak
global _a_left
global _a_right
global _heap
global _i1
global _i2
global _i3
global _i4
global _i5
global _i6
global _i7
global _i8
global _i9
global _i10
global _i11
global _i12
global _i13
global _i14
global _globalInit
global _A_Optimizer
global _A_A
global restore
global quicksort
global calc
global mergesort
global heapsort
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
		sub     rsp, 16
		mov     qword [rbp - 8], r12
		mov     qword [rel _N], 100000
		mov     r12, qword [rel _N]
		mov     rdi, r12
		imul    rdi, 8
		add     rdi, 8
		call    malloc
		mov     qword [rax], r12
		mov     qword [rel _a], rax
		mov     r12, qword [rel _N]
		mov     rdi, r12
		imul    rdi, 8
		add     rdi, 8
		call    malloc
		mov     qword [rax], r12
		mov     qword [rel _bak], rax
		mov     r12, qword [rel _N]
		mov     rdi, r12
		imul    rdi, 8
		add     rdi, 8
		call    malloc
		mov     qword [rax], r12
		mov     qword [rel _a_left], rax
		mov     r12, qword [rel _N]
		mov     rdi, r12
		imul    rdi, 8
		add     rdi, 8
		call    malloc
		mov     qword [rax], r12
		mov     qword [rel _a_right], rax
		mov     r12, qword [rel _N]
		mov     rdi, r12
		imul    rdi, 8
		add     rdi, 8
		call    malloc
		mov     qword [rax], r12
		mov     qword [rel _heap], rax
		mov     r12, qword [rbp - 8]
		mov     rsp, rbp
		pop     rbp
		ret     

_A_Optimizer:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 224
		mov     qword [rbp - 8], r12
		mov     qword [rbp - 16], r14
		mov     qword [rbp - 24], rbx
		mov     qword [rbp - 32], r15
		mov     qword [rbp - 40], r13
		mov     rbx, 2
		imul    rbx, 8
		add     rbx, 8
		mov     rdi, rbx
		call    malloc
		mov     qword [rbp - 48], rax
		mov     rcx, qword [rbp - 48]
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 48]
		mov     qword [rbp - 56], rcx
		add     qword [rbp - 56], rbx
		mov     rcx, qword [rbp - 48]
		add     rcx, 8
__L_1:
		mov     qword [rbp - 64], rcx
		mov     rcx, qword [rbp - 56]
		cmp     qword [rbp - 64], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_2
__L_3:
		mov     rbx, 2
		imul    rbx, 8
		add     rbx, 8
		mov     rdi, rbx
		call    malloc
		mov     qword [rbp - 72], rax
		mov     rcx, qword [rbp - 72]
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 72]
		mov     qword [rbp - 80], rcx
		add     qword [rbp - 80], rbx
		mov     rcx, qword [rbp - 72]
		add     rcx, 8
__L_4:
		mov     qword [rbp - 88], rcx
		mov     rcx, qword [rbp - 80]
		cmp     qword [rbp - 88], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_5
__L_6:
		mov     rbx, 2
		imul    rbx, 8
		add     rbx, 8
		mov     rdi, rbx
		call    malloc
		mov     qword [rbp - 96], rax
		mov     rcx, qword [rbp - 96]
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 96]
		mov     qword [rbp - 104], rcx
		add     qword [rbp - 104], rbx
		mov     rcx, qword [rbp - 96]
		add     rcx, 8
__L_7:
		mov     qword [rbp - 112], rcx
		mov     rcx, qword [rbp - 104]
		cmp     qword [rbp - 112], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_8
__L_9:
		mov     rbx, 2
		imul    rbx, 8
		add     rbx, 8
		mov     rdi, rbx
		call    malloc
		mov     qword [rbp - 120], rax
		mov     rcx, qword [rbp - 120]
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 120]
		mov     qword [rbp - 128], rcx
		add     qword [rbp - 128], rbx
		mov     rcx, qword [rbp - 120]
		add     rcx, 8
__L_10:
		mov     qword [rbp - 136], rcx
		mov     rcx, qword [rbp - 128]
		cmp     qword [rbp - 136], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_11
__L_12:
		mov     rbx, 2
		imul    rbx, 8
		add     rbx, 8
		mov     rdi, rbx
		call    malloc
		mov     qword [rbp - 144], rax
		mov     rcx, qword [rbp - 144]
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 144]
		mov     qword [rbp - 152], rcx
		add     qword [rbp - 152], rbx
		mov     rcx, qword [rbp - 144]
		add     rcx, 8
__L_13:
		mov     qword [rbp - 160], rcx
		mov     rcx, qword [rbp - 152]
		cmp     qword [rbp - 160], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_14
__L_15:
		mov     rbx, 2
		imul    rbx, 8
		add     rbx, 8
		mov     rdi, rbx
		call    malloc
		mov     qword [rbp - 168], rax
		mov     rcx, qword [rbp - 168]
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 168]
		mov     qword [rbp - 176], rcx
		add     qword [rbp - 176], rbx
		mov     rcx, qword [rbp - 168]
		add     rcx, 8
__L_16:
		mov     qword [rbp - 184], rcx
		mov     rcx, qword [rbp - 176]
		cmp     qword [rbp - 184], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_17
__L_18:
		mov     rbx, 2
		imul    rbx, 8
		add     rbx, 8
		mov     rdi, rbx
		call    malloc
		mov     qword [rbp - 192], rax
		mov     rcx, qword [rbp - 192]
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 192]
		mov     qword [rbp - 200], rcx
		add     qword [rbp - 200], rbx
		mov     rcx, qword [rbp - 192]
		add     rcx, 8
__L_19:
		mov     qword [rbp - 208], rcx
		mov     rcx, qword [rbp - 200]
		cmp     qword [rbp - 208], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_20
__L_21:
		mov     rbx, 2
		imul    rbx, 8
		add     rbx, 8
		mov     rdi, rbx
		call    malloc
		mov     qword [rbp - 216], rax
		mov     rcx, qword [rbp - 216]
		mov     qword [rcx], 2
		mov     r14, qword [rbp - 216]
		add     r14, rbx
		mov     rbx, qword [rbp - 216]
		add     rbx, 8
__L_22:
		cmp     rbx, r14
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_23
__L_24:
		mov     r12, 2
		imul    r12, 8
		add     r12, 8
		mov     rdi, r12
		call    malloc
		mov     r15, rax
		mov     qword [r15], 2
		mov     r13, r15
		add     r13, r12
		mov     r12, r15
		add     r12, 8
__L_25:
		cmp     r12, r13
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_26
__L_27:
		mov     rdi, 2
		imul    rdi, 8
		add     rdi, 8
		call    malloc
		mov     qword [rax], 2
		mov     qword [r12], rax
__L_28:
		add     r12, 8
		jmp     __L_25
__L_26:
		mov     qword [rbx], r15
__L_29:
		add     rbx, 8
		jmp     __L_22
__L_23:
		mov     r8, qword [rbp - 208]
		mov     rcx, qword [rbp - 216]
		mov     qword [r8], rcx
__L_30:
		mov     rcx, qword [rbp - 208]
		add     rcx, 8
		jmp     __L_19
__L_20:
		mov     r8, qword [rbp - 184]
		mov     rcx, qword [rbp - 192]
		mov     qword [r8], rcx
__L_31:
		mov     rcx, qword [rbp - 184]
		add     rcx, 8
		jmp     __L_16
__L_17:
		mov     r8, qword [rbp - 160]
		mov     rcx, qword [rbp - 168]
		mov     qword [r8], rcx
__L_32:
		mov     rcx, qword [rbp - 160]
		add     rcx, 8
		jmp     __L_13
__L_14:
		mov     r8, qword [rbp - 136]
		mov     rcx, qword [rbp - 144]
		mov     qword [r8], rcx
__L_33:
		mov     rcx, qword [rbp - 136]
		add     rcx, 8
		jmp     __L_10
__L_11:
		mov     r8, qword [rbp - 112]
		mov     rcx, qword [rbp - 120]
		mov     qword [r8], rcx
__L_34:
		mov     rcx, qword [rbp - 112]
		add     rcx, 8
		jmp     __L_7
__L_8:
		mov     r8, qword [rbp - 88]
		mov     rcx, qword [rbp - 96]
		mov     qword [r8], rcx
__L_35:
		mov     rcx, qword [rbp - 88]
		add     rcx, 8
		jmp     __L_4
__L_5:
		mov     r8, qword [rbp - 64]
		mov     rcx, qword [rbp - 72]
		mov     qword [r8], rcx
__L_36:
		mov     rcx, qword [rbp - 64]
		add     rcx, 8
		jmp     __L_1
__L_2:
		mov     r8, qword [rbp - 48]
		mov     rbx, 0
		mov     rcx, 1
__L_37:
		cmp     rcx, 1000
		setle   al
		movzx   rdx, al
		cmp     rdx, 0
		je      __L_38
__L_39:
		mov     r9, 123
		add     r9, rcx
		mov     rdx, r8
		add     rdx, 8
		mov     rax, 0
		imul    rax, 8
		add     rdx, rax
		mov     rdx, qword [rdx]
		add     rdx, 8
		mov     rax, 1
		imul    rax, 8
		add     rdx, rax
		mov     rdx, qword [rdx]
		add     rdx, 8
		mov     rax, 0
		imul    rax, 8
		add     rdx, rax
		mov     rdx, qword [rdx]
		add     rdx, 8
		mov     rax, 1
		imul    rax, 8
		add     rdx, rax
		mov     rdx, qword [rdx]
		add     rdx, 8
		mov     rax, 0
		imul    rax, 8
		add     rdx, rax
		mov     rdx, qword [rdx]
		add     rdx, 8
		mov     rax, 1
		imul    rax, 8
		add     rdx, rax
		mov     rdx, qword [rdx]
		add     rdx, 8
		mov     rax, 0
		imul    rax, 8
		add     rdx, rax
		mov     rdx, qword [rdx]
		add     rdx, 8
		mov     rax, 1
		imul    rax, 8
		add     rdx, rax
		mov     rdx, qword [rdx]
		add     rdx, 8
		mov     rax, 0
		imul    rax, 8
		add     rdx, rax
		mov     rdx, qword [rdx]
		add     rdx, 8
		mov     rax, 1
		imul    rax, 8
		add     rdx, rax
		mov     qword [rdx], r9
		mov     rdx, r8
		add     rdx, 8
		mov     r9, 0
		imul    r9, 8
		add     rdx, r9
		mov     rdx, qword [rdx]
		add     rdx, 8
		mov     r9, 1
		imul    r9, 8
		add     rdx, r9
		mov     rdx, qword [rdx]
		add     rdx, 8
		mov     r9, 0
		imul    r9, 8
		add     rdx, r9
		mov     rdx, qword [rdx]
		add     rdx, 8
		mov     r9, 1
		imul    r9, 8
		add     rdx, r9
		mov     rdx, qword [rdx]
		add     rdx, 8
		mov     r9, 0
		imul    r9, 8
		add     rdx, r9
		mov     rdx, qword [rdx]
		add     rdx, 8
		mov     r9, 1
		imul    r9, 8
		add     rdx, r9
		mov     rdx, qword [rdx]
		add     rdx, 8
		mov     r9, 0
		imul    r9, 8
		add     rdx, r9
		mov     rdx, qword [rdx]
		add     rdx, 8
		mov     r9, 1
		imul    r9, 8
		add     rdx, r9
		mov     rdx, qword [rdx]
		add     rdx, 8
		mov     r9, 0
		imul    r9, 8
		add     rdx, r9
		mov     rdx, qword [rdx]
		add     rdx, 8
		mov     r9, 1
		imul    r9, 8
		add     rdx, r9
		mov     rdx, qword [rdx]
		add     rbx, rdx
__L_40:
		inc     rcx
		jmp     __L_37
__L_38:
		mov     rdi, rbx
		call    toString
		mov     rdi, rax
		call    println
		mov     rcx, 1
__L_41:
		cmp     rcx, 1000000
		setle   al
		movzx   r8, al
		cmp     r8, 0
		je      __L_42
__L_43:
		mov     rax, 9876
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		cqo     
		mov     r8, 11
		idiv    r8
		add     rbx, rdx
__L_44:
		inc     rcx
		jmp     __L_41
__L_42:
		mov     rdi, rbx
		call    toString
		mov     rdi, rax
		call    println
		mov     rcx, 1
__L_45:
		cmp     rcx, 200000000
		setle   al
		movzx   r8, al
		cmp     r8, 0
		je      __L_46
__L_47:
__L_48:
		inc     rcx
		jmp     __L_45
__L_46:
		mov     r12, qword [rbp - 8]
		mov     r14, qword [rbp - 16]
		mov     rbx, qword [rbp - 24]
		mov     r15, qword [rbp - 32]
		mov     r13, qword [rbp - 40]
		mov     rsp, rbp
		pop     rbp
		ret     

_A_A:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 224
		mov     qword [rbp - 8], r12
		mov     qword [rbp - 16], r14
		mov     qword [rbp - 24], rbx
		mov     qword [rbp - 32], r15
		mov     qword [rbp - 40], r13
		mov     qword [rbp - 48], rdi
		mov     rbx, 2
		imul    rbx, 8
		add     rbx, 8
		mov     rdi, rbx
		call    malloc
		mov     qword [rbp - 56], rax
		mov     rcx, qword [rbp - 56]
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 56]
		mov     qword [rbp - 64], rcx
		add     qword [rbp - 64], rbx
		mov     rcx, qword [rbp - 56]
		add     rcx, 8
__L_49:
		mov     qword [rbp - 72], rcx
		mov     rcx, qword [rbp - 64]
		cmp     qword [rbp - 72], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_50
__L_51:
		mov     rbx, 2
		imul    rbx, 8
		add     rbx, 8
		mov     rdi, rbx
		call    malloc
		mov     qword [rbp - 80], rax
		mov     rcx, qword [rbp - 80]
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 80]
		mov     qword [rbp - 88], rcx
		add     qword [rbp - 88], rbx
		mov     rcx, qword [rbp - 80]
		add     rcx, 8
__L_52:
		mov     qword [rbp - 96], rcx
		mov     rcx, qword [rbp - 88]
		cmp     qword [rbp - 96], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_53
__L_54:
		mov     rbx, 3
		imul    rbx, 8
		add     rbx, 8
		mov     rdi, rbx
		call    malloc
		mov     qword [rbp - 104], rax
		mov     rcx, qword [rbp - 104]
		mov     qword [rcx], 3
		mov     rcx, qword [rbp - 104]
		mov     qword [rbp - 112], rcx
		add     qword [rbp - 112], rbx
		mov     rcx, qword [rbp - 104]
		add     rcx, 8
__L_55:
		mov     qword [rbp - 120], rcx
		mov     rcx, qword [rbp - 112]
		cmp     qword [rbp - 120], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_56
__L_57:
		mov     rbx, 2
		imul    rbx, 8
		add     rbx, 8
		mov     rdi, rbx
		call    malloc
		mov     qword [rbp - 128], rax
		mov     rcx, qword [rbp - 128]
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 128]
		mov     qword [rbp - 136], rcx
		add     qword [rbp - 136], rbx
		mov     rcx, qword [rbp - 128]
		add     rcx, 8
__L_58:
		mov     qword [rbp - 144], rcx
		mov     rcx, qword [rbp - 136]
		cmp     qword [rbp - 144], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_59
__L_60:
		mov     rbx, 3
		imul    rbx, 8
		add     rbx, 8
		mov     rdi, rbx
		call    malloc
		mov     qword [rbp - 152], rax
		mov     rcx, qword [rbp - 152]
		mov     qword [rcx], 3
		mov     rcx, qword [rbp - 152]
		mov     qword [rbp - 160], rcx
		add     qword [rbp - 160], rbx
		mov     rcx, qword [rbp - 152]
		add     rcx, 8
__L_61:
		mov     qword [rbp - 168], rcx
		mov     rcx, qword [rbp - 160]
		cmp     qword [rbp - 168], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_62
__L_63:
		mov     rbx, 2
		imul    rbx, 8
		add     rbx, 8
		mov     rdi, rbx
		call    malloc
		mov     qword [rbp - 176], rax
		mov     rcx, qword [rbp - 176]
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 176]
		mov     qword [rbp - 184], rcx
		add     qword [rbp - 184], rbx
		mov     rcx, qword [rbp - 176]
		add     rcx, 8
__L_64:
		mov     qword [rbp - 192], rcx
		mov     rcx, qword [rbp - 184]
		cmp     qword [rbp - 192], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_65
__L_66:
		mov     rbx, 2
		imul    rbx, 8
		add     rbx, 8
		mov     rdi, rbx
		call    malloc
		mov     qword [rbp - 200], rax
		mov     rcx, qword [rbp - 200]
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 200]
		mov     qword [rbp - 208], rcx
		add     qword [rbp - 208], rbx
		mov     rcx, qword [rbp - 200]
		add     rcx, 8
__L_67:
		mov     qword [rbp - 216], rcx
		mov     rcx, qword [rbp - 208]
		cmp     qword [rbp - 216], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_68
__L_69:
		mov     rbx, 3
		imul    rbx, 8
		add     rbx, 8
		mov     rdi, rbx
		call    malloc
		mov     qword [rbp - 224], rax
		mov     rcx, qword [rbp - 224]
		mov     qword [rcx], 3
		mov     r14, qword [rbp - 224]
		add     r14, rbx
		mov     rbx, qword [rbp - 224]
		add     rbx, 8
__L_70:
		cmp     rbx, r14
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_71
__L_72:
		mov     r12, 2
		imul    r12, 8
		add     r12, 8
		mov     rdi, r12
		call    malloc
		mov     r13, rax
		mov     qword [r13], 2
		mov     r15, r13
		add     r15, r12
		mov     r12, r13
		add     r12, 8
__L_73:
		cmp     r12, r15
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_74
__L_75:
		mov     rdi, 2
		imul    rdi, 8
		add     rdi, 8
		call    malloc
		mov     qword [rax], 2
		mov     qword [r12], rax
__L_76:
		add     r12, 8
		jmp     __L_73
__L_74:
		mov     qword [rbx], r13
__L_77:
		add     rbx, 8
		jmp     __L_70
__L_71:
		mov     r8, qword [rbp - 216]
		mov     rcx, qword [rbp - 224]
		mov     qword [r8], rcx
__L_78:
		mov     rcx, qword [rbp - 216]
		add     rcx, 8
		jmp     __L_67
__L_68:
		mov     r8, qword [rbp - 192]
		mov     rcx, qword [rbp - 200]
		mov     qword [r8], rcx
__L_79:
		mov     rcx, qword [rbp - 192]
		add     rcx, 8
		jmp     __L_64
__L_65:
		mov     r8, qword [rbp - 168]
		mov     rcx, qword [rbp - 176]
		mov     qword [r8], rcx
__L_80:
		mov     rcx, qword [rbp - 168]
		add     rcx, 8
		jmp     __L_61
__L_62:
		mov     r8, qword [rbp - 144]
		mov     rcx, qword [rbp - 152]
		mov     qword [r8], rcx
__L_81:
		mov     rcx, qword [rbp - 144]
		add     rcx, 8
		jmp     __L_58
__L_59:
		mov     r8, qword [rbp - 120]
		mov     rcx, qword [rbp - 128]
		mov     qword [r8], rcx
__L_82:
		mov     rcx, qword [rbp - 120]
		add     rcx, 8
		jmp     __L_55
__L_56:
		mov     r8, qword [rbp - 96]
		mov     rcx, qword [rbp - 104]
		mov     qword [r8], rcx
__L_83:
		mov     rcx, qword [rbp - 96]
		add     rcx, 8
		jmp     __L_52
__L_53:
		mov     r8, qword [rbp - 72]
		mov     rcx, qword [rbp - 80]
		mov     qword [r8], rcx
__L_84:
		mov     rcx, qword [rbp - 72]
		add     rcx, 8
		jmp     __L_49
__L_50:
		mov     rcx, qword [rbp - 48]
		add     rcx, 0
		mov     r8, qword [rbp - 56]
		mov     qword [rcx], r8
		mov     r12, qword [rbp - 8]
		mov     r14, qword [rbp - 16]
		mov     rbx, qword [rbp - 24]
		mov     r15, qword [rbp - 32]
		mov     r13, qword [rbp - 40]
		mov     rsp, rbp
		pop     rbp
		ret     

restore:
		push    rbp
		mov     rbp, rsp
		mov     rcx, 1
__L_85:
		mov     r8, qword [rel _n]
		cmp     rcx, r8
		setle   al
		movzx   r8, al
		cmp     r8, 0
		je      __L_86
__L_87:
		mov     r8, qword [rel _bak]
		add     r8, 8
		mov     rdx, rcx
		imul    rdx, 8
		add     r8, rdx
		mov     r9, qword [r8]
		mov     r8, qword [rel _a]
		add     r8, 8
		mov     rdx, rcx
		imul    rdx, 8
		add     r8, rdx
		mov     qword [r8], r9
__L_88:
		inc     rcx
		jmp     __L_85
__L_86:
		mov     rsp, rbp
		pop     rbp
		ret     

quicksort:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 32
		mov     qword [rbp - 8], r12
		mov     qword [rbp - 16], r14
		mov     qword [rbp - 24], rbx
		mov     rbx, rsi
		mov     rsi, rdi
		mov     r12, 0
		mov     rcx, qword [rel _a]
		add     rcx, 8
		mov     r8, rsi
		imul    r8, 8
		add     rcx, r8
		mov     rdx, qword [rcx]
		mov     r8, 0
		mov     r14, 0
		mov     r9, rsi
		add     r9, 1
__L_89:
		cmp     r9, rbx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_90
__L_91:
		inc     r12
		mov     rcx, qword [rel _a]
		add     rcx, 8
		mov     rax, r9
		imul    rax, 8
		add     rcx, rax
		mov     rcx, qword [rcx]
		cmp     rcx, rdx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_92
__L_93:
		mov     rcx, qword [rel _a]
		add     rcx, 8
		mov     rax, r9
		imul    rax, 8
		add     rcx, rax
		mov     rax, qword [rcx]
		mov     rcx, qword [rel _a_left]
		add     rcx, 8
		mov     r10, r8
		mov     r8, r10
		inc     r8
		imul    r10, 8
		add     rcx, r10
		mov     qword [rcx], rax
		jmp     __L_94
__L_92:
		mov     rcx, qword [rel _a]
		add     rcx, 8
		mov     rax, r9
		imul    rax, 8
		add     rcx, rax
		mov     rax, qword [rcx]
		mov     rcx, qword [rel _a_right]
		add     rcx, 8
		mov     r10, r14
		mov     r14, r10
		inc     r14
		imul    r10, 8
		add     rcx, r10
		mov     qword [rcx], rax
__L_94:
__L_95:
		inc     r9
		jmp     __L_89
__L_90:
		mov     rcx, rsi
		mov     r9, 0
__L_96:
		cmp     r9, r8
		setl    al
		movzx   rax, al
		cmp     rax, 0
		je      __L_97
__L_98:
		mov     rax, qword [rel _a_left]
		add     rax, 8
		mov     r10, r9
		imul    r10, 8
		add     rax, r10
		mov     r10, qword [rax]
		mov     rax, qword [rel _a]
		add     rax, 8
		mov     r11, rcx
		mov     rcx, r11
		inc     rcx
		imul    r11, 8
		add     rax, r11
		mov     qword [rax], r10
__L_99:
		inc     r9
		jmp     __L_96
__L_97:
		mov     r9, qword [rel _a]
		add     r9, 8
		mov     rax, rcx
		mov     rcx, rax
		inc     rcx
		imul    rax, 8
		add     r9, rax
		mov     qword [r9], rdx
		mov     r9, 0
__L_100:
		cmp     r9, r14
		setl    al
		movzx   rdx, al
		cmp     rdx, 0
		je      __L_101
__L_102:
		mov     rdx, qword [rel _a_right]
		add     rdx, 8
		mov     rax, r9
		imul    rax, 8
		add     rdx, rax
		mov     r10, qword [rdx]
		mov     rdx, qword [rel _a]
		add     rdx, 8
		mov     rax, rcx
		mov     rcx, rax
		inc     rcx
		imul    rax, 8
		add     rdx, rax
		mov     qword [rdx], r10
__L_103:
		inc     r9
		jmp     __L_100
__L_101:
		cmp     r8, 1
		setg    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_104
__L_105:
		mov     rdi, rsi
		add     rsi, r8
		call    quicksort
		add     r12, rax
__L_104:
		cmp     r14, 1
		setg    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_106
__L_107:
		mov     rdi, rbx
		sub     rdi, r14
		mov     rsi, rbx
		call    quicksort
		add     r12, rax
__L_106:
		mov     rax, r12
		mov     r12, qword [rbp - 8]
		mov     r14, qword [rbp - 16]
		mov     rbx, qword [rbp - 24]
		mov     rsp, rbp
		pop     rbp
		ret     

calc:
		push    rbp
		mov     rbp, rsp
		mov     r8, 1
__L_108:
		mov     rcx, qword [rel _n]
		cmp     r8, rcx
		setle   al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_109
__L_110:
		mov     rcx, r8
		sub     rcx, 1
		mov     rdx, qword [rel _a_left]
		add     rdx, 8
		mov     r9, r8
		imul    r9, 8
		add     rdx, r9
		mov     qword [rdx], rcx
		mov     rcx, r8
		add     rcx, 1
		mov     rdx, qword [rel _a_right]
		add     rdx, 8
		mov     r9, r8
		imul    r9, 8
		add     rdx, r9
		mov     qword [rdx], rcx
__L_111:
		inc     r8
		jmp     __L_108
__L_109:
		mov     rcx, 0
		mov     r8, qword [rel _n]
__L_112:
		cmp     r8, 1
		setge   al
		movzx   rdx, al
		cmp     rdx, 0
		je      __L_113
__L_114:
		mov     rdx, qword [rel _a_left]
		add     rdx, 8
		mov     r9, qword [rel _a]
		add     r9, 8
		mov     rax, r8
		imul    rax, 8
		add     r9, rax
		mov     r9, qword [r9]
		imul    r9, 8
		add     rdx, r9
		mov     rdx, qword [rdx]
		mov     r9, qword [rel _a_right]
		add     r9, 8
		mov     rax, qword [rel _a]
		add     rax, 8
		mov     rsi, r8
		imul    rsi, 8
		add     rax, rsi
		mov     rax, qword [rax]
		imul    rax, 8
		add     r9, rax
		mov     r9, qword [r9]
		mov     rax, qword [rel _a_right]
		add     rax, 8
		mov     rsi, rdx
		imul    rsi, 8
		add     rax, rsi
		mov     qword [rax], r9
		mov     rax, qword [rel _a_left]
		add     rax, 8
		mov     rsi, r9
		imul    rsi, 8
		add     rax, rsi
		mov     qword [rax], rdx
		add     rcx, r9
		sub     rcx, rdx
		sub     rcx, 2
__L_115:
		dec     r8
		jmp     __L_112
__L_113:
		mov     rax, rcx
		mov     rsp, rbp
		pop     rbp
		ret     

mergesort:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 32
		mov     qword [rbp - 8], r12
		mov     qword [rbp - 16], r14
		mov     qword [rbp - 24], rbx
		mov     qword [rbp - 32], r15
		mov     r14, rdi
		mov     rbx, rsi
		mov     rcx, r14
		add     rcx, 1
		cmp     rcx, rbx
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_116
__L_117:
		mov     r12, qword [rbp - 8]
		mov     r14, qword [rbp - 16]
		mov     rbx, qword [rbp - 24]
		mov     r15, qword [rbp - 32]
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     
__L_116:
		mov     r12, r14
		add     r12, rbx
		sar     r12, 1
		mov     r15, 0
		mov     rdi, r14
		mov     rsi, r12
		call    mergesort
		add     r15, rax
		mov     rdi, r12
		mov     rsi, rbx
		call    mergesort
		add     r15, rax
		mov     rcx, 0
		mov     rdx, 0
		mov     r8, r14
__L_118:
		cmp     r8, r12
		setl    al
		movzx   r9, al
		cmp     r9, 0
		je      __L_119
__L_120:
		mov     r9, qword [rel _a]
		add     r9, 8
		mov     rax, r8
		imul    rax, 8
		add     r9, rax
		mov     rsi, qword [r9]
		mov     r9, qword [rel _a_left]
		add     r9, 8
		mov     rax, rcx
		mov     rcx, rax
		inc     rcx
		imul    rax, 8
		add     r9, rax
		mov     qword [r9], rsi
__L_121:
		inc     r8
		jmp     __L_118
__L_119:
		mov     r8, r12
__L_122:
		cmp     r8, rbx
		setl    al
		movzx   r9, al
		cmp     r9, 0
		je      __L_123
__L_124:
		mov     r9, qword [rel _a]
		add     r9, 8
		mov     rax, r8
		imul    rax, 8
		add     r9, rax
		mov     rsi, qword [r9]
		mov     r9, qword [rel _a_right]
		add     r9, 8
		mov     rax, rdx
		mov     rdx, rax
		inc     rdx
		imul    rax, 8
		add     r9, rax
		mov     qword [r9], rsi
__L_125:
		inc     r8
		jmp     __L_122
__L_123:
		mov     rbx, 0
		mov     r8, 0
__L_126:
		cmp     rbx, rcx
		setl    al
		movzx   r9, al
		cmp     r9, 0
		je      __L_127
__L_128:
		cmp     r8, rdx
		setl    al
		movzx   r9, al
		cmp     r9, 0
		je      __L_127
__L_129:
		inc     r15
		mov     r9, qword [rel _a_left]
		add     r9, 8
		mov     rax, rbx
		imul    rax, 8
		add     r9, rax
		mov     rsi, qword [r9]
		mov     r9, qword [rel _a_right]
		add     r9, 8
		mov     rax, r8
		imul    rax, 8
		add     r9, rax
		mov     r9, qword [r9]
		cmp     rsi, r9
		setl    al
		movzx   r9, al
		cmp     r9, 0
		je      __L_130
__L_131:
		mov     r9, qword [rel _a_left]
		add     r9, 8
		mov     rax, rbx
		mov     rbx, rax
		inc     rbx
		imul    rax, 8
		add     r9, rax
		mov     rsi, qword [r9]
		mov     r9, qword [rel _a]
		add     r9, 8
		mov     rax, r14
		mov     r14, rax
		inc     r14
		imul    rax, 8
		add     r9, rax
		mov     qword [r9], rsi
		jmp     __L_132
__L_130:
		mov     r9, qword [rel _a_right]
		add     r9, 8
		mov     rax, r8
		mov     r8, rax
		inc     r8
		imul    rax, 8
		add     r9, rax
		mov     rsi, qword [r9]
		mov     r9, qword [rel _a]
		add     r9, 8
		mov     rax, r14
		mov     r14, rax
		inc     r14
		imul    rax, 8
		add     r9, rax
		mov     qword [r9], rsi
__L_132:
		jmp     __L_126
__L_127:
__L_133:
		cmp     rbx, rcx
		setl    al
		movzx   r9, al
		cmp     r9, 0
		je      __L_134
__L_135:
		mov     r9, qword [rel _a_left]
		add     r9, 8
		mov     rax, rbx
		mov     rbx, rax
		inc     rbx
		imul    rax, 8
		add     r9, rax
		mov     rsi, qword [r9]
		mov     r9, qword [rel _a]
		add     r9, 8
		mov     rax, r14
		mov     r14, rax
		inc     r14
		imul    rax, 8
		add     r9, rax
		mov     qword [r9], rsi
		jmp     __L_133
__L_134:
__L_136:
		cmp     r8, rdx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_137
__L_138:
		mov     rcx, qword [rel _a_right]
		add     rcx, 8
		mov     r9, r8
		mov     r8, r9
		inc     r8
		imul    r9, 8
		add     rcx, r9
		mov     rax, qword [rcx]
		mov     rcx, qword [rel _a]
		add     rcx, 8
		mov     r9, r14
		mov     r14, r9
		inc     r14
		imul    r9, 8
		add     rcx, r9
		mov     qword [rcx], rax
		jmp     __L_136
__L_137:
		mov     rax, r15
		mov     r12, qword [rbp - 8]
		mov     r14, qword [rbp - 16]
		mov     rbx, qword [rbp - 24]
		mov     r15, qword [rbp - 32]
		mov     rsp, rbp
		pop     rbp
		ret     

heapsort:
		push    rbp
		mov     rbp, rsp
		mov     rdx, 0
		mov     r10, 1
__L_139:
		mov     rcx, qword [rel _n]
		cmp     r10, rcx
		setle   al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_140
__L_141:
		mov     rcx, qword [rel _a]
		add     rcx, 8
		mov     r8, r10
		imul    r8, 8
		add     rcx, r8
		mov     r9, qword [rcx]
		mov     rcx, qword [rel _heap]
		add     rcx, 8
		mov     r8, r10
		imul    r8, 8
		add     rcx, r8
		mov     qword [rcx], r9
		mov     rcx, r10
__L_142:
		cmp     rcx, 1
		setne   al
		movzx   r8, al
		cmp     r8, 0
		je      __L_143
__L_144:
		inc     rdx
		mov     r8, qword [rel _heap]
		add     r8, 8
		mov     r9, rcx
		imul    r9, 8
		add     r8, r9
		mov     rax, qword [r8]
		mov     r8, qword [rel _heap]
		add     r8, 8
		mov     r9, rcx
		sar     r9, 1
		imul    r9, 8
		add     r8, r9
		mov     r8, qword [r8]
		cmp     rax, r8
		setg    al
		movzx   r8, al
		cmp     r8, 0
		je      __L_145
__L_146:
		jmp     __L_143
__L_145:
		mov     r8, qword [rel _heap]
		add     r8, 8
		mov     r9, rcx
		imul    r9, 8
		add     r8, r9
		mov     rax, qword [r8]
		mov     r8, qword [rel _heap]
		add     r8, 8
		mov     r9, rcx
		sar     r9, 1
		imul    r9, 8
		add     r8, r9
		mov     rsi, qword [r8]
		mov     r8, qword [rel _heap]
		add     r8, 8
		mov     r9, rcx
		imul    r9, 8
		add     r8, r9
		mov     qword [r8], rsi
		mov     r8, qword [rel _heap]
		add     r8, 8
		mov     r9, rcx
		sar     r9, 1
		imul    r9, 8
		add     r8, r9
		mov     qword [r8], rax
		sar     rcx, 1
		jmp     __L_142
__L_143:
__L_147:
		inc     r10
		jmp     __L_139
__L_140:
		mov     r8, qword [rel _n]
		mov     r10, 1
__L_148:
		mov     rcx, qword [rel _n]
		cmp     r10, rcx
		setle   al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_149
__L_150:
		mov     rcx, qword [rel _heap]
		add     rcx, 8
		mov     r9, 1
		imul    r9, 8
		add     rcx, r9
		mov     rax, qword [rcx]
		mov     rcx, qword [rel _a]
		add     rcx, 8
		mov     r9, r10
		imul    r9, 8
		add     rcx, r9
		mov     qword [rcx], rax
		mov     rcx, qword [rel _heap]
		add     rcx, 8
		mov     r9, r8
		mov     r8, r9
		dec     r8
		imul    r9, 8
		add     rcx, r9
		mov     rax, qword [rcx]
		mov     rcx, qword [rel _heap]
		add     rcx, 8
		mov     r9, 1
		imul    r9, 8
		add     rcx, r9
		mov     qword [rcx], rax
		mov     rcx, 1
__L_151:
		mov     r9, rcx
		shl     r9, 1
		cmp     r9, r8
		setle   al
		movzx   r9, al
		cmp     r9, 0
		je      __L_152
__L_153:
		mov     r11, rcx
		shl     r11, 1
		mov     rsi, r11
		add     rsi, 1
		mov     r9, r11
		cmp     rsi, r8
		setle   al
		movzx   rax, al
		cmp     rax, 0
		je      __L_154
__L_155:
		inc     rdx
		mov     rax, qword [rel _heap]
		add     rax, 8
		mov     rdi, rsi
		imul    rdi, 8
		add     rax, rdi
		mov     rdi, qword [rax]
		mov     rax, qword [rel _heap]
		add     rax, 8
		imul    r11, 8
		add     rax, r11
		mov     rax, qword [rax]
		cmp     rdi, rax
		setl    al
		movzx   rax, al
		cmp     rax, 0
		je      __L_156
__L_157:
		mov     r9, rsi
__L_156:
__L_154:
		inc     rdx
		mov     rax, qword [rel _heap]
		add     rax, 8
		mov     rsi, rcx
		imul    rsi, 8
		add     rax, rsi
		mov     r11, qword [rax]
		mov     rax, qword [rel _heap]
		add     rax, 8
		mov     rsi, r9
		imul    rsi, 8
		add     rax, rsi
		mov     rax, qword [rax]
		cmp     r11, rax
		setl    al
		movzx   rax, al
		cmp     rax, 0
		je      __L_158
__L_159:
		jmp     __L_152
__L_158:
		mov     rax, qword [rel _heap]
		add     rax, 8
		mov     rsi, rcx
		imul    rsi, 8
		add     rax, rsi
		mov     rax, qword [rax]
		mov     rsi, qword [rel _heap]
		add     rsi, 8
		mov     r11, r9
		imul    r11, 8
		add     rsi, r11
		mov     r11, qword [rsi]
		mov     rsi, qword [rel _heap]
		add     rsi, 8
		mov     rdi, rcx
		imul    rdi, 8
		add     rsi, rdi
		mov     qword [rsi], r11
		mov     rsi, qword [rel _heap]
		add     rsi, 8
		mov     r11, r9
		imul    r11, 8
		add     rsi, r11
		mov     qword [rsi], rax
		mov     rax, rcx
		mov     rcx, r9
		mov     r9, rax
		jmp     __L_151
__L_152:
__L_160:
		inc     r10
		jmp     __L_148
__L_149:
		mov     rax, rdx
		mov     rsp, rbp
		pop     rbp
		ret     

main:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 32
		mov     qword [rbp - 8], r12
		mov     qword [rbp - 16], r14
		mov     qword [rbp - 24], rbx
		mov     qword [rbp - 32], r15
		call    _globalInit
		call    getInt
		mov     qword [rel _n], rax
		call    getInt
		mov     r9, rax
		mov     rcx, 1
__L_161:
		mov     r8, qword [rel _n]
		cmp     rcx, r8
		setle   al
		movzx   r8, al
		cmp     r8, 0
		je      __L_162
__L_163:
		mov     r8, qword [rel _a]
		add     r8, 8
		mov     rdx, rcx
		imul    rdx, 8
		add     r8, rdx
		mov     qword [r8], rcx
		cmp     rcx, r9
		setle   al
		movzx   r8, al
		cmp     r8, 0
		je      __L_164
__L_165:
		mov     r8, r9
		add     r8, 1
		sub     r8, rcx
		mov     rdx, qword [rel _a]
		add     rdx, 8
		mov     rax, rcx
		imul    rax, 8
		add     rdx, rax
		mov     qword [rdx], r8
__L_164:
		mov     r8, qword [rel _a]
		add     r8, 8
		mov     rdx, rcx
		imul    rdx, 8
		add     r8, rdx
		mov     rax, qword [r8]
		mov     r8, qword [rel _bak]
		add     r8, 8
		mov     rdx, rcx
		imul    rdx, 8
		add     r8, rdx
		mov     qword [r8], rax
__L_166:
		inc     rcx
		jmp     __L_161
__L_162:
		mov     rsi, qword [rel _n]
		add     rsi, 1
		mov     rdi, 1
		call    quicksort
		mov     rbx, rax
		call    restore
		call    calc
		mov     r12, rax
		call    restore
		mov     rsi, qword [rel _n]
		add     rsi, 1
		mov     rdi, 1
		call    mergesort
		mov     r14, rax
		call    restore
		call    heapsort
		mov     r15, rax
		mov     rdi, rbx
		call    toString
		mov     rdi, rax
		call    println
		mov     rdi, r12
		call    toString
		mov     rdi, rax
		call    println
		mov     rdi, r14
		call    toString
		mov     rdi, rax
		call    println
		mov     rdi, r15
		call    toString
		mov     rdi, rax
		call    println
		mov     rdi, 8
		call    malloc
		mov     rbx, rax
		mov     rdi, rbx
		call    _A_A
		mov     rdi, rbx
		call    _A_Optimizer
		mov     r12, qword [rbp - 8]
		mov     r14, qword [rbp - 16]
		mov     rbx, qword [rbp - 24]
		mov     r15, qword [rbp - 32]
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     

SECTION .data

SECTION .bss

_N:
		resb    8

_n:
		resb    8

_a:
		resb    8

_bak:
		resb    8

_a_left:
		resb    8

_a_right:
		resb    8

_heap:
		resb    8

_i1:
		resb    8

_i2:
		resb    8

_i3:
		resb    8

_i4:
		resb    8

_i5:
		resb    8

_i6:
		resb    8

_i7:
		resb    8

_i8:
		resb    8

_i9:
		resb    8

_i10:
		resb    8

_i11:
		resb    8

_i12:
		resb    8

_i13:
		resb    8

_i14:
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


