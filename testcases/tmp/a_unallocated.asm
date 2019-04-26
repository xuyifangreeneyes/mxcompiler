default rel

global _globalInit
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
		mov     %local_r14, r14
		mov     %local_r12, r12
		mov     %local_r13, r13
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     r14, %local_r14
		mov     r12, %local_r12
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		ret     

main:
		mov     %local_r14, r14
		mov     %local_r12, r12
		mov     %local_r13, r13
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		call    _globalInit
		call    getInt
		mov     %res_8, rax
		mov     %alloca_111, 0
		mov     %alloca_110, 0
		mov     %alloca_109, 0
		mov     %alloca_108, 0
		mov     %alloca_107, 0
		mov     %alloca_106, 0
		mov     %alloca_105, 0
		mov     %alloca_104, 0
		mov     %alloca_103, 0
		mov     %alloca_102, 0
		mov     %alloca_101, 0
		mov     %alloca_100, 0
		mov     %alloca_99, 0
		mov     %alloca_98, 0
		mov     %alloca_97, 0
		mov     %alloca_96, 0
		mov     %alloca_95, 0
		mov     %alloca_94, 0
		mov     %alloca_93, 0
__L_1:
		mov     %varDef_213, %alloca_111
		mov     %varDef_215, %alloca_110
		mov     %varDef_216, %alloca_109
		mov     %varDef_217, %alloca_108
		mov     %varDef_218, %alloca_107
		mov     %varDef_219, %alloca_106
		mov     %varDef_220, %alloca_105
		mov     %varDef_221, %alloca_104
		mov     %varDef_222, %alloca_103
		mov     %varDef_223, %alloca_102
		mov     %varDef_224, %alloca_101
		mov     %varDef_225, %alloca_100
		mov     %varDef_226, %alloca_99
		mov     %varDef_227, %alloca_98
		mov     %varDef_228, %alloca_97
		mov     %varDef_229, %alloca_96
		mov     %varDef_230, %alloca_95
		mov     %varDef_231, %alloca_94
		mov     %varDef_232, %alloca_93
		cmp     %varDef_213, %res_8
		jge     __L_2
__L_3:
		mov     %alloca_20, 0
		mov     %alloca_19, %varDef_215
		mov     %alloca_18, %varDef_216
		mov     %alloca_17, %varDef_217
		mov     %alloca_16, %varDef_218
		mov     %alloca_15, %varDef_219
		mov     %alloca_14, %varDef_220
		mov     %alloca_13, %varDef_221
		mov     %alloca_12, %varDef_222
		mov     %alloca_11, %varDef_223
		mov     %alloca_10, %varDef_224
		mov     %alloca_9, %varDef_225
		mov     %alloca_8, %varDef_226
		mov     %alloca_7, %varDef_227
		mov     %alloca_6, %varDef_228
		mov     %alloca_5, %varDef_229
		mov     %alloca_4, %varDef_230
		mov     %alloca_3, %varDef_231
		mov     %alloca_2, %varDef_232
__L_4:
		mov     %varDef_234, %alloca_20
		mov     %varDef_235, %alloca_19
		mov     %varDef_236, %alloca_18
		mov     %varDef_237, %alloca_17
		mov     %varDef_238, %alloca_16
		mov     %varDef_239, %alloca_15
		mov     %varDef_240, %alloca_14
		mov     %varDef_241, %alloca_13
		mov     %varDef_242, %alloca_12
		mov     %varDef_243, %alloca_11
		mov     %varDef_244, %alloca_10
		mov     %varDef_245, %alloca_9
		mov     %varDef_246, %alloca_8
		mov     %varDef_247, %alloca_7
		mov     %varDef_248, %alloca_6
		mov     %varDef_249, %alloca_5
		mov     %varDef_250, %alloca_4
		mov     %varDef_251, %alloca_3
		mov     %varDef_252, %alloca_2
		cmp     %varDef_234, %res_8
		jge     __L_5
