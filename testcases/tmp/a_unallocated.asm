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
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_r12, r12
		mov     qword [rel _N], 100000
		mov     %idVal_0, qword [rel _N]
		mov     %memberLength_2, %idVal_0
		imul    %memberLength_2, 8
		mov     %arrayLength_3, %memberLength_2
		add     %arrayLength_3, 8
		mov     rdi, %arrayLength_3
		call    malloc
		mov     %arrayPtr_1, rax
		mov     qword [%arrayPtr_1], %idVal_0
		mov     qword [rel _a], %arrayPtr_1
		mov     %idVal_4, qword [rel _N]
		mov     %memberLength_6, %idVal_4
		imul    %memberLength_6, 8
		mov     %arrayLength_7, %memberLength_6
		add     %arrayLength_7, 8
		mov     rdi, %arrayLength_7
		call    malloc
		mov     %arrayPtr_5, rax
		mov     qword [%arrayPtr_5], %idVal_4
		mov     qword [rel _bak], %arrayPtr_5
		mov     %idVal_8, qword [rel _N]
		mov     %memberLength_10, %idVal_8
		imul    %memberLength_10, 8
		mov     %arrayLength_11, %memberLength_10
		add     %arrayLength_11, 8
		mov     rdi, %arrayLength_11
		call    malloc
		mov     %arrayPtr_9, rax
		mov     qword [%arrayPtr_9], %idVal_8
		mov     qword [rel _a_left], %arrayPtr_9
		mov     %idVal_12, qword [rel _N]
		mov     %memberLength_14, %idVal_12
		imul    %memberLength_14, 8
		mov     %arrayLength_15, %memberLength_14
		add     %arrayLength_15, 8
		mov     rdi, %arrayLength_15
		call    malloc
		mov     %arrayPtr_13, rax
		mov     qword [%arrayPtr_13], %idVal_12
		mov     qword [rel _a_right], %arrayPtr_13
		mov     %idVal_16, qword [rel _N]
		mov     %memberLength_18, %idVal_16
		imul    %memberLength_18, 8
		mov     %arrayLength_19, %memberLength_18
		add     %arrayLength_19, 8
		mov     rdi, %arrayLength_19
		call    malloc
		mov     %arrayPtr_17, rax
		mov     qword [%arrayPtr_17], %idVal_16
		mov     qword [rel _heap], %arrayPtr_17
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		ret     

_A_Optimizer:
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_r12, r12
		mov     %thisVal_0, rdi
		mov     rdi, 24
		call    malloc
		mov     %arrayPtr_3, rax
		mov     qword [%arrayPtr_3], 2
		mov     %arrayEndPos_6, %arrayPtr_3
		add     %arrayEndPos_6, 24
		mov     %startPos_7, %arrayPtr_3
		add     %startPos_7, 8
		mov     %alloca_49, %startPos_7
		mov     %alloca_48, 0
		mov     %alloca_47, 0
		mov     %alloca_46, 0
		mov     %alloca_45, 0
		mov     %alloca_44, 0
		mov     %alloca_43, 0
		mov     %alloca_42, 0
__L_1:
		mov     %varDef_393, %alloca_49
		mov     %varDef_395, %alloca_48
		mov     %varDef_396, %alloca_47
		mov     %varDef_397, %alloca_46
		mov     %varDef_398, %alloca_45
		mov     %varDef_399, %alloca_44
		mov     %varDef_400, %alloca_43
		mov     %varDef_401, %alloca_42
		cmp     %varDef_393, %arrayEndPos_6
		setl    al
		movzx   %condition_10, al
		cmp     %condition_10, 0
		je      __L_2
__L_3:
		mov     rdi, 24
		call    malloc
		mov     %arrayPtr_11, rax
		mov     qword [%arrayPtr_11], 2
		mov     %arrayEndPos_14, %arrayPtr_11
		add     %arrayEndPos_14, 24
		mov     %startPos_15, %arrayPtr_11
		add     %startPos_15, 8
		mov     %alloca_17, %startPos_15
		mov     %alloca_16, %varDef_395
		mov     %alloca_15, %varDef_396
		mov     %alloca_14, %varDef_397
		mov     %alloca_13, %varDef_398
		mov     %alloca_12, %varDef_399
		mov     %alloca_11, %varDef_400
		mov     %alloca_10, %varDef_401
__L_4:
		mov     %varDef_403, %alloca_17
		mov     %varDef_404, %alloca_16
		mov     %varDef_405, %alloca_15
		mov     %varDef_406, %alloca_14
		mov     %varDef_407, %alloca_13
		mov     %varDef_408, %alloca_12
		mov     %varDef_409, %alloca_11
		mov     %varDef_410, %alloca_10
		cmp     %varDef_403, %arrayEndPos_14
		setl    al
		movzx   %condition_18, al
		cmp     %condition_18, 0
		je      __L_5
__L_6:
		mov     rdi, 24
		call    malloc
		mov     %arrayPtr_19, rax
		mov     qword [%arrayPtr_19], 2
		mov     %arrayEndPos_22, %arrayPtr_19
		add     %arrayEndPos_22, 24
		mov     %startPos_23, %arrayPtr_19
		add     %startPos_23, 8
		mov     %alloca_36, %startPos_23
		mov     %alloca_35, %varDef_405
		mov     %alloca_34, %varDef_406
		mov     %alloca_33, %varDef_407
		mov     %alloca_32, %varDef_408
		mov     %alloca_31, %varDef_409
		mov     %alloca_30, %varDef_410
__L_7:
		mov     %varDef_412, %alloca_36
		mov     %varDef_413, %alloca_35
		mov     %varDef_414, %alloca_34
		mov     %varDef_415, %alloca_33
		mov     %varDef_416, %alloca_32
		mov     %varDef_417, %alloca_31
		mov     %varDef_418, %alloca_30
		cmp     %varDef_412, %arrayEndPos_22
		setl    al
		movzx   %condition_26, al
		cmp     %condition_26, 0
		je      __L_8
__L_9:
		mov     rdi, 24
		call    malloc
		mov     %arrayPtr_27, rax
		mov     qword [%arrayPtr_27], 2
		mov     %arrayEndPos_30, %arrayPtr_27
		add     %arrayEndPos_30, 24
		mov     %startPos_31, %arrayPtr_27
		add     %startPos_31, 8
		mov     %alloca_6, %startPos_31
		mov     %alloca_5, %varDef_414
		mov     %alloca_4, %varDef_415
		mov     %alloca_3, %varDef_416
		mov     %alloca_2, %varDef_417
		mov     %alloca_1, %varDef_418
__L_10:
		mov     %varDef_420, %alloca_6
		mov     %varDef_421, %alloca_5
		mov     %varDef_422, %alloca_4
		mov     %varDef_423, %alloca_3
		mov     %varDef_424, %alloca_2
		mov     %varDef_425, %alloca_1
		cmp     %varDef_420, %arrayEndPos_30
		setl    al
		movzx   %condition_34, al
		cmp     %condition_34, 0
		je      __L_11
__L_12:
		mov     rdi, 24
		call    malloc
		mov     %arrayPtr_35, rax
		mov     qword [%arrayPtr_35], 2
		mov     %arrayEndPos_38, %arrayPtr_35
		add     %arrayEndPos_38, 24
		mov     %startPos_39, %arrayPtr_35
		add     %startPos_39, 8
		mov     %alloca_41, %startPos_39
		mov     %alloca_40, %varDef_422
		mov     %alloca_39, %varDef_423
		mov     %alloca_38, %varDef_424
		mov     %alloca_37, %varDef_425
__L_13:
		mov     %varDef_427, %alloca_41
		mov     %varDef_428, %alloca_40
		mov     %varDef_429, %alloca_39
		mov     %varDef_430, %alloca_38
		mov     %varDef_431, %alloca_37
		cmp     %varDef_427, %arrayEndPos_38
		setl    al
		movzx   %condition_42, al
		cmp     %condition_42, 0
		je      __L_14
__L_15:
		mov     rdi, 24
		call    malloc
		mov     %arrayPtr_43, rax
		mov     qword [%arrayPtr_43], 2
		mov     %arrayEndPos_46, %arrayPtr_43
		add     %arrayEndPos_46, 24
		mov     %startPos_47, %arrayPtr_43
		add     %startPos_47, 8
		mov     %alloca_21, %startPos_47
		mov     %alloca_20, %varDef_429
		mov     %alloca_19, %varDef_430
		mov     %alloca_18, %varDef_431
__L_16:
		mov     %varDef_433, %alloca_21
		mov     %varDef_434, %alloca_20
		mov     %varDef_435, %alloca_19
		mov     %varDef_436, %alloca_18
		cmp     %varDef_433, %arrayEndPos_46
		setl    al
		movzx   %condition_50, al
		cmp     %condition_50, 0
		je      __L_17
__L_18:
		mov     rdi, 24
		call    malloc
		mov     %arrayPtr_51, rax
		mov     qword [%arrayPtr_51], 2
		mov     %arrayEndPos_54, %arrayPtr_51
		add     %arrayEndPos_54, 24
		mov     %startPos_55, %arrayPtr_51
		add     %startPos_55, 8
		mov     %alloca_9, %startPos_55
		mov     %alloca_8, %varDef_435
		mov     %alloca_7, %varDef_436
__L_19:
		mov     %varDef_438, %alloca_9
		mov     %varDef_439, %alloca_8
		mov     %varDef_440, %alloca_7
		cmp     %varDef_438, %arrayEndPos_54
		setl    al
		movzx   %condition_58, al
		cmp     %condition_58, 0
		je      __L_20
__L_21:
		mov     rdi, 24
		call    malloc
		mov     %arrayPtr_59, rax
		mov     qword [%arrayPtr_59], 2
		mov     %arrayEndPos_62, %arrayPtr_59
		add     %arrayEndPos_62, 24
		mov     %startPos_63, %arrayPtr_59
		add     %startPos_63, 8
		mov     %alloca_29, %startPos_63
		mov     %alloca_28, %varDef_440
__L_22:
		mov     %varDef_442, %alloca_29
		mov     %varDef_443, %alloca_28
		cmp     %varDef_442, %arrayEndPos_62
		setl    al
		movzx   %condition_66, al
		cmp     %condition_66, 0
		je      __L_23
__L_24:
		mov     rdi, 24
		call    malloc
		mov     %arrayPtr_67, rax
		mov     qword [%arrayPtr_67], 2
		mov     %arrayEndPos_70, %arrayPtr_67
		add     %arrayEndPos_70, 24
		mov     %startPos_71, %arrayPtr_67
		add     %startPos_71, 8
		mov     %alloca_27, %startPos_71
__L_25:
		mov     %varDef_445, %alloca_27
		cmp     %varDef_445, %arrayEndPos_70
		setl    al
		movzx   %condition_74, al
		cmp     %condition_74, 0
		je      __L_26
__L_27:
		mov     rdi, 24
		call    malloc
		mov     %arrayPtr_75, rax
		mov     qword [%arrayPtr_75], 2
		mov     qword [%varDef_445], %arrayPtr_75
		mov     %pos_78, %varDef_445
		add     %pos_78, 8
		mov     %alloca_27, %pos_78
		jmp     __L_25
__L_26:
		mov     qword [%varDef_442], %arrayPtr_67
		mov     %pos_79, %varDef_442
		add     %pos_79, 8
		mov     %alloca_29, %pos_79
		mov     %alloca_28, %varDef_445
		jmp     __L_22
__L_23:
		mov     qword [%varDef_438], %arrayPtr_59
		mov     %pos_80, %varDef_438
		add     %pos_80, 8
		mov     %alloca_9, %pos_80
		mov     %alloca_8, %varDef_442
		mov     %alloca_7, %varDef_443
		jmp     __L_19
__L_20:
		mov     qword [%varDef_433], %arrayPtr_51
		mov     %pos_81, %varDef_433
		add     %pos_81, 8
		mov     %alloca_21, %pos_81
		mov     %alloca_20, %varDef_438
		mov     %alloca_19, %varDef_439
		mov     %alloca_18, %varDef_440
		jmp     __L_16
