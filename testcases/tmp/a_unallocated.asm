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
		mov     %local_r13, r13
		mov     %local_r15, r15
		mov     %local_rbx, rbx
		mov     %local_r12, r12
		mov     %local_r14, r14
		mov     rdi, 96008
		call    malloc
		mov     %arrayPtr_0, rax
		mov     qword [%arrayPtr_0], 12000
		mov     rdi, 96008
		call    malloc
		mov     %arrayPtr_3, rax
		mov     qword [%arrayPtr_3], 12000
		mov     rdi, 72
		call    malloc
		mov     %arrayPtr_6, rax
		mov     qword [%arrayPtr_6], 8
		mov     rdi, 80
		call    malloc
		mov     %arrayPtr_9, rax
		mov     qword [%arrayPtr_9], 9
		mov     qword [rel _ylist], %arrayPtr_3
		mov     qword [rel _dx], %arrayPtr_6
		mov     qword [rel _dy], %arrayPtr_9
		mov     qword [rel _xlist], %arrayPtr_0
		mov     r13, %local_r13
		mov     r15, %local_r15
		mov     rbx, %local_rbx
		mov     r12, %local_r12
		mov     r14, %local_r14
		ret     

origin:
		mov     %local_r13, r13
		mov     %local_r15, r15
		mov     %local_rbx, rbx
		mov     %local_r12, r12
		mov     %local_r14, r14
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
		mov     %alloca_3, %tmp_45
		mov     %alloca_2, 0
__L_1:
		mov     %varDef_62, %alloca_3
		mov     %varDef_63, %alloca_2
		cmp     %varDef_63, %argVal_0
		jge     __L_2
__L_3:
		mov     %memberLength_11, %argVal_0
		shl     %memberLength_11, 3
		mov     %arrayLength_12, %memberLength_11
		add     %arrayLength_12, 8
		mov     rdi, %arrayLength_12
		call    malloc
		mov     %arrayPtr_10, rax
		mov     qword [%arrayPtr_10], %argVal_0
		mov     %arrayBase_14, %arrayPtr_3
		add     %arrayBase_14, 8
		mov     %offset_16, %varDef_63
		shl     %offset_16, 3
		mov     %elementAddr_17, %arrayBase_14
		add     %elementAddr_17, %offset_16
		mov     qword [%elementAddr_17], %arrayPtr_10
		mov     %alloca_1, 0
__L_4:
		mov     %varDef_65, %alloca_1
		cmp     %varDef_65, %argVal_0
		jge     __L_5
__L_6:
		mov     %arrayBase_22, %arrayPtr_3
		add     %arrayBase_22, 8
		mov     %offset_24, %varDef_63
		shl     %offset_24, 3
		mov     %elementAddr_25, %arrayBase_22
		add     %elementAddr_25, %offset_24
		mov     %arrayPtr_26, qword [%elementAddr_25]
		mov     %arrayBase_27, %arrayPtr_26
		add     %arrayBase_27, 8
		mov     %offset_29, %varDef_65
		shl     %offset_29, 3
		mov     %elementAddr_30, %arrayBase_27
		add     %elementAddr_30, %offset_29
		mov     qword [%elementAddr_30], 0
		mov     %newVal_33, %varDef_65
		inc     %newVal_33
		mov     %alloca_1, %newVal_33
		jmp     __L_4
__L_5:
		mov     %newVal_36, %varDef_63
		inc     %newVal_36
		mov     %alloca_3, %varDef_65
		mov     %alloca_2, %newVal_36
		jmp     __L_1
__L_2:
		mov     qword [rel _tail], 0
		mov     qword [rel _head], 0
		mov     qword [rel _step], %arrayPtr_3
		mov     qword [rel _j], %varDef_62
		mov     qword [rel _i], %varDef_63
		mov     r13, %local_r13
		mov     r15, %local_r15
		mov     rbx, %local_rbx
		mov     r12, %local_r12
		mov     r14, %local_r14
		ret     

check:
		mov     %local_r13, r13
		mov     %local_r15, r15
		mov     %local_rbx, rbx
		mov     %local_r12, r12
		mov     %local_r14, r14
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
		mov     r13, %local_r13
		mov     r15, %local_r15
		mov     rbx, %local_rbx
		mov     r12, %local_r12
		mov     r14, %local_r14
		mov     rax, %varDef_15
		ret     

