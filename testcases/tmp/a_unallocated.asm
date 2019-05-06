default rel

global __globalInit
global check
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
		mov     %local_r15, r15
		mov     %local_r12, r12
		mov     %local_r13, r13
		mov     %local_rbx, rbx
		mov     %local_r14, r14
		mov     r15, %local_r15
		mov     r12, %local_r12
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		mov     r14, %local_r14
		ret     

check:
		mov     %local_r15, r15
		mov     %local_r12, r12
		mov     %local_r13, r13
		mov     %local_rbx, rbx
		mov     %local_r14, r14
		mov     %argVal_0, rdi
		mov     %argVal_2, rsi
		cmp     %argVal_0, %argVal_2
		jge     __L_1
__L_2:
		cmp     %argVal_0, 0
		jl      __L_1
__L_3:
		mov     %alloca_1, 1
		jmp     __L_4
__L_1:
		mov     %alloca_1, 0
__L_4:
		mov     %varDef_15, %alloca_1
		mov     r15, %local_r15
		mov     r12, %local_r12
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		mov     r14, %local_r14
		mov     rax, %varDef_15
		ret     

main:
		mov     %local_r15, r15
		mov     %local_r12, r12
		mov     %local_r13, r13
		mov     %local_rbx, rbx
		mov     %local_r14, r14
		call    __globalInit
		call    getInt
		mov     %res_16, rax
		mov     %res_18, %res_16
		sub     %res_18, 1
		mov     %res_23, %res_16
		imul    %res_23, %res_16
		mov     %memberLength_25, %res_23
		shl     %memberLength_25, 3
		mov     %arrayLength_26, %memberLength_25
		add     %arrayLength_26, 8
		mov     rdi, %arrayLength_26
		call    malloc
		mov     %arrayPtr_24, rax
		mov     qword [%arrayPtr_24], %res_23
		mov     %arrayBase_27, %arrayPtr_24
		add     %arrayBase_27, 8
		mov     %alloca_58, 0
__L_5:
		mov     %varDef_774, %alloca_58
		mov     %res_31, %res_16
		imul    %res_31, %res_16
		cmp     %varDef_774, %res_31
		jge     __L_6
__L_7:
		mov     %offset_35, %varDef_774
		shl     %offset_35, 3
		mov     %elementAddr_36, %arrayBase_27
		add     %elementAddr_36, %offset_35
		mov     qword [%elementAddr_36], 0
		mov     %newVal_39, %varDef_774
		inc     %newVal_39
		mov     %alloca_58, %newVal_39
		jmp     __L_5
__L_6:
		mov     %res_42, %res_16
		imul    %res_42, %res_16
		mov     %memberLength_44, %res_42
		shl     %memberLength_44, 3
		mov     %arrayLength_45, %memberLength_44
		add     %arrayLength_45, 8
		mov     rdi, %arrayLength_45
		call    malloc
		mov     %arrayPtr_43, rax
		mov     qword [%arrayPtr_43], %res_42
		mov     %arrayBase_46, %arrayPtr_43
		add     %arrayBase_46, 8
		mov     %alloca_34, 0
__L_8:
		mov     %varDef_778, %alloca_34
		mov     %res_50, %res_16
		imul    %res_50, %res_16
		cmp     %varDef_778, %res_50
		jge     __L_9
__L_10:
		mov     %offset_54, %varDef_778
		shl     %offset_54, 3
		mov     %elementAddr_55, %arrayBase_46
		add     %elementAddr_55, %offset_54
		mov     qword [%elementAddr_55], 0
		mov     %newVal_58, %varDef_778
		inc     %newVal_58
		mov     %alloca_34, %newVal_58
		jmp     __L_8
__L_9:
		mov     %memberLength_61, %res_16
		shl     %memberLength_61, 3
		mov     %arrayLength_62, %memberLength_61
		add     %arrayLength_62, 8
		mov     rdi, %arrayLength_62
		call    malloc
		mov     %arrayPtr_60, rax
		mov     qword [%arrayPtr_60], %res_16
		mov     %arrayBase_63, %arrayPtr_60
		add     %arrayBase_63, 8
		mov     %alloca_23, 0
__L_11:
		mov     %varDef_782, %alloca_23
		cmp     %varDef_782, %res_16
		jge     __L_12
__L_13:
		mov     %memberLength_69, %res_16
		shl     %memberLength_69, 3
		mov     %arrayLength_70, %memberLength_69
		add     %arrayLength_70, 8
		mov     rdi, %arrayLength_70
		call    malloc
		mov     %arrayPtr_68, rax
		mov     qword [%arrayPtr_68], %res_16
		mov     %arrayBase_71, %arrayPtr_68
		add     %arrayBase_71, 8
		mov     %offset_74, %varDef_782
		shl     %offset_74, 3
		mov     %elementAddr_75, %arrayBase_63
		add     %elementAddr_75, %offset_74
		mov     qword [%elementAddr_75], %arrayBase_71
		mov     %alloca_57, 0
__L_14:
		mov     %varDef_785, %alloca_57
		cmp     %varDef_785, %res_16
		jge     __L_15
__L_16:
		mov     %offset_82, %varDef_782
		shl     %offset_82, 3
		mov     %elementAddr_83, %arrayBase_63
		add     %elementAddr_83, %offset_82
		mov     %arrayBase_84, qword [%elementAddr_83]
		mov     %offset_86, %varDef_785
		shl     %offset_86, 3
		mov     %elementAddr_87, %arrayBase_84
		add     %elementAddr_87, %offset_86
		mov     qword [%elementAddr_87], -1
		mov     %newVal_90, %varDef_785
		inc     %newVal_90
		mov     %alloca_57, %newVal_90
		jmp     __L_14
__L_15:
		mov     %newVal_93, %varDef_782
		inc     %newVal_93
		mov     %alloca_23, %newVal_93
		jmp     __L_11
