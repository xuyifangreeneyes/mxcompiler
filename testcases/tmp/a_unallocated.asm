default rel

global __globalInit
global __vector_init
global __vector_getDim
global __vector_dot
global __vector_scalarInPlaceMultiply
global __vector_add
global __vector_set
global __vector_tostring
global __vector_copy
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
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_r12, r12
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		ret     

__vector_init:
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_r12, r12
		mov     %thisVal_0, rdi
		mov     %argVal_2, rsi
		cmp     %argVal_2, 0
		jne     __L_1
__L_2:
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		ret     
__L_1:
		mov     rdi, %argVal_2
		call    __arraySize
		mov     %res_6, rax
		mov     %memberLength_9, %res_6
		shl     %memberLength_9, 3
		mov     %arrayLength_10, %memberLength_9
		add     %arrayLength_10, 8
		mov     rdi, %arrayLength_10
		call    malloc
		mov     %arrayPtr_8, rax
		mov     qword [%arrayPtr_8], %res_6
		mov     %arrayBase_11, %arrayPtr_8
		add     %arrayBase_11, 8
		mov     %memberAddr_13, %thisVal_0
		add     %memberAddr_13, 0
		mov     qword [%memberAddr_13], %arrayBase_11
		mov     rdi, %argVal_2
		call    __arraySize
		mov     %res_16, rax
		mov     %varDef_36, 0
__L_3:
		cmp     %varDef_36, %res_16
		jge     __L_4
__L_5:
		mov     %offset_21, %varDef_36
		shl     %offset_21, 3
		mov     %elementAddr_22, %argVal_2
		add     %elementAddr_22, %offset_21
		mov     %elementVal_23, qword [%elementAddr_22]
		mov     %memberAddr_25, %thisVal_0
		add     %memberAddr_25, 0
		mov     %arrayBase_26, qword [%memberAddr_25]
		mov     %elementAddr_29, %arrayBase_26
		add     %elementAddr_29, %offset_21
		mov     qword [%elementAddr_29], %elementVal_23
		mov     %newVal_32, %varDef_36
		inc     %newVal_32
		mov     %varDef_36, %newVal_32
		jmp     __L_3
__L_4:
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		ret     

__vector_getDim:
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_r12, r12
		mov     %thisVal_0, rdi
		mov     %memberAddr_3, %thisVal_0
		add     %memberAddr_3, 0
		mov     %idVal_4, qword [%memberAddr_3]
		cmp     %idVal_4, 0
		jne     __L_6
__L_7:
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		mov     rax, 0
		ret     
__L_6:
		mov     %memberAddr_8, %thisVal_0
		add     %memberAddr_8, 0
		mov     %classPtr_9, qword [%memberAddr_8]
		mov     rdi, %classPtr_9
		call    __arraySize
		mov     %res_6, rax
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		mov     rax, %res_6
		ret     

__vector_dot:
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_r12, r12
		mov     %thisVal_0, rdi
		mov     %argVal_2, rsi
		mov     %varDef_43, 0
		mov     %varDef_44, 0
__L_8:
		mov     %cmemberAddr_32, %thisVal_0
		add     %cmemberAddr_32, 0
		mov     %cidVal_33, qword [%cmemberAddr_32]
		cmp     %cidVal_33, 0
		jne     __L_9
__L_10:
		mov     %varDef_50, 0
		jmp     __L_11
__L_9:
		mov     %cmemberAddr_36, %thisVal_0
		add     %cmemberAddr_36, 0
		mov     %cclassPtr_37, qword [%cmemberAddr_36]
		mov     rdi, %cclassPtr_37
		call    __arraySize
		mov     %cres_38, rax
		mov     %varDef_50, %cres_38
__L_11:
		cmp     %varDef_43, %varDef_50
		jge     __L_12
__L_13:
		mov     %memberAddr_11, %thisVal_0
		add     %memberAddr_11, 0
		mov     %arrayBase_12, qword [%memberAddr_11]
		mov     %offset_14, %varDef_43
		shl     %offset_14, 3
		mov     %elementAddr_15, %arrayBase_12
		add     %elementAddr_15, %offset_14
		mov     %elementVal_16, qword [%elementAddr_15]
		mov     %memberAddr_18, %argVal_2
		add     %memberAddr_18, 0
		mov     %arrayBase_19, qword [%memberAddr_18]
		mov     %elementAddr_22, %arrayBase_19
		add     %elementAddr_22, %offset_14
		mov     %elementVal_23, qword [%elementAddr_22]
		mov     %res_24, %elementVal_16
		imul    %res_24, %elementVal_23
		mov     %newVal_27, %varDef_43
		inc     %newVal_27
		mov     %varDef_43, %newVal_27
		mov     %varDef_44, %res_24
		jmp     __L_8
