default rel

global _N
global _head
global _startx
global _starty
global _targetx
global _targety
global _x
global _y
global _xlist
global _ylist
global _tail
global _ok
global _now
global _dx
global _dy
global _step
global _i
global _j
global _globalInit
global origin
global check
global addList
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
		mov     %local_r12, r12
		mov     %local_r14, r14
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r13, r13
		mov     %memberLength_1, 12000
		imul    %memberLength_1, 8
		mov     %arrayLength_2, %memberLength_1
		add     %arrayLength_2, 8
		mov     rdi, %arrayLength_2
		call    malloc
		mov     %arrayPtr_0, rax
		mov     qword [%arrayPtr_0], 12000
		mov     qword [rel _xlist], %arrayPtr_0
		mov     %memberLength_4, 12000
		imul    %memberLength_4, 8
		mov     %arrayLength_5, %memberLength_4
		add     %arrayLength_5, 8
		mov     rdi, %arrayLength_5
		call    malloc
		mov     %arrayPtr_3, rax
		mov     qword [%arrayPtr_3], 12000
		mov     qword [rel _ylist], %arrayPtr_3
		mov     %memberLength_7, 8
		imul    %memberLength_7, 8
		mov     %arrayLength_8, %memberLength_7
		add     %arrayLength_8, 8
		mov     rdi, %arrayLength_8
		call    malloc
		mov     %arrayPtr_6, rax
		mov     qword [%arrayPtr_6], 8
		mov     qword [rel _dx], %arrayPtr_6
		mov     %memberLength_10, 9
		imul    %memberLength_10, 8
		mov     %arrayLength_11, %memberLength_10
		add     %arrayLength_11, 8
		mov     rdi, %arrayLength_11
		call    malloc
		mov     %arrayPtr_9, rax
		mov     qword [%arrayPtr_9], 9
		mov     qword [rel _dy], %arrayPtr_9
		mov     r12, %local_r12
		mov     r14, %local_r14
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r13, %local_r13
		ret     

origin:
		mov     %local_r12, r12
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
		mov     r12, %local_r12
		mov     r14, %local_r14
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r13, %local_r13
		ret     

check:
		mov     %local_r12, r12
		mov     %local_r14, r14
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r13, r13
		mov     %argVal_0, rdi
		mov     %alloca_3, %argVal_0
		mov     %idVal_3, %alloca_3
		mov     %idVal_4, qword [rel _N]
		cmp     %idVal_3, %idVal_4
		setl    al
		movzx   %res_5, al
		cmp     %res_5, 0
		je      __L_9
__L_10:
		mov     %idVal_6, %alloca_3
		cmp     %idVal_6, 0
		setge   al
		movzx   %res_7, al
		cmp     %res_7, 0
		je      __L_9
__L_11:
		mov     %alloca_2, 1
		jmp     __L_12
__L_9:
		mov     %alloca_2, 0
__L_12:
		mov     %boolVal_8, %alloca_2
		mov     r12, %local_r12
		mov     r14, %local_r14
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r13, %local_r13
		mov     rax, %boolVal_8
		ret     

addList:
		mov     %local_r12, r12
		mov     %local_r14, r14
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
		mov     r12, %local_r12
		mov     r14, %local_r14
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r13, %local_r13
		ret     

main:
		mov     %local_r12, r12
		mov     %local_r14, r14
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r13, r13
		call    _globalInit
		mov     rdi, 106
		call    origin
		call    getInt
		mov     %res_0, rax
		mov     qword [rel _N], %res_0
		mov     %idVal_1, qword [rel _N]
		mov     %res_2, %idVal_1
		sub     %res_2, 1
		mov     qword [rel _targety], %res_2
		mov     %idVal_3, qword [rel _targety]
		mov     qword [rel _targetx], %idVal_3
		mov     qword [rel _i], 0
__L_20:
		mov     %idVal_4, qword [rel _i]
		mov     %idVal_5, qword [rel _N]
		cmp     %idVal_4, %idVal_5
		setl    al
		movzx   %res_6, al
		cmp     %res_6, 0
		je      __L_21
__L_22:
		mov     qword [rel _j], 0
__L_23:
		mov     %idVal_7, qword [rel _j]
		mov     %idVal_8, qword [rel _N]
		cmp     %idVal_7, %idVal_8
		setl    al
		movzx   %res_9, al
		cmp     %res_9, 0
		je      __L_24
