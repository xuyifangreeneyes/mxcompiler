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
		mov     %local_r14, r14
		mov     %local_r15, r15
		mov     %local_rbx, rbx
		mov     %local_r12, r12
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
		mov     r13, %local_r13
		mov     r14, %local_r14
		mov     r15, %local_r15
		mov     rbx, %local_rbx
		mov     r12, %local_r12
		ret     

origin:
		mov     %local_r13, r13
		mov     %local_r14, r14
		mov     %local_r15, r15
		mov     %local_rbx, rbx
		mov     %local_r12, r12
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
		mov     %varDef_62, %tmp_45
		mov     %varDef_61, 0
__L_1:
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
		mov     %varDef_64, 0
__L_4:
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
		mov     %varDef_64, %newVal_32
		jmp     __L_4
__L_5:
		mov     %newVal_35, %varDef_61
		inc     %newVal_35
		mov     %varDef_61, %newVal_35
		mov     %varDef_62, %varDef_64
		jmp     __L_1
__L_2:
		mov     qword [rel _tail], 0
		mov     qword [rel _i], %varDef_61
		mov     qword [rel _head], 0
		mov     qword [rel _step], %arrayBase_6
		mov     qword [rel _j], %varDef_62
		mov     r13, %local_r13
		mov     r14, %local_r14
		mov     r15, %local_r15
		mov     rbx, %local_rbx
		mov     r12, %local_r12
		ret     

check:
		mov     %local_r13, r13
		mov     %local_r14, r14
		mov     %local_r15, r15
		mov     %local_rbx, rbx
		mov     %local_r12, r12
		mov     %argVal_0, rdi
		mov     %tmp_10, qword [rel _N]
		cmp     %argVal_0, %tmp_10
		jge     __L_7
__L_8:
		cmp     %argVal_0, 0
		jl      __L_7
__L_9:
		mov     %varDef_15, 1
		jmp     __L_10
__L_7:
		mov     %varDef_15, 0
__L_10:
		mov     r13, %local_r13
		mov     r14, %local_r14
		mov     r15, %local_r15
		mov     rbx, %local_rbx
		mov     r12, %local_r12
		mov     rax, %varDef_15
		ret     

addList:
		mov     %local_r13, r13
		mov     %local_r14, r14
		mov     %local_r15, r15
		mov     %local_rbx, rbx
		mov     %local_r12, r12
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
		mov     %varDef_100, 1
		jmp     __L_15
__L_12:
		mov     %varDef_100, 0
__L_15:
		cmp     %varDef_100, 0
		jne     __L_16
__L_17:
		mov     %varDef_112, %tmp_77
		mov     %varDef_113, %tmp_79
		jmp     __L_18
__L_16:
		cmp     %argVal_2, %tmp_76
		jge     __L_19
__L_20:
		cmp     %argVal_2, 0
		jl      __L_19
__L_21:
		mov     %varDef_105, 1
		jmp     __L_22
__L_19:
		mov     %varDef_105, 0
__L_22:
		cmp     %varDef_105, 0
		jne     __L_23
__L_24:
		mov     %varDef_113, %tmp_79
		mov     %varDef_112, %tmp_77
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
		mov     %varDef_112, %tmp_77
		mov     %varDef_113, %tmp_79
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
		mov     %varDef_112, %newVal_21
		mov     %varDef_113, %tmp_79
		jmp     __L_18
__L_27:
		cmp     %argVal_2, %tmp_78
		je      __L_29
__L_30:
		mov     %varDef_112, %newVal_21
		mov     %varDef_113, %tmp_79
		jmp     __L_18
__L_29:
		mov     %varDef_113, 1
		mov     %varDef_112, %newVal_21
__L_18:
		mov     qword [rel _tail], %varDef_112
		mov     qword [rel _ok], %varDef_113
		mov     r13, %local_r13
		mov     r14, %local_r14
		mov     r15, %local_r15
		mov     rbx, %local_rbx
		mov     r12, %local_r12
		ret     

main:
		mov     %local_r13, r13
		mov     %local_r14, r14
		mov     %local_r15, r15
		mov     %local_rbx, rbx
		mov     %local_r12, r12
		mov     %tmp_248, qword [rel _y]
		mov     %tmp_247, qword [rel _x]
		mov     %tmp_246, qword [rel _i]
		mov     %tmp_243, qword [rel _now]
		mov     %tmp_242, qword [rel _j]
		mov     %tmp_240, qword [rel _head]
		mov     %tmp_237, qword [rel _ok]
		mov     %tmp_236, qword [rel _tail]
