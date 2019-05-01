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
		mov     %local_r15, r15
		mov     %local_r13, r13
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
		mov     qword [rel _dx], %arrayPtr_6
		mov     qword [rel _dy], %arrayPtr_9
		mov     qword [rel _ylist], %arrayPtr_3
		mov     qword [rel _xlist], %arrayPtr_0
		mov     r12, %local_r12
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r13, %local_r13
		mov     r14, %local_r14
		ret     

origin:
		mov     %local_r12, r12
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r13, r13
		mov     %local_r14, r14
		mov     %argVal_0, rdi
		mov     %tmp_45, qword [rel _j]
		mov     %memberLength_4, %argVal_0
		imul    %memberLength_4, 8
		mov     %arrayLength_5, %memberLength_4
		add     %arrayLength_5, 8
		mov     rdi, %arrayLength_5
		call    malloc
		mov     %arrayPtr_3, rax
		mov     qword [%arrayPtr_3], %argVal_0
		mov     %alloca_2, 0
		mov     %alloca_1, %tmp_45
__L_1:
		mov     %varDef_62, %alloca_2
		mov     %varDef_63, %alloca_1
		cmp     %varDef_62, %argVal_0
		jge     __L_2
__L_3:
		mov     %memberLength_11, %argVal_0
		imul    %memberLength_11, 8
		mov     %arrayLength_12, %memberLength_11
		add     %arrayLength_12, 8
		mov     rdi, %arrayLength_12
		call    malloc
		mov     %arrayPtr_10, rax
		mov     qword [%arrayPtr_10], %argVal_0
		mov     %arrayBase_14, %arrayPtr_3
		add     %arrayBase_14, 8
		mov     %offset_16, %varDef_62
		imul    %offset_16, 8
		mov     %elementAddr_17, %arrayBase_14
		add     %elementAddr_17, %offset_16
		mov     qword [%elementAddr_17], %arrayPtr_10
		mov     %alloca_3, 0
__L_4:
		mov     %varDef_65, %alloca_3
		cmp     %varDef_65, %argVal_0
		jge     __L_5
__L_6:
		mov     %arrayBase_22, %arrayPtr_3
		add     %arrayBase_22, 8
		mov     %offset_24, %varDef_62
		imul    %offset_24, 8
		mov     %elementAddr_25, %arrayBase_22
		add     %elementAddr_25, %offset_24
		mov     %arrayPtr_26, qword [%elementAddr_25]
		mov     %arrayBase_27, %arrayPtr_26
		add     %arrayBase_27, 8
		mov     %offset_29, %varDef_65
		imul    %offset_29, 8
		mov     %elementAddr_30, %arrayBase_27
		add     %elementAddr_30, %offset_29
		mov     qword [%elementAddr_30], 0
		mov     %newVal_33, %varDef_65
		inc     %newVal_33
		mov     %alloca_3, %newVal_33
		jmp     __L_4
__L_5:
		mov     %newVal_36, %varDef_62
		inc     %newVal_36
		mov     %alloca_2, %newVal_36
		mov     %alloca_1, %varDef_65
		jmp     __L_1
__L_2:
		mov     qword [rel _step], %arrayPtr_3
		mov     qword [rel _tail], 0
		mov     qword [rel _i], %varDef_62
		mov     qword [rel _j], %varDef_63
		mov     qword [rel _head], 0
		mov     r12, %local_r12
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r13, %local_r13
		mov     r14, %local_r14
		ret     

check:
		mov     %local_r12, r12
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r13, r13
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
		mov     %varDef_16, %alloca_4
		mov     qword [rel _N], %tmp_10
		mov     r12, %local_r12
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r13, %local_r13
		mov     r14, %local_r14
		mov     rax, %varDef_16
		ret     

addList:
		mov     %local_r12, r12
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r13, r13
		mov     %local_r14, r14
		mov     %argVal_0, rdi
		mov     %argVal_2, rsi
		mov     %tmp_89, qword [rel _now]
		mov     %tmp_88, qword [rel _targetx]
		mov     %tmp_87, qword [rel _xlist]
		mov     %tmp_86, qword [rel _targety]
		mov     %tmp_85, qword [rel _N]
		mov     %tmp_84, qword [rel _ylist]
		mov     %tmp_83, qword [rel _tail]
		mov     %tmp_82, qword [rel _ok]
		mov     %tmp_81, qword [rel _step]