addList:
		mov     %local_r13, r13
		mov     %local_r15, r15
		mov     %local_rbx, rbx
		mov     %local_r12, r12
		mov     %local_r14, r14
		mov     %argVal_0, rdi
		mov     %argVal_2, rsi
		mov     %tmp_89, qword [rel _now]
		mov     %tmp_88, qword [rel _xlist]
		mov     %tmp_87, qword [rel _step]
		mov     %tmp_86, qword [rel _N]
		mov     %tmp_85, qword [rel _targetx]
		mov     %tmp_84, qword [rel _ylist]
		mov     %tmp_83, qword [rel _ok]
		mov     %tmp_82, qword [rel _targety]
		mov     %tmp_81, qword [rel _tail]
__L_11:
		cmp     %argVal_0, %tmp_86
		jge     __L_12
__L_13:
		cmp     %argVal_0, 0
		jl      __L_12
__L_14:
		mov     %alloca_8, 1
		jmp     __L_15
__L_12:
		mov     %alloca_8, 0
__L_15:
		mov     %varDef_106, %alloca_8
		cmp     %varDef_106, 0
		jne     __L_16
__L_17:
		mov     %alloca_7, %tmp_81
		mov     %alloca_6, %tmp_83
		jmp     __L_18
__L_16:
		cmp     %argVal_2, %tmp_86
		jge     __L_19
__L_20:
		cmp     %argVal_2, 0
		jl      __L_19
__L_21:
		mov     %alloca_5, 1
		jmp     __L_22
__L_19:
		mov     %alloca_5, 0
__L_22:
		mov     %varDef_111, %alloca_5
		cmp     %varDef_111, 0
		jne     __L_23
__L_24:
		mov     %alloca_7, %tmp_81
		mov     %alloca_6, %tmp_83
		jmp     __L_18
__L_23:
		mov     %arrayBase_9, %tmp_87
		add     %arrayBase_9, 8
		mov     %offset_11, %argVal_0
		shl     %offset_11, 3
		mov     %elementAddr_12, %arrayBase_9
		add     %elementAddr_12, %offset_11
		mov     %arrayPtr_13, qword [%elementAddr_12]
		mov     %arrayBase_14, %arrayPtr_13
		add     %arrayBase_14, 8
		mov     %offset_16, %argVal_2
		shl     %offset_16, 3
		mov     %elementAddr_17, %arrayBase_14
		add     %elementAddr_17, %offset_16
		mov     %elementVal_18, qword [%elementAddr_17]
		cmp     %elementVal_18, -1
		je      __L_25
__L_26:
		mov     %alloca_7, %tmp_81
		mov     %alloca_6, %tmp_83
		jmp     __L_18
__L_25:
		mov     %newVal_23, %tmp_81
		inc     %newVal_23
		mov     %arrayBase_26, %tmp_88
		add     %arrayBase_26, 8
		mov     %offset_28, %newVal_23
		shl     %offset_28, 3
		mov     %elementAddr_29, %arrayBase_26
		add     %elementAddr_29, %offset_28
		mov     qword [%elementAddr_29], %argVal_0
		mov     %arrayBase_32, %tmp_84
		add     %arrayBase_32, 8
		mov     %elementAddr_35, %arrayBase_32
		add     %elementAddr_35, %offset_28
		mov     qword [%elementAddr_35], %argVal_2
		mov     %res_37, %tmp_89
		add     %res_37, 1
		mov     %arrayBase_39, %tmp_87
		add     %arrayBase_39, 8
		mov     %offset_41, %argVal_0
		shl     %offset_41, 3
		mov     %elementAddr_42, %arrayBase_39
		add     %elementAddr_42, %offset_41
		mov     %arrayPtr_43, qword [%elementAddr_42]
		mov     %arrayBase_44, %arrayPtr_43
		add     %arrayBase_44, 8
		mov     %offset_46, %argVal_2
		shl     %offset_46, 3
		mov     %elementAddr_47, %arrayBase_44
		add     %elementAddr_47, %offset_46
		mov     qword [%elementAddr_47], %res_37
		cmp     %argVal_0, %tmp_85
		je      __L_27
