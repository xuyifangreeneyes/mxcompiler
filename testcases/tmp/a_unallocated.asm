default rel

global _N
global _head
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
global __globalInit
global origin
global check
global addList
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
		mov     %local_r12, r12
		mov     %local_rbx, rbx
		mov     %local_r14, r14
		mov     %local_r15, r15
		mov     %local_r13, r13
		mov     rdi, 96008
		call    malloc
		mov     %arrayPtr_0, rax
		mov     qword [%arrayPtr_0], 12000
		mov     %arrayBase_3, %arrayPtr_0
		add     %arrayBase_3, 8
		mov     rdi, 96008
		call    malloc
		mov     %arrayPtr_4, rax
		mov     qword [%arrayPtr_4], 12000
		mov     %arrayBase_7, %arrayPtr_4
		add     %arrayBase_7, 8
		mov     rdi, 72
		call    malloc
		mov     %arrayPtr_8, rax
		mov     qword [%arrayPtr_8], 8
		mov     %arrayBase_11, %arrayPtr_8
		add     %arrayBase_11, 8
		mov     rdi, 80
		call    malloc
		mov     %arrayPtr_12, rax
		mov     qword [%arrayPtr_12], 9
		mov     %arrayBase_15, %arrayPtr_12
		add     %arrayBase_15, 8
		mov     qword [rel _dx], %arrayBase_11
		mov     qword [rel _xlist], %arrayBase_3
		mov     qword [rel _ylist], %arrayBase_7
		mov     qword [rel _dy], %arrayBase_15
		mov     r12, %local_r12
		mov     rbx, %local_rbx
		mov     r14, %local_r14
		mov     r15, %local_r15
		mov     r13, %local_r13
		ret     

origin:
		mov     %local_r12, r12
		mov     %local_rbx, rbx
		mov     %local_r14, r14
		mov     %local_r15, r15
		mov     %local_r13, r13
		mov     %argVal_0, rdi
		mov     %tmp_45, qword [rel _j]
		mov     %memberLength_4, %argVal_0
		shl     %memberLength_4, 3
		mov     %arrayLength_5, %memberLength_4
		add     %arrayLength_5, 8
		mov     rdi, %arrayLength_5
		call    malloc
		mov     %arrayPtr_3, rax
		mov     qword [%arrayPtr_3], %argVal_0
		mov     %arrayBase_6, %arrayPtr_3
		add     %arrayBase_6, 8
		mov     %alloca_3, 0
		mov     %alloca_2, %tmp_45
__L_1:
		mov     %varDef_61, %alloca_3
		mov     %varDef_62, %alloca_2
		cmp     %varDef_61, %argVal_0
		jge     __L_2
__L_3:
		mov     %memberLength_12, %argVal_0
		shl     %memberLength_12, 3
		mov     %arrayLength_13, %memberLength_12
		add     %arrayLength_13, 8
		mov     rdi, %arrayLength_13
		call    malloc
		mov     %arrayPtr_11, rax
		mov     qword [%arrayPtr_11], %argVal_0
		mov     %arrayBase_14, %arrayPtr_11
		add     %arrayBase_14, 8
		mov     %offset_17, %varDef_61
		shl     %offset_17, 3
		mov     %elementAddr_18, %arrayBase_6
		add     %elementAddr_18, %offset_17
		mov     qword [%elementAddr_18], %arrayBase_14
		mov     %alloca_1, 0
__L_4:
		mov     %varDef_64, %alloca_1
		cmp     %varDef_64, %argVal_0
		jge     __L_5
__L_6:
		mov     %offset_24, %varDef_61
		shl     %offset_24, 3
		mov     %elementAddr_25, %arrayBase_6
		add     %elementAddr_25, %offset_24
		mov     %arrayBase_26, qword [%elementAddr_25]
		mov     %offset_28, %varDef_64
		shl     %offset_28, 3
		mov     %elementAddr_29, %arrayBase_26
		add     %elementAddr_29, %offset_28
		mov     qword [%elementAddr_29], 0
		mov     %newVal_32, %varDef_64
		inc     %newVal_32
		mov     %alloca_1, %newVal_32
		jmp     __L_4
