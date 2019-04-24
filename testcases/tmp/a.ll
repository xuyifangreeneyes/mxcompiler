define print

define println

define getString

define getInt

define toString

define _stringLength

define _stringSubstring

define _stringParseInt

define _stringOrd

define _arraySize

define _stringAdd

define _stringEq

define _stringNeq

define _stringLt

define _stringGt

define _stringLe

define _stringGe

define _globalInit ( ) {
<0> entry
	ret 

}

define func ( %argVal_0 %argVal_2 %argVal_4 ) {
<0> entry
	%argAddr_5 = alloca 8
	%argAddr_3 = alloca 8
	%argAddr_1 = alloca 8
	store %argVal_0 %argAddr_1
	store %argVal_2 %argAddr_3
	store %argVal_4 %argAddr_5
	%idVal_6 = load %argAddr_1
	%idVal_7 = load %argAddr_3
	%res_8 = add %idVal_6 %idVal_7
	%idVal_9 = load %argAddr_5
	%res_10 = add %res_8 %idVal_9
	%res_11 = lsft 1 30
	%res_12 = sub %res_11 1
	%res_13 = bit_and %res_10 %res_12
	ret %res_13

}

define main ( ) {
<0> entry
	%varAddr_272 = alloca 8
	%varAddr_49 = alloca 8
	%varAddr_48 = alloca 8
	%varAddr_47 = alloca 8
	%storageCell_40 = alloca 8
	%varAddr_32 = alloca 8
	%storageCell_25 = alloca 8
	%varAddr_17 = alloca 8
	%storageCell_10 = alloca 8
	%varAddr_2 = alloca 8
	%varAddr_0 = alloca 8
	%res_1 = getInt ( )
	store %res_1 %varAddr_0
	%idVal_3 = load %varAddr_0
	%idVal_4 = load %varAddr_0
	%memberLength_6 = mul %idVal_3 8
	%arrayLength_7 = add %memberLength_6 8
	%arrayPtr_5 = malloc %arrayLength_7
	store %idVal_3 %arrayPtr_5
	%arrayEndPos_8 = add %arrayPtr_5 %arrayLength_7
	%startPos_9 = add %arrayPtr_5 8
	store %startPos_9 %storageCell_10
	br <1>

<1> new_for_cond
	%pos_11 = load %storageCell_10
	%condition_12 = lt %pos_11 %arrayEndPos_8
	br %condition_12 <2> <4>

<2> new_for_body
	%memberLength_14 = mul %idVal_4 8
	%arrayLength_15 = add %memberLength_14 8
	%arrayPtr_13 = malloc %arrayLength_15
	store %idVal_4 %arrayPtr_13
	store %arrayPtr_13 %pos_11
	br <3>

<3> new_for_step
	%pos_16 = add %pos_11 8
	store %pos_16 %storageCell_10
	br <1>

<4> new_for_end
	store %arrayPtr_5 %varAddr_2
	%idVal_18 = load %varAddr_0
	%idVal_19 = load %varAddr_0
	%memberLength_21 = mul %idVal_18 8
	%arrayLength_22 = add %memberLength_21 8
	%arrayPtr_20 = malloc %arrayLength_22
	store %idVal_18 %arrayPtr_20
	%arrayEndPos_23 = add %arrayPtr_20 %arrayLength_22
	%startPos_24 = add %arrayPtr_20 8
	store %startPos_24 %storageCell_25
	br <5>

<5> new_for_cond
	%pos_26 = load %storageCell_25
	%condition_27 = lt %pos_26 %arrayEndPos_23
	br %condition_27 <6> <8>

<6> new_for_body
	%memberLength_29 = mul %idVal_19 8
	%arrayLength_30 = add %memberLength_29 8
	%arrayPtr_28 = malloc %arrayLength_30
	store %idVal_19 %arrayPtr_28
	store %arrayPtr_28 %pos_26
	br <7>

<7> new_for_step
	%pos_31 = add %pos_26 8
	store %pos_31 %storageCell_25
	br <5>

<8> new_for_end
	store %arrayPtr_20 %varAddr_17
	%idVal_33 = load %varAddr_0
	%idVal_34 = load %varAddr_0
	%memberLength_36 = mul %idVal_33 8
	%arrayLength_37 = add %memberLength_36 8
	%arrayPtr_35 = malloc %arrayLength_37
	store %idVal_33 %arrayPtr_35
	%arrayEndPos_38 = add %arrayPtr_35 %arrayLength_37
	%startPos_39 = add %arrayPtr_35 8
	store %startPos_39 %storageCell_40
	br <9>

<9> new_for_cond
	%pos_41 = load %storageCell_40
	%condition_42 = lt %pos_41 %arrayEndPos_38
	br %condition_42 <10> <12>

<10> new_for_body
	%memberLength_44 = mul %idVal_34 8
	%arrayLength_45 = add %memberLength_44 8
	%arrayPtr_43 = malloc %arrayLength_45
	store %idVal_34 %arrayPtr_43
	store %arrayPtr_43 %pos_41
	br <11>

<11> new_for_step
	%pos_46 = add %pos_41 8
	store %pos_46 %storageCell_40
	br <9>

<12> new_for_end
	store %arrayPtr_35 %varAddr_32
	store 0 %varAddr_47
	br <13>

<13> for_cond
	%idVal_50 = load %varAddr_47
	%idVal_51 = load %varAddr_0
	%res_52 = lt %idVal_50 %idVal_51
	br %res_52 <14> <16>

<14> for_body
	store 0 %varAddr_48
	br <17>

<17> for_cond
	%idVal_53 = load %varAddr_48
	%idVal_54 = load %varAddr_0
	%res_55 = lt %idVal_53 %idVal_54
	br %res_55 <18> <20>

<18> for_body
	%idVal_56 = load %varAddr_47
	%idVal_57 = load %varAddr_48
	%res_58 = add %idVal_56 %idVal_57
	%arrayPtr_59 = load %varAddr_2
	%arrayBase_60 = add %arrayPtr_59 8
	%idVal_61 = load %varAddr_47
	%offset_62 = mul %idVal_61 8
	%elementAddr_63 = add %arrayBase_60 %offset_62
	%arrayPtr_64 = load %elementAddr_63
	%arrayBase_65 = add %arrayPtr_64 8
	%idVal_66 = load %varAddr_48
	%offset_67 = mul %idVal_66 8
	%elementAddr_68 = add %arrayBase_65 %offset_67
	store %res_58 %elementAddr_68
	br <19>

<19> for_step
	%idVal_69 = load %varAddr_48
	%oldVal_70 = load %varAddr_48
	%newVal_71 = inc %oldVal_70
	store %newVal_71 %varAddr_48
	br <17>

<20> for_end
	br <15>

<15> for_step
	%idVal_72 = load %varAddr_47
	%oldVal_73 = load %varAddr_47
	%newVal_74 = inc %oldVal_73
	store %newVal_74 %varAddr_47
	br <13>

<16> for_end
	store 0 %varAddr_47
	br <21>

<21> for_cond
	%idVal_75 = load %varAddr_47
	%idVal_76 = load %varAddr_0
	%res_77 = lt %idVal_75 %idVal_76
	br %res_77 <22> <24>

<22> for_body
	store 0 %varAddr_48
	br <25>

<25> for_cond
	%idVal_78 = load %varAddr_48
	%idVal_79 = load %varAddr_0
	%res_80 = lt %idVal_78 %idVal_79
	br %res_80 <26> <28>

<26> for_body
	store 0 %varAddr_49
	br <29>

<29> for_cond
	%idVal_81 = load %varAddr_49
	%idVal_82 = load %varAddr_0
	%res_83 = lt %idVal_81 %idVal_82
	br %res_83 <30> <32>

<30> for_body
	%idVal_84 = load %varAddr_48
	%idVal_85 = load %varAddr_47
	%res_86 = ge %idVal_84 %idVal_85
	br %res_86 <33> <34>

<33> if_true
	%arrayPtr_88 = load %varAddr_17
	%arrayBase_89 = add %arrayPtr_88 8
	%idVal_90 = load %varAddr_47
	%offset_91 = mul %idVal_90 8
	%elementAddr_92 = add %arrayBase_89 %offset_91
	%arrayPtr_93 = load %elementAddr_92
	%arrayBase_94 = add %arrayPtr_93 8
	%idVal_95 = load %varAddr_48
	%offset_96 = mul %idVal_95 8
	%elementAddr_97 = add %arrayBase_94 %offset_96
	%elementVal_98 = load %elementAddr_97
	%arrayPtr_99 = load %varAddr_2
	%arrayBase_100 = add %arrayPtr_99 8
	%idVal_101 = load %varAddr_47
	%offset_102 = mul %idVal_101 8
	%elementAddr_103 = add %arrayBase_100 %offset_102
	%arrayPtr_104 = load %elementAddr_103
	%arrayBase_105 = add %arrayPtr_104 8
	%idVal_106 = load %varAddr_49
	%offset_107 = mul %idVal_106 8
	%elementAddr_108 = add %arrayBase_105 %offset_107
	%elementVal_109 = load %elementAddr_108
	%arrayPtr_110 = load %varAddr_2
	%arrayBase_111 = add %arrayPtr_110 8
	%idVal_112 = load %varAddr_49
	%offset_113 = mul %idVal_112 8
	%elementAddr_114 = add %arrayBase_111 %offset_113
	%arrayPtr_115 = load %elementAddr_114
	%arrayBase_116 = add %arrayPtr_115 8
	%idVal_117 = load %varAddr_48
	%offset_118 = mul %idVal_117 8
	%elementAddr_119 = add %arrayBase_116 %offset_118
	%elementVal_120 = load %elementAddr_119
	%res_87 = func ( %elementVal_98 %elementVal_109 %elementVal_120 )
	%arrayPtr_121 = load %varAddr_17
	%arrayBase_122 = add %arrayPtr_121 8
	%idVal_123 = load %varAddr_47
	%offset_124 = mul %idVal_123 8
	%elementAddr_125 = add %arrayBase_122 %offset_124
	%arrayPtr_126 = load %elementAddr_125
	%arrayBase_127 = add %arrayPtr_126 8
	%idVal_128 = load %varAddr_48
	%offset_129 = mul %idVal_128 8
	%elementAddr_130 = add %arrayBase_127 %offset_129
	store %res_87 %elementAddr_130
	%arrayPtr_132 = load %varAddr_17
	%arrayBase_133 = add %arrayPtr_132 8
	%idVal_134 = load %varAddr_47
	%offset_135 = mul %idVal_134 8
	%elementAddr_136 = add %arrayBase_133 %offset_135
	%arrayPtr_137 = load %elementAddr_136
	%arrayBase_138 = add %arrayPtr_137 8
	%idVal_139 = load %varAddr_48
	%offset_140 = mul %idVal_139 8
	%elementAddr_141 = add %arrayBase_138 %offset_140
	%elementVal_142 = load %elementAddr_141
	%arrayPtr_143 = load %varAddr_2
	%arrayBase_144 = add %arrayPtr_143 8
	%idVal_145 = load %varAddr_47
	%offset_146 = mul %idVal_145 8
	%elementAddr_147 = add %arrayBase_144 %offset_146
	%arrayPtr_148 = load %elementAddr_147
	%arrayBase_149 = add %arrayPtr_148 8
	%idVal_150 = load %varAddr_49
	%offset_151 = mul %idVal_150 8
	%elementAddr_152 = add %arrayBase_149 %offset_151
	%elementVal_153 = load %elementAddr_152
	%arrayPtr_154 = load %varAddr_2
	%arrayBase_155 = add %arrayPtr_154 8
	%idVal_156 = load %varAddr_49
	%offset_157 = mul %idVal_156 8
	%elementAddr_158 = add %arrayBase_155 %offset_157
	%arrayPtr_159 = load %elementAddr_158
	%arrayBase_160 = add %arrayPtr_159 8
	%idVal_161 = load %varAddr_48
	%offset_162 = mul %idVal_161 8
	%elementAddr_163 = add %arrayBase_160 %offset_162
	%elementVal_164 = load %elementAddr_163
	%res_131 = func ( %elementVal_142 %elementVal_153 %elementVal_164 )
	%arrayPtr_165 = load %varAddr_32
	%arrayBase_166 = add %arrayPtr_165 8
	%idVal_167 = load %varAddr_47
	%offset_168 = mul %idVal_167 8
	%elementAddr_169 = add %arrayBase_166 %offset_168
	%arrayPtr_170 = load %elementAddr_169
	%arrayBase_171 = add %arrayPtr_170 8
	%idVal_172 = load %varAddr_48
	%offset_173 = mul %idVal_172 8
	%elementAddr_174 = add %arrayBase_171 %offset_173
	store %res_131 %elementAddr_174
	%arrayPtr_176 = load %varAddr_17
	%arrayBase_177 = add %arrayPtr_176 8
	%idVal_178 = load %varAddr_47
	%offset_179 = mul %idVal_178 8
	%elementAddr_180 = add %arrayBase_177 %offset_179
	%arrayPtr_181 = load %elementAddr_180
	%arrayBase_182 = add %arrayPtr_181 8
	%idVal_183 = load %varAddr_48
	%offset_184 = mul %idVal_183 8
	%elementAddr_185 = add %arrayBase_182 %offset_184
	%elementVal_186 = load %elementAddr_185
	%arrayPtr_187 = load %varAddr_2
	%arrayBase_188 = add %arrayPtr_187 8
	%idVal_189 = load %varAddr_47
	%offset_190 = mul %idVal_189 8
	%elementAddr_191 = add %arrayBase_188 %offset_190
	%arrayPtr_192 = load %elementAddr_191
	%arrayBase_193 = add %arrayPtr_192 8
	%idVal_194 = load %varAddr_49
	%offset_195 = mul %idVal_194 8
	%elementAddr_196 = add %arrayBase_193 %offset_195
	%elementVal_197 = load %elementAddr_196
	%arrayPtr_198 = load %varAddr_2
	%arrayBase_199 = add %arrayPtr_198 8
	%idVal_200 = load %varAddr_49
	%offset_201 = mul %idVal_200 8
	%elementAddr_202 = add %arrayBase_199 %offset_201
	%arrayPtr_203 = load %elementAddr_202
	%arrayBase_204 = add %arrayPtr_203 8
	%idVal_205 = load %varAddr_48
	%offset_206 = mul %idVal_205 8
	%elementAddr_207 = add %arrayBase_204 %offset_206
	%elementVal_208 = load %elementAddr_207
	%res_175 = func ( %elementVal_186 %elementVal_197 %elementVal_208 )
	%arrayPtr_209 = load %varAddr_32
	%arrayBase_210 = add %arrayPtr_209 8
	%idVal_211 = load %varAddr_47
	%offset_212 = mul %idVal_211 8
	%elementAddr_213 = add %arrayBase_210 %offset_212
	%arrayPtr_214 = load %elementAddr_213
	%arrayBase_215 = add %arrayPtr_214 8
	%idVal_216 = load %varAddr_48
	%offset_217 = mul %idVal_216 8
	%elementAddr_218 = add %arrayBase_215 %offset_217
	store %res_175 %elementAddr_218
	%arrayPtr_220 = load %varAddr_17
	%arrayBase_221 = add %arrayPtr_220 8
	%idVal_222 = load %varAddr_47
	%offset_223 = mul %idVal_222 8
	%elementAddr_224 = add %arrayBase_221 %offset_223
	%arrayPtr_225 = load %elementAddr_224
	%arrayBase_226 = add %arrayPtr_225 8
	%idVal_227 = load %varAddr_48
	%offset_228 = mul %idVal_227 8
	%elementAddr_229 = add %arrayBase_226 %offset_228
	%elementVal_230 = load %elementAddr_229
	%arrayPtr_231 = load %varAddr_2
	%arrayBase_232 = add %arrayPtr_231 8
	%idVal_233 = load %varAddr_47
	%offset_234 = mul %idVal_233 8
	%elementAddr_235 = add %arrayBase_232 %offset_234
	%arrayPtr_236 = load %elementAddr_235
	%arrayBase_237 = add %arrayPtr_236 8
	%idVal_238 = load %varAddr_49
	%offset_239 = mul %idVal_238 8
	%elementAddr_240 = add %arrayBase_237 %offset_239
	%elementVal_241 = load %elementAddr_240
	%arrayPtr_242 = load %varAddr_2
	%arrayBase_243 = add %arrayPtr_242 8
	%idVal_244 = load %varAddr_49
	%offset_245 = mul %idVal_244 8
	%elementAddr_246 = add %arrayBase_243 %offset_245
	%arrayPtr_247 = load %elementAddr_246
	%arrayBase_248 = add %arrayPtr_247 8
	%idVal_249 = load %varAddr_48
	%offset_250 = mul %idVal_249 8
	%elementAddr_251 = add %arrayBase_248 %offset_250
	%elementVal_252 = load %elementAddr_251
	%res_219 = func ( %elementVal_230 %elementVal_241 %elementVal_252 )
	%arrayPtr_253 = load %varAddr_32
	%arrayBase_254 = add %arrayPtr_253 8
	%idVal_255 = load %varAddr_47
	%offset_256 = mul %idVal_255 8
	%elementAddr_257 = add %arrayBase_254 %offset_256
	%arrayPtr_258 = load %elementAddr_257
	%arrayBase_259 = add %arrayPtr_258 8
	%idVal_260 = load %varAddr_48
	%offset_261 = mul %idVal_260 8
	%elementAddr_262 = add %arrayBase_259 %offset_261
	store %res_219 %elementAddr_262
	br <34>

<34> if_merge
	br <31>

<31> for_step
	%idVal_263 = load %varAddr_49
	%oldVal_264 = load %varAddr_49
	%newVal_265 = inc %oldVal_264
	store %newVal_265 %varAddr_49
	br <29>

<32> for_end
	br <27>

<27> for_step
	%idVal_266 = load %varAddr_48
	%oldVal_267 = load %varAddr_48
	%newVal_268 = inc %oldVal_267
	store %newVal_268 %varAddr_48
	br <25>

<28> for_end
	br <23>

<23> for_step
	%idVal_269 = load %varAddr_47
	%oldVal_270 = load %varAddr_47
	%newVal_271 = inc %oldVal_270
	store %newVal_271 %varAddr_47
	br <21>

<24> for_end
	store 0 %varAddr_272
	store 0 %varAddr_47
	br <35>

<35> for_cond
	%idVal_273 = load %varAddr_47
	%idVal_274 = load %varAddr_0
	%res_275 = lt %idVal_273 %idVal_274
	br %res_275 <36> <38>

<36> for_body
	store 0 %varAddr_48
	br <39>

<39> for_cond
	%idVal_276 = load %varAddr_48
	%idVal_277 = load %varAddr_0
	%res_278 = lt %idVal_276 %idVal_277
	br %res_278 <40> <42>

<40> for_body
	%idVal_279 = load %varAddr_272
	%arrayPtr_280 = load %varAddr_17
	%arrayBase_281 = add %arrayPtr_280 8
	%idVal_282 = load %varAddr_47
	%offset_283 = mul %idVal_282 8
	%elementAddr_284 = add %arrayBase_281 %offset_283
	%arrayPtr_285 = load %elementAddr_284
	%arrayBase_286 = add %arrayPtr_285 8
	%idVal_287 = load %varAddr_48
	%offset_288 = mul %idVal_287 8
	%elementAddr_289 = add %arrayBase_286 %offset_288
	%elementVal_290 = load %elementAddr_289
	%res_291 = add %idVal_279 %elementVal_290
	%res_292 = lsft 1 30
	%res_293 = sub %res_292 1
	%res_294 = bit_and %res_291 %res_293
	store %res_294 %varAddr_272
	br <41>

<41> for_step
	%idVal_295 = load %varAddr_48
	%oldVal_296 = load %varAddr_48
	%newVal_297 = inc %oldVal_296
	store %newVal_297 %varAddr_48
	br <39>

<42> for_end
	br <37>

<37> for_step
	%idVal_298 = load %varAddr_47
	%oldVal_299 = load %varAddr_47
	%newVal_300 = inc %oldVal_299
	store %newVal_300 %varAddr_47
	br <35>

<38> for_end
	%idVal_302 = load %varAddr_272
	%res_301 = toString ( %idVal_302 )
	print ( %res_301 )
	ret 0

}

