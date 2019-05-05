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
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r12, r12
		mov     qword [rel _seed], 1
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r12, %local_r12
		ret     

random:
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r12, r12
		mov     %tmp_24, qword [rel _R]
		mov     %tmp_23, qword [rel _seed]
		mov     %tmp_22, qword [rel _Q]
		mov     rax, %tmp_23
		cqo     
		idiv    %tmp_22
		mov     %res_4, rdx
		mov     %res_5, 48271
		imul    %res_5, %res_4
		mov     rax, %tmp_23
		cqo     
		idiv    %tmp_22
		mov     %res_9, rax
		mov     %res_10, %tmp_24
		imul    %res_10, %res_9
		mov     %res_11, %res_5
		sub     %res_11, %res_10
		cmp     %res_11, 0
		jl      __L_1
__L_2:
		mov     %alloca_1, %res_11
		jmp     __L_3
__L_1:
		mov     %res_17, %res_11
		add     %res_17, 2147483647
		mov     %alloca_1, %res_17
__L_3:
		mov     %varDef_32, %alloca_1
		mov     qword [rel _seed], %varDef_32
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r12, %local_r12
		mov     rax, %varDef_32
		ret     

initialize:
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r12, r12
		mov     %argVal_0, rdi
		mov     qword [rel _seed], %argVal_0
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r12, %local_r12
		ret     

swap:
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r12, r12
		mov     %argVal_0, rdi
		mov     %argVal_2, rsi
		mov     %tmp_25, qword [rel _a]
		mov     %offset_7, %argVal_0
		shl     %offset_7, 3
		mov     %elementAddr_8, %tmp_25
		add     %elementAddr_8, %offset_7
		mov     %elementVal_9, qword [%elementAddr_8]
		mov     %offset_12, %argVal_2
		shl     %offset_12, 3
		mov     %elementAddr_13, %tmp_25
		add     %elementAddr_13, %offset_12
		mov     %elementVal_14, qword [%elementAddr_13]
		mov     qword [%elementAddr_8], %elementVal_14
		mov     qword [%elementAddr_13], %elementVal_9
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r12, %local_r12
		ret     

pd:
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r12, r12
		mov     %argVal_0, rdi
		mov     %tmp_16, qword [rel _h]
		mov     %alloca_2, %tmp_16
__L_4:
		mov     %varDef_21, %alloca_2
		cmp     %varDef_21, %argVal_0
		jg      __L_5
__L_6:
		mov     %res_8, %varDef_21
		add     %res_8, 1
		mov     %res_9, %varDef_21
		imul    %res_9, %res_8
		mov     rax, %res_9
		cqo     
		mov     %divisor_1, 2
		idiv    %divisor_1
		mov     %res_10, rax
		cmp     %argVal_0, %res_10
		jne     __L_7
__L_8:
		mov     qword [rel _h], %varDef_21
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r12, %local_r12
		mov     rax, 1
		ret     
__L_7:
		mov     %newVal_14, %varDef_21
		inc     %newVal_14
		mov     %alloca_2, %newVal_14
		jmp     __L_4
__L_5:
		mov     qword [rel _h], %varDef_21
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r12, %local_r12
		mov     rax, 0
		ret     

show:
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r12, r12
		mov     %tmp_15, qword [rel _now]
		mov     %tmp_14, qword [rel _a]
		mov     %alloca_3, 0
__L_9:
		mov     %varDef_19, %alloca_3
		cmp     %varDef_19, %tmp_15
		jge     __L_10
__L_11:
		mov     %offset_6, %varDef_19
		shl     %offset_6, 3
		mov     %elementAddr_7, %tmp_14
		add     %elementAddr_7, %offset_6
		mov     %elementVal_8, qword [%elementAddr_7]
		mov     rdi, %elementVal_8
		call    __printInt
		mov     rdi, __str_0
		call    print
		mov     %newVal_11, %varDef_19
		inc     %newVal_11
		mov     %alloca_3, %newVal_11
		jmp     __L_9
__L_10:
		mov     rdi, __str_1
		call    println
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r12, %local_r12
		ret     

win:
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r12, r12
		mov     %tmp_90, qword [rel _now]
		mov     %tmp_89, qword [rel _h]
		mov     %tmp_88, qword [rel _a]
		mov     rdi, 816
		call    malloc
		mov     %arrayPtr_3, rax
		mov     qword [%arrayPtr_3], 101
		mov     %arrayBase_6, %arrayPtr_3
		add     %arrayBase_6, 8
		cmp     %tmp_90, %tmp_89
		je      __L_12
__L_13:
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r12, %local_r12
		mov     rax, 0
		ret     
__L_12:
		mov     %alloca_4, 0
__L_14:
		mov     %varDef_96, %alloca_4
		cmp     %varDef_96, %tmp_90
		jge     __L_15