__L_12:
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		mov     rax, %varDef_44
		ret     

__vector_scalarInPlaceMultiply:
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_r12, r12
		mov     %thisVal_0, rdi
		mov     %argVal_2, rsi
		mov     %memberAddr_5, %thisVal_0
		add     %memberAddr_5, 0
		mov     %idVal_6, qword [%memberAddr_5]
		cmp     %idVal_6, 0
		jne     __L_14
__L_15:
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		mov     rax, 0
		ret     
__L_14:
		mov     %varDef_45, 0
__L_16:
		mov     %cmemberAddr_35, %thisVal_0
		add     %cmemberAddr_35, 0
		mov     %cidVal_36, qword [%cmemberAddr_35]
		cmp     %cidVal_36, 0
		jne     __L_17
__L_18:
		mov     %varDef_51, 0
		jmp     __L_19
__L_17:
		mov     %cmemberAddr_39, %thisVal_0
		add     %cmemberAddr_39, 0
		mov     %cclassPtr_40, qword [%cmemberAddr_39]
		mov     rdi, %cclassPtr_40
		call    __arraySize
		mov     %cres_41, rax
		mov     %varDef_51, %cres_41
__L_19:
		cmp     %varDef_45, %varDef_51
		jge     __L_20
__L_21:
		mov     %memberAddr_15, %thisVal_0
		add     %memberAddr_15, 0
		mov     %arrayBase_16, qword [%memberAddr_15]
		mov     %offset_18, %varDef_45
		shl     %offset_18, 3
		mov     %elementAddr_19, %arrayBase_16
		add     %elementAddr_19, %offset_18
		mov     %elementVal_20, qword [%elementAddr_19]
		mov     %res_21, %argVal_2
		imul    %res_21, %elementVal_20
		mov     %arrayBase_24, qword [%memberAddr_15]
		mov     %elementAddr_27, %arrayBase_24
		add     %elementAddr_27, %offset_18
		mov     qword [%elementAddr_27], %res_21
		mov     %newVal_30, %varDef_45
		inc     %newVal_30
		mov     %varDef_45, %newVal_30
		jmp     __L_16
__L_20:
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		mov     rax, %thisVal_0
		ret     

__vector_add:
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_r12, r12
		mov     %thisVal_0, rdi
		mov     %argVal_2, rsi
__L_22:
		mov     %cmemberAddr_55, %thisVal_0
		add     %cmemberAddr_55, 0
		mov     %cidVal_56, qword [%cmemberAddr_55]
		cmp     %cidVal_56, 0
		jne     __L_23
__L_24:
		mov     %varDef_107, 0
		jmp     __L_25
__L_23:
		mov     %cmemberAddr_59, %thisVal_0
		add     %cmemberAddr_59, 0
		mov     %cclassPtr_60, qword [%cmemberAddr_59]
		mov     rdi, %cclassPtr_60
		call    __arraySize
		mov     %cres_61, rax
		mov     %varDef_107, %cres_61
__L_25:
		mov     %cmemberAddr_65, %argVal_2
		add     %cmemberAddr_65, 0
		mov     %cidVal_66, qword [%cmemberAddr_65]
		cmp     %cidVal_66, 0
		jne     __L_26
__L_27:
		mov     %varDef_111, 0
		jmp     __L_28
__L_26:
		mov     %cmemberAddr_69, %argVal_2
		add     %cmemberAddr_69, 0
		mov     %cclassPtr_70, qword [%cmemberAddr_69]
		mov     rdi, %cclassPtr_70
		call    __arraySize
		mov     %cres_71, rax
		mov     %varDef_111, %cres_71
__L_28:
		cmp     %varDef_107, %varDef_111
		jne     __L_29
__L_30:
		mov     %cmemberAddr_75, %thisVal_0
		add     %cmemberAddr_75, 0
		mov     %cidVal_76, qword [%cmemberAddr_75]
		cmp     %cidVal_76, 0
		jne     __L_31
__L_32:
		mov     %varDef_115, 0
		jmp     __L_33