__L_6:
		mov     %alloca_92, 0
		mov     %alloca_91, %varDef_236
		mov     %alloca_90, %varDef_237
		mov     %alloca_89, %varDef_238
		mov     %alloca_88, %varDef_239
		mov     %alloca_87, %varDef_240
		mov     %alloca_86, %varDef_241
		mov     %alloca_85, %varDef_242
		mov     %alloca_84, %varDef_243
		mov     %alloca_83, %varDef_244
		mov     %alloca_82, %varDef_245
		mov     %alloca_81, %varDef_246
		mov     %alloca_80, %varDef_247
		mov     %alloca_79, %varDef_248
		mov     %alloca_78, %varDef_249
		mov     %alloca_77, %varDef_250
		mov     %alloca_76, %varDef_251
		mov     %alloca_75, %varDef_252
__L_7:
		mov     %varDef_254, %alloca_92
		mov     %varDef_255, %alloca_91
		mov     %varDef_256, %alloca_90
		mov     %varDef_257, %alloca_89
		mov     %varDef_258, %alloca_88
		mov     %varDef_259, %alloca_87
		mov     %varDef_260, %alloca_86
		mov     %varDef_261, %alloca_85
		mov     %varDef_262, %alloca_84
		mov     %varDef_263, %alloca_83
		mov     %varDef_264, %alloca_82
		mov     %varDef_265, %alloca_81
		mov     %varDef_266, %alloca_80
		mov     %varDef_267, %alloca_79
		mov     %varDef_268, %alloca_78
		mov     %varDef_269, %alloca_77
		mov     %varDef_270, %alloca_76
		mov     %varDef_271, %alloca_75
		cmp     %varDef_254, %res_8
		jge     __L_8
__L_9:
		mov     %alloca_38, 0
		mov     %alloca_37, %varDef_256
		mov     %alloca_36, %varDef_257
		mov     %alloca_35, %varDef_258
		mov     %alloca_34, %varDef_259
		mov     %alloca_33, %varDef_260
		mov     %alloca_32, %varDef_261
		mov     %alloca_31, %varDef_262
		mov     %alloca_30, %varDef_263
		mov     %alloca_29, %varDef_264
		mov     %alloca_28, %varDef_265
		mov     %alloca_27, %varDef_266
		mov     %alloca_26, %varDef_267
		mov     %alloca_25, %varDef_268
		mov     %alloca_24, %varDef_269
		mov     %alloca_23, %varDef_270
		mov     %alloca_22, %varDef_271
__L_10:
		mov     %varDef_273, %alloca_38
		mov     %varDef_274, %alloca_37
		mov     %varDef_275, %alloca_36
		mov     %varDef_276, %alloca_35
		mov     %varDef_277, %alloca_34
		mov     %varDef_278, %alloca_33
		mov     %varDef_279, %alloca_32
		mov     %varDef_280, %alloca_31
		mov     %varDef_281, %alloca_30
		mov     %varDef_282, %alloca_29
		mov     %varDef_283, %alloca_28
		mov     %varDef_284, %alloca_27
		mov     %varDef_285, %alloca_26
		mov     %varDef_286, %alloca_25
		mov     %varDef_287, %alloca_24
		mov     %varDef_288, %alloca_23
		mov     %varDef_289, %alloca_22
		cmp     %varDef_273, %res_8
		jge     __L_11
__L_12:
		mov     %alloca_129, 0
		mov     %alloca_128, %varDef_275
		mov     %alloca_127, %varDef_276
		mov     %alloca_126, %varDef_277
		mov     %alloca_125, %varDef_278
		mov     %alloca_124, %varDef_279
		mov     %alloca_123, %varDef_280
		mov     %alloca_122, %varDef_281
		mov     %alloca_121, %varDef_282
		mov     %alloca_120, %varDef_283
		mov     %alloca_119, %varDef_284
		mov     %alloca_118, %varDef_285
		mov     %alloca_117, %varDef_286
		mov     %alloca_116, %varDef_287
		mov     %alloca_115, %varDef_288
		mov     %alloca_114, %varDef_289