__L_17:
		mov     qword [%varDef_427], %arrayPtr_43
		mov     %pos_82, %varDef_427
		add     %pos_82, 8
		mov     %alloca_41, %pos_82
		mov     %alloca_40, %varDef_433
		mov     %alloca_39, %varDef_434
		mov     %alloca_38, %varDef_435
		mov     %alloca_37, %varDef_436
		jmp     __L_13
__L_14:
		mov     qword [%varDef_420], %arrayPtr_35
		mov     %pos_83, %varDef_420
		add     %pos_83, 8
		mov     %alloca_6, %pos_83
		mov     %alloca_5, %varDef_427
		mov     %alloca_4, %varDef_428
		mov     %alloca_3, %varDef_429
		mov     %alloca_2, %varDef_430
		mov     %alloca_1, %varDef_431
		jmp     __L_10
__L_11:
		mov     qword [%varDef_412], %arrayPtr_27
		mov     %pos_84, %varDef_412
		add     %pos_84, 8
		mov     %alloca_36, %pos_84
		mov     %alloca_35, %varDef_420
		mov     %alloca_34, %varDef_421
		mov     %alloca_33, %varDef_422
		mov     %alloca_32, %varDef_423
		mov     %alloca_31, %varDef_424
		mov     %alloca_30, %varDef_425
		jmp     __L_7
__L_8:
		mov     qword [%varDef_403], %arrayPtr_19
		mov     %pos_85, %varDef_403
		add     %pos_85, 8
		mov     %alloca_17, %pos_85
		mov     %alloca_16, %varDef_412
		mov     %alloca_15, %varDef_413
		mov     %alloca_14, %varDef_414
		mov     %alloca_13, %varDef_415
		mov     %alloca_12, %varDef_416
		mov     %alloca_11, %varDef_417
		mov     %alloca_10, %varDef_418
		jmp     __L_4
__L_5:
		mov     qword [%varDef_393], %arrayPtr_11
		mov     %pos_86, %varDef_393
		add     %pos_86, 8
		mov     %alloca_49, %pos_86
		mov     %alloca_48, %varDef_404
		mov     %alloca_47, %varDef_405
		mov     %alloca_46, %varDef_406
		mov     %alloca_45, %varDef_407
		mov     %alloca_44, %varDef_408
		mov     %alloca_43, %varDef_409
		mov     %alloca_42, %varDef_410
		jmp     __L_1
__L_2:
		mov     %alloca_24, 1
		mov     %alloca_23, 0
__L_28:
		mov     %varDef_458, %alloca_24
		mov     %varDef_459, %alloca_23
		cmp     %varDef_458, 1000
		setle   al
		movzx   %res_104, al
		cmp     %res_104, 0
		je      __L_29
__L_30:
		mov     %res_106, 123
		add     %res_106, %varDef_458
		mov     %arrayBase_108, %arrayPtr_3
		add     %arrayBase_108, 8
		mov     %elementAddr_110, %arrayBase_108
		add     %elementAddr_110, 0
		mov     %arrayPtr_111, qword [%elementAddr_110]
		mov     %arrayBase_112, %arrayPtr_111
		add     %arrayBase_112, 8
		mov     %elementAddr_114, %arrayBase_112
		add     %elementAddr_114, 8
		mov     %arrayPtr_115, qword [%elementAddr_114]
		mov     %arrayBase_116, %arrayPtr_115
		add     %arrayBase_116, 8
		mov     %elementAddr_118, %arrayBase_116
		add     %elementAddr_118, 0
		mov     %arrayPtr_119, qword [%elementAddr_118]
		mov     %arrayBase_120, %arrayPtr_119
		add     %arrayBase_120, 8
		mov     %elementAddr_122, %arrayBase_120
		add     %elementAddr_122, 8
		mov     %arrayPtr_123, qword [%elementAddr_122]
		mov     %arrayBase_124, %arrayPtr_123
		add     %arrayBase_124, 8
		mov     %elementAddr_126, %arrayBase_124
		add     %elementAddr_126, 0
		mov     %arrayPtr_127, qword [%elementAddr_126]
		mov     %arrayBase_128, %arrayPtr_127
		add     %arrayBase_128, 8
		mov     %elementAddr_130, %arrayBase_128
		add     %elementAddr_130, 8
		mov     %arrayPtr_131, qword [%elementAddr_130]
		mov     %arrayBase_132, %arrayPtr_131
		add     %arrayBase_132, 8
		mov     %elementAddr_134, %arrayBase_132
		add     %elementAddr_134, 0
		mov     %arrayPtr_135, qword [%elementAddr_134]
		mov     %arrayBase_136, %arrayPtr_135
		add     %arrayBase_136, 8
		mov     %elementAddr_138, %arrayBase_136
		add     %elementAddr_138, 8
		mov     %arrayPtr_139, qword [%elementAddr_138]
		mov     %arrayBase_140, %arrayPtr_139
		add     %arrayBase_140, 8
		mov     %elementAddr_142, %arrayBase_140
		add     %elementAddr_142, 0
		mov     %arrayPtr_143, qword [%elementAddr_142]
		mov     %arrayBase_144, %arrayPtr_143
		add     %arrayBase_144, 8
		mov     %elementAddr_146, %arrayBase_144
		add     %elementAddr_146, 8
		mov     qword [%elementAddr_146], %res_106
		mov     %arrayPtr_152, qword [%elementAddr_110]
		mov     %arrayBase_153, %arrayPtr_152
		add     %arrayBase_153, 8
		mov     %elementAddr_155, %arrayBase_153
		add     %elementAddr_155, 8
		mov     %arrayPtr_156, qword [%elementAddr_155]
		mov     %arrayBase_157, %arrayPtr_156
		add     %arrayBase_157, 8
		mov     %elementAddr_159, %arrayBase_157
		add     %elementAddr_159, 0
		mov     %arrayPtr_160, qword [%elementAddr_159]
		mov     %arrayBase_161, %arrayPtr_160
		add     %arrayBase_161, 8
		mov     %elementAddr_163, %arrayBase_161
		add     %elementAddr_163, 8
		mov     %arrayPtr_164, qword [%elementAddr_163]
		mov     %arrayBase_165, %arrayPtr_164
		add     %arrayBase_165, 8
		mov     %elementAddr_167, %arrayBase_165
		add     %elementAddr_167, 0
		mov     %arrayPtr_168, qword [%elementAddr_167]
		mov     %arrayBase_169, %arrayPtr_168
		add     %arrayBase_169, 8
		mov     %elementAddr_171, %arrayBase_169
		add     %elementAddr_171, 8
		mov     %arrayPtr_172, qword [%elementAddr_171]
		mov     %arrayBase_173, %arrayPtr_172
		add     %arrayBase_173, 8
		mov     %elementAddr_175, %arrayBase_173
		add     %elementAddr_175, 0
		mov     %arrayPtr_176, qword [%elementAddr_175]
		mov     %arrayBase_177, %arrayPtr_176
		add     %arrayBase_177, 8
		mov     %elementAddr_179, %arrayBase_177
		add     %elementAddr_179, 8
		mov     %arrayPtr_180, qword [%elementAddr_179]
		mov     %arrayBase_181, %arrayPtr_180
		add     %arrayBase_181, 8
		mov     %elementAddr_183, %arrayBase_181
		add     %elementAddr_183, 0
		mov     %arrayPtr_184, qword [%elementAddr_183]
		mov     %arrayBase_185, %arrayPtr_184
		add     %arrayBase_185, 8
		mov     %elementAddr_187, %arrayBase_185
		add     %elementAddr_187, 8
		mov     %elementVal_188, qword [%elementAddr_187]
		mov     %res_189, %varDef_459
		add     %res_189, %elementVal_188
		mov     %newVal_192, %varDef_458
		inc     %newVal_192
		mov     %alloca_24, %newVal_192
		mov     %alloca_23, %res_189
		jmp     __L_28
__L_29:
		mov     rdi, %varDef_459
		call    toString
		mov     %res_193, rax
		mov     rdi, %res_193
		call    println
		mov     %alloca_26, 1
		mov     %alloca_25, %varDef_459
__L_31:
		mov     %varDef_463, %alloca_26
		mov     %varDef_464, %alloca_25
		cmp     %varDef_463, 1000000
		setle   al
		movzx   %res_196, al
		cmp     %res_196, 0
		je      __L_32