__L_31:
		mov     rdi, 96008
		call    malloc
		mov     %carrayPtr_140, rax
		mov     qword [%carrayPtr_140], 12000
		mov     %carrayBase_141, %carrayPtr_140
		add     %carrayBase_141, 8
		mov     rdi, 96008
		call    malloc
		mov     %carrayPtr_144, rax
		mov     qword [%carrayPtr_144], 12000
		mov     %carrayBase_145, %carrayPtr_144
		add     %carrayBase_145, 8
		mov     rdi, 72
		call    malloc
		mov     %carrayPtr_148, rax
		mov     qword [%carrayPtr_148], 8
		mov     %carrayBase_149, %carrayPtr_148
		add     %carrayBase_149, 8
		mov     rdi, 80
		call    malloc
		mov     %carrayPtr_152, rax
		mov     qword [%carrayPtr_152], 9
		mov     %carrayBase_153, %carrayPtr_152
		add     %carrayBase_153, 8
		mov     qword [rel _tail], %tmp_236
		mov     qword [rel _head], %tmp_240
		mov     qword [rel _j], %tmp_242
		mov     qword [rel _i], %tmp_246
		mov     rdi, 106
		call    origin
		mov     %tmp_256, qword [rel _j]
		mov     %tmp_254, qword [rel _step]
		mov     %tmp_253, qword [rel _head]
		mov     %tmp_251, qword [rel _tail]
		call    getInt
		mov     %res_0, rax
		mov     %res_2, %res_0
		sub     %res_2, 1
		mov     %varDef_304, 0
		mov     %varDef_303, %tmp_256
__L_32:
		cmp     %varDef_304, %res_0
		jge     __L_33
__L_34:
		mov     %varDef_306, 0
__L_35:
		cmp     %varDef_306, %res_0
		jge     __L_36
__L_37:
		mov     %offset_13, %varDef_304
		shl     %offset_13, 3
		mov     %elementAddr_14, %tmp_254
		add     %elementAddr_14, %offset_13
		mov     %arrayBase_15, qword [%elementAddr_14]
		mov     %offset_17, %varDef_306
		shl     %offset_17, 3
		mov     %elementAddr_18, %arrayBase_15
		add     %elementAddr_18, %offset_17
		mov     qword [%elementAddr_18], -1
		mov     %newVal_21, %varDef_306
		inc     %newVal_21
		mov     %varDef_306, %newVal_21
		jmp     __L_35
__L_36:
		mov     %newVal_24, %varDef_304
		inc     %newVal_24
		mov     %varDef_304, %newVal_24
		mov     %varDef_303, %varDef_306
		jmp     __L_32
__L_33:
		mov     %elementAddr_28, %carrayBase_149
		add     %elementAddr_28, 0
		mov     qword [%elementAddr_28], -2
		mov     %elementAddr_32, %carrayBase_153
		add     %elementAddr_32, 0
		mov     qword [%elementAddr_32], -1
		mov     %elementAddr_36, %carrayBase_149
		add     %elementAddr_36, 8
		mov     qword [%elementAddr_36], -2
		mov     %elementAddr_39, %carrayBase_153
		add     %elementAddr_39, 8
		mov     qword [%elementAddr_39], 1
		mov     %elementAddr_42, %carrayBase_149
		add     %elementAddr_42, 16
		mov     qword [%elementAddr_42], 2
		mov     %elementAddr_46, %carrayBase_153
		add     %elementAddr_46, 16
		mov     qword [%elementAddr_46], -1
		mov     %elementAddr_49, %carrayBase_149
		add     %elementAddr_49, 24
		mov     qword [%elementAddr_49], 2
		mov     %elementAddr_52, %carrayBase_153
		add     %elementAddr_52, 24
		mov     qword [%elementAddr_52], 1
		mov     %elementAddr_56, %carrayBase_149
		add     %elementAddr_56, 32
		mov     qword [%elementAddr_56], -1
		mov     %elementAddr_60, %carrayBase_153
		add     %elementAddr_60, 32
		mov     qword [%elementAddr_60], -2
		mov     %elementAddr_64, %carrayBase_149
		add     %elementAddr_64, 40
		mov     qword [%elementAddr_64], -1
		mov     %elementAddr_67, %carrayBase_153
		add     %elementAddr_67, 40
		mov     qword [%elementAddr_67], 2
		mov     %elementAddr_70, %carrayBase_149
		add     %elementAddr_70, 48
		mov     qword [%elementAddr_70], 1
		mov     %elementAddr_74, %carrayBase_153
		add     %elementAddr_74, 48
		mov     qword [%elementAddr_74], -2
		mov     %elementAddr_77, %carrayBase_149
		add     %elementAddr_77, 56
		mov     qword [%elementAddr_77], 1
		mov     %elementAddr_80, %carrayBase_153
		add     %elementAddr_80, 56
		mov     qword [%elementAddr_80], 2
		mov     %varDef_323, %tmp_248
		mov     %varDef_318, %tmp_237
		mov     %varDef_322, %tmp_247
		mov     %varDef_317, %tmp_251
		mov     %varDef_319, %tmp_253
		mov     %varDef_321, %tmp_243
		mov     %varDef_320, %varDef_303