__L_5:
		mov     %newVal_35, %varDef_61
		inc     %newVal_35
		mov     %alloca_3, %newVal_35
		mov     %alloca_2, %varDef_64
		jmp     __L_1
__L_2:
		mov     qword [rel _tail], 0
		mov     qword [rel _i], %varDef_61
		mov     qword [rel _head], 0
		mov     qword [rel _step], %arrayBase_6
		mov     qword [rel _j], %varDef_62
		mov     r12, %local_r12
		mov     rbx, %local_rbx
		mov     r14, %local_r14
		mov     r15, %local_r15
		mov     r13, %local_r13
		ret     

check:
		mov     %local_r12, r12
		mov     %local_rbx, rbx
		mov     %local_r14, r14
		mov     %local_r15, r15
		mov     %local_r13, r13
		mov     %argVal_0, rdi
		mov     %tmp_10, qword [rel _N]
		cmp     %argVal_0, %tmp_10
		jge     __L_7
__L_8:
		cmp     %argVal_0, 0
		jl      __L_7
__L_9:
		mov     %alloca_4, 1
		jmp     __L_10
__L_7:
		mov     %alloca_4, 0
__L_10:
		mov     %varDef_15, %alloca_4
		mov     r12, %local_r12
		mov     rbx, %local_rbx
		mov     r14, %local_r14
		mov     r15, %local_r15
		mov     r13, %local_r13
		mov     rax, %varDef_15
		ret     

addList:
		mov     %local_r12, r12
		mov     %local_rbx, rbx
		mov     %local_r14, r14
		mov     %local_r15, r15
		mov     %local_r13, r13
		mov     %argVal_0, rdi
		mov     %argVal_2, rsi
		mov     %tmp_83, qword [rel _step]
		mov     %tmp_82, qword [rel _targetx]
		mov     %tmp_81, qword [rel _ylist]
		mov     %tmp_80, qword [rel _xlist]
		mov     %tmp_79, qword [rel _ok]
		mov     %tmp_78, qword [rel _targety]
		mov     %tmp_77, qword [rel _tail]
		mov     %tmp_76, qword [rel _N]
		mov     %tmp_75, qword [rel _now]
__L_11:
		cmp     %argVal_0, %tmp_76
		jge     __L_12
__L_13:
		cmp     %argVal_0, 0
		jl      __L_12
__L_14:
		mov     %alloca_5, 1
		jmp     __L_15
__L_12:
		mov     %alloca_5, 0
__L_15:
		mov     %varDef_100, %alloca_5
		cmp     %varDef_100, 0
		jne     __L_16
__L_17:
		mov     %alloca_8, %tmp_77
		mov     %alloca_7, %tmp_79
		jmp     __L_18
__L_16:
		cmp     %argVal_2, %tmp_76
		jge     __L_19
__L_20:
		cmp     %argVal_2, 0
		jl      __L_19
__L_21:
		mov     %alloca_6, 1
		jmp     __L_22
__L_19:
		mov     %alloca_6, 0
__L_22:
		mov     %varDef_105, %alloca_6
		cmp     %varDef_105, 0
		jne     __L_23
__L_24:
		mov     %alloca_8, %tmp_77
		mov     %alloca_7, %tmp_79
		jmp     __L_18
__L_23:
		mov     %offset_10, %argVal_0
		shl     %offset_10, 3
		mov     %elementAddr_11, %tmp_83
		add     %elementAddr_11, %offset_10
		mov     %arrayBase_12, qword [%elementAddr_11]
		mov     %offset_14, %argVal_2
		shl     %offset_14, 3
		mov     %elementAddr_15, %arrayBase_12
		add     %elementAddr_15, %offset_14
		mov     %elementVal_16, qword [%elementAddr_15]
		cmp     %elementVal_16, -1
		je      __L_25
