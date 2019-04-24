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
		mov     %local_r12, r12
		mov     %local_r14, r14
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r13, r13
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
		mov     r12, %local_r12
		mov     r14, %local_r14
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r13, %local_r13
		ret     

_A_Optimizer:
		mov     %local_r12, r12
		mov     %local_r14, r14
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r13, r13
		mov     %thisVal_0, rdi
		mov     %alloca_27, %thisVal_0
		mov     %memberLength_4, 2
		imul    %memberLength_4, 8
		mov     %arrayLength_5, %memberLength_4
		add     %arrayLength_5, 8
		mov     rdi, %arrayLength_5
		call    malloc
		mov     %arrayPtr_3, rax
		mov     qword [%arrayPtr_3], 2
		mov     %arrayEndPos_6, %arrayPtr_3
		add     %arrayEndPos_6, %arrayLength_5
		mov     %startPos_7, %arrayPtr_3
		add     %startPos_7, 8
		mov     %alloca_25, %startPos_7
__L_1:
		mov     %pos_9, %alloca_25
		cmp     %pos_9, %arrayEndPos_6
		setl    al
		movzx   %condition_10, al
		cmp     %condition_10, 0
		je      __L_2
__L_3:
		mov     %memberLength_12, 2
		imul    %memberLength_12, 8
		mov     %arrayLength_13, %memberLength_12
		add     %arrayLength_13, 8
		mov     rdi, %arrayLength_13
		call    malloc
		mov     %arrayPtr_11, rax
		mov     qword [%arrayPtr_11], 2
		mov     %arrayEndPos_14, %arrayPtr_11
		add     %arrayEndPos_14, %arrayLength_13
		mov     %startPos_15, %arrayPtr_11
		add     %startPos_15, 8
		mov     %alloca_24, %startPos_15
__L_4:
		mov     %pos_17, %alloca_24
		cmp     %pos_17, %arrayEndPos_14
		setl    al
		movzx   %condition_18, al
		cmp     %condition_18, 0
		je      __L_5
__L_6:
		mov     %memberLength_20, 2
		imul    %memberLength_20, 8
		mov     %arrayLength_21, %memberLength_20
		add     %arrayLength_21, 8
		mov     rdi, %arrayLength_21
		call    malloc
		mov     %arrayPtr_19, rax
		mov     qword [%arrayPtr_19], 2
		mov     %arrayEndPos_22, %arrayPtr_19
		add     %arrayEndPos_22, %arrayLength_21
		mov     %startPos_23, %arrayPtr_19
		add     %startPos_23, 8
		mov     %alloca_23, %startPos_23
__L_7:
		mov     %pos_25, %alloca_23
		cmp     %pos_25, %arrayEndPos_22
		setl    al
		movzx   %condition_26, al
		cmp     %condition_26, 0
		je      __L_8
__L_9:
		mov     %memberLength_28, 2
		imul    %memberLength_28, 8
		mov     %arrayLength_29, %memberLength_28
		add     %arrayLength_29, 8
		mov     rdi, %arrayLength_29
		call    malloc
		mov     %arrayPtr_27, rax
		mov     qword [%arrayPtr_27], 2
		mov     %arrayEndPos_30, %arrayPtr_27
		add     %arrayEndPos_30, %arrayLength_29
		mov     %startPos_31, %arrayPtr_27
		add     %startPos_31, 8
		mov     %alloca_22, %startPos_31
__L_10:
		mov     %pos_33, %alloca_22
		cmp     %pos_33, %arrayEndPos_30
		setl    al
		movzx   %condition_34, al
		cmp     %condition_34, 0
		je      __L_11
__L_12:
		mov     %memberLength_36, 2
		imul    %memberLength_36, 8
		mov     %arrayLength_37, %memberLength_36
		add     %arrayLength_37, 8
		mov     rdi, %arrayLength_37
		call    malloc
		mov     %arrayPtr_35, rax
		mov     qword [%arrayPtr_35], 2
		mov     %arrayEndPos_38, %arrayPtr_35
		add     %arrayEndPos_38, %arrayLength_37
		mov     %startPos_39, %arrayPtr_35
		add     %startPos_39, 8
		mov     %alloca_21, %startPos_39
__L_13:
		mov     %pos_41, %alloca_21
		cmp     %pos_41, %arrayEndPos_38
		setl    al
		movzx   %condition_42, al
		cmp     %condition_42, 0
		je      __L_14
__L_15:
		mov     %memberLength_44, 2
		imul    %memberLength_44, 8
		mov     %arrayLength_45, %memberLength_44
		add     %arrayLength_45, 8
		mov     rdi, %arrayLength_45
		call    malloc
		mov     %arrayPtr_43, rax
		mov     qword [%arrayPtr_43], 2
		mov     %arrayEndPos_46, %arrayPtr_43
		add     %arrayEndPos_46, %arrayLength_45
		mov     %startPos_47, %arrayPtr_43
		add     %startPos_47, 8
		mov     %alloca_20, %startPos_47
__L_16:
		mov     %pos_49, %alloca_20
		cmp     %pos_49, %arrayEndPos_46
		setl    al
		movzx   %condition_50, al
		cmp     %condition_50, 0
		je      __L_17
__L_18:
		mov     %memberLength_52, 2
		imul    %memberLength_52, 8
		mov     %arrayLength_53, %memberLength_52
		add     %arrayLength_53, 8
		mov     rdi, %arrayLength_53
		call    malloc
		mov     %arrayPtr_51, rax
		mov     qword [%arrayPtr_51], 2
		mov     %arrayEndPos_54, %arrayPtr_51
		add     %arrayEndPos_54, %arrayLength_53
		mov     %startPos_55, %arrayPtr_51
		add     %startPos_55, 8
		mov     %alloca_19, %startPos_55
__L_19:
		mov     %pos_57, %alloca_19
		cmp     %pos_57, %arrayEndPos_54
		setl    al
		movzx   %condition_58, al
		cmp     %condition_58, 0
		je      __L_20
__L_21:
		mov     %memberLength_60, 2
		imul    %memberLength_60, 8
		mov     %arrayLength_61, %memberLength_60
		add     %arrayLength_61, 8
		mov     rdi, %arrayLength_61
		call    malloc
		mov     %arrayPtr_59, rax
		mov     qword [%arrayPtr_59], 2
		mov     %arrayEndPos_62, %arrayPtr_59
		add     %arrayEndPos_62, %arrayLength_61
		mov     %startPos_63, %arrayPtr_59
		add     %startPos_63, 8
		mov     %alloca_18, %startPos_63
__L_22:
		mov     %pos_65, %alloca_18
		cmp     %pos_65, %arrayEndPos_62
		setl    al
		movzx   %condition_66, al
		cmp     %condition_66, 0
		je      __L_23
__L_24:
		mov     %memberLength_68, 2
		imul    %memberLength_68, 8
		mov     %arrayLength_69, %memberLength_68
		add     %arrayLength_69, 8
		mov     rdi, %arrayLength_69
		call    malloc
		mov     %arrayPtr_67, rax
		mov     qword [%arrayPtr_67], 2
		mov     %arrayEndPos_70, %arrayPtr_67
		add     %arrayEndPos_70, %arrayLength_69
		mov     %startPos_71, %arrayPtr_67
		add     %startPos_71, 8
		mov     %alloca_17, %startPos_71
__L_25:
		mov     %pos_73, %alloca_17
		cmp     %pos_73, %arrayEndPos_70
		setl    al
		movzx   %condition_74, al
		cmp     %condition_74, 0
		je      __L_26
__L_27:
		mov     %memberLength_76, 2
		imul    %memberLength_76, 8
		mov     %arrayLength_77, %memberLength_76
		add     %arrayLength_77, 8
		mov     rdi, %arrayLength_77
		call    malloc
		mov     %arrayPtr_75, rax
		mov     qword [%arrayPtr_75], 2
		mov     qword [%pos_73], %arrayPtr_75
__L_28:
		mov     %pos_78, %pos_73
		add     %pos_78, 8
		mov     %alloca_17, %pos_78
		jmp     __L_25
__L_26:
		mov     qword [%pos_65], %arrayPtr_67
__L_29:
		mov     %pos_79, %pos_65
		add     %pos_79, 8
		mov     %alloca_18, %pos_79
		jmp     __L_22
__L_23:
		mov     qword [%pos_57], %arrayPtr_59
__L_30:
		mov     %pos_80, %pos_57
		add     %pos_80, 8
		mov     %alloca_19, %pos_80
		jmp     __L_19
__L_20:
		mov     qword [%pos_49], %arrayPtr_51
__L_31:
		mov     %pos_81, %pos_49
		add     %pos_81, 8
		mov     %alloca_20, %pos_81
		jmp     __L_16
__L_17:
		mov     qword [%pos_41], %arrayPtr_43
__L_32:
		mov     %pos_82, %pos_41
		add     %pos_82, 8
		mov     %alloca_21, %pos_82
		jmp     __L_13
__L_14:
		mov     qword [%pos_33], %arrayPtr_35
__L_33:
		mov     %pos_83, %pos_33
		add     %pos_83, 8
		mov     %alloca_22, %pos_83
		jmp     __L_10
__L_11:
		mov     qword [%pos_25], %arrayPtr_27
__L_34:
		mov     %pos_84, %pos_25
		add     %pos_84, 8
		mov     %alloca_23, %pos_84
		jmp     __L_7
__L_8:
		mov     qword [%pos_17], %arrayPtr_19
__L_35:
		mov     %pos_85, %pos_17
		add     %pos_85, 8
		mov     %alloca_24, %pos_85
		jmp     __L_4
__L_5:
		mov     qword [%pos_9], %arrayPtr_11
__L_36:
		mov     %pos_86, %pos_9
		add     %pos_86, 8
		mov     %alloca_25, %pos_86
		jmp     __L_1
__L_2:
		mov     %alloca_26, %arrayPtr_3
		mov     %alloca_1, 0
		mov     %alloca_2, 1
__L_37:
		mov     %idVal_103, %alloca_2
		cmp     %idVal_103, 1000
		setle   al
		movzx   %res_104, al
		cmp     %res_104, 0
		je      __L_38
