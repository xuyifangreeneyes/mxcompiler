@i

@a0

@a1

@a2

@a3

@a4

@a5

@a6

@a7

@a8

@a9

@a10

@b0

@b1

@b2

@b3

@b4

@b5

@b6

@b7

@b8

@b9

@b10

define print

define println

define getString

define getInt

define toString

define __stringLength

define __stringSubstring

define __stringParseInt

define __stringOrd

define __arraySize

define __stringAdd

define __stringEq

define __stringNeq

define __stringLt

define __stringGt

define __stringLe

define __stringGe

define __printInt

define __printlnInt

define __globalInit ( ) {
<0> entry
	%tmp_45 = load @b7
	mov %varDef_69 %tmp_45
	%tmp_44 = load @a6
	mov %varDef_70 %tmp_44
	%tmp_43 = load @a2
	mov %varDef_71 %tmp_43
	%tmp_42 = load @a4
	mov %varDef_72 %tmp_42
	%tmp_41 = load @b9
	mov %varDef_73 %tmp_41
	%tmp_40 = load @b0
	mov %varDef_74 %tmp_40
	%tmp_39 = load @a5
	mov %varDef_75 %tmp_39
	%tmp_38 = load @a9
	mov %varDef_76 %tmp_38
	%tmp_37 = load @a3
	mov %varDef_77 %tmp_37
	%tmp_36 = load @b5
	mov %varDef_78 %tmp_36
	%tmp_35 = load @a10
	mov %varDef_79 %tmp_35
	%tmp_34 = load @b10
	mov %varDef_80 %tmp_34
	%tmp_33 = load @b8
	mov %varDef_81 %tmp_33
	%tmp_32 = load @b2
	mov %varDef_82 %tmp_32
	%tmp_31 = load @a8
	mov %varDef_83 %tmp_31
	%tmp_30 = load @i
	mov %varDef_84 %tmp_30
	%tmp_29 = load @b4
	mov %varDef_85 %tmp_29
	%tmp_28 = load @b6
	mov %varDef_86 %tmp_28
	%tmp_27 = load @b3
	mov %varDef_87 %tmp_27
	%tmp_26 = load @a0
	mov %varDef_88 %tmp_26
	%tmp_25 = load @a1
	mov %varDef_89 %tmp_25
	%tmp_24 = load @b1
	mov %varDef_90 %tmp_24
	%tmp_23 = load @a7
	mov %varDef_91 %tmp_23
	mov %varDef_92 0
	mov %varDef_93 0
	mov %varDef_94 0
	mov %varDef_95 0
	mov %varDef_96 0
	mov %varDef_97 0
	mov %varDef_98 0
	mov %varDef_99 0
	mov %varDef_100 0
	mov %varDef_101 0
	mov %varDef_102 0
	mov %varDef_103 0
	mov %varDef_104 0
	mov %varDef_105 0
	mov %varDef_106 0
	mov %varDef_107 0
	mov %varDef_108 0
	mov %varDef_109 0
	mov %varDef_110 0
	mov %varDef_111 0
	mov %varDef_112 0
	mov %varDef_113 0
	mov %varDef_114 0
	mov %tmp_46 %varDef_100
	store %tmp_46 @a7
	mov %tmp_47 %varDef_105
	store %tmp_47 @b1
	mov %tmp_48 %varDef_94
	store %tmp_48 @a1
	mov %tmp_49 %varDef_93
	store %tmp_49 @a0
	mov %tmp_50 %varDef_107
	store %tmp_50 @b3
	mov %tmp_51 %varDef_110
	store %tmp_51 @b6
	mov %tmp_52 %varDef_108
	store %tmp_52 @b4
	mov %tmp_53 %varDef_92
	store %tmp_53 @i
	mov %tmp_54 %varDef_101
	store %tmp_54 @a8
	mov %tmp_55 %varDef_106
	store %tmp_55 @b2
	mov %tmp_56 %varDef_112
	store %tmp_56 @b8
	mov %tmp_57 %varDef_114
	store %tmp_57 @b10
	mov %tmp_58 %varDef_103
	store %tmp_58 @a10
	mov %tmp_59 %varDef_109
	store %tmp_59 @b5
	mov %tmp_60 %varDef_96
	store %tmp_60 @a3
	mov %tmp_61 %varDef_102
	store %tmp_61 @a9
	mov %tmp_62 %varDef_98
	store %tmp_62 @a5
	mov %tmp_63 %varDef_104
	store %tmp_63 @b0
	mov %tmp_64 %varDef_113
	store %tmp_64 @b9
	mov %tmp_65 %varDef_97
	store %tmp_65 @a4
	mov %tmp_66 %varDef_95
	store %tmp_66 @a2
	mov %tmp_67 %varDef_99
	store %tmp_67 @a6
	mov %tmp_68 %varDef_111
	store %tmp_68 @b7
	ret 

}