__L_38:
		cmp     %varDef_319, %varDef_317
		jle     __L_39
__L_40:
		mov     %varDef_370, %varDef_320
		mov     %varDef_371, %varDef_321
		mov     %varDef_372, %varDef_322
		mov     %varDef_373, %varDef_323
		mov     %varDef_368, %varDef_317
		mov     %varDef_369, %varDef_318
		jmp     __L_41
__L_39:
		mov     %offset_86, %varDef_319
		shl     %offset_86, 3
		mov     %elementAddr_87, %carrayBase_141
		add     %elementAddr_87, %offset_86
		mov     %elementVal_88, qword [%elementAddr_87]
		mov     %elementAddr_92, %carrayBase_145
		add     %elementAddr_92, %offset_86
		mov     %elementVal_93, qword [%elementAddr_92]
		mov     %offset_96, %elementVal_88
		shl     %offset_96, 3
		mov     %elementAddr_97, %tmp_254
		add     %elementAddr_97, %offset_96
		mov     %arrayBase_98, qword [%elementAddr_97]
		mov     %offset_100, %elementVal_93
		shl     %offset_100, 3
		mov     %elementAddr_101, %arrayBase_98
		add     %elementAddr_101, %offset_100
		mov     %elementVal_102, qword [%elementAddr_101]
		mov     %varDef_337, %varDef_318
		mov     %varDef_338, 0
		mov     %varDef_336, %varDef_317
__L_42:
		cmp     %varDef_338, 8
		jge     __L_43
__L_44:
		mov     %offset_108, %varDef_338
		shl     %offset_108, 3
		mov     %elementAddr_109, %carrayBase_149
		add     %elementAddr_109, %offset_108
		mov     %elementVal_110, qword [%elementAddr_109]
		mov     %res_111, %elementVal_88
		add     %res_111, %elementVal_110
		mov     %elementAddr_116, %carrayBase_153
		add     %elementAddr_116, %offset_108
		mov     %elementVal_117, qword [%elementAddr_116]
		mov     %res_118, %elementVal_93
		add     %res_118, %elementVal_117
		cmp     %res_111, %res_0
		jge     __L_45
__L_46:
		cmp     %res_111, 0
		jl      __L_45
__L_47:
		mov     %varDef_344, 1
		jmp     __L_48
__L_45:
		mov     %varDef_344, 0
__L_48:
		cmp     %varDef_344, 0
		jne     __L_49
__L_50:
		mov     %varDef_355, %varDef_335
		mov     %varDef_353, %varDef_333
		mov     %varDef_354, %varDef_334
		mov     %varDef_356, %varDef_336
		mov     %varDef_357, %varDef_337
		jmp     __L_51
__L_49:
		cmp     %res_118, %res_0
		jge     __L_52
__L_53:
		cmp     %res_118, 0
		jl      __L_52
__L_54:
		mov     %varDef_349, 1
		jmp     __L_55
__L_52:
		mov     %varDef_349, 0
__L_55:
		cmp     %varDef_349, 0
		jne     __L_56
__L_57:
		mov     %varDef_356, %varDef_336
		mov     %varDef_353, %varDef_349
		mov     %varDef_354, %varDef_349
		mov     %varDef_357, %varDef_337
		mov     %varDef_355, %res_118
		jmp     __L_51
__L_56:
		mov     %coffset_162, %res_111
		shl     %coffset_162, 3
		mov     %celementAddr_163, %tmp_254
		add     %celementAddr_163, %coffset_162
		mov     %carrayBase_164, qword [%celementAddr_163]
		mov     %coffset_166, %res_118
		shl     %coffset_166, 3
		mov     %celementAddr_167, %carrayBase_164
		add     %celementAddr_167, %coffset_166
		mov     %celementVal_168, qword [%celementAddr_167]
		cmp     %celementVal_168, -1
		je      __L_58
__L_59:
		mov     %varDef_355, %res_118
		mov     %varDef_357, %varDef_337
		mov     %varDef_356, %varDef_336
		mov     %varDef_353, %varDef_349
		mov     %varDef_354, %varDef_349
		jmp     __L_51