__L_33:
		mov     %res_207, 18760
		mov     rax, %res_207
		cqo     
		mov     %divisor_1, 1234
		idiv    %divisor_1
		mov     %res_208, rdx
		mov     %res_209, %res_208
		imul    %res_209, 2345
		mov     rax, %res_209
		cqo     
		mov     %divisor_2, 1234
		idiv    %divisor_2
		mov     %res_210, rdx
		mov     %res_211, %res_210
		imul    %res_211, 2345
		mov     rax, %res_211
		cqo     
		mov     %divisor_3, 1234
		idiv    %divisor_3
		mov     %res_212, rdx
		mov     %res_213, %res_212
		imul    %res_213, 2345
		mov     rax, %res_213
		cqo     
		mov     %divisor_4, 1234
		idiv    %divisor_4
		mov     %res_214, rdx
		mov     %res_215, %res_214
		imul    %res_215, 2345
		mov     rax, %res_215
		cqo     
		mov     %divisor_5, 1234
		idiv    %divisor_5
		mov     %res_216, rdx
		mov     %res_217, %res_216
		imul    %res_217, 2345
		mov     rax, %res_217
		cqo     
		mov     %divisor_6, 1234
		idiv    %divisor_6
		mov     %res_218, rdx
		mov     %res_219, %res_218
		imul    %res_219, 2345
		mov     rax, %res_219
		cqo     
		mov     %divisor_7, 1234
		idiv    %divisor_7
		mov     %res_220, rdx
		mov     %res_221, %res_220
		imul    %res_221, 2345
		mov     rax, %res_221
		cqo     
		mov     %divisor_8, 1234
		idiv    %divisor_8
		mov     %res_222, rdx
		mov     %res_223, %res_222
		imul    %res_223, 2345
		mov     rax, %res_223
		cqo     
		mov     %divisor_9, 1234
		idiv    %divisor_9
		mov     %res_224, rdx
		mov     %res_225, %res_224
		imul    %res_225, 2345
		mov     rax, %res_225
		cqo     
		mov     %divisor_10, 1234
		idiv    %divisor_10
		mov     %res_226, rdx
		mov     %res_227, %res_226
		imul    %res_227, 2345
		mov     rax, %res_227
		cqo     
		mov     %divisor_11, 1234
		idiv    %divisor_11
		mov     %res_228, rdx
		mov     %res_229, %res_228
		imul    %res_229, 2345
		mov     rax, %res_229
		cqo     
		mov     %divisor_12, 1234
		idiv    %divisor_12
		mov     %res_230, rdx
		mov     %res_231, %res_230
		imul    %res_231, 2345
		mov     rax, %res_231
		cqo     
		mov     %divisor_13, 1234
		idiv    %divisor_13
		mov     %res_232, rdx
		mov     %res_233, %res_232
		imul    %res_233, 2345
		mov     rax, %res_233
		cqo     
		mov     %divisor_14, 1234
		idiv    %divisor_14
		mov     %res_234, rdx
		mov     %res_235, %res_234
		imul    %res_235, 2345
		mov     rax, %res_235
		cqo     
		mov     %divisor_15, 1234
		idiv    %divisor_15
		mov     %res_236, rdx
		mov     %res_237, %res_236
		imul    %res_237, 2345
		mov     rax, %res_237
		cqo     
		mov     %divisor_16, 1234
		idiv    %divisor_16
		mov     %res_238, rdx
		mov     %res_239, %res_238
		imul    %res_239, 2345
		mov     rax, %res_239
		cqo     
		mov     %divisor_17, 1234
		idiv    %divisor_17
		mov     %res_240, rdx
		mov     %res_241, %res_240
		imul    %res_241, 2345
		mov     rax, %res_241
		cqo     
		mov     %divisor_18, 1234
		idiv    %divisor_18
		mov     %res_242, rdx
		mov     %res_243, %res_242
		imul    %res_243, 2345
		mov     rax, %res_243
		cqo     
		mov     %divisor_19, 1234
		idiv    %divisor_19
		mov     %res_244, rdx
		mov     %res_245, %res_244
		imul    %res_245, 2345
		mov     rax, %res_245
		cqo     
		mov     %divisor_20, 1234
		idiv    %divisor_20
		mov     %res_246, rdx
		mov     %res_247, %res_246
		imul    %res_247, 2345
		mov     rax, %res_247
		cqo     
		mov     %divisor_21, 1234
		idiv    %divisor_21
		mov     %res_248, rdx
		mov     %res_249, %res_248
		imul    %res_249, 2345
		mov     rax, %res_249
		cqo     
		mov     %divisor_22, 1234
		idiv    %divisor_22
		mov     %res_250, rdx
		mov     %res_251, %res_250
		imul    %res_251, 2345
		mov     rax, %res_251
		cqo     
		mov     %divisor_23, 1234
		idiv    %divisor_23
		mov     %res_252, rdx
		mov     %res_253, %res_252
		imul    %res_253, 2345
		mov     rax, %res_253
		cqo     
		mov     %divisor_24, 1234
		idiv    %divisor_24
		mov     %res_254, rdx
		mov     %res_255, %res_254
		imul    %res_255, 2345
		mov     rax, %res_255
		cqo     
		mov     %divisor_25, 1234
		idiv    %divisor_25
		mov     %res_256, rdx
		mov     %res_257, %res_256
		imul    %res_257, 2345
		mov     rax, %res_257
		cqo     
		mov     %divisor_26, 1234
		idiv    %divisor_26
		mov     %res_258, rdx
		mov     %res_259, %res_258
		imul    %res_259, 2345
		mov     rax, %res_259
		cqo     
		mov     %divisor_27, 1234
		idiv    %divisor_27
		mov     %res_260, rdx
		mov     %res_261, %res_260
		imul    %res_261, 2345
		mov     rax, %res_261
		cqo     
		mov     %divisor_28, 1234
		idiv    %divisor_28
		mov     %res_262, rdx
		mov     %res_263, %res_262
		imul    %res_263, 2345
		mov     rax, %res_263
		cqo     
		mov     %divisor_29, 1234
		idiv    %divisor_29
		mov     %res_264, rdx
		mov     %res_265, %res_264
		imul    %res_265, 2345
		mov     rax, %res_265
		cqo     
		mov     %divisor_30, 1234
		idiv    %divisor_30
		mov     %res_266, rdx
		mov     %res_267, %res_266
		imul    %res_267, 2345
		mov     rax, %res_267
		cqo     
		mov     %divisor_31, 1234
		idiv    %divisor_31
		mov     %res_268, rdx
		mov     %res_269, %res_268
		imul    %res_269, 2345
		mov     rax, %res_269
		cqo     
		mov     %divisor_32, 1234
		idiv    %divisor_32
		mov     %res_270, rdx
		mov     %res_271, %res_270
		imul    %res_271, 2345
		mov     rax, %res_271
		cqo     
		mov     %divisor_33, 1234
		idiv    %divisor_33
		mov     %res_272, rdx
		mov     %res_273, %res_272
		imul    %res_273, 2345
		mov     rax, %res_273
		cqo     
		mov     %divisor_34, 1234
		idiv    %divisor_34
		mov     %res_274, rdx
		mov     %res_275, %res_274
		imul    %res_275, 2345
		mov     rax, %res_275
		cqo     
		mov     %divisor_35, 1234
		idiv    %divisor_35
		mov     %res_276, rdx
		mov     %res_277, %res_276
		imul    %res_277, 2345
		mov     rax, %res_277
		cqo     
		mov     %divisor_36, 1234
		idiv    %divisor_36
		mov     %res_278, rdx
		mov     %res_279, %res_278
		imul    %res_279, 2345
		mov     rax, %res_279
		cqo     
		mov     %divisor_37, 1234
		idiv    %divisor_37
		mov     %res_280, rdx
		mov     %res_281, %res_280
		imul    %res_281, 2345
		mov     rax, %res_281
		cqo     
		mov     %divisor_38, 1234
		idiv    %divisor_38
		mov     %res_282, rdx
		mov     %res_283, %res_282
		imul    %res_283, 2345
		mov     rax, %res_283
		cqo     
		mov     %divisor_39, 1234
		idiv    %divisor_39
		mov     %res_284, rdx
		mov     %res_285, %res_284
		imul    %res_285, 2345
		mov     rax, %res_285
		cqo     
		mov     %divisor_40, 1234
		idiv    %divisor_40
		mov     %res_286, rdx
		mov     %res_287, %res_286
		imul    %res_287, 2345
		mov     rax, %res_287
		cqo     
		mov     %divisor_41, 1234
		idiv    %divisor_41
		mov     %res_288, rdx
		mov     %res_289, %res_288
		imul    %res_289, 2345
		mov     rax, %res_289
		cqo     
		mov     %divisor_42, 1234
		idiv    %divisor_42
		mov     %res_290, rdx
		mov     %res_291, %res_290
		imul    %res_291, 2345
		mov     rax, %res_291
		cqo     
		mov     %divisor_43, 1234
		idiv    %divisor_43
		mov     %res_292, rdx
		mov     %res_293, %res_292
		imul    %res_293, 2345
		mov     rax, %res_293
		cqo     
		mov     %divisor_44, 1234
		idiv    %divisor_44
		mov     %res_294, rdx
		mov     %res_295, %res_294
		imul    %res_295, 2345
		mov     rax, %res_295
		cqo     
		mov     %divisor_45, 1234
		idiv    %divisor_45
		mov     %res_296, rdx
		mov     %res_297, %res_296
		imul    %res_297, 2345
		mov     rax, %res_297
		cqo     
		mov     %divisor_46, 1234
		idiv    %divisor_46
		mov     %res_298, rdx
		mov     %res_299, %res_298
		imul    %res_299, 2345
		mov     rax, %res_299
		cqo     
		mov     %divisor_47, 1234
		idiv    %divisor_47
		mov     %res_300, rdx
		mov     %res_301, %res_300
		imul    %res_301, 2345
		mov     rax, %res_301
		cqo     
		mov     %divisor_48, 1234
		idiv    %divisor_48
		mov     %res_302, rdx
		mov     %res_303, %res_302
		imul    %res_303, 2345
		mov     rax, %res_303
		cqo     
		mov     %divisor_49, 1234
		idiv    %divisor_49
		mov     %res_304, rdx
		mov     %res_305, %res_304
		imul    %res_305, 2345
		mov     rax, %res_305
		cqo     
		mov     %divisor_50, 1234
		idiv    %divisor_50
		mov     %res_306, rdx
		mov     %res_307, %res_306
		imul    %res_307, 2345
		mov     rax, %res_307
		cqo     
		mov     %divisor_51, 1234
		idiv    %divisor_51
		mov     %res_308, rdx
		mov     %res_309, %res_308
		imul    %res_309, 2345
		mov     rax, %res_309
		cqo     
		mov     %divisor_52, 1234
		idiv    %divisor_52
		mov     %res_310, rdx
		mov     %res_311, %res_310
		imul    %res_311, 2345
		mov     rax, %res_311
		cqo     
		mov     %divisor_53, 1234
		idiv    %divisor_53
		mov     %res_312, rdx
		mov     %res_313, %res_312
		imul    %res_313, 2345
		mov     rax, %res_313
		cqo     
		mov     %divisor_54, 1234
		idiv    %divisor_54
		mov     %res_314, rdx
		mov     %res_315, %res_314
		imul    %res_315, 2345
		mov     rax, %res_315
		cqo     
		mov     %divisor_55, 1234
		idiv    %divisor_55
		mov     %res_316, rdx
		mov     %res_317, %res_316
		imul    %res_317, 2345
		mov     rax, %res_317
		cqo     
		mov     %divisor_56, 1234
		idiv    %divisor_56
		mov     %res_318, rdx
		mov     %res_319, %res_318
		imul    %res_319, 2345
		mov     rax, %res_319
		cqo     
		mov     %divisor_57, 1234
		idiv    %divisor_57
		mov     %res_320, rdx
		mov     %res_321, %res_320
		imul    %res_321, 2345
		mov     rax, %res_321
		cqo     
		mov     %divisor_58, 1234
		idiv    %divisor_58
		mov     %res_322, rdx
		mov     %res_323, %res_322
		imul    %res_323, 2345
		mov     rax, %res_323
		cqo     
		mov     %divisor_59, 1234
		idiv    %divisor_59
		mov     %res_324, rdx
		mov     %res_325, %res_324
		imul    %res_325, 2345
		mov     rax, %res_325
		cqo     
		mov     %divisor_60, 1234
		idiv    %divisor_60
		mov     %res_326, rdx
		mov     %res_327, %res_326
		imul    %res_327, 2345
		mov     rax, %res_327
		cqo     
		mov     %divisor_61, 1234
		idiv    %divisor_61
		mov     %res_328, rdx
		mov     %res_329, %res_328
		imul    %res_329, 2345
		mov     rax, %res_329
		cqo     
		mov     %divisor_62, 1234
		idiv    %divisor_62
		mov     %res_330, rdx
		mov     %res_331, %res_330
		imul    %res_331, 2345
		mov     rax, %res_331
		cqo     
		mov     %divisor_63, 1234
		idiv    %divisor_63
		mov     %res_332, rdx
		mov     %res_333, %res_332
		imul    %res_333, 2345
		mov     rax, %res_333
		cqo     
		mov     %divisor_64, 1234
		idiv    %divisor_64
		mov     %res_334, rdx
		mov     %res_335, %res_334
		imul    %res_335, 2345
		mov     rax, %res_335
		cqo     
		mov     %divisor_65, 1234
		idiv    %divisor_65
		mov     %res_336, rdx
		mov     %res_337, %res_336
		imul    %res_337, 2345
		mov     rax, %res_337
		cqo     
		mov     %divisor_66, 1234
		idiv    %divisor_66
		mov     %res_338, rdx
		mov     %res_339, %res_338
		imul    %res_339, 2345
		mov     rax, %res_339
		cqo     
		mov     %divisor_67, 1234
		idiv    %divisor_67
		mov     %res_340, rdx
		mov     %res_341, %res_340
		imul    %res_341, 2345
		mov     rax, %res_341
		cqo     
		mov     %divisor_68, 1234
		idiv    %divisor_68
		mov     %res_342, rdx
		mov     %res_343, %res_342
		imul    %res_343, 2345
		mov     rax, %res_343
		cqo     
		mov     %divisor_69, 1234
		idiv    %divisor_69
		mov     %res_344, rdx
		mov     %res_345, %res_344
		imul    %res_345, 2345
		mov     rax, %res_345
		cqo     
		mov     %divisor_70, 1234
		idiv    %divisor_70
		mov     %res_346, rdx
		mov     %res_347, %res_346
		imul    %res_347, 2345
		mov     rax, %res_347
		cqo     
		mov     %divisor_71, 1234
		idiv    %divisor_71
		mov     %res_348, rdx
		mov     %res_349, %res_348
		imul    %res_349, 2345
		mov     rax, %res_349
		cqo     
		mov     %divisor_72, 1234
		idiv    %divisor_72
		mov     %res_350, rdx
		mov     %res_351, %res_350
		imul    %res_351, 2345
		mov     rax, %res_351
		cqo     
		mov     %divisor_73, 1234
		idiv    %divisor_73
		mov     %res_352, rdx
		mov     %res_353, %res_352
		imul    %res_353, 2345
		mov     rax, %res_353
		cqo     
		mov     %divisor_74, 1234
		idiv    %divisor_74
		mov     %res_354, rdx
		mov     %res_355, %res_354
		imul    %res_355, 2345
		mov     rax, %res_355
		cqo     
		mov     %divisor_75, 1234
		idiv    %divisor_75
		mov     %res_356, rdx
		mov     %res_357, %res_356
		imul    %res_357, 2345
		mov     rax, %res_357
		cqo     
		mov     %divisor_76, 1234
		idiv    %divisor_76
		mov     %res_358, rdx
		mov     %res_359, %res_358
		imul    %res_359, 2345
		mov     rax, %res_359
		cqo     
		mov     %divisor_77, 1234
		idiv    %divisor_77
		mov     %res_360, rdx
		mov     %res_361, %res_360
		imul    %res_361, 2345
		mov     rax, %res_361
		cqo     
		mov     %divisor_78, 1234
		idiv    %divisor_78
		mov     %res_362, rdx
		mov     %res_363, %res_362
		imul    %res_363, 2345
		mov     rax, %res_363
		cqo     
		mov     %divisor_79, 1234
		idiv    %divisor_79
		mov     %res_364, rdx
		mov     %res_365, %res_364
		imul    %res_365, 2345
		mov     rax, %res_365
		cqo     
		mov     %divisor_80, 1234
		idiv    %divisor_80
		mov     %res_366, rdx
		mov     %res_367, %res_366
		imul    %res_367, 2345
		mov     rax, %res_367
		cqo     
		mov     %divisor_81, 1234
		idiv    %divisor_81
		mov     %res_368, rdx
		mov     %res_369, %res_368
		imul    %res_369, 2345
		mov     rax, %res_369
		cqo     
		mov     %divisor_82, 1234
		idiv    %divisor_82
		mov     %res_370, rdx
		mov     %res_371, %res_370
		imul    %res_371, 2345
		mov     rax, %res_371
		cqo     
		mov     %divisor_83, 1234
		idiv    %divisor_83
		mov     %res_372, rdx
		mov     %res_373, %res_372
		imul    %res_373, 2345
		mov     rax, %res_373
		cqo     
		mov     %divisor_84, 1234
		idiv    %divisor_84
		mov     %res_374, rdx
		mov     %res_375, %res_374
		imul    %res_375, 2345
		mov     rax, %res_375
		cqo     
		mov     %divisor_85, 1234
		idiv    %divisor_85
		mov     %res_376, rdx
		mov     %res_377, %res_376
		imul    %res_377, 2345
		mov     rax, %res_377
		cqo     
		mov     %divisor_86, 1234
		idiv    %divisor_86
		mov     %res_378, rdx
		mov     rax, %res_378
		cqo     
		mov     %divisor_87, 11
		idiv    %divisor_87
		mov     %res_379, rdx
		mov     %res_380, %varDef_464
		add     %res_380, %res_379
		mov     %newVal_383, %varDef_463
		inc     %newVal_383
		mov     %alloca_26, %newVal_383
		mov     %alloca_25, %res_380
		jmp     __L_31