__L_16:
		mov     %offset_16, %varDef_96
		shl     %offset_16, 3
		mov     %elementAddr_17, %tmp_88
		add     %elementAddr_17, %offset_16
		mov     %elementVal_18, qword [%elementAddr_17]
		mov     %elementAddr_22, %arrayBase_6
		add     %elementAddr_22, %offset_16
		mov     qword [%elementAddr_22], %elementVal_18
		mov     %newVal_25, %varDef_96
		inc     %newVal_25
		mov     %alloca_4, %newVal_25
		jmp     __L_14
__L_15:
		mov     %alloca_7, 0
		mov     %alloca_6, 0
__L_17:
		mov     %varDef_99, %alloca_7
		mov     %varDef_101, %alloca_6
		mov     %res_28, %tmp_90
		sub     %res_28, 1
		cmp     %varDef_99, %res_28
		jge     __L_18
__L_19:
		mov     %res_31, %varDef_99
		add     %res_31, 1
		mov     %alloca_9, %res_31
		mov     %alloca_8, %varDef_101
__L_20:
		mov     %varDef_103, %alloca_9
		mov     %varDef_104, %alloca_8
		cmp     %varDef_103, %tmp_90
		jge     __L_21
__L_22:
		mov     %offset_37, %varDef_99
		shl     %offset_37, 3
		mov     %elementAddr_38, %arrayBase_6
		add     %elementAddr_38, %offset_37
		mov     %elementVal_39, qword [%elementAddr_38]
		mov     %offset_42, %varDef_103
		shl     %offset_42, 3
		mov     %elementAddr_43, %arrayBase_6
		add     %elementAddr_43, %offset_42
		mov     %elementVal_44, qword [%elementAddr_43]
		cmp     %elementVal_39, %elementVal_44
		jg      __L_23
__L_24:
		mov     %alloca_10, %varDef_104
		jmp     __L_25
__L_23:
		mov     %offset_48, %varDef_99
		shl     %offset_48, 3
		mov     %elementAddr_49, %arrayBase_6
		add     %elementAddr_49, %offset_48
		mov     %elementVal_50, qword [%elementAddr_49]
		mov     %offset_53, %varDef_103
		shl     %offset_53, 3
		mov     %elementAddr_54, %arrayBase_6
		add     %elementAddr_54, %offset_53
		mov     %elementVal_55, qword [%elementAddr_54]
		mov     qword [%elementAddr_49], %elementVal_55
		mov     qword [%elementAddr_54], %elementVal_50
		mov     %alloca_10, %elementVal_50
__L_25:
		mov     %varDef_106, %alloca_10
		mov     %newVal_67, %varDef_103
		inc     %newVal_67
		mov     %alloca_9, %newVal_67
		mov     %alloca_8, %varDef_106
		jmp     __L_20
__L_21:
		mov     %newVal_70, %varDef_99
		inc     %newVal_70
		mov     %alloca_7, %newVal_70
		mov     %alloca_6, %varDef_104
		jmp     __L_17
__L_18:
		mov     %alloca_5, 0
__L_26:
		mov     %varDef_110, %alloca_5
		cmp     %varDef_110, %tmp_90
		jge     __L_27
__L_28:
		mov     %offset_76, %varDef_110
		shl     %offset_76, 3
		mov     %elementAddr_77, %arrayBase_6
		add     %elementAddr_77, %offset_76
		mov     %elementVal_78, qword [%elementAddr_77]
		mov     %res_80, %varDef_110
		add     %res_80, 1
		cmp     %elementVal_78, %res_80
		je      __L_29
__L_30:
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r12, %local_r12
		mov     rax, 0
		ret     
__L_29:
		mov     %newVal_84, %varDef_110
		inc     %newVal_84
		mov     %alloca_5, %newVal_84
		jmp     __L_26
__L_27:
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r12, %local_r12
		mov     rax, 1
		ret     

merge:
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r12, r12
		mov     %tmp_68, qword [rel _now]
		mov     %tmp_67, qword [rel _a]
		mov     %alloca_21, 0
		mov     %alloca_20, 0
		mov     %alloca_19, 0
		mov     %alloca_18, 0
		mov     %alloca_17, 0
__L_31:
		mov     %varDef_73, %alloca_21
		mov     %varDef_74, %alloca_20
		mov     %varDef_75, %alloca_19
		mov     %varDef_76, %alloca_18
		mov     %varDef_77, %alloca_17
		cmp     %varDef_73, %tmp_68
		jge     __L_32
__L_33:
		mov     %offset_6, %varDef_73
		shl     %offset_6, 3
		mov     %elementAddr_7, %tmp_67
		add     %elementAddr_7, %offset_6
		mov     %elementVal_8, qword [%elementAddr_7]
		cmp     %elementVal_8, 0
		je      __L_34
__L_35:
		mov     %alloca_16, %varDef_74
		mov     %alloca_15, %varDef_75
		mov     %alloca_14, %varDef_76
		mov     %alloca_13, %varDef_77
		jmp     __L_36
__L_34:
		mov     %res_12, %varDef_73
		add     %res_12, 1
		mov     %alloca_11, %res_12