__L_13:
		mov     %varDef_291, %alloca_129
		mov     %varDef_292, %alloca_128
		mov     %varDef_293, %alloca_127
		mov     %varDef_294, %alloca_126
		mov     %varDef_295, %alloca_125
		mov     %varDef_296, %alloca_124
		mov     %varDef_297, %alloca_123
		mov     %varDef_298, %alloca_122
		mov     %varDef_299, %alloca_121
		mov     %varDef_300, %alloca_120
		mov     %varDef_301, %alloca_119
		mov     %varDef_302, %alloca_118
		mov     %varDef_303, %alloca_117
		mov     %varDef_304, %alloca_116
		mov     %varDef_305, %alloca_115
		mov     %varDef_306, %alloca_114
		cmp     %varDef_291, %res_8
		jge     __L_14
__L_15:
		mov     %alloca_74, 0
		mov     %alloca_73, %varDef_293
		mov     %alloca_72, %varDef_294
		mov     %alloca_71, %varDef_295
		mov     %alloca_70, %varDef_296
		mov     %alloca_69, %varDef_297
		mov     %alloca_68, %varDef_298
		mov     %alloca_67, %varDef_299
		mov     %alloca_66, %varDef_300
		mov     %alloca_65, %varDef_301
		mov     %alloca_64, %varDef_302
		mov     %alloca_63, %varDef_303
		mov     %alloca_62, %varDef_304
		mov     %alloca_61, %varDef_305
		mov     %alloca_60, %varDef_306
__L_16:
		mov     %varDef_308, %alloca_74
		mov     %varDef_309, %alloca_73
		mov     %varDef_310, %alloca_72
		mov     %varDef_311, %alloca_71
		mov     %varDef_312, %alloca_70
		mov     %varDef_313, %alloca_69
		mov     %varDef_314, %alloca_68
		mov     %varDef_315, %alloca_67
		mov     %varDef_316, %alloca_66
		mov     %varDef_317, %alloca_65
		mov     %varDef_318, %alloca_64
		mov     %varDef_319, %alloca_63
		mov     %varDef_320, %alloca_62
		mov     %varDef_321, %alloca_61
		mov     %varDef_322, %alloca_60
		cmp     %varDef_308, %res_8
		jge     __L_17
__L_18:
		mov     %alloca_59, 0
		mov     %alloca_58, %varDef_310
		mov     %alloca_57, %varDef_311
		mov     %alloca_56, %varDef_312
		mov     %alloca_55, %varDef_313
		mov     %alloca_54, %varDef_314
		mov     %alloca_53, %varDef_315
		mov     %alloca_52, %varDef_316
		mov     %alloca_51, %varDef_317
		mov     %alloca_50, %varDef_318
		mov     %alloca_49, %varDef_319
		mov     %alloca_48, %varDef_320
		mov     %alloca_47, %varDef_321
		mov     %alloca_46, %varDef_322
__L_19:
		mov     %varDef_324, %alloca_59
		mov     %varDef_325, %alloca_58
		mov     %varDef_326, %alloca_57
		mov     %varDef_327, %alloca_56
		mov     %varDef_328, %alloca_55
		mov     %varDef_329, %alloca_54
		mov     %varDef_330, %alloca_53
		mov     %varDef_331, %alloca_52
		mov     %varDef_332, %alloca_51
		mov     %varDef_333, %alloca_50
		mov     %varDef_334, %alloca_49
		mov     %varDef_335, %alloca_48
		mov     %varDef_336, %alloca_47
		mov     %varDef_337, %alloca_46
		cmp     %varDef_324, %res_8
		jge     __L_20
__L_21:
		cmp     %varDef_213, %varDef_234
		jne     __L_22
__L_23:
		cmp     %varDef_254, 0
		jg      __L_24
__L_22:
		cmp     %varDef_273, %varDef_291
		jne     __L_25
__L_26:
		cmp     %varDef_308, 0
		jle     __L_25
__L_27:
		cmp     %varDef_324, 0
		jg      __L_24
__L_25:
		cmp     %varDef_213, %varDef_324
		je      __L_24
__L_28:
		cmp     %varDef_273, 0
		jle     __L_29
__L_30:
		cmp     %varDef_308, 0
		jle     __L_29
__L_24:
		mov     %alloca_43, 1
		jmp     __L_31
__L_29:
		mov     %alloca_43, 0