__L_12:
		mov     %elementAddr_97, %arrayBase_27
		add     %elementAddr_97, 0
		mov     qword [%elementAddr_97], 0
		mov     %elementAddr_101, %arrayBase_46
		add     %elementAddr_101, 0
		mov     qword [%elementAddr_101], 0
		mov     %elementAddr_105, %arrayBase_63
		add     %elementAddr_105, 0
		mov     %arrayBase_106, qword [%elementAddr_105]
		mov     %elementAddr_109, %arrayBase_106
		add     %elementAddr_109, 0
		mov     qword [%elementAddr_109], 0
		mov     %alloca_29, 0
		mov     %alloca_28, 0
		mov     %alloca_27, 0
__L_17:
		mov     %varDef_788, %alloca_29
		mov     %varDef_789, %alloca_28
		mov     %varDef_790, %alloca_27
		cmp     %varDef_788, %varDef_789
		jle     __L_18
__L_19:
		mov     %alloca_56, %varDef_790
		jmp     __L_20
__L_18:
		mov     %offset_116, %varDef_788
		shl     %offset_116, 3
		mov     %elementAddr_117, %arrayBase_27
		add     %elementAddr_117, %offset_116
		mov     %elementVal_118, qword [%elementAddr_117]
		mov     %offset_119, %elementVal_118
		shl     %offset_119, 3
		mov     %elementAddr_120, %arrayBase_63
		add     %elementAddr_120, %offset_119
		mov     %arrayBase_121, qword [%elementAddr_120]
		mov     %elementAddr_125, %arrayBase_46
		add     %elementAddr_125, %offset_116
		mov     %elementVal_126, qword [%elementAddr_125]
		mov     %offset_127, %elementVal_126
		shl     %offset_127, 3
		mov     %elementAddr_128, %arrayBase_121
		add     %elementAddr_128, %offset_127
		mov     %elementVal_129, qword [%elementAddr_128]
		mov     %elementVal_134, qword [%elementAddr_117]
		mov     %res_135, %elementVal_134
		sub     %res_135, 1
		mov     %elementVal_140, qword [%elementAddr_125]
		mov     %res_141, %elementVal_140
		sub     %res_141, 2
		cmp     %res_135, %res_16
		jge     __L_21
__L_22:
		cmp     %res_135, 0
		jl      __L_21
__L_23:
		mov     %alloca_33, 1
		jmp     __L_24
__L_21:
		mov     %alloca_33, 0
__L_24:
		mov     %varDef_865, %alloca_33
		cmp     %varDef_865, 0
		jne     __L_25
__L_26:
		mov     %alloca_22, %varDef_789
		mov     %alloca_21, %varDef_790
		mov     %alloca_20, %varDef_877
		mov     %alloca_19, %varDef_878
		mov     %alloca_18, %varDef_879
		mov     %alloca_17, %varDef_880
		jmp     __L_27
__L_25:
		cmp     %res_141, %res_16
		jge     __L_28
__L_29:
		cmp     %res_141, 0
		jl      __L_28
__L_30:
		mov     %alloca_24, 1
		jmp     __L_31
__L_28:
		mov     %alloca_24, 0
__L_31:
		mov     %varDef_871, %alloca_24
		cmp     %varDef_871, 0
		jne     __L_32
__L_33:
		mov     %alloca_22, %varDef_789
		mov     %alloca_21, %varDef_790
		mov     %alloca_20, %varDef_871
		mov     %alloca_19, %varDef_871
		mov     %alloca_18, %res_16
		mov     %alloca_17, %res_141
		jmp     __L_27
__L_32:
		mov     %offset_150, %res_135
		shl     %offset_150, 3
		mov     %elementAddr_151, %arrayBase_63
		add     %elementAddr_151, %offset_150
		mov     %arrayBase_152, qword [%elementAddr_151]
		mov     %offset_154, %res_141
		shl     %offset_154, 3
		mov     %elementAddr_155, %arrayBase_152
		add     %elementAddr_155, %offset_154
		mov     %elementVal_156, qword [%elementAddr_155]
		cmp     %elementVal_156, -1
		je      __L_34
__L_35:
		mov     %alloca_22, %varDef_789
		mov     %alloca_21, %varDef_790
		mov     %alloca_20, %varDef_871
		mov     %alloca_19, %varDef_871
		mov     %alloca_18, %res_16
		mov     %alloca_17, %res_141
		jmp     __L_27
__L_34:
		mov     %res_160, %varDef_789
		add     %res_160, 1
		mov     %offset_164, %res_160
		shl     %offset_164, 3
		mov     %elementAddr_165, %arrayBase_27
		add     %elementAddr_165, %offset_164
		mov     qword [%elementAddr_165], %res_135
		mov     %elementAddr_170, %arrayBase_46
		add     %elementAddr_170, %offset_164
		mov     qword [%elementAddr_170], %res_141
		mov     %res_172, %elementVal_129
		add     %res_172, 1
		mov     %offset_175, %res_135
		shl     %offset_175, 3
		mov     %elementAddr_176, %arrayBase_63
		add     %elementAddr_176, %offset_175
		mov     %arrayBase_177, qword [%elementAddr_176]
		mov     %offset_179, %res_141
		shl     %offset_179, 3
		mov     %elementAddr_180, %arrayBase_177
		add     %elementAddr_180, %offset_179
		mov     qword [%elementAddr_180], %res_172
		cmp     %res_135, %res_18
		je      __L_36
__L_37:
		mov     %alloca_22, %res_160
		mov     %alloca_21, %varDef_790
		mov     %alloca_20, %varDef_871
		mov     %alloca_19, %varDef_871
		mov     %alloca_18, %res_16
		mov     %alloca_17, %res_141
		jmp     __L_27
__L_36:
		cmp     %res_141, %res_18
		je      __L_38
__L_39:
		mov     %alloca_22, %res_160
		mov     %alloca_21, %varDef_790
		mov     %alloca_20, %varDef_871
		mov     %alloca_19, %varDef_871
		mov     %alloca_18, %res_16
		mov     %alloca_17, %res_141
		jmp     __L_27
__L_38:
		mov     %alloca_22, %res_160
		mov     %alloca_21, 1
		mov     %alloca_20, %varDef_871
		mov     %alloca_19, %varDef_871
		mov     %alloca_18, %res_16
		mov     %alloca_17, %res_141