__L_39:
		mov     %idVal_105, %alloca_2
		mov     %res_106, 123
		add     %res_106, %idVal_105
		mov     %arrayPtr_107, %alloca_26
		mov     %arrayBase_108, %arrayPtr_107
		add     %arrayBase_108, 8
		mov     %offset_109, 0
		imul    %offset_109, 8
		mov     %elementAddr_110, %arrayBase_108
		add     %elementAddr_110, %offset_109
		mov     %arrayPtr_111, qword [%elementAddr_110]
		mov     %arrayBase_112, %arrayPtr_111
		add     %arrayBase_112, 8
		mov     %offset_113, 1
		imul    %offset_113, 8
		mov     %elementAddr_114, %arrayBase_112
		add     %elementAddr_114, %offset_113
		mov     %arrayPtr_115, qword [%elementAddr_114]
		mov     %arrayBase_116, %arrayPtr_115
		add     %arrayBase_116, 8
		mov     %offset_117, 0
		imul    %offset_117, 8
		mov     %elementAddr_118, %arrayBase_116
		add     %elementAddr_118, %offset_117
		mov     %arrayPtr_119, qword [%elementAddr_118]
		mov     %arrayBase_120, %arrayPtr_119
		add     %arrayBase_120, 8
		mov     %offset_121, 1
		imul    %offset_121, 8
		mov     %elementAddr_122, %arrayBase_120
		add     %elementAddr_122, %offset_121
		mov     %arrayPtr_123, qword [%elementAddr_122]
		mov     %arrayBase_124, %arrayPtr_123
		add     %arrayBase_124, 8
		mov     %offset_125, 0
		imul    %offset_125, 8
		mov     %elementAddr_126, %arrayBase_124
		add     %elementAddr_126, %offset_125
		mov     %arrayPtr_127, qword [%elementAddr_126]
		mov     %arrayBase_128, %arrayPtr_127
		add     %arrayBase_128, 8
		mov     %offset_129, 1
		imul    %offset_129, 8
		mov     %elementAddr_130, %arrayBase_128
		add     %elementAddr_130, %offset_129
		mov     %arrayPtr_131, qword [%elementAddr_130]
		mov     %arrayBase_132, %arrayPtr_131
		add     %arrayBase_132, 8
		mov     %offset_133, 0
		imul    %offset_133, 8
		mov     %elementAddr_134, %arrayBase_132
		add     %elementAddr_134, %offset_133
		mov     %arrayPtr_135, qword [%elementAddr_134]
		mov     %arrayBase_136, %arrayPtr_135
		add     %arrayBase_136, 8
		mov     %offset_137, 1
		imul    %offset_137, 8
		mov     %elementAddr_138, %arrayBase_136
		add     %elementAddr_138, %offset_137
		mov     %arrayPtr_139, qword [%elementAddr_138]
		mov     %arrayBase_140, %arrayPtr_139
		add     %arrayBase_140, 8
		mov     %offset_141, 0
		imul    %offset_141, 8
		mov     %elementAddr_142, %arrayBase_140
		add     %elementAddr_142, %offset_141
		mov     %arrayPtr_143, qword [%elementAddr_142]
		mov     %arrayBase_144, %arrayPtr_143
		add     %arrayBase_144, 8
		mov     %offset_145, 1
		imul    %offset_145, 8
		mov     %elementAddr_146, %arrayBase_144
		add     %elementAddr_146, %offset_145
		mov     qword [%elementAddr_146], %res_106
		mov     %idVal_147, %alloca_1
		mov     %arrayPtr_148, %alloca_26
		mov     %arrayBase_149, %arrayPtr_148
		add     %arrayBase_149, 8
		mov     %offset_150, 0
		imul    %offset_150, 8
		mov     %elementAddr_151, %arrayBase_149
		add     %elementAddr_151, %offset_150
		mov     %arrayPtr_152, qword [%elementAddr_151]
		mov     %arrayBase_153, %arrayPtr_152
		add     %arrayBase_153, 8
		mov     %offset_154, 1
		imul    %offset_154, 8
		mov     %elementAddr_155, %arrayBase_153
		add     %elementAddr_155, %offset_154
		mov     %arrayPtr_156, qword [%elementAddr_155]
		mov     %arrayBase_157, %arrayPtr_156
		add     %arrayBase_157, 8
		mov     %offset_158, 0
		imul    %offset_158, 8
		mov     %elementAddr_159, %arrayBase_157
		add     %elementAddr_159, %offset_158
		mov     %arrayPtr_160, qword [%elementAddr_159]
		mov     %arrayBase_161, %arrayPtr_160
		add     %arrayBase_161, 8
		mov     %offset_162, 1
		imul    %offset_162, 8
		mov     %elementAddr_163, %arrayBase_161
		add     %elementAddr_163, %offset_162
		mov     %arrayPtr_164, qword [%elementAddr_163]
		mov     %arrayBase_165, %arrayPtr_164
		add     %arrayBase_165, 8
		mov     %offset_166, 0
		imul    %offset_166, 8
		mov     %elementAddr_167, %arrayBase_165
		add     %elementAddr_167, %offset_166
		mov     %arrayPtr_168, qword [%elementAddr_167]
		mov     %arrayBase_169, %arrayPtr_168
		add     %arrayBase_169, 8
		mov     %offset_170, 1
		imul    %offset_170, 8
		mov     %elementAddr_171, %arrayBase_169
		add     %elementAddr_171, %offset_170
		mov     %arrayPtr_172, qword [%elementAddr_171]
		mov     %arrayBase_173, %arrayPtr_172
		add     %arrayBase_173, 8
		mov     %offset_174, 0
		imul    %offset_174, 8
		mov     %elementAddr_175, %arrayBase_173
		add     %elementAddr_175, %offset_174
		mov     %arrayPtr_176, qword [%elementAddr_175]
		mov     %arrayBase_177, %arrayPtr_176
		add     %arrayBase_177, 8
		mov     %offset_178, 1
		imul    %offset_178, 8
		mov     %elementAddr_179, %arrayBase_177
		add     %elementAddr_179, %offset_178
		mov     %arrayPtr_180, qword [%elementAddr_179]
		mov     %arrayBase_181, %arrayPtr_180
		add     %arrayBase_181, 8
		mov     %offset_182, 0
		imul    %offset_182, 8
		mov     %elementAddr_183, %arrayBase_181
		add     %elementAddr_183, %offset_182
		mov     %arrayPtr_184, qword [%elementAddr_183]
		mov     %arrayBase_185, %arrayPtr_184
		add     %arrayBase_185, 8
		mov     %offset_186, 1
		imul    %offset_186, 8
		mov     %elementAddr_187, %arrayBase_185
		add     %elementAddr_187, %offset_186
		mov     %elementVal_188, qword [%elementAddr_187]
		mov     %res_189, %idVal_147
		add     %res_189, %elementVal_188
		mov     %alloca_1, %res_189
__L_40:
		mov     %idVal_190, %alloca_2
		mov     %oldVal_191, %alloca_2
		mov     %newVal_192, %oldVal_191
		inc     %newVal_192
		mov     %alloca_2, %newVal_192
		jmp     __L_37
__L_38:
		mov     %idVal_194, %alloca_1
		mov     rdi, %idVal_194
		call    toString
		mov     %res_193, rax
		mov     rdi, %res_193
		call    println
		mov     %alloca_2, 1
__L_41:
		mov     %idVal_195, %alloca_2
		cmp     %idVal_195, 1000000
		setle   al
		movzx   %res_196, al
		cmp     %res_196, 0
		je      __L_42