__L_32:
		mov     rdi, %varDef_464
		call    toString
		mov     %res_384, rax
		mov     rdi, %res_384
		call    println
		mov     %alloca_22, 1
__L_34:
		mov     %varDef_468, %alloca_22
		cmp     %varDef_468, 200000000
		setle   al
		movzx   %res_387, al
		cmp     %res_387, 0
		je      __L_35
__L_36:
		mov     %newVal_390, %varDef_468
		inc     %newVal_390
		mov     %alloca_22, %newVal_390
		jmp     __L_34
__L_35:
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		ret     

_A_A:
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_r12, r12
		mov     %thisVal_0, rdi
		mov     rdi, 24
		call    malloc
		mov     %arrayPtr_2, rax
		mov     qword [%arrayPtr_2], 2
		mov     %arrayEndPos_5, %arrayPtr_2
		add     %arrayEndPos_5, 24
		mov     %startPos_6, %arrayPtr_2
		add     %startPos_6, 8
		mov     %alloca_63, %startPos_6
		mov     %alloca_62, 0
		mov     %alloca_61, 0
		mov     %alloca_60, 0
		mov     %alloca_59, 0
		mov     %alloca_58, 0
		mov     %alloca_57, 0
		mov     %alloca_56, 0
__L_37:
		mov     %varDef_90, %alloca_63
		mov     %varDef_92, %alloca_62
		mov     %varDef_93, %alloca_61
		mov     %varDef_94, %alloca_60
		mov     %varDef_95, %alloca_59
		mov     %varDef_96, %alloca_58
		mov     %varDef_97, %alloca_57
		mov     %varDef_98, %alloca_56
		cmp     %varDef_90, %arrayEndPos_5
		setl    al
		movzx   %condition_9, al
		cmp     %condition_9, 0
		je      __L_38
__L_39:
		mov     rdi, 24
		call    malloc
		mov     %arrayPtr_10, rax
		mov     qword [%arrayPtr_10], 2
		mov     %arrayEndPos_13, %arrayPtr_10
		add     %arrayEndPos_13, 24
		mov     %startPos_14, %arrayPtr_10
		add     %startPos_14, 8
		mov     %alloca_86, %startPos_14
		mov     %alloca_85, %varDef_92
		mov     %alloca_84, %varDef_93
		mov     %alloca_83, %varDef_94
		mov     %alloca_82, %varDef_95
		mov     %alloca_81, %varDef_96
		mov     %alloca_80, %varDef_97
		mov     %alloca_79, %varDef_98
__L_40:
		mov     %varDef_100, %alloca_86
		mov     %varDef_101, %alloca_85
		mov     %varDef_102, %alloca_84
		mov     %varDef_103, %alloca_83
		mov     %varDef_104, %alloca_82
		mov     %varDef_105, %alloca_81
		mov     %varDef_106, %alloca_80
		mov     %varDef_107, %alloca_79
		cmp     %varDef_100, %arrayEndPos_13
		setl    al
		movzx   %condition_17, al
		cmp     %condition_17, 0
		je      __L_41
__L_42:
		mov     rdi, 32
		call    malloc
		mov     %arrayPtr_18, rax
		mov     qword [%arrayPtr_18], 3
		mov     %arrayEndPos_21, %arrayPtr_18
		add     %arrayEndPos_21, 32
		mov     %startPos_22, %arrayPtr_18
		add     %startPos_22, 8
		mov     %alloca_93, %startPos_22
		mov     %alloca_92, %varDef_102
		mov     %alloca_91, %varDef_103
		mov     %alloca_90, %varDef_104
		mov     %alloca_89, %varDef_105
		mov     %alloca_88, %varDef_106
		mov     %alloca_87, %varDef_107
__L_43:
		mov     %varDef_109, %alloca_93
		mov     %varDef_110, %alloca_92
		mov     %varDef_111, %alloca_91
		mov     %varDef_112, %alloca_90
		mov     %varDef_113, %alloca_89
		mov     %varDef_114, %alloca_88
		mov     %varDef_115, %alloca_87
		cmp     %varDef_109, %arrayEndPos_21
		setl    al
		movzx   %condition_25, al
		cmp     %condition_25, 0
		je      __L_44
__L_45:
		mov     rdi, 24
		call    malloc
		mov     %arrayPtr_26, rax
		mov     qword [%arrayPtr_26], 2
		mov     %arrayEndPos_29, %arrayPtr_26
		add     %arrayEndPos_29, 24
		mov     %startPos_30, %arrayPtr_26
		add     %startPos_30, 8
		mov     %alloca_78, %startPos_30
		mov     %alloca_77, %varDef_111
		mov     %alloca_76, %varDef_112
		mov     %alloca_75, %varDef_113
		mov     %alloca_74, %varDef_114
		mov     %alloca_73, %varDef_115
__L_46:
		mov     %varDef_117, %alloca_78
		mov     %varDef_118, %alloca_77
		mov     %varDef_119, %alloca_76
		mov     %varDef_120, %alloca_75
		mov     %varDef_121, %alloca_74
		mov     %varDef_122, %alloca_73
		cmp     %varDef_117, %arrayEndPos_29
		setl    al
		movzx   %condition_33, al
		cmp     %condition_33, 0
		je      __L_47
__L_48:
		mov     rdi, 32
		call    malloc
		mov     %arrayPtr_34, rax
		mov     qword [%arrayPtr_34], 3
		mov     %arrayEndPos_37, %arrayPtr_34
		add     %arrayEndPos_37, 32
		mov     %startPos_38, %arrayPtr_34
		add     %startPos_38, 8
		mov     %alloca_72, %startPos_38
		mov     %alloca_71, %varDef_119
		mov     %alloca_70, %varDef_120
		mov     %alloca_69, %varDef_121
		mov     %alloca_68, %varDef_122
__L_49:
		mov     %varDef_124, %alloca_72
		mov     %varDef_125, %alloca_71
		mov     %varDef_126, %alloca_70
		mov     %varDef_127, %alloca_69
		mov     %varDef_128, %alloca_68
		cmp     %varDef_124, %arrayEndPos_37
		setl    al
		movzx   %condition_41, al
		cmp     %condition_41, 0
		je      __L_50
__L_51:
		mov     rdi, 24
		call    malloc
		mov     %arrayPtr_42, rax
		mov     qword [%arrayPtr_42], 2
		mov     %arrayEndPos_45, %arrayPtr_42
		add     %arrayEndPos_45, 24
		mov     %startPos_46, %arrayPtr_42
		add     %startPos_46, 8
		mov     %alloca_55, %startPos_46
		mov     %alloca_54, %varDef_126
		mov     %alloca_53, %varDef_127
		mov     %alloca_52, %varDef_128
__L_52:
		mov     %varDef_130, %alloca_55
		mov     %varDef_131, %alloca_54
		mov     %varDef_132, %alloca_53
		mov     %varDef_133, %alloca_52
		cmp     %varDef_130, %arrayEndPos_45
		setl    al
		movzx   %condition_49, al
		cmp     %condition_49, 0
		je      __L_53
__L_54:
		mov     rdi, 24
		call    malloc
		mov     %arrayPtr_50, rax
		mov     qword [%arrayPtr_50], 2
		mov     %arrayEndPos_53, %arrayPtr_50
		add     %arrayEndPos_53, 24
		mov     %startPos_54, %arrayPtr_50
		add     %startPos_54, 8
		mov     %alloca_67, %startPos_54
		mov     %alloca_66, %varDef_132
		mov     %alloca_65, %varDef_133
__L_55:
		mov     %varDef_135, %alloca_67
		mov     %varDef_136, %alloca_66
		mov     %varDef_137, %alloca_65
		cmp     %varDef_135, %arrayEndPos_53
		setl    al
		movzx   %condition_57, al
		cmp     %condition_57, 0
		je      __L_56
__L_57:
		mov     rdi, 32
		call    malloc
		mov     %arrayPtr_58, rax
		mov     qword [%arrayPtr_58], 3
		mov     %arrayEndPos_61, %arrayPtr_58
		add     %arrayEndPos_61, 32
		mov     %startPos_62, %arrayPtr_58
		add     %startPos_62, 8
		mov     %alloca_51, %startPos_62
		mov     %alloca_50, %varDef_137
__L_58:
		mov     %varDef_139, %alloca_51
		mov     %varDef_140, %alloca_50
		cmp     %varDef_139, %arrayEndPos_61
		setl    al
		movzx   %condition_65, al
		cmp     %condition_65, 0
		je      __L_59
__L_60:
		mov     rdi, 24
		call    malloc
		mov     %arrayPtr_66, rax
		mov     qword [%arrayPtr_66], 2
		mov     %arrayEndPos_69, %arrayPtr_66
		add     %arrayEndPos_69, 24
		mov     %startPos_70, %arrayPtr_66
		add     %startPos_70, 8
		mov     %alloca_64, %startPos_70
__L_61:
		mov     %varDef_142, %alloca_64
		cmp     %varDef_142, %arrayEndPos_69
		setl    al
		movzx   %condition_73, al
		cmp     %condition_73, 0
		je      __L_62
__L_63:
		mov     rdi, 24
		call    malloc
		mov     %arrayPtr_74, rax
		mov     qword [%arrayPtr_74], 2
		mov     qword [%varDef_142], %arrayPtr_74
		mov     %pos_77, %varDef_142
		add     %pos_77, 8
		mov     %alloca_64, %pos_77
		jmp     __L_61
__L_62:
		mov     qword [%varDef_139], %arrayPtr_66
		mov     %pos_78, %varDef_139
		add     %pos_78, 8
		mov     %alloca_51, %pos_78
		mov     %alloca_50, %varDef_142
		jmp     __L_58