__L_27:
		mov     %varDef_875, %alloca_22
		mov     %varDef_876, %alloca_21
		mov     %varDef_877, %alloca_20
		mov     %varDef_878, %alloca_19
		mov     %varDef_879, %alloca_18
		mov     %varDef_880, %alloca_17
		mov     %offset_189, %varDef_788
		shl     %offset_189, 3
		mov     %elementAddr_190, %arrayBase_27
		add     %elementAddr_190, %offset_189
		mov     %elementVal_191, qword [%elementAddr_190]
		mov     %res_192, %elementVal_191
		sub     %res_192, 1
		mov     %elementAddr_196, %arrayBase_46
		add     %elementAddr_196, %offset_189
		mov     %elementVal_197, qword [%elementAddr_196]
		mov     %res_198, %elementVal_197
		add     %res_198, 2
		cmp     %res_192, %res_16
		jge     __L_40
__L_41:
		cmp     %res_192, 0
		jl      __L_40
__L_42:
		mov     %alloca_32, 1
		jmp     __L_43
__L_40:
		mov     %alloca_32, 0
__L_43:
		mov     %varDef_887, %alloca_32
		cmp     %varDef_887, 0
		jne     __L_44
__L_45:
		mov     %alloca_8, %varDef_875
		mov     %alloca_7, %varDef_876
		mov     %alloca_6, %varDef_899
		mov     %alloca_5, %varDef_900
		mov     %alloca_4, %varDef_901
		mov     %alloca_3, %varDef_902
		jmp     __L_46
__L_44:
		cmp     %res_198, %res_16
		jge     __L_47
__L_48:
		cmp     %res_198, 0
		jl      __L_47
__L_49:
		mov     %alloca_16, 1
		jmp     __L_50
__L_47:
		mov     %alloca_16, 0
__L_50:
		mov     %varDef_893, %alloca_16
		cmp     %varDef_893, 0
		jne     __L_51
__L_52:
		mov     %alloca_8, %varDef_875
		mov     %alloca_7, %varDef_876
		mov     %alloca_6, %varDef_893
		mov     %alloca_5, %varDef_893
		mov     %alloca_4, %res_16
		mov     %alloca_3, %res_198
		jmp     __L_46
__L_51:
		mov     %offset_207, %res_192
		shl     %offset_207, 3
		mov     %elementAddr_208, %arrayBase_63
		add     %elementAddr_208, %offset_207
		mov     %arrayBase_209, qword [%elementAddr_208]
		mov     %offset_211, %res_198
		shl     %offset_211, 3
		mov     %elementAddr_212, %arrayBase_209
		add     %elementAddr_212, %offset_211
		mov     %elementVal_213, qword [%elementAddr_212]
		cmp     %elementVal_213, -1
		je      __L_53
__L_54:
		mov     %alloca_8, %varDef_875
		mov     %alloca_7, %varDef_876
		mov     %alloca_6, %varDef_893
		mov     %alloca_5, %varDef_893
		mov     %alloca_4, %res_16
		mov     %alloca_3, %res_198
		jmp     __L_46
__L_53:
		mov     %res_217, %varDef_875
		add     %res_217, 1
		mov     %offset_221, %res_217
		shl     %offset_221, 3
		mov     %elementAddr_222, %arrayBase_27
		add     %elementAddr_222, %offset_221
		mov     qword [%elementAddr_222], %res_192
		mov     %elementAddr_227, %arrayBase_46
		add     %elementAddr_227, %offset_221
		mov     qword [%elementAddr_227], %res_198
		mov     %res_229, %elementVal_129
		add     %res_229, 1
		mov     %offset_232, %res_192
		shl     %offset_232, 3
		mov     %elementAddr_233, %arrayBase_63
		add     %elementAddr_233, %offset_232
		mov     %arrayBase_234, qword [%elementAddr_233]
		mov     %offset_236, %res_198
		shl     %offset_236, 3
		mov     %elementAddr_237, %arrayBase_234
		add     %elementAddr_237, %offset_236
		mov     qword [%elementAddr_237], %res_229
		cmp     %res_192, %res_18
		je      __L_55
__L_56:
		mov     %alloca_8, %res_217
		mov     %alloca_7, %varDef_876
		mov     %alloca_6, %varDef_893
		mov     %alloca_5, %varDef_893
		mov     %alloca_4, %res_16
		mov     %alloca_3, %res_198
		jmp     __L_46
__L_55:
		cmp     %res_198, %res_18
		je      __L_57
__L_58:
		mov     %alloca_8, %res_217
		mov     %alloca_7, %varDef_876
		mov     %alloca_6, %varDef_893
		mov     %alloca_5, %varDef_893
		mov     %alloca_4, %res_16
		mov     %alloca_3, %res_198
		jmp     __L_46
__L_57:
		mov     %alloca_8, %res_217
		mov     %alloca_7, 1
		mov     %alloca_6, %varDef_893
		mov     %alloca_5, %varDef_893
		mov     %alloca_4, %res_16
		mov     %alloca_3, %res_198
__L_46:
		mov     %varDef_897, %alloca_8
		mov     %varDef_898, %alloca_7
		mov     %varDef_899, %alloca_6
		mov     %varDef_900, %alloca_5
		mov     %varDef_901, %alloca_4
		mov     %varDef_902, %alloca_3
		mov     %offset_246, %varDef_788
		shl     %offset_246, 3
		mov     %elementAddr_247, %arrayBase_27
		add     %elementAddr_247, %offset_246
		mov     %elementVal_248, qword [%elementAddr_247]
		mov     %res_249, %elementVal_248
		add     %res_249, 1
		mov     %elementAddr_253, %arrayBase_46
		add     %elementAddr_253, %offset_246
		mov     %elementVal_254, qword [%elementAddr_253]
		mov     %res_255, %elementVal_254
		sub     %res_255, 2
		cmp     %res_249, %res_16
		jge     __L_59
__L_60:
		cmp     %res_249, 0
		jl      __L_59
__L_61:
		mov     %alloca_48, 1
		jmp     __L_62
__L_59:
		mov     %alloca_48, 0
__L_62:
		mov     %varDef_909, %alloca_48
		cmp     %varDef_909, 0
		jne     __L_63