__L_28:
		mov     %alloca_7, %newVal_23
		mov     %alloca_6, %tmp_83
		jmp     __L_18
__L_27:
		cmp     %argVal_2, %tmp_82
		je      __L_29
__L_30:
		mov     %alloca_7, %newVal_23
		mov     %alloca_6, %tmp_83
		jmp     __L_18
__L_29:
		mov     %alloca_7, %newVal_23
		mov     %alloca_6, 1
__L_18:
		mov     %varDef_118, %alloca_7
		mov     %varDef_119, %alloca_6
		mov     qword [rel _tail], %varDef_118
		mov     qword [rel _ok], %varDef_119
		mov     r13, %local_r13
		mov     r15, %local_r15
		mov     rbx, %local_rbx
		mov     r12, %local_r12
		mov     r14, %local_r14
		ret     

main:
		mov     %local_r13, r13
		mov     %local_r15, r15
		mov     %local_rbx, rbx
		mov     %local_r12, r12
		mov     %local_r14, r14
		call    __globalInit
		mov     %tmp_301, qword [rel _now]
		mov     %tmp_300, qword [rel _dy]
		mov     %tmp_295, qword [rel _x]
		mov     %tmp_294, qword [rel _xlist]
		mov     %tmp_293, qword [rel _y]
		mov     %tmp_291, qword [rel _dx]
		mov     %tmp_290, qword [rel _j]
		mov     %tmp_288, qword [rel _ylist]
		mov     %tmp_287, qword [rel _ok]
__L_31:
		mov     rdi, 856
		call    malloc
		mov     %carrayPtr_168, rax
		mov     qword [%carrayPtr_168], 106
		mov     %alloca_12, %tmp_290
		mov     %alloca_11, 0
__L_32:
		mov     %varDef_335, %alloca_12
		mov     %varDef_336, %alloca_11
		cmp     %varDef_336, 106
		jge     __L_33
__L_34:
		mov     rdi, 856
		call    malloc
		mov     %carrayPtr_175, rax
		mov     qword [%carrayPtr_175], 106
		mov     %carrayBase_177, %carrayPtr_168
		add     %carrayBase_177, 8
		mov     %coffset_179, %varDef_336
		shl     %coffset_179, 3
		mov     %celementAddr_180, %carrayBase_177
		add     %celementAddr_180, %coffset_179
		mov     qword [%celementAddr_180], %carrayPtr_175
		mov     %alloca_53, 0
__L_35:
		mov     %varDef_338, %alloca_53
		cmp     %varDef_338, 106
		jge     __L_36
__L_37:
		mov     %carrayBase_185, %carrayPtr_168
		add     %carrayBase_185, 8
		mov     %coffset_187, %varDef_336
		shl     %coffset_187, 3
		mov     %celementAddr_188, %carrayBase_185
		add     %celementAddr_188, %coffset_187
		mov     %carrayPtr_189, qword [%celementAddr_188]
		mov     %carrayBase_190, %carrayPtr_189
		add     %carrayBase_190, 8
		mov     %coffset_192, %varDef_338
		shl     %coffset_192, 3
		mov     %celementAddr_193, %carrayBase_190
		add     %celementAddr_193, %coffset_192
		mov     qword [%celementAddr_193], 0
		mov     %cnewVal_196, %varDef_338
		inc     %cnewVal_196
		mov     %alloca_53, %cnewVal_196
		jmp     __L_35
__L_36:
		mov     %cnewVal_199, %varDef_336
		inc     %cnewVal_199
		mov     %alloca_12, %varDef_338
		mov     %alloca_11, %cnewVal_199
		jmp     __L_32
__L_33:
		call    getInt
		mov     %res_0, rax
		mov     %res_2, %res_0
		sub     %res_2, 1
		mov     %alloca_10, %varDef_335
		mov     %alloca_9, 0
__L_38:
		mov     %varDef_345, %alloca_10
		mov     %varDef_346, %alloca_9
		cmp     %varDef_346, %res_0
		jge     __L_39
__L_40:
		mov     %alloca_35, 0
__L_41:
		mov     %varDef_348, %alloca_35
		cmp     %varDef_348, %res_0
		jge     __L_42