__L_59:
		mov     qword [%varDef_135], %arrayPtr_58
		mov     %pos_79, %varDef_135
		add     %pos_79, 8
		mov     %alloca_67, %pos_79
		mov     %alloca_66, %varDef_139
		mov     %alloca_65, %varDef_140
		jmp     __L_55
__L_56:
		mov     qword [%varDef_130], %arrayPtr_50
		mov     %pos_80, %varDef_130
		add     %pos_80, 8
		mov     %alloca_55, %pos_80
		mov     %alloca_54, %varDef_135
		mov     %alloca_53, %varDef_136
		mov     %alloca_52, %varDef_137
		jmp     __L_52
__L_53:
		mov     qword [%varDef_124], %arrayPtr_42
		mov     %pos_81, %varDef_124
		add     %pos_81, 8
		mov     %alloca_72, %pos_81
		mov     %alloca_71, %varDef_130
		mov     %alloca_70, %varDef_131
		mov     %alloca_69, %varDef_132
		mov     %alloca_68, %varDef_133
		jmp     __L_49
__L_50:
		mov     qword [%varDef_117], %arrayPtr_34
		mov     %pos_82, %varDef_117
		add     %pos_82, 8
		mov     %alloca_78, %pos_82
		mov     %alloca_77, %varDef_124
		mov     %alloca_76, %varDef_125
		mov     %alloca_75, %varDef_126
		mov     %alloca_74, %varDef_127
		mov     %alloca_73, %varDef_128
		jmp     __L_46
__L_47:
		mov     qword [%varDef_109], %arrayPtr_26
		mov     %pos_83, %varDef_109
		add     %pos_83, 8
		mov     %alloca_93, %pos_83
		mov     %alloca_92, %varDef_117
		mov     %alloca_91, %varDef_118
		mov     %alloca_90, %varDef_119
		mov     %alloca_89, %varDef_120
		mov     %alloca_88, %varDef_121
		mov     %alloca_87, %varDef_122
		jmp     __L_43
__L_44:
		mov     qword [%varDef_100], %arrayPtr_18
		mov     %pos_84, %varDef_100
		add     %pos_84, 8
		mov     %alloca_86, %pos_84
		mov     %alloca_85, %varDef_109
		mov     %alloca_84, %varDef_110
		mov     %alloca_83, %varDef_111
		mov     %alloca_82, %varDef_112
		mov     %alloca_81, %varDef_113
		mov     %alloca_80, %varDef_114
		mov     %alloca_79, %varDef_115
		jmp     __L_40
__L_41:
		mov     qword [%varDef_90], %arrayPtr_10
		mov     %pos_85, %varDef_90
		add     %pos_85, 8
		mov     %alloca_63, %pos_85
		mov     %alloca_62, %varDef_101
		mov     %alloca_61, %varDef_102
		mov     %alloca_60, %varDef_103
		mov     %alloca_59, %varDef_104
		mov     %alloca_58, %varDef_105
		mov     %alloca_57, %varDef_106
		mov     %alloca_56, %varDef_107
		jmp     __L_37
__L_38:
		mov     %memberAddr_87, %thisVal_0
		add     %memberAddr_87, 0
		mov     qword [%memberAddr_87], %arrayPtr_2
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		ret     

restore:
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_r12, r12
		mov     %alloca_94, 1
__L_64:
		mov     %varDef_19, %alloca_94
		mov     %idVal_2, qword [rel _n]
		cmp     %varDef_19, %idVal_2
		setle   al
		movzx   %res_3, al
		cmp     %res_3, 0
		je      __L_65
__L_66:
		mov     %arrayPtr_4, qword [rel _bak]
		mov     %arrayBase_5, %arrayPtr_4
		add     %arrayBase_5, 8
		mov     %offset_7, %varDef_19
		imul    %offset_7, 8
		mov     %elementAddr_8, %arrayBase_5
		add     %elementAddr_8, %offset_7
		mov     %elementVal_9, qword [%elementAddr_8]
		mov     %arrayPtr_10, qword [rel _a]
		mov     %arrayBase_11, %arrayPtr_10
		add     %arrayBase_11, 8
		mov     %elementAddr_14, %arrayBase_11
		add     %elementAddr_14, %offset_7
		mov     qword [%elementAddr_14], %elementVal_9
		mov     %newVal_17, %varDef_19
		inc     %newVal_17
		mov     %alloca_94, %newVal_17
		jmp     __L_64
__L_65:
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		ret     

quicksort:
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_r12, r12
		mov     %argVal_0, rdi
		mov     %argVal_2, rsi
		mov     %arrayPtr_20, qword [rel _a]
		mov     %arrayBase_21, %arrayPtr_20
		add     %arrayBase_21, 8
		mov     %offset_23, %argVal_0
		imul    %offset_23, 8
		mov     %elementAddr_24, %arrayBase_21
		add     %elementAddr_24, %offset_23
		mov     %elementVal_25, qword [%elementAddr_24]
		mov     %res_30, %argVal_0
		add     %res_30, 1
		mov     %alloca_100, 0
		mov     %alloca_99, 0
		mov     %alloca_98, 0
		mov     %alloca_97, %res_30
__L_67:
		mov     %varDef_148, %alloca_100
		mov     %varDef_149, %alloca_99
		mov     %varDef_150, %alloca_98
		mov     %varDef_151, %alloca_97
		cmp     %varDef_151, %argVal_2
		setl    al
		movzx   %res_33, al
		cmp     %res_33, 0
		je      __L_68
__L_69:
		mov     %newVal_36, %varDef_148
		inc     %newVal_36
		mov     %arrayPtr_37, qword [rel _a]
		mov     %arrayBase_38, %arrayPtr_37
		add     %arrayBase_38, 8
		mov     %offset_40, %varDef_151
		imul    %offset_40, 8
		mov     %elementAddr_41, %arrayBase_38
		add     %elementAddr_41, %offset_40
		mov     %elementVal_42, qword [%elementAddr_41]
		cmp     %elementVal_42, %elementVal_25
		setl    al
		movzx   %res_44, al
		cmp     %res_44, 0
		je      __L_70
__L_71:
		mov     %arrayPtr_45, qword [rel _a]
		mov     %arrayBase_46, %arrayPtr_45
		add     %arrayBase_46, 8
		mov     %offset_48, %varDef_151
		imul    %offset_48, 8
		mov     %elementAddr_49, %arrayBase_46
		add     %elementAddr_49, %offset_48
		mov     %elementVal_50, qword [%elementAddr_49]
		mov     %arrayPtr_51, qword [rel _a_left]
		mov     %arrayBase_52, %arrayPtr_51
		add     %arrayBase_52, 8
		mov     %newVal_55, %varDef_149
		inc     %newVal_55
		mov     %offset_56, %varDef_149
		imul    %offset_56, 8
		mov     %elementAddr_57, %arrayBase_52
		add     %elementAddr_57, %offset_56
		mov     qword [%elementAddr_57], %elementVal_50
		mov     %alloca_96, %newVal_55
		mov     %alloca_95, %varDef_150
		jmp     __L_72
__L_70:
		mov     %arrayPtr_58, qword [rel _a]
		mov     %arrayBase_59, %arrayPtr_58
		add     %arrayBase_59, 8
		mov     %offset_61, %varDef_151
		imul    %offset_61, 8
		mov     %elementAddr_62, %arrayBase_59
		add     %elementAddr_62, %offset_61
		mov     %elementVal_63, qword [%elementAddr_62]
		mov     %arrayPtr_64, qword [rel _a_right]
		mov     %arrayBase_65, %arrayPtr_64
		add     %arrayBase_65, 8
		mov     %newVal_68, %varDef_150
		inc     %newVal_68
		mov     %offset_69, %varDef_150
		imul    %offset_69, 8
		mov     %elementAddr_70, %arrayBase_65
		add     %elementAddr_70, %offset_69
		mov     qword [%elementAddr_70], %elementVal_63
		mov     %alloca_96, %varDef_149
		mov     %alloca_95, %newVal_68
__L_72:
		mov     %varDef_155, %alloca_96
		mov     %varDef_156, %alloca_95
		mov     %newVal_73, %varDef_151
		inc     %newVal_73
		mov     %alloca_100, %newVal_36
		mov     %alloca_99, %varDef_155
		mov     %alloca_98, %varDef_156
		mov     %alloca_97, %newVal_73
		jmp     __L_67
__L_68:
		mov     %alloca_104, 0
		mov     %alloca_103, %argVal_0
__L_73:
		mov     %varDef_160, %alloca_104
		mov     %varDef_161, %alloca_103
		cmp     %varDef_160, %varDef_149
		setl    al
		movzx   %res_78, al
		cmp     %res_78, 0
		je      __L_74
__L_75:
		mov     %arrayPtr_79, qword [rel _a_left]
		mov     %arrayBase_80, %arrayPtr_79
		add     %arrayBase_80, 8
		mov     %offset_82, %varDef_160
		imul    %offset_82, 8
		mov     %elementAddr_83, %arrayBase_80
		add     %elementAddr_83, %offset_82
		mov     %elementVal_84, qword [%elementAddr_83]
		mov     %arrayPtr_85, qword [rel _a]
		mov     %arrayBase_86, %arrayPtr_85
		add     %arrayBase_86, 8
		mov     %newVal_89, %varDef_161
		inc     %newVal_89
		mov     %offset_90, %varDef_161
		imul    %offset_90, 8
		mov     %elementAddr_91, %arrayBase_86
		add     %elementAddr_91, %offset_90
		mov     qword [%elementAddr_91], %elementVal_84
		mov     %newVal_94, %varDef_160
		inc     %newVal_94
		mov     %alloca_104, %newVal_94
		mov     %alloca_103, %newVal_89
		jmp     __L_73
__L_74:
		mov     %arrayPtr_96, qword [rel _a]
		mov     %arrayBase_97, %arrayPtr_96
		add     %arrayBase_97, 8
		mov     %newVal_100, %varDef_161
		inc     %newVal_100
		mov     %offset_101, %varDef_161
		imul    %offset_101, 8
		mov     %elementAddr_102, %arrayBase_97
		add     %elementAddr_102, %offset_101
		mov     qword [%elementAddr_102], %elementVal_25
		mov     %alloca_106, 0
		mov     %alloca_105, %newVal_100
__L_76:
		mov     %varDef_166, %alloca_106
		mov     %varDef_167, %alloca_105
		cmp     %varDef_166, %varDef_150
		setl    al
		movzx   %res_105, al
		cmp     %res_105, 0
		je      __L_77
__L_78:
		mov     %arrayPtr_106, qword [rel _a_right]
		mov     %arrayBase_107, %arrayPtr_106
		add     %arrayBase_107, 8
		mov     %offset_109, %varDef_166
		imul    %offset_109, 8
		mov     %elementAddr_110, %arrayBase_107
		add     %elementAddr_110, %offset_109
		mov     %elementVal_111, qword [%elementAddr_110]
		mov     %arrayPtr_112, qword [rel _a]
		mov     %arrayBase_113, %arrayPtr_112
		add     %arrayBase_113, 8
		mov     %newVal_116, %varDef_167
		inc     %newVal_116
		mov     %offset_117, %varDef_167
		imul    %offset_117, 8
		mov     %elementAddr_118, %arrayBase_113
		add     %elementAddr_118, %offset_117
		mov     qword [%elementAddr_118], %elementVal_111
		mov     %newVal_121, %varDef_166
		inc     %newVal_121
		mov     %alloca_106, %newVal_121
		mov     %alloca_105, %newVal_116
		jmp     __L_76
__L_77:
		cmp     %varDef_149, 1
		setg    al
		movzx   %res_123, al
		cmp     %res_123, 0
		jne     __L_79
__L_80:
		mov     %alloca_102, %varDef_148
		jmp     __L_81
__L_79:
		mov     %res_129, %argVal_0
		add     %res_129, %varDef_149
		mov     rdi, %argVal_0
		mov     rsi, %res_129
		call    quicksort
		mov     %res_125, rax
		mov     %res_130, %varDef_148
		add     %res_130, %res_125
		mov     %alloca_102, %res_130