__L_64:
		mov     %alloca_40, %varDef_897
		mov     %alloca_39, %varDef_898
		mov     %alloca_38, %varDef_921
		mov     %alloca_37, %varDef_922
		mov     %alloca_36, %varDef_923
		mov     %alloca_35, %varDef_924
		jmp     __L_65
__L_63:
		cmp     %res_255, %res_16
		jge     __L_66
__L_67:
		cmp     %res_255, 0
		jl      __L_66
__L_68:
		mov     %alloca_59, 1
		jmp     __L_69
__L_66:
		mov     %alloca_59, 0
__L_69:
		mov     %varDef_915, %alloca_59
		cmp     %varDef_915, 0
		jne     __L_70
__L_71:
		mov     %alloca_40, %varDef_897
		mov     %alloca_39, %varDef_898
		mov     %alloca_38, %varDef_915
		mov     %alloca_37, %varDef_915
		mov     %alloca_36, %res_16
		mov     %alloca_35, %res_255
		jmp     __L_65
__L_70:
		mov     %offset_264, %res_249
		shl     %offset_264, 3
		mov     %elementAddr_265, %arrayBase_63
		add     %elementAddr_265, %offset_264
		mov     %arrayBase_266, qword [%elementAddr_265]
		mov     %offset_268, %res_255
		shl     %offset_268, 3
		mov     %elementAddr_269, %arrayBase_266
		add     %elementAddr_269, %offset_268
		mov     %elementVal_270, qword [%elementAddr_269]
		cmp     %elementVal_270, -1
		je      __L_72
__L_73:
		mov     %alloca_40, %varDef_897
		mov     %alloca_39, %varDef_898
		mov     %alloca_38, %varDef_915
		mov     %alloca_37, %varDef_915
		mov     %alloca_36, %res_16
		mov     %alloca_35, %res_255
		jmp     __L_65
__L_72:
		mov     %res_274, %varDef_897
		add     %res_274, 1
		mov     %offset_278, %res_274
		shl     %offset_278, 3
		mov     %elementAddr_279, %arrayBase_27
		add     %elementAddr_279, %offset_278
		mov     qword [%elementAddr_279], %res_249
		mov     %elementAddr_284, %arrayBase_46
		add     %elementAddr_284, %offset_278
		mov     qword [%elementAddr_284], %res_255
		mov     %res_286, %elementVal_129
		add     %res_286, 1
		mov     %offset_289, %res_249
		shl     %offset_289, 3
		mov     %elementAddr_290, %arrayBase_63
		add     %elementAddr_290, %offset_289
		mov     %arrayBase_291, qword [%elementAddr_290]
		mov     %offset_293, %res_255
		shl     %offset_293, 3
		mov     %elementAddr_294, %arrayBase_291
		add     %elementAddr_294, %offset_293
		mov     qword [%elementAddr_294], %res_286
		cmp     %res_249, %res_18
		je      __L_74
__L_75:
		mov     %alloca_40, %res_274
		mov     %alloca_39, %varDef_898
		mov     %alloca_38, %varDef_915
		mov     %alloca_37, %varDef_915
		mov     %alloca_36, %res_16
		mov     %alloca_35, %res_255
		jmp     __L_65
__L_74:
		cmp     %res_255, %res_18
		je      __L_76
__L_77:
		mov     %alloca_40, %res_274
		mov     %alloca_39, %varDef_898
		mov     %alloca_38, %varDef_915
		mov     %alloca_37, %varDef_915
		mov     %alloca_36, %res_16
		mov     %alloca_35, %res_255
		jmp     __L_65
__L_76:
		mov     %alloca_40, %res_274
		mov     %alloca_39, 1
		mov     %alloca_38, %varDef_915
		mov     %alloca_37, %varDef_915
		mov     %alloca_36, %res_16
		mov     %alloca_35, %res_255
__L_65:
		mov     %varDef_919, %alloca_40
		mov     %varDef_920, %alloca_39
		mov     %varDef_921, %alloca_38
		mov     %varDef_922, %alloca_37
		mov     %varDef_923, %alloca_36
		mov     %varDef_924, %alloca_35
		mov     %offset_303, %varDef_788
		shl     %offset_303, 3
		mov     %elementAddr_304, %arrayBase_27
		add     %elementAddr_304, %offset_303
		mov     %elementVal_305, qword [%elementAddr_304]
		mov     %res_306, %elementVal_305
		add     %res_306, 1
		mov     %elementAddr_310, %arrayBase_46
		add     %elementAddr_310, %offset_303
		mov     %elementVal_311, qword [%elementAddr_310]
		mov     %res_312, %elementVal_311
		add     %res_312, 2
		cmp     %res_306, %res_16
		jge     __L_78
__L_79:
		cmp     %res_306, 0
		jl      __L_78
__L_80:
		mov     %alloca_9, 1
		jmp     __L_81
__L_78:
		mov     %alloca_9, 0
__L_81:
		mov     %varDef_931, %alloca_9
		cmp     %varDef_931, 0
		jne     __L_82
__L_83:
		mov     %alloca_54, %varDef_919
		mov     %alloca_53, %varDef_920
		mov     %alloca_52, %varDef_943
		mov     %alloca_51, %varDef_944
		mov     %alloca_50, %varDef_945
		mov     %alloca_49, %varDef_946
		jmp     __L_84
__L_82:
		cmp     %res_312, %res_16
		jge     __L_85
__L_86:
		cmp     %res_312, 0
		jl      __L_85
__L_87:
		mov     %alloca_47, 1
		jmp     __L_88
__L_85:
		mov     %alloca_47, 0
__L_88:
		mov     %varDef_937, %alloca_47
		cmp     %varDef_937, 0
		jne     __L_89
__L_90:
		mov     %alloca_54, %varDef_919
		mov     %alloca_53, %varDef_920
		mov     %alloca_52, %varDef_937
		mov     %alloca_51, %varDef_937
		mov     %alloca_50, %res_16
		mov     %alloca_49, %res_312
		jmp     __L_84
