default rel

global _globalInit
global func
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
		mov     %local_r15, r15
		mov     %local_r14, r14
		mov     %local_r12, r12
		mov     %local_r13, r13
		mov     %local_rbx, rbx
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r12, %local_r12
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		ret     

func:
		mov     %local_r15, r15
		mov     %local_r14, r14
		mov     %local_r12, r12
		mov     %local_r13, r13
		mov     %local_rbx, rbx
		mov     %argVal_0, rdi
		mov     %argVal_2, rsi
		mov     %argVal_4, rdx
		mov     %res_8, %argVal_0
		add     %res_8, %argVal_2
		mov     %res_10, %res_8
		add     %res_10, %argVal_4
		mov     %res_13, %res_10
		and     %res_13, 1073741823
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r12, %local_r12
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		mov     rax, %res_13
		ret     

main:
		mov     %local_r15, r15
		mov     %local_r14, r14
		mov     %local_r12, r12
		mov     %local_r13, r13
		mov     %local_rbx, rbx
		call    _globalInit
		call    getInt
		mov     %res_1, rax
		mov     %memberLength_6, %res_1
		imul    %memberLength_6, 8
		mov     %arrayLength_7, %memberLength_6
		add     %arrayLength_7, 8
		mov     rdi, %arrayLength_7
		call    malloc
		mov     %arrayPtr_5, rax
		mov     qword [%arrayPtr_5], %res_1
		mov     %arrayEndPos_8, %arrayPtr_5
		add     %arrayEndPos_8, %arrayLength_7
		mov     %startPos_9, %arrayPtr_5
		add     %startPos_9, 8
		mov     %alloca_38, %startPos_9
__L_1:
		mov     %varDef_353, %alloca_38
		cmp     %varDef_353, %arrayEndPos_8
		setl    al
		movzx   %condition_12, al
		cmp     %condition_12, 0
		je      __L_2
__L_3:
		mov     %memberLength_14, %res_1
		imul    %memberLength_14, 8
		mov     %arrayLength_15, %memberLength_14
		add     %arrayLength_15, 8
		mov     rdi, %arrayLength_15
		call    malloc
		mov     %arrayPtr_13, rax
		mov     qword [%arrayPtr_13], %res_1
		mov     qword [%varDef_353], %arrayPtr_13
		mov     %pos_16, %varDef_353
		add     %pos_16, 8
		mov     %alloca_38, %pos_16
		jmp     __L_1
__L_2:
		mov     %memberLength_21, %res_1
		imul    %memberLength_21, 8
		mov     %arrayLength_22, %memberLength_21
		add     %arrayLength_22, 8
		mov     rdi, %arrayLength_22
		call    malloc
		mov     %arrayPtr_20, rax
		mov     qword [%arrayPtr_20], %res_1
		mov     %arrayEndPos_23, %arrayPtr_20
		add     %arrayEndPos_23, %arrayLength_22
		mov     %startPos_24, %arrayPtr_20
		add     %startPos_24, 8
		mov     %alloca_35, %startPos_24
__L_4:
		mov     %varDef_357, %alloca_35
		cmp     %varDef_357, %arrayEndPos_23
		setl    al
		movzx   %condition_27, al
		cmp     %condition_27, 0
		je      __L_5
__L_6:
		mov     %memberLength_29, %res_1
		imul    %memberLength_29, 8
		mov     %arrayLength_30, %memberLength_29
		add     %arrayLength_30, 8
		mov     rdi, %arrayLength_30
		call    malloc
		mov     %arrayPtr_28, rax
		mov     qword [%arrayPtr_28], %res_1
		mov     qword [%varDef_357], %arrayPtr_28
		mov     %pos_31, %varDef_357
		add     %pos_31, 8
		mov     %alloca_35, %pos_31
		jmp     __L_4
__L_5:
		mov     %memberLength_36, %res_1
		imul    %memberLength_36, 8
		mov     %arrayLength_37, %memberLength_36
		add     %arrayLength_37, 8
		mov     rdi, %arrayLength_37
		call    malloc
		mov     %arrayPtr_35, rax
		mov     qword [%arrayPtr_35], %res_1
		mov     %arrayEndPos_38, %arrayPtr_35
		add     %arrayEndPos_38, %arrayLength_37
		mov     %startPos_39, %arrayPtr_35
		add     %startPos_39, 8
		mov     %alloca_36, %startPos_39