__L_43:
		mov     %idVal_197, %alloca_1
		mov     rax, 9876
		cqo     
		mov     %divisor_1, 1234
		idiv    %divisor_1
		mov     %res_198, rdx
		mov     %res_199, %res_198
		imul    %res_199, 2345
		mov     rax, %res_199
		cqo     
		mov     %divisor_2, 1234
		idiv    %divisor_2
		mov     %res_200, rdx
		mov     %res_201, %res_200
		imul    %res_201, 2345
		mov     rax, %res_201
		cqo     
		mov     %divisor_3, 1234
		idiv    %divisor_3
		mov     %res_202, rdx
		mov     %res_203, %res_202
		imul    %res_203, 2345
		mov     rax, %res_203
		cqo     
		mov     %divisor_4, 1234
		idiv    %divisor_4
		mov     %res_204, rdx
		mov     %res_205, %res_204
		imul    %res_205, 2345
		mov     rax, %res_205
		cqo     
		mov     %divisor_5, 1234
		idiv    %divisor_5
		mov     %res_206, rdx
		mov     %res_207, %res_206
		imul    %res_207, 2345
		mov     rax, %res_207
		cqo     
		mov     %divisor_6, 1234
		idiv    %divisor_6
		mov     %res_208, rdx
		mov     %res_209, %res_208
		imul    %res_209, 2345
		mov     rax, %res_209
		cqo     
		mov     %divisor_7, 1234
		idiv    %divisor_7
		mov     %res_210, rdx
		mov     %res_211, %res_210
		imul    %res_211, 2345
		mov     rax, %res_211
		cqo     
		mov     %divisor_8, 1234
		idiv    %divisor_8
		mov     %res_212, rdx
		mov     %res_213, %res_212
		imul    %res_213, 2345
		mov     rax, %res_213
		cqo     
		mov     %divisor_9, 1234
		idiv    %divisor_9
		mov     %res_214, rdx
		mov     %res_215, %res_214
		imul    %res_215, 2345
		mov     rax, %res_215
		cqo     
		mov     %divisor_10, 1234
		idiv    %divisor_10
		mov     %res_216, rdx
		mov     %res_217, %res_216
		imul    %res_217, 2345
		mov     rax, %res_217
		cqo     
		mov     %divisor_11, 1234
		idiv    %divisor_11
		mov     %res_218, rdx
		mov     %res_219, %res_218
		imul    %res_219, 2345
		mov     rax, %res_219
		cqo     
		mov     %divisor_12, 1234
		idiv    %divisor_12
		mov     %res_220, rdx
		mov     %res_221, %res_220
		imul    %res_221, 2345
		mov     rax, %res_221
		cqo     
		mov     %divisor_13, 1234
		idiv    %divisor_13
		mov     %res_222, rdx
		mov     %res_223, %res_222
		imul    %res_223, 2345
		mov     rax, %res_223
		cqo     
		mov     %divisor_14, 1234
		idiv    %divisor_14
		mov     %res_224, rdx
		mov     %res_225, %res_224
		imul    %res_225, 2345
		mov     rax, %res_225
		cqo     
		mov     %divisor_15, 1234
		idiv    %divisor_15
		mov     %res_226, rdx
		mov     %res_227, %res_226
		imul    %res_227, 2345
		mov     rax, %res_227
		cqo     
		mov     %divisor_16, 1234
		idiv    %divisor_16
		mov     %res_228, rdx
		mov     %res_229, %res_228
		imul    %res_229, 2345
		mov     rax, %res_229
		cqo     
		mov     %divisor_17, 1234
		idiv    %divisor_17
		mov     %res_230, rdx
		mov     %res_231, %res_230
		imul    %res_231, 2345
		mov     rax, %res_231
		cqo     
		mov     %divisor_18, 1234
		idiv    %divisor_18
		mov     %res_232, rdx
		mov     %res_233, %res_232
		imul    %res_233, 2345
		mov     rax, %res_233
		cqo     
		mov     %divisor_19, 1234
		idiv    %divisor_19
		mov     %res_234, rdx
		mov     %res_235, %res_234
		imul    %res_235, 2345
		mov     rax, %res_235
		cqo     
		mov     %divisor_20, 1234
		idiv    %divisor_20
		mov     %res_236, rdx
		mov     %res_237, %res_236
		imul    %res_237, 2345
		mov     rax, %res_237
		cqo     
		mov     %divisor_21, 1234
		idiv    %divisor_21
		mov     %res_238, rdx
		mov     %res_239, %res_238
		imul    %res_239, 2345
		mov     rax, %res_239
		cqo     
		mov     %divisor_22, 1234
		idiv    %divisor_22
		mov     %res_240, rdx
		mov     %res_241, %res_240
		imul    %res_241, 2345
		mov     rax, %res_241
		cqo     
		mov     %divisor_23, 1234
		idiv    %divisor_23
		mov     %res_242, rdx
		mov     %res_243, %res_242
		imul    %res_243, 2345
		mov     rax, %res_243
		cqo     
		mov     %divisor_24, 1234
		idiv    %divisor_24
		mov     %res_244, rdx
		mov     %res_245, %res_244
		imul    %res_245, 2345
		mov     rax, %res_245
		cqo     
		mov     %divisor_25, 1234
		idiv    %divisor_25
		mov     %res_246, rdx
		mov     %res_247, %res_246
		imul    %res_247, 2345
		mov     rax, %res_247
		cqo     
		mov     %divisor_26, 1234
		idiv    %divisor_26
		mov     %res_248, rdx
		mov     %res_249, %res_248
		imul    %res_249, 2345
		mov     rax, %res_249
		cqo     
		mov     %divisor_27, 1234
		idiv    %divisor_27
		mov     %res_250, rdx
		mov     %res_251, %res_250
		imul    %res_251, 2345
		mov     rax, %res_251
		cqo     
		mov     %divisor_28, 1234
		idiv    %divisor_28
		mov     %res_252, rdx
		mov     %res_253, %res_252
		imul    %res_253, 2345
		mov     rax, %res_253
		cqo     
		mov     %divisor_29, 1234
		idiv    %divisor_29
		mov     %res_254, rdx
		mov     %res_255, %res_254
		imul    %res_255, 2345
		mov     rax, %res_255
		cqo     
		mov     %divisor_30, 1234
		idiv    %divisor_30
		mov     %res_256, rdx
		mov     %res_257, %res_256
		imul    %res_257, 2345
		mov     rax, %res_257
		cqo     
		mov     %divisor_31, 1234
		idiv    %divisor_31
		mov     %res_258, rdx
		mov     %res_259, %res_258
		imul    %res_259, 2345
		mov     rax, %res_259
		cqo     
		mov     %divisor_32, 1234
		idiv    %divisor_32
		mov     %res_260, rdx
		mov     %res_261, %res_260
		imul    %res_261, 2345
		mov     rax, %res_261
		cqo     
		mov     %divisor_33, 1234
		idiv    %divisor_33
		mov     %res_262, rdx
		mov     %res_263, %res_262
		imul    %res_263, 2345
		mov     rax, %res_263
		cqo     
		mov     %divisor_34, 1234
		idiv    %divisor_34
		mov     %res_264, rdx
		mov     %res_265, %res_264
		imul    %res_265, 2345
		mov     rax, %res_265
		cqo     
		mov     %divisor_35, 1234
		idiv    %divisor_35
		mov     %res_266, rdx
		mov     %res_267, %res_266
		imul    %res_267, 2345
		mov     rax, %res_267
		cqo     
		mov     %divisor_36, 1234
		idiv    %divisor_36
		mov     %res_268, rdx
		mov     %res_269, %res_268
		imul    %res_269, 2345
		mov     rax, %res_269
		cqo     
		mov     %divisor_37, 1234
		idiv    %divisor_37
		mov     %res_270, rdx
		mov     %res_271, %res_270
		imul    %res_271, 2345
		mov     rax, %res_271
		cqo     
		mov     %divisor_38, 1234
		idiv    %divisor_38
		mov     %res_272, rdx
		mov     %res_273, %res_272
		imul    %res_273, 2345
		mov     rax, %res_273
		cqo     
		mov     %divisor_39, 1234
		idiv    %divisor_39
		mov     %res_274, rdx
		mov     %res_275, %res_274
		imul    %res_275, 2345
		mov     rax, %res_275
		cqo     
		mov     %divisor_40, 1234
		idiv    %divisor_40
		mov     %res_276, rdx
		mov     %res_277, %res_276
		imul    %res_277, 2345
		mov     rax, %res_277
		cqo     
		mov     %divisor_41, 1234
		idiv    %divisor_41
		mov     %res_278, rdx
		mov     %res_279, %res_278
		imul    %res_279, 2345
		mov     rax, %res_279
		cqo     
		mov     %divisor_42, 1234
		idiv    %divisor_42
		mov     %res_280, rdx
		mov     %res_281, %res_280
		imul    %res_281, 2345
		mov     rax, %res_281
		cqo     
		mov     %divisor_43, 1234
		idiv    %divisor_43
		mov     %res_282, rdx
		mov     %res_283, %res_282
		imul    %res_283, 2345
		mov     rax, %res_283
		cqo     
		mov     %divisor_44, 1234
		idiv    %divisor_44
		mov     %res_284, rdx
		mov     %res_285, %res_284
		imul    %res_285, 2345
		mov     rax, %res_285
		cqo     
		mov     %divisor_45, 1234
		idiv    %divisor_45
		mov     %res_286, rdx
		mov     %res_287, %res_286
		imul    %res_287, 2345
		mov     rax, %res_287
		cqo     
		mov     %divisor_46, 1234
		idiv    %divisor_46
		mov     %res_288, rdx
		mov     %res_289, %res_288
		imul    %res_289, 2345
		mov     rax, %res_289
		cqo     
		mov     %divisor_47, 1234
		idiv    %divisor_47
		mov     %res_290, rdx
		mov     %res_291, %res_290
		imul    %res_291, 2345
		mov     rax, %res_291
		cqo     
		mov     %divisor_48, 1234
		idiv    %divisor_48
		mov     %res_292, rdx
		mov     %res_293, %res_292
		imul    %res_293, 2345
		mov     rax, %res_293
		cqo     
		mov     %divisor_49, 1234
		idiv    %divisor_49
		mov     %res_294, rdx
		mov     %res_295, %res_294
		imul    %res_295, 2345
		mov     rax, %res_295
		cqo     
		mov     %divisor_50, 1234
		idiv    %divisor_50
		mov     %res_296, rdx
		mov     %res_297, %res_296
		imul    %res_297, 2345
		mov     rax, %res_297
		cqo     
		mov     %divisor_51, 1234
		idiv    %divisor_51
		mov     %res_298, rdx
		mov     %res_299, %res_298
		imul    %res_299, 2345
		mov     rax, %res_299
		cqo     
		mov     %divisor_52, 1234
		idiv    %divisor_52
		mov     %res_300, rdx
		mov     %res_301, %res_300
		imul    %res_301, 2345
		mov     rax, %res_301
		cqo     
		mov     %divisor_53, 1234
		idiv    %divisor_53
		mov     %res_302, rdx
		mov     %res_303, %res_302
		imul    %res_303, 2345
		mov     rax, %res_303
		cqo     
		mov     %divisor_54, 1234
		idiv    %divisor_54
		mov     %res_304, rdx
		mov     %res_305, %res_304
		imul    %res_305, 2345
		mov     rax, %res_305
		cqo     
		mov     %divisor_55, 1234
		idiv    %divisor_55
		mov     %res_306, rdx
		mov     %res_307, %res_306
		imul    %res_307, 2345
		mov     rax, %res_307
		cqo     
		mov     %divisor_56, 1234
		idiv    %divisor_56
		mov     %res_308, rdx
		mov     %res_309, %res_308
		imul    %res_309, 2345
		mov     rax, %res_309
		cqo     
		mov     %divisor_57, 1234
		idiv    %divisor_57
		mov     %res_310, rdx
		mov     %res_311, %res_310
		imul    %res_311, 2345
		mov     rax, %res_311
		cqo     
		mov     %divisor_58, 1234
		idiv    %divisor_58
		mov     %res_312, rdx
		mov     %res_313, %res_312
		imul    %res_313, 2345
		mov     rax, %res_313
		cqo     
		mov     %divisor_59, 1234
		idiv    %divisor_59
		mov     %res_314, rdx
		mov     %res_315, %res_314
		imul    %res_315, 2345
		mov     rax, %res_315
		cqo     
		mov     %divisor_60, 1234
		idiv    %divisor_60
		mov     %res_316, rdx
		mov     %res_317, %res_316
		imul    %res_317, 2345
		mov     rax, %res_317
		cqo     
		mov     %divisor_61, 1234
		idiv    %divisor_61
		mov     %res_318, rdx
		mov     %res_319, %res_318
		imul    %res_319, 2345
		mov     rax, %res_319
		cqo     
		mov     %divisor_62, 1234
		idiv    %divisor_62
		mov     %res_320, rdx
		mov     %res_321, %res_320
		imul    %res_321, 2345
		mov     rax, %res_321
		cqo     
		mov     %divisor_63, 1234
		idiv    %divisor_63
		mov     %res_322, rdx
		mov     %res_323, %res_322
		imul    %res_323, 2345
		mov     rax, %res_323
		cqo     
		mov     %divisor_64, 1234
		idiv    %divisor_64
		mov     %res_324, rdx
		mov     %res_325, %res_324
		imul    %res_325, 2345
		mov     rax, %res_325
		cqo     
		mov     %divisor_65, 1234
		idiv    %divisor_65
		mov     %res_326, rdx
		mov     %res_327, %res_326
		imul    %res_327, 2345
		mov     rax, %res_327
		cqo     
		mov     %divisor_66, 1234
		idiv    %divisor_66
		mov     %res_328, rdx
		mov     %res_329, %res_328
		imul    %res_329, 2345
		mov     rax, %res_329
		cqo     
		mov     %divisor_67, 1234
		idiv    %divisor_67
		mov     %res_330, rdx
		mov     %res_331, %res_330
		imul    %res_331, 2345
		mov     rax, %res_331
		cqo     
		mov     %divisor_68, 1234
		idiv    %divisor_68
		mov     %res_332, rdx
		mov     %res_333, %res_332
		imul    %res_333, 2345
		mov     rax, %res_333
		cqo     
		mov     %divisor_69, 1234
		idiv    %divisor_69
		mov     %res_334, rdx
		mov     %res_335, %res_334
		imul    %res_335, 2345
		mov     rax, %res_335
		cqo     
		mov     %divisor_70, 1234
		idiv    %divisor_70
		mov     %res_336, rdx
		mov     %res_337, %res_336
		imul    %res_337, 2345
		mov     rax, %res_337
		cqo     
		mov     %divisor_71, 1234
		idiv    %divisor_71
		mov     %res_338, rdx
		mov     %res_339, %res_338
		imul    %res_339, 2345
		mov     rax, %res_339
		cqo     
		mov     %divisor_72, 1234
		idiv    %divisor_72
		mov     %res_340, rdx
		mov     %res_341, %res_340
		imul    %res_341, 2345
		mov     rax, %res_341
		cqo     
		mov     %divisor_73, 1234
		idiv    %divisor_73
		mov     %res_342, rdx
		mov     %res_343, %res_342
		imul    %res_343, 2345
		mov     rax, %res_343
		cqo     
		mov     %divisor_74, 1234
		idiv    %divisor_74
		mov     %res_344, rdx
		mov     %res_345, %res_344
		imul    %res_345, 2345
		mov     rax, %res_345
		cqo     
		mov     %divisor_75, 1234
		idiv    %divisor_75
		mov     %res_346, rdx
		mov     %res_347, %res_346
		imul    %res_347, 2345
		mov     rax, %res_347
		cqo     
		mov     %divisor_76, 1234
		idiv    %divisor_76
		mov     %res_348, rdx
		mov     %res_349, %res_348
		imul    %res_349, 2345
		mov     rax, %res_349
		cqo     
		mov     %divisor_77, 1234
		idiv    %divisor_77
		mov     %res_350, rdx
		mov     %res_351, %res_350
		imul    %res_351, 2345
		mov     rax, %res_351
		cqo     
		mov     %divisor_78, 1234
		idiv    %divisor_78
		mov     %res_352, rdx
		mov     %res_353, %res_352
		imul    %res_353, 2345
		mov     rax, %res_353
		cqo     
		mov     %divisor_79, 1234
		idiv    %divisor_79
		mov     %res_354, rdx
		mov     %res_355, %res_354
		imul    %res_355, 2345
		mov     rax, %res_355
		cqo     
		mov     %divisor_80, 1234
		idiv    %divisor_80
		mov     %res_356, rdx
		mov     %res_357, %res_356
		imul    %res_357, 2345
		mov     rax, %res_357
		cqo     
		mov     %divisor_81, 1234
		idiv    %divisor_81
		mov     %res_358, rdx
		mov     %res_359, %res_358
		imul    %res_359, 2345
		mov     rax, %res_359
		cqo     
		mov     %divisor_82, 1234
		idiv    %divisor_82
		mov     %res_360, rdx
		mov     %res_361, %res_360
		imul    %res_361, 2345
		mov     rax, %res_361
		cqo     
		mov     %divisor_83, 1234
		idiv    %divisor_83
		mov     %res_362, rdx
		mov     %res_363, %res_362
		imul    %res_363, 2345
		mov     rax, %res_363
		cqo     
		mov     %divisor_84, 1234
		idiv    %divisor_84
		mov     %res_364, rdx
		mov     %res_365, %res_364
		imul    %res_365, 2345
		mov     rax, %res_365
		cqo     
		mov     %divisor_85, 1234
		idiv    %divisor_85
		mov     %res_366, rdx
		mov     %res_367, %res_366
		imul    %res_367, 2345
		mov     rax, %res_367
		cqo     
		mov     %divisor_86, 1234
		idiv    %divisor_86
		mov     %res_368, rdx
		mov     %res_369, %res_368
		imul    %res_369, 2345
		mov     rax, %res_369
		cqo     
		mov     %divisor_87, 1234
		idiv    %divisor_87
		mov     %res_370, rdx
		mov     %res_371, %res_370
		imul    %res_371, 2345
		mov     rax, %res_371
		cqo     
		mov     %divisor_88, 1234
		idiv    %divisor_88
		mov     %res_372, rdx
		mov     %res_373, %res_372
		imul    %res_373, 2345
		mov     rax, %res_373
		cqo     
		mov     %divisor_89, 1234
		idiv    %divisor_89
		mov     %res_374, rdx
		mov     %res_375, %res_374
		imul    %res_375, 2345
		mov     rax, %res_375
		cqo     
		mov     %divisor_90, 1234
		idiv    %divisor_90
		mov     %res_376, rdx
		mov     %res_377, %res_376
		imul    %res_377, 2345
		mov     rax, %res_377
		cqo     
		mov     %divisor_91, 1234
		idiv    %divisor_91
		mov     %res_378, rdx
		mov     rax, %res_378
		cqo     
		mov     %divisor_92, 11
		idiv    %divisor_92
		mov     %res_379, rdx
		mov     %res_380, %idVal_197
		add     %res_380, %res_379
		mov     %alloca_1, %res_380
