$str_0 "A"

$str_1 "B"

$str_2 "C"

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
	ret 

}

define cd ( %argVal_0 %argVal_2 %argVal_4 %argVal_6 %argVal_8 ) {
<0> entry
	mov %varDef_207 %argVal_0
	mov %varDef_208 %argVal_2
	mov %varDef_209 %argVal_4
	mov %varDef_210 %argVal_6
	mov %varDef_211 %argVal_8
	mov %idVal_10 %varDef_207
	%res_11 = eq %idVal_10 1
	br %res_11 <1> <2>

<1> if_true
	mov %idVal_12 %varDef_211
	mov %oldVal_13 %varDef_211
	%newVal_14 = inc %oldVal_13
	mov %varDef_212 %newVal_14
	br <3>

<2> if_false
	mov %idVal_16 %varDef_207
	%res_17 = sub %idVal_16 1
	mov %idVal_18 %varDef_208
	mov %idVal_19 %varDef_210
	mov %idVal_20 %varDef_209
	mov %idVal_21 %varDef_211
	mov %varDef_213 %res_17
	mov %varDef_214 %idVal_18
	mov %varDef_215 %idVal_19
	mov %varDef_216 %idVal_20
	mov %varDef_217 %idVal_21
	mov %cidVal_39 %varDef_213
	%cres_40 = eq %cidVal_39 1
	br %cres_40 <6> <7>

<6> cif_true
	mov %cidVal_41 %varDef_217
	mov %coldVal_42 %varDef_217
	%cnewVal_43 = inc %coldVal_42
	mov %varDef_218 %cnewVal_43
	br <8>

<7> cif_false
	mov %cidVal_44 %varDef_213
	%cres_45 = sub %cidVal_44 1
	mov %cidVal_46 %varDef_214
	mov %cidVal_47 %varDef_216
	mov %cidVal_48 %varDef_215
	mov %cidVal_49 %varDef_217
	mov %varDef_219 %cres_45
	mov %varDef_220 %cidVal_46
	mov %varDef_221 %cidVal_47
	mov %varDef_222 %cidVal_48
	mov %varDef_223 %cidVal_49
	mov %cidVal_97 %varDef_219
	%cres_98 = eq %cidVal_97 1
	br %cres_98 <16> <17>

<16> cif_true
	mov %cidVal_99 %varDef_223
	mov %coldVal_100 %varDef_223
	%cnewVal_101 = inc %coldVal_100
	mov %varDef_224 %cnewVal_101
	br <18>

<17> cif_false
	mov %cidVal_102 %varDef_219
	%cres_103 = sub %cidVal_102 1
	mov %cidVal_104 %varDef_220
	mov %cidVal_105 %varDef_222
	mov %cidVal_106 %varDef_221
	mov %cidVal_107 %varDef_223
	%cres_108 = cd ( %cres_103 %cidVal_104 %cidVal_105 %cidVal_106 %cidVal_107 )
	mov %varDef_225 %cres_108
	mov %cidVal_109 %varDef_219
	%cres_110 = sub %cidVal_109 1
	mov %cidVal_111 %varDef_221
	mov %cidVal_112 %varDef_220
	mov %cidVal_113 %varDef_222
	mov %cidVal_114 %varDef_225
	%cres_115 = cd ( %cres_110 %cidVal_111 %cidVal_112 %cidVal_113 %cidVal_114 )
	mov %varDef_226 %cres_115
	mov %cidVal_116 %varDef_226
	mov %coldVal_117 %varDef_226
	%cnewVal_118 = inc %coldVal_117
	mov %varDef_227 %cnewVal_118
	br <18>

<18> cif_merge
	%varDef_228 = phi <16> %varDef_224 <17> %varDef_227
	mov %cidVal_119 %varDef_228
	mov %varDef_229 %cidVal_119
	mov %cres_50 %varDef_229
	mov %varDef_230 %cres_50
	mov %cidVal_51 %varDef_213
	%cres_52 = sub %cidVal_51 1
	mov %cidVal_53 %varDef_215
	mov %cidVal_54 %varDef_214
	mov %cidVal_55 %varDef_216
	mov %cidVal_56 %varDef_230
	mov %varDef_231 %cres_52
	mov %varDef_232 %cidVal_53
	mov %varDef_233 %cidVal_54
	mov %varDef_234 %cidVal_55
	mov %varDef_235 %cidVal_56
	mov %cidVal_126 %varDef_231
	%cres_127 = eq %cidVal_126 1
	br %cres_127 <21> <22>

<21> cif_true
	mov %cidVal_128 %varDef_235
	mov %coldVal_129 %varDef_235
	%cnewVal_130 = inc %coldVal_129
	mov %varDef_236 %cnewVal_130
	br <23>

<22> cif_false
	mov %cidVal_131 %varDef_231
	%cres_132 = sub %cidVal_131 1
	mov %cidVal_133 %varDef_232
	mov %cidVal_134 %varDef_234
	mov %cidVal_135 %varDef_233
	mov %cidVal_136 %varDef_235
	%cres_137 = cd ( %cres_132 %cidVal_133 %cidVal_134 %cidVal_135 %cidVal_136 )
	mov %varDef_237 %cres_137
	mov %cidVal_138 %varDef_231
	%cres_139 = sub %cidVal_138 1
	mov %cidVal_140 %varDef_233
	mov %cidVal_141 %varDef_232
	mov %cidVal_142 %varDef_234
	mov %cidVal_143 %varDef_237
	%cres_144 = cd ( %cres_139 %cidVal_140 %cidVal_141 %cidVal_142 %cidVal_143 )
	mov %varDef_238 %cres_144
	mov %cidVal_145 %varDef_238
	mov %coldVal_146 %varDef_238
	%cnewVal_147 = inc %coldVal_146
	mov %varDef_239 %cnewVal_147
	br <23>

<23> cif_merge
	%varDef_240 = phi <21> %varDef_236 <22> %varDef_239
	mov %cidVal_148 %varDef_240
	mov %varDef_241 %cidVal_148
	mov %cres_57 %varDef_241
	mov %varDef_242 %cres_57
	mov %cidVal_58 %varDef_242
	mov %coldVal_59 %varDef_242
	%cnewVal_60 = inc %coldVal_59
	mov %varDef_243 %cnewVal_60
	br <8>

<8> cif_merge
	%varDef_244 = phi <6> %varDef_218 <23> %varDef_243
	%varDef_245 = phi <6> 0 <23> %varDef_229
	%varDef_246 = phi <6> 0 <23> %varDef_228
	%varDef_247 = phi <6> 0 <23> %varDef_222
	%varDef_248 = phi <6> 0 <23> %varDef_221
	%varDef_249 = phi <6> 0 <23> %varDef_220
	%varDef_250 = phi <6> 0 <23> %varDef_219
	%varDef_251 = phi <6> 0 <23> %varDef_241
	%varDef_252 = phi <6> 0 <23> %varDef_240
	%varDef_253 = phi <6> 0 <23> %varDef_234
	%varDef_254 = phi <6> 0 <23> %varDef_233
	%varDef_255 = phi <6> 0 <23> %varDef_232
	%varDef_256 = phi <6> 0 <23> %varDef_231
	mov %cidVal_61 %varDef_244
	mov %varDef_257 %cidVal_61
	mov %res_15 %varDef_257
	mov %varDef_258 %res_15
	mov %idVal_23 %varDef_207
	%res_24 = sub %idVal_23 1
	mov %idVal_25 %varDef_209
	mov %idVal_26 %varDef_208
	mov %idVal_27 %varDef_210
	mov %idVal_28 %varDef_258
	mov %varDef_259 %res_24
	mov %varDef_260 %idVal_25
	mov %varDef_261 %idVal_26
	mov %varDef_262 %idVal_27
	mov %varDef_263 %idVal_28
	mov %cidVal_68 %varDef_259
	%cres_69 = eq %cidVal_68 1
	br %cres_69 <11> <12>

<11> cif_true
	mov %cidVal_70 %varDef_263
	mov %coldVal_71 %varDef_263
	%cnewVal_72 = inc %coldVal_71
	mov %varDef_264 %cnewVal_72
	br <13>

<12> cif_false
	mov %cidVal_73 %varDef_259
	%cres_74 = sub %cidVal_73 1
	mov %cidVal_75 %varDef_260
	mov %cidVal_76 %varDef_262
	mov %cidVal_77 %varDef_261
	mov %cidVal_78 %varDef_263
	mov %varDef_265 %cres_74
	mov %varDef_266 %cidVal_75
	mov %varDef_267 %cidVal_76
	mov %varDef_268 %cidVal_77
	mov %varDef_269 %cidVal_78
	mov %cidVal_155 %varDef_265
	%cres_156 = eq %cidVal_155 1
	br %cres_156 <26> <27>

<26> cif_true
	mov %cidVal_157 %varDef_269
	mov %coldVal_158 %varDef_269
	%cnewVal_159 = inc %coldVal_158
	mov %varDef_270 %cnewVal_159
	br <28>

<27> cif_false
	mov %cidVal_160 %varDef_265
	%cres_161 = sub %cidVal_160 1
	mov %cidVal_162 %varDef_266
	mov %cidVal_163 %varDef_268
	mov %cidVal_164 %varDef_267
	mov %cidVal_165 %varDef_269
	%cres_166 = cd ( %cres_161 %cidVal_162 %cidVal_163 %cidVal_164 %cidVal_165 )
	mov %varDef_271 %cres_166
	mov %cidVal_167 %varDef_265
	%cres_168 = sub %cidVal_167 1
	mov %cidVal_169 %varDef_267
	mov %cidVal_170 %varDef_266
	mov %cidVal_171 %varDef_268
	mov %cidVal_172 %varDef_271
	%cres_173 = cd ( %cres_168 %cidVal_169 %cidVal_170 %cidVal_171 %cidVal_172 )
	mov %varDef_272 %cres_173
	mov %cidVal_174 %varDef_272
	mov %coldVal_175 %varDef_272
	%cnewVal_176 = inc %coldVal_175
	mov %varDef_273 %cnewVal_176
	br <28>

<28> cif_merge
	%varDef_274 = phi <26> %varDef_270 <27> %varDef_273
	mov %cidVal_177 %varDef_274
	mov %varDef_275 %cidVal_177
	mov %cres_79 %varDef_275
	mov %varDef_276 %cres_79
	mov %cidVal_80 %varDef_259
	%cres_81 = sub %cidVal_80 1
	mov %cidVal_82 %varDef_261
	mov %cidVal_83 %varDef_260
	mov %cidVal_84 %varDef_262
	mov %cidVal_85 %varDef_276
	mov %varDef_277 %cres_81
	mov %varDef_278 %cidVal_82
	mov %varDef_279 %cidVal_83
	mov %varDef_280 %cidVal_84
	mov %varDef_281 %cidVal_85
	mov %cidVal_184 %varDef_277
	%cres_185 = eq %cidVal_184 1
	br %cres_185 <31> <32>

<31> cif_true
	mov %cidVal_186 %varDef_281
	mov %coldVal_187 %varDef_281
	%cnewVal_188 = inc %coldVal_187
	mov %varDef_282 %cnewVal_188
	br <33>

<32> cif_false
	mov %cidVal_189 %varDef_277
	%cres_190 = sub %cidVal_189 1
	mov %cidVal_191 %varDef_278
	mov %cidVal_192 %varDef_280
	mov %cidVal_193 %varDef_279
	mov %cidVal_194 %varDef_281
	%cres_195 = cd ( %cres_190 %cidVal_191 %cidVal_192 %cidVal_193 %cidVal_194 )
	mov %varDef_283 %cres_195
	mov %cidVal_196 %varDef_277
	%cres_197 = sub %cidVal_196 1
	mov %cidVal_198 %varDef_279
	mov %cidVal_199 %varDef_278
	mov %cidVal_200 %varDef_280
	mov %cidVal_201 %varDef_283
	%cres_202 = cd ( %cres_197 %cidVal_198 %cidVal_199 %cidVal_200 %cidVal_201 )
	mov %varDef_284 %cres_202
	mov %cidVal_203 %varDef_284
	mov %coldVal_204 %varDef_284
	%cnewVal_205 = inc %coldVal_204
	mov %varDef_285 %cnewVal_205
	br <33>

<33> cif_merge
	%varDef_286 = phi <31> %varDef_282 <32> %varDef_285
	mov %cidVal_206 %varDef_286
	mov %varDef_287 %cidVal_206
	mov %cres_86 %varDef_287
	mov %varDef_288 %cres_86
	mov %cidVal_87 %varDef_288
	mov %coldVal_88 %varDef_288
	%cnewVal_89 = inc %coldVal_88
	mov %varDef_289 %cnewVal_89
	br <13>

<13> cif_merge
	%varDef_290 = phi <11> %varDef_264 <33> %varDef_289
	%varDef_291 = phi <11> 0 <33> %varDef_275
	%varDef_292 = phi <11> 0 <33> %varDef_274
	%varDef_293 = phi <11> 0 <33> %varDef_268
	%varDef_294 = phi <11> 0 <33> %varDef_267
	%varDef_295 = phi <11> 0 <33> %varDef_266
	%varDef_296 = phi <11> 0 <33> %varDef_265
	%varDef_297 = phi <11> 0 <33> %varDef_287
	%varDef_298 = phi <11> 0 <33> %varDef_286
	%varDef_299 = phi <11> 0 <33> %varDef_280
	%varDef_300 = phi <11> 0 <33> %varDef_279
	%varDef_301 = phi <11> 0 <33> %varDef_278
	%varDef_302 = phi <11> 0 <33> %varDef_277
	mov %cidVal_90 %varDef_290
	mov %varDef_303 %cidVal_90
	mov %res_22 %varDef_303
	mov %varDef_304 %res_22
	mov %idVal_29 %varDef_304
	mov %oldVal_30 %varDef_304
	%newVal_31 = inc %oldVal_30
	mov %varDef_305 %newVal_31
	br <3>

<3> if_merge
	%varDef_306 = phi <1> %varDef_212 <13> %varDef_305
	%varDef_307 = phi <1> 0 <13> %varDef_257
	%varDef_308 = phi <1> 0 <13> %varDef_244
	%varDef_309 = phi <1> 0 <13> %varDef_216
	%varDef_310 = phi <1> 0 <13> %varDef_215
	%varDef_311 = phi <1> 0 <13> %varDef_214
	%varDef_312 = phi <1> 0 <13> %varDef_213
	%varDef_313 = phi <1> 0 <13> %varDef_303
	%varDef_314 = phi <1> 0 <13> %varDef_290
	%varDef_315 = phi <1> 0 <13> %varDef_262
	%varDef_316 = phi <1> 0 <13> %varDef_261
	%varDef_317 = phi <1> 0 <13> %varDef_260
	%varDef_318 = phi <1> 0 <13> %varDef_259
	%varDef_319 = phi <1> 0 <13> %varDef_245
	%varDef_320 = phi <1> 0 <13> %varDef_246
	%varDef_321 = phi <1> 0 <13> %varDef_247
	%varDef_322 = phi <1> 0 <13> %varDef_248
	%varDef_323 = phi <1> 0 <13> %varDef_249
	%varDef_324 = phi <1> 0 <13> %varDef_250
	%varDef_325 = phi <1> 0 <13> %varDef_251
	%varDef_326 = phi <1> 0 <13> %varDef_252
	%varDef_327 = phi <1> 0 <13> %varDef_253
	%varDef_328 = phi <1> 0 <13> %varDef_254
	%varDef_329 = phi <1> 0 <13> %varDef_255
	%varDef_330 = phi <1> 0 <13> %varDef_256
	%varDef_331 = phi <1> 0 <13> %varDef_291
	%varDef_332 = phi <1> 0 <13> %varDef_292
	%varDef_333 = phi <1> 0 <13> %varDef_293
	%varDef_334 = phi <1> 0 <13> %varDef_294
	%varDef_335 = phi <1> 0 <13> %varDef_295
	%varDef_336 = phi <1> 0 <13> %varDef_296
	%varDef_337 = phi <1> 0 <13> %varDef_297
	%varDef_338 = phi <1> 0 <13> %varDef_298
	%varDef_339 = phi <1> 0 <13> %varDef_299
	%varDef_340 = phi <1> 0 <13> %varDef_300
	%varDef_341 = phi <1> 0 <13> %varDef_301
	%varDef_342 = phi <1> 0 <13> %varDef_302
	mov %idVal_32 %varDef_306
	ret %idVal_32

}