__L_7:
		mov     %varDef_361, %alloca_36
		cmp     %varDef_361, %arrayEndPos_38
		setl    al
		movzx   %condition_42, al
		cmp     %condition_42, 0
		je      __L_8
__L_9:
		mov     %memberLength_44, %res_1
		imul    %memberLength_44, 8
		mov     %arrayLength_45, %memberLength_44
		add     %arrayLength_45, 8
		mov     rdi, %arrayLength_45
		call    malloc
		mov     %arrayPtr_43, rax
		mov     qword [%arrayPtr_43], %res_1
		mov     qword [%varDef_361], %arrayPtr_43
		mov     %pos_46, %varDef_361
		add     %pos_46, 8
		mov     %alloca_36, %pos_46
		jmp     __L_7
__L_8:
		mov     %alloca_37, 0
__L_10:
		mov     %varDef_365, %alloca_37
		cmp     %varDef_365, %res_1
		setl    al
		movzx   %res_52, al
		cmp     %res_52, 0
		je      __L_11
__L_12:
		mov     %alloca_78, 0
__L_13:
		mov     %varDef_368, %alloca_78
		cmp     %varDef_368, %res_1
		setl    al
		movzx   %res_55, al
		cmp     %res_55, 0
		je      __L_14
__L_15:
		mov     %res_58, %varDef_365
		add     %res_58, %varDef_368
		mov     %arrayBase_60, %arrayPtr_5
		add     %arrayBase_60, 8
		mov     %offset_62, %varDef_365
		imul    %offset_62, 8
		mov     %elementAddr_63, %arrayBase_60
		add     %elementAddr_63, %offset_62
		mov     %arrayPtr_64, qword [%elementAddr_63]
		mov     %arrayBase_65, %arrayPtr_64
		add     %arrayBase_65, 8
		mov     %offset_67, %varDef_368
		imul    %offset_67, 8
		mov     %elementAddr_68, %arrayBase_65
		add     %elementAddr_68, %offset_67
		mov     qword [%elementAddr_68], %res_58
		mov     %newVal_71, %varDef_368
		inc     %newVal_71
		mov     %alloca_78, %newVal_71
		jmp     __L_13
__L_14:
		mov     %newVal_74, %varDef_365
		inc     %newVal_74
		mov     %alloca_37, %newVal_74
		jmp     __L_10
__L_11:
		mov     %alloca_34, 0
		mov     %alloca_33, 0
		mov     %alloca_32, 0
		mov     %alloca_31, 0
		mov     %alloca_30, 0
		mov     %alloca_29, 0
		mov     %alloca_28, 0
		mov     %alloca_27, 0
		mov     %alloca_26, 0
		mov     %alloca_25, 0
		mov     %alloca_24, 0
		mov     %alloca_23, 0
		mov     %alloca_22, 0
		mov     %alloca_21, 0
		mov     %alloca_20, 0
		mov     %alloca_19, 0
		mov     %alloca_18, 0
		mov     %alloca_17, 0
__L_16:
		mov     %varDef_372, %alloca_34
		mov     %varDef_374, %alloca_33
		mov     %varDef_375, %alloca_32
		mov     %varDef_376, %alloca_31
		mov     %varDef_377, %alloca_30
		mov     %varDef_378, %alloca_29
		mov     %varDef_379, %alloca_28
		mov     %varDef_380, %alloca_27
		mov     %varDef_381, %alloca_26
		mov     %varDef_382, %alloca_25
		mov     %varDef_383, %alloca_24
		mov     %varDef_384, %alloca_23
		mov     %varDef_385, %alloca_22
		mov     %varDef_386, %alloca_21
		mov     %varDef_387, %alloca_20
		mov     %varDef_388, %alloca_19
		mov     %varDef_389, %alloca_18
		mov     %varDef_390, %alloca_17
		cmp     %varDef_372, %res_1
		setl    al
		movzx   %res_77, al
		cmp     %res_77, 0
		je      __L_17
__L_18:
		mov     %alloca_56, 0
		mov     %alloca_55, %varDef_374
		mov     %alloca_54, %varDef_375
		mov     %alloca_53, %varDef_376
		mov     %alloca_52, %varDef_377
		mov     %alloca_51, %varDef_378
		mov     %alloca_50, %varDef_379
		mov     %alloca_49, %varDef_380
		mov     %alloca_48, %varDef_381
		mov     %alloca_47, %varDef_382
		mov     %alloca_46, %varDef_383
		mov     %alloca_45, %varDef_384
		mov     %alloca_44, %varDef_385
		mov     %alloca_43, %varDef_386
		mov     %alloca_42, %varDef_387
		mov     %alloca_41, %varDef_388
		mov     %alloca_40, %varDef_389
		mov     %alloca_39, %varDef_390