__L_31:
		mov     %cmemberAddr_79, %thisVal_0
		add     %cmemberAddr_79, 0
		mov     %cclassPtr_80, qword [%cmemberAddr_79]
		mov     rdi, %cclassPtr_80
		call    __arraySize
		mov     %cres_81, rax
		mov     %varDef_115, %cres_81
__L_33:
		cmp     %varDef_115, 0
		jne     __L_34
__L_29:
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		mov     rax, 0
		ret     
__L_34:
		mov     rdi, 8
		call    malloc
		mov     %classPtr_13, rax
		mov     %cmemberAddr_85, %thisVal_0
		add     %cmemberAddr_85, 0
		mov     %cidVal_86, qword [%cmemberAddr_85]
		cmp     %cidVal_86, 0
		jne     __L_35
__L_36:
		mov     %varDef_120, 0
		jmp     __L_37
__L_35:
		mov     %cmemberAddr_89, %thisVal_0
		add     %cmemberAddr_89, 0
		mov     %cclassPtr_90, qword [%cmemberAddr_89]
		mov     rdi, %cclassPtr_90
		call    __arraySize
		mov     %cres_91, rax
		mov     %varDef_120, %cres_91
__L_37:
		mov     %memberLength_18, %varDef_120
		shl     %memberLength_18, 3
		mov     %arrayLength_19, %memberLength_18
		add     %arrayLength_19, 8
		mov     rdi, %arrayLength_19
		call    malloc
		mov     %arrayPtr_17, rax
		mov     qword [%arrayPtr_17], %varDef_120
		mov     %arrayBase_20, %arrayPtr_17
		add     %arrayBase_20, 8
		mov     %memberAddr_22, %classPtr_13
		add     %memberAddr_22, 0
		mov     qword [%memberAddr_22], %arrayBase_20
		mov     %varDef_122, 0
__L_38:
		mov     %cmemberAddr_95, %thisVal_0
		add     %cmemberAddr_95, 0
		mov     %cidVal_96, qword [%cmemberAddr_95]
		cmp     %cidVal_96, 0
		jne     __L_39
__L_40:
		mov     %varDef_128, 0
		jmp     __L_41
__L_39:
		mov     %cmemberAddr_99, %thisVal_0
		add     %cmemberAddr_99, 0
		mov     %cclassPtr_100, qword [%cmemberAddr_99]
		mov     rdi, %cclassPtr_100
		call    __arraySize
		mov     %cres_101, rax
		mov     %varDef_128, %cres_101
__L_41:
		cmp     %varDef_122, %varDef_128
		jge     __L_42
__L_43:
		mov     %memberAddr_28, %thisVal_0
		add     %memberAddr_28, 0
		mov     %arrayBase_29, qword [%memberAddr_28]
		mov     %offset_31, %varDef_122
		shl     %offset_31, 3
		mov     %elementAddr_32, %arrayBase_29
		add     %elementAddr_32, %offset_31
		mov     %elementVal_33, qword [%elementAddr_32]
		mov     %memberAddr_35, %argVal_2
		add     %memberAddr_35, 0
		mov     %arrayBase_36, qword [%memberAddr_35]
		mov     %elementAddr_39, %arrayBase_36
		add     %elementAddr_39, %offset_31
		mov     %elementVal_40, qword [%elementAddr_39]
		mov     %res_41, %elementVal_33
		add     %res_41, %elementVal_40
		mov     %memberAddr_43, %classPtr_13
		add     %memberAddr_43, 0
		mov     %arrayBase_44, qword [%memberAddr_43]
		mov     %elementAddr_47, %arrayBase_44
		add     %elementAddr_47, %offset_31
		mov     qword [%elementAddr_47], %res_41
		mov     %newVal_50, %varDef_122
		inc     %newVal_50
		mov     %varDef_122, %newVal_50
		jmp     __L_38
__L_42:
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		mov     rax, %classPtr_13
		ret     

__vector_set:
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_r12, r12
		mov     %thisVal_0, rdi
		mov     %argVal_2, rsi
		mov     %argVal_4, rdx
__L_44:
		mov     %cmemberAddr_20, %thisVal_0
		add     %cmemberAddr_20, 0
		mov     %cidVal_21, qword [%cmemberAddr_20]
		cmp     %cidVal_21, 0
		jne     __L_45
__L_46:
		mov     %varDef_33, 0
		jmp     __L_47