__L_11:
		cmp     %argVal_0, %tmp_85
		jge     __L_12
__L_13:
		cmp     %argVal_0, 0
		jl      __L_12
__L_14:
		mov     %alloca_7, 1
		jmp     __L_15
__L_12:
		mov     %alloca_7, 0
__L_15:
		mov     %varDef_113, %alloca_7
		cmp     %varDef_113, 0
		jne     __L_16
__L_17:
		mov     %alloca_6, %tmp_82
		mov     %alloca_5, %tmp_83
		jmp     __L_18
__L_16:
		cmp     %argVal_2, %tmp_85
		jge     __L_19
__L_20:
		cmp     %argVal_2, 0
		jl      __L_19
__L_21:
		mov     %alloca_8, 1
		jmp     __L_22
__L_19:
		mov     %alloca_8, 0
__L_22:
		mov     %varDef_118, %alloca_8
		cmp     %varDef_118, 0
		jne     __L_23
__L_24:
		mov     %alloca_6, %tmp_82
		mov     %alloca_5, %tmp_83
		jmp     __L_18
__L_23:
		mov     %arrayBase_9, %tmp_81
		add     %arrayBase_9, 8
		mov     %offset_11, %argVal_0
		imul    %offset_11, 8
		mov     %elementAddr_12, %arrayBase_9
		add     %elementAddr_12, %offset_11
		mov     %arrayPtr_13, qword [%elementAddr_12]
		mov     %arrayBase_14, %arrayPtr_13
		add     %arrayBase_14, 8
		mov     %offset_16, %argVal_2
		imul    %offset_16, 8
		mov     %elementAddr_17, %arrayBase_14
		add     %elementAddr_17, %offset_16
		mov     %elementVal_18, qword [%elementAddr_17]
		cmp     %elementVal_18, -1
		je      __L_25
__L_26:
		mov     %alloca_6, %tmp_82
		mov     %alloca_5, %tmp_83
		jmp     __L_18
__L_25:
		mov     %newVal_23, %tmp_83
		inc     %newVal_23
		mov     %arrayBase_26, %tmp_87
		add     %arrayBase_26, 8
		mov     %offset_28, %newVal_23
		imul    %offset_28, 8
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
		mov     %arrayBase_39, %tmp_81
		add     %arrayBase_39, 8
		mov     %offset_41, %argVal_0
		imul    %offset_41, 8
		mov     %elementAddr_42, %arrayBase_39
		add     %elementAddr_42, %offset_41
		mov     %arrayPtr_43, qword [%elementAddr_42]
		mov     %arrayBase_44, %arrayPtr_43
		add     %arrayBase_44, 8
		mov     %offset_46, %argVal_2
		imul    %offset_46, 8
		mov     %elementAddr_47, %arrayBase_44
		add     %elementAddr_47, %offset_46
		mov     qword [%elementAddr_47], %res_37
		cmp     %argVal_0, %tmp_88
		je      __L_27
__L_28:
		mov     %alloca_6, %tmp_82
		mov     %alloca_5, %newVal_23
		jmp     __L_18
__L_27:
		cmp     %argVal_2, %tmp_86
		je      __L_29
__L_30:
		mov     %alloca_6, %tmp_82
		mov     %alloca_5, %newVal_23
		jmp     __L_18
__L_29:
		mov     %alloca_6, 1
		mov     %alloca_5, %newVal_23
__L_18:
		mov     %varDef_125, %alloca_6
		mov     %varDef_126, %alloca_5
		mov     qword [rel _step], %tmp_81
		mov     qword [rel _ok], %varDef_125
		mov     qword [rel _tail], %varDef_126
		mov     qword [rel _ylist], %tmp_84
		mov     qword [rel _N], %tmp_85
		mov     qword [rel _targety], %tmp_86
		mov     qword [rel _xlist], %tmp_87
		mov     qword [rel _targetx], %tmp_88
		mov     qword [rel _now], %tmp_89
		mov     r12, %local_r12
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r13, %local_r13
		mov     r14, %local_r14
		ret     