__L_26:
		mov     %alloca_8, %tmp_77
		mov     %alloca_7, %tmp_79
		jmp     __L_18
__L_25:
		mov     %newVal_21, %tmp_77
		inc     %newVal_21
		mov     %offset_25, %newVal_21
		shl     %offset_25, 3
		mov     %elementAddr_26, %tmp_80
		add     %elementAddr_26, %offset_25
		mov     qword [%elementAddr_26], %argVal_0
		mov     %elementAddr_31, %tmp_81
		add     %elementAddr_31, %offset_25
		mov     qword [%elementAddr_31], %argVal_2
		mov     %res_33, %tmp_75
		add     %res_33, 1
		mov     %offset_36, %argVal_0
		shl     %offset_36, 3
		mov     %elementAddr_37, %tmp_83
		add     %elementAddr_37, %offset_36
		mov     %arrayBase_38, qword [%elementAddr_37]
		mov     %offset_40, %argVal_2
		shl     %offset_40, 3
		mov     %elementAddr_41, %arrayBase_38
		add     %elementAddr_41, %offset_40
		mov     qword [%elementAddr_41], %res_33
		cmp     %argVal_0, %tmp_82
		je      __L_27
__L_28:
		mov     %alloca_8, %newVal_21
		mov     %alloca_7, %tmp_79
		jmp     __L_18
__L_27:
		cmp     %argVal_2, %tmp_78
		je      __L_29
__L_30:
		mov     %alloca_8, %newVal_21
		mov     %alloca_7, %tmp_79
		jmp     __L_18
__L_29:
		mov     %alloca_8, %newVal_21
		mov     %alloca_7, 1
__L_18:
		mov     %varDef_112, %alloca_8
		mov     %varDef_113, %alloca_7
		mov     qword [rel _tail], %varDef_112
		mov     qword [rel _ok], %varDef_113
		mov     r12, %local_r12
		mov     rbx, %local_rbx
		mov     r14, %local_r14
		mov     r15, %local_r15
		mov     r13, %local_r13
		ret     

main:
		mov     %local_r12, r12
		mov     %local_rbx, rbx
		mov     %local_r14, r14
		mov     %local_r15, r15
		mov     %local_r13, r13
		call    __globalInit
		mov     %tmp_268, qword [rel _dy]
		mov     %tmp_267, qword [rel _y]
		mov     %tmp_266, qword [rel _x]
		mov     %tmp_262, qword [rel _now]
		mov     %tmp_261, qword [rel _j]
		mov     %tmp_258, qword [rel _ylist]
		mov     %tmp_257, qword [rel _xlist]
		mov     %tmp_256, qword [rel _ok]
		mov     %tmp_255, qword [rel _dx]
__L_31:
		mov     rdi, 856
		call    malloc
		mov     %carrayPtr_142, rax
		mov     qword [%carrayPtr_142], 106
		mov     %carrayBase_143, %carrayPtr_142
		add     %carrayBase_143, 8
		mov     %alloca_17, %tmp_261
		mov     %alloca_16, 0
__L_32:
		mov     %varDef_302, %alloca_17
		mov     %varDef_303, %alloca_16
		cmp     %varDef_303, 106
		jge     __L_33
__L_34:
		mov     rdi, 856
		call    malloc
		mov     %carrayPtr_150, rax
		mov     qword [%carrayPtr_150], 106
		mov     %carrayBase_151, %carrayPtr_150
		add     %carrayBase_151, 8
		mov     %coffset_154, %varDef_303
		shl     %coffset_154, 3
		mov     %celementAddr_155, %carrayBase_143
		add     %celementAddr_155, %coffset_154
		mov     qword [%celementAddr_155], %carrayBase_151
		mov     %alloca_33, 0