__L_31:
		mov     %varDef_340, %alloca_43
		cmp     %varDef_213, %varDef_234
		jne     __L_32
__L_33:
		cmp     %varDef_254, 0
		jg      __L_34
__L_32:
		cmp     %varDef_273, %varDef_291
		jne     __L_35
__L_36:
		cmp     %varDef_308, 0
		jle     __L_35
__L_37:
		cmp     %varDef_324, 0
		jg      __L_34
__L_35:
		cmp     %varDef_213, %varDef_324
		je      __L_34
__L_38:
		cmp     %varDef_273, 0
		jle     __L_39
__L_40:
		cmp     %varDef_308, 0
		jle     __L_39
__L_34:
		mov     %alloca_39, 1
		jmp     __L_41
__L_39:
		mov     %alloca_39, 0
__L_41:
		mov     %varDef_344, %alloca_39
		cmp     %varDef_213, %varDef_234
		jne     __L_42
__L_43:
		cmp     %varDef_254, 0
		jg      __L_44
__L_42:
		cmp     %varDef_273, %varDef_291
		jne     __L_45
__L_46:
		cmp     %varDef_308, 0
		jle     __L_45
__L_47:
		cmp     %varDef_324, 0
		jg      __L_44
__L_45:
		cmp     %varDef_213, %varDef_324
		je      __L_44
__L_48:
		cmp     %varDef_273, 0
		jle     __L_49
__L_50:
		cmp     %varDef_308, 0
		jle     __L_49
__L_44:
		mov     %alloca_130, 1
		jmp     __L_51
__L_49:
		mov     %alloca_130, 0
__L_51:
		mov     %varDef_348, %alloca_130
		cmp     %varDef_213, %varDef_234
		jne     __L_52
__L_53:
		cmp     %varDef_254, 0
		jg      __L_54
__L_52:
		cmp     %varDef_273, %varDef_291
		jne     __L_55
__L_56:
		cmp     %varDef_308, 0
		jle     __L_55
__L_57:
		cmp     %varDef_324, 0
		jg      __L_54
__L_55:
		cmp     %varDef_213, %varDef_324
		je      __L_54
__L_58:
		cmp     %varDef_273, 0
		jle     __L_59
__L_60:
		cmp     %varDef_308, 0
		jle     __L_59
__L_54:
		mov     %alloca_40, 1
		jmp     __L_61
__L_59:
		mov     %alloca_40, 0
__L_61:
		mov     %varDef_352, %alloca_40
		cmp     %varDef_213, %varDef_234
		jne     __L_62
__L_63:
		cmp     %varDef_254, 0
		jg      __L_64
__L_62:
		cmp     %varDef_273, %varDef_291
		jne     __L_65
__L_66:
		cmp     %varDef_308, 0
		jle     __L_65
__L_67:
		cmp     %varDef_324, 0
		jg      __L_64
__L_65:
		cmp     %varDef_213, %varDef_324
		je      __L_64
__L_68:
		cmp     %varDef_273, 0
		jle     __L_69
__L_70:
		cmp     %varDef_308, 0
		jle     __L_69
__L_64:
		mov     %alloca_42, 1
		jmp     __L_71
__L_69:
		mov     %alloca_42, 0
__L_71:
		mov     %varDef_356, %alloca_42
		cmp     %varDef_213, %varDef_234
		jne     __L_72
__L_73:
		cmp     %varDef_254, 0
		jg      __L_74
__L_72:
		cmp     %varDef_273, %varDef_291
		jne     __L_75
__L_76:
		cmp     %varDef_308, 0
		jle     __L_75
__L_77:
		cmp     %varDef_324, 0
		jg      __L_74
__L_75:
		cmp     %varDef_213, %varDef_324
		je      __L_74
__L_78:
		cmp     %varDef_273, 0
		jle     __L_79
__L_80:
		cmp     %varDef_308, 0
		jle     __L_79
__L_74:
		mov     %alloca_41, 1
		jmp     __L_81
__L_79:
		mov     %alloca_41, 0
__L_81:
		mov     %varDef_360, %alloca_41
		cmp     %varDef_340, 0
		jne     __L_82
__L_83:
		mov     %alloca_45, %varDef_325
		jmp     __L_84