__L_89:
		mov     %offset_321, %res_306
		shl     %offset_321, 3
		mov     %elementAddr_322, %arrayBase_63
		add     %elementAddr_322, %offset_321
		mov     %arrayBase_323, qword [%elementAddr_322]
		mov     %offset_325, %res_312
		shl     %offset_325, 3
		mov     %elementAddr_326, %arrayBase_323
		add     %elementAddr_326, %offset_325
		mov     %elementVal_327, qword [%elementAddr_326]
		cmp     %elementVal_327, -1
		je      __L_91
__L_92:
		mov     %alloca_54, %varDef_919
		mov     %alloca_53, %varDef_920
		mov     %alloca_52, %varDef_937
		mov     %alloca_51, %varDef_937
		mov     %alloca_50, %res_16
		mov     %alloca_49, %res_312
		jmp     __L_84
__L_91:
		mov     %res_331, %varDef_919
		add     %res_331, 1
		mov     %offset_335, %res_331
		shl     %offset_335, 3
		mov     %elementAddr_336, %arrayBase_27
		add     %elementAddr_336, %offset_335
		mov     qword [%elementAddr_336], %res_306
		mov     %elementAddr_341, %arrayBase_46
		add     %elementAddr_341, %offset_335
		mov     qword [%elementAddr_341], %res_312
		mov     %res_343, %elementVal_129
		add     %res_343, 1
		mov     %offset_346, %res_306
		shl     %offset_346, 3
		mov     %elementAddr_347, %arrayBase_63
		add     %elementAddr_347, %offset_346
		mov     %arrayBase_348, qword [%elementAddr_347]
		mov     %offset_350, %res_312
		shl     %offset_350, 3
		mov     %elementAddr_351, %arrayBase_348
		add     %elementAddr_351, %offset_350
		mov     qword [%elementAddr_351], %res_343
		cmp     %res_306, %res_18
		je      __L_93
__L_94:
		mov     %alloca_54, %res_331
		mov     %alloca_53, %varDef_920
		mov     %alloca_52, %varDef_937
		mov     %alloca_51, %varDef_937
		mov     %alloca_50, %res_16
		mov     %alloca_49, %res_312
		jmp     __L_84
__L_93:
		cmp     %res_312, %res_18
		je      __L_95
__L_96:
		mov     %alloca_54, %res_331
		mov     %alloca_53, %varDef_920
		mov     %alloca_52, %varDef_937
		mov     %alloca_51, %varDef_937
		mov     %alloca_50, %res_16
		mov     %alloca_49, %res_312
		jmp     __L_84
__L_95:
		mov     %alloca_54, %res_331
		mov     %alloca_53, 1
		mov     %alloca_52, %varDef_937
		mov     %alloca_51, %varDef_937
		mov     %alloca_50, %res_16
		mov     %alloca_49, %res_312
__L_84:
		mov     %varDef_941, %alloca_54
		mov     %varDef_942, %alloca_53
		mov     %varDef_943, %alloca_52
		mov     %varDef_944, %alloca_51
		mov     %varDef_945, %alloca_50
		mov     %varDef_946, %alloca_49
		mov     %offset_360, %varDef_788
		shl     %offset_360, 3
		mov     %elementAddr_361, %arrayBase_27
		add     %elementAddr_361, %offset_360
		mov     %elementVal_362, qword [%elementAddr_361]
		mov     %res_363, %elementVal_362
		sub     %res_363, 2
		mov     %elementAddr_367, %arrayBase_46
		add     %elementAddr_367, %offset_360
		mov     %elementVal_368, qword [%elementAddr_367]
		mov     %res_369, %elementVal_368
		sub     %res_369, 1
		cmp     %res_363, %res_16
		jge     __L_97
__L_98:
		cmp     %res_363, 0
		jl      __L_97
__L_99:
		mov     %alloca_2, 1
		jmp     __L_100
__L_97:
		mov     %alloca_2, 0
__L_100:
		mov     %varDef_953, %alloca_2
		cmp     %varDef_953, 0
		jne     __L_101
__L_102:
		mov     %alloca_46, %varDef_941
		mov     %alloca_45, %varDef_942
		mov     %alloca_44, %varDef_965
		mov     %alloca_43, %varDef_966
		mov     %alloca_42, %varDef_967
		mov     %alloca_41, %varDef_968
		jmp     __L_103
__L_101:
		cmp     %res_369, %res_16
		jge     __L_104
__L_105:
		cmp     %res_369, 0
		jl      __L_104
__L_106:
		mov     %alloca_26, 1
		jmp     __L_107
__L_104:
		mov     %alloca_26, 0
__L_107:
		mov     %varDef_959, %alloca_26
		cmp     %varDef_959, 0
		jne     __L_108
__L_109:
		mov     %alloca_46, %varDef_941
		mov     %alloca_45, %varDef_942
		mov     %alloca_44, %varDef_959
		mov     %alloca_43, %varDef_959
		mov     %alloca_42, %res_16
		mov     %alloca_41, %res_369
		jmp     __L_103
__L_108:
		mov     %offset_378, %res_363
		shl     %offset_378, 3
		mov     %elementAddr_379, %arrayBase_63
		add     %elementAddr_379, %offset_378
		mov     %arrayBase_380, qword [%elementAddr_379]
		mov     %offset_382, %res_369
		shl     %offset_382, 3
		mov     %elementAddr_383, %arrayBase_380
		add     %elementAddr_383, %offset_382
		mov     %elementVal_384, qword [%elementAddr_383]
		cmp     %elementVal_384, -1
		je      __L_110
__L_111:
		mov     %alloca_46, %varDef_941
		mov     %alloca_45, %varDef_942
		mov     %alloca_44, %varDef_959
		mov     %alloca_43, %varDef_959
		mov     %alloca_42, %res_16
		mov     %alloca_41, %res_369
		jmp     __L_103