__L_44:
		mov     %idVal_381, %alloca_2
		mov     %oldVal_382, %alloca_2
		mov     %newVal_383, %oldVal_382
		inc     %newVal_383
		mov     %alloca_2, %newVal_383
		jmp     __L_41
__L_42:
		mov     %idVal_385, %alloca_1
		mov     rdi, %idVal_385
		call    toString
		mov     %res_384, rax
		mov     rdi, %res_384
		call    println
		mov     %alloca_2, 1
__L_45:
		mov     %idVal_386, %alloca_2
		cmp     %idVal_386, 200000000
		setle   al
		movzx   %res_387, al
		cmp     %res_387, 0
		je      __L_46
__L_47:
__L_48:
		mov     %idVal_388, %alloca_2
		mov     %oldVal_389, %alloca_2
		mov     %newVal_390, %oldVal_389
		inc     %newVal_390
		mov     %alloca_2, %newVal_390
		jmp     __L_45
__L_46:
		mov     r12, %local_r12
		mov     r14, %local_r14
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r13, %local_r13
		ret     

_A_A:
		mov     %local_r12, r12
		mov     %local_r14, r14
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r13, r13
		mov     %thisVal_0, rdi
		mov     %alloca_37, %thisVal_0
		mov     %memberLength_3, 2
		imul    %memberLength_3, 8
		mov     %arrayLength_4, %memberLength_3
		add     %arrayLength_4, 8
		mov     rdi, %arrayLength_4
		call    malloc
		mov     %arrayPtr_2, rax
		mov     qword [%arrayPtr_2], 2
		mov     %arrayEndPos_5, %arrayPtr_2
		add     %arrayEndPos_5, %arrayLength_4
		mov     %startPos_6, %arrayPtr_2
		add     %startPos_6, 8
		mov     %alloca_36, %startPos_6
__L_49:
		mov     %pos_8, %alloca_36
		cmp     %pos_8, %arrayEndPos_5
		setl    al
		movzx   %condition_9, al
		cmp     %condition_9, 0
		je      __L_50
__L_51:
		mov     %memberLength_11, 2
		imul    %memberLength_11, 8
		mov     %arrayLength_12, %memberLength_11
		add     %arrayLength_12, 8
		mov     rdi, %arrayLength_12
		call    malloc
		mov     %arrayPtr_10, rax
		mov     qword [%arrayPtr_10], 2
		mov     %arrayEndPos_13, %arrayPtr_10
		add     %arrayEndPos_13, %arrayLength_12
		mov     %startPos_14, %arrayPtr_10
		add     %startPos_14, 8
		mov     %alloca_35, %startPos_14
__L_52:
		mov     %pos_16, %alloca_35
		cmp     %pos_16, %arrayEndPos_13
		setl    al
		movzx   %condition_17, al
		cmp     %condition_17, 0
		je      __L_53
__L_54:
		mov     %memberLength_19, 3
		imul    %memberLength_19, 8
		mov     %arrayLength_20, %memberLength_19
		add     %arrayLength_20, 8
		mov     rdi, %arrayLength_20
		call    malloc
		mov     %arrayPtr_18, rax
		mov     qword [%arrayPtr_18], 3
		mov     %arrayEndPos_21, %arrayPtr_18
		add     %arrayEndPos_21, %arrayLength_20
		mov     %startPos_22, %arrayPtr_18
		add     %startPos_22, 8
		mov     %alloca_34, %startPos_22
__L_55:
		mov     %pos_24, %alloca_34
		cmp     %pos_24, %arrayEndPos_21
		setl    al
		movzx   %condition_25, al
		cmp     %condition_25, 0
		je      __L_56
__L_57:
		mov     %memberLength_27, 2
		imul    %memberLength_27, 8
		mov     %arrayLength_28, %memberLength_27
		add     %arrayLength_28, 8
		mov     rdi, %arrayLength_28
		call    malloc
		mov     %arrayPtr_26, rax
		mov     qword [%arrayPtr_26], 2
		mov     %arrayEndPos_29, %arrayPtr_26
		add     %arrayEndPos_29, %arrayLength_28
		mov     %startPos_30, %arrayPtr_26
		add     %startPos_30, 8
		mov     %alloca_33, %startPos_30
__L_58:
		mov     %pos_32, %alloca_33
		cmp     %pos_32, %arrayEndPos_29
		setl    al
		movzx   %condition_33, al
		cmp     %condition_33, 0
		je      __L_59
__L_60:
		mov     %memberLength_35, 3
		imul    %memberLength_35, 8
		mov     %arrayLength_36, %memberLength_35
		add     %arrayLength_36, 8
		mov     rdi, %arrayLength_36
		call    malloc
		mov     %arrayPtr_34, rax
		mov     qword [%arrayPtr_34], 3
		mov     %arrayEndPos_37, %arrayPtr_34
		add     %arrayEndPos_37, %arrayLength_36
		mov     %startPos_38, %arrayPtr_34
		add     %startPos_38, 8
		mov     %alloca_32, %startPos_38
__L_61:
		mov     %pos_40, %alloca_32
		cmp     %pos_40, %arrayEndPos_37
		setl    al
		movzx   %condition_41, al
		cmp     %condition_41, 0
		je      __L_62
__L_63:
		mov     %memberLength_43, 2
		imul    %memberLength_43, 8
		mov     %arrayLength_44, %memberLength_43
		add     %arrayLength_44, 8
		mov     rdi, %arrayLength_44
		call    malloc
		mov     %arrayPtr_42, rax
		mov     qword [%arrayPtr_42], 2
		mov     %arrayEndPos_45, %arrayPtr_42
		add     %arrayEndPos_45, %arrayLength_44
		mov     %startPos_46, %arrayPtr_42
		add     %startPos_46, 8
		mov     %alloca_31, %startPos_46
__L_64:
		mov     %pos_48, %alloca_31
		cmp     %pos_48, %arrayEndPos_45
		setl    al
		movzx   %condition_49, al
		cmp     %condition_49, 0
		je      __L_65
__L_66:
		mov     %memberLength_51, 2
		imul    %memberLength_51, 8
		mov     %arrayLength_52, %memberLength_51
		add     %arrayLength_52, 8
		mov     rdi, %arrayLength_52
		call    malloc
		mov     %arrayPtr_50, rax
		mov     qword [%arrayPtr_50], 2
		mov     %arrayEndPos_53, %arrayPtr_50
		add     %arrayEndPos_53, %arrayLength_52
		mov     %startPos_54, %arrayPtr_50
		add     %startPos_54, 8
		mov     %alloca_30, %startPos_54
__L_67:
		mov     %pos_56, %alloca_30
		cmp     %pos_56, %arrayEndPos_53
		setl    al
		movzx   %condition_57, al
		cmp     %condition_57, 0
		je      __L_68
__L_69:
		mov     %memberLength_59, 3
		imul    %memberLength_59, 8
		mov     %arrayLength_60, %memberLength_59
		add     %arrayLength_60, 8
		mov     rdi, %arrayLength_60
		call    malloc
		mov     %arrayPtr_58, rax
		mov     qword [%arrayPtr_58], 3
		mov     %arrayEndPos_61, %arrayPtr_58
		add     %arrayEndPos_61, %arrayLength_60
		mov     %startPos_62, %arrayPtr_58
		add     %startPos_62, 8
		mov     %alloca_29, %startPos_62
__L_70:
		mov     %pos_64, %alloca_29
		cmp     %pos_64, %arrayEndPos_61
		setl    al
		movzx   %condition_65, al
		cmp     %condition_65, 0
		je      __L_71
__L_72:
		mov     %memberLength_67, 2
		imul    %memberLength_67, 8
		mov     %arrayLength_68, %memberLength_67
		add     %arrayLength_68, 8
		mov     rdi, %arrayLength_68
		call    malloc
		mov     %arrayPtr_66, rax
		mov     qword [%arrayPtr_66], 2
		mov     %arrayEndPos_69, %arrayPtr_66
		add     %arrayEndPos_69, %arrayLength_68
		mov     %startPos_70, %arrayPtr_66
		add     %startPos_70, 8
		mov     %alloca_28, %startPos_70
__L_73:
		mov     %pos_72, %alloca_28
		cmp     %pos_72, %arrayEndPos_69
		setl    al
		movzx   %condition_73, al
		cmp     %condition_73, 0
		je      __L_74
__L_75:
		mov     %memberLength_75, 2
		imul    %memberLength_75, 8
		mov     %arrayLength_76, %memberLength_75
		add     %arrayLength_76, 8
		mov     rdi, %arrayLength_76
		call    malloc
		mov     %arrayPtr_74, rax
		mov     qword [%arrayPtr_74], 2
		mov     qword [%pos_72], %arrayPtr_74
__L_76:
		mov     %pos_77, %pos_72
		add     %pos_77, 8
		mov     %alloca_28, %pos_77
		jmp     __L_73
__L_74:
		mov     qword [%pos_64], %arrayPtr_66
__L_77:
		mov     %pos_78, %pos_64
		add     %pos_78, 8
		mov     %alloca_29, %pos_78
		jmp     __L_70
__L_71:
		mov     qword [%pos_56], %arrayPtr_58
__L_78:
		mov     %pos_79, %pos_56
		add     %pos_79, 8
		mov     %alloca_30, %pos_79
		jmp     __L_67
__L_68:
		mov     qword [%pos_48], %arrayPtr_50
__L_79:
		mov     %pos_80, %pos_48
		add     %pos_80, 8
		mov     %alloca_31, %pos_80
		jmp     __L_64
__L_65:
		mov     qword [%pos_40], %arrayPtr_42
__L_80:
		mov     %pos_81, %pos_40
		add     %pos_81, 8
		mov     %alloca_32, %pos_81
		jmp     __L_61
__L_62:
		mov     qword [%pos_32], %arrayPtr_34
__L_81:
		mov     %pos_82, %pos_32
		add     %pos_82, 8
		mov     %alloca_33, %pos_82
		jmp     __L_58
__L_59:
		mov     qword [%pos_24], %arrayPtr_26
__L_82:
		mov     %pos_83, %pos_24
		add     %pos_83, 8
		mov     %alloca_34, %pos_83
		jmp     __L_55
__L_56:
		mov     qword [%pos_16], %arrayPtr_18
__L_83:
		mov     %pos_84, %pos_16
		add     %pos_84, 8
		mov     %alloca_35, %pos_84
		jmp     __L_52
__L_53:
		mov     qword [%pos_8], %arrayPtr_10
__L_84:
		mov     %pos_85, %pos_8
		add     %pos_85, 8
		mov     %alloca_36, %pos_85
		jmp     __L_49
__L_50:
		mov     %classPtr_86, %alloca_37
		mov     %memberAddr_87, %classPtr_86
		add     %memberAddr_87, 0
		mov     qword [%memberAddr_87], %arrayPtr_2
		mov     r12, %local_r12
		mov     r14, %local_r14
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r13, %local_r13
		ret     

restore:
		mov     %local_r12, r12
		mov     %local_r14, r14
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r13, r13
		mov     %alloca_38, 1
