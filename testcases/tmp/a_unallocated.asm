default rel

global _globalInit
global check
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
		mov     %local_r13, r13
		mov     %local_r15, r15
		mov     %local_r12, r12
		mov     %local_rbx, rbx
		mov     %local_r14, r14
		mov     r13, %local_r13
		mov     r15, %local_r15
		mov     r12, %local_r12
		mov     rbx, %local_rbx
		mov     r14, %local_r14
		ret     

check:
		mov     %local_r13, r13
		mov     %local_r15, r15
		mov     %local_r12, r12
		mov     %local_rbx, rbx
		mov     %local_r14, r14
		mov     %argVal_0, rdi
		mov     %argVal_2, rsi
		mov     %alloca_3, %argVal_0
		mov     %alloca_2, %argVal_2
		mov     %idVal_5, %alloca_3
		mov     %idVal_6, %alloca_2
		cmp     %idVal_5, %idVal_6
		setl    al
		movzx   %res_7, al
		cmp     %res_7, 0
		je      __L_1
__L_2:
		mov     %idVal_8, %alloca_3
		cmp     %idVal_8, 0
		setge   al
		movzx   %res_9, al
		cmp     %res_9, 0
		je      __L_1
__L_3:
		mov     %alloca_1, 1
		jmp     __L_4
__L_1:
		mov     %alloca_1, 0
__L_4:
		mov     %boolVal_10, %alloca_1
		mov     r13, %local_r13
		mov     r15, %local_r15
		mov     r12, %local_r12
		mov     rbx, %local_rbx
		mov     r14, %local_r14
		mov     rax, %boolVal_10
		ret     

main:
		mov     %local_r13, r13
		mov     %local_r15, r15
		mov     %local_r12, r12
		mov     %local_rbx, rbx
		mov     %local_r14, r14
		call    _globalInit
		call    getInt
		mov     %res_16, rax
		mov     %alloca_19, %res_16
		mov     %alloca_18, 0
		mov     %alloca_13, 0
		mov     %alloca_17, 0
		mov     %alloca_16, 0
		mov     %idVal_17, %alloca_19
		mov     %res_18, %idVal_17
		sub     %res_18, 1
		mov     %alloca_15, %res_18
		mov     %idVal_19, %alloca_19
		mov     %res_20, %idVal_19
		sub     %res_20, 1
		mov     %alloca_14, %res_20
		mov     %alloca_10, 0
		mov     %alloca_9, 0
		mov     %alloca_11, 0
		mov     %alloca_12, 0
		mov     %idVal_21, %alloca_19
		mov     %idVal_22, %alloca_19
		mov     %res_23, %idVal_21
		imul    %res_23, %idVal_22
		mov     %memberLength_25, %res_23
		imul    %memberLength_25, 8
		mov     %arrayLength_26, %memberLength_25
		add     %arrayLength_26, 8
		mov     rdi, %arrayLength_26
		call    malloc
		mov     %arrayPtr_24, rax
		mov     qword [%arrayPtr_24], %res_23
		mov     %alloca_8, %arrayPtr_24
		mov     %alloca_5, 0
__L_5:
		mov     %idVal_27, %alloca_5
		mov     %idVal_28, %alloca_19
		mov     %idVal_29, %alloca_19
		mov     %res_30, %idVal_28
		imul    %res_30, %idVal_29
		cmp     %idVal_27, %res_30
		setl    al
		movzx   %res_31, al
		cmp     %res_31, 0
		je      __L_6
__L_7:
		mov     %arrayPtr_32, %alloca_8
		mov     %arrayBase_33, %arrayPtr_32
		add     %arrayBase_33, 8
		mov     %idVal_34, %alloca_5
		mov     %offset_35, %idVal_34
		imul    %offset_35, 8
		mov     %elementAddr_36, %arrayBase_33
		add     %elementAddr_36, %offset_35
		mov     qword [%elementAddr_36], 0
__L_8:
		mov     %idVal_37, %alloca_5
		mov     %oldVal_38, %alloca_5
		mov     %newVal_39, %oldVal_38
		inc     %newVal_39
		mov     %alloca_5, %newVal_39
		jmp     __L_5
__L_6:
		mov     %idVal_40, %alloca_19
		mov     %idVal_41, %alloca_19
		mov     %res_42, %idVal_40
		imul    %res_42, %idVal_41
		mov     %memberLength_44, %res_42
		imul    %memberLength_44, 8
		mov     %arrayLength_45, %memberLength_44
		add     %arrayLength_45, 8
		mov     rdi, %arrayLength_45
		call    malloc
		mov     %arrayPtr_43, rax
		mov     qword [%arrayPtr_43], %res_42
		mov     %alloca_7, %arrayPtr_43
		mov     %alloca_5, 0
__L_9:
		mov     %idVal_46, %alloca_5
		mov     %idVal_47, %alloca_19
		mov     %idVal_48, %alloca_19
		mov     %res_49, %idVal_47
		imul    %res_49, %idVal_48
		cmp     %idVal_46, %res_49
		setl    al
		movzx   %res_50, al
		cmp     %res_50, 0
		je      __L_10
__L_11:
		mov     %arrayPtr_51, %alloca_7
		mov     %arrayBase_52, %arrayPtr_51
		add     %arrayBase_52, 8
		mov     %idVal_53, %alloca_5
		mov     %offset_54, %idVal_53
		imul    %offset_54, 8
		mov     %elementAddr_55, %arrayBase_52
		add     %elementAddr_55, %offset_54
		mov     qword [%elementAddr_55], 0
__L_12:
		mov     %idVal_56, %alloca_5
		mov     %oldVal_57, %alloca_5
		mov     %newVal_58, %oldVal_57
		inc     %newVal_58
		mov     %alloca_5, %newVal_58
		jmp     __L_9
__L_10:
		mov     %idVal_59, %alloca_19
		mov     %memberLength_61, %idVal_59
		imul    %memberLength_61, 8
		mov     %arrayLength_62, %memberLength_61
		add     %arrayLength_62, 8
		mov     rdi, %arrayLength_62
		call    malloc
		mov     %arrayPtr_60, rax
		mov     qword [%arrayPtr_60], %idVal_59
		mov     %alloca_6, %arrayPtr_60
		mov     %alloca_5, 0
__L_13:
		mov     %idVal_63, %alloca_5
		mov     %idVal_64, %alloca_19
		cmp     %idVal_63, %idVal_64
		setl    al
		movzx   %res_65, al
		cmp     %res_65, 0
		je      __L_14
__L_15:
		mov     %idVal_66, %alloca_19
		mov     %memberLength_68, %idVal_66
		imul    %memberLength_68, 8
		mov     %arrayLength_69, %memberLength_68
		add     %arrayLength_69, 8
		mov     rdi, %arrayLength_69
		call    malloc
		mov     %arrayPtr_67, rax
		mov     qword [%arrayPtr_67], %idVal_66
		mov     %arrayPtr_70, %alloca_6
		mov     %arrayBase_71, %arrayPtr_70
		add     %arrayBase_71, 8
		mov     %idVal_72, %alloca_5
		mov     %offset_73, %idVal_72
		imul    %offset_73, 8
		mov     %elementAddr_74, %arrayBase_71
		add     %elementAddr_74, %offset_73
		mov     qword [%elementAddr_74], %arrayPtr_67
		mov     %alloca_4, 0