__L_110:
		mov     %res_388, %varDef_941
		add     %res_388, 1
		mov     %offset_392, %res_388
		shl     %offset_392, 3
		mov     %elementAddr_393, %arrayBase_27
		add     %elementAddr_393, %offset_392
		mov     qword [%elementAddr_393], %res_363
		mov     %elementAddr_398, %arrayBase_46
		add     %elementAddr_398, %offset_392
		mov     qword [%elementAddr_398], %res_369
		mov     %res_400, %elementVal_129
		add     %res_400, 1
		mov     %offset_403, %res_363
		shl     %offset_403, 3
		mov     %elementAddr_404, %arrayBase_63
		add     %elementAddr_404, %offset_403
		mov     %arrayBase_405, qword [%elementAddr_404]
		mov     %offset_407, %res_369
		shl     %offset_407, 3
		mov     %elementAddr_408, %arrayBase_405
		add     %elementAddr_408, %offset_407
		mov     qword [%elementAddr_408], %res_400
		cmp     %res_363, %res_18
		je      __L_112
__L_113:
		mov     %alloca_46, %res_388
		mov     %alloca_45, %varDef_942
		mov     %alloca_44, %varDef_959
		mov     %alloca_43, %varDef_959
		mov     %alloca_42, %res_16
		mov     %alloca_41, %res_369
		jmp     __L_103
__L_112:
		cmp     %res_369, %res_18
		je      __L_114
__L_115:
		mov     %alloca_46, %res_388
		mov     %alloca_45, %varDef_942
		mov     %alloca_44, %varDef_959
		mov     %alloca_43, %varDef_959
		mov     %alloca_42, %res_16
		mov     %alloca_41, %res_369
		jmp     __L_103
__L_114:
		mov     %alloca_46, %res_388
		mov     %alloca_45, 1
		mov     %alloca_44, %varDef_959
		mov     %alloca_43, %varDef_959
		mov     %alloca_42, %res_16
		mov     %alloca_41, %res_369
__L_103:
		mov     %varDef_963, %alloca_46
		mov     %varDef_964, %alloca_45
		mov     %varDef_965, %alloca_44
		mov     %varDef_966, %alloca_43
		mov     %varDef_967, %alloca_42
		mov     %varDef_968, %alloca_41
		mov     %offset_417, %varDef_788
		shl     %offset_417, 3
		mov     %elementAddr_418, %arrayBase_27
		add     %elementAddr_418, %offset_417
		mov     %elementVal_419, qword [%elementAddr_418]
		mov     %res_420, %elementVal_419
		sub     %res_420, 2
		mov     %elementAddr_424, %arrayBase_46
		add     %elementAddr_424, %offset_417
		mov     %elementVal_425, qword [%elementAddr_424]
		mov     %res_426, %elementVal_425
		add     %res_426, 1
		cmp     %res_420, %res_16
		jge     __L_116
__L_117:
		cmp     %res_420, 0
		jl      __L_116
__L_118:
		mov     %alloca_55, 1
		jmp     __L_119
__L_116:
		mov     %alloca_55, 0
__L_119:
		mov     %varDef_975, %alloca_55
		cmp     %varDef_975, 0
		jne     __L_120
__L_121:
		mov     %alloca_15, %varDef_963
		mov     %alloca_14, %varDef_964
		mov     %alloca_13, %varDef_987
		mov     %alloca_12, %varDef_988
		mov     %alloca_11, %varDef_989
		mov     %alloca_10, %varDef_990
		jmp     __L_122
__L_120:
		cmp     %res_426, %res_16
		jge     __L_123
__L_124:
		cmp     %res_426, 0
		jl      __L_123
__L_125:
		mov     %alloca_60, 1
		jmp     __L_126
__L_123:
		mov     %alloca_60, 0
__L_126:
		mov     %varDef_981, %alloca_60
		cmp     %varDef_981, 0
		jne     __L_127
__L_128:
		mov     %alloca_15, %varDef_963
		mov     %alloca_14, %varDef_964
		mov     %alloca_13, %varDef_981
		mov     %alloca_12, %varDef_981
		mov     %alloca_11, %res_16
		mov     %alloca_10, %res_426
		jmp     __L_122
__L_127:
		mov     %offset_435, %res_420
		shl     %offset_435, 3
		mov     %elementAddr_436, %arrayBase_63
		add     %elementAddr_436, %offset_435
		mov     %arrayBase_437, qword [%elementAddr_436]
		mov     %offset_439, %res_426
		shl     %offset_439, 3
		mov     %elementAddr_440, %arrayBase_437
		add     %elementAddr_440, %offset_439
		mov     %elementVal_441, qword [%elementAddr_440]
		cmp     %elementVal_441, -1
		je      __L_129
__L_130:
		mov     %alloca_15, %varDef_963
		mov     %alloca_14, %varDef_964
		mov     %alloca_13, %varDef_981
		mov     %alloca_12, %varDef_981
		mov     %alloca_11, %res_16
		mov     %alloca_10, %res_426
		jmp     __L_122
__L_129:
		mov     %res_445, %varDef_963
		add     %res_445, 1
		mov     %offset_449, %res_445
		shl     %offset_449, 3
		mov     %elementAddr_450, %arrayBase_27
		add     %elementAddr_450, %offset_449
		mov     qword [%elementAddr_450], %res_420
		mov     %elementAddr_455, %arrayBase_46
		add     %elementAddr_455, %offset_449
		mov     qword [%elementAddr_455], %res_426
		mov     %res_457, %elementVal_129
		add     %res_457, 1
		mov     %offset_460, %res_420
		shl     %offset_460, 3
		mov     %elementAddr_461, %arrayBase_63
		add     %elementAddr_461, %offset_460
		mov     %arrayBase_462, qword [%elementAddr_461]
		mov     %offset_464, %res_426
		shl     %offset_464, 3
		mov     %elementAddr_465, %arrayBase_462
		add     %elementAddr_465, %offset_464
		mov     qword [%elementAddr_465], %res_457
		cmp     %res_420, %res_18
		je      __L_131
__L_132:
		mov     %alloca_15, %res_445
		mov     %alloca_14, %varDef_964
		mov     %alloca_13, %varDef_981
		mov     %alloca_12, %varDef_981
		mov     %alloca_11, %res_16
		mov     %alloca_10, %res_426
		jmp     __L_122
__L_131:
		cmp     %res_426, %res_18
		je      __L_133
__L_134:
		mov     %alloca_15, %res_445
		mov     %alloca_14, %varDef_964
		mov     %alloca_13, %varDef_981
		mov     %alloca_12, %varDef_981
		mov     %alloca_11, %res_16
		mov     %alloca_10, %res_426
		jmp     __L_122