__L_85:
		mov     %idVal_1, %alloca_38
		mov     %idVal_2, qword [rel _n]
		cmp     %idVal_1, %idVal_2
		setle   al
		movzx   %res_3, al
		cmp     %res_3, 0
		je      __L_86
__L_87:
		mov     %arrayPtr_4, qword [rel _bak]
		mov     %arrayBase_5, %arrayPtr_4
		add     %arrayBase_5, 8
		mov     %idVal_6, %alloca_38
		mov     %offset_7, %idVal_6
		imul    %offset_7, 8
		mov     %elementAddr_8, %arrayBase_5
		add     %elementAddr_8, %offset_7
		mov     %elementVal_9, qword [%elementAddr_8]
		mov     %arrayPtr_10, qword [rel _a]
		mov     %arrayBase_11, %arrayPtr_10
		add     %arrayBase_11, 8
		mov     %idVal_12, %alloca_38
		mov     %offset_13, %idVal_12
		imul    %offset_13, 8
		mov     %elementAddr_14, %arrayBase_11
		add     %elementAddr_14, %offset_13
		mov     qword [%elementAddr_14], %elementVal_9
__L_88:
		mov     %idVal_15, %alloca_38
		mov     %oldVal_16, %alloca_38
		mov     %newVal_17, %oldVal_16
		inc     %newVal_17
		mov     %alloca_38, %newVal_17
		jmp     __L_85
__L_86:
		mov     r12, %local_r12
		mov     r14, %local_r14
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r13, %local_r13
		ret     

quicksort:
		mov     %local_r12, r12
		mov     %local_r14, r14
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r13, r13
		mov     %argVal_0, rdi
		mov     %argVal_2, rsi
		mov     %alloca_60, %argVal_0
		mov     %alloca_59, %argVal_2
		mov     %alloca_44, 0
		mov     %arrayPtr_20, qword [rel _a]
		mov     %arrayBase_21, %arrayPtr_20
		add     %arrayBase_21, 8
		mov     %idVal_22, %alloca_60
		mov     %offset_23, %idVal_22
		imul    %offset_23, 8
		mov     %elementAddr_24, %arrayBase_21
		add     %elementAddr_24, %offset_23
		mov     %elementVal_25, qword [%elementAddr_24]
		mov     %alloca_43, %elementVal_25
		mov     %alloca_42, 0
		mov     %alloca_41, 0
		mov     %idVal_29, %alloca_60
		mov     %res_30, %idVal_29
		add     %res_30, 1
		mov     %alloca_40, %res_30
__L_89:
		mov     %idVal_31, %alloca_40
		mov     %idVal_32, %alloca_59
		cmp     %idVal_31, %idVal_32
		setl    al
		movzx   %res_33, al
		cmp     %res_33, 0
		je      __L_90
__L_91:
		mov     %idVal_34, %alloca_44
		mov     %oldVal_35, %alloca_44
		mov     %newVal_36, %oldVal_35
		inc     %newVal_36
		mov     %alloca_44, %newVal_36
		mov     %arrayPtr_37, qword [rel _a]
		mov     %arrayBase_38, %arrayPtr_37
		add     %arrayBase_38, 8
		mov     %idVal_39, %alloca_40
		mov     %offset_40, %idVal_39
		imul    %offset_40, 8
		mov     %elementAddr_41, %arrayBase_38
		add     %elementAddr_41, %offset_40
		mov     %elementVal_42, qword [%elementAddr_41]
		mov     %idVal_43, %alloca_43
		cmp     %elementVal_42, %idVal_43
		setl    al
		movzx   %res_44, al
		cmp     %res_44, 0
		je      __L_92
__L_93:
		mov     %arrayPtr_45, qword [rel _a]
		mov     %arrayBase_46, %arrayPtr_45
		add     %arrayBase_46, 8
		mov     %idVal_47, %alloca_40
		mov     %offset_48, %idVal_47
		imul    %offset_48, 8
		mov     %elementAddr_49, %arrayBase_46
		add     %elementAddr_49, %offset_48
		mov     %elementVal_50, qword [%elementAddr_49]
		mov     %arrayPtr_51, qword [rel _a_left]
		mov     %arrayBase_52, %arrayPtr_51
		add     %arrayBase_52, 8
		mov     %idVal_53, %alloca_42
		mov     %oldVal_54, %alloca_42
		mov     %newVal_55, %oldVal_54
		inc     %newVal_55
		mov     %alloca_42, %newVal_55
		mov     %offset_56, %oldVal_54
		imul    %offset_56, 8
		mov     %elementAddr_57, %arrayBase_52
		add     %elementAddr_57, %offset_56
		mov     qword [%elementAddr_57], %elementVal_50
		jmp     __L_94
__L_92:
		mov     %arrayPtr_58, qword [rel _a]
		mov     %arrayBase_59, %arrayPtr_58
		add     %arrayBase_59, 8
		mov     %idVal_60, %alloca_40
		mov     %offset_61, %idVal_60
		imul    %offset_61, 8
		mov     %elementAddr_62, %arrayBase_59
		add     %elementAddr_62, %offset_61
		mov     %elementVal_63, qword [%elementAddr_62]
		mov     %arrayPtr_64, qword [rel _a_right]
		mov     %arrayBase_65, %arrayPtr_64
		add     %arrayBase_65, 8
		mov     %idVal_66, %alloca_41
		mov     %oldVal_67, %alloca_41
		mov     %newVal_68, %oldVal_67
		inc     %newVal_68
		mov     %alloca_41, %newVal_68
		mov     %offset_69, %oldVal_67
		imul    %offset_69, 8
		mov     %elementAddr_70, %arrayBase_65
		add     %elementAddr_70, %offset_69
		mov     qword [%elementAddr_70], %elementVal_63
__L_94:
__L_95:
		mov     %idVal_71, %alloca_40
		mov     %oldVal_72, %alloca_40
		mov     %newVal_73, %oldVal_72
		inc     %newVal_73
		mov     %alloca_40, %newVal_73
		jmp     __L_89
__L_90:
		mov     %idVal_75, %alloca_60
		mov     %alloca_39, %idVal_75
		mov     %alloca_40, 0
__L_96:
		mov     %idVal_76, %alloca_40
		mov     %idVal_77, %alloca_42
		cmp     %idVal_76, %idVal_77
		setl    al
		movzx   %res_78, al
		cmp     %res_78, 0
		je      __L_97
__L_98:
		mov     %arrayPtr_79, qword [rel _a_left]
		mov     %arrayBase_80, %arrayPtr_79
		add     %arrayBase_80, 8
		mov     %idVal_81, %alloca_40
		mov     %offset_82, %idVal_81
		imul    %offset_82, 8
		mov     %elementAddr_83, %arrayBase_80
		add     %elementAddr_83, %offset_82
		mov     %elementVal_84, qword [%elementAddr_83]
		mov     %arrayPtr_85, qword [rel _a]
		mov     %arrayBase_86, %arrayPtr_85
		add     %arrayBase_86, 8
		mov     %idVal_87, %alloca_39
		mov     %oldVal_88, %alloca_39
		mov     %newVal_89, %oldVal_88
		inc     %newVal_89
		mov     %alloca_39, %newVal_89
		mov     %offset_90, %oldVal_88
		imul    %offset_90, 8
		mov     %elementAddr_91, %arrayBase_86
		add     %elementAddr_91, %offset_90
		mov     qword [%elementAddr_91], %elementVal_84
__L_99:
		mov     %idVal_92, %alloca_40
		mov     %oldVal_93, %alloca_40
		mov     %newVal_94, %oldVal_93
		inc     %newVal_94
		mov     %alloca_40, %newVal_94
		jmp     __L_96
__L_97:
		mov     %idVal_95, %alloca_43
		mov     %arrayPtr_96, qword [rel _a]
		mov     %arrayBase_97, %arrayPtr_96
		add     %arrayBase_97, 8
		mov     %idVal_98, %alloca_39
		mov     %oldVal_99, %alloca_39
		mov     %newVal_100, %oldVal_99
		inc     %newVal_100
		mov     %alloca_39, %newVal_100
		mov     %offset_101, %oldVal_99
		imul    %offset_101, 8
		mov     %elementAddr_102, %arrayBase_97
		add     %elementAddr_102, %offset_101
		mov     qword [%elementAddr_102], %idVal_95
		mov     %alloca_40, 0
__L_100:
		mov     %idVal_103, %alloca_40
		mov     %idVal_104, %alloca_41
		cmp     %idVal_103, %idVal_104
		setl    al
		movzx   %res_105, al
		cmp     %res_105, 0
		je      __L_101
__L_102:
		mov     %arrayPtr_106, qword [rel _a_right]
		mov     %arrayBase_107, %arrayPtr_106
		add     %arrayBase_107, 8
		mov     %idVal_108, %alloca_40
		mov     %offset_109, %idVal_108
		imul    %offset_109, 8
		mov     %elementAddr_110, %arrayBase_107
		add     %elementAddr_110, %offset_109
		mov     %elementVal_111, qword [%elementAddr_110]
		mov     %arrayPtr_112, qword [rel _a]
		mov     %arrayBase_113, %arrayPtr_112
		add     %arrayBase_113, 8
		mov     %idVal_114, %alloca_39
		mov     %oldVal_115, %alloca_39
		mov     %newVal_116, %oldVal_115
		inc     %newVal_116
		mov     %alloca_39, %newVal_116
		mov     %offset_117, %oldVal_115
		imul    %offset_117, 8
		mov     %elementAddr_118, %arrayBase_113
		add     %elementAddr_118, %offset_117
		mov     qword [%elementAddr_118], %elementVal_111
__L_103:
		mov     %idVal_119, %alloca_40
		mov     %oldVal_120, %alloca_40
		mov     %newVal_121, %oldVal_120
		inc     %newVal_121
		mov     %alloca_40, %newVal_121
		jmp     __L_100
__L_101:
		mov     %idVal_122, %alloca_42
		cmp     %idVal_122, 1
		setg    al
		movzx   %res_123, al
		cmp     %res_123, 0
		je      __L_104
__L_105:
		mov     %idVal_124, %alloca_44
		mov     %idVal_126, %alloca_60
		mov     %idVal_127, %alloca_60
		mov     %idVal_128, %alloca_42
		mov     %res_129, %idVal_127
		add     %res_129, %idVal_128
		mov     rdi, %idVal_126
		mov     rsi, %res_129
		call    quicksort
		mov     %res_125, rax
		mov     %res_130, %idVal_124
		add     %res_130, %res_125
		mov     %alloca_44, %res_130
__L_104:
		mov     %idVal_131, %alloca_41
		cmp     %idVal_131, 1
		setg    al
		movzx   %res_132, al
		cmp     %res_132, 0
		je      __L_106
__L_107:
		mov     %idVal_133, %alloca_44
		mov     %idVal_135, %alloca_59
		mov     %idVal_136, %alloca_41
		mov     %res_137, %idVal_135
		sub     %res_137, %idVal_136
		mov     %idVal_138, %alloca_59
		mov     rdi, %res_137
		mov     rsi, %idVal_138
		call    quicksort
		mov     %res_134, rax
		mov     %res_139, %idVal_133
		add     %res_139, %res_134
		mov     %alloca_44, %res_139
__L_106:
		mov     %idVal_140, %alloca_44
		mov     r12, %local_r12
		mov     r14, %local_r14
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r13, %local_r13
		mov     rax, %idVal_140
		ret     

calc:
		mov     %local_r12, r12
		mov     %local_r14, r14
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r13, r13
		mov     %alloca_64, 1
__L_108:
		mov     %idVal_15, %alloca_64
		mov     %idVal_16, qword [rel _n]
		cmp     %idVal_15, %idVal_16
		setle   al
		movzx   %res_17, al
		cmp     %res_17, 0
		je      __L_109
