addList:
		mov     qword [ ], r12
		mov     qword [ ], r14
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r13, r13
		mov     %argVal_0, rdi
		mov     %argVal_2, rsi
		mov     %alloca_5, %argVal_0
		mov     %alloca_4, %argVal_2
		mov     %idVal_5, %alloca_5
		mov     rdi, %idVal_5
		call    check
		mov     %res_4, rax
		cmp     %res_4, 0
		je      __L_13
__L_14:
		mov     %idVal_7, %alloca_4
		mov     rdi, %idVal_7
		call    check
		mov     %res_6, rax
		cmp     %res_6, 0
		je      __L_13
__L_15:
		mov     %arrayPtr_8, qword [rel _step]
		mov     %arrayBase_9, %arrayPtr_8
		add     %arrayBase_9, 8
		mov     %idVal_10, %alloca_5
		mov     %offset_11, %idVal_10
		imul    %offset_11, 8
		mov     %elementAddr_12, %arrayBase_9
		add     %elementAddr_12, %offset_11
		mov     %arrayPtr_13, qword [%elementAddr_12]
		mov     %arrayBase_14, %arrayPtr_13
		add     %arrayBase_14, 8
		mov     %idVal_15, %alloca_4
		mov     %offset_16, %idVal_15
		imul    %offset_16, 8
		mov     %elementAddr_17, %arrayBase_14
		add     %elementAddr_17, %offset_16
		mov     %elementVal_18, qword [%elementAddr_17]
		mov     %res_19, 1
		neg     %res_19
		cmp     %elementVal_18, %res_19
		sete    al
		movzx   %res_20, al
		cmp     %res_20, 0
		je      __L_13
__L_16:
		mov     %idVal_21, qword [rel _tail]
		mov     %oldVal_22, qword [rel _tail]
		mov     %newVal_23, %oldVal_22
		inc     %newVal_23
		mov     qword [rel _tail], %newVal_23
		mov     %idVal_24, %alloca_5
		mov     %arrayPtr_25, qword [rel _xlist]
		mov     %arrayBase_26, %arrayPtr_25
		add     %arrayBase_26, 8
		mov     %idVal_27, qword [rel _tail]
		mov     %offset_28, %idVal_27
		imul    %offset_28, 8
		mov     %elementAddr_29, %arrayBase_26
		add     %elementAddr_29, %offset_28
		mov     qword [%elementAddr_29], %idVal_24
		mov     %idVal_30, %alloca_4
		mov     %arrayPtr_31, qword [rel _ylist]
		mov     %arrayBase_32, %arrayPtr_31
		add     %arrayBase_32, 8
		mov     %idVal_33, qword [rel _tail]
		mov     %offset_34, %idVal_33
		imul    %offset_34, 8
		mov     %elementAddr_35, %arrayBase_32
		add     %elementAddr_35, %offset_34
		mov     qword [%elementAddr_35], %idVal_30
		mov     %idVal_36, qword [rel _now]
		mov     %res_37, %idVal_36
		add     %res_37, 1
		mov     %arrayPtr_38, qword [rel _step]
		mov     %arrayBase_39, %arrayPtr_38
		add     %arrayBase_39, 8
		mov     %idVal_40, %alloca_5
		mov     %offset_41, %idVal_40
		imul    %offset_41, 8
		mov     %elementAddr_42, %arrayBase_39
		add     %elementAddr_42, %offset_41
		mov     %arrayPtr_43, qword [%elementAddr_42]
		mov     %arrayBase_44, %arrayPtr_43
		add     %arrayBase_44, 8
		mov     %idVal_45, %alloca_4
		mov     %offset_46, %idVal_45
		imul    %offset_46, 8
		mov     %elementAddr_47, %arrayBase_44
		add     %elementAddr_47, %offset_46
		mov     qword [%elementAddr_47], %res_37
		mov     %idVal_48, %alloca_5
		mov     %idVal_49, qword [rel _targetx]
		cmp     %idVal_48, %idVal_49
		sete    al
		movzx   %res_50, al
		cmp     %res_50, 0
		je      __L_17
__L_18:
		mov     %idVal_51, %alloca_4
		mov     %idVal_52, qword [rel _targety]
		cmp     %idVal_51, %idVal_52
		sete    al
		movzx   %res_53, al
		cmp     %res_53, 0
		je      __L_17
__L_19:
		mov     qword [rel _ok], 1
__L_17:
__L_13:
		mov     r12, qword [ ]
		mov     r14, qword [ ]
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r13, %local_r13
		ret     