__L_35:
		mov     %varDef_305, %alloca_33
		cmp     %varDef_305, 106
		jge     __L_36
__L_37:
		mov     %coffset_161, %varDef_303
		shl     %coffset_161, 3
		mov     %celementAddr_162, %carrayBase_143
		add     %celementAddr_162, %coffset_161
		mov     %carrayBase_163, qword [%celementAddr_162]
		mov     %coffset_165, %varDef_305
		shl     %coffset_165, 3
		mov     %celementAddr_166, %carrayBase_163
		add     %celementAddr_166, %coffset_165
		mov     qword [%celementAddr_166], 0
		mov     %cnewVal_169, %varDef_305
		inc     %cnewVal_169
		mov     %alloca_33, %cnewVal_169
		jmp     __L_35
__L_36:
		mov     %cnewVal_172, %varDef_303
		inc     %cnewVal_172
		mov     %alloca_17, %varDef_305
		mov     %alloca_16, %cnewVal_172
		jmp     __L_32
__L_33:
		call    getInt
		mov     %res_0, rax
		mov     %res_2, %res_0
		sub     %res_2, 1
		mov     %alloca_27, %varDef_302
		mov     %alloca_26, 0
__L_38:
		mov     %varDef_312, %alloca_27
		mov     %varDef_313, %alloca_26
		cmp     %varDef_313, %res_0
		jge     __L_39
__L_40:
		mov     %alloca_34, 0
__L_41:
		mov     %varDef_315, %alloca_34
		cmp     %varDef_315, %res_0
		jge     __L_42
__L_43:
		mov     %offset_13, %varDef_313
		shl     %offset_13, 3
		mov     %elementAddr_14, %carrayBase_143
		add     %elementAddr_14, %offset_13
		mov     %arrayBase_15, qword [%elementAddr_14]
		mov     %offset_17, %varDef_315
		shl     %offset_17, 3
		mov     %elementAddr_18, %arrayBase_15
		add     %elementAddr_18, %offset_17
		mov     qword [%elementAddr_18], -1
		mov     %newVal_21, %varDef_315
		inc     %newVal_21
		mov     %alloca_34, %newVal_21
		jmp     __L_41
__L_42:
		mov     %newVal_24, %varDef_313
		inc     %newVal_24
		mov     %alloca_27, %varDef_315
		mov     %alloca_26, %newVal_24
		jmp     __L_38
__L_39:
		mov     %elementAddr_28, %tmp_255
		add     %elementAddr_28, 0
		mov     qword [%elementAddr_28], -2
		mov     %elementAddr_32, %tmp_268
		add     %elementAddr_32, 0
		mov     qword [%elementAddr_32], -1
		mov     %elementAddr_36, %tmp_255
		add     %elementAddr_36, 8
		mov     qword [%elementAddr_36], -2
		mov     %elementAddr_39, %tmp_268
		add     %elementAddr_39, 8
		mov     qword [%elementAddr_39], 1
		mov     %elementAddr_42, %tmp_255
		add     %elementAddr_42, 16
		mov     qword [%elementAddr_42], 2
		mov     %elementAddr_46, %tmp_268
		add     %elementAddr_46, 16
		mov     qword [%elementAddr_46], -1
		mov     %elementAddr_49, %tmp_255
		add     %elementAddr_49, 24
		mov     qword [%elementAddr_49], 2
		mov     %elementAddr_52, %tmp_268
		add     %elementAddr_52, 24
		mov     qword [%elementAddr_52], 1
		mov     %elementAddr_56, %tmp_255
		add     %elementAddr_56, 32
		mov     qword [%elementAddr_56], -1
		mov     %elementAddr_60, %tmp_268
		add     %elementAddr_60, 32
		mov     qword [%elementAddr_60], -2
		mov     %elementAddr_64, %tmp_255
		add     %elementAddr_64, 40
		mov     qword [%elementAddr_64], -1
		mov     %elementAddr_67, %tmp_268
		add     %elementAddr_67, 40
		mov     qword [%elementAddr_67], 2
		mov     %elementAddr_70, %tmp_255
		add     %elementAddr_70, 48
		mov     qword [%elementAddr_70], 1
		mov     %elementAddr_74, %tmp_268
		add     %elementAddr_74, 48
		mov     qword [%elementAddr_74], -2
		mov     %elementAddr_77, %tmp_255
		add     %elementAddr_77, 56
		mov     qword [%elementAddr_77], 1
		mov     %elementAddr_80, %tmp_268
		add     %elementAddr_80, 56
		mov     qword [%elementAddr_80], 2
		mov     %alloca_24, 0
		mov     %alloca_23, %tmp_256
		mov     %alloca_22, 0
		mov     %alloca_21, %varDef_312
		mov     %alloca_20, %tmp_262
		mov     %alloca_19, %tmp_266
		mov     %alloca_18, %tmp_267