__L_43:
		mov     %arrayBase_12, %carrayPtr_168
		add     %arrayBase_12, 8
		mov     %offset_14, %varDef_346
		shl     %offset_14, 3
		mov     %elementAddr_15, %arrayBase_12
		add     %elementAddr_15, %offset_14
		mov     %arrayPtr_16, qword [%elementAddr_15]
		mov     %arrayBase_17, %arrayPtr_16
		add     %arrayBase_17, 8
		mov     %offset_19, %varDef_348
		shl     %offset_19, 3
		mov     %elementAddr_20, %arrayBase_17
		add     %elementAddr_20, %offset_19
		mov     qword [%elementAddr_20], -1
		mov     %newVal_23, %varDef_348
		inc     %newVal_23
		mov     %alloca_35, %newVal_23
		jmp     __L_41
__L_42:
		mov     %newVal_26, %varDef_346
		inc     %newVal_26
		mov     %alloca_10, %varDef_348
		mov     %alloca_9, %newVal_26
		jmp     __L_38
__L_39:
		mov     %arrayBase_29, %tmp_291
		add     %arrayBase_29, 8
		mov     %elementAddr_31, %arrayBase_29
		add     %elementAddr_31, 0
		mov     qword [%elementAddr_31], -2
		mov     %arrayBase_34, %tmp_300
		add     %arrayBase_34, 8
		mov     %elementAddr_36, %arrayBase_34
		add     %elementAddr_36, 0
		mov     qword [%elementAddr_36], -1
		mov     %elementAddr_41, %arrayBase_29
		add     %elementAddr_41, 8
		mov     qword [%elementAddr_41], -2
		mov     %elementAddr_45, %arrayBase_34
		add     %elementAddr_45, 8
		mov     qword [%elementAddr_45], 1
		mov     %elementAddr_49, %arrayBase_29
		add     %elementAddr_49, 16
		mov     qword [%elementAddr_49], 2
		mov     %elementAddr_54, %arrayBase_34
		add     %elementAddr_54, 16
		mov     qword [%elementAddr_54], -1
		mov     %elementAddr_58, %arrayBase_29
		add     %elementAddr_58, 24
		mov     qword [%elementAddr_58], 2
		mov     %elementAddr_62, %arrayBase_34
		add     %elementAddr_62, 24
		mov     qword [%elementAddr_62], 1
		mov     %elementAddr_67, %arrayBase_29
		add     %elementAddr_67, 32
		mov     qword [%elementAddr_67], -1
		mov     %elementAddr_72, %arrayBase_34
		add     %elementAddr_72, 32
		mov     qword [%elementAddr_72], -2
		mov     %elementAddr_77, %arrayBase_29
		add     %elementAddr_77, 40
		mov     qword [%elementAddr_77], -1
		mov     %elementAddr_81, %arrayBase_34
		add     %elementAddr_81, 40
		mov     qword [%elementAddr_81], 2
		mov     %elementAddr_85, %arrayBase_29
		add     %elementAddr_85, 48
		mov     qword [%elementAddr_85], 1
		mov     %elementAddr_90, %arrayBase_34
		add     %elementAddr_90, 48
		mov     qword [%elementAddr_90], -2
		mov     %elementAddr_94, %arrayBase_29
		add     %elementAddr_94, 56
		mov     qword [%elementAddr_94], 1
		mov     %elementAddr_98, %arrayBase_34
		add     %elementAddr_98, 56
		mov     qword [%elementAddr_98], 2
		mov     %alloca_51, 0
		mov     %alloca_50, 0
		mov     %alloca_49, 0
		mov     %alloca_48, 0
		mov     %alloca_47, 0
		mov     %alloca_46, 0
		mov     %alloca_45, 0
		mov     %alloca_44, 0
		mov     %alloca_43, %tmp_287
		mov     %alloca_42, 0
		mov     %alloca_41, %varDef_345
		mov     %alloca_40, %tmp_293
		mov     %alloca_39, %tmp_295
		mov     %alloca_38, 0
		mov     %alloca_37, %tmp_301