__L_45:
		mov     %cmemberAddr_24, %thisVal_0
		add     %cmemberAddr_24, 0
		mov     %cclassPtr_25, qword [%cmemberAddr_24]
		mov     rdi, %cclassPtr_25
		call    __arraySize
		mov     %cres_26, rax
		mov     %varDef_33, %cres_26
__L_47:
		cmp     %varDef_33, %argVal_2
		jge     __L_48
__L_49:
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		mov     rax, 0
		ret     
__L_48:
		mov     %memberAddr_12, %thisVal_0
		add     %memberAddr_12, 0
		mov     %arrayBase_13, qword [%memberAddr_12]
		mov     %offset_15, %argVal_2
		shl     %offset_15, 3
		mov     %elementAddr_16, %arrayBase_13
		add     %elementAddr_16, %offset_15
		mov     qword [%elementAddr_16], %argVal_4
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		mov     rax, 1
		ret     

__vector_tostring:
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_r12, r12
		mov     %thisVal_0, rdi
__L_50:
		mov     %cmemberAddr_40, %thisVal_0
		add     %cmemberAddr_40, 0
		mov     %cidVal_41, qword [%cmemberAddr_40]
		cmp     %cidVal_41, 0
		jne     __L_51
__L_52:
		mov     %varDef_62, 0
		jmp     __L_53
__L_51:
		mov     %cmemberAddr_44, %thisVal_0
		add     %cmemberAddr_44, 0
		mov     %cclassPtr_45, qword [%cmemberAddr_44]
		mov     rdi, %cclassPtr_45
		call    __arraySize
		mov     %cres_46, rax
		mov     %varDef_62, %cres_46
__L_53:
		cmp     %varDef_62, 0
		jg      __L_54
__L_55:
		mov     %varDef_64, __str_0
		jmp     __L_56
__L_54:
		mov     %memberAddr_9, %thisVal_0
		add     %memberAddr_9, 0
		mov     %arrayBase_10, qword [%memberAddr_9]
		mov     %elementAddr_12, %arrayBase_10
		add     %elementAddr_12, 0
		mov     %elementVal_13, qword [%elementAddr_12]
		mov     rdi, %elementVal_13
		call    toString
		mov     %res_7, rax
		mov     rdi, __str_0
		mov     rsi, %res_7
		call    __stringAdd
		mov     %res_14, rax
		mov     %varDef_64, %res_14
__L_56:
		mov     %varDef_67, 1
		mov     %varDef_66, %varDef_64
__L_57:
		mov     %cmemberAddr_50, %thisVal_0
		add     %cmemberAddr_50, 0
		mov     %cidVal_51, qword [%cmemberAddr_50]
		cmp     %cidVal_51, 0
		jne     __L_58
__L_59:
		mov     %varDef_73, 0
		jmp     __L_60
__L_58:
		mov     %cmemberAddr_54, %thisVal_0
		add     %cmemberAddr_54, 0
		mov     %cclassPtr_55, qword [%cmemberAddr_54]
		mov     rdi, %cclassPtr_55
		call    __arraySize
		mov     %cres_56, rax
		mov     %varDef_73, %cres_56
__L_60:
		cmp     %varDef_67, %varDef_73
		jge     __L_61
__L_62:
		mov     rdi, %varDef_66
		mov     rsi, __str_1
		call    __stringAdd
		mov     %res_21, rax
		mov     %memberAddr_24, %thisVal_0
		add     %memberAddr_24, 0
		mov     %arrayBase_25, qword [%memberAddr_24]
		mov     %offset_27, %varDef_67
		shl     %offset_27, 3
		mov     %elementAddr_28, %arrayBase_25
		add     %elementAddr_28, %offset_27
		mov     %elementVal_29, qword [%elementAddr_28]
		mov     rdi, %elementVal_29
		call    toString
		mov     %res_22, rax
		mov     rdi, %res_21
		mov     rsi, %res_22
		call    __stringAdd
		mov     %res_30, rax
		mov     %newVal_33, %varDef_67
		inc     %newVal_33
		mov     %varDef_66, %res_30
		mov     %varDef_67, %newVal_33
		jmp     __L_57
__L_61:
		mov     rdi, %varDef_66
		mov     rsi, __str_2
		call    __stringAdd
		mov     %res_35, rax
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		mov     rax, %res_35
		ret     

__vector_copy:
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_r12, r12
		mov     %thisVal_0, rdi
		mov     %argVal_2, rsi
		cmp     %argVal_2, 0
		jne     __L_63