__L_25:
		mov     %res_10, 1
		neg     %res_10
		mov     %arrayPtr_11, qword [rel _step]
		mov     %arrayBase_12, %arrayPtr_11
		add     %arrayBase_12, 8
		mov     %idVal_13, qword [rel _i]
		mov     %offset_14, %idVal_13
		imul    %offset_14, 8
		mov     %elementAddr_15, %arrayBase_12
		add     %elementAddr_15, %offset_14
		mov     %arrayPtr_16, qword [%elementAddr_15]
		mov     %arrayBase_17, %arrayPtr_16
		add     %arrayBase_17, 8
		mov     %idVal_18, qword [rel _j]
		mov     %offset_19, %idVal_18
		imul    %offset_19, 8
		mov     %elementAddr_20, %arrayBase_17
		add     %elementAddr_20, %offset_19
		mov     qword [%elementAddr_20], %res_10
__L_26:
		mov     %idVal_21, qword [rel _j]
		mov     %oldVal_22, qword [rel _j]
		mov     %newVal_23, %oldVal_22
		inc     %newVal_23
		mov     qword [rel _j], %newVal_23
		jmp     __L_23
__L_24:
__L_27:
		mov     %idVal_24, qword [rel _i]
		mov     %oldVal_25, qword [rel _i]
		mov     %newVal_26, %oldVal_25
		inc     %newVal_26
		mov     qword [rel _i], %newVal_26
		jmp     __L_20
__L_21:
		mov     %res_27, 2
		neg     %res_27
		mov     %arrayPtr_28, qword [rel _dx]
		mov     %arrayBase_29, %arrayPtr_28
		add     %arrayBase_29, 8
		mov     %offset_30, 0
		imul    %offset_30, 8
		mov     %elementAddr_31, %arrayBase_29
		add     %elementAddr_31, %offset_30
		mov     qword [%elementAddr_31], %res_27
		mov     %res_32, 1
		neg     %res_32
		mov     %arrayPtr_33, qword [rel _dy]
		mov     %arrayBase_34, %arrayPtr_33
		add     %arrayBase_34, 8
		mov     %offset_35, 0
		imul    %offset_35, 8
		mov     %elementAddr_36, %arrayBase_34
		add     %elementAddr_36, %offset_35
		mov     qword [%elementAddr_36], %res_32
		mov     %res_37, 2
		neg     %res_37
		mov     %arrayPtr_38, qword [rel _dx]
		mov     %arrayBase_39, %arrayPtr_38
		add     %arrayBase_39, 8
		mov     %offset_40, 1
		imul    %offset_40, 8
		mov     %elementAddr_41, %arrayBase_39
		add     %elementAddr_41, %offset_40
		mov     qword [%elementAddr_41], %res_37
		mov     %arrayPtr_42, qword [rel _dy]
		mov     %arrayBase_43, %arrayPtr_42
		add     %arrayBase_43, 8
		mov     %offset_44, 1
		imul    %offset_44, 8
		mov     %elementAddr_45, %arrayBase_43
		add     %elementAddr_45, %offset_44
		mov     qword [%elementAddr_45], 1
		mov     %arrayPtr_46, qword [rel _dx]
		mov     %arrayBase_47, %arrayPtr_46
		add     %arrayBase_47, 8
		mov     %offset_48, 2
		imul    %offset_48, 8
		mov     %elementAddr_49, %arrayBase_47
		add     %elementAddr_49, %offset_48
		mov     qword [%elementAddr_49], 2
		mov     %res_50, 1
		neg     %res_50
		mov     %arrayPtr_51, qword [rel _dy]
		mov     %arrayBase_52, %arrayPtr_51
		add     %arrayBase_52, 8
		mov     %offset_53, 2
		imul    %offset_53, 8
		mov     %elementAddr_54, %arrayBase_52
		add     %elementAddr_54, %offset_53
		mov     qword [%elementAddr_54], %res_50
		mov     %arrayPtr_55, qword [rel _dx]
		mov     %arrayBase_56, %arrayPtr_55
		add     %arrayBase_56, 8
		mov     %offset_57, 3
		imul    %offset_57, 8
		mov     %elementAddr_58, %arrayBase_56
		add     %elementAddr_58, %offset_57
		mov     qword [%elementAddr_58], 2
		mov     %arrayPtr_59, qword [rel _dy]
		mov     %arrayBase_60, %arrayPtr_59
		add     %arrayBase_60, 8
		mov     %offset_61, 3
		imul    %offset_61, 8
		mov     %elementAddr_62, %arrayBase_60
		add     %elementAddr_62, %offset_61
		mov     qword [%elementAddr_62], 1
		mov     %res_63, 1
		neg     %res_63
		mov     %arrayPtr_64, qword [rel _dx]
		mov     %arrayBase_65, %arrayPtr_64
		add     %arrayBase_65, 8
		mov     %offset_66, 4
		imul    %offset_66, 8
		mov     %elementAddr_67, %arrayBase_65
		add     %elementAddr_67, %offset_66
		mov     qword [%elementAddr_67], %res_63
		mov     %res_68, 2
		neg     %res_68
		mov     %arrayPtr_69, qword [rel _dy]
		mov     %arrayBase_70, %arrayPtr_69
		add     %arrayBase_70, 8
		mov     %offset_71, 4
		imul    %offset_71, 8
		mov     %elementAddr_72, %arrayBase_70
		add     %elementAddr_72, %offset_71
		mov     qword [%elementAddr_72], %res_68
		mov     %res_73, 1
		neg     %res_73
		mov     %arrayPtr_74, qword [rel _dx]
		mov     %arrayBase_75, %arrayPtr_74
		add     %arrayBase_75, 8
		mov     %offset_76, 5
		imul    %offset_76, 8
		mov     %elementAddr_77, %arrayBase_75
		add     %elementAddr_77, %offset_76
		mov     qword [%elementAddr_77], %res_73
		mov     %arrayPtr_78, qword [rel _dy]
		mov     %arrayBase_79, %arrayPtr_78
		add     %arrayBase_79, 8
		mov     %offset_80, 5
		imul    %offset_80, 8
		mov     %elementAddr_81, %arrayBase_79
		add     %elementAddr_81, %offset_80
		mov     qword [%elementAddr_81], 2
		mov     %arrayPtr_82, qword [rel _dx]
		mov     %arrayBase_83, %arrayPtr_82
		add     %arrayBase_83, 8
		mov     %offset_84, 6
		imul    %offset_84, 8
		mov     %elementAddr_85, %arrayBase_83
		add     %elementAddr_85, %offset_84
		mov     qword [%elementAddr_85], 1
		mov     %res_86, 2
		neg     %res_86
		mov     %arrayPtr_87, qword [rel _dy]
		mov     %arrayBase_88, %arrayPtr_87
		add     %arrayBase_88, 8
		mov     %offset_89, 6
		imul    %offset_89, 8
		mov     %elementAddr_90, %arrayBase_88
		add     %elementAddr_90, %offset_89
		mov     qword [%elementAddr_90], %res_86
		mov     %arrayPtr_91, qword [rel _dx]
		mov     %arrayBase_92, %arrayPtr_91
		add     %arrayBase_92, 8
		mov     %offset_93, 7
		imul    %offset_93, 8
		mov     %elementAddr_94, %arrayBase_92
		add     %elementAddr_94, %offset_93
		mov     qword [%elementAddr_94], 1
		mov     %arrayPtr_95, qword [rel _dy]
		mov     %arrayBase_96, %arrayPtr_95
		add     %arrayBase_96, 8
		mov     %offset_97, 7
		imul    %offset_97, 8
		mov     %elementAddr_98, %arrayBase_96
		add     %elementAddr_98, %offset_97
		mov     qword [%elementAddr_98], 2