__L_133:
		mov     %alloca_15, %res_445
		mov     %alloca_14, 1
		mov     %alloca_13, %varDef_981
		mov     %alloca_12, %varDef_981
		mov     %alloca_11, %res_16
		mov     %alloca_10, %res_426
__L_122:
		mov     %varDef_985, %alloca_15
		mov     %varDef_986, %alloca_14
		mov     %varDef_987, %alloca_13
		mov     %varDef_988, %alloca_12
		mov     %varDef_989, %alloca_11
		mov     %varDef_990, %alloca_10
		mov     %offset_474, %varDef_788
		shl     %offset_474, 3
		mov     %elementAddr_475, %arrayBase_27
		add     %elementAddr_475, %offset_474
		mov     %elementVal_476, qword [%elementAddr_475]
		mov     %res_477, %elementVal_476
		add     %res_477, 2
		mov     %elementAddr_481, %arrayBase_46
		add     %elementAddr_481, %offset_474
		mov     %elementVal_482, qword [%elementAddr_481]
		mov     %res_483, %elementVal_482
		sub     %res_483, 1
		cmp     %res_477, %res_16
		jge     __L_135
__L_136:
		cmp     %res_477, 0
		jl      __L_135
__L_137:
		mov     %alloca_73, 1
		jmp     __L_138
__L_135:
		mov     %alloca_73, 0
__L_138:
		mov     %varDef_997, %alloca_73
		cmp     %varDef_997, 0
		jne     __L_139
__L_140:
		mov     %alloca_66, %varDef_985
		mov     %alloca_65, %varDef_986
		mov     %alloca_64, %varDef_1009
		mov     %alloca_63, %varDef_1010
		mov     %alloca_62, %varDef_1011
		mov     %alloca_61, %varDef_1012
		jmp     __L_141
__L_139:
		cmp     %res_483, %res_16
		jge     __L_142
__L_143:
		cmp     %res_483, 0
		jl      __L_142
__L_144:
		mov     %alloca_31, 1
		jmp     __L_145
__L_142:
		mov     %alloca_31, 0
__L_145:
		mov     %varDef_1003, %alloca_31
		cmp     %varDef_1003, 0
		jne     __L_146
__L_147:
		mov     %alloca_66, %varDef_985
		mov     %alloca_65, %varDef_986
		mov     %alloca_64, %varDef_1003
		mov     %alloca_63, %varDef_1003
		mov     %alloca_62, %res_16
		mov     %alloca_61, %res_483
		jmp     __L_141
__L_146:
		mov     %offset_492, %res_477
		shl     %offset_492, 3
		mov     %elementAddr_493, %arrayBase_63
		add     %elementAddr_493, %offset_492
		mov     %arrayBase_494, qword [%elementAddr_493]
		mov     %offset_496, %res_483
		shl     %offset_496, 3
		mov     %elementAddr_497, %arrayBase_494
		add     %elementAddr_497, %offset_496
		mov     %elementVal_498, qword [%elementAddr_497]
		cmp     %elementVal_498, -1
		je      __L_148
__L_149:
		mov     %alloca_66, %varDef_985
		mov     %alloca_65, %varDef_986
		mov     %alloca_64, %varDef_1003
		mov     %alloca_63, %varDef_1003
		mov     %alloca_62, %res_16
		mov     %alloca_61, %res_483
		jmp     __L_141
__L_148:
		mov     %res_502, %varDef_985
		add     %res_502, 1
		mov     %offset_506, %res_502
		shl     %offset_506, 3
		mov     %elementAddr_507, %arrayBase_27
		add     %elementAddr_507, %offset_506
		mov     qword [%elementAddr_507], %res_477
		mov     %elementAddr_512, %arrayBase_46
		add     %elementAddr_512, %offset_506
		mov     qword [%elementAddr_512], %res_483
		mov     %res_514, %elementVal_129
		add     %res_514, 1
		mov     %offset_517, %res_477
		shl     %offset_517, 3
		mov     %elementAddr_518, %arrayBase_63
		add     %elementAddr_518, %offset_517
		mov     %arrayBase_519, qword [%elementAddr_518]
		mov     %offset_521, %res_483
		shl     %offset_521, 3
		mov     %elementAddr_522, %arrayBase_519
		add     %elementAddr_522, %offset_521
		mov     qword [%elementAddr_522], %res_514
		cmp     %res_477, %res_18
		je      __L_150
__L_151:
		mov     %alloca_66, %res_502
		mov     %alloca_65, %varDef_986
		mov     %alloca_64, %varDef_1003
		mov     %alloca_63, %varDef_1003
		mov     %alloca_62, %res_16
		mov     %alloca_61, %res_483
		jmp     __L_141
__L_150:
		cmp     %res_483, %res_18
		je      __L_152
__L_153:
		mov     %alloca_66, %res_502
		mov     %alloca_65, %varDef_986
		mov     %alloca_64, %varDef_1003
		mov     %alloca_63, %varDef_1003
		mov     %alloca_62, %res_16
		mov     %alloca_61, %res_483
		jmp     __L_141
__L_152:
		mov     %alloca_66, %res_502
		mov     %alloca_65, 1
		mov     %alloca_64, %varDef_1003
		mov     %alloca_63, %varDef_1003
		mov     %alloca_62, %res_16
		mov     %alloca_61, %res_483
__L_141:
		mov     %varDef_1007, %alloca_66
		mov     %varDef_1008, %alloca_65
		mov     %varDef_1009, %alloca_64
		mov     %varDef_1010, %alloca_63
		mov     %varDef_1011, %alloca_62
		mov     %varDef_1012, %alloca_61
		mov     %offset_531, %varDef_788
		shl     %offset_531, 3
		mov     %elementAddr_532, %arrayBase_27
		add     %elementAddr_532, %offset_531
		mov     %elementVal_533, qword [%elementAddr_532]
		mov     %res_534, %elementVal_533
		add     %res_534, 2
		mov     %elementAddr_538, %arrayBase_46
		add     %elementAddr_538, %offset_531
		mov     %elementVal_539, qword [%elementAddr_538]
		mov     %res_540, %elementVal_539
		add     %res_540, 1
		cmp     %res_534, %res_16
		jge     __L_154