__L_37:
		mov     %varDef_79, %alloca_11
		cmp     %varDef_79, %tmp_68
		jl      __L_38
__L_39:
		mov     %alloca_16, %varDef_79
		mov     %alloca_15, %varDef_75
		mov     %alloca_14, %varDef_76
		mov     %alloca_13, %varDef_77
		jmp     __L_36
__L_38:
		mov     %offset_18, %varDef_79
		shl     %offset_18, 3
		mov     %elementAddr_19, %tmp_67
		add     %elementAddr_19, %offset_18
		mov     %elementVal_20, qword [%elementAddr_19]
		cmp     %elementVal_20, 0
		je      __L_40
__L_41:
		mov     %coffset_48, %varDef_73
		shl     %coffset_48, 3
		mov     %celementAddr_49, %tmp_67
		add     %celementAddr_49, %coffset_48
		mov     %celementVal_50, qword [%celementAddr_49]
		mov     %coffset_53, %varDef_79
		shl     %coffset_53, 3
		mov     %celementAddr_54, %tmp_67
		add     %celementAddr_54, %coffset_53
		mov     %celementVal_55, qword [%celementAddr_54]
		mov     qword [%celementAddr_49], %celementVal_55
		mov     qword [%celementAddr_54], %celementVal_50
		mov     %alloca_16, %varDef_79
		mov     %alloca_15, %celementVal_50
		mov     %alloca_14, %varDef_79
		mov     %alloca_13, %varDef_73
		jmp     __L_36
__L_40:
		mov     %newVal_26, %varDef_79
		inc     %newVal_26
		mov     %alloca_11, %newVal_26
		jmp     __L_37
__L_36:
		mov     %varDef_84, %alloca_16
		mov     %varDef_85, %alloca_15
		mov     %varDef_86, %alloca_14
		mov     %varDef_87, %alloca_13
		mov     %newVal_29, %varDef_73
		inc     %newVal_29
		mov     %alloca_21, %newVal_29
		mov     %alloca_20, %varDef_84
		mov     %alloca_19, %varDef_85
		mov     %alloca_18, %varDef_86
		mov     %alloca_17, %varDef_87
		jmp     __L_31
__L_32:
		mov     %alloca_22, 0
__L_42:
		mov     %varDef_90, %alloca_22
		cmp     %varDef_90, %tmp_68
		jl      __L_43
__L_44:
		mov     %alloca_12, %tmp_68
		jmp     __L_45
__L_43:
		mov     %offset_35, %varDef_90
		shl     %offset_35, 3
		mov     %elementAddr_36, %tmp_67
		add     %elementAddr_36, %offset_35
		mov     %elementVal_37, qword [%elementAddr_36]
		cmp     %elementVal_37, 0
		jne     __L_46
__L_47:
		mov     %alloca_12, %varDef_90
		jmp     __L_45
__L_46:
		mov     %newVal_42, %varDef_90
		inc     %newVal_42
		mov     %alloca_22, %newVal_42
		jmp     __L_42
__L_45:
		mov     %varDef_93, %alloca_12
		mov     qword [rel _now], %varDef_93
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r12, %local_r12
		ret     

move:
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r12, r12
		mov     %tmp_28, qword [rel _now]
		mov     %tmp_27, qword [rel _a]
		mov     %alloca_23, 0
__L_48:
		mov     %varDef_33, %alloca_23
		cmp     %varDef_33, %tmp_28
		jge     __L_49
__L_50:
		mov     %offset_11, %varDef_33
		shl     %offset_11, 3
		mov     %elementAddr_12, %tmp_27
		add     %elementAddr_12, %offset_11
		mov     %oldVal_13, qword [%elementAddr_12]
		mov     %newVal_14, %oldVal_13
		dec     %newVal_14
		mov     qword [%elementAddr_12], %newVal_14
		mov     %res_16, %varDef_33
		add     %res_16, 1
		mov     %alloca_23, %res_16
		jmp     __L_48
__L_49:
		mov     %offset_20, %tmp_28
		shl     %offset_20, 3
		mov     %elementAddr_21, %tmp_27
		add     %elementAddr_21, %offset_20
		mov     qword [%elementAddr_21], %tmp_28
		mov     %newVal_24, %tmp_28
		inc     %newVal_24
		mov     qword [rel _now], %newVal_24
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r12, %local_r12
		ret     