__L_44:
		mov     %varDef_351, %alloca_51
		mov     %varDef_352, %alloca_50
		mov     %varDef_353, %alloca_49
		mov     %varDef_354, %alloca_48
		mov     %varDef_355, %alloca_47
		mov     %varDef_356, %alloca_46
		mov     %varDef_357, %alloca_45
		mov     %varDef_358, %alloca_44
		mov     %varDef_359, %alloca_43
		mov     %varDef_360, %alloca_42
		mov     %varDef_361, %alloca_41
		mov     %varDef_362, %alloca_40
		mov     %varDef_363, %alloca_39
		mov     %varDef_364, %alloca_38
		mov     %varDef_365, %alloca_37
		cmp     %varDef_360, %varDef_364
		jle     __L_45
__L_46:
		mov     %alloca_29, %varDef_359
		mov     %alloca_28, %varDef_361
		mov     %alloca_27, %varDef_362
		mov     %alloca_26, %varDef_363
		mov     %alloca_25, %varDef_364
		mov     %alloca_24, %varDef_365
		jmp     __L_47
__L_45:
		mov     %arrayBase_103, %tmp_294
		add     %arrayBase_103, 8
		mov     %offset_105, %varDef_360
		shl     %offset_105, 3
		mov     %elementAddr_106, %arrayBase_103
		add     %elementAddr_106, %offset_105
		mov     %elementVal_107, qword [%elementAddr_106]
		mov     %arrayBase_109, %tmp_288
		add     %arrayBase_109, 8
		mov     %elementAddr_112, %arrayBase_109
		add     %elementAddr_112, %offset_105
		mov     %elementVal_113, qword [%elementAddr_112]
		mov     %arrayBase_115, %carrayPtr_168
		add     %arrayBase_115, 8
		mov     %offset_117, %elementVal_107
		shl     %offset_117, 3
		mov     %elementAddr_118, %arrayBase_115
		add     %elementAddr_118, %offset_117
		mov     %arrayPtr_119, qword [%elementAddr_118]
		mov     %arrayBase_120, %arrayPtr_119
		add     %arrayBase_120, 8
		mov     %offset_122, %elementVal_113
		shl     %offset_122, 3
		mov     %elementAddr_123, %arrayBase_120
		add     %elementAddr_123, %offset_122
		mov     %elementVal_124, qword [%elementAddr_123]
		mov     %alloca_23, %varDef_351
		mov     %alloca_22, %varDef_352
		mov     %alloca_21, %varDef_353
		mov     %alloca_20, %varDef_354
		mov     %alloca_19, %varDef_355
		mov     %alloca_18, %varDef_356
		mov     %alloca_17, %varDef_357
		mov     %alloca_16, %varDef_358
		mov     %alloca_15, %varDef_359
		mov     %alloca_14, 0
		mov     %alloca_13, %varDef_364
__L_48:
		mov     %varDef_370, %alloca_23
		mov     %varDef_371, %alloca_22
		mov     %varDef_372, %alloca_21
		mov     %varDef_373, %alloca_20
		mov     %varDef_374, %alloca_19
		mov     %varDef_375, %alloca_18
		mov     %varDef_376, %alloca_17
		mov     %varDef_377, %alloca_16
		mov     %varDef_378, %alloca_15
		mov     %varDef_379, %alloca_14
		mov     %varDef_380, %alloca_13
		cmp     %varDef_379, 8
		jge     __L_49
__L_50:
		mov     %arrayBase_129, %tmp_291
		add     %arrayBase_129, 8
		mov     %offset_131, %varDef_379
		shl     %offset_131, 3
		mov     %elementAddr_132, %arrayBase_129
		add     %elementAddr_132, %offset_131
		mov     %elementVal_133, qword [%elementAddr_132]
		mov     %res_134, %elementVal_107
		add     %res_134, %elementVal_133
		mov     %arrayBase_137, %tmp_300
		add     %arrayBase_137, 8
		mov     %elementAddr_140, %arrayBase_137
		add     %elementAddr_140, %offset_131
		mov     %elementVal_141, qword [%elementAddr_140]
		mov     %res_142, %elementVal_113
		add     %res_142, %elementVal_141
		cmp     %res_134, %res_0
		jge     __L_51
__L_52:
		cmp     %res_134, 0
		jl      __L_51