__L_64:
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		mov     rax, 0
		ret     
__L_63:
		mov     %cmemberAddr_43, %argVal_2
		add     %cmemberAddr_43, 0
		mov     %cidVal_44, qword [%cmemberAddr_43]
		cmp     %cidVal_44, 0
		jne     __L_65
__L_66:
		mov     %varDef_75, 0
		jmp     __L_67
__L_65:
		mov     %cmemberAddr_47, %argVal_2
		add     %cmemberAddr_47, 0
		mov     %cclassPtr_48, qword [%cmemberAddr_47]
		mov     rdi, %cclassPtr_48
		call    __arraySize
		mov     %cres_49, rax
		mov     %varDef_75, %cres_49
__L_67:
		cmp     %varDef_75, 0
		jne     __L_68
__L_69:
		mov     %memberAddr_10, %thisVal_0
		add     %memberAddr_10, 0
		mov     qword [%memberAddr_10], 0
		jmp     __L_70
__L_68:
		mov     %cmemberAddr_53, %argVal_2
		add     %cmemberAddr_53, 0
		mov     %cidVal_54, qword [%cmemberAddr_53]
		cmp     %cidVal_54, 0
		jne     __L_71
__L_72:
		mov     %varDef_79, 0
		jmp     __L_73
__L_71:
		mov     %cmemberAddr_57, %argVal_2
		add     %cmemberAddr_57, 0
		mov     %cclassPtr_58, qword [%cmemberAddr_57]
		mov     rdi, %cclassPtr_58
		call    __arraySize
		mov     %cres_59, rax
		mov     %varDef_79, %cres_59
__L_73:
		mov     %memberLength_14, %varDef_79
		shl     %memberLength_14, 3
		mov     %arrayLength_15, %memberLength_14
		add     %arrayLength_15, 8
		mov     rdi, %arrayLength_15
		call    malloc
		mov     %arrayPtr_13, rax
		mov     qword [%arrayPtr_13], %varDef_79
		mov     %arrayBase_16, %arrayPtr_13
		add     %arrayBase_16, 8
		mov     %memberAddr_18, %thisVal_0
		add     %memberAddr_18, 0
		mov     qword [%memberAddr_18], %arrayBase_16
		mov     %varDef_81, 0
__L_74:
		mov     %cmemberAddr_63, %thisVal_0
		add     %cmemberAddr_63, 0
		mov     %cidVal_64, qword [%cmemberAddr_63]
		cmp     %cidVal_64, 0
		jne     __L_75
__L_76:
		mov     %varDef_87, 0
		jmp     __L_77
__L_75:
		mov     %cmemberAddr_67, %thisVal_0
		add     %cmemberAddr_67, 0
		mov     %cclassPtr_68, qword [%cmemberAddr_67]
		mov     rdi, %cclassPtr_68
		call    __arraySize
		mov     %cres_69, rax
		mov     %varDef_87, %cres_69
__L_77:
		cmp     %varDef_81, %varDef_87
		jge     __L_70
__L_78:
		mov     %memberAddr_25, %argVal_2
		add     %memberAddr_25, 0
		mov     %arrayBase_26, qword [%memberAddr_25]
		mov     %offset_28, %varDef_81
		shl     %offset_28, 3
		mov     %elementAddr_29, %arrayBase_26
		add     %elementAddr_29, %offset_28
		mov     %elementVal_30, qword [%elementAddr_29]
		mov     %memberAddr_32, %thisVal_0
		add     %memberAddr_32, 0
		mov     %arrayBase_33, qword [%memberAddr_32]
		mov     %elementAddr_36, %arrayBase_33
		add     %elementAddr_36, %offset_28
		mov     qword [%elementAddr_36], %elementVal_30
		mov     %newVal_39, %varDef_81
		inc     %newVal_39
		mov     %varDef_81, %newVal_39
		jmp     __L_74
__L_70:
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		mov     rax, 1
		ret     

main:
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_r12, r12
		call    __globalInit
		mov     rdi, 8
		call    malloc
		mov     %classPtr_1, rax
		mov     rdi, 88
		call    malloc
		mov     %arrayPtr_3, rax
		mov     qword [%arrayPtr_3], 10
		mov     %arrayBase_6, %arrayPtr_3
		add     %arrayBase_6, 8
		mov     %varDef_70, 0
__L_79:
		cmp     %varDef_70, 10
		jge     __L_80