__L_82:
		mov     %newVal_166, %varDef_325
		inc     %newVal_166
		mov     %alloca_45, %newVal_166
__L_84:
		mov     %varDef_363, %alloca_45
		cmp     %varDef_344, 0
		jne     __L_85
__L_86:
		mov     %alloca_112, %varDef_363
		jmp     __L_87
__L_85:
		mov     %newVal_170, %varDef_363
		inc     %newVal_170
		mov     %alloca_112, %newVal_170
__L_87:
		mov     %varDef_365, %alloca_112
		cmp     %varDef_348, 0
		jne     __L_88
__L_89:
		mov     %alloca_113, %varDef_365
		jmp     __L_90
__L_88:
		mov     %newVal_174, %varDef_365
		inc     %newVal_174
		mov     %alloca_113, %newVal_174
__L_90:
		mov     %varDef_367, %alloca_113
		cmp     %varDef_352, 0
		jne     __L_91
__L_92:
		mov     %alloca_1, %varDef_367
		jmp     __L_93
__L_91:
		mov     %newVal_178, %varDef_367
		inc     %newVal_178
		mov     %alloca_1, %newVal_178
__L_93:
		mov     %varDef_369, %alloca_1
		cmp     %varDef_356, 0
		jne     __L_94
__L_95:
		mov     %alloca_44, %varDef_369
		jmp     __L_96
__L_94:
		mov     %newVal_182, %varDef_369
		inc     %newVal_182
		mov     %alloca_44, %newVal_182
__L_96:
		mov     %varDef_371, %alloca_44
		cmp     %varDef_360, 0
		jne     __L_97
__L_98:
		mov     %alloca_21, %varDef_371
		jmp     __L_99
__L_97:
		mov     %newVal_186, %varDef_371
		inc     %newVal_186
		mov     %alloca_21, %newVal_186
__L_99:
		mov     %varDef_373, %alloca_21
		mov     %newVal_189, %varDef_324
		inc     %newVal_189
		mov     %alloca_59, %newVal_189
		mov     %alloca_58, %varDef_373
		mov     %alloca_57, %varDef_340
		mov     %alloca_56, %varDef_340
		mov     %alloca_55, %varDef_344
		mov     %alloca_54, %varDef_344
		mov     %alloca_53, %varDef_348
		mov     %alloca_52, %varDef_348
		mov     %alloca_51, %varDef_352
		mov     %alloca_50, %varDef_352
		mov     %alloca_49, %varDef_356
		mov     %alloca_48, %varDef_356
		mov     %alloca_47, %varDef_360
		mov     %alloca_46, %varDef_360
		jmp     __L_19
__L_20:
		mov     %newVal_192, %varDef_308
		inc     %newVal_192
		mov     %alloca_74, %newVal_192
		mov     %alloca_73, %varDef_324
		mov     %alloca_72, %varDef_325
		mov     %alloca_71, %varDef_326
		mov     %alloca_70, %varDef_327
		mov     %alloca_69, %varDef_328
		mov     %alloca_68, %varDef_329
		mov     %alloca_67, %varDef_330
		mov     %alloca_66, %varDef_331
		mov     %alloca_65, %varDef_332
		mov     %alloca_64, %varDef_333
		mov     %alloca_63, %varDef_334
		mov     %alloca_62, %varDef_335
		mov     %alloca_61, %varDef_336
		mov     %alloca_60, %varDef_337
		jmp     __L_16
__L_17:
		mov     %newVal_195, %varDef_291
		inc     %newVal_195
		mov     %alloca_129, %newVal_195
		mov     %alloca_128, %varDef_308
		mov     %alloca_127, %varDef_309
		mov     %alloca_126, %varDef_310
		mov     %alloca_125, %varDef_311
		mov     %alloca_124, %varDef_312
		mov     %alloca_123, %varDef_313
		mov     %alloca_122, %varDef_314
		mov     %alloca_121, %varDef_315
		mov     %alloca_120, %varDef_316
		mov     %alloca_119, %varDef_317
		mov     %alloca_118, %varDef_318
		mov     %alloca_117, %varDef_319
		mov     %alloca_116, %varDef_320
		mov     %alloca_115, %varDef_321
		mov     %alloca_114, %varDef_322
		jmp     __L_13