__L_19:
		mov     %varDef_392, %alloca_56
		mov     %varDef_393, %alloca_55
		mov     %varDef_394, %alloca_54
		mov     %varDef_395, %alloca_53
		mov     %varDef_396, %alloca_52
		mov     %varDef_397, %alloca_51
		mov     %varDef_398, %alloca_50
		mov     %varDef_399, %alloca_49
		mov     %varDef_400, %alloca_48
		mov     %varDef_401, %alloca_47
		mov     %varDef_402, %alloca_46
		mov     %varDef_403, %alloca_45
		mov     %varDef_404, %alloca_44
		mov     %varDef_405, %alloca_43
		mov     %varDef_406, %alloca_42
		mov     %varDef_407, %alloca_41
		mov     %varDef_408, %alloca_40
		mov     %varDef_409, %alloca_39
		cmp     %varDef_392, %res_1
		setl    al
		movzx   %res_80, al
		cmp     %res_80, 0
		je      __L_20
__L_21:
		mov     %alloca_75, 0
		mov     %alloca_74, %varDef_394
		mov     %alloca_73, %varDef_395
		mov     %alloca_72, %varDef_396
		mov     %alloca_71, %varDef_397
		mov     %alloca_70, %varDef_398
		mov     %alloca_69, %varDef_399
		mov     %alloca_68, %varDef_400
		mov     %alloca_67, %varDef_401
		mov     %alloca_66, %varDef_402
		mov     %alloca_65, %varDef_403
		mov     %alloca_64, %varDef_404
		mov     %alloca_63, %varDef_405
		mov     %alloca_62, %varDef_406
		mov     %alloca_61, %varDef_407
		mov     %alloca_60, %varDef_408
		mov     %alloca_59, %varDef_409
__L_22:
		mov     %varDef_411, %alloca_75
		mov     %varDef_412, %alloca_74
		mov     %varDef_413, %alloca_73
		mov     %varDef_414, %alloca_72
		mov     %varDef_415, %alloca_71
		mov     %varDef_416, %alloca_70
		mov     %varDef_417, %alloca_69
		mov     %varDef_418, %alloca_68
		mov     %varDef_419, %alloca_67
		mov     %varDef_420, %alloca_66
		mov     %varDef_421, %alloca_65
		mov     %varDef_422, %alloca_64
		mov     %varDef_423, %alloca_63
		mov     %varDef_424, %alloca_62
		mov     %varDef_425, %alloca_61
		mov     %varDef_426, %alloca_60
		mov     %varDef_427, %alloca_59
		cmp     %varDef_411, %res_1
		setl    al
		movzx   %res_83, al
		cmp     %res_83, 0
		je      __L_23
__L_24:
		cmp     %varDef_392, %varDef_372
		setge   al
		movzx   %res_86, al
		cmp     %res_86, 0
		jne     __L_25
__L_26:
		mov     %alloca_16, %varDef_412
		mov     %alloca_15, %varDef_413
		mov     %alloca_14, %varDef_414
		mov     %alloca_13, %varDef_415
		mov     %alloca_12, %varDef_416
		mov     %alloca_11, %varDef_417
		mov     %alloca_10, %varDef_418
		mov     %alloca_9, %varDef_419
		mov     %alloca_8, %varDef_420
		mov     %alloca_7, %varDef_421
		mov     %alloca_6, %varDef_422
		mov     %alloca_5, %varDef_423
		mov     %alloca_4, %varDef_424
		mov     %alloca_3, %varDef_425
		mov     %alloca_2, %varDef_426
		mov     %alloca_1, %varDef_427
		jmp     __L_27