__L_16:
		mov     %idVal_75, %alloca_4
		mov     %idVal_76, %alloca_19
		cmp     %idVal_75, %idVal_76
		setl    al
		movzx   %res_77, al
		cmp     %res_77, 0
		je      __L_17
__L_18:
		mov     %res_78, 1
		neg     %res_78
		mov     %arrayPtr_79, %alloca_6
		mov     %arrayBase_80, %arrayPtr_79
		add     %arrayBase_80, 8
		mov     %idVal_81, %alloca_5
		mov     %offset_82, %idVal_81
		imul    %offset_82, 8
		mov     %elementAddr_83, %arrayBase_80
		add     %elementAddr_83, %offset_82
		mov     %arrayPtr_84, qword [%elementAddr_83]
		mov     %arrayBase_85, %arrayPtr_84
		add     %arrayBase_85, 8
		mov     %idVal_86, %alloca_4
		mov     %offset_87, %idVal_86
		imul    %offset_87, 8
		mov     %elementAddr_88, %arrayBase_85
		add     %elementAddr_88, %offset_87
		mov     qword [%elementAddr_88], %res_78
__L_19:
		mov     %idVal_89, %alloca_4
		mov     %oldVal_90, %alloca_4
		mov     %newVal_91, %oldVal_90
		inc     %newVal_91
		mov     %alloca_4, %newVal_91
		jmp     __L_16
__L_17:
__L_20:
		mov     %idVal_92, %alloca_5
		mov     %oldVal_93, %alloca_5
		mov     %newVal_94, %oldVal_93
		inc     %newVal_94
		mov     %alloca_5, %newVal_94
		jmp     __L_13
__L_14:
		mov     %idVal_95, %alloca_17
		mov     %arrayPtr_96, %alloca_8
		mov     %arrayBase_97, %arrayPtr_96
		add     %arrayBase_97, 8
		mov     %offset_98, 0
		imul    %offset_98, 8
		mov     %elementAddr_99, %arrayBase_97
		add     %elementAddr_99, %offset_98
		mov     qword [%elementAddr_99], %idVal_95
		mov     %idVal_100, %alloca_16
		mov     %arrayPtr_101, %alloca_7
		mov     %arrayBase_102, %arrayPtr_101
		add     %arrayBase_102, 8
		mov     %offset_103, 0
		imul    %offset_103, 8
		mov     %elementAddr_104, %arrayBase_102
		add     %elementAddr_104, %offset_103
		mov     qword [%elementAddr_104], %idVal_100
		mov     %arrayPtr_105, %alloca_6
		mov     %arrayBase_106, %arrayPtr_105
		add     %arrayBase_106, 8
		mov     %idVal_107, %alloca_17
		mov     %offset_108, %idVal_107
		imul    %offset_108, 8
		mov     %elementAddr_109, %arrayBase_106
		add     %elementAddr_109, %offset_108
		mov     %arrayPtr_110, qword [%elementAddr_109]
		mov     %arrayBase_111, %arrayPtr_110
		add     %arrayBase_111, 8
		mov     %idVal_112, %alloca_16
		mov     %offset_113, %idVal_112
		imul    %offset_113, 8
		mov     %elementAddr_114, %arrayBase_111
		add     %elementAddr_114, %offset_113
		mov     qword [%elementAddr_114], 0
__L_21:
		mov     %idVal_115, %alloca_18
		mov     %idVal_116, %alloca_13
		cmp     %idVal_115, %idVal_116
		setle   al
		movzx   %res_117, al
		cmp     %res_117, 0
		je      __L_22
__L_23:
		mov     %arrayPtr_118, %alloca_6
		mov     %arrayBase_119, %arrayPtr_118
		add     %arrayBase_119, 8
		mov     %arrayPtr_120, %alloca_8
		mov     %arrayBase_121, %arrayPtr_120
		add     %arrayBase_121, 8
		mov     %idVal_122, %alloca_18
		mov     %offset_123, %idVal_122
		imul    %offset_123, 8
		mov     %elementAddr_124, %arrayBase_121
		add     %elementAddr_124, %offset_123
		mov     %elementVal_125, qword [%elementAddr_124]
		mov     %offset_126, %elementVal_125
		imul    %offset_126, 8
		mov     %elementAddr_127, %arrayBase_119
		add     %elementAddr_127, %offset_126
		mov     %arrayPtr_128, qword [%elementAddr_127]
		mov     %arrayBase_129, %arrayPtr_128
		add     %arrayBase_129, 8
		mov     %arrayPtr_130, %alloca_7
		mov     %arrayBase_131, %arrayPtr_130
		add     %arrayBase_131, 8
		mov     %idVal_132, %alloca_18
		mov     %offset_133, %idVal_132
		imul    %offset_133, 8
		mov     %elementAddr_134, %arrayBase_131
		add     %elementAddr_134, %offset_133
		mov     %elementVal_135, qword [%elementAddr_134]
		mov     %offset_136, %elementVal_135
		imul    %offset_136, 8
		mov     %elementAddr_137, %arrayBase_129
		add     %elementAddr_137, %offset_136
		mov     %elementVal_138, qword [%elementAddr_137]
		mov     %alloca_11, %elementVal_138
		mov     %arrayPtr_139, %alloca_8
		mov     %arrayBase_140, %arrayPtr_139
		add     %arrayBase_140, 8
		mov     %idVal_141, %alloca_18
		mov     %offset_142, %idVal_141
		imul    %offset_142, 8
		mov     %elementAddr_143, %arrayBase_140
		add     %elementAddr_143, %offset_142
		mov     %elementVal_144, qword [%elementAddr_143]
		mov     %res_145, %elementVal_144
		sub     %res_145, 1
		mov     %alloca_10, %res_145
		mov     %arrayPtr_146, %alloca_7
		mov     %arrayBase_147, %arrayPtr_146
		add     %arrayBase_147, 8
		mov     %idVal_148, %alloca_18
		mov     %offset_149, %idVal_148
		imul    %offset_149, 8
		mov     %elementAddr_150, %arrayBase_147
		add     %elementAddr_150, %offset_149
		mov     %elementVal_151, qword [%elementAddr_150]
		mov     %res_152, %elementVal_151
		sub     %res_152, 2
		mov     %alloca_9, %res_152
		mov     %idVal_154, %alloca_10
		mov     %idVal_155, %alloca_19
		mov     rdi, %idVal_154
		mov     rsi, %idVal_155
		call    check
		mov     %res_153, rax
		cmp     %res_153, 0
		je      __L_24
__L_25:
		mov     %idVal_157, %alloca_9
		mov     %idVal_158, %alloca_19
		mov     rdi, %idVal_157
		mov     rsi, %idVal_158
		call    check
		mov     %res_156, rax
		cmp     %res_156, 0
		je      __L_24