__L_14:
		mov     %newVal_198, %varDef_273
		inc     %newVal_198
		mov     %alloca_38, %newVal_198
		mov     %alloca_37, %varDef_291
		mov     %alloca_36, %varDef_292
		mov     %alloca_35, %varDef_293
		mov     %alloca_34, %varDef_294
		mov     %alloca_33, %varDef_295
		mov     %alloca_32, %varDef_296
		mov     %alloca_31, %varDef_297
		mov     %alloca_30, %varDef_298
		mov     %alloca_29, %varDef_299
		mov     %alloca_28, %varDef_300
		mov     %alloca_27, %varDef_301
		mov     %alloca_26, %varDef_302
		mov     %alloca_25, %varDef_303
		mov     %alloca_24, %varDef_304
		mov     %alloca_23, %varDef_305
		mov     %alloca_22, %varDef_306
		jmp     __L_10
__L_11:
		mov     %newVal_201, %varDef_254
		inc     %newVal_201
		mov     %alloca_92, %newVal_201
		mov     %alloca_91, %varDef_273
		mov     %alloca_90, %varDef_274
		mov     %alloca_89, %varDef_275
		mov     %alloca_88, %varDef_276
		mov     %alloca_87, %varDef_277
		mov     %alloca_86, %varDef_278
		mov     %alloca_85, %varDef_279
		mov     %alloca_84, %varDef_280
		mov     %alloca_83, %varDef_281
		mov     %alloca_82, %varDef_282
		mov     %alloca_81, %varDef_283
		mov     %alloca_80, %varDef_284
		mov     %alloca_79, %varDef_285
		mov     %alloca_78, %varDef_286
		mov     %alloca_77, %varDef_287
		mov     %alloca_76, %varDef_288
		mov     %alloca_75, %varDef_289
		jmp     __L_7
__L_8:
		mov     %newVal_204, %varDef_234
		inc     %newVal_204
		mov     %alloca_20, %newVal_204
		mov     %alloca_19, %varDef_254
		mov     %alloca_18, %varDef_255
		mov     %alloca_17, %varDef_256
		mov     %alloca_16, %varDef_257
		mov     %alloca_15, %varDef_258
		mov     %alloca_14, %varDef_259
		mov     %alloca_13, %varDef_260
		mov     %alloca_12, %varDef_261
		mov     %alloca_11, %varDef_262
		mov     %alloca_10, %varDef_263
		mov     %alloca_9, %varDef_264
		mov     %alloca_8, %varDef_265
		mov     %alloca_7, %varDef_266
		mov     %alloca_6, %varDef_267
		mov     %alloca_5, %varDef_268
		mov     %alloca_4, %varDef_269
		mov     %alloca_3, %varDef_270
		mov     %alloca_2, %varDef_271
		jmp     __L_4
__L_5:
		mov     %newVal_207, %varDef_213
		inc     %newVal_207
		mov     %alloca_111, %newVal_207
		mov     %alloca_110, %varDef_235
		mov     %alloca_109, %varDef_236
		mov     %alloca_108, %varDef_237
		mov     %alloca_107, %varDef_238
		mov     %alloca_106, %varDef_239
		mov     %alloca_105, %varDef_240
		mov     %alloca_104, %varDef_241
		mov     %alloca_103, %varDef_242
		mov     %alloca_102, %varDef_243
		mov     %alloca_101, %varDef_244
		mov     %alloca_100, %varDef_245
		mov     %alloca_99, %varDef_246
		mov     %alloca_98, %varDef_247
		mov     %alloca_97, %varDef_248
		mov     %alloca_96, %varDef_249
		mov     %alloca_95, %varDef_250
		mov     %alloca_94, %varDef_251
		mov     %alloca_93, %varDef_252
		jmp     __L_1
__L_2:
		mov     rdi, %varDef_220
		call    toString
		mov     %res_208, rax
		mov     rdi, %res_208
		call    print
		mov     r14, %local_r14
		mov     r12, %local_r12
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		mov     r15, %local_r15
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