__L_25:
		mov     %arrayBase_89, %arrayPtr_20
		add     %arrayBase_89, 8
		mov     %offset_91, %varDef_372
		imul    %offset_91, 8
		mov     %elementAddr_92, %arrayBase_89
		add     %elementAddr_92, %offset_91
		mov     %arrayPtr_93, qword [%elementAddr_92]
		mov     %arrayBase_94, %arrayPtr_93
		add     %arrayBase_94, 8
		mov     %offset_96, %varDef_392
		imul    %offset_96, 8
		mov     %elementAddr_97, %arrayBase_94
		add     %elementAddr_97, %offset_96
		mov     %elementVal_98, qword [%elementAddr_97]
		mov     %arrayBase_100, %arrayPtr_5
		add     %arrayBase_100, 8
		mov     %elementAddr_103, %arrayBase_100
		add     %elementAddr_103, %offset_91
		mov     %arrayPtr_104, qword [%elementAddr_103]
		mov     %arrayBase_105, %arrayPtr_104
		add     %arrayBase_105, 8
		mov     %offset_107, %varDef_411
		imul    %offset_107, 8
		mov     %elementAddr_108, %arrayBase_105
		add     %elementAddr_108, %offset_107
		mov     %elementVal_109, qword [%elementAddr_108]
		mov     %elementAddr_114, %arrayBase_100
		add     %elementAddr_114, %offset_107
		mov     %arrayPtr_115, qword [%elementAddr_114]
		mov     %arrayBase_116, %arrayPtr_115
		add     %arrayBase_116, 8
		mov     %elementAddr_119, %arrayBase_116
		add     %elementAddr_119, %offset_96
		mov     %elementVal_120, qword [%elementAddr_119]
		mov     %cres_309, %elementVal_98
		add     %cres_309, %elementVal_109
		mov     %cres_311, %cres_309
		add     %cres_311, %elementVal_120
		mov     %cres_314, %cres_311
		and     %cres_314, 1073741823
		mov     %arrayPtr_126, qword [%elementAddr_92]
		mov     %arrayBase_127, %arrayPtr_126
		add     %arrayBase_127, 8
		mov     %elementAddr_130, %arrayBase_127
		add     %elementAddr_130, %offset_96
		mov     qword [%elementAddr_130], %cres_314
		mov     %arrayPtr_137, qword [%elementAddr_92]
		mov     %arrayBase_138, %arrayPtr_137
		add     %arrayBase_138, 8
		mov     %elementAddr_141, %arrayBase_138
		add     %elementAddr_141, %offset_96
		mov     %elementVal_142, qword [%elementAddr_141]
		mov     %arrayPtr_148, qword [%elementAddr_103]
		mov     %arrayBase_149, %arrayPtr_148
		add     %arrayBase_149, 8
		mov     %elementAddr_152, %arrayBase_149
		add     %elementAddr_152, %offset_107
		mov     %elementVal_153, qword [%elementAddr_152]
		mov     %arrayPtr_159, qword [%elementAddr_114]
		mov     %arrayBase_160, %arrayPtr_159
		add     %arrayBase_160, 8
		mov     %elementAddr_163, %arrayBase_160
		add     %elementAddr_163, %offset_96
		mov     %elementVal_164, qword [%elementAddr_163]
		mov     %cres_321, %elementVal_142
		add     %cres_321, %elementVal_153
		mov     %cres_323, %cres_321
		add     %cres_323, %elementVal_164
		mov     %cres_326, %cres_323
		and     %cres_326, 1073741823
		mov     %arrayBase_166, %arrayPtr_35
		add     %arrayBase_166, 8
		mov     %elementAddr_169, %arrayBase_166
		add     %elementAddr_169, %offset_91
		mov     %arrayPtr_170, qword [%elementAddr_169]
		mov     %arrayBase_171, %arrayPtr_170
		add     %arrayBase_171, 8
		mov     %elementAddr_174, %arrayBase_171
		add     %elementAddr_174, %offset_96
		mov     qword [%elementAddr_174], %cres_326
		mov     %arrayPtr_181, qword [%elementAddr_92]
		mov     %arrayBase_182, %arrayPtr_181
		add     %arrayBase_182, 8
		mov     %elementAddr_185, %arrayBase_182
		add     %elementAddr_185, %offset_96
		mov     %elementVal_186, qword [%elementAddr_185]
		mov     %arrayPtr_192, qword [%elementAddr_103]
		mov     %arrayBase_193, %arrayPtr_192
		add     %arrayBase_193, 8
		mov     %elementAddr_196, %arrayBase_193
		add     %elementAddr_196, %offset_107
		mov     %elementVal_197, qword [%elementAddr_196]
		mov     %arrayPtr_203, qword [%elementAddr_114]
		mov     %arrayBase_204, %arrayPtr_203
		add     %arrayBase_204, 8
		mov     %elementAddr_207, %arrayBase_204
		add     %elementAddr_207, %offset_96
		mov     %elementVal_208, qword [%elementAddr_207]
		mov     %cres_333, %elementVal_186
		add     %cres_333, %elementVal_197
		mov     %cres_335, %cres_333
		add     %cres_335, %elementVal_208
		mov     %cres_338, %cres_335
		and     %cres_338, 1073741823
		mov     %arrayPtr_214, qword [%elementAddr_169]
		mov     %arrayBase_215, %arrayPtr_214
		add     %arrayBase_215, 8
		mov     %elementAddr_218, %arrayBase_215
		add     %elementAddr_218, %offset_96
		mov     qword [%elementAddr_218], %cres_338
		mov     %arrayPtr_225, qword [%elementAddr_92]
		mov     %arrayBase_226, %arrayPtr_225
		add     %arrayBase_226, 8
		mov     %elementAddr_229, %arrayBase_226
		add     %elementAddr_229, %offset_96
		mov     %elementVal_230, qword [%elementAddr_229]
		mov     %arrayPtr_236, qword [%elementAddr_103]
		mov     %arrayBase_237, %arrayPtr_236
		add     %arrayBase_237, 8
		mov     %elementAddr_240, %arrayBase_237
		add     %elementAddr_240, %offset_107
		mov     %elementVal_241, qword [%elementAddr_240]
		mov     %arrayPtr_247, qword [%elementAddr_114]
		mov     %arrayBase_248, %arrayPtr_247
		add     %arrayBase_248, 8
		mov     %elementAddr_251, %arrayBase_248
		add     %elementAddr_251, %offset_96
		mov     %elementVal_252, qword [%elementAddr_251]
		mov     %cres_345, %elementVal_230
		add     %cres_345, %elementVal_241
		mov     %cres_347, %cres_345
		add     %cres_347, %elementVal_252
		mov     %cres_350, %cres_347
		and     %cres_350, 1073741823
		mov     %arrayPtr_258, qword [%elementAddr_169]
		mov     %arrayBase_259, %arrayPtr_258
		add     %arrayBase_259, 8
		mov     %elementAddr_262, %arrayBase_259
		add     %elementAddr_262, %offset_96
		mov     qword [%elementAddr_262], %cres_350
		mov     %alloca_16, %cres_314
		mov     %alloca_15, %elementVal_120
		mov     %alloca_14, %elementVal_109
		mov     %alloca_13, %elementVal_98
		mov     %alloca_12, %cres_326
		mov     %alloca_11, %elementVal_164
		mov     %alloca_10, %elementVal_153
		mov     %alloca_9, %elementVal_142
		mov     %alloca_8, %cres_338
		mov     %alloca_7, %elementVal_208
		mov     %alloca_6, %elementVal_197
		mov     %alloca_5, %elementVal_186
		mov     %alloca_4, %cres_350
		mov     %alloca_3, %elementVal_252
		mov     %alloca_2, %elementVal_241
		mov     %alloca_1, %elementVal_230