__L_26:
		mov     %arrayPtr_159, %alloca_6
		mov     %arrayBase_160, %arrayPtr_159
		add     %arrayBase_160, 8
		mov     %idVal_161, %alloca_10
		mov     %offset_162, %idVal_161
		imul    %offset_162, 8
		mov     %elementAddr_163, %arrayBase_160
		add     %elementAddr_163, %offset_162
		mov     %arrayPtr_164, qword [%elementAddr_163]
		mov     %arrayBase_165, %arrayPtr_164
		add     %arrayBase_165, 8
		mov     %idVal_166, %alloca_9
		mov     %offset_167, %idVal_166
		imul    %offset_167, 8
		mov     %elementAddr_168, %arrayBase_165
		add     %elementAddr_168, %offset_167
		mov     %elementVal_169, qword [%elementAddr_168]
		mov     %res_170, 1
		neg     %res_170
		cmp     %elementVal_169, %res_170
		sete    al
		movzx   %res_171, al
		cmp     %res_171, 0
		je      __L_24
__L_27:
		mov     %idVal_172, %alloca_13
		mov     %res_173, %idVal_172
		add     %res_173, 1
		mov     %alloca_13, %res_173
		mov     %idVal_174, %alloca_10
		mov     %arrayPtr_175, %alloca_8
		mov     %arrayBase_176, %arrayPtr_175
		add     %arrayBase_176, 8
		mov     %idVal_177, %alloca_13
		mov     %offset_178, %idVal_177
		imul    %offset_178, 8
		mov     %elementAddr_179, %arrayBase_176
		add     %elementAddr_179, %offset_178
		mov     qword [%elementAddr_179], %idVal_174
		mov     %idVal_180, %alloca_9
		mov     %arrayPtr_181, %alloca_7
		mov     %arrayBase_182, %arrayPtr_181
		add     %arrayBase_182, 8
		mov     %idVal_183, %alloca_13
		mov     %offset_184, %idVal_183
		imul    %offset_184, 8
		mov     %elementAddr_185, %arrayBase_182
		add     %elementAddr_185, %offset_184
		mov     qword [%elementAddr_185], %idVal_180
		mov     %idVal_186, %alloca_11
		mov     %res_187, %idVal_186
		add     %res_187, 1
		mov     %arrayPtr_188, %alloca_6
		mov     %arrayBase_189, %arrayPtr_188
		add     %arrayBase_189, 8
		mov     %idVal_190, %alloca_10
		mov     %offset_191, %idVal_190
		imul    %offset_191, 8
		mov     %elementAddr_192, %arrayBase_189
		add     %elementAddr_192, %offset_191
		mov     %arrayPtr_193, qword [%elementAddr_192]
		mov     %arrayBase_194, %arrayPtr_193
		add     %arrayBase_194, 8
		mov     %idVal_195, %alloca_9
		mov     %offset_196, %idVal_195
		imul    %offset_196, 8
		mov     %elementAddr_197, %arrayBase_194
		add     %elementAddr_197, %offset_196
		mov     qword [%elementAddr_197], %res_187
		mov     %idVal_198, %alloca_10
		mov     %idVal_199, %alloca_15
		cmp     %idVal_198, %idVal_199
		sete    al
		movzx   %res_200, al
		cmp     %res_200, 0
		je      __L_28
__L_29:
		mov     %idVal_201, %alloca_9
		mov     %idVal_202, %alloca_14
		cmp     %idVal_201, %idVal_202
		sete    al
		movzx   %res_203, al
		cmp     %res_203, 0
		je      __L_28
__L_30:
		mov     %alloca_12, 1
__L_28:
__L_24:
		mov     %arrayPtr_204, %alloca_8
		mov     %arrayBase_205, %arrayPtr_204
		add     %arrayBase_205, 8
		mov     %idVal_206, %alloca_18
		mov     %offset_207, %idVal_206
		imul    %offset_207, 8
		mov     %elementAddr_208, %arrayBase_205
		add     %elementAddr_208, %offset_207
		mov     %elementVal_209, qword [%elementAddr_208]
		mov     %res_210, %elementVal_209
		sub     %res_210, 1
		mov     %alloca_10, %res_210
		mov     %arrayPtr_211, %alloca_7
		mov     %arrayBase_212, %arrayPtr_211
		add     %arrayBase_212, 8
		mov     %idVal_213, %alloca_18
		mov     %offset_214, %idVal_213
		imul    %offset_214, 8
		mov     %elementAddr_215, %arrayBase_212
		add     %elementAddr_215, %offset_214
		mov     %elementVal_216, qword [%elementAddr_215]
		mov     %res_217, %elementVal_216
		add     %res_217, 2
		mov     %alloca_9, %res_217
		mov     %idVal_219, %alloca_10
		mov     %idVal_220, %alloca_19
		mov     rdi, %idVal_219
		mov     rsi, %idVal_220
		call    check
		mov     %res_218, rax
		cmp     %res_218, 0
		je      __L_31
__L_32:
		mov     %idVal_222, %alloca_9
		mov     %idVal_223, %alloca_19
		mov     rdi, %idVal_222
		mov     rsi, %idVal_223
		call    check
		mov     %res_221, rax
		cmp     %res_221, 0
		je      __L_31
__L_33:
		mov     %arrayPtr_224, %alloca_6
		mov     %arrayBase_225, %arrayPtr_224
		add     %arrayBase_225, 8
		mov     %idVal_226, %alloca_10
		mov     %offset_227, %idVal_226
		imul    %offset_227, 8
		mov     %elementAddr_228, %arrayBase_225
		add     %elementAddr_228, %offset_227
		mov     %arrayPtr_229, qword [%elementAddr_228]
		mov     %arrayBase_230, %arrayPtr_229
		add     %arrayBase_230, 8
		mov     %idVal_231, %alloca_9
		mov     %offset_232, %idVal_231
		imul    %offset_232, 8
		mov     %elementAddr_233, %arrayBase_230
		add     %elementAddr_233, %offset_232
		mov     %elementVal_234, qword [%elementAddr_233]
		mov     %res_235, 1
		neg     %res_235
		cmp     %elementVal_234, %res_235
		sete    al
		movzx   %res_236, al
		cmp     %res_236, 0
		je      __L_31
