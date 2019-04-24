main:
		mov     qword [ ], r13
		mov     qword [ ], r15
		mov     %local_r12, r12
		mov     %local_rbx, rbx
		mov     %local_r14, r14
		call    _globalInit
		mov     %memberLength_2, 4
		imul    %memberLength_2, 8
		mov     %arrayLength_3, %memberLength_2
		add     %arrayLength_3, 8
		mov     rdi, %arrayLength_3
		call    malloc
		mov     %arrayPtr_1, rax
		mov     qword [%arrayPtr_1], 4
		mov     %alloca_2, %arrayPtr_1
		mov     %idVal_5, qword [rel _a]
		mov     %arrayPtr_6, %alloca_2
		mov     %arrayBase_7, %arrayPtr_6
		add     %arrayBase_7, 8
		mov     %offset_8, 0
		imul    %offset_8, 8
		mov     %elementAddr_9, %arrayBase_7
		add     %elementAddr_9, %offset_8
		mov     qword [%elementAddr_9], %idVal_5
		mov     %idVal_10, qword [rel _a]
		mov     %arrayPtr_11, %alloca_2
		mov     %arrayBase_12, %arrayPtr_11
		add     %arrayBase_12, 8
		mov     %offset_13, 1
		imul    %offset_13, 8
		mov     %elementAddr_14, %arrayBase_12
		add     %elementAddr_14, %offset_13
		mov     qword [%elementAddr_14], %idVal_10
		mov     %idVal_15, qword [rel _a]
		mov     %arrayPtr_16, %alloca_2
		mov     %arrayBase_17, %arrayPtr_16
		add     %arrayBase_17, 8
		mov     %offset_18, 2
		imul    %offset_18, 8
		mov     %elementAddr_19, %arrayBase_17
		add     %elementAddr_19, %offset_18
		mov     qword [%elementAddr_19], %idVal_15
		mov     %idVal_20, qword [rel _a]
		mov     %arrayPtr_21, %alloca_2
		mov     %arrayBase_22, %arrayPtr_21
		add     %arrayBase_22, 8
		mov     %offset_23, 3
		imul    %offset_23, 8
		mov     %elementAddr_24, %arrayBase_22
		add     %elementAddr_24, %offset_23
		mov     qword [%elementAddr_24], %idVal_20
		mov     %classPtr_27, %alloca_2
		mov     rdi, %classPtr_27
		call    _arraySize
		mov     %res_26, rax
		mov     rdi, %res_26
		call    toString
		mov     %res_25, rax
		mov     rdi, %res_25
		call    println
		mov     %alloca_1, 0
__L_1:
		mov     %idVal_28, %alloca_1
		mov     %arrayPtr_30, %alloca_2
		mov     %arrayBase_31, %arrayPtr_30
		add     %arrayBase_31, 8
		mov     %offset_32, 0
		imul    %offset_32, 8
		mov     %elementAddr_33, %arrayBase_31
		add     %elementAddr_33, %offset_32
		mov     %classPtr_34, qword [%elementAddr_33]
		mov     rdi, %classPtr_34
		call    _arraySize
		mov     %res_29, rax
		cmp     %idVal_28, %res_29
		setl    al
		movzx   %res_35, al
		cmp     %res_35, 0
		je      __L_2
__L_3:
		call    getInt
		mov     %res_36, rax
		mov     %arrayPtr_37, %alloca_2
		mov     %arrayBase_38, %arrayPtr_37
		add     %arrayBase_38, 8
		mov     %offset_39, 0
		imul    %offset_39, 8
		mov     %elementAddr_40, %arrayBase_38
		add     %elementAddr_40, %offset_39
		mov     %arrayPtr_41, qword [%elementAddr_40]
		mov     %arrayBase_42, %arrayPtr_41
		add     %arrayBase_42, 8
		mov     %idVal_43, %alloca_1
		mov     %offset_44, %idVal_43
		imul    %offset_44, 8
		mov     %elementAddr_45, %arrayBase_42
		add     %elementAddr_45, %offset_44
		mov     qword [%elementAddr_45], %res_36
__L_4:
		mov     %idVal_46, %alloca_1
		mov     %oldVal_47, %alloca_1
		mov     %newVal_48, %oldVal_47
		inc     %newVal_48
		mov     %alloca_1, %newVal_48
		jmp     __L_1
__L_2:
		mov     %alloca_1, 0
__L_5:
		mov     %idVal_49, %alloca_1
		mov     %arrayPtr_51, %alloca_2
		mov     %arrayBase_52, %arrayPtr_51
		add     %arrayBase_52, 8
		mov     %offset_53, 1
		imul    %offset_53, 8
		mov     %elementAddr_54, %arrayBase_52
		add     %elementAddr_54, %offset_53
		mov     %classPtr_55, qword [%elementAddr_54]
		mov     rdi, %classPtr_55
		call    _arraySize
		mov     %res_50, rax
		cmp     %idVal_49, %res_50
		setl    al
		movzx   %res_56, al
		cmp     %res_56, 0
		je      __L_6