__L_27:
		mov     %varDef_444, %alloca_16
		mov     %varDef_445, %alloca_15
		mov     %varDef_446, %alloca_14
		mov     %varDef_447, %alloca_13
		mov     %varDef_448, %alloca_12
		mov     %varDef_449, %alloca_11
		mov     %varDef_450, %alloca_10
		mov     %varDef_451, %alloca_9
		mov     %varDef_452, %alloca_8
		mov     %varDef_453, %alloca_7
		mov     %varDef_454, %alloca_6
		mov     %varDef_455, %alloca_5
		mov     %varDef_456, %alloca_4
		mov     %varDef_457, %alloca_3
		mov     %varDef_458, %alloca_2
		mov     %varDef_459, %alloca_1
		mov     %newVal_265, %varDef_411
		inc     %newVal_265
		mov     %alloca_75, %newVal_265
		mov     %alloca_74, %varDef_444
		mov     %alloca_73, %varDef_445
		mov     %alloca_72, %varDef_446
		mov     %alloca_71, %varDef_447
		mov     %alloca_70, %varDef_448
		mov     %alloca_69, %varDef_449
		mov     %alloca_68, %varDef_450
		mov     %alloca_67, %varDef_451
		mov     %alloca_66, %varDef_452
		mov     %alloca_65, %varDef_453
		mov     %alloca_64, %varDef_454
		mov     %alloca_63, %varDef_455
		mov     %alloca_62, %varDef_456
		mov     %alloca_61, %varDef_457
		mov     %alloca_60, %varDef_458
		mov     %alloca_59, %varDef_459
		jmp     __L_22