__L_34:
		mov     %idVal_237, %alloca_13
		mov     %res_238, %idVal_237
		add     %res_238, 1
		mov     %alloca_13, %res_238
		mov     %idVal_239, %alloca_10
		mov     %arrayPtr_240, %alloca_8
		mov     %arrayBase_241, %arrayPtr_240
		add     %arrayBase_241, 8
		mov     %idVal_242, %alloca_13
		mov     %offset_243, %idVal_242
		imul    %offset_243, 8
		mov     %elementAddr_244, %arrayBase_241
		add     %elementAddr_244, %offset_243
		mov     qword [%elementAddr_244], %idVal_239
		mov     %idVal_245, %alloca_9
		mov     %arrayPtr_246, %alloca_7
		mov     %arrayBase_247, %arrayPtr_246
		add     %arrayBase_247, 8
		mov     %idVal_248, %alloca_13
		mov     %offset_249, %idVal_248
		imul    %offset_249, 8
		mov     %elementAddr_250, %arrayBase_247
		add     %elementAddr_250, %offset_249
		mov     qword [%elementAddr_250], %idVal_245
		mov     %idVal_251, %alloca_11
		mov     %res_252, %idVal_251
		add     %res_252, 1
		mov     %arrayPtr_253, %alloca_6
		mov     %arrayBase_254, %arrayPtr_253
		add     %arrayBase_254, 8
		mov     %idVal_255, %alloca_10
		mov     %offset_256, %idVal_255
		imul    %offset_256, 8
		mov     %elementAddr_257, %arrayBase_254
		add     %elementAddr_257, %offset_256
		mov     %arrayPtr_258, qword [%elementAddr_257]
		mov     %arrayBase_259, %arrayPtr_258
		add     %arrayBase_259, 8
		mov     %idVal_260, %alloca_9
		mov     %offset_261, %idVal_260
		imul    %offset_261, 8
		mov     %elementAddr_262, %arrayBase_259
		add     %elementAddr_262, %offset_261
		mov     qword [%elementAddr_262], %res_252
		mov     %idVal_263, %alloca_10
		mov     %idVal_264, %alloca_15
		cmp     %idVal_263, %idVal_264
		sete    al
		movzx   %res_265, al
		cmp     %res_265, 0
		je      __L_35
__L_36:
		mov     %idVal_266, %alloca_9
		mov     %idVal_267, %alloca_14
		cmp     %idVal_266, %idVal_267
		sete    al
		movzx   %res_268, al
		cmp     %res_268, 0
		je      __L_35
__L_37:
		mov     %alloca_12, 1
__L_35:
__L_31:
		mov     %arrayPtr_269, %alloca_8
		mov     %arrayBase_270, %arrayPtr_269
		add     %arrayBase_270, 8
		mov     %idVal_271, %alloca_18
		mov     %offset_272, %idVal_271
		imul    %offset_272, 8
		mov     %elementAddr_273, %arrayBase_270
		add     %elementAddr_273, %offset_272
		mov     %elementVal_274, qword [%elementAddr_273]
		mov     %res_275, %elementVal_274
		add     %res_275, 1
		mov     %alloca_10, %res_275
		mov     %arrayPtr_276, %alloca_7
		mov     %arrayBase_277, %arrayPtr_276
		add     %arrayBase_277, 8
		mov     %idVal_278, %alloca_18
		mov     %offset_279, %idVal_278
		imul    %offset_279, 8
		mov     %elementAddr_280, %arrayBase_277
		add     %elementAddr_280, %offset_279
		mov     %elementVal_281, qword [%elementAddr_280]
		mov     %res_282, %elementVal_281
		sub     %res_282, 2
		mov     %alloca_9, %res_282
		mov     %idVal_284, %alloca_10
		mov     %idVal_285, %alloca_19
		mov     rdi, %idVal_284
		mov     rsi, %idVal_285
		call    check
		mov     %res_283, rax
		cmp     %res_283, 0
		je      __L_38
__L_39:
		mov     %idVal_287, %alloca_9
		mov     %idVal_288, %alloca_19
		mov     rdi, %idVal_287
		mov     rsi, %idVal_288
		call    check
		mov     %res_286, rax
		cmp     %res_286, 0
		je      __L_38
__L_40:
		mov     %arrayPtr_289, %alloca_6
		mov     %arrayBase_290, %arrayPtr_289
		add     %arrayBase_290, 8
		mov     %idVal_291, %alloca_10
		mov     %offset_292, %idVal_291
		imul    %offset_292, 8
		mov     %elementAddr_293, %arrayBase_290
		add     %elementAddr_293, %offset_292
		mov     %arrayPtr_294, qword [%elementAddr_293]
		mov     %arrayBase_295, %arrayPtr_294
		add     %arrayBase_295, 8
		mov     %idVal_296, %alloca_9
		mov     %offset_297, %idVal_296
		imul    %offset_297, 8
		mov     %elementAddr_298, %arrayBase_295
		add     %elementAddr_298, %offset_297
		mov     %elementVal_299, qword [%elementAddr_298]
		mov     %res_300, 1
		neg     %res_300
		cmp     %elementVal_299, %res_300
		sete    al
		movzx   %res_301, al
		cmp     %res_301, 0
		je      __L_38
__L_41:
		mov     %idVal_302, %alloca_13
		mov     %res_303, %idVal_302
		add     %res_303, 1
		mov     %alloca_13, %res_303
		mov     %idVal_304, %alloca_10
		mov     %arrayPtr_305, %alloca_8
		mov     %arrayBase_306, %arrayPtr_305
		add     %arrayBase_306, 8
		mov     %idVal_307, %alloca_13
		mov     %offset_308, %idVal_307
		imul    %offset_308, 8
		mov     %elementAddr_309, %arrayBase_306
		add     %elementAddr_309, %offset_308
		mov     qword [%elementAddr_309], %idVal_304
		mov     %idVal_310, %alloca_9
		mov     %arrayPtr_311, %alloca_7
		mov     %arrayBase_312, %arrayPtr_311
		add     %arrayBase_312, 8
		mov     %idVal_313, %alloca_13
		mov     %offset_314, %idVal_313
		imul    %offset_314, 8
		mov     %elementAddr_315, %arrayBase_312
		add     %elementAddr_315, %offset_314
		mov     qword [%elementAddr_315], %idVal_310
		mov     %idVal_316, %alloca_11
		mov     %res_317, %idVal_316
		add     %res_317, 1
		mov     %arrayPtr_318, %alloca_6
		mov     %arrayBase_319, %arrayPtr_318
		add     %arrayBase_319, 8
		mov     %idVal_320, %alloca_10
		mov     %offset_321, %idVal_320
		imul    %offset_321, 8
		mov     %elementAddr_322, %arrayBase_319
		add     %elementAddr_322, %offset_321
		mov     %arrayPtr_323, qword [%elementAddr_322]
		mov     %arrayBase_324, %arrayPtr_323
		add     %arrayBase_324, 8
		mov     %idVal_325, %alloca_9
		mov     %offset_326, %idVal_325
		imul    %offset_326, 8
		mov     %elementAddr_327, %arrayBase_324
		add     %elementAddr_327, %offset_326
		mov     qword [%elementAddr_327], %res_317
		mov     %idVal_328, %alloca_10
		mov     %idVal_329, %alloca_15
		cmp     %idVal_328, %idVal_329
		sete    al
		movzx   %res_330, al
		cmp     %res_330, 0
		je      __L_42
__L_43:
		mov     %idVal_331, %alloca_9
		mov     %idVal_332, %alloca_14
		cmp     %idVal_331, %idVal_332
		sete    al
		movzx   %res_333, al
		cmp     %res_333, 0
		je      __L_42
__L_44:
		mov     %alloca_12, 1