main:
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r12, r12
		call    __globalInit
		mov     %tmp_356, qword [rel _R]
		mov     %tmp_355, qword [rel _now]
		mov     %tmp_354, qword [rel _h]
		mov     %tmp_353, qword [rel _seed]
		mov     %tmp_352, qword [rel _a]
		mov     %tmp_351, qword [rel _n]
		mov     %tmp_350, qword [rel _Q]
		call    getInt
		mov     %res_2, rax
		mov     %alloca_58, 0
		mov     %alloca_57, 0
		mov     %alloca_56, 0
		mov     %alloca_55, 0
		mov     %alloca_54, 0
		mov     %alloca_53, 0
		mov     %alloca_52, 0
		mov     %alloca_51, 0
		mov     %alloca_50, 0
		mov     %alloca_49, 0
		mov     %alloca_48, 0
		mov     %alloca_47, 0
		mov     %alloca_46, 0
		mov     %alloca_45, 0
		mov     %alloca_44, 0
		mov     %alloca_43, %tmp_350
		mov     %alloca_42, %tmp_351
		mov     %alloca_41, %tmp_352
		mov     %alloca_40, %tmp_353
		mov     %alloca_39, %tmp_354
		mov     %alloca_38, %tmp_355
		mov     %alloca_37, %tmp_356
__L_51:
		mov     %varDef_383, %alloca_58
		mov     %varDef_394, %alloca_57
		mov     %varDef_395, %alloca_56
		mov     %varDef_396, %alloca_55
		mov     %varDef_397, %alloca_54
		mov     %varDef_399, %alloca_53
		mov     %varDef_401, %alloca_52
		mov     %varDef_402, %alloca_51
		mov     %varDef_403, %alloca_50
		mov     %varDef_404, %alloca_49
		mov     %varDef_405, %alloca_48
		mov     %varDef_406, %alloca_47
		mov     %varDef_407, %alloca_46
		mov     %varDef_408, %alloca_45
		mov     %varDef_409, %alloca_44
		mov     %varDef_410, %alloca_43
		mov     %varDef_411, %alloca_42
		mov     %varDef_412, %alloca_41
		mov     %varDef_413, %alloca_40
		mov     %varDef_414, %alloca_39
		mov     %varDef_415, %alloca_38
		mov     %varDef_416, %alloca_37
		cmp     %varDef_383, %res_2
		jge     __L_52
__L_53:
		mov     rdi, 1608
		call    malloc
		mov     %arrayPtr_9, rax
		mov     qword [%arrayPtr_9], 200
		mov     %arrayBase_12, %arrayPtr_9
		add     %arrayBase_12, 8
		mov     %alloca_64, 0
__L_54:
		mov     %varDef_426, %alloca_64
		cmp     %varDef_426, 5050
		jg      __L_55
__L_56:
		mov     %cres_87, %varDef_426
		add     %cres_87, 1
		mov     %cres_88, %varDef_426
		imul    %cres_88, %cres_87
		mov     rax, %cres_88
		cqo     
		mov     %divisor_2, 2
		idiv    %divisor_2
		mov     %cres_89, rax
		mov     %cmplhs_3, 5050
		cmp     %cmplhs_3, %cres_89
		jne     __L_57
__L_58:
		mov     %alloca_34, 1
		jmp     __L_59
__L_57:
		mov     %cnewVal_93, %varDef_426
		inc     %cnewVal_93
		mov     %alloca_64, %cnewVal_93
		jmp     __L_54
__L_55:
		mov     %alloca_34, 0
__L_59:
		mov     %varDef_430, %alloca_34
		cmp     %varDef_430, 0
		jne     __L_60
__L_61:
		mov     rdi, __str_2
		call    println
		mov     qword [rel _Q], 44488
		mov     qword [rel _n], 5050
		mov     qword [rel _a], %arrayBase_12
		mov     qword [rel _seed], %varDef_413
		mov     qword [rel _h], %varDef_426
		mov     qword [rel _now], %varDef_415
		mov     qword [rel _R], 3399
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r12, %local_r12
		mov     rax, 1
		ret     
__L_60:
		mov     rdi, __str_3
		call    println
		mov     rax, %varDef_413
		cqo     
		mov     %divisor_4, 44488
		idiv    %divisor_4
		mov     %cres_99, rdx
		mov     %cres_100, 48271
		imul    %cres_100, %cres_99
		mov     rax, %varDef_413
		cqo     
		mov     %divisor_5, 44488
		idiv    %divisor_5
		mov     %cres_104, rax
		mov     %cres_105, 3399
		imul    %cres_105, %cres_104
		mov     %cres_106, %cres_100
		sub     %cres_106, %cres_105
		cmp     %cres_106, 0
		jl      __L_62
__L_63:
		mov     %alloca_92, %cres_106
		jmp     __L_64
__L_62:
		mov     %cres_112, %cres_106
		add     %cres_112, 2147483647
		mov     %alloca_92, %cres_112
__L_64:
		mov     %varDef_434, %alloca_92
		mov     rax, %varDef_434
		cqo     
		mov     %divisor_6, 44488
		idiv    %divisor_6
		mov     %cres_121, rdx
		mov     %cres_122, 48271
		imul    %cres_122, %cres_121
		mov     rax, %varDef_434
		cqo     
		mov     %divisor_7, 44488
		idiv    %divisor_7
		mov     %cres_126, rax
		mov     %cres_127, 3399
		imul    %cres_127, %cres_126
		mov     %cres_128, %cres_122
		sub     %cres_128, %cres_127
		cmp     %cres_128, 0
		jl      __L_65