define main ( ) {
<0> entry
	mov %varDef_99 $str_0
	mov %varDef_100 $str_1
	mov %varDef_101 $str_2
	%res_4 = getInt ( )
	mov %varDef_102 %res_4
	mov %idVal_7 %varDef_102
	mov %idVal_8 %varDef_99
	mov %idVal_9 %varDef_100
	mov %idVal_10 %varDef_101
	br <2>

<2> centry
	mov %varDef_103 %idVal_7
	mov %varDef_104 %idVal_8
	mov %varDef_105 %idVal_9
	mov %varDef_106 %idVal_10
	mov %varDef_107 0
	mov %cidVal_18 %varDef_103
	%cres_19 = eq %cidVal_18 1
	br %cres_19 <3> <4>

<3> cif_true
	mov %cidVal_20 %varDef_107
	mov %coldVal_21 %varDef_107
	%cnewVal_22 = inc %coldVal_21
	mov %varDef_108 %cnewVal_22
	br <5>

<4> cif_false
	mov %cidVal_23 %varDef_103
	%cres_24 = sub %cidVal_23 1
	mov %cidVal_25 %varDef_104
	mov %cidVal_26 %varDef_106
	mov %cidVal_27 %varDef_105
	mov %cidVal_28 %varDef_107
	mov %varDef_109 %cres_24
	mov %varDef_110 %cidVal_25
	mov %varDef_111 %cidVal_26
	mov %varDef_112 %cidVal_27
	mov %varDef_113 %cidVal_28
	mov %cidVal_47 %varDef_109
	%cres_48 = eq %cidVal_47 1
	br %cres_48 <8> <9>

<8> cif_true
	mov %cidVal_49 %varDef_113
	mov %coldVal_50 %varDef_113
	%cnewVal_51 = inc %coldVal_50
	mov %varDef_114 %cnewVal_51
	br <10>

<9> cif_false
	mov %cidVal_52 %varDef_109
	%cres_53 = sub %cidVal_52 1
	mov %cidVal_54 %varDef_110
	mov %cidVal_55 %varDef_112
	mov %cidVal_56 %varDef_111
	mov %cidVal_57 %varDef_113
	%cres_58 = cd ( %cres_53 %cidVal_54 %cidVal_55 %cidVal_56 %cidVal_57 )
	mov %varDef_115 %cres_58
	mov %cidVal_59 %varDef_109
	%cres_60 = sub %cidVal_59 1
	mov %cidVal_61 %varDef_111
	mov %cidVal_62 %varDef_110
	mov %cidVal_63 %varDef_112
	mov %cidVal_64 %varDef_115
	%cres_65 = cd ( %cres_60 %cidVal_61 %cidVal_62 %cidVal_63 %cidVal_64 )
	mov %varDef_116 %cres_65
	mov %cidVal_66 %varDef_116
	mov %coldVal_67 %varDef_116
	%cnewVal_68 = inc %coldVal_67
	mov %varDef_117 %cnewVal_68
	br <10>

<10> cif_merge
	%varDef_118 = phi <8> %varDef_114 <9> %varDef_117
	mov %cidVal_69 %varDef_118
	mov %varDef_119 %cidVal_69
	mov %cres_29 %varDef_119
	mov %varDef_120 %cres_29
	mov %cidVal_30 %varDef_103
	%cres_31 = sub %cidVal_30 1
	mov %cidVal_32 %varDef_105
	mov %cidVal_33 %varDef_104
	mov %cidVal_34 %varDef_106
	mov %cidVal_35 %varDef_120
	mov %varDef_121 %cres_31
	mov %varDef_122 %cidVal_32
	mov %varDef_123 %cidVal_33
	mov %varDef_124 %cidVal_34
	mov %varDef_125 %cidVal_35
	mov %cidVal_76 %varDef_121
	%cres_77 = eq %cidVal_76 1
	br %cres_77 <13> <14>

<13> cif_true
	mov %cidVal_78 %varDef_125
	mov %coldVal_79 %varDef_125
	%cnewVal_80 = inc %coldVal_79
	mov %varDef_126 %cnewVal_80
	br <15>

<14> cif_false
	mov %cidVal_81 %varDef_121
	%cres_82 = sub %cidVal_81 1
	mov %cidVal_83 %varDef_122
	mov %cidVal_84 %varDef_124
	mov %cidVal_85 %varDef_123
	mov %cidVal_86 %varDef_125
	%cres_87 = cd ( %cres_82 %cidVal_83 %cidVal_84 %cidVal_85 %cidVal_86 )
	mov %varDef_127 %cres_87
	mov %cidVal_88 %varDef_121
	%cres_89 = sub %cidVal_88 1
	mov %cidVal_90 %varDef_123
	mov %cidVal_91 %varDef_122
	mov %cidVal_92 %varDef_124
	mov %cidVal_93 %varDef_127
	%cres_94 = cd ( %cres_89 %cidVal_90 %cidVal_91 %cidVal_92 %cidVal_93 )
	mov %varDef_128 %cres_94
	mov %cidVal_95 %varDef_128
	mov %coldVal_96 %varDef_128
	%cnewVal_97 = inc %coldVal_96
	mov %varDef_129 %cnewVal_97
	br <15>

<15> cif_merge
	%varDef_130 = phi <13> %varDef_126 <14> %varDef_129
	mov %cidVal_98 %varDef_130
	mov %varDef_131 %cidVal_98
	mov %cres_36 %varDef_131
	mov %varDef_132 %cres_36
	mov %cidVal_37 %varDef_132
	mov %coldVal_38 %varDef_132
	%cnewVal_39 = inc %coldVal_38
	mov %varDef_133 %cnewVal_39
	br <5>

<5> cif_merge
	%varDef_134 = phi <3> %varDef_108 <15> %varDef_133
	%varDef_135 = phi <3> 0 <15> %varDef_119
	%varDef_136 = phi <3> 0 <15> %varDef_118
	%varDef_137 = phi <3> 0 <15> %varDef_112
	%varDef_138 = phi <3> 0 <15> %varDef_111
	%varDef_139 = phi <3> 0 <15> %varDef_110
	%varDef_140 = phi <3> 0 <15> %varDef_109
	%varDef_141 = phi <3> 0 <15> %varDef_131
	%varDef_142 = phi <3> 0 <15> %varDef_130
	%varDef_143 = phi <3> 0 <15> %varDef_124
	%varDef_144 = phi <3> 0 <15> %varDef_123
	%varDef_145 = phi <3> 0 <15> %varDef_122
	%varDef_146 = phi <3> 0 <15> %varDef_121
	mov %cidVal_40 %varDef_134
	mov %varDef_147 %cidVal_40
	mov %res_6 %varDef_147
	mov %varDef_148 %res_6
	mov %idVal_11 %varDef_148
	__printlnInt ( %idVal_11 )
	ret 0

}