__L_53:
		mov     %alloca_52, 1
		jmp     __L_54
__L_51:
		mov     %alloca_52, 0
__L_54:
		mov     %varDef_386, %alloca_52
		cmp     %varDef_386, 0
		jne     __L_55
__L_56:
		mov     %alloca_34, %varDef_375
		mov     %alloca_33, %varDef_376
		mov     %alloca_32, %varDef_377
		mov     %alloca_31, %varDef_378
		mov     %alloca_30, %varDef_380
		jmp     __L_57
__L_55:
		cmp     %res_142, %res_0
		jge     __L_58
__L_59:
		cmp     %res_142, 0
		jl      __L_58
__L_60:
		mov     %alloca_36, 1
		jmp     __L_61
__L_58:
		mov     %alloca_36, 0
__L_61:
		mov     %varDef_391, %alloca_36
		cmp     %varDef_391, 0
		jne     __L_62
__L_63:
		mov     %alloca_34, %varDef_391
		mov     %alloca_33, %varDef_391
		mov     %alloca_32, %res_142
		mov     %alloca_31, %varDef_378
		mov     %alloca_30, %varDef_380
		jmp     __L_57
__L_62:
		mov     %carrayBase_207, %carrayPtr_168
		add     %carrayBase_207, 8
		mov     %coffset_209, %res_134
		shl     %coffset_209, 3
		mov     %celementAddr_210, %carrayBase_207
		add     %celementAddr_210, %coffset_209
		mov     %carrayPtr_211, qword [%celementAddr_210]
		mov     %carrayBase_212, %carrayPtr_211
		add     %carrayBase_212, 8
		mov     %coffset_214, %res_142
		shl     %coffset_214, 3
		mov     %celementAddr_215, %carrayBase_212
		add     %celementAddr_215, %coffset_214
		mov     %celementVal_216, qword [%celementAddr_215]
		cmp     %celementVal_216, -1
		je      __L_64
__L_65:
		mov     %alloca_34, %varDef_391
		mov     %alloca_33, %varDef_391
		mov     %alloca_32, %res_142
		mov     %alloca_31, %varDef_378
		mov     %alloca_30, %varDef_380
		jmp     __L_57
__L_64:
		mov     %cnewVal_221, %varDef_380
		inc     %cnewVal_221
		mov     %carrayBase_224, %tmp_294
		add     %carrayBase_224, 8
		mov     %coffset_226, %cnewVal_221
		shl     %coffset_226, 3
		mov     %celementAddr_227, %carrayBase_224
		add     %celementAddr_227, %coffset_226
		mov     qword [%celementAddr_227], %res_134
		mov     %carrayBase_230, %tmp_288
		add     %carrayBase_230, 8
		mov     %celementAddr_233, %carrayBase_230
		add     %celementAddr_233, %coffset_226
		mov     qword [%celementAddr_233], %res_142
		mov     %cres_235, %elementVal_124
		add     %cres_235, 1
		mov     %carrayBase_237, %carrayPtr_168
		add     %carrayBase_237, 8
		mov     %coffset_239, %res_134
		shl     %coffset_239, 3
		mov     %celementAddr_240, %carrayBase_237
		add     %celementAddr_240, %coffset_239
		mov     %carrayPtr_241, qword [%celementAddr_240]
		mov     %carrayBase_242, %carrayPtr_241
		add     %carrayBase_242, 8
		mov     %coffset_244, %res_142
		shl     %coffset_244, 3
		mov     %celementAddr_245, %carrayBase_242
		add     %celementAddr_245, %coffset_244
		mov     qword [%celementAddr_245], %cres_235
		cmp     %res_134, %res_2
		je      __L_66
__L_67:
		mov     %alloca_34, %varDef_391
		mov     %alloca_33, %varDef_391
		mov     %alloca_32, %res_142
		mov     %alloca_31, %varDef_378
		mov     %alloca_30, %cnewVal_221
		jmp     __L_57
__L_66:
		cmp     %res_142, %res_2
		je      __L_68
__L_69:
		mov     %alloca_34, %varDef_391
		mov     %alloca_33, %varDef_391
		mov     %alloca_32, %res_142
		mov     %alloca_31, %varDef_378
		mov     %alloca_30, %cnewVal_221
		jmp     __L_57