__L_23:
		mov     %newVal_268, %varDef_392
		inc     %newVal_268
		mov     %alloca_56, %newVal_268
		mov     %alloca_55, %varDef_411
		mov     %alloca_54, %varDef_412
		mov     %alloca_53, %varDef_413
		mov     %alloca_52, %varDef_414
		mov     %alloca_51, %varDef_415
		mov     %alloca_50, %varDef_416
		mov     %alloca_49, %varDef_417
		mov     %alloca_48, %varDef_418
		mov     %alloca_47, %varDef_419
		mov     %alloca_46, %varDef_420
		mov     %alloca_45, %varDef_421
		mov     %alloca_44, %varDef_422
		mov     %alloca_43, %varDef_423
		mov     %alloca_42, %varDef_424
		mov     %alloca_41, %varDef_425
		mov     %alloca_40, %varDef_426
		mov     %alloca_39, %varDef_427
		jmp     __L_19
__L_20:
		mov     %newVal_271, %varDef_372
		inc     %newVal_271
		mov     %alloca_34, %newVal_271
		mov     %alloca_33, %varDef_393
		mov     %alloca_32, %varDef_394
		mov     %alloca_31, %varDef_395
		mov     %alloca_30, %varDef_396
		mov     %alloca_29, %varDef_397
		mov     %alloca_28, %varDef_398
		mov     %alloca_27, %varDef_399
		mov     %alloca_26, %varDef_400
		mov     %alloca_25, %varDef_401
		mov     %alloca_24, %varDef_402
		mov     %alloca_23, %varDef_403
		mov     %alloca_22, %varDef_404
		mov     %alloca_21, %varDef_405
		mov     %alloca_20, %varDef_406
		mov     %alloca_19, %varDef_407
		mov     %alloca_18, %varDef_408
		mov     %alloca_17, %varDef_409
		jmp     __L_16
__L_17:
		mov     %alloca_58, 0
		mov     %alloca_57, 0
__L_28:
		mov     %varDef_465, %alloca_58
		mov     %varDef_467, %alloca_57
		cmp     %varDef_465, %res_1
		setl    al
		movzx   %res_275, al
		cmp     %res_275, 0
		je      __L_29
__L_30:
		mov     %alloca_77, 0
		mov     %alloca_76, %varDef_467
__L_31:
		mov     %varDef_469, %alloca_77
		mov     %varDef_470, %alloca_76
		cmp     %varDef_469, %res_1
		setl    al
		movzx   %res_278, al
		cmp     %res_278, 0
		je      __L_32
__L_33:
		mov     %arrayBase_281, %arrayPtr_20
		add     %arrayBase_281, 8
		mov     %offset_283, %varDef_465
		imul    %offset_283, 8
		mov     %elementAddr_284, %arrayBase_281
		add     %elementAddr_284, %offset_283
		mov     %arrayPtr_285, qword [%elementAddr_284]
		mov     %arrayBase_286, %arrayPtr_285
		add     %arrayBase_286, 8
		mov     %offset_288, %varDef_469
		imul    %offset_288, 8
		mov     %elementAddr_289, %arrayBase_286
		add     %elementAddr_289, %offset_288
		mov     %elementVal_290, qword [%elementAddr_289]
		mov     %res_291, %varDef_470
		add     %res_291, %elementVal_290
		mov     %res_294, %res_291
		and     %res_294, 1073741823
		mov     %newVal_297, %varDef_469
		inc     %newVal_297
		mov     %alloca_77, %newVal_297
		mov     %alloca_76, %res_294
		jmp     __L_31
__L_32:
		mov     %newVal_300, %varDef_465
		inc     %newVal_300
		mov     %alloca_58, %newVal_300
		mov     %alloca_57, %varDef_470
		jmp     __L_28
__L_29:
		mov     rdi, %varDef_467
		call    toString
		mov     %res_301, rax
		mov     rdi, %res_301
		call    print
		mov     r15, %local_r15
		mov     r14, %local_r14
		mov     r12, %local_r12
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		mov     rax, 0
		ret     

SECTION .data

SECTION .bss


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