main:
		mov     %local_r12, r12
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r13, r13
		mov     %local_r14, r14
		call    __globalInit
		mov     %tmp_194, qword [rel _x]
		mov     %tmp_193, qword [rel _j]
		mov     %tmp_190, qword [rel _y]
		mov     %tmp_189, qword [rel _ylist]
		mov     %tmp_188, qword [rel _tail]
		mov     %tmp_187, qword [rel _ok]
		mov     %tmp_186, qword [rel _dx]
		mov     %tmp_185, qword [rel _now]
		mov     %tmp_184, qword [rel _xlist]
		mov     %tmp_183, qword [rel _head]
		mov     %tmp_182, qword [rel _i]
		mov     %tmp_181, qword [rel _dy]
		mov     %tmp_180, qword [rel _step]
		mov     qword [rel _step], %tmp_180
		mov     qword [rel _i], %tmp_182
		mov     qword [rel _head], %tmp_183
		mov     qword [rel _tail], %tmp_188
		mov     qword [rel _j], %tmp_193
		mov     rdi, 106
		call    origin
		mov     %tmp_205, qword [rel _j]
		mov     %tmp_203, qword [rel _tail]
		mov     %tmp_201, qword [rel _head]
		mov     %tmp_197, qword [rel _step]
		call    getInt
		mov     %res_0, rax
		mov     %res_2, %res_0
		sub     %res_2, 1
		mov     %alloca_10, 0
		mov     %alloca_9, %tmp_205
__L_31:
		mov     %varDef_265, %alloca_10
		mov     %varDef_266, %alloca_9
		cmp     %varDef_265, %res_0
		jge     __L_32
__L_33:
		mov     %alloca_21, 0
__L_34:
		mov     %varDef_268, %alloca_21
		cmp     %varDef_268, %res_0
		jge     __L_35
__L_36:
		mov     %arrayBase_12, %tmp_197
		add     %arrayBase_12, 8
		mov     %offset_14, %varDef_265
		imul    %offset_14, 8
		mov     %elementAddr_15, %arrayBase_12
		add     %elementAddr_15, %offset_14
		mov     %arrayPtr_16, qword [%elementAddr_15]
		mov     %arrayBase_17, %arrayPtr_16
		add     %arrayBase_17, 8
		mov     %offset_19, %varDef_268
		imul    %offset_19, 8
		mov     %elementAddr_20, %arrayBase_17
		add     %elementAddr_20, %offset_19
		mov     qword [%elementAddr_20], -1
		mov     %newVal_23, %varDef_268
		inc     %newVal_23
		mov     %alloca_21, %newVal_23
		jmp     __L_34
__L_35:
		mov     %newVal_26, %varDef_265
		inc     %newVal_26
		mov     %alloca_10, %newVal_26
		mov     %alloca_9, %varDef_268
		jmp     __L_31
__L_32:
		mov     %arrayBase_29, %tmp_186
		add     %arrayBase_29, 8
		mov     %elementAddr_31, %arrayBase_29
		add     %elementAddr_31, 0
		mov     qword [%elementAddr_31], -2
		mov     %arrayBase_34, %tmp_181
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
		mov     %alloca_34, %tmp_197
		mov     %alloca_33, %tmp_201
		mov     %alloca_32, %tmp_184
		mov     %alloca_31, %tmp_185
		mov     %alloca_30, %tmp_187
		mov     %alloca_29, %tmp_203
		mov     %alloca_28, %tmp_189
		mov     %alloca_27, %tmp_190
		mov     %alloca_26, %res_0
		mov     %alloca_25, %res_2
		mov     %alloca_24, %varDef_266
		mov     %alloca_23, %tmp_194
		mov     %alloca_22, %res_2
__L_37:
		mov     %varDef_271, %alloca_34
		mov     %varDef_272, %alloca_33
		mov     %varDef_273, %alloca_32
		mov     %varDef_274, %alloca_31
		mov     %varDef_275, %alloca_30
		mov     %varDef_276, %alloca_29
		mov     %varDef_277, %alloca_28
		mov     %varDef_278, %alloca_27
		mov     %varDef_279, %alloca_26
		mov     %varDef_280, %alloca_25
		mov     %varDef_281, %alloca_24
		mov     %varDef_282, %alloca_23
		mov     %varDef_283, %alloca_22
		cmp     %varDef_272, %varDef_276
		jle     __L_38