__L_66:
		mov     %alloca_77, %cres_128
		jmp     __L_67
__L_65:
		mov     %cres_134, %cres_128
		add     %cres_134, 2147483647
		mov     %alloca_77, %cres_134
__L_67:
		mov     %varDef_441, %alloca_77
		mov     rax, %varDef_441
		cqo     
		mov     %divisor_8, 10
		idiv    %divisor_8
		mov     %res_23, rdx
		mov     %res_24, %res_23
		add     %res_24, 1
		mov     rdi, %res_24
		call    __printlnInt
		mov     %alloca_31, 0
		mov     %alloca_30, 0
		mov     %alloca_29, %varDef_394
		mov     %alloca_28, %varDef_395
		mov     %alloca_27, %varDef_396
		mov     %alloca_26, %varDef_397
		mov     %alloca_25, %varDef_441
__L_68:
		mov     %varDef_444, %alloca_31
		mov     %varDef_445, %alloca_30
		mov     %varDef_446, %alloca_29
		mov     %varDef_447, %alloca_28
		mov     %varDef_448, %alloca_27
		mov     %varDef_449, %alloca_26
		mov     %varDef_450, %alloca_25
		mov     %res_28, %res_24
		sub     %res_28, 1
		cmp     %varDef_444, %res_28
		jge     __L_69
__L_70:
		mov     rax, %varDef_450
		cqo     
		mov     %divisor_9, 44488
		idiv    %divisor_9
		mov     %cres_141, rdx
		mov     %cres_142, 48271
		imul    %cres_142, %cres_141
		mov     rax, %varDef_450
		cqo     
		mov     %divisor_10, 44488
		idiv    %divisor_10
		mov     %cres_146, rax
		mov     %cres_147, 3399
		imul    %cres_147, %cres_146
		mov     %cres_148, %cres_142
		sub     %cres_148, %cres_147
		cmp     %cres_148, 0
		jl      __L_71
__L_72:
		mov     %alloca_93, %cres_148
		jmp     __L_73
__L_71:
		mov     %cres_154, %cres_148
		add     %cres_154, 2147483647
		mov     %alloca_93, %cres_154
__L_73:
		mov     %varDef_454, %alloca_93
		mov     rax, %varDef_454
		cqo     
		mov     %divisor_11, 10
		idiv    %divisor_11
		mov     %res_31, rdx
		mov     %res_32, %res_31
		add     %res_32, 1
		mov     %offset_35, %varDef_444
		shl     %offset_35, 3
		mov     %elementAddr_36, %arrayBase_12
		add     %elementAddr_36, %offset_35
		mov     qword [%elementAddr_36], %res_32
		mov     %alloca_75, %varDef_448
		mov     %alloca_74, %varDef_449
		mov     %alloca_73, %varDef_454
__L_74:
		mov     %varDef_456, %alloca_75
		mov     %varDef_457, %alloca_74
		mov     %varDef_458, %alloca_73
		mov     %offset_39, %varDef_444
		shl     %offset_39, 3
		mov     %elementAddr_40, %arrayBase_12
		add     %elementAddr_40, %offset_39
		mov     %elementVal_41, qword [%elementAddr_40]
		mov     %res_43, %elementVal_41
		add     %res_43, %varDef_445
		cmp     %res_43, 5050
		jle     __L_75
__L_76:
		mov     rax, %varDef_458
		cqo     
		mov     %divisor_12, 44488
		idiv    %divisor_12
		mov     %cres_161, rdx
		mov     %cres_162, 48271
		imul    %cres_162, %cres_161
		mov     rax, %varDef_458
		cqo     
		mov     %divisor_13, 44488
		idiv    %divisor_13
		mov     %cres_166, rax
		mov     %cres_167, 3399
		imul    %cres_167, %cres_166
		mov     %cres_168, %cres_162
		sub     %cres_168, %cres_167
		cmp     %cres_168, 0
		jl      __L_77
__L_78:
		mov     %alloca_32, %cres_168
		jmp     __L_79
__L_77:
		mov     %cres_174, %cres_168
		add     %cres_174, 2147483647
		mov     %alloca_32, %cres_174
__L_79:
		mov     %varDef_462, %alloca_32
		mov     rax, %varDef_462
		cqo     
		mov     %divisor_14, 10
		idiv    %divisor_14
		mov     %res_47, rdx
		mov     %res_48, %res_47
		add     %res_48, 1
		mov     %offset_51, %varDef_444
		shl     %offset_51, 3
		mov     %elementAddr_52, %arrayBase_12
		add     %elementAddr_52, %offset_51
		mov     qword [%elementAddr_52], %res_48
		mov     %alloca_75, %varDef_462
		mov     %alloca_74, %cres_168
		mov     %alloca_73, %varDef_462
		jmp     __L_74