__L_110:
		mov     %idVal_18, %alloca_64
		mov     %res_19, %idVal_18
		sub     %res_19, 1
		mov     %arrayPtr_20, qword [rel _a_left]
		mov     %arrayBase_21, %arrayPtr_20
		add     %arrayBase_21, 8
		mov     %idVal_22, %alloca_64
		mov     %offset_23, %idVal_22
		imul    %offset_23, 8
		mov     %elementAddr_24, %arrayBase_21
		add     %elementAddr_24, %offset_23
		mov     qword [%elementAddr_24], %res_19
		mov     %idVal_25, %alloca_64
		mov     %res_26, %idVal_25
		add     %res_26, 1
		mov     %arrayPtr_27, qword [rel _a_right]
		mov     %arrayBase_28, %arrayPtr_27
		add     %arrayBase_28, 8
		mov     %idVal_29, %alloca_64
		mov     %offset_30, %idVal_29
		imul    %offset_30, 8
		mov     %elementAddr_31, %arrayBase_28
		add     %elementAddr_31, %offset_30
		mov     qword [%elementAddr_31], %res_26
__L_111:
		mov     %idVal_32, %alloca_64
		mov     %oldVal_33, %alloca_64
		mov     %newVal_34, %oldVal_33
		inc     %newVal_34
		mov     %alloca_64, %newVal_34
		jmp     __L_108
__L_109:
		mov     %alloca_63, 0
		mov     %idVal_36, qword [rel _n]
		mov     %alloca_64, %idVal_36
__L_112:
		mov     %idVal_37, %alloca_64
		cmp     %idVal_37, 1
		setge   al
		movzx   %res_38, al
		cmp     %res_38, 0
		je      __L_113
__L_114:
		mov     %arrayPtr_40, qword [rel _a_left]
		mov     %arrayBase_41, %arrayPtr_40
		add     %arrayBase_41, 8
		mov     %arrayPtr_42, qword [rel _a]
		mov     %arrayBase_43, %arrayPtr_42
		add     %arrayBase_43, 8
		mov     %idVal_44, %alloca_64
		mov     %offset_45, %idVal_44
		imul    %offset_45, 8
		mov     %elementAddr_46, %arrayBase_43
		add     %elementAddr_46, %offset_45
		mov     %elementVal_47, qword [%elementAddr_46]
		mov     %offset_48, %elementVal_47
		imul    %offset_48, 8
		mov     %elementAddr_49, %arrayBase_41
		add     %elementAddr_49, %offset_48
		mov     %elementVal_50, qword [%elementAddr_49]
		mov     %alloca_62, %elementVal_50
		mov     %arrayPtr_52, qword [rel _a_right]
		mov     %arrayBase_53, %arrayPtr_52
		add     %arrayBase_53, 8
		mov     %arrayPtr_54, qword [rel _a]
		mov     %arrayBase_55, %arrayPtr_54
		add     %arrayBase_55, 8
		mov     %idVal_56, %alloca_64
		mov     %offset_57, %idVal_56
		imul    %offset_57, 8
		mov     %elementAddr_58, %arrayBase_55
		add     %elementAddr_58, %offset_57
		mov     %elementVal_59, qword [%elementAddr_58]
		mov     %offset_60, %elementVal_59
		imul    %offset_60, 8
		mov     %elementAddr_61, %arrayBase_53
		add     %elementAddr_61, %offset_60
		mov     %elementVal_62, qword [%elementAddr_61]
		mov     %alloca_61, %elementVal_62
		mov     %idVal_63, %alloca_61
		mov     %arrayPtr_64, qword [rel _a_right]
		mov     %arrayBase_65, %arrayPtr_64
		add     %arrayBase_65, 8
		mov     %idVal_66, %alloca_62
		mov     %offset_67, %idVal_66
		imul    %offset_67, 8
		mov     %elementAddr_68, %arrayBase_65
		add     %elementAddr_68, %offset_67
		mov     qword [%elementAddr_68], %idVal_63
		mov     %idVal_69, %alloca_62
		mov     %arrayPtr_70, qword [rel _a_left]
		mov     %arrayBase_71, %arrayPtr_70
		add     %arrayBase_71, 8
		mov     %idVal_72, %alloca_61
		mov     %offset_73, %idVal_72
		imul    %offset_73, 8
		mov     %elementAddr_74, %arrayBase_71
		add     %elementAddr_74, %offset_73
		mov     qword [%elementAddr_74], %idVal_69
		mov     %idVal_75, %alloca_63
		mov     %idVal_76, %alloca_61
		mov     %res_77, %idVal_75
		add     %res_77, %idVal_76
		mov     %idVal_78, %alloca_62
		mov     %res_79, %res_77
		sub     %res_79, %idVal_78
		mov     %res_80, %res_79
		sub     %res_80, 2
		mov     %alloca_63, %res_80
__L_115:
		mov     %idVal_81, %alloca_64
		mov     %oldVal_82, %alloca_64
		mov     %newVal_83, %oldVal_82
		dec     %newVal_83
		mov     %alloca_64, %newVal_83
		jmp     __L_112
__L_113:
		mov     %idVal_84, %alloca_63
		mov     r12, %local_r12
		mov     r14, %local_r14
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r13, %local_r13
		mov     rax, %idVal_84
		ret     

mergesort:
		mov     %local_r12, r12
		mov     %local_r14, r14
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r13, r13
		mov     %argVal_0, rdi
		mov     %argVal_2, rsi
		mov     %alloca_102, %argVal_0
		mov     %alloca_101, %argVal_2
		mov     %idVal_18, %alloca_102
		mov     %res_19, %idVal_18
		add     %res_19, 1
		mov     %idVal_20, %alloca_101
		cmp     %res_19, %idVal_20
		sete    al
		movzx   %res_21, al
		cmp     %res_21, 0
		je      __L_116
__L_117:
		mov     r12, %local_r12
		mov     r14, %local_r14
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r13, %local_r13
		mov     rax, 0
		ret     
__L_116:
		mov     %idVal_23, %alloca_102
		mov     %idVal_24, %alloca_101
		mov     %res_25, %idVal_23
		add     %res_25, %idVal_24
		mov     %res_26, %res_25
		sar     %res_26, 1
		mov     %alloca_86, %res_26
		mov     %alloca_85, 0
		mov     %idVal_28, %alloca_85
		mov     %idVal_30, %alloca_102
		mov     %idVal_31, %alloca_86
		mov     rdi, %idVal_30
		mov     rsi, %idVal_31
		call    mergesort
		mov     %res_29, rax
		mov     %res_32, %idVal_28
		add     %res_32, %res_29
		mov     %alloca_85, %res_32
		mov     %idVal_33, %alloca_85
		mov     %idVal_35, %alloca_86
		mov     %idVal_36, %alloca_101
		mov     rdi, %idVal_35
		mov     rsi, %idVal_36
		call    mergesort
		mov     %res_34, rax
		mov     %res_37, %idVal_33
		add     %res_37, %res_34
		mov     %alloca_85, %res_37
		mov     %alloca_84, 0
		mov     %alloca_83, 0
		mov     %idVal_41, %alloca_102
		mov     %alloca_82, %idVal_41
__L_118:
		mov     %idVal_42, %alloca_82
		mov     %idVal_43, %alloca_86
		cmp     %idVal_42, %idVal_43
		setl    al
		movzx   %res_44, al
		cmp     %res_44, 0
		je      __L_119
__L_120:
		mov     %arrayPtr_45, qword [rel _a]
		mov     %arrayBase_46, %arrayPtr_45
		add     %arrayBase_46, 8
		mov     %idVal_47, %alloca_82
		mov     %offset_48, %idVal_47
		imul    %offset_48, 8
		mov     %elementAddr_49, %arrayBase_46
		add     %elementAddr_49, %offset_48
		mov     %elementVal_50, qword [%elementAddr_49]
		mov     %arrayPtr_51, qword [rel _a_left]
		mov     %arrayBase_52, %arrayPtr_51
		add     %arrayBase_52, 8
		mov     %idVal_53, %alloca_84
		mov     %oldVal_54, %alloca_84
		mov     %newVal_55, %oldVal_54
		inc     %newVal_55
		mov     %alloca_84, %newVal_55
		mov     %offset_56, %oldVal_54
		imul    %offset_56, 8
		mov     %elementAddr_57, %arrayBase_52
		add     %elementAddr_57, %offset_56
		mov     qword [%elementAddr_57], %elementVal_50
__L_121:
		mov     %idVal_58, %alloca_82
		mov     %oldVal_59, %alloca_82
		mov     %newVal_60, %oldVal_59
		inc     %newVal_60
		mov     %alloca_82, %newVal_60
		jmp     __L_118
__L_119:
		mov     %idVal_61, %alloca_86
		mov     %alloca_82, %idVal_61
__L_122:
		mov     %idVal_62, %alloca_82
		mov     %idVal_63, %alloca_101
		cmp     %idVal_62, %idVal_63
		setl    al
		movzx   %res_64, al
		cmp     %res_64, 0
		je      __L_123
__L_124:
		mov     %arrayPtr_65, qword [rel _a]
		mov     %arrayBase_66, %arrayPtr_65
		add     %arrayBase_66, 8
		mov     %idVal_67, %alloca_82
		mov     %offset_68, %idVal_67
		imul    %offset_68, 8
		mov     %elementAddr_69, %arrayBase_66
		add     %elementAddr_69, %offset_68
		mov     %elementVal_70, qword [%elementAddr_69]
		mov     %arrayPtr_71, qword [rel _a_right]
		mov     %arrayBase_72, %arrayPtr_71
		add     %arrayBase_72, 8
		mov     %idVal_73, %alloca_83
		mov     %oldVal_74, %alloca_83
		mov     %newVal_75, %oldVal_74
		inc     %newVal_75
		mov     %alloca_83, %newVal_75
		mov     %offset_76, %oldVal_74
		imul    %offset_76, 8
		mov     %elementAddr_77, %arrayBase_72
		add     %elementAddr_77, %offset_76
		mov     qword [%elementAddr_77], %elementVal_70
__L_125:
		mov     %idVal_78, %alloca_82
		mov     %oldVal_79, %alloca_82
		mov     %newVal_80, %oldVal_79
		inc     %newVal_80
		mov     %alloca_82, %newVal_80
		jmp     __L_122
__L_123:
		mov     %alloca_81, 0
		mov     %alloca_80, 0
		mov     %idVal_84, %alloca_102
		mov     %alloca_79, %idVal_84
__L_126:
		mov     %idVal_85, %alloca_81
		mov     %idVal_86, %alloca_84
		cmp     %idVal_85, %idVal_86
		setl    al
		movzx   %res_87, al
		cmp     %res_87, 0
		je      __L_127
__L_128:
		mov     %idVal_88, %alloca_80
		mov     %idVal_89, %alloca_83
		cmp     %idVal_88, %idVal_89
		setl    al
		movzx   %res_90, al
		cmp     %res_90, 0
		je      __L_127
__L_129:
		mov     %idVal_91, %alloca_85
		mov     %oldVal_92, %alloca_85
		mov     %newVal_93, %oldVal_92
		inc     %newVal_93
		mov     %alloca_85, %newVal_93
		mov     %arrayPtr_94, qword [rel _a_left]
		mov     %arrayBase_95, %arrayPtr_94
		add     %arrayBase_95, 8
		mov     %idVal_96, %alloca_81
		mov     %offset_97, %idVal_96
		imul    %offset_97, 8
		mov     %elementAddr_98, %arrayBase_95
		add     %elementAddr_98, %offset_97
		mov     %elementVal_99, qword [%elementAddr_98]
		mov     %arrayPtr_100, qword [rel _a_right]
		mov     %arrayBase_101, %arrayPtr_100
		add     %arrayBase_101, 8
		mov     %idVal_102, %alloca_80
		mov     %offset_103, %idVal_102
		imul    %offset_103, 8
		mov     %elementAddr_104, %arrayBase_101
		add     %elementAddr_104, %offset_103
		mov     %elementVal_105, qword [%elementAddr_104]
		cmp     %elementVal_99, %elementVal_105
		setl    al
		movzx   %res_106, al
		cmp     %res_106, 0
		je      __L_130