__L_39:
		mov     %alloca_46, %varDef_271
		mov     %alloca_45, %varDef_273
		mov     %alloca_44, %varDef_274
		mov     %alloca_43, %varDef_275
		mov     %alloca_42, %varDef_276
		mov     %alloca_41, %varDef_277
		mov     %alloca_40, %varDef_278
		mov     %alloca_39, %varDef_279
		mov     %alloca_38, %varDef_280
		mov     %alloca_37, %varDef_281
		mov     %alloca_36, %varDef_282
		mov     %alloca_35, %varDef_283
		jmp     __L_40
__L_38:
		mov     %arrayBase_103, %varDef_273
		add     %arrayBase_103, 8
		mov     %offset_105, %varDef_272
		imul    %offset_105, 8
		mov     %elementAddr_106, %arrayBase_103
		add     %elementAddr_106, %offset_105
		mov     %elementVal_107, qword [%elementAddr_106]
		mov     %arrayBase_109, %varDef_277
		add     %arrayBase_109, 8
		mov     %elementAddr_112, %arrayBase_109
		add     %elementAddr_112, %offset_105
		mov     %elementVal_113, qword [%elementAddr_112]
		mov     %arrayBase_115, %varDef_271
		add     %arrayBase_115, 8
		mov     %offset_117, %elementVal_107
		imul    %offset_117, 8
		mov     %elementAddr_118, %arrayBase_115
		add     %elementAddr_118, %offset_117
		mov     %arrayPtr_119, qword [%elementAddr_118]
		mov     %arrayBase_120, %arrayPtr_119
		add     %arrayBase_120, 8
		mov     %offset_122, %elementVal_113
		imul    %offset_122, 8
		mov     %elementAddr_123, %arrayBase_120
		add     %elementAddr_123, %offset_122
		mov     %elementVal_124, qword [%elementAddr_123]
		mov     %alloca_20, %varDef_271
		mov     %alloca_19, %varDef_273
		mov     %alloca_18, %elementVal_124
		mov     %alloca_17, %varDef_275
		mov     %alloca_16, %varDef_276
		mov     %alloca_15, %varDef_277
		mov     %alloca_14, %varDef_279
		mov     %alloca_13, %varDef_280
		mov     %alloca_12, 0
		mov     %alloca_11, %varDef_283
__L_41:
		mov     %varDef_288, %alloca_20
		mov     %varDef_289, %alloca_19
		mov     %varDef_290, %alloca_18
		mov     %varDef_291, %alloca_17
		mov     %varDef_292, %alloca_16
		mov     %varDef_293, %alloca_15
		mov     %varDef_294, %alloca_14
		mov     %varDef_295, %alloca_13
		mov     %varDef_296, %alloca_12
		mov     %varDef_297, %alloca_11
		cmp     %varDef_296, 8
		jge     __L_42
__L_43:
		mov     %arrayBase_129, %tmp_186
		add     %arrayBase_129, 8
		mov     %offset_131, %varDef_296
		imul    %offset_131, 8
		mov     %elementAddr_132, %arrayBase_129
		add     %elementAddr_132, %offset_131
		mov     %elementVal_133, qword [%elementAddr_132]
		mov     %res_134, %elementVal_107
		add     %res_134, %elementVal_133
		mov     %arrayBase_137, %tmp_181
		add     %arrayBase_137, 8
		mov     %elementAddr_140, %arrayBase_137
		add     %elementAddr_140, %offset_131
		mov     %elementVal_141, qword [%elementAddr_140]
		mov     %res_142, %elementVal_113
		add     %res_142, %elementVal_141
		mov     qword [rel _step], %varDef_288
		mov     qword [rel _xlist], %varDef_289
		mov     qword [rel _now], %varDef_290
		mov     qword [rel _ok], %varDef_291
		mov     qword [rel _tail], %varDef_292
		mov     qword [rel _ylist], %varDef_293
		mov     qword [rel _N], %varDef_294
		mov     qword [rel _targety], %varDef_295
		mov     qword [rel _targetx], %varDef_297
		mov     rdi, %res_134
		mov     rsi, %res_142
		call    addList
		mov     %tmp_223, qword [rel _targetx]
		mov     %tmp_221, qword [rel _targety]
		mov     %tmp_219, qword [rel _N]
		mov     %tmp_217, qword [rel _ylist]
		mov     %tmp_215, qword [rel _tail]
		mov     %tmp_213, qword [rel _ok]
		mov     %tmp_211, qword [rel _now]
		mov     %tmp_209, qword [rel _xlist]
		mov     %tmp_207, qword [rel _step]
		mov     %newVal_145, %varDef_296
		inc     %newVal_145
		mov     %alloca_20, %tmp_207
		mov     %alloca_19, %tmp_209
		mov     %alloca_18, %tmp_211
		mov     %alloca_17, %tmp_213
		mov     %alloca_16, %tmp_215
		mov     %alloca_15, %tmp_217
		mov     %alloca_14, %tmp_219
		mov     %alloca_13, %tmp_221
		mov     %alloca_12, %newVal_145
		mov     %alloca_11, %tmp_223
		jmp     __L_41
