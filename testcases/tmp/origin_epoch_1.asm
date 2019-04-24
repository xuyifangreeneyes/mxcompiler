origin:
		mov     qword [ ], r12
		mov     %local_r14, r14
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r13, r13
		mov     %argVal_0, rdi
		mov     %alloca_1, %argVal_0
		mov     qword [rel _head], 0
		mov     qword [rel _tail], 0
		mov     %idVal_2, %alloca_1
		mov     %memberLength_4, %idVal_2
		imul    %memberLength_4, 8
		mov     %arrayLength_5, %memberLength_4
		add     %arrayLength_5, 8
		mov     rdi, %arrayLength_5
		call    malloc
		mov     %arrayPtr_3, rax
		mov     qword [%arrayPtr_3], %idVal_2
		mov     qword [rel _step], %arrayPtr_3
		mov     qword [rel _i], 0
__L_1:
		mov     %idVal_6, qword [rel _i]
		mov     %idVal_7, %alloca_1
		cmp     %idVal_6, %idVal_7
		setl    al
		movzx   %res_8, al
		cmp     %res_8, 0
		je      __L_2
__L_3:
		mov     %idVal_9, %alloca_1
		mov     %memberLength_11, %idVal_9
		imul    %memberLength_11, 8
		mov     %arrayLength_12, %memberLength_11
		add     %arrayLength_12, 8
		mov     rdi, %arrayLength_12
		call    malloc
		mov     %arrayPtr_10, rax
		mov     qword [%arrayPtr_10], %idVal_9
		mov     %arrayPtr_13, qword [rel _step]
		mov     %arrayBase_14, %arrayPtr_13
		add     %arrayBase_14, 8
		mov     %idVal_15, qword [rel _i]
		mov     %offset_16, %idVal_15
		imul    %offset_16, 8
		mov     %elementAddr_17, %arrayBase_14
		add     %elementAddr_17, %offset_16
		mov     qword [%elementAddr_17], %arrayPtr_10
		mov     qword [rel _j], 0
__L_4:
		mov     %idVal_18, qword [rel _j]
		mov     %idVal_19, %alloca_1
		cmp     %idVal_18, %idVal_19
		setl    al
		movzx   %res_20, al
		cmp     %res_20, 0
		je      __L_5
__L_6:
		mov     %arrayPtr_21, qword [rel _step]
		mov     %arrayBase_22, %arrayPtr_21
		add     %arrayBase_22, 8
		mov     %idVal_23, qword [rel _i]
		mov     %offset_24, %idVal_23
		imul    %offset_24, 8
		mov     %elementAddr_25, %arrayBase_22
		add     %elementAddr_25, %offset_24
		mov     %arrayPtr_26, qword [%elementAddr_25]
		mov     %arrayBase_27, %arrayPtr_26
		add     %arrayBase_27, 8
		mov     %idVal_28, qword [rel _j]
		mov     %offset_29, %idVal_28
		imul    %offset_29, 8
		mov     %elementAddr_30, %arrayBase_27
		add     %elementAddr_30, %offset_29
		mov     qword [%elementAddr_30], 0
__L_7:
		mov     %idVal_31, qword [rel _j]
		mov     %oldVal_32, qword [rel _j]
		mov     %newVal_33, %oldVal_32
		inc     %newVal_33
		mov     qword [rel _j], %newVal_33
		jmp     __L_4
__L_5:
__L_8:
		mov     %idVal_34, qword [rel _i]
		mov     %oldVal_35, qword [rel _i]
		mov     %newVal_36, %oldVal_35
		inc     %newVal_36
		mov     qword [rel _i], %newVal_36
		jmp     __L_1
__L_2:
		mov     r12, qword [ ]
		mov     r14, %local_r14
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r13, %local_r13
		ret     