__L_131:
		mov     %arrayPtr_107, qword [rel _a_left]
		mov     %arrayBase_108, %arrayPtr_107
		add     %arrayBase_108, 8
		mov     %idVal_109, %alloca_81
		mov     %oldVal_110, %alloca_81
		mov     %newVal_111, %oldVal_110
		inc     %newVal_111
		mov     %alloca_81, %newVal_111
		mov     %offset_112, %oldVal_110
		imul    %offset_112, 8
		mov     %elementAddr_113, %arrayBase_108
		add     %elementAddr_113, %offset_112
		mov     %elementVal_114, qword [%elementAddr_113]
		mov     %arrayPtr_115, qword [rel _a]
		mov     %arrayBase_116, %arrayPtr_115
		add     %arrayBase_116, 8
		mov     %idVal_117, %alloca_79
		mov     %oldVal_118, %alloca_79
		mov     %newVal_119, %oldVal_118
		inc     %newVal_119
		mov     %alloca_79, %newVal_119
		mov     %offset_120, %oldVal_118
		imul    %offset_120, 8
		mov     %elementAddr_121, %arrayBase_116
		add     %elementAddr_121, %offset_120
		mov     qword [%elementAddr_121], %elementVal_114
		jmp     __L_132
__L_130:
		mov     %arrayPtr_122, qword [rel _a_right]
		mov     %arrayBase_123, %arrayPtr_122
		add     %arrayBase_123, 8
		mov     %idVal_124, %alloca_80
		mov     %oldVal_125, %alloca_80
		mov     %newVal_126, %oldVal_125
		inc     %newVal_126
		mov     %alloca_80, %newVal_126
		mov     %offset_127, %oldVal_125
		imul    %offset_127, 8
		mov     %elementAddr_128, %arrayBase_123
		add     %elementAddr_128, %offset_127
		mov     %elementVal_129, qword [%elementAddr_128]
		mov     %arrayPtr_130, qword [rel _a]
		mov     %arrayBase_131, %arrayPtr_130
		add     %arrayBase_131, 8
		mov     %idVal_132, %alloca_79
		mov     %oldVal_133, %alloca_79
		mov     %newVal_134, %oldVal_133
		inc     %newVal_134
		mov     %alloca_79, %newVal_134
		mov     %offset_135, %oldVal_133
		imul    %offset_135, 8
		mov     %elementAddr_136, %arrayBase_131
		add     %elementAddr_136, %offset_135
		mov     qword [%elementAddr_136], %elementVal_129
__L_132:
		jmp     __L_126
__L_127:
__L_133:
		mov     %idVal_137, %alloca_81
		mov     %idVal_138, %alloca_84
		cmp     %idVal_137, %idVal_138
		setl    al
		movzx   %res_139, al
		cmp     %res_139, 0
		je      __L_134
__L_135:
		mov     %arrayPtr_140, qword [rel _a_left]
		mov     %arrayBase_141, %arrayPtr_140
		add     %arrayBase_141, 8
		mov     %idVal_142, %alloca_81
		mov     %oldVal_143, %alloca_81
		mov     %newVal_144, %oldVal_143
		inc     %newVal_144
		mov     %alloca_81, %newVal_144
		mov     %offset_145, %oldVal_143
		imul    %offset_145, 8
		mov     %elementAddr_146, %arrayBase_141
		add     %elementAddr_146, %offset_145
		mov     %elementVal_147, qword [%elementAddr_146]
		mov     %arrayPtr_148, qword [rel _a]
		mov     %arrayBase_149, %arrayPtr_148
		add     %arrayBase_149, 8
		mov     %idVal_150, %alloca_79
		mov     %oldVal_151, %alloca_79
		mov     %newVal_152, %oldVal_151
		inc     %newVal_152
		mov     %alloca_79, %newVal_152
		mov     %offset_153, %oldVal_151
		imul    %offset_153, 8
		mov     %elementAddr_154, %arrayBase_149
		add     %elementAddr_154, %offset_153
		mov     qword [%elementAddr_154], %elementVal_147
		jmp     __L_133
__L_134:
__L_136:
		mov     %idVal_155, %alloca_80
		mov     %idVal_156, %alloca_83
		cmp     %idVal_155, %idVal_156
		setl    al
		movzx   %res_157, al
		cmp     %res_157, 0
		je      __L_137
__L_138:
		mov     %arrayPtr_158, qword [rel _a_right]
		mov     %arrayBase_159, %arrayPtr_158
		add     %arrayBase_159, 8
		mov     %idVal_160, %alloca_80
		mov     %oldVal_161, %alloca_80
		mov     %newVal_162, %oldVal_161
		inc     %newVal_162
		mov     %alloca_80, %newVal_162
		mov     %offset_163, %oldVal_161
		imul    %offset_163, 8
		mov     %elementAddr_164, %arrayBase_159
		add     %elementAddr_164, %offset_163
		mov     %elementVal_165, qword [%elementAddr_164]
		mov     %arrayPtr_166, qword [rel _a]
		mov     %arrayBase_167, %arrayPtr_166
		add     %arrayBase_167, 8
		mov     %idVal_168, %alloca_79
		mov     %oldVal_169, %alloca_79
		mov     %newVal_170, %oldVal_169
		inc     %newVal_170
		mov     %alloca_79, %newVal_170
		mov     %offset_171, %oldVal_169
		imul    %offset_171, 8
		mov     %elementAddr_172, %arrayBase_167
		add     %elementAddr_172, %offset_171
		mov     qword [%elementAddr_172], %elementVal_165
		jmp     __L_136
__L_137:
		mov     %idVal_173, %alloca_85
		mov     r12, %local_r12
		mov     r14, %local_r14
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r13, %local_r13
		mov     rax, %idVal_173
		ret     

heapsort:
		mov     %local_r12, r12
		mov     %local_r14, r14
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r13, r13
		mov     %alloca_111, 0
		mov     %alloca_110, 1
__L_139:
		mov     %idVal_17, %alloca_110
		mov     %idVal_18, qword [rel _n]
		cmp     %idVal_17, %idVal_18
		setle   al
		movzx   %res_19, al
		cmp     %res_19, 0
		je      __L_140
__L_141:
		mov     %arrayPtr_20, qword [rel _a]
		mov     %arrayBase_21, %arrayPtr_20
		add     %arrayBase_21, 8
		mov     %idVal_22, %alloca_110
		mov     %offset_23, %idVal_22
		imul    %offset_23, 8
		mov     %elementAddr_24, %arrayBase_21
		add     %elementAddr_24, %offset_23
		mov     %elementVal_25, qword [%elementAddr_24]
		mov     %arrayPtr_26, qword [rel _heap]
		mov     %arrayBase_27, %arrayPtr_26
		add     %arrayBase_27, 8
		mov     %idVal_28, %alloca_110
		mov     %offset_29, %idVal_28
		imul    %offset_29, 8
		mov     %elementAddr_30, %arrayBase_27
		add     %elementAddr_30, %offset_29
		mov     qword [%elementAddr_30], %elementVal_25
		mov     %idVal_32, %alloca_110
		mov     %alloca_108, %idVal_32
__L_142:
		mov     %idVal_33, %alloca_108
		cmp     %idVal_33, 1
		setne   al
		movzx   %res_34, al
		cmp     %res_34, 0
		je      __L_143
__L_144:
		mov     %idVal_35, %alloca_111
		mov     %oldVal_36, %alloca_111
		mov     %newVal_37, %oldVal_36
		inc     %newVal_37
		mov     %alloca_111, %newVal_37
		mov     %arrayPtr_38, qword [rel _heap]
		mov     %arrayBase_39, %arrayPtr_38
		add     %arrayBase_39, 8
		mov     %idVal_40, %alloca_108
		mov     %offset_41, %idVal_40
		imul    %offset_41, 8
		mov     %elementAddr_42, %arrayBase_39
		add     %elementAddr_42, %offset_41
		mov     %elementVal_43, qword [%elementAddr_42]
		mov     %arrayPtr_44, qword [rel _heap]
		mov     %arrayBase_45, %arrayPtr_44
		add     %arrayBase_45, 8
		mov     %idVal_46, %alloca_108
		mov     %res_47, %idVal_46
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
		je      __L_145
__L_146:
		jmp     __L_143
__L_145:
		mov     %arrayPtr_52, qword [rel _heap]
		mov     %arrayBase_53, %arrayPtr_52
		add     %arrayBase_53, 8
		mov     %idVal_54, %alloca_108
		mov     %offset_55, %idVal_54
		imul    %offset_55, 8
		mov     %elementAddr_56, %arrayBase_53
		add     %elementAddr_56, %offset_55
		mov     %elementVal_57, qword [%elementAddr_56]
		mov     %alloca_109, %elementVal_57
		mov     %arrayPtr_58, qword [rel _heap]
		mov     %arrayBase_59, %arrayPtr_58
		add     %arrayBase_59, 8
		mov     %idVal_60, %alloca_108
		mov     %res_61, %idVal_60
		sar     %res_61, 1
		mov     %offset_62, %res_61
		imul    %offset_62, 8
		mov     %elementAddr_63, %arrayBase_59
		add     %elementAddr_63, %offset_62
		mov     %elementVal_64, qword [%elementAddr_63]
		mov     %arrayPtr_65, qword [rel _heap]
		mov     %arrayBase_66, %arrayPtr_65
		add     %arrayBase_66, 8
		mov     %idVal_67, %alloca_108
		mov     %offset_68, %idVal_67
		imul    %offset_68, 8
		mov     %elementAddr_69, %arrayBase_66
		add     %elementAddr_69, %offset_68
		mov     qword [%elementAddr_69], %elementVal_64
		mov     %idVal_70, %alloca_109
		mov     %arrayPtr_71, qword [rel _heap]
		mov     %arrayBase_72, %arrayPtr_71
		add     %arrayBase_72, 8
		mov     %idVal_73, %alloca_108
		mov     %res_74, %idVal_73
		sar     %res_74, 1
		mov     %offset_75, %res_74
		imul    %offset_75, 8
		mov     %elementAddr_76, %arrayBase_72
		add     %elementAddr_76, %offset_75
		mov     qword [%elementAddr_76], %idVal_70
		mov     %idVal_77, %alloca_108
		mov     %res_78, %idVal_77
		sar     %res_78, 1
		mov     %alloca_108, %res_78
		jmp     __L_142
__L_143:
__L_147:
		mov     %idVal_79, %alloca_110
		mov     %oldVal_80, %alloca_110
		mov     %newVal_81, %oldVal_80
		inc     %newVal_81
		mov     %alloca_110, %newVal_81
		jmp     __L_139
__L_140:
		mov     %idVal_83, qword [rel _n]
		mov     %alloca_107, %idVal_83
		mov     %alloca_110, 1
__L_148:
		mov     %idVal_84, %alloca_110
		mov     %idVal_85, qword [rel _n]
		cmp     %idVal_84, %idVal_85
		setle   al
		movzx   %res_86, al
		cmp     %res_86, 0
		je      __L_149
__L_150:
		mov     %arrayPtr_87, qword [rel _heap]
		mov     %arrayBase_88, %arrayPtr_87
		add     %arrayBase_88, 8
		mov     %offset_89, 1
		imul    %offset_89, 8
		mov     %elementAddr_90, %arrayBase_88
		add     %elementAddr_90, %offset_89
		mov     %elementVal_91, qword [%elementAddr_90]
		mov     %arrayPtr_92, qword [rel _a]
		mov     %arrayBase_93, %arrayPtr_92
		add     %arrayBase_93, 8
		mov     %idVal_94, %alloca_110
		mov     %offset_95, %idVal_94
		imul    %offset_95, 8
		mov     %elementAddr_96, %arrayBase_93
		add     %elementAddr_96, %offset_95
		mov     qword [%elementAddr_96], %elementVal_91
		mov     %arrayPtr_97, qword [rel _heap]
		mov     %arrayBase_98, %arrayPtr_97
		add     %arrayBase_98, 8
		mov     %idVal_99, %alloca_107
		mov     %oldVal_100, %alloca_107
		mov     %newVal_101, %oldVal_100
		dec     %newVal_101
		mov     %alloca_107, %newVal_101
		mov     %offset_102, %oldVal_100
		imul    %offset_102, 8
		mov     %elementAddr_103, %arrayBase_98
		add     %elementAddr_103, %offset_102
		mov     %elementVal_104, qword [%elementAddr_103]
		mov     %arrayPtr_105, qword [rel _heap]
		mov     %arrayBase_106, %arrayPtr_105
		add     %arrayBase_106, 8
		mov     %offset_107, 1
		imul    %offset_107, 8
		mov     %elementAddr_108, %arrayBase_106
		add     %elementAddr_108, %offset_107
		mov     qword [%elementAddr_108], %elementVal_104
		mov     %alloca_106, 1