__L_44:
		mov     %varDef_326, %alloca_24
		mov     %varDef_327, %alloca_23
		mov     %varDef_328, %alloca_22
		mov     %varDef_329, %alloca_21
		mov     %varDef_330, %alloca_20
		mov     %varDef_331, %alloca_19
		mov     %varDef_332, %alloca_18
		cmp     %varDef_328, %varDef_326
		jle     __L_45
__L_46:
		mov     %alloca_14, %varDef_326
		mov     %alloca_13, %varDef_327
		mov     %alloca_12, %varDef_329
		mov     %alloca_11, %varDef_330
		mov     %alloca_10, %varDef_331
		mov     %alloca_9, %varDef_332
		jmp     __L_47
__L_45:
		mov     %offset_86, %varDef_328
		shl     %offset_86, 3
		mov     %elementAddr_87, %tmp_257
		add     %elementAddr_87, %offset_86
		mov     %elementVal_88, qword [%elementAddr_87]
		mov     %elementAddr_92, %tmp_258
		add     %elementAddr_92, %offset_86
		mov     %elementVal_93, qword [%elementAddr_92]
		mov     %offset_96, %elementVal_88
		shl     %offset_96, 3
		mov     %elementAddr_97, %carrayBase_143
		add     %elementAddr_97, %offset_96
		mov     %arrayBase_98, qword [%elementAddr_97]
		mov     %offset_100, %elementVal_93
		shl     %offset_100, 3
		mov     %elementAddr_101, %arrayBase_98
		add     %elementAddr_101, %offset_100
		mov     %elementVal_102, qword [%elementAddr_101]
		mov     %alloca_45, %varDef_337
		mov     %alloca_44, %varDef_338
		mov     %alloca_43, %varDef_339
		mov     %alloca_42, %varDef_340
		mov     %alloca_41, %varDef_341
		mov     %alloca_40, %varDef_342
		mov     %alloca_39, %varDef_343
		mov     %alloca_38, %varDef_344
		mov     %alloca_37, %varDef_326
		mov     %alloca_36, %varDef_327
		mov     %alloca_35, 0
__L_48:
		mov     %varDef_337, %alloca_45
		mov     %varDef_338, %alloca_44
		mov     %varDef_339, %alloca_43
		mov     %varDef_340, %alloca_42
		mov     %varDef_341, %alloca_41
		mov     %varDef_342, %alloca_40
		mov     %varDef_343, %alloca_39
		mov     %varDef_344, %alloca_38
		mov     %varDef_345, %alloca_37
		mov     %varDef_346, %alloca_36
		mov     %varDef_347, %alloca_35
		cmp     %varDef_347, 8
		jge     __L_49