__L_42:
__L_38:
		mov     %arrayPtr_334, %alloca_8
		mov     %arrayBase_335, %arrayPtr_334
		add     %arrayBase_335, 8
		mov     %idVal_336, %alloca_18
		mov     %offset_337, %idVal_336
		imul    %offset_337, 8
		mov     %elementAddr_338, %arrayBase_335
		add     %elementAddr_338, %offset_337
		mov     %elementVal_339, qword [%elementAddr_338]
		mov     %res_340, %elementVal_339
		add     %res_340, 1
		mov     %alloca_10, %res_340
		mov     %arrayPtr_341, %alloca_7
		mov     %arrayBase_342, %arrayPtr_341
		add     %arrayBase_342, 8
		mov     %idVal_343, %alloca_18
		mov     %offset_344, %idVal_343
		imul    %offset_344, 8
		mov     %elementAddr_345, %arrayBase_342
		add     %elementAddr_345, %offset_344
		mov     %elementVal_346, qword [%elementAddr_345]
		mov     %res_347, %elementVal_346
		add     %res_347, 2
		mov     %alloca_9, %res_347
		mov     %idVal_349, %alloca_10
		mov     %idVal_350, %alloca_19
		mov     rdi, %idVal_349
		mov     rsi, %idVal_350
		call    check
		mov     %res_348, rax
		cmp     %res_348, 0
		je      __L_45
__L_46:
		mov     %idVal_352, %alloca_9
		mov     %idVal_353, %alloca_19
		mov     rdi, %idVal_352
		mov     rsi, %idVal_353
		call    check
		mov     %res_351, rax
		cmp     %res_351, 0
		je      __L_45
__L_47:
		mov     %arrayPtr_354, %alloca_6
		mov     %arrayBase_355, %arrayPtr_354
		add     %arrayBase_355, 8
		mov     %idVal_356, %alloca_10
		mov     %offset_357, %idVal_356
		imul    %offset_357, 8
		mov     %elementAddr_358, %arrayBase_355
		add     %elementAddr_358, %offset_357
		mov     %arrayPtr_359, qword [%elementAddr_358]
		mov     %arrayBase_360, %arrayPtr_359
		add     %arrayBase_360, 8
		mov     %idVal_361, %alloca_9
		mov     %offset_362, %idVal_361
		imul    %offset_362, 8
		mov     %elementAddr_363, %arrayBase_360
		add     %elementAddr_363, %offset_362
		mov     %elementVal_364, qword [%elementAddr_363]
		mov     %res_365, 1
		neg     %res_365
		cmp     %elementVal_364, %res_365
		sete    al
		movzx   %res_366, al
		cmp     %res_366, 0
		je      __L_45
__L_48:
		mov     %idVal_367, %alloca_13
		mov     %res_368, %idVal_367
		add     %res_368, 1
		mov     %alloca_13, %res_368
		mov     %idVal_369, %alloca_10
		mov     %arrayPtr_370, %alloca_8
		mov     %arrayBase_371, %arrayPtr_370
		add     %arrayBase_371, 8
		mov     %idVal_372, %alloca_13
		mov     %offset_373, %idVal_372
		imul    %offset_373, 8
		mov     %elementAddr_374, %arrayBase_371
		add     %elementAddr_374, %offset_373
		mov     qword [%elementAddr_374], %idVal_369
		mov     %idVal_375, %alloca_9
		mov     %arrayPtr_376, %alloca_7
		mov     %arrayBase_377, %arrayPtr_376
		add     %arrayBase_377, 8
		mov     %idVal_378, %alloca_13
		mov     %offset_379, %idVal_378
		imul    %offset_379, 8
		mov     %elementAddr_380, %arrayBase_377
		add     %elementAddr_380, %offset_379
		mov     qword [%elementAddr_380], %idVal_375
		mov     %idVal_381, %alloca_11
		mov     %res_382, %idVal_381
		add     %res_382, 1
		mov     %arrayPtr_383, %alloca_6
		mov     %arrayBase_384, %arrayPtr_383
		add     %arrayBase_384, 8
		mov     %idVal_385, %alloca_10
		mov     %offset_386, %idVal_385
		imul    %offset_386, 8
		mov     %elementAddr_387, %arrayBase_384
		add     %elementAddr_387, %offset_386
		mov     %arrayPtr_388, qword [%elementAddr_387]
		mov     %arrayBase_389, %arrayPtr_388
		add     %arrayBase_389, 8
		mov     %idVal_390, %alloca_9
		mov     %offset_391, %idVal_390
		imul    %offset_391, 8
		mov     %elementAddr_392, %arrayBase_389
		add     %elementAddr_392, %offset_391
		mov     qword [%elementAddr_392], %res_382
		mov     %idVal_393, %alloca_10
		mov     %idVal_394, %alloca_15
		cmp     %idVal_393, %idVal_394
		sete    al
		movzx   %res_395, al
		cmp     %res_395, 0
		je      __L_49
__L_50:
		mov     %idVal_396, %alloca_9
		mov     %idVal_397, %alloca_14
		cmp     %idVal_396, %idVal_397
		sete    al
		movzx   %res_398, al
		cmp     %res_398, 0
		je      __L_49
__L_51:
		mov     %alloca_12, 1
__L_49:
__L_45:
		mov     %arrayPtr_399, %alloca_8
		mov     %arrayBase_400, %arrayPtr_399
		add     %arrayBase_400, 8
		mov     %idVal_401, %alloca_18
		mov     %offset_402, %idVal_401
		imul    %offset_402, 8
		mov     %elementAddr_403, %arrayBase_400
		add     %elementAddr_403, %offset_402
		mov     %elementVal_404, qword [%elementAddr_403]
		mov     %res_405, %elementVal_404
		sub     %res_405, 2
		mov     %alloca_10, %res_405
		mov     %arrayPtr_406, %alloca_7
		mov     %arrayBase_407, %arrayPtr_406
		add     %arrayBase_407, 8
		mov     %idVal_408, %alloca_18
		mov     %offset_409, %idVal_408
		imul    %offset_409, 8
		mov     %elementAddr_410, %arrayBase_407
		add     %elementAddr_410, %offset_409
		mov     %elementVal_411, qword [%elementAddr_410]
		mov     %res_412, %elementVal_411
		sub     %res_412, 1
		mov     %alloca_9, %res_412
		mov     %idVal_414, %alloca_10
		mov     %idVal_415, %alloca_19
		mov     rdi, %idVal_414
		mov     rsi, %idVal_415
		call    check
		mov     %res_413, rax
		cmp     %res_413, 0
		je      __L_52
__L_53:
		mov     %idVal_417, %alloca_9
		mov     %idVal_418, %alloca_19
		mov     rdi, %idVal_417
		mov     rsi, %idVal_418
		call    check
		mov     %res_416, rax
		cmp     %res_416, 0
		je      __L_52