__L_81:
		mov     %varDef_171, %alloca_102
		cmp     %varDef_150, 1
		setg    al
		movzx   %res_132, al
		cmp     %res_132, 0
		jne     __L_82
__L_83:
		mov     %alloca_101, %varDef_171
		jmp     __L_84
__L_82:
		mov     %res_137, %argVal_2
		sub     %res_137, %varDef_150
		mov     rdi, %res_137
		mov     rsi, %argVal_2
		call    quicksort
		mov     %res_134, rax
		mov     %res_139, %varDef_171
		add     %res_139, %res_134
		mov     %alloca_101, %res_139
__L_84:
		mov     %varDef_173, %alloca_101
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		mov     rax, %varDef_173
		ret     

calc:
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_r12, r12
		mov     %alloca_107, 1
__L_85:
		mov     %varDef_86, %alloca_107
		mov     %idVal_16, qword [rel _n]
		cmp     %varDef_86, %idVal_16
		setle   al
		movzx   %res_17, al
		cmp     %res_17, 0
		je      __L_86
__L_87:
		mov     %res_19, %varDef_86
		sub     %res_19, 1
		mov     %arrayPtr_20, qword [rel _a_left]
		mov     %arrayBase_21, %arrayPtr_20
		add     %arrayBase_21, 8
		mov     %offset_23, %varDef_86
		imul    %offset_23, 8
		mov     %elementAddr_24, %arrayBase_21
		add     %elementAddr_24, %offset_23
		mov     qword [%elementAddr_24], %res_19
		mov     %res_26, %varDef_86
		add     %res_26, 1
		mov     %arrayPtr_27, qword [rel _a_right]
		mov     %arrayBase_28, %arrayPtr_27
		add     %arrayBase_28, 8
		mov     %elementAddr_31, %arrayBase_28
		add     %elementAddr_31, %offset_23
		mov     qword [%elementAddr_31], %res_26
		mov     %newVal_34, %varDef_86
		inc     %newVal_34
		mov     %alloca_107, %newVal_34
		jmp     __L_85
__L_86:
		mov     %idVal_36, qword [rel _n]
		mov     %alloca_109, %idVal_36
		mov     %alloca_108, 0
__L_88:
		mov     %varDef_90, %alloca_109
		mov     %varDef_91, %alloca_108
		cmp     %varDef_90, 1
		setge   al
		movzx   %res_38, al
		cmp     %res_38, 0
		je      __L_89
__L_90:
		mov     %arrayPtr_40, qword [rel _a_left]
		mov     %arrayBase_41, %arrayPtr_40
		add     %arrayBase_41, 8
		mov     %arrayPtr_42, qword [rel _a]
		mov     %arrayBase_43, %arrayPtr_42
		add     %arrayBase_43, 8
		mov     %offset_45, %varDef_90
		imul    %offset_45, 8
		mov     %elementAddr_46, %arrayBase_43
		add     %elementAddr_46, %offset_45
		mov     %elementVal_47, qword [%elementAddr_46]
		mov     %offset_48, %elementVal_47
		imul    %offset_48, 8
		mov     %elementAddr_49, %arrayBase_41
		add     %elementAddr_49, %offset_48
		mov     %elementVal_50, qword [%elementAddr_49]
		mov     %arrayPtr_52, qword [rel _a_right]
		mov     %arrayBase_53, %arrayPtr_52
		add     %arrayBase_53, 8
		mov     %arrayPtr_54, qword [rel _a]
		mov     %arrayBase_55, %arrayPtr_54
		add     %arrayBase_55, 8
		mov     %elementAddr_58, %arrayBase_55
		add     %elementAddr_58, %offset_45
		mov     %elementVal_59, qword [%elementAddr_58]
		mov     %offset_60, %elementVal_59
		imul    %offset_60, 8
		mov     %elementAddr_61, %arrayBase_53
		add     %elementAddr_61, %offset_60
		mov     %elementVal_62, qword [%elementAddr_61]
		mov     %arrayPtr_64, qword [rel _a_right]
		mov     %arrayBase_65, %arrayPtr_64
		add     %arrayBase_65, 8
		mov     %offset_67, %elementVal_50
		imul    %offset_67, 8
		mov     %elementAddr_68, %arrayBase_65
		add     %elementAddr_68, %offset_67
		mov     qword [%elementAddr_68], %elementVal_62
		mov     %arrayPtr_70, qword [rel _a_left]
		mov     %arrayBase_71, %arrayPtr_70
		add     %arrayBase_71, 8
		mov     %offset_73, %elementVal_62
		imul    %offset_73, 8
		mov     %elementAddr_74, %arrayBase_71
		add     %elementAddr_74, %offset_73
		mov     qword [%elementAddr_74], %elementVal_50
		mov     %res_77, %varDef_91
		add     %res_77, %elementVal_62
		mov     %res_79, %res_77
		sub     %res_79, %elementVal_50
		mov     %res_80, %res_79
		sub     %res_80, 2
		mov     %newVal_83, %varDef_90
		dec     %newVal_83
		mov     %alloca_109, %newVal_83
		mov     %alloca_108, %res_80
		jmp     __L_88
__L_89:
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		mov     rax, %varDef_91
		ret     

mergesort:
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_r12, r12
		mov     %argVal_0, rdi
		mov     %argVal_2, rsi
		mov     %res_19, %argVal_0
		add     %res_19, 1
		cmp     %res_19, %argVal_2
		sete    al
		movzx   %res_21, al
		cmp     %res_21, 0
		je      __L_91
__L_92:
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		mov     rax, 0
		ret     
__L_91:
		mov     %res_25, %argVal_0
		add     %res_25, %argVal_2
		mov     %res_26, %res_25
		sar     %res_26, 1
		mov     rdi, %argVal_0
		mov     rsi, %res_26
		call    mergesort
		mov     %res_29, rax
		mov     %res_32, 0
		add     %res_32, %res_29
		mov     rdi, %res_26
		mov     rsi, %argVal_2
		call    mergesort
		mov     %res_34, rax
		mov     %res_37, %res_32
		add     %res_37, %res_34
		mov     %alloca_115, 0
		mov     %alloca_114, %argVal_0
__L_93:
		mov     %varDef_183, %alloca_115
		mov     %varDef_184, %alloca_114
		cmp     %varDef_184, %res_26
		setl    al
		movzx   %res_44, al
		cmp     %res_44, 0
		je      __L_94
__L_95:
		mov     %arrayPtr_45, qword [rel _a]
		mov     %arrayBase_46, %arrayPtr_45
		add     %arrayBase_46, 8
		mov     %offset_48, %varDef_184
		imul    %offset_48, 8
		mov     %elementAddr_49, %arrayBase_46
		add     %elementAddr_49, %offset_48
		mov     %elementVal_50, qword [%elementAddr_49]
		mov     %arrayPtr_51, qword [rel _a_left]
		mov     %arrayBase_52, %arrayPtr_51
		add     %arrayBase_52, 8
		mov     %newVal_55, %varDef_183
		inc     %newVal_55
		mov     %offset_56, %varDef_183
		imul    %offset_56, 8
		mov     %elementAddr_57, %arrayBase_52
		add     %elementAddr_57, %offset_56
		mov     qword [%elementAddr_57], %elementVal_50
		mov     %newVal_60, %varDef_184
		inc     %newVal_60
		mov     %alloca_115, %newVal_55
		mov     %alloca_114, %newVal_60
		jmp     __L_93
__L_94:
		mov     %alloca_113, 0
		mov     %alloca_112, %res_26
__L_96:
		mov     %varDef_188, %alloca_113
		mov     %varDef_189, %alloca_112
		cmp     %varDef_189, %argVal_2
		setl    al
		movzx   %res_64, al
		cmp     %res_64, 0
		je      __L_97
__L_98:
		mov     %arrayPtr_65, qword [rel _a]
		mov     %arrayBase_66, %arrayPtr_65
		add     %arrayBase_66, 8
		mov     %offset_68, %varDef_189
		imul    %offset_68, 8
		mov     %elementAddr_69, %arrayBase_66
		add     %elementAddr_69, %offset_68
		mov     %elementVal_70, qword [%elementAddr_69]
		mov     %arrayPtr_71, qword [rel _a_right]
		mov     %arrayBase_72, %arrayPtr_71
		add     %arrayBase_72, 8
		mov     %newVal_75, %varDef_188
		inc     %newVal_75
		mov     %offset_76, %varDef_188
		imul    %offset_76, 8
		mov     %elementAddr_77, %arrayBase_72
		add     %elementAddr_77, %offset_76
		mov     qword [%elementAddr_77], %elementVal_70
		mov     %newVal_80, %varDef_189
		inc     %newVal_80
		mov     %alloca_113, %newVal_75
		mov     %alloca_112, %newVal_80
		jmp     __L_96
__L_97:
		mov     %alloca_121, %res_37
		mov     %alloca_120, 0
		mov     %alloca_119, 0
		mov     %alloca_118, %argVal_0
__L_99:
		mov     %varDef_195, %alloca_121
		mov     %varDef_196, %alloca_120
		mov     %varDef_197, %alloca_119
		mov     %varDef_198, %alloca_118
		cmp     %varDef_196, %varDef_183
		setl    al
		movzx   %res_87, al
		cmp     %res_87, 0
		jne     __L_100
__L_101:
		mov     %alloca_111, %varDef_196
		mov     %alloca_110, %varDef_198
		jmp     __L_102
__L_100:
		cmp     %varDef_197, %varDef_188
		setl    al
		movzx   %res_90, al
		cmp     %res_90, 0
		jne     __L_103
__L_104:
		mov     %alloca_111, %varDef_196
		mov     %alloca_110, %varDef_198
		jmp     __L_102
__L_103:
		mov     %newVal_93, %varDef_195
		inc     %newVal_93
		mov     %arrayPtr_94, qword [rel _a_left]
		mov     %arrayBase_95, %arrayPtr_94
		add     %arrayBase_95, 8
		mov     %offset_97, %varDef_196
		imul    %offset_97, 8
		mov     %elementAddr_98, %arrayBase_95
		add     %elementAddr_98, %offset_97
		mov     %elementVal_99, qword [%elementAddr_98]
		mov     %arrayPtr_100, qword [rel _a_right]
		mov     %arrayBase_101, %arrayPtr_100
		add     %arrayBase_101, 8
		mov     %offset_103, %varDef_197
		imul    %offset_103, 8
		mov     %elementAddr_104, %arrayBase_101
		add     %elementAddr_104, %offset_103
		mov     %elementVal_105, qword [%elementAddr_104]
		cmp     %elementVal_99, %elementVal_105
		setl    al
		movzx   %res_106, al
		cmp     %res_106, 0
		je      __L_105
__L_106:
		mov     %arrayPtr_107, qword [rel _a_left]
		mov     %arrayBase_108, %arrayPtr_107
		add     %arrayBase_108, 8
		mov     %newVal_111, %varDef_196
		inc     %newVal_111
		mov     %offset_112, %varDef_196
		imul    %offset_112, 8
		mov     %elementAddr_113, %arrayBase_108
		add     %elementAddr_113, %offset_112
		mov     %elementVal_114, qword [%elementAddr_113]
		mov     %arrayPtr_115, qword [rel _a]
		mov     %arrayBase_116, %arrayPtr_115
		add     %arrayBase_116, 8
		mov     %newVal_119, %varDef_198
		inc     %newVal_119
		mov     %offset_120, %varDef_198
		imul    %offset_120, 8
		mov     %elementAddr_121, %arrayBase_116
		add     %elementAddr_121, %offset_120
		mov     qword [%elementAddr_121], %elementVal_114
		mov     %alloca_121, %newVal_93
		mov     %alloca_120, %newVal_111
		mov     %alloca_119, %varDef_197
		mov     %alloca_118, %newVal_119
		jmp     __L_99