__L_75:
		mov     %offset_56, %varDef_444
		shl     %offset_56, 3
		mov     %elementAddr_57, %arrayBase_12
		add     %elementAddr_57, %offset_56
		mov     %elementVal_58, qword [%elementAddr_57]
		mov     %res_59, %varDef_445
		add     %res_59, %elementVal_58
		mov     %newVal_62, %varDef_444
		inc     %newVal_62
		mov     %alloca_31, %newVal_62
		mov     %alloca_30, %res_59
		mov     %alloca_29, %varDef_454
		mov     %alloca_28, %cres_148
		mov     %alloca_27, %varDef_456
		mov     %alloca_26, %varDef_457
		mov     %alloca_25, %varDef_458
		jmp     __L_68
__L_69:
		mov     %res_65, 5050
		sub     %res_65, %varDef_445
		mov     %res_68, %res_24
		sub     %res_68, 1
		mov     %offset_69, %res_68
		shl     %offset_69, 3
		mov     %elementAddr_70, %arrayBase_12
		add     %elementAddr_70, %offset_69
		mov     qword [%elementAddr_70], %res_65
		mov     %alloca_78, 0
__L_80:
		mov     %varDef_467, %alloca_78
		cmp     %varDef_467, %res_24
		jge     __L_81
__L_82:
		mov     %coffset_182, %varDef_467
		shl     %coffset_182, 3
		mov     %celementAddr_183, %arrayBase_12
		add     %celementAddr_183, %coffset_182
		mov     %celementVal_184, qword [%celementAddr_183]
		mov     rdi, %celementVal_184
		call    __printInt
		mov     rdi, __str_0
		call    print
		mov     %cnewVal_187, %varDef_467
		inc     %cnewVal_187
		mov     %alloca_78, %cnewVal_187
		jmp     __L_80
__L_81:
		mov     rdi, __str_1
		call    println
		mov     %alloca_91, %varDef_399
		mov     %alloca_90, 0
		mov     %alloca_89, %varDef_404
		mov     %alloca_88, %varDef_405
		mov     %alloca_87, %varDef_406
__L_83:
		mov     %varDef_470, %alloca_91
		mov     %varDef_471, %alloca_90
		mov     %varDef_472, %alloca_89
		mov     %varDef_473, %alloca_88
		mov     %varDef_474, %alloca_87
		cmp     %varDef_471, %res_24
		jge     __L_84
__L_85:
		mov     %coffset_195, %varDef_471
		shl     %coffset_195, 3
		mov     %celementAddr_196, %arrayBase_12
		add     %celementAddr_196, %coffset_195
		mov     %celementVal_197, qword [%celementAddr_196]
		cmp     %celementVal_197, 0
		je      __L_86
__L_87:
		mov     %alloca_68, %varDef_470
		mov     %alloca_67, %varDef_472
		mov     %alloca_66, %varDef_473
		mov     %alloca_65, %varDef_474
		jmp     __L_88
__L_86:
		mov     %cres_200, %varDef_471
		add     %cres_200, 1
		mov     %alloca_35, %cres_200
__L_89:
		mov     %varDef_476, %alloca_35
		cmp     %varDef_476, %res_24
		jl      __L_90
__L_91:
		mov     %alloca_68, %varDef_476
		mov     %alloca_67, %varDef_472
		mov     %alloca_66, %varDef_473
		mov     %alloca_65, %varDef_474
		jmp     __L_88
__L_90:
		mov     %coffset_206, %varDef_476
		shl     %coffset_206, 3
		mov     %celementAddr_207, %arrayBase_12
		add     %celementAddr_207, %coffset_206
		mov     %celementVal_208, qword [%celementAddr_207]
		cmp     %celementVal_208, 0
		je      __L_92
__L_93:
		mov     %coffset_304, %varDef_471
		shl     %coffset_304, 3
		mov     %celementAddr_305, %arrayBase_12
		add     %celementAddr_305, %coffset_304
		mov     %celementVal_306, qword [%celementAddr_305]
		mov     %coffset_309, %varDef_476
		shl     %coffset_309, 3
		mov     %celementAddr_310, %arrayBase_12
		add     %celementAddr_310, %coffset_309
		mov     %celementVal_311, qword [%celementAddr_310]
		mov     qword [%celementAddr_305], %celementVal_311
		mov     qword [%celementAddr_310], %celementVal_306
		mov     %alloca_68, %varDef_476
		mov     %alloca_67, %celementVal_306
		mov     %alloca_66, %varDef_476
		mov     %alloca_65, %varDef_471
		jmp     __L_88
__L_92:
		mov     %cnewVal_214, %varDef_476
		inc     %cnewVal_214
		mov     %alloca_35, %cnewVal_214
		jmp     __L_89
__L_88:
		mov     %varDef_481, %alloca_68
		mov     %varDef_482, %alloca_67
		mov     %varDef_483, %alloca_66
		mov     %varDef_484, %alloca_65
		mov     %cnewVal_217, %varDef_471
		inc     %cnewVal_217
		mov     %alloca_91, %varDef_481
		mov     %alloca_90, %cnewVal_217
		mov     %alloca_89, %varDef_482
		mov     %alloca_88, %varDef_483
		mov     %alloca_87, %varDef_484
		jmp     __L_83