__L_28:
		mov     %idVal_99, qword [rel _head]
		mov     %idVal_100, qword [rel _tail]
		cmp     %idVal_99, %idVal_100
		setle   al
		movzx   %res_101, al
		cmp     %res_101, 0
		je      __L_29
__L_30:
		mov     %arrayPtr_102, qword [rel _xlist]
		mov     %arrayBase_103, %arrayPtr_102
		add     %arrayBase_103, 8
		mov     %idVal_104, qword [rel _head]
		mov     %offset_105, %idVal_104
		imul    %offset_105, 8
		mov     %elementAddr_106, %arrayBase_103
		add     %elementAddr_106, %offset_105
		mov     %elementVal_107, qword [%elementAddr_106]
		mov     qword [rel _x], %elementVal_107
		mov     %arrayPtr_108, qword [rel _ylist]
		mov     %arrayBase_109, %arrayPtr_108
		add     %arrayBase_109, 8
		mov     %idVal_110, qword [rel _head]
		mov     %offset_111, %idVal_110
		imul    %offset_111, 8
		mov     %elementAddr_112, %arrayBase_109
		add     %elementAddr_112, %offset_111
		mov     %elementVal_113, qword [%elementAddr_112]
		mov     qword [rel _y], %elementVal_113
		mov     %arrayPtr_114, qword [rel _step]
		mov     %arrayBase_115, %arrayPtr_114
		add     %arrayBase_115, 8
		mov     %idVal_116, qword [rel _x]
		mov     %offset_117, %idVal_116
		imul    %offset_117, 8
		mov     %elementAddr_118, %arrayBase_115
		add     %elementAddr_118, %offset_117
		mov     %arrayPtr_119, qword [%elementAddr_118]
		mov     %arrayBase_120, %arrayPtr_119
		add     %arrayBase_120, 8
		mov     %idVal_121, qword [rel _y]
		mov     %offset_122, %idVal_121
		imul    %offset_122, 8
		mov     %elementAddr_123, %arrayBase_120
		add     %elementAddr_123, %offset_122
		mov     %elementVal_124, qword [%elementAddr_123]
		mov     qword [rel _now], %elementVal_124
		mov     qword [rel _j], 0