__L_81:
		mov     %res_11, 9
		sub     %res_11, %varDef_70
		mov     %offset_14, %varDef_70
		shl     %offset_14, 3
		mov     %elementAddr_15, %arrayBase_6
		add     %elementAddr_15, %offset_14
		mov     qword [%elementAddr_15], %res_11
		mov     %newVal_18, %varDef_70
		inc     %newVal_18
		mov     %varDef_70, %newVal_18
		jmp     __L_79
__L_80:
		mov     rdi, %classPtr_1
		mov     rsi, %arrayBase_6
		call    __vector_init
		mov     rdi, __str_3
		call    print
		mov     rdi, %classPtr_1
		call    __vector_tostring
		mov     %res_21, rax
		mov     rdi, %res_21
		call    println
		mov     rdi, 8
		call    malloc
		mov     %classPtr_24, rax
		mov     rdi, %classPtr_24
		mov     rsi, %classPtr_1
		call    __vector_copy
		mov     %res_25, rax
		mov     %cmemberAddr_60, %classPtr_24
		add     %cmemberAddr_60, 0
		mov     %cidVal_61, qword [%cmemberAddr_60]
		cmp     %cidVal_61, 0
		jne     __L_82
__L_83:
		mov     %varDef_79, 0
		jmp     __L_84
__L_82:
		mov     %cmemberAddr_64, %classPtr_24
		add     %cmemberAddr_64, 0
		mov     %cclassPtr_65, qword [%cmemberAddr_64]
		mov     rdi, %cclassPtr_65
		call    __arraySize
		mov     %cres_66, rax
		mov     %varDef_79, %cres_66
__L_84:
		cmp     %varDef_79, 3
		jge     __L_85
__L_86:
		mov     %varDef_82, 0
		jmp     __L_87
__L_85:
		mov     %cmemberAddr_52, %classPtr_24
		add     %cmemberAddr_52, 0
		mov     %carrayBase_53, qword [%cmemberAddr_52]
		mov     %celementAddr_56, %carrayBase_53
		add     %celementAddr_56, 24
		mov     qword [%celementAddr_56], 817
		mov     %varDef_82, 1
__L_87:
		cmp     %varDef_82, 0
		je      __L_88
__L_89:
		mov     rdi, __str_4
		call    println
__L_88:
		mov     rdi, __str_5
		call    print
		mov     rdi, %classPtr_24
		call    __vector_tostring
		mov     %res_30, rax
		mov     rdi, %res_30
		call    println
		mov     rdi, __str_6
		call    print
		mov     rdi, %classPtr_1
		mov     rsi, %classPtr_24
		call    __vector_add
		mov     %res_33, rax
		mov     rdi, %res_33
		call    __vector_tostring
		mov     %res_32, rax
		mov     rdi, %res_32
		call    println
		mov     rdi, __str_7
		call    print
		mov     rdi, %classPtr_1
		mov     rsi, %classPtr_24
		call    __vector_dot
		mov     %res_36, rax
		mov     rdi, %res_36
		call    __printlnInt
		mov     rdi, __str_8
		call    print
		mov     rdi, %classPtr_24
		mov     rsi, 8
		call    __vector_scalarInPlaceMultiply
		mov     %res_40, rax
		mov     rdi, %res_40
		call    __vector_tostring
		mov     %res_39, rax
		mov     rdi, %res_39
		call    println
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		mov     rax, 0
		ret     

SECTION .data

__str_0:
		dq      2
		db      28H, 20H, 00H

__str_1:
		dq      2
		db      2CH, 20H, 00H

__str_2:
		dq      2
		db      20H, 29H, 00H

__str_3:
		dq      10
		db      76H, 65H, 63H, 74H, 6FH, 72H, 20H, 78H, 3AH, 20H, 00H

__str_4:
		dq      8
		db      65H, 78H, 63H, 69H, 74H, 65H, 64H, 21H, 00H

__str_5:
		dq      10
		db      76H, 65H, 63H, 74H, 6FH, 72H, 20H, 79H, 3AH, 20H, 00H

__str_6:
		dq      7
		db      78H, 20H, 2BH, 20H, 79H, 3AH, 20H, 00H

__str_7:
		dq      7
		db      78H, 20H, 2AH, 20H, 79H, 3AH, 20H, 00H

__str_8:
		dq      14
		db      28H, 31H, 20H, 3CH, 3CH, 20H, 33H, 29H, 20H, 2AH, 20H, 79H, 3AH, 20H, 00H

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