__L_84:
		mov     %alloca_24, 0
__L_94:
		mov     %varDef_487, %alloca_24
		cmp     %varDef_487, %res_24
		jl      __L_95
__L_96:
		mov     %alloca_86, 0
		mov     %alloca_85, %varDef_401
		mov     %alloca_84, %varDef_402
		mov     %alloca_83, %varDef_403
		mov     %alloca_82, %varDef_407
		mov     %alloca_81, %varDef_408
		mov     %alloca_80, %varDef_409
		mov     %alloca_79, %res_24
		jmp     __L_97
__L_95:
		mov     %coffset_223, %varDef_487
		shl     %coffset_223, 3
		mov     %celementAddr_224, %arrayBase_12
		add     %celementAddr_224, %coffset_223
		mov     %celementVal_225, qword [%celementAddr_224]
		cmp     %celementVal_225, 0
		jne     __L_98
__L_99:
		mov     %alloca_86, 0
		mov     %alloca_85, %varDef_401
		mov     %alloca_84, %varDef_402
		mov     %alloca_83, %varDef_403
		mov     %alloca_82, %varDef_407
		mov     %alloca_81, %varDef_408
		mov     %alloca_80, %varDef_409
		mov     %alloca_79, %varDef_487
		jmp     __L_97
__L_98:
		mov     %cnewVal_230, %varDef_487
		inc     %cnewVal_230
		mov     %alloca_24, %cnewVal_230
		jmp     __L_94
__L_97:
		mov     %varDef_490, %alloca_86
		mov     %varDef_491, %alloca_85
		mov     %varDef_492, %alloca_84
		mov     %varDef_493, %alloca_83
		mov     %varDef_494, %alloca_82
		mov     %varDef_495, %alloca_81
		mov     %varDef_496, %alloca_80
		mov     %varDef_497, %alloca_79
		mov     qword [rel _a], %arrayBase_12
		mov     qword [rel _h], %varDef_426
		mov     qword [rel _now], %varDef_497
		call    win
		mov     %res_71, rax
		cmp     %res_71, 0
		jne     __L_100
__L_101:
		mov     %newVal_74, %varDef_490
		inc     %newVal_74
		mov     %alloca_76, 0
__L_102:
		mov     %varDef_500, %alloca_76
		cmp     %varDef_500, %varDef_497
		jge     __L_103
__L_104:
		mov     %coffset_242, %varDef_500
		shl     %coffset_242, 3
		mov     %celementAddr_243, %arrayBase_12
		add     %celementAddr_243, %coffset_242
		mov     %coldVal_244, qword [%celementAddr_243]
		mov     %cnewVal_245, %coldVal_244
		dec     %cnewVal_245
		mov     qword [%celementAddr_243], %cnewVal_245
		mov     %cres_247, %varDef_500
		add     %cres_247, 1
		mov     %alloca_76, %cres_247
		jmp     __L_102
__L_103:
		mov     %coffset_251, %varDef_497
		shl     %coffset_251, 3
		mov     %celementAddr_252, %arrayBase_12
		add     %celementAddr_252, %coffset_251
		mov     qword [%celementAddr_252], %varDef_497
		mov     %cnewVal_255, %varDef_497
		inc     %cnewVal_255
		mov     %alloca_63, %varDef_492
		mov     %alloca_62, 0
		mov     %alloca_61, %varDef_494
		mov     %alloca_60, %varDef_495
		mov     %alloca_59, %varDef_496
__L_105:
		mov     %varDef_504, %alloca_63
		mov     %varDef_505, %alloca_62
		mov     %varDef_506, %alloca_61
		mov     %varDef_507, %alloca_60
		mov     %varDef_508, %alloca_59
		cmp     %varDef_505, %cnewVal_255
		jge     __L_106
__L_107:
		mov     %coffset_263, %varDef_505
		shl     %coffset_263, 3
		mov     %celementAddr_264, %arrayBase_12
		add     %celementAddr_264, %coffset_263
		mov     %celementVal_265, qword [%celementAddr_264]
		cmp     %celementVal_265, 0
		je      __L_108
__L_109:
		mov     %alloca_72, %varDef_504
		mov     %alloca_71, %varDef_506
		mov     %alloca_70, %varDef_507
		mov     %alloca_69, %varDef_508
		jmp     __L_110
__L_108:
		mov     %cres_268, %varDef_505
		add     %cres_268, 1
		mov     %alloca_36, %cres_268
__L_111:
		mov     %varDef_510, %alloca_36
		cmp     %varDef_510, %cnewVal_255
		jl      __L_112
__L_113:
		mov     %alloca_72, %varDef_510
		mov     %alloca_71, %varDef_506
		mov     %alloca_70, %varDef_507
		mov     %alloca_69, %varDef_508
		jmp     __L_110