__L_31:
		mov     %idVal_125, qword [rel _j]
		cmp     %idVal_125, 8
		setl    al
		movzx   %res_126, al
		cmp     %res_126, 0
		je      __L_32
__L_33:
		mov     %idVal_127, qword [rel _x]
		mov     %arrayPtr_128, qword [rel _dx]
		mov     %arrayBase_129, %arrayPtr_128
		add     %arrayBase_129, 8
		mov     %idVal_130, qword [rel _j]
		mov     %offset_131, %idVal_130
		imul    %offset_131, 8
		mov     %elementAddr_132, %arrayBase_129
		add     %elementAddr_132, %offset_131
		mov     %elementVal_133, qword [%elementAddr_132]
		mov     %res_134, %idVal_127
		add     %res_134, %elementVal_133
		mov     %idVal_135, qword [rel _y]
		mov     %arrayPtr_136, qword [rel _dy]
		mov     %arrayBase_137, %arrayPtr_136
		add     %arrayBase_137, 8
		mov     %idVal_138, qword [rel _j]
		mov     %offset_139, %idVal_138
		imul    %offset_139, 8
		mov     %elementAddr_140, %arrayBase_137
		add     %elementAddr_140, %offset_139
		mov     %elementVal_141, qword [%elementAddr_140]
		mov     %res_142, %idVal_135
		add     %res_142, %elementVal_141
		mov     rdi, %res_134
		mov     rsi, %res_142
		call    addList
__L_34:
		mov     %idVal_143, qword [rel _j]
		mov     %oldVal_144, qword [rel _j]
		mov     %newVal_145, %oldVal_144
		inc     %newVal_145
		mov     qword [rel _j], %newVal_145
		jmp     __L_31
__L_32:
		mov     %idVal_146, qword [rel _ok]
		cmp     %idVal_146, 1
		sete    al
		movzx   %res_147, al
		cmp     %res_147, 0
		je      __L_35
__L_36:
		jmp     __L_29
__L_35:
		mov     %idVal_148, qword [rel _head]
		mov     %oldVal_149, qword [rel _head]
		mov     %newVal_150, %oldVal_149
		inc     %newVal_150
		mov     qword [rel _head], %newVal_150
		jmp     __L_28
__L_29:
		mov     %idVal_151, qword [rel _ok]
		cmp     %idVal_151, 1
		sete    al
		movzx   %res_152, al
		cmp     %res_152, 0
		je      __L_37
__L_38:
		mov     %arrayPtr_154, qword [rel _step]
		mov     %arrayBase_155, %arrayPtr_154
		add     %arrayBase_155, 8
		mov     %idVal_156, qword [rel _targetx]
		mov     %offset_157, %idVal_156
		imul    %offset_157, 8
		mov     %elementAddr_158, %arrayBase_155
		add     %elementAddr_158, %offset_157
		mov     %arrayPtr_159, qword [%elementAddr_158]
		mov     %arrayBase_160, %arrayPtr_159
		add     %arrayBase_160, 8
		mov     %idVal_161, qword [rel _targety]
		mov     %offset_162, %idVal_161
		imul    %offset_162, 8
		mov     %elementAddr_163, %arrayBase_160
		add     %elementAddr_163, %offset_162
		mov     %elementVal_164, qword [%elementAddr_163]
		mov     rdi, %elementVal_164
		call    toString
		mov     %res_153, rax
		mov     rdi, %res_153
		call    println
		jmp     __L_39
__L_37:
		mov     rdi, __str_0
		call    print
__L_39:
		mov     r12, %local_r12
		mov     r14, %local_r14
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r13, %local_r13
		mov     rax, 0
		ret     

SECTION .data

__str_0:
		dq      13
		db      6EH, 6FH, 20H, 73H, 6FH, 6CH, 75H, 74H, 69H, 6FH, 6EH, 21H, 0AH, 00H

SECTION .bss

_N:
		resb    8

_head:
		resb    8

_startx:
		resb    8

_starty:
		resb    8

_targetx:
		resb    8

_targety:
		resb    8

_x:
		resb    8

_y:
		resb    8

_xlist:
		resb    8

_ylist:
		resb    8

_tail:
		resb    8

_ok:
		resb    8

_now:
		resb    8

_dx:
		resb    8

_dy:
		resb    8

_step:
		resb    8

_i:
		resb    8

_j:
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