__L_54:
		mov     %arrayPtr_419, %alloca_6
		mov     %arrayBase_420, %arrayPtr_419
		add     %arrayBase_420, 8
		mov     %idVal_421, %alloca_10
		mov     %offset_422, %idVal_421
		imul    %offset_422, 8
		mov     %elementAddr_423, %arrayBase_420
		add     %elementAddr_423, %offset_422
		mov     %arrayPtr_424, qword [%elementAddr_423]
		mov     %arrayBase_425, %arrayPtr_424
		add     %arrayBase_425, 8
		mov     %idVal_426, %alloca_9
		mov     %offset_427, %idVal_426
		imul    %offset_427, 8
		mov     %elementAddr_428, %arrayBase_425
		add     %elementAddr_428, %offset_427
		mov     %elementVal_429, qword [%elementAddr_428]
		mov     %res_430, 1
		neg     %res_430
		cmp     %elementVal_429, %res_430
		sete    al
		movzx   %res_431, al
		cmp     %res_431, 0
		je      __L_52
__L_55:
		mov     %idVal_432, %alloca_13
		mov     %res_433, %idVal_432
		add     %res_433, 1
		mov     %alloca_13, %res_433
		mov     %idVal_434, %alloca_10
		mov     %arrayPtr_435, %alloca_8
		mov     %arrayBase_436, %arrayPtr_435
		add     %arrayBase_436, 8
		mov     %idVal_437, %alloca_13
		mov     %offset_438, %idVal_437
		imul    %offset_438, 8
		mov     %elementAddr_439, %arrayBase_436
		add     %elementAddr_439, %offset_438
		mov     qword [%elementAddr_439], %idVal_434
		mov     %idVal_440, %alloca_9
		mov     %arrayPtr_441, %alloca_7
		mov     %arrayBase_442, %arrayPtr_441
		add     %arrayBase_442, 8
		mov     %idVal_443, %alloca_13
		mov     %offset_444, %idVal_443
		imul    %offset_444, 8
		mov     %elementAddr_445, %arrayBase_442
		add     %elementAddr_445, %offset_444
		mov     qword [%elementAddr_445], %idVal_440
		mov     %idVal_446, %alloca_11
		mov     %res_447, %idVal_446
		add     %res_447, 1
		mov     %arrayPtr_448, %alloca_6
		mov     %arrayBase_449, %arrayPtr_448
		add     %arrayBase_449, 8
		mov     %idVal_450, %alloca_10
		mov     %offset_451, %idVal_450
		imul    %offset_451, 8
		mov     %elementAddr_452, %arrayBase_449
		add     %elementAddr_452, %offset_451
		mov     %arrayPtr_453, qword [%elementAddr_452]
		mov     %arrayBase_454, %arrayPtr_453
		add     %arrayBase_454, 8
		mov     %idVal_455, %alloca_9
		mov     %offset_456, %idVal_455
		imul    %offset_456, 8
		mov     %elementAddr_457, %arrayBase_454
		add     %elementAddr_457, %offset_456
		mov     qword [%elementAddr_457], %res_447
		mov     %idVal_458, %alloca_10
		mov     %idVal_459, %alloca_15
		cmp     %idVal_458, %idVal_459
		sete    al
		movzx   %res_460, al
		cmp     %res_460, 0
		je      __L_56
__L_57:
		mov     %idVal_461, %alloca_9
		mov     %idVal_462, %alloca_14
		cmp     %idVal_461, %idVal_462
		sete    al
		movzx   %res_463, al
		cmp     %res_463, 0
		je      __L_56
__L_58:
		mov     %alloca_12, 1
__L_56:
__L_52:
		mov     %arrayPtr_464, %alloca_8
		mov     %arrayBase_465, %arrayPtr_464
		add     %arrayBase_465, 8
		mov     %idVal_466, %alloca_18
		mov     %offset_467, %idVal_466
		imul    %offset_467, 8
		mov     %elementAddr_468, %arrayBase_465
		add     %elementAddr_468, %offset_467
		mov     %elementVal_469, qword [%elementAddr_468]
		mov     %res_470, %elementVal_469
		sub     %res_470, 2
		mov     %alloca_10, %res_470
		mov     %arrayPtr_471, %alloca_7
		mov     %arrayBase_472, %arrayPtr_471
		add     %arrayBase_472, 8
		mov     %idVal_473, %alloca_18
		mov     %offset_474, %idVal_473
		imul    %offset_474, 8
		mov     %elementAddr_475, %arrayBase_472
		add     %elementAddr_475, %offset_474
		mov     %elementVal_476, qword [%elementAddr_475]
		mov     %res_477, %elementVal_476
		add     %res_477, 1
		mov     %alloca_9, %res_477
		mov     %idVal_479, %alloca_10
		mov     %idVal_480, %alloca_19
		mov     rdi, %idVal_479
		mov     rsi, %idVal_480
		call    check
		mov     %res_478, rax
		cmp     %res_478, 0
		je      __L_59
__L_60:
		mov     %idVal_482, %alloca_9
		mov     %idVal_483, %alloca_19
		mov     rdi, %idVal_482
		mov     rsi, %idVal_483
		call    check
		mov     %res_481, rax
		cmp     %res_481, 0
		je      __L_59
__L_61:
		mov     %arrayPtr_484, %alloca_6
		mov     %arrayBase_485, %arrayPtr_484
		add     %arrayBase_485, 8
		mov     %idVal_486, %alloca_10
		mov     %offset_487, %idVal_486
		imul    %offset_487, 8
		mov     %elementAddr_488, %arrayBase_485
		add     %elementAddr_488, %offset_487
		mov     %arrayPtr_489, qword [%elementAddr_488]
		mov     %arrayBase_490, %arrayPtr_489
		add     %arrayBase_490, 8
		mov     %idVal_491, %alloca_9
		mov     %offset_492, %idVal_491
		imul    %offset_492, 8
		mov     %elementAddr_493, %arrayBase_490
		add     %elementAddr_493, %offset_492
		mov     %elementVal_494, qword [%elementAddr_493]
		mov     %res_495, 1
		neg     %res_495
		cmp     %elementVal_494, %res_495
		sete    al
		movzx   %res_496, al
		cmp     %res_496, 0
		je      __L_59