__L_155:
		cmp     %res_534, 0
		jl      __L_154
__L_156:
		mov     %alloca_30, 1
		jmp     __L_157
__L_154:
		mov     %alloca_30, 0
__L_157:
		mov     %varDef_1019, %alloca_30
		cmp     %varDef_1019, 0
		jne     __L_158
__L_159:
		mov     %alloca_72, %varDef_1007
		mov     %alloca_71, %varDef_1008
		mov     %alloca_70, %varDef_1031
		mov     %alloca_69, %varDef_1032
		mov     %alloca_68, %varDef_1033
		mov     %alloca_67, %varDef_1034
		jmp     __L_160
__L_158:
		cmp     %res_540, %res_16
		jge     __L_161
__L_162:
		cmp     %res_540, 0
		jl      __L_161
__L_163:
		mov     %alloca_25, 1
		jmp     __L_164
__L_161:
		mov     %alloca_25, 0
__L_164:
		mov     %varDef_1025, %alloca_25
		cmp     %varDef_1025, 0
		jne     __L_165
__L_166:
		mov     %alloca_72, %varDef_1007
		mov     %alloca_71, %varDef_1008
		mov     %alloca_70, %varDef_1025
		mov     %alloca_69, %varDef_1025
		mov     %alloca_68, %res_16
		mov     %alloca_67, %res_540
		jmp     __L_160
__L_165:
		mov     %offset_549, %res_534
		shl     %offset_549, 3
		mov     %elementAddr_550, %arrayBase_63
		add     %elementAddr_550, %offset_549
		mov     %arrayBase_551, qword [%elementAddr_550]
		mov     %offset_553, %res_540
		shl     %offset_553, 3
		mov     %elementAddr_554, %arrayBase_551
		add     %elementAddr_554, %offset_553
		mov     %elementVal_555, qword [%elementAddr_554]
		cmp     %elementVal_555, -1
		je      __L_167
__L_168:
		mov     %alloca_72, %varDef_1007
		mov     %alloca_71, %varDef_1008
		mov     %alloca_70, %varDef_1025
		mov     %alloca_69, %varDef_1025
		mov     %alloca_68, %res_16
		mov     %alloca_67, %res_540
		jmp     __L_160
__L_167:
		mov     %res_559, %varDef_1007
		add     %res_559, 1
		mov     %offset_563, %res_559
		shl     %offset_563, 3
		mov     %elementAddr_564, %arrayBase_27
		add     %elementAddr_564, %offset_563
		mov     qword [%elementAddr_564], %res_534
		mov     %elementAddr_569, %arrayBase_46
		add     %elementAddr_569, %offset_563
		mov     qword [%elementAddr_569], %res_540
		mov     %res_571, %elementVal_129
		add     %res_571, 1
		mov     %offset_574, %res_534
		shl     %offset_574, 3
		mov     %elementAddr_575, %arrayBase_63
		add     %elementAddr_575, %offset_574
		mov     %arrayBase_576, qword [%elementAddr_575]
		mov     %offset_578, %res_540
		shl     %offset_578, 3
		mov     %elementAddr_579, %arrayBase_576
		add     %elementAddr_579, %offset_578
		mov     qword [%elementAddr_579], %res_571
		cmp     %res_534, %res_18
		je      __L_169
__L_170:
		mov     %alloca_72, %res_559
		mov     %alloca_71, %varDef_1008
		mov     %alloca_70, %varDef_1025
		mov     %alloca_69, %varDef_1025
		mov     %alloca_68, %res_16
		mov     %alloca_67, %res_540
		jmp     __L_160
__L_169:
		cmp     %res_540, %res_18
		je      __L_171
__L_172:
		mov     %alloca_72, %res_559
		mov     %alloca_71, %varDef_1008
		mov     %alloca_70, %varDef_1025
		mov     %alloca_69, %varDef_1025
		mov     %alloca_68, %res_16
		mov     %alloca_67, %res_540
		jmp     __L_160
__L_171:
		mov     %alloca_72, %res_559
		mov     %alloca_71, 1
		mov     %alloca_70, %varDef_1025
		mov     %alloca_69, %varDef_1025
		mov     %alloca_68, %res_16
		mov     %alloca_67, %res_540
__L_160:
		mov     %varDef_1029, %alloca_72
		mov     %varDef_1030, %alloca_71
		mov     %varDef_1031, %alloca_70
		mov     %varDef_1032, %alloca_69
		mov     %varDef_1033, %alloca_68
		mov     %varDef_1034, %alloca_67
		cmp     %varDef_1030, 1
		jne     __L_173
__L_174:
		mov     %alloca_56, %varDef_1030
		jmp     __L_20
__L_173:
		mov     %res_589, %varDef_788
		add     %res_589, 1
		mov     %alloca_29, %res_589
		mov     %alloca_28, %varDef_1029
		mov     %alloca_27, %varDef_1030
		jmp     __L_17
__L_20:
		mov     %varDef_1037, %alloca_56
		cmp     %varDef_1037, 1
		jne     __L_175
__L_176:
		mov     %offset_594, %res_18
		shl     %offset_594, 3
		mov     %elementAddr_595, %arrayBase_63
		add     %elementAddr_595, %offset_594
		mov     %arrayBase_596, qword [%elementAddr_595]
		mov     %elementAddr_599, %arrayBase_596
		add     %elementAddr_599, %offset_594
		mov     %elementVal_600, qword [%elementAddr_599]
		mov     rdi, %elementVal_600
		call    __printlnInt
		jmp     __L_177
__L_175:
		mov     rdi, __str_0
		call    print
__L_177:
		mov     r15, %local_r15
		mov     r12, %local_r12
		mov     r13, %local_r13
		mov     rbx, %local_rbx
		mov     r14, %local_r14
		mov     rax, 0
		ret     

SECTION .data

__str_0:
		dq      13
		db      6EH, 6FH, 20H, 73H, 6FH, 6CH, 75H, 74H, 69H, 6FH, 6EH, 21H, 0AH, 00H

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