__L_50:
		mov     %offset_108, %varDef_347
		shl     %offset_108, 3
		mov     %elementAddr_109, %tmp_255
		add     %elementAddr_109, %offset_108
		mov     %elementVal_110, qword [%elementAddr_109]
		mov     %res_111, %elementVal_88
		add     %res_111, %elementVal_110
		mov     %elementAddr_116, %tmp_268
		add     %elementAddr_116, %offset_108
		mov     %elementVal_117, qword [%elementAddr_116]
		mov     %res_118, %elementVal_93
		add     %res_118, %elementVal_117
		cmp     %res_111, %res_0
		jge     __L_51
__L_52:
		cmp     %res_111, 0
		jl      __L_51
__L_53:
		mov     %alloca_25, 1
		jmp     __L_54
__L_51:
		mov     %alloca_25, 0
__L_54:
		mov     %varDef_353, %alloca_25
		cmp     %varDef_353, 0
		jne     __L_55
__L_56:
		mov     %alloca_32, %varDef_342
		mov     %alloca_31, %varDef_343
		mov     %alloca_30, %varDef_344
		mov     %alloca_29, %varDef_345
		mov     %alloca_28, %varDef_346
		jmp     __L_57
__L_55:
		cmp     %res_118, %res_0
		jge     __L_58
__L_59:
		cmp     %res_118, 0
		jl      __L_58
__L_60:
		mov     %alloca_15, 1
		jmp     __L_61
__L_58:
		mov     %alloca_15, 0
__L_61:
		mov     %varDef_358, %alloca_15
		cmp     %varDef_358, 0
		jne     __L_62
__L_63:
		mov     %alloca_32, %varDef_358
		mov     %alloca_31, %varDef_358
		mov     %alloca_30, %res_118
		mov     %alloca_29, %varDef_345
		mov     %alloca_28, %varDef_346
		jmp     __L_57
__L_62:
		mov     %coffset_181, %res_111
		shl     %coffset_181, 3
		mov     %celementAddr_182, %carrayBase_143
		add     %celementAddr_182, %coffset_181
		mov     %carrayBase_183, qword [%celementAddr_182]
		mov     %coffset_185, %res_118
		shl     %coffset_185, 3
		mov     %celementAddr_186, %carrayBase_183
		add     %celementAddr_186, %coffset_185
		mov     %celementVal_187, qword [%celementAddr_186]
		cmp     %celementVal_187, -1
		je      __L_64
__L_65:
		mov     %alloca_32, %varDef_358
		mov     %alloca_31, %varDef_358
		mov     %alloca_30, %res_118
		mov     %alloca_29, %varDef_345
		mov     %alloca_28, %varDef_346
		jmp     __L_57
__L_64:
		mov     %cnewVal_192, %varDef_345
		inc     %cnewVal_192
		mov     %coffset_196, %cnewVal_192
		shl     %coffset_196, 3
		mov     %celementAddr_197, %tmp_257
		add     %celementAddr_197, %coffset_196
		mov     qword [%celementAddr_197], %res_111
		mov     %celementAddr_202, %tmp_258
		add     %celementAddr_202, %coffset_196
		mov     qword [%celementAddr_202], %res_118
		mov     %cres_204, %elementVal_102
		add     %cres_204, 1
		mov     %coffset_207, %res_111
		shl     %coffset_207, 3
		mov     %celementAddr_208, %carrayBase_143
		add     %celementAddr_208, %coffset_207
		mov     %carrayBase_209, qword [%celementAddr_208]
		mov     %coffset_211, %res_118
		shl     %coffset_211, 3
		mov     %celementAddr_212, %carrayBase_209
		add     %celementAddr_212, %coffset_211
		mov     qword [%celementAddr_212], %cres_204
		cmp     %res_111, %res_2
		je      __L_66
__L_67:
		mov     %alloca_32, %varDef_358
		mov     %alloca_31, %varDef_358
		mov     %alloca_30, %res_118
		mov     %alloca_29, %cnewVal_192
		mov     %alloca_28, %varDef_346
		jmp     __L_57