__L_42:
		cmp     %varDef_291, 1
		jne     __L_44
__L_45:
		mov     %alloca_46, %varDef_288
		mov     %alloca_45, %varDef_289
		mov     %alloca_44, %varDef_290
		mov     %alloca_43, %varDef_291
		mov     %alloca_42, %varDef_292
		mov     %alloca_41, %varDef_293
		mov     %alloca_40, %elementVal_113
		mov     %alloca_39, %varDef_294
		mov     %alloca_38, %varDef_295
		mov     %alloca_37, %varDef_296
		mov     %alloca_36, %elementVal_107
		mov     %alloca_35, %varDef_297
		jmp     __L_40
__L_44:
		mov     %newVal_150, %varDef_272
		inc     %newVal_150
		mov     %alloca_34, %varDef_288
		mov     %alloca_33, %newVal_150
		mov     %alloca_32, %varDef_289
		mov     %alloca_31, %varDef_290
		mov     %alloca_30, %varDef_291
		mov     %alloca_29, %varDef_292
		mov     %alloca_28, %varDef_293
		mov     %alloca_27, %elementVal_113
		mov     %alloca_26, %varDef_294
		mov     %alloca_25, %varDef_295
		mov     %alloca_24, %varDef_296
		mov     %alloca_23, %elementVal_107
		mov     %alloca_22, %varDef_297
		jmp     __L_37
__L_40:
		mov     %varDef_309, %alloca_46
		mov     %varDef_310, %alloca_45
		mov     %varDef_311, %alloca_44
		mov     %varDef_312, %alloca_43
		mov     %varDef_313, %alloca_42
		mov     %varDef_314, %alloca_41
		mov     %varDef_315, %alloca_40
		mov     %varDef_316, %alloca_39
		mov     %varDef_317, %alloca_38
		mov     %varDef_318, %alloca_37
		mov     %varDef_319, %alloca_36
		mov     %varDef_320, %alloca_35
		cmp     %varDef_312, 1
		jne     __L_46
__L_47:
		mov     %arrayBase_154, %varDef_309
		add     %arrayBase_154, 8
		mov     %offset_156, %varDef_320
		imul    %offset_156, 8
		mov     %elementAddr_157, %arrayBase_154
		add     %elementAddr_157, %offset_156
		mov     %arrayPtr_158, qword [%elementAddr_157]
		mov     %arrayBase_159, %arrayPtr_158
		add     %arrayBase_159, 8
		mov     %offset_161, %varDef_317
		imul    %offset_161, 8
		mov     %elementAddr_162, %arrayBase_159
		add     %elementAddr_162, %offset_161
		mov     %elementVal_163, qword [%elementAddr_162]
		mov     rdi, %elementVal_163
		call    __printlnInt
		jmp     __L_48
__L_46:
		mov     rdi, __str_0
		call    print
__L_48:
		mov     qword [rel _step], %varDef_309
		mov     qword [rel _dy], %tmp_181
		mov     qword [rel _i], %varDef_265
		mov     qword [rel _head], %varDef_272
		mov     qword [rel _xlist], %varDef_310
		mov     qword [rel _now], %varDef_311
		mov     qword [rel _dx], %tmp_186
		mov     qword [rel _ok], %varDef_312
		mov     qword [rel _tail], %varDef_313
		mov     qword [rel _ylist], %varDef_314
		mov     qword [rel _y], %varDef_315
		mov     qword [rel _N], %varDef_316
		mov     qword [rel _targety], %varDef_317
		mov     qword [rel _j], %varDef_318
		mov     qword [rel _x], %varDef_319
		mov     qword [rel _targetx], %varDef_320
		mov     r12, %local_r12
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r13, %local_r13
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