__L_58:
		mov     %cnewVal_173, %varDef_336
		inc     %cnewVal_173
		mov     %coffset_177, %cnewVal_173
		shl     %coffset_177, 3
		mov     %celementAddr_178, %carrayBase_141
		add     %celementAddr_178, %coffset_177
		mov     qword [%celementAddr_178], %res_111
		mov     %celementAddr_183, %carrayBase_145
		add     %celementAddr_183, %coffset_177
		mov     qword [%celementAddr_183], %res_118
		mov     %cres_185, %elementVal_102
		add     %cres_185, 1
		mov     %coffset_188, %res_111
		shl     %coffset_188, 3
		mov     %celementAddr_189, %tmp_254
		add     %celementAddr_189, %coffset_188
		mov     %carrayBase_190, qword [%celementAddr_189]
		mov     %coffset_192, %res_118
		shl     %coffset_192, 3
		mov     %celementAddr_193, %carrayBase_190
		add     %celementAddr_193, %coffset_192
		mov     qword [%celementAddr_193], %cres_185
		cmp     %res_111, %res_2
		je      __L_60
__L_61:
		mov     %varDef_356, %cnewVal_173
		mov     %varDef_354, %varDef_349
		mov     %varDef_353, %varDef_349
		mov     %varDef_357, %varDef_337
		mov     %varDef_355, %res_118
		jmp     __L_51
__L_60:
		cmp     %res_118, %res_2
		je      __L_62
__L_63:
		mov     %varDef_354, %varDef_349
		mov     %varDef_357, %varDef_337
		mov     %varDef_353, %varDef_349
		mov     %varDef_355, %res_118
		mov     %varDef_356, %cnewVal_173
		jmp     __L_51
__L_62:
		mov     %varDef_353, %varDef_349
		mov     %varDef_356, %cnewVal_173
		mov     %varDef_355, %res_118
		mov     %varDef_357, 1
		mov     %varDef_354, %varDef_349
__L_51:
		mov     %newVal_121, %varDef_338
		inc     %newVal_121
		mov     %varDef_329, %res_111
		mov     %varDef_328, %res_118
		mov     %varDef_336, %varDef_356
		mov     %varDef_332, %res_111
		mov     %varDef_335, %varDef_355
		mov     %varDef_331, %varDef_344
		mov     %varDef_333, %varDef_353
		mov     %varDef_334, %varDef_354
		mov     %varDef_337, %varDef_357
		mov     %varDef_338, %newVal_121
		mov     %varDef_330, %varDef_344
		jmp     __L_42
__L_43:
		cmp     %varDef_337, 1
		jne     __L_64
__L_65:
		mov     %varDef_368, %varDef_336
		mov     %varDef_371, %elementVal_102
		mov     %varDef_373, %elementVal_93
		mov     %varDef_370, %varDef_338
		mov     %varDef_369, %varDef_337
		mov     %varDef_372, %elementVal_88
		jmp     __L_41
__L_64:
		mov     %newVal_126, %varDef_319
		inc     %newVal_126
		mov     %varDef_323, %elementVal_93
		mov     %varDef_318, %varDef_337
		mov     %varDef_317, %varDef_336
		mov     %varDef_321, %elementVal_102
		mov     %varDef_322, %elementVal_88
		mov     %varDef_319, %newVal_126
		mov     %varDef_320, %varDef_338
		jmp     __L_38
__L_41:
		cmp     %varDef_369, 1
		jne     __L_66
__L_67:
		mov     %offset_131, %res_2
		shl     %offset_131, 3
		mov     %elementAddr_132, %tmp_254
		add     %elementAddr_132, %offset_131
		mov     %arrayBase_133, qword [%elementAddr_132]
		mov     %elementAddr_136, %arrayBase_133
		add     %elementAddr_136, %offset_131
		mov     %elementVal_137, qword [%elementAddr_136]
		mov     rdi, %elementVal_137
		call    __printlnInt
		jmp     __L_68
__L_66:
		mov     rdi, __str_0
		call    print
__L_68:
		mov     qword [rel _dx], %carrayBase_149
		mov     qword [rel _targety], %res_2
		mov     qword [rel _tail], %varDef_368
		mov     qword [rel _ok], %varDef_369
		mov     qword [rel _xlist], %carrayBase_141
		mov     qword [rel _ylist], %carrayBase_145
		mov     qword [rel _head], %varDef_319
		mov     qword [rel _j], %varDef_370
		mov     qword [rel _now], %varDef_371
		mov     qword [rel _N], %res_0
		mov     qword [rel _targetx], %res_2
		mov     qword [rel _i], %varDef_304
		mov     qword [rel _x], %varDef_372
		mov     qword [rel _y], %varDef_373
		mov     qword [rel _dy], %carrayBase_153
		mov     r13, %local_r13
		mov     r14, %local_r14
		mov     r15, %local_r15
		mov     rbx, %local_rbx
		mov     r12, %local_r12
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