__L_62:
		mov     %idVal_497, %alloca_13
		mov     %res_498, %idVal_497
		add     %res_498, 1
		mov     %alloca_13, %res_498
		mov     %idVal_499, %alloca_10
		mov     %arrayPtr_500, %alloca_8
		mov     %arrayBase_501, %arrayPtr_500
		add     %arrayBase_501, 8
		mov     %idVal_502, %alloca_13
		mov     %offset_503, %idVal_502
		imul    %offset_503, 8
		mov     %elementAddr_504, %arrayBase_501
		add     %elementAddr_504, %offset_503
		mov     qword [%elementAddr_504], %idVal_499
		mov     %idVal_505, %alloca_9
		mov     %arrayPtr_506, %alloca_7
		mov     %arrayBase_507, %arrayPtr_506
		add     %arrayBase_507, 8
		mov     %idVal_508, %alloca_13
		mov     %offset_509, %idVal_508
		imul    %offset_509, 8
		mov     %elementAddr_510, %arrayBase_507
		add     %elementAddr_510, %offset_509
		mov     qword [%elementAddr_510], %idVal_505
		mov     %idVal_511, %alloca_11
		mov     %res_512, %idVal_511
		add     %res_512, 1
		mov     %arrayPtr_513, %alloca_6
		mov     %arrayBase_514, %arrayPtr_513
		add     %arrayBase_514, 8
		mov     %idVal_515, %alloca_10
		mov     %offset_516, %idVal_515
		imul    %offset_516, 8
		mov     %elementAddr_517, %arrayBase_514
		add     %elementAddr_517, %offset_516
		mov     %arrayPtr_518, qword [%elementAddr_517]
		mov     %arrayBase_519, %arrayPtr_518
		add     %arrayBase_519, 8
		mov     %idVal_520, %alloca_9
		mov     %offset_521, %idVal_520
		imul    %offset_521, 8
		mov     %elementAddr_522, %arrayBase_519
		add     %elementAddr_522, %offset_521
		mov     qword [%elementAddr_522], %res_512
		mov     %idVal_523, %alloca_10
		mov     %idVal_524, %alloca_15
		cmp     %idVal_523, %idVal_524
		sete    al
		movzx   %res_525, al
		cmp     %res_525, 0
		je      __L_63
__L_64:
		mov     %idVal_526, %alloca_9
		mov     %idVal_527, %alloca_14
		cmp     %idVal_526, %idVal_527
		sete    al
		movzx   %res_528, al
		cmp     %res_528, 0
		je      __L_63
__L_65:
		mov     %alloca_12, 1
__L_63:
__L_59:
		mov     %arrayPtr_529, %alloca_8
		mov     %arrayBase_530, %arrayPtr_529
		add     %arrayBase_530, 8
		mov     %idVal_531, %alloca_18
		mov     %offset_532, %idVal_531
		imul    %offset_532, 8
		mov     %elementAddr_533, %arrayBase_530
		add     %elementAddr_533, %offset_532
		mov     %elementVal_534, qword [%elementAddr_533]
		mov     %res_535, %elementVal_534
		add     %res_535, 2
		mov     %alloca_10, %res_535
		mov     %arrayPtr_536, %alloca_7
		mov     %arrayBase_537, %arrayPtr_536
		add     %arrayBase_537, 8
		mov     %idVal_538, %alloca_18
		mov     %offset_539, %idVal_538
		imul    %offset_539, 8
		mov     %elementAddr_540, %arrayBase_537
		add     %elementAddr_540, %offset_539
		mov     %elementVal_541, qword [%elementAddr_540]
		mov     %res_542, %elementVal_541
		sub     %res_542, 1
		mov     %alloca_9, %res_542
		mov     %idVal_544, %alloca_10
		mov     %idVal_545, %alloca_19
		mov     rdi, %idVal_544
		mov     rsi, %idVal_545
		call    check
		mov     %res_543, rax
		cmp     %res_543, 0
		je      __L_66
__L_67:
		mov     %idVal_547, %alloca_9
		mov     %idVal_548, %alloca_19
		mov     rdi, %idVal_547
		mov     rsi, %idVal_548
		call    check
		mov     %res_546, rax
		cmp     %res_546, 0
		je      __L_66
__L_68:
		mov     %arrayPtr_549, %alloca_6
		mov     %arrayBase_550, %arrayPtr_549
		add     %arrayBase_550, 8
		mov     %idVal_551, %alloca_10
		mov     %offset_552, %idVal_551
		imul    %offset_552, 8
		mov     %elementAddr_553, %arrayBase_550
		add     %elementAddr_553, %offset_552
		mov     %arrayPtr_554, qword [%elementAddr_553]
		mov     %arrayBase_555, %arrayPtr_554
		add     %arrayBase_555, 8
		mov     %idVal_556, %alloca_9
		mov     %offset_557, %idVal_556
		imul    %offset_557, 8
		mov     %elementAddr_558, %arrayBase_555
		add     %elementAddr_558, %offset_557
		mov     %elementVal_559, qword [%elementAddr_558]
		mov     %res_560, 1
		neg     %res_560
		cmp     %elementVal_559, %res_560
		sete    al
		movzx   %res_561, al
		cmp     %res_561, 0
		je      __L_66
__L_69:
		mov     %idVal_562, %alloca_13
		mov     %res_563, %idVal_562
		add     %res_563, 1
		mov     %alloca_13, %res_563
		mov     %idVal_564, %alloca_10
		mov     %arrayPtr_565, %alloca_8
		mov     %arrayBase_566, %arrayPtr_565
		add     %arrayBase_566, 8
		mov     %idVal_567, %alloca_13
		mov     %offset_568, %idVal_567
		imul    %offset_568, 8
		mov     %elementAddr_569, %arrayBase_566
		add     %elementAddr_569, %offset_568
		mov     qword [%elementAddr_569], %idVal_564
		mov     %idVal_570, %alloca_9
		mov     %arrayPtr_571, %alloca_7
		mov     %arrayBase_572, %arrayPtr_571
		add     %arrayBase_572, 8
		mov     %idVal_573, %alloca_13
		mov     %offset_574, %idVal_573
		imul    %offset_574, 8
		mov     %elementAddr_575, %arrayBase_572
		add     %elementAddr_575, %offset_574
		mov     qword [%elementAddr_575], %idVal_570
		mov     %idVal_576, %alloca_11
		mov     %res_577, %idVal_576
		add     %res_577, 1
		mov     %arrayPtr_578, %alloca_6
		mov     %arrayBase_579, %arrayPtr_578
		add     %arrayBase_579, 8
		mov     %idVal_580, %alloca_10
		mov     %offset_581, %idVal_580
		imul    %offset_581, 8
		mov     %elementAddr_582, %arrayBase_579
		add     %elementAddr_582, %offset_581
		mov     %arrayPtr_583, qword [%elementAddr_582]
		mov     %arrayBase_584, %arrayPtr_583
		add     %arrayBase_584, 8
		mov     %idVal_585, %alloca_9
		mov     %offset_586, %idVal_585
		imul    %offset_586, 8
		mov     %elementAddr_587, %arrayBase_584
		add     %elementAddr_587, %offset_586
		mov     qword [%elementAddr_587], %res_577
		mov     %idVal_588, %alloca_10
		mov     %idVal_589, %alloca_15
		cmp     %idVal_588, %idVal_589
		sete    al
		movzx   %res_590, al
		cmp     %res_590, 0
		je      __L_70
__L_71:
		mov     %idVal_591, %alloca_9
		mov     %idVal_592, %alloca_14
		cmp     %idVal_591, %idVal_592
		sete    al
		movzx   %res_593, al
		cmp     %res_593, 0
		je      __L_70
__L_72:
		mov     %alloca_12, 1
