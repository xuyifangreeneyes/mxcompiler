$str_0 "no solution!\n"

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

define check ( %argVal_0 %argVal_2 ) {
<0> entry
	%boolValAddr_4 = alloca 8
	%argAddr_3 = alloca 8
	%argAddr_1 = alloca 8
	store %argVal_0 %argAddr_1
	store %argVal_2 %argAddr_3
	%idVal_5 = load %argAddr_1
	%idVal_6 = load %argAddr_3
	%res_7 = lt %idVal_5 %idVal_6
	br %res_7 <4> <2>

<4> lhs_true
	%idVal_8 = load %argAddr_1
	%res_9 = ge %idVal_8 0
	br %res_9 <1> <2>

<1> bool_true
	store 1 %boolValAddr_4
	br <3>

<2> bool_false
	store 0 %boolValAddr_4
	br <3>

<3> bool_merge
	%boolVal_10 = load %boolValAddr_4
	ret %boolVal_10

}

define main ( ) {
<0> entry
	%varAddr_15 = alloca 8
	%varAddr_14 = alloca 8
	%varAddr_13 = alloca 8
	%varAddr_12 = alloca 8
	%varAddr_11 = alloca 8
	%varAddr_10 = alloca 8
	%varAddr_9 = alloca 8
	%varAddr_8 = alloca 8
	%varAddr_7 = alloca 8
	%varAddr_6 = alloca 8
	%varAddr_5 = alloca 8
	%varAddr_4 = alloca 8
	%varAddr_3 = alloca 8
	%varAddr_2 = alloca 8
	%varAddr_1 = alloca 8
	%varAddr_0 = alloca 8
	%res_16 = getInt ( )
	store %res_16 %varAddr_0
	store 0 %varAddr_1
	store 0 %varAddr_6
	store 0 %varAddr_2
	store 0 %varAddr_3
	%idVal_17 = load %varAddr_0
	%res_18 = sub %idVal_17 1
	store %res_18 %varAddr_4
	%idVal_19 = load %varAddr_0
	%res_20 = sub %idVal_19 1
	store %res_20 %varAddr_5
	store 0 %varAddr_9
	store 0 %varAddr_10
	store 0 %varAddr_8
	store 0 %varAddr_7
	%idVal_21 = load %varAddr_0
	%idVal_22 = load %varAddr_0
	%res_23 = mul %idVal_21 %idVal_22
	%memberLength_25 = mul %res_23 8
	%arrayLength_26 = add %memberLength_25 8
	%arrayPtr_24 = malloc %arrayLength_26
	store %res_23 %arrayPtr_24
	%arrayBase_27 = add %arrayPtr_24 8
	store %arrayBase_27 %varAddr_11
	store 0 %varAddr_14
	br <1>

<1> for_cond
	%idVal_28 = load %varAddr_14
	%idVal_29 = load %varAddr_0
	%idVal_30 = load %varAddr_0
	%res_31 = mul %idVal_29 %idVal_30
	%res_32 = lt %idVal_28 %res_31
	br %res_32 <2> <4>

<2> for_body
	%arrayBase_33 = load %varAddr_11
	%idVal_34 = load %varAddr_14
	%offset_35 = mul %idVal_34 8
	%elementAddr_36 = add %arrayBase_33 %offset_35
	store 0 %elementAddr_36
	br <3>

<3> for_step
	%idVal_37 = load %varAddr_14
	%oldVal_38 = load %varAddr_14
	%newVal_39 = inc %oldVal_38
	store %newVal_39 %varAddr_14
	br <1>

<4> for_end
	%idVal_40 = load %varAddr_0
	%idVal_41 = load %varAddr_0
	%res_42 = mul %idVal_40 %idVal_41
	%memberLength_44 = mul %res_42 8
	%arrayLength_45 = add %memberLength_44 8
	%arrayPtr_43 = malloc %arrayLength_45
	store %res_42 %arrayPtr_43
	%arrayBase_46 = add %arrayPtr_43 8
	store %arrayBase_46 %varAddr_12
	store 0 %varAddr_14
	br <5>

<5> for_cond
	%idVal_47 = load %varAddr_14
	%idVal_48 = load %varAddr_0
	%idVal_49 = load %varAddr_0
	%res_50 = mul %idVal_48 %idVal_49
	%res_51 = lt %idVal_47 %res_50
	br %res_51 <6> <8>

<6> for_body
	%arrayBase_52 = load %varAddr_12
	%idVal_53 = load %varAddr_14
	%offset_54 = mul %idVal_53 8
	%elementAddr_55 = add %arrayBase_52 %offset_54
	store 0 %elementAddr_55
	br <7>

<7> for_step
	%idVal_56 = load %varAddr_14
	%oldVal_57 = load %varAddr_14
	%newVal_58 = inc %oldVal_57
	store %newVal_58 %varAddr_14
	br <5>

<8> for_end
	%idVal_59 = load %varAddr_0
	%memberLength_61 = mul %idVal_59 8
	%arrayLength_62 = add %memberLength_61 8
	%arrayPtr_60 = malloc %arrayLength_62
	store %idVal_59 %arrayPtr_60
	%arrayBase_63 = add %arrayPtr_60 8
	store %arrayBase_63 %varAddr_13
	store 0 %varAddr_14
	br <9>

<9> for_cond
	%idVal_64 = load %varAddr_14
	%idVal_65 = load %varAddr_0
	%res_66 = lt %idVal_64 %idVal_65
	br %res_66 <10> <12>

<10> for_body
	%idVal_67 = load %varAddr_0
	%memberLength_69 = mul %idVal_67 8
	%arrayLength_70 = add %memberLength_69 8
	%arrayPtr_68 = malloc %arrayLength_70
	store %idVal_67 %arrayPtr_68
	%arrayBase_71 = add %arrayPtr_68 8
	%arrayBase_72 = load %varAddr_13
	%idVal_73 = load %varAddr_14
	%offset_74 = mul %idVal_73 8
	%elementAddr_75 = add %arrayBase_72 %offset_74
	store %arrayBase_71 %elementAddr_75
	store 0 %varAddr_15
	br <13>

<13> for_cond
	%idVal_76 = load %varAddr_15
	%idVal_77 = load %varAddr_0
	%res_78 = lt %idVal_76 %idVal_77
	br %res_78 <14> <16>

<14> for_body
	%res_79 = neg 1
	%arrayBase_80 = load %varAddr_13
	%idVal_81 = load %varAddr_14
	%offset_82 = mul %idVal_81 8
	%elementAddr_83 = add %arrayBase_80 %offset_82
	%arrayBase_84 = load %elementAddr_83
	%idVal_85 = load %varAddr_15
	%offset_86 = mul %idVal_85 8
	%elementAddr_87 = add %arrayBase_84 %offset_86
	store %res_79 %elementAddr_87
	br <15>

<15> for_step
	%idVal_88 = load %varAddr_15
	%oldVal_89 = load %varAddr_15
	%newVal_90 = inc %oldVal_89
	store %newVal_90 %varAddr_15
	br <13>

<16> for_end
	br <11>

<11> for_step
	%idVal_91 = load %varAddr_14
	%oldVal_92 = load %varAddr_14
	%newVal_93 = inc %oldVal_92
	store %newVal_93 %varAddr_14
	br <9>

<12> for_end
	%idVal_94 = load %varAddr_2
	%arrayBase_95 = load %varAddr_11
	%offset_96 = mul 0 8
	%elementAddr_97 = add %arrayBase_95 %offset_96
	store %idVal_94 %elementAddr_97
	%idVal_98 = load %varAddr_3
	%arrayBase_99 = load %varAddr_12
	%offset_100 = mul 0 8
	%elementAddr_101 = add %arrayBase_99 %offset_100
	store %idVal_98 %elementAddr_101
	%arrayBase_102 = load %varAddr_13
	%idVal_103 = load %varAddr_2
	%offset_104 = mul %idVal_103 8
	%elementAddr_105 = add %arrayBase_102 %offset_104
	%arrayBase_106 = load %elementAddr_105
	%idVal_107 = load %varAddr_3
	%offset_108 = mul %idVal_107 8
	%elementAddr_109 = add %arrayBase_106 %offset_108
	store 0 %elementAddr_109
	br <17>

<17> while_cond
	%idVal_110 = load %varAddr_1
	%idVal_111 = load %varAddr_6
	%res_112 = le %idVal_110 %idVal_111
	br %res_112 <18> <19>

<18> while_body
	%arrayBase_113 = load %varAddr_13
	%arrayBase_114 = load %varAddr_11
	%idVal_115 = load %varAddr_1
	%offset_116 = mul %idVal_115 8
	%elementAddr_117 = add %arrayBase_114 %offset_116
	%elementVal_118 = load %elementAddr_117
	%offset_119 = mul %elementVal_118 8
	%elementAddr_120 = add %arrayBase_113 %offset_119
	%arrayBase_121 = load %elementAddr_120
	%arrayBase_122 = load %varAddr_12
	%idVal_123 = load %varAddr_1
	%offset_124 = mul %idVal_123 8
	%elementAddr_125 = add %arrayBase_122 %offset_124
	%elementVal_126 = load %elementAddr_125
	%offset_127 = mul %elementVal_126 8
	%elementAddr_128 = add %arrayBase_121 %offset_127
	%elementVal_129 = load %elementAddr_128
	store %elementVal_129 %varAddr_8
	%arrayBase_130 = load %varAddr_11
	%idVal_131 = load %varAddr_1
	%offset_132 = mul %idVal_131 8
	%elementAddr_133 = add %arrayBase_130 %offset_132
	%elementVal_134 = load %elementAddr_133
	%res_135 = sub %elementVal_134 1
	store %res_135 %varAddr_9
	%arrayBase_136 = load %varAddr_12
	%idVal_137 = load %varAddr_1
	%offset_138 = mul %idVal_137 8
	%elementAddr_139 = add %arrayBase_136 %offset_138
	%elementVal_140 = load %elementAddr_139
	%res_141 = sub %elementVal_140 2
	store %res_141 %varAddr_10
	%idVal_143 = load %varAddr_9
	%idVal_144 = load %varAddr_0
	%res_142 = check ( %idVal_143 %idVal_144 )
	br %res_142 <23> <21>

<23> lhs_true
	%idVal_146 = load %varAddr_10
	%idVal_147 = load %varAddr_0
	%res_145 = check ( %idVal_146 %idVal_147 )
	br %res_145 <22> <21>

<22> lhs_true
	%arrayBase_148 = load %varAddr_13
	%idVal_149 = load %varAddr_9
	%offset_150 = mul %idVal_149 8
	%elementAddr_151 = add %arrayBase_148 %offset_150
	%arrayBase_152 = load %elementAddr_151
	%idVal_153 = load %varAddr_10
	%offset_154 = mul %idVal_153 8
	%elementAddr_155 = add %arrayBase_152 %offset_154
	%elementVal_156 = load %elementAddr_155
	%res_157 = neg 1
	%res_158 = eq %elementVal_156 %res_157
	br %res_158 <20> <21>

<20> if_true
	%idVal_159 = load %varAddr_6
	%res_160 = add %idVal_159 1
	store %res_160 %varAddr_6
	%idVal_161 = load %varAddr_9
	%arrayBase_162 = load %varAddr_11
	%idVal_163 = load %varAddr_6
	%offset_164 = mul %idVal_163 8
	%elementAddr_165 = add %arrayBase_162 %offset_164
	store %idVal_161 %elementAddr_165
	%idVal_166 = load %varAddr_10
	%arrayBase_167 = load %varAddr_12
	%idVal_168 = load %varAddr_6
	%offset_169 = mul %idVal_168 8
	%elementAddr_170 = add %arrayBase_167 %offset_169
	store %idVal_166 %elementAddr_170
	%idVal_171 = load %varAddr_8
	%res_172 = add %idVal_171 1
	%arrayBase_173 = load %varAddr_13
	%idVal_174 = load %varAddr_9
	%offset_175 = mul %idVal_174 8
	%elementAddr_176 = add %arrayBase_173 %offset_175
	%arrayBase_177 = load %elementAddr_176
	%idVal_178 = load %varAddr_10
	%offset_179 = mul %idVal_178 8
	%elementAddr_180 = add %arrayBase_177 %offset_179
	store %res_172 %elementAddr_180
	%idVal_181 = load %varAddr_9
	%idVal_182 = load %varAddr_4
	%res_183 = eq %idVal_181 %idVal_182
	br %res_183 <26> <25>

<26> lhs_true
	%idVal_184 = load %varAddr_10
	%idVal_185 = load %varAddr_5
	%res_186 = eq %idVal_184 %idVal_185
	br %res_186 <24> <25>

<24> if_true
	store 1 %varAddr_7
	br <25>

<25> if_merge
	br <21>

<21> if_merge
	%arrayBase_187 = load %varAddr_11
	%idVal_188 = load %varAddr_1
	%offset_189 = mul %idVal_188 8
	%elementAddr_190 = add %arrayBase_187 %offset_189
	%elementVal_191 = load %elementAddr_190
	%res_192 = sub %elementVal_191 1
	store %res_192 %varAddr_9
	%arrayBase_193 = load %varAddr_12
	%idVal_194 = load %varAddr_1
	%offset_195 = mul %idVal_194 8
	%elementAddr_196 = add %arrayBase_193 %offset_195
	%elementVal_197 = load %elementAddr_196
	%res_198 = add %elementVal_197 2
	store %res_198 %varAddr_10
	%idVal_200 = load %varAddr_9
	%idVal_201 = load %varAddr_0
	%res_199 = check ( %idVal_200 %idVal_201 )
	br %res_199 <30> <28>

<30> lhs_true
	%idVal_203 = load %varAddr_10
	%idVal_204 = load %varAddr_0
	%res_202 = check ( %idVal_203 %idVal_204 )
	br %res_202 <29> <28>

<29> lhs_true
	%arrayBase_205 = load %varAddr_13
	%idVal_206 = load %varAddr_9
	%offset_207 = mul %idVal_206 8
	%elementAddr_208 = add %arrayBase_205 %offset_207
	%arrayBase_209 = load %elementAddr_208
	%idVal_210 = load %varAddr_10
	%offset_211 = mul %idVal_210 8
	%elementAddr_212 = add %arrayBase_209 %offset_211
	%elementVal_213 = load %elementAddr_212
	%res_214 = neg 1
	%res_215 = eq %elementVal_213 %res_214
	br %res_215 <27> <28>

<27> if_true
	%idVal_216 = load %varAddr_6
	%res_217 = add %idVal_216 1
	store %res_217 %varAddr_6
	%idVal_218 = load %varAddr_9
	%arrayBase_219 = load %varAddr_11
	%idVal_220 = load %varAddr_6
	%offset_221 = mul %idVal_220 8
	%elementAddr_222 = add %arrayBase_219 %offset_221
	store %idVal_218 %elementAddr_222
	%idVal_223 = load %varAddr_10
	%arrayBase_224 = load %varAddr_12
	%idVal_225 = load %varAddr_6
	%offset_226 = mul %idVal_225 8
	%elementAddr_227 = add %arrayBase_224 %offset_226
	store %idVal_223 %elementAddr_227
	%idVal_228 = load %varAddr_8
	%res_229 = add %idVal_228 1
	%arrayBase_230 = load %varAddr_13
	%idVal_231 = load %varAddr_9
	%offset_232 = mul %idVal_231 8
	%elementAddr_233 = add %arrayBase_230 %offset_232
	%arrayBase_234 = load %elementAddr_233
	%idVal_235 = load %varAddr_10
	%offset_236 = mul %idVal_235 8
	%elementAddr_237 = add %arrayBase_234 %offset_236
	store %res_229 %elementAddr_237
	%idVal_238 = load %varAddr_9
	%idVal_239 = load %varAddr_4
	%res_240 = eq %idVal_238 %idVal_239
	br %res_240 <33> <32>

<33> lhs_true
	%idVal_241 = load %varAddr_10
	%idVal_242 = load %varAddr_5
	%res_243 = eq %idVal_241 %idVal_242
	br %res_243 <31> <32>

<31> if_true
	store 1 %varAddr_7
	br <32>

<32> if_merge
	br <28>

<28> if_merge
	%arrayBase_244 = load %varAddr_11
	%idVal_245 = load %varAddr_1
	%offset_246 = mul %idVal_245 8
	%elementAddr_247 = add %arrayBase_244 %offset_246
	%elementVal_248 = load %elementAddr_247
	%res_249 = add %elementVal_248 1
	store %res_249 %varAddr_9
	%arrayBase_250 = load %varAddr_12
	%idVal_251 = load %varAddr_1
	%offset_252 = mul %idVal_251 8
	%elementAddr_253 = add %arrayBase_250 %offset_252
	%elementVal_254 = load %elementAddr_253
	%res_255 = sub %elementVal_254 2
	store %res_255 %varAddr_10
	%idVal_257 = load %varAddr_9
	%idVal_258 = load %varAddr_0
	%res_256 = check ( %idVal_257 %idVal_258 )
	br %res_256 <37> <35>

<37> lhs_true
	%idVal_260 = load %varAddr_10
	%idVal_261 = load %varAddr_0
	%res_259 = check ( %idVal_260 %idVal_261 )
	br %res_259 <36> <35>

<36> lhs_true
	%arrayBase_262 = load %varAddr_13
	%idVal_263 = load %varAddr_9
	%offset_264 = mul %idVal_263 8
	%elementAddr_265 = add %arrayBase_262 %offset_264
	%arrayBase_266 = load %elementAddr_265
	%idVal_267 = load %varAddr_10
	%offset_268 = mul %idVal_267 8
	%elementAddr_269 = add %arrayBase_266 %offset_268
	%elementVal_270 = load %elementAddr_269
	%res_271 = neg 1
	%res_272 = eq %elementVal_270 %res_271
	br %res_272 <34> <35>

<34> if_true
	%idVal_273 = load %varAddr_6
	%res_274 = add %idVal_273 1
	store %res_274 %varAddr_6
	%idVal_275 = load %varAddr_9
	%arrayBase_276 = load %varAddr_11
	%idVal_277 = load %varAddr_6
	%offset_278 = mul %idVal_277 8
	%elementAddr_279 = add %arrayBase_276 %offset_278
	store %idVal_275 %elementAddr_279
	%idVal_280 = load %varAddr_10
	%arrayBase_281 = load %varAddr_12
	%idVal_282 = load %varAddr_6
	%offset_283 = mul %idVal_282 8
	%elementAddr_284 = add %arrayBase_281 %offset_283
	store %idVal_280 %elementAddr_284
	%idVal_285 = load %varAddr_8
	%res_286 = add %idVal_285 1
	%arrayBase_287 = load %varAddr_13
	%idVal_288 = load %varAddr_9
	%offset_289 = mul %idVal_288 8
	%elementAddr_290 = add %arrayBase_287 %offset_289
	%arrayBase_291 = load %elementAddr_290
	%idVal_292 = load %varAddr_10
	%offset_293 = mul %idVal_292 8
	%elementAddr_294 = add %arrayBase_291 %offset_293
	store %res_286 %elementAddr_294
	%idVal_295 = load %varAddr_9
	%idVal_296 = load %varAddr_4
	%res_297 = eq %idVal_295 %idVal_296
	br %res_297 <40> <39>

<40> lhs_true
	%idVal_298 = load %varAddr_10
	%idVal_299 = load %varAddr_5
	%res_300 = eq %idVal_298 %idVal_299
	br %res_300 <38> <39>

<38> if_true
	store 1 %varAddr_7
	br <39>

<39> if_merge
	br <35>

<35> if_merge
	%arrayBase_301 = load %varAddr_11
	%idVal_302 = load %varAddr_1
	%offset_303 = mul %idVal_302 8
	%elementAddr_304 = add %arrayBase_301 %offset_303
	%elementVal_305 = load %elementAddr_304
	%res_306 = add %elementVal_305 1
	store %res_306 %varAddr_9
	%arrayBase_307 = load %varAddr_12
	%idVal_308 = load %varAddr_1
	%offset_309 = mul %idVal_308 8
	%elementAddr_310 = add %arrayBase_307 %offset_309
	%elementVal_311 = load %elementAddr_310
	%res_312 = add %elementVal_311 2
	store %res_312 %varAddr_10
	%idVal_314 = load %varAddr_9
	%idVal_315 = load %varAddr_0
	%res_313 = check ( %idVal_314 %idVal_315 )
	br %res_313 <44> <42>

<44> lhs_true
	%idVal_317 = load %varAddr_10
	%idVal_318 = load %varAddr_0
	%res_316 = check ( %idVal_317 %idVal_318 )
	br %res_316 <43> <42>

<43> lhs_true
	%arrayBase_319 = load %varAddr_13
	%idVal_320 = load %varAddr_9
	%offset_321 = mul %idVal_320 8
	%elementAddr_322 = add %arrayBase_319 %offset_321
	%arrayBase_323 = load %elementAddr_322
	%idVal_324 = load %varAddr_10
	%offset_325 = mul %idVal_324 8
	%elementAddr_326 = add %arrayBase_323 %offset_325
	%elementVal_327 = load %elementAddr_326
	%res_328 = neg 1
	%res_329 = eq %elementVal_327 %res_328
	br %res_329 <41> <42>

<41> if_true
	%idVal_330 = load %varAddr_6
	%res_331 = add %idVal_330 1
	store %res_331 %varAddr_6
	%idVal_332 = load %varAddr_9
	%arrayBase_333 = load %varAddr_11
	%idVal_334 = load %varAddr_6
	%offset_335 = mul %idVal_334 8
	%elementAddr_336 = add %arrayBase_333 %offset_335
	store %idVal_332 %elementAddr_336
	%idVal_337 = load %varAddr_10
	%arrayBase_338 = load %varAddr_12
	%idVal_339 = load %varAddr_6
	%offset_340 = mul %idVal_339 8
	%elementAddr_341 = add %arrayBase_338 %offset_340
	store %idVal_337 %elementAddr_341
	%idVal_342 = load %varAddr_8
	%res_343 = add %idVal_342 1
	%arrayBase_344 = load %varAddr_13
	%idVal_345 = load %varAddr_9
	%offset_346 = mul %idVal_345 8
	%elementAddr_347 = add %arrayBase_344 %offset_346
	%arrayBase_348 = load %elementAddr_347
	%idVal_349 = load %varAddr_10
	%offset_350 = mul %idVal_349 8
	%elementAddr_351 = add %arrayBase_348 %offset_350
	store %res_343 %elementAddr_351
	%idVal_352 = load %varAddr_9
	%idVal_353 = load %varAddr_4
	%res_354 = eq %idVal_352 %idVal_353
	br %res_354 <47> <46>

<47> lhs_true
	%idVal_355 = load %varAddr_10
	%idVal_356 = load %varAddr_5
	%res_357 = eq %idVal_355 %idVal_356
	br %res_357 <45> <46>

<45> if_true
	store 1 %varAddr_7
	br <46>

<46> if_merge
	br <42>

<42> if_merge
	%arrayBase_358 = load %varAddr_11
	%idVal_359 = load %varAddr_1
	%offset_360 = mul %idVal_359 8
	%elementAddr_361 = add %arrayBase_358 %offset_360
	%elementVal_362 = load %elementAddr_361
	%res_363 = sub %elementVal_362 2
	store %res_363 %varAddr_9
	%arrayBase_364 = load %varAddr_12
	%idVal_365 = load %varAddr_1
	%offset_366 = mul %idVal_365 8
	%elementAddr_367 = add %arrayBase_364 %offset_366
	%elementVal_368 = load %elementAddr_367
	%res_369 = sub %elementVal_368 1
	store %res_369 %varAddr_10
	%idVal_371 = load %varAddr_9
	%idVal_372 = load %varAddr_0
	%res_370 = check ( %idVal_371 %idVal_372 )
	br %res_370 <51> <49>

<51> lhs_true
	%idVal_374 = load %varAddr_10
	%idVal_375 = load %varAddr_0
	%res_373 = check ( %idVal_374 %idVal_375 )
	br %res_373 <50> <49>

<50> lhs_true
	%arrayBase_376 = load %varAddr_13
	%idVal_377 = load %varAddr_9
	%offset_378 = mul %idVal_377 8
	%elementAddr_379 = add %arrayBase_376 %offset_378
	%arrayBase_380 = load %elementAddr_379
	%idVal_381 = load %varAddr_10
	%offset_382 = mul %idVal_381 8
	%elementAddr_383 = add %arrayBase_380 %offset_382
	%elementVal_384 = load %elementAddr_383
	%res_385 = neg 1
	%res_386 = eq %elementVal_384 %res_385
	br %res_386 <48> <49>

<48> if_true
	%idVal_387 = load %varAddr_6
	%res_388 = add %idVal_387 1
	store %res_388 %varAddr_6
	%idVal_389 = load %varAddr_9
	%arrayBase_390 = load %varAddr_11
	%idVal_391 = load %varAddr_6
	%offset_392 = mul %idVal_391 8
	%elementAddr_393 = add %arrayBase_390 %offset_392
	store %idVal_389 %elementAddr_393
	%idVal_394 = load %varAddr_10
	%arrayBase_395 = load %varAddr_12
	%idVal_396 = load %varAddr_6
	%offset_397 = mul %idVal_396 8
	%elementAddr_398 = add %arrayBase_395 %offset_397
	store %idVal_394 %elementAddr_398
	%idVal_399 = load %varAddr_8
	%res_400 = add %idVal_399 1
	%arrayBase_401 = load %varAddr_13
	%idVal_402 = load %varAddr_9
	%offset_403 = mul %idVal_402 8
	%elementAddr_404 = add %arrayBase_401 %offset_403
	%arrayBase_405 = load %elementAddr_404
	%idVal_406 = load %varAddr_10
	%offset_407 = mul %idVal_406 8
	%elementAddr_408 = add %arrayBase_405 %offset_407
	store %res_400 %elementAddr_408
	%idVal_409 = load %varAddr_9
	%idVal_410 = load %varAddr_4
	%res_411 = eq %idVal_409 %idVal_410
	br %res_411 <54> <53>

<54> lhs_true
	%idVal_412 = load %varAddr_10
	%idVal_413 = load %varAddr_5
	%res_414 = eq %idVal_412 %idVal_413
	br %res_414 <52> <53>

<52> if_true
	store 1 %varAddr_7
	br <53>

<53> if_merge
	br <49>

<49> if_merge
	%arrayBase_415 = load %varAddr_11
	%idVal_416 = load %varAddr_1
	%offset_417 = mul %idVal_416 8
	%elementAddr_418 = add %arrayBase_415 %offset_417
	%elementVal_419 = load %elementAddr_418
	%res_420 = sub %elementVal_419 2
	store %res_420 %varAddr_9
	%arrayBase_421 = load %varAddr_12
	%idVal_422 = load %varAddr_1
	%offset_423 = mul %idVal_422 8
	%elementAddr_424 = add %arrayBase_421 %offset_423
	%elementVal_425 = load %elementAddr_424
	%res_426 = add %elementVal_425 1
	store %res_426 %varAddr_10
	%idVal_428 = load %varAddr_9
	%idVal_429 = load %varAddr_0
	%res_427 = check ( %idVal_428 %idVal_429 )
	br %res_427 <58> <56>

<58> lhs_true
	%idVal_431 = load %varAddr_10
	%idVal_432 = load %varAddr_0
	%res_430 = check ( %idVal_431 %idVal_432 )
	br %res_430 <57> <56>

<57> lhs_true
	%arrayBase_433 = load %varAddr_13
	%idVal_434 = load %varAddr_9
	%offset_435 = mul %idVal_434 8
	%elementAddr_436 = add %arrayBase_433 %offset_435
	%arrayBase_437 = load %elementAddr_436
	%idVal_438 = load %varAddr_10
	%offset_439 = mul %idVal_438 8
	%elementAddr_440 = add %arrayBase_437 %offset_439
	%elementVal_441 = load %elementAddr_440
	%res_442 = neg 1
	%res_443 = eq %elementVal_441 %res_442
	br %res_443 <55> <56>

<55> if_true
	%idVal_444 = load %varAddr_6
	%res_445 = add %idVal_444 1
	store %res_445 %varAddr_6
	%idVal_446 = load %varAddr_9
	%arrayBase_447 = load %varAddr_11
	%idVal_448 = load %varAddr_6
	%offset_449 = mul %idVal_448 8
	%elementAddr_450 = add %arrayBase_447 %offset_449
	store %idVal_446 %elementAddr_450
	%idVal_451 = load %varAddr_10
	%arrayBase_452 = load %varAddr_12
	%idVal_453 = load %varAddr_6
	%offset_454 = mul %idVal_453 8
	%elementAddr_455 = add %arrayBase_452 %offset_454
	store %idVal_451 %elementAddr_455
	%idVal_456 = load %varAddr_8
	%res_457 = add %idVal_456 1
	%arrayBase_458 = load %varAddr_13
	%idVal_459 = load %varAddr_9
	%offset_460 = mul %idVal_459 8
	%elementAddr_461 = add %arrayBase_458 %offset_460
	%arrayBase_462 = load %elementAddr_461
	%idVal_463 = load %varAddr_10
	%offset_464 = mul %idVal_463 8
	%elementAddr_465 = add %arrayBase_462 %offset_464
	store %res_457 %elementAddr_465
	%idVal_466 = load %varAddr_9
	%idVal_467 = load %varAddr_4
	%res_468 = eq %idVal_466 %idVal_467
	br %res_468 <61> <60>

<61> lhs_true
	%idVal_469 = load %varAddr_10
	%idVal_470 = load %varAddr_5
	%res_471 = eq %idVal_469 %idVal_470
	br %res_471 <59> <60>

<59> if_true
	store 1 %varAddr_7
	br <60>

<60> if_merge
	br <56>

<56> if_merge
	%arrayBase_472 = load %varAddr_11
	%idVal_473 = load %varAddr_1
	%offset_474 = mul %idVal_473 8
	%elementAddr_475 = add %arrayBase_472 %offset_474
	%elementVal_476 = load %elementAddr_475
	%res_477 = add %elementVal_476 2
	store %res_477 %varAddr_9
	%arrayBase_478 = load %varAddr_12
	%idVal_479 = load %varAddr_1
	%offset_480 = mul %idVal_479 8
	%elementAddr_481 = add %arrayBase_478 %offset_480
	%elementVal_482 = load %elementAddr_481
	%res_483 = sub %elementVal_482 1
	store %res_483 %varAddr_10
	%idVal_485 = load %varAddr_9
	%idVal_486 = load %varAddr_0
	%res_484 = check ( %idVal_485 %idVal_486 )
	br %res_484 <65> <63>

<65> lhs_true
	%idVal_488 = load %varAddr_10
	%idVal_489 = load %varAddr_0
	%res_487 = check ( %idVal_488 %idVal_489 )
	br %res_487 <64> <63>

<64> lhs_true
	%arrayBase_490 = load %varAddr_13
	%idVal_491 = load %varAddr_9
	%offset_492 = mul %idVal_491 8
	%elementAddr_493 = add %arrayBase_490 %offset_492
	%arrayBase_494 = load %elementAddr_493
	%idVal_495 = load %varAddr_10
	%offset_496 = mul %idVal_495 8
	%elementAddr_497 = add %arrayBase_494 %offset_496
	%elementVal_498 = load %elementAddr_497
	%res_499 = neg 1
	%res_500 = eq %elementVal_498 %res_499
	br %res_500 <62> <63>

<62> if_true
	%idVal_501 = load %varAddr_6
	%res_502 = add %idVal_501 1
	store %res_502 %varAddr_6
	%idVal_503 = load %varAddr_9
	%arrayBase_504 = load %varAddr_11
	%idVal_505 = load %varAddr_6
	%offset_506 = mul %idVal_505 8
	%elementAddr_507 = add %arrayBase_504 %offset_506
	store %idVal_503 %elementAddr_507
	%idVal_508 = load %varAddr_10
	%arrayBase_509 = load %varAddr_12
	%idVal_510 = load %varAddr_6
	%offset_511 = mul %idVal_510 8
	%elementAddr_512 = add %arrayBase_509 %offset_511
	store %idVal_508 %elementAddr_512
	%idVal_513 = load %varAddr_8
	%res_514 = add %idVal_513 1
	%arrayBase_515 = load %varAddr_13
	%idVal_516 = load %varAddr_9
	%offset_517 = mul %idVal_516 8
	%elementAddr_518 = add %arrayBase_515 %offset_517
	%arrayBase_519 = load %elementAddr_518
	%idVal_520 = load %varAddr_10
	%offset_521 = mul %idVal_520 8
	%elementAddr_522 = add %arrayBase_519 %offset_521
	store %res_514 %elementAddr_522
	%idVal_523 = load %varAddr_9
	%idVal_524 = load %varAddr_4
	%res_525 = eq %idVal_523 %idVal_524
	br %res_525 <68> <67>

<68> lhs_true
	%idVal_526 = load %varAddr_10
	%idVal_527 = load %varAddr_5
	%res_528 = eq %idVal_526 %idVal_527
	br %res_528 <66> <67>

<66> if_true
	store 1 %varAddr_7
	br <67>

<67> if_merge
	br <63>

<63> if_merge
	%arrayBase_529 = load %varAddr_11
	%idVal_530 = load %varAddr_1
	%offset_531 = mul %idVal_530 8
	%elementAddr_532 = add %arrayBase_529 %offset_531
	%elementVal_533 = load %elementAddr_532
	%res_534 = add %elementVal_533 2
	store %res_534 %varAddr_9
	%arrayBase_535 = load %varAddr_12
	%idVal_536 = load %varAddr_1
	%offset_537 = mul %idVal_536 8
	%elementAddr_538 = add %arrayBase_535 %offset_537
	%elementVal_539 = load %elementAddr_538
	%res_540 = add %elementVal_539 1
	store %res_540 %varAddr_10
	%idVal_542 = load %varAddr_9
	%idVal_543 = load %varAddr_0
	%res_541 = check ( %idVal_542 %idVal_543 )
	br %res_541 <72> <70>

<72> lhs_true
	%idVal_545 = load %varAddr_10
	%idVal_546 = load %varAddr_0
	%res_544 = check ( %idVal_545 %idVal_546 )
	br %res_544 <71> <70>

<71> lhs_true
	%arrayBase_547 = load %varAddr_13
	%idVal_548 = load %varAddr_9
	%offset_549 = mul %idVal_548 8
	%elementAddr_550 = add %arrayBase_547 %offset_549
	%arrayBase_551 = load %elementAddr_550
	%idVal_552 = load %varAddr_10
	%offset_553 = mul %idVal_552 8
	%elementAddr_554 = add %arrayBase_551 %offset_553
	%elementVal_555 = load %elementAddr_554
	%res_556 = neg 1
	%res_557 = eq %elementVal_555 %res_556
	br %res_557 <69> <70>

<69> if_true
	%idVal_558 = load %varAddr_6
	%res_559 = add %idVal_558 1
	store %res_559 %varAddr_6
	%idVal_560 = load %varAddr_9
	%arrayBase_561 = load %varAddr_11
	%idVal_562 = load %varAddr_6
	%offset_563 = mul %idVal_562 8
	%elementAddr_564 = add %arrayBase_561 %offset_563
	store %idVal_560 %elementAddr_564
	%idVal_565 = load %varAddr_10
	%arrayBase_566 = load %varAddr_12
	%idVal_567 = load %varAddr_6
	%offset_568 = mul %idVal_567 8
	%elementAddr_569 = add %arrayBase_566 %offset_568
	store %idVal_565 %elementAddr_569
	%idVal_570 = load %varAddr_8
	%res_571 = add %idVal_570 1
	%arrayBase_572 = load %varAddr_13
	%idVal_573 = load %varAddr_9
	%offset_574 = mul %idVal_573 8
	%elementAddr_575 = add %arrayBase_572 %offset_574
	%arrayBase_576 = load %elementAddr_575
	%idVal_577 = load %varAddr_10
	%offset_578 = mul %idVal_577 8
	%elementAddr_579 = add %arrayBase_576 %offset_578
	store %res_571 %elementAddr_579
	%idVal_580 = load %varAddr_9
	%idVal_581 = load %varAddr_4
	%res_582 = eq %idVal_580 %idVal_581
	br %res_582 <75> <74>

<75> lhs_true
	%idVal_583 = load %varAddr_10
	%idVal_584 = load %varAddr_5
	%res_585 = eq %idVal_583 %idVal_584
	br %res_585 <73> <74>

<73> if_true
	store 1 %varAddr_7
	br <74>

<74> if_merge
	br <70>

<70> if_merge
	%idVal_586 = load %varAddr_7
	%res_587 = eq %idVal_586 1
	br %res_587 <76> <77>

<76> if_true
	br <19>

<77> if_merge
	%idVal_588 = load %varAddr_1
	%res_589 = add %idVal_588 1
	store %res_589 %varAddr_1
	br <17>

<19> while_end
	%idVal_590 = load %varAddr_7
	%res_591 = eq %idVal_590 1
	br %res_591 <78> <79>

<78> if_true
	%arrayBase_592 = load %varAddr_13
	%idVal_593 = load %varAddr_4
	%offset_594 = mul %idVal_593 8
	%elementAddr_595 = add %arrayBase_592 %offset_594
	%arrayBase_596 = load %elementAddr_595
	%idVal_597 = load %varAddr_5
	%offset_598 = mul %idVal_597 8
	%elementAddr_599 = add %arrayBase_596 %offset_598
	%elementVal_600 = load %elementAddr_599
	__printlnInt ( %elementVal_600 )
	br <80>

<79> if_false
	print ( $str_0 )
	br <80>

<80> if_merge
	ret 0

}