define main ( ) {
<0> entry
	%tmp_136 = load @b7
	mov %varDef_160 %tmp_136
	%tmp_135 = load @a6
	mov %varDef_161 %tmp_135
	%tmp_134 = load @a2
	mov %varDef_162 %tmp_134
	%tmp_133 = load @a4
	mov %varDef_163 %tmp_133
	%tmp_132 = load @b9
	mov %varDef_164 %tmp_132
	%tmp_131 = load @b0
	mov %varDef_165 %tmp_131
	%tmp_130 = load @a5
	mov %varDef_166 %tmp_130
	%tmp_129 = load @a9
	mov %varDef_167 %tmp_129
	%tmp_128 = load @a3
	mov %varDef_168 %tmp_128
	%tmp_127 = load @b5
	mov %varDef_169 %tmp_127
	%tmp_126 = load @a10
	mov %varDef_170 %tmp_126
	%tmp_125 = load @b10
	mov %varDef_171 %tmp_125
	%tmp_124 = load @b8
	mov %varDef_172 %tmp_124
	%tmp_123 = load @b2
	mov %varDef_173 %tmp_123
	%tmp_122 = load @a8
	mov %varDef_174 %tmp_122
	%tmp_121 = load @i
	mov %varDef_175 %tmp_121
	%tmp_120 = load @b4
	mov %varDef_176 %tmp_120
	%tmp_119 = load @b6
	mov %varDef_177 %tmp_119
	%tmp_118 = load @b3
	mov %varDef_178 %tmp_118
	%tmp_117 = load @a0
	mov %varDef_179 %tmp_117
	%tmp_116 = load @a1
	mov %varDef_180 %tmp_116
	%tmp_115 = load @b1
	mov %varDef_181 %tmp_115
	%tmp_114 = load @a7
	mov %varDef_182 %tmp_114
	br <8>

<8> centry
	mov %varDef_183 0
	mov %varDef_184 0
	mov %varDef_185 0
	mov %varDef_186 0
	mov %varDef_187 0
	mov %varDef_188 0
	mov %varDef_189 0
	mov %varDef_190 0
	mov %varDef_191 0
	mov %varDef_192 0
	mov %varDef_193 0
	mov %varDef_194 0
	mov %varDef_195 0
	mov %varDef_196 0
	mov %varDef_197 0
	mov %varDef_198 0
	mov %varDef_199 0
	mov %varDef_200 0
	mov %varDef_201 0
	mov %varDef_202 0
	mov %varDef_203 0
	mov %varDef_204 0
	mov %varDef_205 0
	mov %varDef_206 0
	%res_2 = getInt ( )
	mov %varDef_207 %res_2
	mov %varDef_208 0
	br <1>

<1> for_cond
	%varDef_209 = phi <8> %varDef_206 <3> %varDef_256
	%varDef_210 = phi <8> %varDef_191 <3> %varDef_240
	%varDef_211 = phi <8> %varDef_196 <3> %varDef_245
	%varDef_212 = phi <8> %varDef_185 <3> %varDef_234
	%varDef_213 = phi <8> %varDef_184 <3> %varDef_233
	%varDef_214 = phi <8> %varDef_198 <3> %varDef_247
	%varDef_215 = phi <8> %varDef_201 <3> %varDef_250
	%varDef_216 = phi <8> %varDef_199 <3> %varDef_248
	%varDef_217 = phi <8> %varDef_208 <3> %varDef_257
	%varDef_218 = phi <8> %varDef_192 <3> %varDef_241
	%varDef_219 = phi <8> %varDef_197 <3> %varDef_246
	%varDef_220 = phi <8> %varDef_203 <3> %varDef_252
	%varDef_221 = phi <8> %varDef_205 <3> %varDef_254
	%varDef_222 = phi <8> %varDef_194 <3> %varDef_243
	%varDef_223 = phi <8> %varDef_200 <3> %varDef_249
	%varDef_224 = phi <8> %varDef_187 <3> %varDef_236
	%varDef_225 = phi <8> %varDef_193 <3> %varDef_242
	%varDef_226 = phi <8> %varDef_189 <3> %varDef_238
	%varDef_227 = phi <8> %varDef_195 <3> %varDef_244
	%varDef_228 = phi <8> %varDef_204 <3> %varDef_253
	%varDef_229 = phi <8> %varDef_188 <3> %varDef_237
	%varDef_230 = phi <8> %varDef_186 <3> %varDef_235
	%varDef_231 = phi <8> %varDef_190 <3> %varDef_239
	%varDef_232 = phi <8> %varDef_202 <3> %varDef_251
	mov %idVal_3 %varDef_217
	mov %idVal_4 %varDef_207
	%res_5 = lt %idVal_3 %idVal_4
	br %res_5 <2> <4>

<2> for_body
	mov %idVal_6 %varDef_213
	%res_7 = add %idVal_6 1
	mov %varDef_233 %res_7
	mov %idVal_8 %varDef_212
	%res_9 = add %idVal_8 1
	mov %varDef_234 %res_9
	mov %idVal_10 %varDef_230
	%res_11 = add %idVal_10 1
	mov %varDef_235 %res_11
	mov %idVal_12 %varDef_233
	%res_13 = add %idVal_12 1
	mov %varDef_236 %res_13
	mov %idVal_14 %varDef_234
	%res_15 = add %idVal_14 1
	mov %varDef_237 %res_15
	mov %idVal_16 %varDef_235
	%res_17 = add %idVal_16 1
	mov %varDef_238 %res_17
	mov %idVal_18 %varDef_233
	%res_19 = add %idVal_18 1
	mov %varDef_239 %res_19
	mov %idVal_20 %varDef_234
	%res_21 = add %idVal_20 1
	mov %varDef_240 %res_21
	mov %idVal_22 %varDef_235
	%res_23 = add %idVal_22 1
	mov %varDef_241 %res_23
	mov %idVal_24 %varDef_233
	%res_25 = add %idVal_24 1
	mov %varDef_242 %res_25
	mov %idVal_26 %varDef_234
	%res_27 = add %idVal_26 0
	mov %varDef_243 %res_27
	mov %idVal_28 %varDef_233
	mov %varDef_244 %idVal_28
	mov %idVal_29 %varDef_234
	mov %varDef_245 %idVal_29
	mov %idVal_30 %varDef_235
	mov %varDef_246 %idVal_30
	mov %idVal_31 %varDef_236
	mov %varDef_247 %idVal_31
	mov %idVal_32 %varDef_237
	mov %varDef_248 %idVal_32
	mov %idVal_33 %varDef_238
	mov %varDef_249 %idVal_33
	mov %idVal_34 %varDef_239
	mov %varDef_250 %idVal_34
	mov %idVal_35 %varDef_240
	mov %varDef_251 %idVal_35
	mov %idVal_36 %varDef_241
	mov %varDef_252 %idVal_36
	mov %idVal_37 %varDef_242
	mov %varDef_253 %idVal_37
	mov %idVal_38 %varDef_243
	mov %varDef_254 %idVal_38
	mov %idVal_39 %varDef_217
	%res_40 = mod %idVal_39 10000000
	%res_41 = eq %res_40 0
	br %res_41 <5> <3>

<5> if_true
	mov %idVal_42 %varDef_209
	mov %idVal_43 %varDef_233
	%res_44 = add %idVal_42 %idVal_43
	mov %idVal_45 %varDef_234
	%res_46 = add %res_44 %idVal_45
	mov %idVal_47 %varDef_235
	%res_48 = add %res_46 %idVal_47
	mov %idVal_49 %varDef_236
	%res_50 = add %res_48 %idVal_49
	mov %idVal_51 %varDef_237
	%res_52 = add %res_50 %idVal_51
	mov %idVal_53 %varDef_238
	%res_54 = add %res_52 %idVal_53
	mov %idVal_55 %varDef_239
	%res_56 = add %res_54 %idVal_55
	mov %idVal_57 %varDef_240
	%res_58 = add %res_56 %idVal_57
	mov %idVal_59 %varDef_241
	%res_60 = add %res_58 %idVal_59
	mov %idVal_61 %varDef_242
	%res_62 = add %res_60 %idVal_61
	mov %idVal_63 %varDef_243
	%res_64 = add %res_62 %idVal_63
	mov %idVal_65 %varDef_244
	%res_66 = add %res_64 %idVal_65
	mov %idVal_67 %varDef_245
	%res_68 = add %res_66 %idVal_67
	mov %idVal_69 %varDef_246
	%res_70 = add %res_68 %idVal_69
	mov %idVal_71 %varDef_247
	%res_72 = add %res_70 %idVal_71
	mov %idVal_73 %varDef_248
	%res_74 = add %res_72 %idVal_73
	mov %idVal_75 %varDef_249
	%res_76 = add %res_74 %idVal_75
	mov %idVal_77 %varDef_250
	%res_78 = add %res_76 %idVal_77
	mov %idVal_79 %varDef_251
	%res_80 = add %res_78 %idVal_79
	mov %idVal_81 %varDef_252
	%res_82 = add %res_80 %idVal_81
	mov %idVal_83 %varDef_253
	%res_84 = add %res_82 %idVal_83
	mov %idVal_85 %varDef_254
	%res_86 = add %res_84 %idVal_85
	%res_87 = bit_and %res_86 2147450879
	mov %varDef_255 %res_87
	br <3>

<3> for_step
	%varDef_256 = phi <2> %varDef_209 <5> %varDef_255
	mov %idVal_88 %varDef_217
	%res_89 = add %idVal_88 1
	mov %varDef_257 %res_89
	br <1>

<4> for_end
	mov %idVal_90 %varDef_209
	__printlnInt ( %idVal_90 )
	mov %tmp_137 %varDef_210
	store %tmp_137 @a7
	mov %tmp_138 %varDef_211
	store %tmp_138 @b1
	mov %tmp_139 %varDef_212
	store %tmp_139 @a1
	mov %tmp_140 %varDef_213
	store %tmp_140 @a0
	mov %tmp_141 %varDef_214
	store %tmp_141 @b3
	mov %tmp_142 %varDef_215
	store %tmp_142 @b6
	mov %tmp_143 %varDef_216
	store %tmp_143 @b4
	mov %tmp_144 %varDef_217
	store %tmp_144 @i
	mov %tmp_145 %varDef_218
	store %tmp_145 @a8
	mov %tmp_146 %varDef_219
	store %tmp_146 @b2
	mov %tmp_147 %varDef_220
	store %tmp_147 @b8
	mov %tmp_148 %varDef_221
	store %tmp_148 @b10
	mov %tmp_149 %varDef_222
	store %tmp_149 @a10
	mov %tmp_150 %varDef_223
	store %tmp_150 @b5
	mov %tmp_151 %varDef_224
	store %tmp_151 @a3
	mov %tmp_152 %varDef_225
	store %tmp_152 @a9
	mov %tmp_153 %varDef_226
	store %tmp_153 @a5
	mov %tmp_154 %varDef_227
	store %tmp_154 @b0
	mov %tmp_155 %varDef_228
	store %tmp_155 @b9
	mov %tmp_156 %varDef_229
	store %tmp_156 @a4
	mov %tmp_157 %varDef_230
	store %tmp_157 @a2
	mov %tmp_158 %varDef_231
	store %tmp_158 @a6
	mov %tmp_159 %varDef_232
	store %tmp_159 @b7
	ret 0

}