__L_68:
		mov     %alloca_34, %varDef_391
		mov     %alloca_33, %varDef_391
		mov     %alloca_32, %res_142
		mov     %alloca_31, 1
		mov     %alloca_30, %cnewVal_221
__L_57:
		mov     %varDef_395, %alloca_34
		mov     %varDef_396, %alloca_33
		mov     %varDef_397, %alloca_32
		mov     %varDef_398, %alloca_31
		mov     %varDef_399, %alloca_30
		mov     %newVal_145, %varDef_379
		inc     %newVal_145
		mov     %alloca_23, %res_142
		mov     %alloca_22, %res_134
		mov     %alloca_21, %varDef_386
		mov     %alloca_20, %varDef_386
		mov     %alloca_19, %res_134
		mov     %alloca_18, %varDef_395
		mov     %alloca_17, %varDef_396
		mov     %alloca_16, %varDef_397
		mov     %alloca_15, %varDef_398
		mov     %alloca_14, %newVal_145
		mov     %alloca_13, %varDef_399
		jmp     __L_48
__L_49:
		cmp     %varDef_378, 1
		jne     __L_70
__L_71:
		mov     %alloca_29, %varDef_378
		mov     %alloca_28, %varDef_379
		mov     %alloca_27, %elementVal_113
		mov     %alloca_26, %elementVal_107
		mov     %alloca_25, %varDef_380
		mov     %alloca_24, %elementVal_124
		jmp     __L_47
__L_70:
		mov     %newVal_150, %varDef_360
		inc     %newVal_150
		mov     %alloca_51, %varDef_370
		mov     %alloca_50, %varDef_371
		mov     %alloca_49, %varDef_372
		mov     %alloca_48, %varDef_373
		mov     %alloca_47, %varDef_374
		mov     %alloca_46, %varDef_375
		mov     %alloca_45, %varDef_376
		mov     %alloca_44, %varDef_377
		mov     %alloca_43, %varDef_378
		mov     %alloca_42, %newVal_150
		mov     %alloca_41, %varDef_379
		mov     %alloca_40, %elementVal_113
		mov     %alloca_39, %elementVal_107
		mov     %alloca_38, %varDef_380
		mov     %alloca_37, %elementVal_124
		jmp     __L_44
__L_47:
		mov     %varDef_410, %alloca_29
		mov     %varDef_411, %alloca_28
		mov     %varDef_412, %alloca_27
		mov     %varDef_413, %alloca_26
		mov     %varDef_414, %alloca_25
		mov     %varDef_415, %alloca_24
		cmp     %varDef_410, 1
		jne     __L_72
__L_73:
		mov     %arrayBase_154, %carrayPtr_168
		add     %arrayBase_154, 8
		mov     %offset_156, %res_2
		shl     %offset_156, 3
		mov     %elementAddr_157, %arrayBase_154
		add     %elementAddr_157, %offset_156
		mov     %arrayPtr_158, qword [%elementAddr_157]
		mov     %arrayBase_159, %arrayPtr_158
		add     %arrayBase_159, 8
		mov     %elementAddr_162, %arrayBase_159
		add     %elementAddr_162, %offset_156
		mov     %elementVal_163, qword [%elementAddr_162]
		mov     rdi, %elementVal_163
		call    __printlnInt
		jmp     __L_74
__L_72:
		mov     rdi, __str_0
		call    print
__L_74:
		mov     qword [rel _targety], %res_2
		mov     qword [rel _ok], %varDef_410
		mov     qword [rel _head], %varDef_360
		mov     qword [rel _j], %varDef_411
		mov     qword [rel _i], %varDef_346
		mov     qword [rel _y], %varDef_412
		mov     qword [rel _x], %varDef_413
		mov     qword [rel _tail], %varDef_414
		mov     qword [rel _targetx], %res_2
		mov     qword [rel _N], %res_0
		mov     qword [rel _step], %carrayPtr_168
		mov     qword [rel _now], %varDef_415
		mov     r13, %local_r13
		mov     r15, %local_r15
		mov     rbx, %local_rbx
		mov     r12, %local_r12
		mov     r14, %local_r14
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
        mov     rax, qword [rdi]
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