__L_112:
		mov     %coffset_274, %varDef_510
		shl     %coffset_274, 3
		mov     %celementAddr_275, %arrayBase_12
		add     %celementAddr_275, %coffset_274
		mov     %celementVal_276, qword [%celementAddr_275]
		cmp     %celementVal_276, 0
		je      __L_114
__L_115:
		mov     %coffset_326, %varDef_505
		shl     %coffset_326, 3
		mov     %celementAddr_327, %arrayBase_12
		add     %celementAddr_327, %coffset_326
		mov     %celementVal_328, qword [%celementAddr_327]
		mov     %coffset_331, %varDef_510
		shl     %coffset_331, 3
		mov     %celementAddr_332, %arrayBase_12
		add     %celementAddr_332, %coffset_331
		mov     %celementVal_333, qword [%celementAddr_332]
		mov     qword [%celementAddr_327], %celementVal_333
		mov     qword [%celementAddr_332], %celementVal_328
		mov     %alloca_72, %varDef_510
		mov     %alloca_71, %celementVal_328
		mov     %alloca_70, %varDef_510
		mov     %alloca_69, %varDef_505
		jmp     __L_110
__L_114:
		mov     %cnewVal_282, %varDef_510
		inc     %cnewVal_282
		mov     %alloca_36, %cnewVal_282
		jmp     __L_111
__L_110:
		mov     %varDef_515, %alloca_72
		mov     %varDef_516, %alloca_71
		mov     %varDef_517, %alloca_70
		mov     %varDef_518, %alloca_69
		mov     %cnewVal_285, %varDef_505
		inc     %cnewVal_285
		mov     %alloca_63, %varDef_515
		mov     %alloca_62, %cnewVal_285
		mov     %alloca_61, %varDef_516
		mov     %alloca_60, %varDef_517
		mov     %alloca_59, %varDef_518
		jmp     __L_105
__L_106:
		mov     %alloca_33, 0
__L_116:
		mov     %varDef_521, %alloca_33
		cmp     %varDef_521, %cnewVal_255
		jl      __L_117
__L_118:
		mov     %alloca_86, %newVal_74
		mov     %alloca_85, %varDef_500
		mov     %alloca_84, %varDef_504
		mov     %alloca_83, %varDef_521
		mov     %alloca_82, %varDef_506
		mov     %alloca_81, %varDef_507
		mov     %alloca_80, %varDef_508
		mov     %alloca_79, %cnewVal_255
		jmp     __L_97
__L_117:
		mov     %coffset_291, %varDef_521
		shl     %coffset_291, 3
		mov     %celementAddr_292, %arrayBase_12
		add     %celementAddr_292, %coffset_291
		mov     %celementVal_293, qword [%celementAddr_292]
		cmp     %celementVal_293, 0
		jne     __L_119
__L_120:
		mov     %alloca_86, %newVal_74
		mov     %alloca_85, %varDef_500
		mov     %alloca_84, %varDef_504
		mov     %alloca_83, %varDef_521
		mov     %alloca_82, %varDef_506
		mov     %alloca_81, %varDef_507
		mov     %alloca_80, %varDef_508
		mov     %alloca_79, %varDef_521
		jmp     __L_97
__L_119:
		mov     %cnewVal_298, %varDef_521
		inc     %cnewVal_298
		mov     %alloca_33, %cnewVal_298
		jmp     __L_116
__L_100:
		mov     rdi, __str_4
		call    print
		mov     rdi, %varDef_490
		call    __printInt
		mov     rdi, __str_5
		call    println
		mov     %newVal_78, %varDef_383
		inc     %newVal_78
		mov     %alloca_58, %newVal_78
		mov     %alloca_57, %varDef_446
		mov     %alloca_56, %varDef_447
		mov     %alloca_55, %varDef_448
		mov     %alloca_54, %varDef_449
		mov     %alloca_53, %varDef_470
		mov     %alloca_52, %varDef_491
		mov     %alloca_51, %varDef_492
		mov     %alloca_50, %varDef_493
		mov     %alloca_49, %varDef_472
		mov     %alloca_48, %varDef_473
		mov     %alloca_47, %varDef_474
		mov     %alloca_46, %varDef_494
		mov     %alloca_45, %varDef_495
		mov     %alloca_44, %varDef_496
		mov     %alloca_43, 44488
		mov     %alloca_42, 5050
		mov     %alloca_41, %arrayBase_12
		mov     %alloca_40, %varDef_450
		mov     %alloca_39, %varDef_426
		mov     %alloca_38, %varDef_497
		mov     %alloca_37, 3399
		jmp     __L_51
__L_52:
		mov     qword [rel _Q], %varDef_410
		mov     qword [rel _n], %varDef_411
		mov     qword [rel _a], %varDef_412
		mov     qword [rel _seed], %varDef_413
		mov     qword [rel _h], %varDef_414
		mov     qword [rel _now], %varDef_415
		mov     qword [rel _R], %varDef_416
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r12, %local_r12
		mov     rax, 0
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