__L_151:
		mov     %idVal_110, %alloca_106
		mov     %res_111, %idVal_110
		shl     %res_111, 1
		mov     %idVal_112, %alloca_107
		cmp     %res_111, %idVal_112
		setle   al
		movzx   %res_113, al
		cmp     %res_113, 0
		je      __L_152
__L_153:
		mov     %idVal_115, %alloca_106
		mov     %res_116, %idVal_115
		shl     %res_116, 1
		mov     %alloca_105, %res_116
		mov     %idVal_118, %alloca_105
		mov     %res_119, %idVal_118
		add     %res_119, 1
		mov     %alloca_104, %res_119
		mov     %idVal_121, %alloca_105
		mov     %alloca_103, %idVal_121
		mov     %idVal_122, %alloca_104
		mov     %idVal_123, %alloca_107
		cmp     %idVal_122, %idVal_123
		setle   al
		movzx   %res_124, al
		cmp     %res_124, 0
		je      __L_154
__L_155:
		mov     %idVal_125, %alloca_111
		mov     %oldVal_126, %alloca_111
		mov     %newVal_127, %oldVal_126
		inc     %newVal_127
		mov     %alloca_111, %newVal_127
		mov     %arrayPtr_128, qword [rel _heap]
		mov     %arrayBase_129, %arrayPtr_128
		add     %arrayBase_129, 8
		mov     %idVal_130, %alloca_104
		mov     %offset_131, %idVal_130
		imul    %offset_131, 8
		mov     %elementAddr_132, %arrayBase_129
		add     %elementAddr_132, %offset_131
		mov     %elementVal_133, qword [%elementAddr_132]
		mov     %arrayPtr_134, qword [rel _heap]
		mov     %arrayBase_135, %arrayPtr_134
		add     %arrayBase_135, 8
		mov     %idVal_136, %alloca_105
		mov     %offset_137, %idVal_136
		imul    %offset_137, 8
		mov     %elementAddr_138, %arrayBase_135
		add     %elementAddr_138, %offset_137
		mov     %elementVal_139, qword [%elementAddr_138]
		cmp     %elementVal_133, %elementVal_139
		setl    al
		movzx   %res_140, al
		cmp     %res_140, 0
		je      __L_156
__L_157:
		mov     %idVal_141, %alloca_104
		mov     %alloca_103, %idVal_141
__L_156:
__L_154:
		mov     %idVal_142, %alloca_111
		mov     %oldVal_143, %alloca_111
		mov     %newVal_144, %oldVal_143
		inc     %newVal_144
		mov     %alloca_111, %newVal_144
		mov     %arrayPtr_145, qword [rel _heap]
		mov     %arrayBase_146, %arrayPtr_145
		add     %arrayBase_146, 8
		mov     %idVal_147, %alloca_106
		mov     %offset_148, %idVal_147
		imul    %offset_148, 8
		mov     %elementAddr_149, %arrayBase_146
		add     %elementAddr_149, %offset_148
		mov     %elementVal_150, qword [%elementAddr_149]
		mov     %arrayPtr_151, qword [rel _heap]
		mov     %arrayBase_152, %arrayPtr_151
		add     %arrayBase_152, 8
		mov     %idVal_153, %alloca_103
		mov     %offset_154, %idVal_153
		imul    %offset_154, 8
		mov     %elementAddr_155, %arrayBase_152
		add     %elementAddr_155, %offset_154
		mov     %elementVal_156, qword [%elementAddr_155]
		cmp     %elementVal_150, %elementVal_156
		setl    al
		movzx   %res_157, al
		cmp     %res_157, 0
		je      __L_158
__L_159:
		jmp     __L_152
__L_158:
		mov     %arrayPtr_158, qword [rel _heap]
		mov     %arrayBase_159, %arrayPtr_158
		add     %arrayBase_159, 8
		mov     %idVal_160, %alloca_106
		mov     %offset_161, %idVal_160
		imul    %offset_161, 8
		mov     %elementAddr_162, %arrayBase_159
		add     %elementAddr_162, %offset_161
		mov     %elementVal_163, qword [%elementAddr_162]
		mov     %alloca_109, %elementVal_163
		mov     %arrayPtr_164, qword [rel _heap]
		mov     %arrayBase_165, %arrayPtr_164
		add     %arrayBase_165, 8
		mov     %idVal_166, %alloca_103
		mov     %offset_167, %idVal_166
		imul    %offset_167, 8
		mov     %elementAddr_168, %arrayBase_165
		add     %elementAddr_168, %offset_167
		mov     %elementVal_169, qword [%elementAddr_168]
		mov     %arrayPtr_170, qword [rel _heap]
		mov     %arrayBase_171, %arrayPtr_170
		add     %arrayBase_171, 8
		mov     %idVal_172, %alloca_106
		mov     %offset_173, %idVal_172
		imul    %offset_173, 8
		mov     %elementAddr_174, %arrayBase_171
		add     %elementAddr_174, %offset_173
		mov     qword [%elementAddr_174], %elementVal_169
		mov     %idVal_175, %alloca_109
		mov     %arrayPtr_176, qword [rel _heap]
		mov     %arrayBase_177, %arrayPtr_176
		add     %arrayBase_177, 8
		mov     %idVal_178, %alloca_103
		mov     %offset_179, %idVal_178
		imul    %offset_179, 8
		mov     %elementAddr_180, %arrayBase_177
		add     %elementAddr_180, %offset_179
		mov     qword [%elementAddr_180], %idVal_175
		mov     %idVal_181, %alloca_106
		mov     %alloca_109, %idVal_181
		mov     %idVal_182, %alloca_103
		mov     %alloca_106, %idVal_182
		mov     %idVal_183, %alloca_109
		mov     %alloca_103, %idVal_183
		jmp     __L_151
__L_152:
__L_160:
		mov     %idVal_184, %alloca_110
		mov     %oldVal_185, %alloca_110
		mov     %newVal_186, %oldVal_185
		inc     %newVal_186
		mov     %alloca_110, %newVal_186
		jmp     __L_148
__L_149:
		mov     %idVal_187, %alloca_111
		mov     r12, %local_r12
		mov     r14, %local_r14
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r13, %local_r13
		mov     rax, %idVal_187
		ret     

main:
		mov     %local_r12, r12
		mov     %local_r14, r14
		mov     %local_rbx, rbx
		mov     %local_r15, r15
		mov     %local_r13, r13
		call    _globalInit
		call    getInt
		mov     %res_14, rax
		mov     qword [rel _n], %res_14
		call    getInt
		mov     %res_16, rax
		mov     %alloca_132, %res_16
		mov     %alloca_131, 1
__L_161:
		mov     %idVal_18, %alloca_131
		mov     %idVal_19, qword [rel _n]
		cmp     %idVal_18, %idVal_19
		setle   al
		movzx   %res_20, al
		cmp     %res_20, 0
		je      __L_162
__L_163:
		mov     %idVal_21, %alloca_131
		mov     %arrayPtr_22, qword [rel _a]
		mov     %arrayBase_23, %arrayPtr_22
		add     %arrayBase_23, 8
		mov     %idVal_24, %alloca_131
		mov     %offset_25, %idVal_24
		imul    %offset_25, 8
		mov     %elementAddr_26, %arrayBase_23
		add     %elementAddr_26, %offset_25
		mov     qword [%elementAddr_26], %idVal_21
		mov     %idVal_27, %alloca_131
		mov     %idVal_28, %alloca_132
		cmp     %idVal_27, %idVal_28
		setle   al
		movzx   %res_29, al
		cmp     %res_29, 0
		je      __L_164
__L_165:
		mov     %idVal_30, %alloca_132
		mov     %res_31, %idVal_30
		add     %res_31, 1
		mov     %idVal_32, %alloca_131
		mov     %res_33, %res_31
		sub     %res_33, %idVal_32
		mov     %arrayPtr_34, qword [rel _a]
		mov     %arrayBase_35, %arrayPtr_34
		add     %arrayBase_35, 8
		mov     %idVal_36, %alloca_131
		mov     %offset_37, %idVal_36
		imul    %offset_37, 8
		mov     %elementAddr_38, %arrayBase_35
		add     %elementAddr_38, %offset_37
		mov     qword [%elementAddr_38], %res_33
__L_164:
		mov     %arrayPtr_39, qword [rel _a]
		mov     %arrayBase_40, %arrayPtr_39
		add     %arrayBase_40, 8
		mov     %idVal_41, %alloca_131
		mov     %offset_42, %idVal_41
		imul    %offset_42, 8
		mov     %elementAddr_43, %arrayBase_40
		add     %elementAddr_43, %offset_42
		mov     %elementVal_44, qword [%elementAddr_43]
		mov     %arrayPtr_45, qword [rel _bak]
		mov     %arrayBase_46, %arrayPtr_45
		add     %arrayBase_46, 8
		mov     %idVal_47, %alloca_131
		mov     %offset_48, %idVal_47
		imul    %offset_48, 8
		mov     %elementAddr_49, %arrayBase_46
		add     %elementAddr_49, %offset_48
		mov     qword [%elementAddr_49], %elementVal_44
__L_166:
		mov     %idVal_50, %alloca_131
		mov     %oldVal_51, %alloca_131
		mov     %newVal_52, %oldVal_51
		inc     %newVal_52
		mov     %alloca_131, %newVal_52
		jmp     __L_161
__L_162:
		mov     %idVal_55, qword [rel _n]
		mov     %res_56, %idVal_55
		add     %res_56, 1
		mov     rdi, 1
		mov     rsi, %res_56
		call    quicksort
		mov     %res_54, rax
		mov     %alloca_130, %res_54
		call    restore
		call    calc
		mov     %res_58, rax
		mov     %alloca_129, %res_58
		call    restore
		mov     %idVal_61, qword [rel _n]
		mov     %res_62, %idVal_61
		add     %res_62, 1
		mov     rdi, 1
		mov     rsi, %res_62
		call    mergesort
		mov     %res_60, rax
		mov     %alloca_128, %res_60
		call    restore
		call    heapsort
		mov     %res_64, rax
		mov     %alloca_127, %res_64
		mov     %idVal_66, %alloca_130
		mov     rdi, %idVal_66
		call    toString
		mov     %res_65, rax
		mov     rdi, %res_65
		call    println
		mov     %idVal_68, %alloca_129
		mov     rdi, %idVal_68
		call    toString
		mov     %res_67, rax
		mov     rdi, %res_67
		call    println
		mov     %idVal_70, %alloca_128
		mov     rdi, %idVal_70
		call    toString
		mov     %res_69, rax
		mov     rdi, %res_69
		call    println
		mov     %idVal_72, %alloca_127
		mov     rdi, %idVal_72
		call    toString
		mov     %res_71, rax
		mov     rdi, %res_71
		call    println
		mov     rdi, 8
		call    malloc
		mov     %classPtr_74, rax
		mov     rdi, %classPtr_74
		call    _A_A
		mov     %alloca_126, %classPtr_74
		mov     %classPtr_75, %alloca_126
		mov     rdi, %classPtr_75
		call    _A_Optimizer
		mov     r12, %local_r12
		mov     r14, %local_r14
		mov     rbx, %local_rbx
		mov     r15, %local_r15
		mov     r13, %local_r13
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


