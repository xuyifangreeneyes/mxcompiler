mergesort:
		mov     qword [ ], r12
		mov     qword [ ], r13
		mov     %local_r15, r15
		mov     %local_r14, r14
		mov     %local_rbx, rbx
__L_1:
		call    mergesort
		mov     %cres_15, rax
		call    mergesort
		mov     %cres_17, rax
		mov     %cres_18, %cres_15
		add     %cres_18, %cres_17
		mov     %alloca_3, 0
__L_2:
		mov     %varDef_41, %alloca_3
		cmp     %varDef_41, 1
		setl    al
		movzx   %cres_20, al
		cmp     %cres_20, 0
		je      __L_3
__L_4:
		mov     qword [rel _b], 1
		mov     %cnewVal_23, %varDef_41
		inc     %cnewVal_23
		mov     %alloca_3, %cnewVal_23
		jmp     __L_2
__L_3:
		call    mergesort
		mov     %cres_28, rax
		call    mergesort
		mov     %cres_30, rax
		mov     %cres_31, %cres_28
		add     %cres_31, %cres_30
		mov     %alloca_2, 0
__L_5:
		mov     %varDef_48, %alloca_2
		cmp     %varDef_48, 1
		setl    al
		movzx   %cres_33, al
		cmp     %cres_33, 0
		je      __L_6
__L_7:
		mov     qword [rel _b], 1
		mov     %cnewVal_36, %varDef_48
		inc     %cnewVal_36
		mov     %alloca_2, %cnewVal_36
		jmp     __L_5
__L_6:
		mov     %res_4, %cres_18
		add     %res_4, %cres_31
		mov     %alloca_1, 0
__L_8:
		mov     %varDef_53, %alloca_1
		cmp     %varDef_53, 1
		setl    al
		movzx   %res_7, al
		cmp     %res_7, 0
		je      __L_9
__L_10:
		mov     qword [rel _b], 1
		mov     %newVal_10, %varDef_53
		inc     %newVal_10
		mov     %alloca_1, %newVal_10
		jmp     __L_8
__L_9:
		mov     r12, qword [ ]
		mov     r13, qword [ ]
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     rbx, %local_rbx
		mov     rax, %res_4
		ret     