__L_105:
		mov     %arrayPtr_122, qword [rel _a_right]
		mov     %arrayBase_123, %arrayPtr_122
		add     %arrayBase_123, 8
		mov     %newVal_126, %varDef_197
		inc     %newVal_126
		mov     %offset_127, %varDef_197
		imul    %offset_127, 8
		mov     %elementAddr_128, %arrayBase_123
		add     %elementAddr_128, %offset_127
		mov     %elementVal_129, qword [%elementAddr_128]
		mov     %arrayPtr_130, qword [rel _a]
		mov     %arrayBase_131, %arrayPtr_130
		add     %arrayBase_131, 8
		mov     %newVal_134, %varDef_198
		inc     %newVal_134
		mov     %offset_135, %varDef_198
		imul    %offset_135, 8
		mov     %elementAddr_136, %arrayBase_131
		add     %elementAddr_136, %offset_135
		mov     qword [%elementAddr_136], %elementVal_129
		mov     %alloca_121, %newVal_93
		mov     %alloca_120, %varDef_196
		mov     %alloca_119, %newVal_126
		mov     %alloca_118, %newVal_134
		jmp     __L_99
__L_102:
		mov     %varDef_204, %alloca_111
		mov     %varDef_205, %alloca_110
		cmp     %varDef_204, %varDef_183
		setl    al
		movzx   %res_139, al
		cmp     %res_139, 0
		jne     __L_107
__L_108:
		mov     %alloca_117, %varDef_197
		mov     %alloca_116, %varDef_205
		jmp     __L_109
__L_107:
		mov     %arrayPtr_140, qword [rel _a_left]
		mov     %arrayBase_141, %arrayPtr_140
		add     %arrayBase_141, 8
		mov     %newVal_144, %varDef_204
		inc     %newVal_144
		mov     %offset_145, %varDef_204
		imul    %offset_145, 8
		mov     %elementAddr_146, %arrayBase_141
		add     %elementAddr_146, %offset_145
		mov     %elementVal_147, qword [%elementAddr_146]
		mov     %arrayPtr_148, qword [rel _a]
		mov     %arrayBase_149, %arrayPtr_148
		add     %arrayBase_149, 8
		mov     %newVal_152, %varDef_205
		inc     %newVal_152
		mov     %offset_153, %varDef_205
		imul    %offset_153, 8
		mov     %elementAddr_154, %arrayBase_149
		add     %elementAddr_154, %offset_153
		mov     qword [%elementAddr_154], %elementVal_147
		mov     %alloca_111, %newVal_144
		mov     %alloca_110, %newVal_152
		jmp     __L_102
__L_109:
		mov     %varDef_208, %alloca_117
		mov     %varDef_209, %alloca_116
		cmp     %varDef_208, %varDef_188
		setl    al
		movzx   %res_157, al
		cmp     %res_157, 0
		je      __L_110
__L_111:
		mov     %arrayPtr_158, qword [rel _a_right]
		mov     %arrayBase_159, %arrayPtr_158
		add     %arrayBase_159, 8
		mov     %newVal_162, %varDef_208
		inc     %newVal_162
		mov     %offset_163, %varDef_208
		imul    %offset_163, 8
		mov     %elementAddr_164, %arrayBase_159
		add     %elementAddr_164, %offset_163
		mov     %elementVal_165, qword [%elementAddr_164]
		mov     %arrayPtr_166, qword [rel _a]
		mov     %arrayBase_167, %arrayPtr_166
		add     %arrayBase_167, 8
		mov     %newVal_170, %varDef_209
		inc     %newVal_170
		mov     %offset_171, %varDef_209
		imul    %offset_171, 8
		mov     %elementAddr_172, %arrayBase_167
		add     %elementAddr_172, %offset_171
		mov     qword [%elementAddr_172], %elementVal_165
		mov     %alloca_117, %newVal_162
		mov     %alloca_116, %newVal_170
		jmp     __L_109
__L_110:
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		mov     rax, %varDef_195
		ret     

heapsort:
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_r12, r12
		mov     %alloca_145, 0
		mov     %alloca_144, 1
		mov     %alloca_143, 0
__L_112:
		mov     %varDef_190, %alloca_145
		mov     %varDef_191, %alloca_144
		mov     %varDef_192, %alloca_143
		mov     %idVal_18, qword [rel _n]
		cmp     %varDef_191, %idVal_18
		setle   al
		movzx   %res_19, al
		cmp     %res_19, 0
		je      __L_113
__L_114:
		mov     %arrayPtr_20, qword [rel _a]
		mov     %arrayBase_21, %arrayPtr_20
		add     %arrayBase_21, 8
		mov     %offset_23, %varDef_191
		imul    %offset_23, 8
		mov     %elementAddr_24, %arrayBase_21
		add     %elementAddr_24, %offset_23
		mov     %elementVal_25, qword [%elementAddr_24]
		mov     %arrayPtr_26, qword [rel _heap]
		mov     %arrayBase_27, %arrayPtr_26
		add     %arrayBase_27, 8
		mov     %elementAddr_30, %arrayBase_27
		add     %elementAddr_30, %offset_23
		mov     qword [%elementAddr_30], %elementVal_25
		mov     %alloca_142, %varDef_190
		mov     %alloca_141, %varDef_192
		mov     %alloca_140, %varDef_191
__L_115:
		mov     %varDef_195, %alloca_142
		mov     %varDef_196, %alloca_141
		mov     %varDef_197, %alloca_140
		cmp     %varDef_197, 1
		setne   al
		movzx   %res_34, al
		cmp     %res_34, 0
		jne     __L_116
__L_117:
		mov     %alloca_128, %varDef_195
		jmp     __L_118
__L_116:
		mov     %newVal_37, %varDef_195
		inc     %newVal_37
		mov     %arrayPtr_38, qword [rel _heap]
		mov     %arrayBase_39, %arrayPtr_38
		add     %arrayBase_39, 8
		mov     %offset_41, %varDef_197
		imul    %offset_41, 8
		mov     %elementAddr_42, %arrayBase_39
		add     %elementAddr_42, %offset_41
		mov     %elementVal_43, qword [%elementAddr_42]
		mov     %arrayPtr_44, qword [rel _heap]
		mov     %arrayBase_45, %arrayPtr_44
		add     %arrayBase_45, 8
		mov     %res_47, %varDef_197
		sar     %res_47, 1
		mov     %offset_48, %res_47
		imul    %offset_48, 8
		mov     %elementAddr_49, %arrayBase_45
		add     %elementAddr_49, %offset_48
		mov     %elementVal_50, qword [%elementAddr_49]
		cmp     %elementVal_43, %elementVal_50
		setg    al
		movzx   %res_51, al
		cmp     %res_51, 0
		je      __L_119
__L_120:
		mov     %alloca_128, %newVal_37
		jmp     __L_118
__L_119:
		mov     %arrayPtr_52, qword [rel _heap]
		mov     %arrayBase_53, %arrayPtr_52
		add     %arrayBase_53, 8
		mov     %offset_55, %varDef_197
		imul    %offset_55, 8
		mov     %elementAddr_56, %arrayBase_53
		add     %elementAddr_56, %offset_55
		mov     %elementVal_57, qword [%elementAddr_56]
		mov     %arrayPtr_58, qword [rel _heap]
		mov     %arrayBase_59, %arrayPtr_58
		add     %arrayBase_59, 8
		mov     %res_61, %varDef_197
		sar     %res_61, 1
		mov     %offset_62, %res_61
		imul    %offset_62, 8
		mov     %elementAddr_63, %arrayBase_59
		add     %elementAddr_63, %offset_62
		mov     %elementVal_64, qword [%elementAddr_63]
		mov     %arrayPtr_65, qword [rel _heap]
		mov     %arrayBase_66, %arrayPtr_65
		add     %arrayBase_66, 8
		mov     %elementAddr_69, %arrayBase_66
		add     %elementAddr_69, %offset_55
		mov     qword [%elementAddr_69], %elementVal_64
		mov     %arrayPtr_71, qword [rel _heap]
		mov     %arrayBase_72, %arrayPtr_71
		add     %arrayBase_72, 8
		mov     %elementAddr_76, %arrayBase_72
		add     %elementAddr_76, %offset_62
		mov     qword [%elementAddr_76], %elementVal_57
		mov     %alloca_142, %newVal_37
		mov     %alloca_141, %elementVal_57
		mov     %alloca_140, %res_61
		jmp     __L_115
__L_118:
		mov     %varDef_201, %alloca_128
		mov     %newVal_81, %varDef_191
		inc     %newVal_81
		mov     %alloca_145, %varDef_201
		mov     %alloca_144, %newVal_81
		mov     %alloca_143, %varDef_196
		jmp     __L_112
__L_113:
		mov     %idVal_83, qword [rel _n]
		mov     %alloca_135, %varDef_190
		mov     %alloca_134, 1
		mov     %alloca_133, %varDef_192
		mov     %alloca_132, %idVal_83
		mov     %alloca_131, 0
		mov     %alloca_130, 0
		mov     %alloca_129, 0
__L_121:
		mov     %varDef_205, %alloca_135
		mov     %varDef_206, %alloca_134
		mov     %varDef_207, %alloca_133
		mov     %varDef_208, %alloca_132
		mov     %varDef_210, %alloca_131
		mov     %varDef_211, %alloca_130
		mov     %varDef_212, %alloca_129
		mov     %idVal_85, qword [rel _n]
		cmp     %varDef_206, %idVal_85
		setle   al
		movzx   %res_86, al
		cmp     %res_86, 0
		je      __L_122
__L_123:
		mov     %arrayPtr_87, qword [rel _heap]
		mov     %arrayBase_88, %arrayPtr_87
		add     %arrayBase_88, 8
		mov     %elementAddr_90, %arrayBase_88
		add     %elementAddr_90, 8
		mov     %elementVal_91, qword [%elementAddr_90]
		mov     %arrayPtr_92, qword [rel _a]
		mov     %arrayBase_93, %arrayPtr_92
		add     %arrayBase_93, 8
		mov     %offset_95, %varDef_206
		imul    %offset_95, 8
		mov     %elementAddr_96, %arrayBase_93
		add     %elementAddr_96, %offset_95
		mov     qword [%elementAddr_96], %elementVal_91
		mov     %arrayPtr_97, qword [rel _heap]
		mov     %arrayBase_98, %arrayPtr_97
		add     %arrayBase_98, 8
		mov     %newVal_101, %varDef_208
		dec     %newVal_101
		mov     %offset_102, %varDef_208
		imul    %offset_102, 8
		mov     %elementAddr_103, %arrayBase_98
		add     %elementAddr_103, %offset_102
		mov     %elementVal_104, qword [%elementAddr_103]
		mov     %arrayPtr_105, qword [rel _heap]
		mov     %arrayBase_106, %arrayPtr_105
		add     %arrayBase_106, 8
		mov     %elementAddr_108, %arrayBase_106
		add     %elementAddr_108, 8
		mov     qword [%elementAddr_108], %elementVal_104
		mov     %alloca_127, %varDef_205
		mov     %alloca_126, %varDef_207
		mov     %alloca_125, 1
		mov     %alloca_124, %varDef_210
		mov     %alloca_123, %varDef_211
		mov     %alloca_122, %varDef_212
__L_124:
		mov     %varDef_215, %alloca_127
		mov     %varDef_216, %alloca_126
		mov     %varDef_217, %alloca_125
		mov     %varDef_218, %alloca_124
		mov     %varDef_219, %alloca_123
		mov     %varDef_220, %alloca_122
		mov     %res_111, %varDef_217
		shl     %res_111, 1
		cmp     %res_111, %newVal_101
		setle   al
		movzx   %res_113, al
		cmp     %res_113, 0
		jne     __L_125
__L_126:
		mov     %alloca_139, %varDef_215
		mov     %alloca_138, %varDef_218
		mov     %alloca_137, %varDef_219
		mov     %alloca_136, %varDef_220
		jmp     __L_127
__L_125:
		mov     %res_116, %varDef_217
		shl     %res_116, 1
		mov     %res_119, %res_116
		add     %res_119, 1
		cmp     %res_119, %newVal_101
		setle   al
		movzx   %res_124, al
		cmp     %res_124, 0
		jne     __L_128
__L_129:
		mov     %alloca_147, %varDef_215
		mov     %alloca_146, %res_116
		jmp     __L_130