__L_70:
__L_66:
		mov     %arrayPtr_594, %alloca_8
		mov     %arrayBase_595, %arrayPtr_594
		add     %arrayBase_595, 8
		mov     %idVal_596, %alloca_18
		mov     %offset_597, %idVal_596
		imul    %offset_597, 8
		mov     %elementAddr_598, %arrayBase_595
		add     %elementAddr_598, %offset_597
		mov     %elementVal_599, qword [%elementAddr_598]
		mov     %res_600, %elementVal_599
		add     %res_600, 2
		mov     %alloca_10, %res_600
		mov     %arrayPtr_601, %alloca_7
		mov     %arrayBase_602, %arrayPtr_601
		add     %arrayBase_602, 8
		mov     %idVal_603, %alloca_18
		mov     %offset_604, %idVal_603
		imul    %offset_604, 8
		mov     %elementAddr_605, %arrayBase_602
		add     %elementAddr_605, %offset_604
		mov     %elementVal_606, qword [%elementAddr_605]
		mov     %res_607, %elementVal_606
		add     %res_607, 1
		mov     %alloca_9, %res_607
		mov     %idVal_609, %alloca_10
		mov     %idVal_610, %alloca_19
		mov     rdi, %idVal_609
		mov     rsi, %idVal_610
		call    check
		mov     %res_608, rax
		cmp     %res_608, 0
		je      __L_73
__L_74:
		mov     %idVal_612, %alloca_9
		mov     %idVal_613, %alloca_19
		mov     rdi, %idVal_612
		mov     rsi, %idVal_613
		call    check
		mov     %res_611, rax
		cmp     %res_611, 0
		je      __L_73
__L_75:
		mov     %arrayPtr_614, %alloca_6
		mov     %arrayBase_615, %arrayPtr_614
		add     %arrayBase_615, 8
		mov     %idVal_616, %alloca_10
		mov     %offset_617, %idVal_616
		imul    %offset_617, 8
		mov     %elementAddr_618, %arrayBase_615
		add     %elementAddr_618, %offset_617
		mov     %arrayPtr_619, qword [%elementAddr_618]
		mov     %arrayBase_620, %arrayPtr_619
		add     %arrayBase_620, 8
		mov     %idVal_621, %alloca_9
		mov     %offset_622, %idVal_621
		imul    %offset_622, 8
		mov     %elementAddr_623, %arrayBase_620
		add     %elementAddr_623, %offset_622
		mov     %elementVal_624, qword [%elementAddr_623]
		mov     %res_625, 1
		neg     %res_625
		cmp     %elementVal_624, %res_625
		sete    al
		movzx   %res_626, al
		cmp     %res_626, 0
		je      __L_73
__L_76:
		mov     %idVal_627, %alloca_13
		mov     %res_628, %idVal_627
		add     %res_628, 1
		mov     %alloca_13, %res_628
		mov     %idVal_629, %alloca_10
		mov     %arrayPtr_630, %alloca_8
		mov     %arrayBase_631, %arrayPtr_630
		add     %arrayBase_631, 8
		mov     %idVal_632, %alloca_13
		mov     %offset_633, %idVal_632
		imul    %offset_633, 8
		mov     %elementAddr_634, %arrayBase_631
		add     %elementAddr_634, %offset_633
		mov     qword [%elementAddr_634], %idVal_629
		mov     %idVal_635, %alloca_9
		mov     %arrayPtr_636, %alloca_7
		mov     %arrayBase_637, %arrayPtr_636
		add     %arrayBase_637, 8
		mov     %idVal_638, %alloca_13
		mov     %offset_639, %idVal_638
		imul    %offset_639, 8
		mov     %elementAddr_640, %arrayBase_637
		add     %elementAddr_640, %offset_639
		mov     qword [%elementAddr_640], %idVal_635
		mov     %idVal_641, %alloca_11
		mov     %res_642, %idVal_641
		add     %res_642, 1
		mov     %arrayPtr_643, %alloca_6
		mov     %arrayBase_644, %arrayPtr_643
		add     %arrayBase_644, 8
		mov     %idVal_645, %alloca_10
		mov     %offset_646, %idVal_645
		imul    %offset_646, 8
		mov     %elementAddr_647, %arrayBase_644
		add     %elementAddr_647, %offset_646
		mov     %arrayPtr_648, qword [%elementAddr_647]
		mov     %arrayBase_649, %arrayPtr_648
		add     %arrayBase_649, 8
		mov     %idVal_650, %alloca_9
		mov     %offset_651, %idVal_650
		imul    %offset_651, 8
		mov     %elementAddr_652, %arrayBase_649
		add     %elementAddr_652, %offset_651
		mov     qword [%elementAddr_652], %res_642
		mov     %idVal_653, %alloca_10
		mov     %idVal_654, %alloca_15
		cmp     %idVal_653, %idVal_654
		sete    al
		movzx   %res_655, al
		cmp     %res_655, 0
		je      __L_77
__L_78:
		mov     %idVal_656, %alloca_9
		mov     %idVal_657, %alloca_14
		cmp     %idVal_656, %idVal_657
		sete    al
		movzx   %res_658, al
		cmp     %res_658, 0
		je      __L_77
__L_79:
		mov     %alloca_12, 1
__L_77:
__L_73:
		mov     %idVal_659, %alloca_12
		cmp     %idVal_659, 1
		sete    al
		movzx   %res_660, al
		cmp     %res_660, 0
		je      __L_80
__L_81:
		jmp     __L_22
__L_80:
		mov     %idVal_661, %alloca_18
		mov     %res_662, %idVal_661
		add     %res_662, 1
		mov     %alloca_18, %res_662
		jmp     __L_21
__L_22:
		mov     %idVal_663, %alloca_12
		cmp     %idVal_663, 1
		sete    al
		movzx   %res_664, al
		cmp     %res_664, 0
		je      __L_82
__L_83:
		mov     %arrayPtr_666, %alloca_6
		mov     %arrayBase_667, %arrayPtr_666
		add     %arrayBase_667, 8
		mov     %idVal_668, %alloca_15
		mov     %offset_669, %idVal_668
		imul    %offset_669, 8
		mov     %elementAddr_670, %arrayBase_667
		add     %elementAddr_670, %offset_669
		mov     %arrayPtr_671, qword [%elementAddr_670]
		mov     %arrayBase_672, %arrayPtr_671
		add     %arrayBase_672, 8
		mov     %idVal_673, %alloca_14
		mov     %offset_674, %idVal_673
		imul    %offset_674, 8
		mov     %elementAddr_675, %arrayBase_672
		add     %elementAddr_675, %offset_674
		mov     %elementVal_676, qword [%elementAddr_675]
		mov     rdi, %elementVal_676
		call    toString
		mov     %res_665, rax
		mov     rdi, %res_665
		call    println
		jmp     __L_84
__L_82:
		mov     rdi, __str_0
		call    print
__L_84:
		mov     r13, %local_r13
		mov     r15, %local_r15
		mov     r12, %local_r12
		mov     rbx, %local_rbx
		mov     r14, %local_r14
		mov     rax, 0
		ret     

SECTION .data

__str_0:
		dq      13
		db      6EH, 6FH, 20H, 73H, 6FH, 6CH, 75H, 74H, 69H, 6FH, 6EH, 21H, 0AH, 00H

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