__L_66:
		cmp     %res_118, %res_2
		je      __L_68
__L_69:
		mov     %alloca_32, %varDef_358
		mov     %alloca_31, %varDef_358
		mov     %alloca_30, %res_118
		mov     %alloca_29, %cnewVal_192
		mov     %alloca_28, %varDef_346
		jmp     __L_57
__L_68:
		mov     %alloca_32, %varDef_358
		mov     %alloca_31, %varDef_358
		mov     %alloca_30, %res_118
		mov     %alloca_29, %cnewVal_192
		mov     %alloca_28, 1
__L_57:
		mov     %varDef_362, %alloca_32
		mov     %varDef_363, %alloca_31
		mov     %varDef_364, %alloca_30
		mov     %varDef_365, %alloca_29
		mov     %varDef_366, %alloca_28
		mov     %newVal_121, %varDef_347
		inc     %newVal_121
		mov     %alloca_45, %res_118
		mov     %alloca_44, %res_111
		mov     %alloca_43, %varDef_353
		mov     %alloca_42, %varDef_353
		mov     %alloca_41, %res_111
		mov     %alloca_40, %varDef_362
		mov     %alloca_39, %varDef_363
		mov     %alloca_38, %varDef_364
		mov     %alloca_37, %varDef_365
		mov     %alloca_36, %varDef_366
		mov     %alloca_35, %newVal_121
		jmp     __L_48
__L_49:
		cmp     %varDef_346, 1
		jne     __L_70
__L_71:
		mov     %alloca_14, %varDef_345
		mov     %alloca_13, %varDef_346
		mov     %alloca_12, %varDef_347
		mov     %alloca_11, %elementVal_102
		mov     %alloca_10, %elementVal_88
		mov     %alloca_9, %elementVal_93
		jmp     __L_47
__L_70:
		mov     %newVal_126, %varDef_328
		inc     %newVal_126
		mov     %alloca_24, %varDef_345
		mov     %alloca_23, %varDef_346
		mov     %alloca_22, %newVal_126
		mov     %alloca_21, %varDef_347
		mov     %alloca_20, %elementVal_102
		mov     %alloca_19, %elementVal_88
		mov     %alloca_18, %elementVal_93
		jmp     __L_44
__L_47:
		mov     %varDef_377, %alloca_14
		mov     %varDef_378, %alloca_13
		mov     %varDef_379, %alloca_12
		mov     %varDef_380, %alloca_11
		mov     %varDef_381, %alloca_10
		mov     %varDef_382, %alloca_9
		cmp     %varDef_378, 1
		jne     __L_72
__L_73:
		mov     %offset_131, %res_2
		shl     %offset_131, 3
		mov     %elementAddr_132, %carrayBase_143
		add     %elementAddr_132, %offset_131
		mov     %arrayBase_133, qword [%elementAddr_132]
		mov     %elementAddr_136, %arrayBase_133
		add     %elementAddr_136, %offset_131
		mov     %elementVal_137, qword [%elementAddr_136]
		mov     rdi, %elementVal_137
		call    __printlnInt
		jmp     __L_74
__L_72:
		mov     rdi, __str_0
		call    print
__L_74:
		mov     qword [rel _tail], %varDef_377
		mov     qword [rel _targety], %res_2
		mov     qword [rel _ok], %varDef_378
		mov     qword [rel _head], %varDef_328
		mov     qword [rel _step], %carrayBase_143
		mov     qword [rel _j], %varDef_379
		mov     qword [rel _now], %varDef_380
		mov     qword [rel _N], %res_0
		mov     qword [rel _targetx], %res_2
		mov     qword [rel _i], %varDef_313
		mov     qword [rel _x], %varDef_381
		mov     qword [rel _y], %varDef_382
		mov     r12, %local_r12
		mov     rbx, %local_rbx
		mov     r14, %local_r14
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