__L_128:
		mov     %newVal_127, %varDef_215
		inc     %newVal_127
		mov     %arrayPtr_128, qword [rel _heap]
		mov     %arrayBase_129, %arrayPtr_128
		add     %arrayBase_129, 8
		mov     %offset_131, %res_119
		imul    %offset_131, 8
		mov     %elementAddr_132, %arrayBase_129
		add     %elementAddr_132, %offset_131
		mov     %elementVal_133, qword [%elementAddr_132]
		mov     %arrayPtr_134, qword [rel _heap]
		mov     %arrayBase_135, %arrayPtr_134
		add     %arrayBase_135, 8
		mov     %offset_137, %res_116
		imul    %offset_137, 8
		mov     %elementAddr_138, %arrayBase_135
		add     %elementAddr_138, %offset_137
		mov     %elementVal_139, qword [%elementAddr_138]
		cmp     %elementVal_133, %elementVal_139
		setl    al
		movzx   %res_140, al
		cmp     %res_140, 0
		jne     __L_131
__L_132:
		mov     %alloca_147, %newVal_127
		mov     %alloca_146, %res_116
		jmp     __L_130
__L_131:
		mov     %alloca_147, %newVal_127
		mov     %alloca_146, %res_119
__L_130:
		mov     %varDef_226, %alloca_147
		mov     %varDef_227, %alloca_146
		mov     %newVal_144, %varDef_226
		inc     %newVal_144
		mov     %arrayPtr_145, qword [rel _heap]
		mov     %arrayBase_146, %arrayPtr_145
		add     %arrayBase_146, 8
		mov     %offset_148, %varDef_217
		imul    %offset_148, 8
		mov     %elementAddr_149, %arrayBase_146
		add     %elementAddr_149, %offset_148
		mov     %elementVal_150, qword [%elementAddr_149]
		mov     %arrayPtr_151, qword [rel _heap]
		mov     %arrayBase_152, %arrayPtr_151
		add     %arrayBase_152, 8
		mov     %offset_154, %varDef_227
		imul    %offset_154, 8
		mov     %elementAddr_155, %arrayBase_152
		add     %elementAddr_155, %offset_154
		mov     %elementVal_156, qword [%elementAddr_155]
		cmp     %elementVal_150, %elementVal_156
		setl    al
		movzx   %res_157, al
		cmp     %res_157, 0
		je      __L_133
__L_134:
		mov     %alloca_139, %newVal_144
		mov     %alloca_138, %res_116
		mov     %alloca_137, %res_119
		mov     %alloca_136, %varDef_227
		jmp     __L_127
__L_133:
		mov     %arrayPtr_158, qword [rel _heap]
		mov     %arrayBase_159, %arrayPtr_158
		add     %arrayBase_159, 8
		mov     %offset_161, %varDef_217
		imul    %offset_161, 8
		mov     %elementAddr_162, %arrayBase_159
		add     %elementAddr_162, %offset_161
		mov     %elementVal_163, qword [%elementAddr_162]
		mov     %arrayPtr_164, qword [rel _heap]
		mov     %arrayBase_165, %arrayPtr_164
		add     %arrayBase_165, 8
		mov     %offset_167, %varDef_227
		imul    %offset_167, 8
		mov     %elementAddr_168, %arrayBase_165
		add     %elementAddr_168, %offset_167
		mov     %elementVal_169, qword [%elementAddr_168]
		mov     %arrayPtr_170, qword [rel _heap]
		mov     %arrayBase_171, %arrayPtr_170
		add     %arrayBase_171, 8
		mov     %elementAddr_174, %arrayBase_171
		add     %elementAddr_174, %offset_161
		mov     qword [%elementAddr_174], %elementVal_169
		mov     %arrayPtr_176, qword [rel _heap]
		mov     %arrayBase_177, %arrayPtr_176
		add     %arrayBase_177, 8
		mov     %elementAddr_180, %arrayBase_177
		add     %elementAddr_180, %offset_167
		mov     qword [%elementAddr_180], %elementVal_163
		mov     %alloca_127, %newVal_144
		mov     %alloca_126, %varDef_217
		mov     %alloca_125, %varDef_227
		mov     %alloca_124, %res_116
		mov     %alloca_123, %res_119
		mov     %alloca_122, %varDef_217
		jmp     __L_124
__L_127:
		mov     %varDef_233, %alloca_139
		mov     %varDef_234, %alloca_138
		mov     %varDef_235, %alloca_137
		mov     %varDef_236, %alloca_136
		mov     %newVal_186, %varDef_206
		inc     %newVal_186
		mov     %alloca_135, %varDef_233
		mov     %alloca_134, %newVal_186
		mov     %alloca_133, %varDef_216
		mov     %alloca_132, %newVal_101
		mov     %alloca_131, %varDef_234
		mov     %alloca_130, %varDef_235
		mov     %alloca_129, %varDef_236
		jmp     __L_121
__L_122:
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		mov     rax, %varDef_205
		ret     

main:
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r14, r14
		mov     %local_r13, r13
		mov     %local_r12, r12
		call    _globalInit
		call    getInt
		mov     %res_14, rax
		mov     qword [rel _n], %res_14
		call    getInt
		mov     %res_16, rax
		mov     %alloca_148, 1
__L_135:
		mov     %varDef_132, %alloca_148
		mov     %idVal_19, qword [rel _n]
		cmp     %varDef_132, %idVal_19
		setle   al
		movzx   %res_20, al
		cmp     %res_20, 0
		je      __L_136
__L_137:
		mov     %arrayPtr_22, qword [rel _a]
		mov     %arrayBase_23, %arrayPtr_22
		add     %arrayBase_23, 8
		mov     %offset_25, %varDef_132
		imul    %offset_25, 8
		mov     %elementAddr_26, %arrayBase_23
		add     %elementAddr_26, %offset_25
		mov     qword [%elementAddr_26], %varDef_132
		cmp     %varDef_132, %res_16
		setle   al
		movzx   %res_29, al
		cmp     %res_29, 0
		je      __L_138
__L_139:
		mov     %res_31, %res_16
		add     %res_31, 1
		mov     %res_33, %res_31
		sub     %res_33, %varDef_132
		mov     %arrayPtr_34, qword [rel _a]
		mov     %arrayBase_35, %arrayPtr_34
		add     %arrayBase_35, 8
		mov     %offset_37, %varDef_132
		imul    %offset_37, 8
		mov     %elementAddr_38, %arrayBase_35
		add     %elementAddr_38, %offset_37
		mov     qword [%elementAddr_38], %res_33
__L_138:
		mov     %arrayPtr_39, qword [rel _a]
		mov     %arrayBase_40, %arrayPtr_39
		add     %arrayBase_40, 8
		mov     %offset_42, %varDef_132
		imul    %offset_42, 8
		mov     %elementAddr_43, %arrayBase_40
		add     %elementAddr_43, %offset_42
		mov     %elementVal_44, qword [%elementAddr_43]
		mov     %arrayPtr_45, qword [rel _bak]
		mov     %arrayBase_46, %arrayPtr_45
		add     %arrayBase_46, 8
		mov     %elementAddr_49, %arrayBase_46
		add     %elementAddr_49, %offset_42
		mov     qword [%elementAddr_49], %elementVal_44
		mov     %newVal_52, %varDef_132
		inc     %newVal_52
		mov     %alloca_148, %newVal_52
		jmp     __L_135
__L_136:
		mov     %idVal_55, qword [rel _n]
		mov     %res_56, %idVal_55
		add     %res_56, 1
		mov     rdi, 1
		mov     rsi, %res_56
		call    quicksort
		mov     %res_54, rax
		mov     %alloca_149, 1
__L_140:
		mov     %varDef_136, %alloca_149
		mov     %cidVal_78, qword [rel _n]
		cmp     %varDef_136, %cidVal_78
		setle   al
		movzx   %cres_79, al
		cmp     %cres_79, 0
		je      __L_141
__L_142:
		mov     %carrayPtr_80, qword [rel _bak]
		mov     %carrayBase_81, %carrayPtr_80
		add     %carrayBase_81, 8
		mov     %coffset_83, %varDef_136
		imul    %coffset_83, 8
		mov     %celementAddr_84, %carrayBase_81
		add     %celementAddr_84, %coffset_83
		mov     %celementVal_85, qword [%celementAddr_84]
		mov     %carrayPtr_86, qword [rel _a]
		mov     %carrayBase_87, %carrayPtr_86
		add     %carrayBase_87, 8
		mov     %celementAddr_90, %carrayBase_87
		add     %celementAddr_90, %coffset_83
		mov     qword [%celementAddr_90], %celementVal_85
		mov     %cnewVal_93, %varDef_136
		inc     %cnewVal_93
		mov     %alloca_149, %cnewVal_93
		jmp     __L_140
__L_141:
		call    calc
		mov     %res_58, rax
		mov     %alloca_151, 1
__L_143:
		mov     %varDef_140, %alloca_151
		mov     %cidVal_96, qword [rel _n]
		cmp     %varDef_140, %cidVal_96
		setle   al
		movzx   %cres_97, al
		cmp     %cres_97, 0
		je      __L_144
__L_145:
		mov     %carrayPtr_98, qword [rel _bak]
		mov     %carrayBase_99, %carrayPtr_98
		add     %carrayBase_99, 8
		mov     %coffset_101, %varDef_140
		imul    %coffset_101, 8
		mov     %celementAddr_102, %carrayBase_99
		add     %celementAddr_102, %coffset_101
		mov     %celementVal_103, qword [%celementAddr_102]
		mov     %carrayPtr_104, qword [rel _a]
		mov     %carrayBase_105, %carrayPtr_104
		add     %carrayBase_105, 8
		mov     %celementAddr_108, %carrayBase_105
		add     %celementAddr_108, %coffset_101
		mov     qword [%celementAddr_108], %celementVal_103
		mov     %cnewVal_111, %varDef_140
		inc     %cnewVal_111
		mov     %alloca_151, %cnewVal_111
		jmp     __L_143
__L_144:
		mov     %idVal_61, qword [rel _n]
		mov     %res_62, %idVal_61
		add     %res_62, 1
		mov     rdi, 1
		mov     rsi, %res_62
		call    mergesort
		mov     %res_60, rax
		mov     %alloca_150, 1
__L_146:
		mov     %varDef_144, %alloca_150
		mov     %cidVal_114, qword [rel _n]
		cmp     %varDef_144, %cidVal_114
		setle   al
		movzx   %cres_115, al
		cmp     %cres_115, 0
		je      __L_147
__L_148:
		mov     %carrayPtr_116, qword [rel _bak]
		mov     %carrayBase_117, %carrayPtr_116
		add     %carrayBase_117, 8
		mov     %coffset_119, %varDef_144
		imul    %coffset_119, 8
		mov     %celementAddr_120, %carrayBase_117
		add     %celementAddr_120, %coffset_119
		mov     %celementVal_121, qword [%celementAddr_120]
		mov     %carrayPtr_122, qword [rel _a]
		mov     %carrayBase_123, %carrayPtr_122
		add     %carrayBase_123, 8
		mov     %celementAddr_126, %carrayBase_123
		add     %celementAddr_126, %coffset_119
		mov     qword [%celementAddr_126], %celementVal_121
		mov     %cnewVal_129, %varDef_144
		inc     %cnewVal_129
		mov     %alloca_150, %cnewVal_129
		jmp     __L_146
__L_147:
		call    heapsort
		mov     %res_64, rax
		mov     rdi, %res_54
		call    toString
		mov     %res_65, rax
		mov     rdi, %res_65
		call    println
		mov     rdi, %res_58
		call    toString
		mov     %res_67, rax
		mov     rdi, %res_67
		call    println
		mov     rdi, %res_60
		call    toString
		mov     %res_69, rax
		mov     rdi, %res_69
		call    println
		mov     rdi, %res_64
		call    toString
		mov     %res_71, rax
		mov     rdi, %res_71
		call    println
		mov     rdi, 8
		call    malloc
		mov     %classPtr_74, rax
		mov     rdi, %classPtr_74
		call    _A_A
		mov     rdi, %classPtr_74
		call    _A_Optimizer
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r13, %local_r13
		mov     r12, %local_r12
		mov     rax, 0
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