__L_7:
		mov     %arrayPtr_58, %alloca_2
		mov     %arrayBase_59, %arrayPtr_58
		add     %arrayBase_59, 8
		mov     %offset_60, 1
		imul    %offset_60, 8
		mov     %elementAddr_61, %arrayBase_59
		add     %elementAddr_61, %offset_60
		mov     %arrayPtr_62, qword [%elementAddr_61]
		mov     %arrayBase_63, %arrayPtr_62
		add     %arrayBase_63, 8
		mov     %idVal_64, %alloca_1
		mov     %offset_65, %idVal_64
		imul    %offset_65, 8
		mov     %elementAddr_66, %arrayBase_63
		add     %elementAddr_66, %offset_65
		mov     %elementVal_67, qword [%elementAddr_66]
		mov     rdi, %elementVal_67
		call    toString
		mov     %res_57, rax
		mov     rdi, %res_57
		call    print
__L_8:
		mov     %idVal_68, %alloca_1
		mov     %oldVal_69, %alloca_1
		mov     %newVal_70, %oldVal_69
		inc     %newVal_70
		mov     %alloca_1, %newVal_70
		jmp     __L_5
__L_6:
		mov     rdi, __str_0
		call    println
		mov     %alloca_1, 0
__L_9:
		mov     %idVal_71, %alloca_1
		mov     %arrayPtr_73, %alloca_2
		mov     %arrayBase_74, %arrayPtr_73
		add     %arrayBase_74, 8
		mov     %offset_75, 2
		imul    %offset_75, 8
		mov     %elementAddr_76, %arrayBase_74
		add     %elementAddr_76, %offset_75
		mov     %classPtr_77, qword [%elementAddr_76]
		mov     rdi, %classPtr_77
		call    _arraySize
		mov     %res_72, rax
		cmp     %idVal_71, %res_72
		setl    al
		movzx   %res_78, al
		cmp     %res_78, 0
		je      __L_10
__L_11:
		mov     %arrayPtr_79, %alloca_2
		mov     %arrayBase_80, %arrayPtr_79
		add     %arrayBase_80, 8
		mov     %offset_81, 2
		imul    %offset_81, 8
		mov     %elementAddr_82, %arrayBase_80
		add     %elementAddr_82, %offset_81
		mov     %arrayPtr_83, qword [%elementAddr_82]
		mov     %arrayBase_84, %arrayPtr_83
		add     %arrayBase_84, 8
		mov     %idVal_85, %alloca_1
		mov     %offset_86, %idVal_85
		imul    %offset_86, 8
		mov     %elementAddr_87, %arrayBase_84
		add     %elementAddr_87, %offset_86
		mov     qword [%elementAddr_87], 0
__L_12:
		mov     %idVal_88, %alloca_1
		mov     %oldVal_89, %alloca_1
		mov     %newVal_90, %oldVal_89
		inc     %newVal_90
		mov     %alloca_1, %newVal_90
		jmp     __L_9
__L_10:
		mov     %alloca_1, 0
__L_13:
		mov     %idVal_91, %alloca_1
		mov     %arrayPtr_93, %alloca_2
		mov     %arrayBase_94, %arrayPtr_93
		add     %arrayBase_94, 8
		mov     %offset_95, 3
		imul    %offset_95, 8
		mov     %elementAddr_96, %arrayBase_94
		add     %elementAddr_96, %offset_95
		mov     %classPtr_97, qword [%elementAddr_96]
		mov     rdi, %classPtr_97
		call    _arraySize
		mov     %res_92, rax
		cmp     %idVal_91, %res_92
		setl    al
		movzx   %res_98, al
		cmp     %res_98, 0
		je      __L_14
__L_15:
		mov     %arrayPtr_100, %alloca_2
		mov     %arrayBase_101, %arrayPtr_100
		add     %arrayBase_101, 8
		mov     %offset_102, 3
		imul    %offset_102, 8
		mov     %elementAddr_103, %arrayBase_101
		add     %elementAddr_103, %offset_102
		mov     %arrayPtr_104, qword [%elementAddr_103]
		mov     %arrayBase_105, %arrayPtr_104
		add     %arrayBase_105, 8
		mov     %idVal_106, %alloca_1
		mov     %offset_107, %idVal_106
		imul    %offset_107, 8
		mov     %elementAddr_108, %arrayBase_105
		add     %elementAddr_108, %offset_107
		mov     %elementVal_109, qword [%elementAddr_108]
		mov     rdi, %elementVal_109
		call    toString
		mov     %res_99, rax
		mov     rdi, %res_99
		call    print
__L_16:
		mov     %idVal_110, %alloca_1
		mov     %oldVal_111, %alloca_1
		mov     %newVal_112, %oldVal_111
		inc     %newVal_112
		mov     %alloca_1, %newVal_112
		jmp     __L_13
__L_14:
		mov     r13, qword [ ]
		mov     r15, qword [ ]
		mov     r12, %local_r12
		mov     rbx, %local_rbx
		mov     r14, %local_r14
		mov     rax, 0
		ret     
