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
	mov %varDef_14 %argVal_0
	mov %varDef_15 %argVal_2
	mov %varDef_16 %argVal_4
	mov %idVal_6 %varDef_14
	mov %idVal_7 %varDef_15
	%res_8 = add %idVal_6 %idVal_7
	mov %idVal_9 %varDef_16
	%res_10 = add %res_8 %idVal_9
	%res_11 = lsft 1 30
	%res_12 = sub %res_11 1
	%res_13 = bit_and %res_10 %res_12
	ret %res_13

}

define main ( ) {
<0> entry
	%res_1 = getInt ( )
	mov %varDef_351 %res_1
	mov %idVal_3 %varDef_351
	mov %idVal_4 %varDef_351
	%memberLength_6 = mul %idVal_3 8
	%arrayLength_7 = add %memberLength_6 8
	%arrayPtr_5 = malloc %arrayLength_7
	store %idVal_3 %arrayPtr_5
	%arrayEndPos_8 = add %arrayPtr_5 %arrayLength_7
	%startPos_9 = add %arrayPtr_5 8
	mov %varDef_352 %startPos_9
	br <1>

<1> new_for_cond
	%varDef_353 = phi <0> %varDef_352 <2> %varDef_354
	mov %pos_11 %varDef_353
	%condition_12 = lt %pos_11 %arrayEndPos_8
	br %condition_12 <2> <4>

<2> new_for_body
	%memberLength_14 = mul %idVal_4 8
	%arrayLength_15 = add %memberLength_14 8
	%arrayPtr_13 = malloc %arrayLength_15
	store %idVal_4 %arrayPtr_13
	store %arrayPtr_13 %pos_11
	%pos_16 = add %pos_11 8
	mov %varDef_354 %pos_16
	br <1>

<4> new_for_end
	mov %varDef_355 %arrayPtr_5
	mov %idVal_18 %varDef_351
	mov %idVal_19 %varDef_351
	%memberLength_21 = mul %idVal_18 8
	%arrayLength_22 = add %memberLength_21 8
	%arrayPtr_20 = malloc %arrayLength_22
	store %idVal_18 %arrayPtr_20
	%arrayEndPos_23 = add %arrayPtr_20 %arrayLength_22
	%startPos_24 = add %arrayPtr_20 8
	mov %varDef_356 %startPos_24
	br <5>

<5> new_for_cond
	%varDef_357 = phi <4> %varDef_356 <6> %varDef_358
	mov %pos_26 %varDef_357
	%condition_27 = lt %pos_26 %arrayEndPos_23
	br %condition_27 <6> <8>

<6> new_for_body
	%memberLength_29 = mul %idVal_19 8
	%arrayLength_30 = add %memberLength_29 8
	%arrayPtr_28 = malloc %arrayLength_30
	store %idVal_19 %arrayPtr_28
	store %arrayPtr_28 %pos_26
	%pos_31 = add %pos_26 8
	mov %varDef_358 %pos_31
	br <5>

<8> new_for_end
	mov %varDef_359 %arrayPtr_20
	mov %idVal_33 %varDef_351
	mov %idVal_34 %varDef_351
	%memberLength_36 = mul %idVal_33 8
	%arrayLength_37 = add %memberLength_36 8
	%arrayPtr_35 = malloc %arrayLength_37
	store %idVal_33 %arrayPtr_35
	%arrayEndPos_38 = add %arrayPtr_35 %arrayLength_37
	%startPos_39 = add %arrayPtr_35 8
	mov %varDef_360 %startPos_39
	br <9>

<9> new_for_cond
	%varDef_361 = phi <8> %varDef_360 <10> %varDef_362
	mov %pos_41 %varDef_361
	%condition_42 = lt %pos_41 %arrayEndPos_38
	br %condition_42 <10> <12>

<10> new_for_body
	%memberLength_44 = mul %idVal_34 8
	%arrayLength_45 = add %memberLength_44 8
	%arrayPtr_43 = malloc %arrayLength_45
	store %idVal_34 %arrayPtr_43
	store %arrayPtr_43 %pos_41
	%pos_46 = add %pos_41 8
	mov %varDef_362 %pos_46
	br <9>

<12> new_for_end
	mov %varDef_363 %arrayPtr_35
	mov %varDef_364 0
	br <13>

<13> for_cond
	%varDef_365 = phi <12> %varDef_364 <15> %varDef_370
	%varDef_366 = phi <12> 0 <15> %varDef_368
	mov %idVal_50 %varDef_365
	mov %idVal_51 %varDef_351
	%res_52 = lt %idVal_50 %idVal_51
	br %res_52 <14> <16>

<14> for_body
	mov %varDef_367 0
	br <17>

<17> for_cond
	%varDef_368 = phi <14> %varDef_367 <18> %varDef_369
	mov %idVal_53 %varDef_368
	mov %idVal_54 %varDef_351
	%res_55 = lt %idVal_53 %idVal_54
	br %res_55 <18> <15>

<18> for_body
	mov %idVal_56 %varDef_365
	mov %idVal_57 %varDef_368
	%res_58 = add %idVal_56 %idVal_57
	mov %arrayPtr_59 %varDef_355
	%arrayBase_60 = add %arrayPtr_59 8
	mov %idVal_61 %varDef_365
	%offset_62 = mul %idVal_61 8
	%elementAddr_63 = add %arrayBase_60 %offset_62
	%arrayPtr_64 = load %elementAddr_63
	%arrayBase_65 = add %arrayPtr_64 8
	mov %idVal_66 %varDef_368
	%offset_67 = mul %idVal_66 8
	%elementAddr_68 = add %arrayBase_65 %offset_67
	store %res_58 %elementAddr_68
	mov %idVal_69 %varDef_368
	mov %oldVal_70 %varDef_368
	%newVal_71 = inc %oldVal_70
	mov %varDef_369 %newVal_71
	br <17>

<15> for_step
	mov %idVal_72 %varDef_365
	mov %oldVal_73 %varDef_365
	%newVal_74 = inc %oldVal_73
	mov %varDef_370 %newVal_74
	br <13>

<16> for_end
	mov %varDef_371 0
	br <21>

<21> for_cond
	%varDef_372 = phi <16> %varDef_371 <23> %varDef_462
	%varDef_373 = phi <16> %varDef_366 <23> %varDef_392
	%varDef_374 = phi <16> 0 <23> %varDef_393
	%varDef_375 = phi <16> 0 <23> %varDef_394
	%varDef_376 = phi <16> 0 <23> %varDef_395
	%varDef_377 = phi <16> 0 <23> %varDef_396
	%varDef_378 = phi <16> 0 <23> %varDef_397
	%varDef_379 = phi <16> 0 <23> %varDef_398
	%varDef_380 = phi <16> 0 <23> %varDef_399
	%varDef_381 = phi <16> 0 <23> %varDef_400
	%varDef_382 = phi <16> 0 <23> %varDef_401
	%varDef_383 = phi <16> 0 <23> %varDef_402
	%varDef_384 = phi <16> 0 <23> %varDef_403
	%varDef_385 = phi <16> 0 <23> %varDef_404
	%varDef_386 = phi <16> 0 <23> %varDef_405
	%varDef_387 = phi <16> 0 <23> %varDef_406
	%varDef_388 = phi <16> 0 <23> %varDef_407
	%varDef_389 = phi <16> 0 <23> %varDef_408
	%varDef_390 = phi <16> 0 <23> %varDef_409
	mov %idVal_75 %varDef_372
	mov %idVal_76 %varDef_351
	%res_77 = lt %idVal_75 %idVal_76
	br %res_77 <22> <24>

<22> for_body
	mov %varDef_391 0
	br <25>

<25> for_cond
	%varDef_392 = phi <22> %varDef_391 <27> %varDef_461
	%varDef_393 = phi <22> %varDef_374 <27> %varDef_411
	%varDef_394 = phi <22> %varDef_375 <27> %varDef_412
	%varDef_395 = phi <22> %varDef_376 <27> %varDef_413
	%varDef_396 = phi <22> %varDef_377 <27> %varDef_414
	%varDef_397 = phi <22> %varDef_378 <27> %varDef_415
	%varDef_398 = phi <22> %varDef_379 <27> %varDef_416
	%varDef_399 = phi <22> %varDef_380 <27> %varDef_417
	%varDef_400 = phi <22> %varDef_381 <27> %varDef_418
	%varDef_401 = phi <22> %varDef_382 <27> %varDef_419
	%varDef_402 = phi <22> %varDef_383 <27> %varDef_420
	%varDef_403 = phi <22> %varDef_384 <27> %varDef_421
	%varDef_404 = phi <22> %varDef_385 <27> %varDef_422
	%varDef_405 = phi <22> %varDef_386 <27> %varDef_423
	%varDef_406 = phi <22> %varDef_387 <27> %varDef_424
	%varDef_407 = phi <22> %varDef_388 <27> %varDef_425
	%varDef_408 = phi <22> %varDef_389 <27> %varDef_426
	%varDef_409 = phi <22> %varDef_390 <27> %varDef_427
	mov %idVal_78 %varDef_392
	mov %idVal_79 %varDef_351
	%res_80 = lt %idVal_78 %idVal_79
	br %res_80 <26> <23>

<26> for_body
	mov %varDef_410 0
	br <29>

<29> for_cond
	%varDef_411 = phi <26> %varDef_410 <31> %varDef_460
	%varDef_412 = phi <26> %varDef_394 <31> %varDef_444
	%varDef_413 = phi <26> %varDef_395 <31> %varDef_445
	%varDef_414 = phi <26> %varDef_396 <31> %varDef_446
	%varDef_415 = phi <26> %varDef_397 <31> %varDef_447
	%varDef_416 = phi <26> %varDef_398 <31> %varDef_448
	%varDef_417 = phi <26> %varDef_399 <31> %varDef_449
	%varDef_418 = phi <26> %varDef_400 <31> %varDef_450
	%varDef_419 = phi <26> %varDef_401 <31> %varDef_451
	%varDef_420 = phi <26> %varDef_402 <31> %varDef_452
	%varDef_421 = phi <26> %varDef_403 <31> %varDef_453
	%varDef_422 = phi <26> %varDef_404 <31> %varDef_454
	%varDef_423 = phi <26> %varDef_405 <31> %varDef_455
	%varDef_424 = phi <26> %varDef_406 <31> %varDef_456
	%varDef_425 = phi <26> %varDef_407 <31> %varDef_457
	%varDef_426 = phi <26> %varDef_408 <31> %varDef_458
	%varDef_427 = phi <26> %varDef_409 <31> %varDef_459
	mov %idVal_81 %varDef_411
	mov %idVal_82 %varDef_351
	%res_83 = lt %idVal_81 %idVal_82
	br %res_83 <30> <27>

<30> for_body
	mov %idVal_84 %varDef_392
	mov %idVal_85 %varDef_372
	%res_86 = ge %idVal_84 %idVal_85
	br %res_86 <33> <31>

<33> if_true
	mov %arrayPtr_88 %varDef_359
	%arrayBase_89 = add %arrayPtr_88 8
	mov %idVal_90 %varDef_372
	%offset_91 = mul %idVal_90 8
	%elementAddr_92 = add %arrayBase_89 %offset_91
	%arrayPtr_93 = load %elementAddr_92
	%arrayBase_94 = add %arrayPtr_93 8
	mov %idVal_95 %varDef_392
	%offset_96 = mul %idVal_95 8
	%elementAddr_97 = add %arrayBase_94 %offset_96
	%elementVal_98 = load %elementAddr_97
	mov %arrayPtr_99 %varDef_355
	%arrayBase_100 = add %arrayPtr_99 8
	mov %idVal_101 %varDef_372
	%offset_102 = mul %idVal_101 8
	%elementAddr_103 = add %arrayBase_100 %offset_102
	%arrayPtr_104 = load %elementAddr_103
	%arrayBase_105 = add %arrayPtr_104 8
	mov %idVal_106 %varDef_411
	%offset_107 = mul %idVal_106 8
	%elementAddr_108 = add %arrayBase_105 %offset_107
	%elementVal_109 = load %elementAddr_108
	mov %arrayPtr_110 %varDef_355
	%arrayBase_111 = add %arrayPtr_110 8
	mov %idVal_112 %varDef_411
	%offset_113 = mul %idVal_112 8
	%elementAddr_114 = add %arrayBase_111 %offset_113
	%arrayPtr_115 = load %elementAddr_114
	%arrayBase_116 = add %arrayPtr_115 8
	mov %idVal_117 %varDef_392
	%offset_118 = mul %idVal_117 8
	%elementAddr_119 = add %arrayBase_116 %offset_118
	%elementVal_120 = load %elementAddr_119
	mov %varDef_428 %elementVal_98
	mov %varDef_429 %elementVal_109
	mov %varDef_430 %elementVal_120
	mov %cidVal_307 %varDef_428
	mov %cidVal_308 %varDef_429
	%cres_309 = add %cidVal_307 %cidVal_308
	mov %cidVal_310 %varDef_430
	%cres_311 = add %cres_309 %cidVal_310
	%cres_312 = lsft 1 30
	%cres_313 = sub %cres_312 1
	%cres_314 = bit_and %cres_311 %cres_313
	mov %varDef_431 %cres_314
	mov %res_87 %varDef_431
	mov %arrayPtr_121 %varDef_359
	%arrayBase_122 = add %arrayPtr_121 8
	mov %idVal_123 %varDef_372
	%offset_124 = mul %idVal_123 8
	%elementAddr_125 = add %arrayBase_122 %offset_124
	%arrayPtr_126 = load %elementAddr_125
	%arrayBase_127 = add %arrayPtr_126 8
	mov %idVal_128 %varDef_392
	%offset_129 = mul %idVal_128 8
	%elementAddr_130 = add %arrayBase_127 %offset_129
	store %res_87 %elementAddr_130
	mov %arrayPtr_132 %varDef_359
	%arrayBase_133 = add %arrayPtr_132 8
	mov %idVal_134 %varDef_372
	%offset_135 = mul %idVal_134 8
	%elementAddr_136 = add %arrayBase_133 %offset_135
	%arrayPtr_137 = load %elementAddr_136
	%arrayBase_138 = add %arrayPtr_137 8
	mov %idVal_139 %varDef_392
	%offset_140 = mul %idVal_139 8
	%elementAddr_141 = add %arrayBase_138 %offset_140
	%elementVal_142 = load %elementAddr_141
	mov %arrayPtr_143 %varDef_355
	%arrayBase_144 = add %arrayPtr_143 8
	mov %idVal_145 %varDef_372
	%offset_146 = mul %idVal_145 8
	%elementAddr_147 = add %arrayBase_144 %offset_146
	%arrayPtr_148 = load %elementAddr_147
	%arrayBase_149 = add %arrayPtr_148 8
	mov %idVal_150 %varDef_411
	%offset_151 = mul %idVal_150 8
	%elementAddr_152 = add %arrayBase_149 %offset_151
	%elementVal_153 = load %elementAddr_152
	mov %arrayPtr_154 %varDef_355
	%arrayBase_155 = add %arrayPtr_154 8
	mov %idVal_156 %varDef_411
	%offset_157 = mul %idVal_156 8
	%elementAddr_158 = add %arrayBase_155 %offset_157
	%arrayPtr_159 = load %elementAddr_158
	%arrayBase_160 = add %arrayPtr_159 8
	mov %idVal_161 %varDef_392
	%offset_162 = mul %idVal_161 8
	%elementAddr_163 = add %arrayBase_160 %offset_162
	%elementVal_164 = load %elementAddr_163
	mov %varDef_432 %elementVal_142
	mov %varDef_433 %elementVal_153
	mov %varDef_434 %elementVal_164
	mov %cidVal_319 %varDef_432
	mov %cidVal_320 %varDef_433
	%cres_321 = add %cidVal_319 %cidVal_320
	mov %cidVal_322 %varDef_434
	%cres_323 = add %cres_321 %cidVal_322
	%cres_324 = lsft 1 30
	%cres_325 = sub %cres_324 1
	%cres_326 = bit_and %cres_323 %cres_325
	mov %varDef_435 %cres_326
	mov %res_131 %varDef_435
	mov %arrayPtr_165 %varDef_363
	%arrayBase_166 = add %arrayPtr_165 8
	mov %idVal_167 %varDef_372
	%offset_168 = mul %idVal_167 8
	%elementAddr_169 = add %arrayBase_166 %offset_168
	%arrayPtr_170 = load %elementAddr_169
	%arrayBase_171 = add %arrayPtr_170 8
	mov %idVal_172 %varDef_392
	%offset_173 = mul %idVal_172 8
	%elementAddr_174 = add %arrayBase_171 %offset_173
	store %res_131 %elementAddr_174
	mov %arrayPtr_176 %varDef_359
	%arrayBase_177 = add %arrayPtr_176 8
	mov %idVal_178 %varDef_372
	%offset_179 = mul %idVal_178 8
	%elementAddr_180 = add %arrayBase_177 %offset_179
	%arrayPtr_181 = load %elementAddr_180
	%arrayBase_182 = add %arrayPtr_181 8
	mov %idVal_183 %varDef_392
	%offset_184 = mul %idVal_183 8
	%elementAddr_185 = add %arrayBase_182 %offset_184
	%elementVal_186 = load %elementAddr_185
	mov %arrayPtr_187 %varDef_355
	%arrayBase_188 = add %arrayPtr_187 8
	mov %idVal_189 %varDef_372
	%offset_190 = mul %idVal_189 8
	%elementAddr_191 = add %arrayBase_188 %offset_190
	%arrayPtr_192 = load %elementAddr_191
	%arrayBase_193 = add %arrayPtr_192 8
	mov %idVal_194 %varDef_411
	%offset_195 = mul %idVal_194 8
	%elementAddr_196 = add %arrayBase_193 %offset_195
	%elementVal_197 = load %elementAddr_196
	mov %arrayPtr_198 %varDef_355
	%arrayBase_199 = add %arrayPtr_198 8
	mov %idVal_200 %varDef_411
	%offset_201 = mul %idVal_200 8
	%elementAddr_202 = add %arrayBase_199 %offset_201
	%arrayPtr_203 = load %elementAddr_202
	%arrayBase_204 = add %arrayPtr_203 8
	mov %idVal_205 %varDef_392
	%offset_206 = mul %idVal_205 8
	%elementAddr_207 = add %arrayBase_204 %offset_206
	%elementVal_208 = load %elementAddr_207
	mov %varDef_436 %elementVal_186
	mov %varDef_437 %elementVal_197
	mov %varDef_438 %elementVal_208
	mov %cidVal_331 %varDef_436
	mov %cidVal_332 %varDef_437
	%cres_333 = add %cidVal_331 %cidVal_332
	mov %cidVal_334 %varDef_438
	%cres_335 = add %cres_333 %cidVal_334
	%cres_336 = lsft 1 30
	%cres_337 = sub %cres_336 1
	%cres_338 = bit_and %cres_335 %cres_337
	mov %varDef_439 %cres_338
	mov %res_175 %varDef_439
	mov %arrayPtr_209 %varDef_363
	%arrayBase_210 = add %arrayPtr_209 8
	mov %idVal_211 %varDef_372
	%offset_212 = mul %idVal_211 8
	%elementAddr_213 = add %arrayBase_210 %offset_212
	%arrayPtr_214 = load %elementAddr_213
	%arrayBase_215 = add %arrayPtr_214 8
	mov %idVal_216 %varDef_392
	%offset_217 = mul %idVal_216 8
	%elementAddr_218 = add %arrayBase_215 %offset_217
	store %res_175 %elementAddr_218
	mov %arrayPtr_220 %varDef_359
	%arrayBase_221 = add %arrayPtr_220 8
	mov %idVal_222 %varDef_372
	%offset_223 = mul %idVal_222 8
	%elementAddr_224 = add %arrayBase_221 %offset_223
	%arrayPtr_225 = load %elementAddr_224
	%arrayBase_226 = add %arrayPtr_225 8
	mov %idVal_227 %varDef_392
	%offset_228 = mul %idVal_227 8
	%elementAddr_229 = add %arrayBase_226 %offset_228
	%elementVal_230 = load %elementAddr_229
	mov %arrayPtr_231 %varDef_355
	%arrayBase_232 = add %arrayPtr_231 8
	mov %idVal_233 %varDef_372
	%offset_234 = mul %idVal_233 8
	%elementAddr_235 = add %arrayBase_232 %offset_234
	%arrayPtr_236 = load %elementAddr_235
	%arrayBase_237 = add %arrayPtr_236 8
	mov %idVal_238 %varDef_411
	%offset_239 = mul %idVal_238 8
	%elementAddr_240 = add %arrayBase_237 %offset_239
	%elementVal_241 = load %elementAddr_240
	mov %arrayPtr_242 %varDef_355
	%arrayBase_243 = add %arrayPtr_242 8
	mov %idVal_244 %varDef_411
	%offset_245 = mul %idVal_244 8
	%elementAddr_246 = add %arrayBase_243 %offset_245
	%arrayPtr_247 = load %elementAddr_246
	%arrayBase_248 = add %arrayPtr_247 8
	mov %idVal_249 %varDef_392
	%offset_250 = mul %idVal_249 8
	%elementAddr_251 = add %arrayBase_248 %offset_250
	%elementVal_252 = load %elementAddr_251
	mov %varDef_440 %elementVal_230
	mov %varDef_441 %elementVal_241
	mov %varDef_442 %elementVal_252
	mov %cidVal_343 %varDef_440
	mov %cidVal_344 %varDef_441
	%cres_345 = add %cidVal_343 %cidVal_344
	mov %cidVal_346 %varDef_442
	%cres_347 = add %cres_345 %cidVal_346
	%cres_348 = lsft 1 30
	%cres_349 = sub %cres_348 1
	%cres_350 = bit_and %cres_347 %cres_349
	mov %varDef_443 %cres_350
	mov %res_219 %varDef_443
	mov %arrayPtr_253 %varDef_363
	%arrayBase_254 = add %arrayPtr_253 8
	mov %idVal_255 %varDef_372
	%offset_256 = mul %idVal_255 8
	%elementAddr_257 = add %arrayBase_254 %offset_256
	%arrayPtr_258 = load %elementAddr_257
	%arrayBase_259 = add %arrayPtr_258 8
	mov %idVal_260 %varDef_392
	%offset_261 = mul %idVal_260 8
	%elementAddr_262 = add %arrayBase_259 %offset_261
	store %res_219 %elementAddr_262
	br <31>

<31> for_step
	%varDef_444 = phi <30> %varDef_412 <33> %varDef_431
	%varDef_445 = phi <30> %varDef_413 <33> %varDef_430
	%varDef_446 = phi <30> %varDef_414 <33> %varDef_429
	%varDef_447 = phi <30> %varDef_415 <33> %varDef_428
	%varDef_448 = phi <30> %varDef_416 <33> %varDef_435
	%varDef_449 = phi <30> %varDef_417 <33> %varDef_434
	%varDef_450 = phi <30> %varDef_418 <33> %varDef_433
	%varDef_451 = phi <30> %varDef_419 <33> %varDef_432
	%varDef_452 = phi <30> %varDef_420 <33> %varDef_439
	%varDef_453 = phi <30> %varDef_421 <33> %varDef_438
	%varDef_454 = phi <30> %varDef_422 <33> %varDef_437
	%varDef_455 = phi <30> %varDef_423 <33> %varDef_436
	%varDef_456 = phi <30> %varDef_424 <33> %varDef_443
	%varDef_457 = phi <30> %varDef_425 <33> %varDef_442
	%varDef_458 = phi <30> %varDef_426 <33> %varDef_441
	%varDef_459 = phi <30> %varDef_427 <33> %varDef_440
	mov %idVal_263 %varDef_411
	mov %oldVal_264 %varDef_411
	%newVal_265 = inc %oldVal_264
	mov %varDef_460 %newVal_265
	br <29>

<27> for_step
	mov %idVal_266 %varDef_392
	mov %oldVal_267 %varDef_392
	%newVal_268 = inc %oldVal_267
	mov %varDef_461 %newVal_268
	br <25>

<23> for_step
	mov %idVal_269 %varDef_372
	mov %oldVal_270 %varDef_372
	%newVal_271 = inc %oldVal_270
	mov %varDef_462 %newVal_271
	br <21>

<24> for_end
	mov %varDef_463 0
	mov %varDef_464 0
	br <35>

<35> for_cond
	%varDef_465 = phi <24> %varDef_464 <37> %varDef_473
	%varDef_466 = phi <24> %varDef_373 <37> %varDef_469
	%varDef_467 = phi <24> %varDef_463 <37> %varDef_470
	mov %idVal_273 %varDef_465
	mov %idVal_274 %varDef_351
	%res_275 = lt %idVal_273 %idVal_274
	br %res_275 <36> <38>

<36> for_body
	mov %varDef_468 0
	br <39>

<39> for_cond
	%varDef_469 = phi <36> %varDef_468 <40> %varDef_472
	%varDef_470 = phi <36> %varDef_467 <40> %varDef_471
	mov %idVal_276 %varDef_469
	mov %idVal_277 %varDef_351
	%res_278 = lt %idVal_276 %idVal_277
	br %res_278 <40> <37>

<40> for_body
	mov %idVal_279 %varDef_470
	mov %arrayPtr_280 %varDef_359
	%arrayBase_281 = add %arrayPtr_280 8
	mov %idVal_282 %varDef_465
	%offset_283 = mul %idVal_282 8
	%elementAddr_284 = add %arrayBase_281 %offset_283
	%arrayPtr_285 = load %elementAddr_284
	%arrayBase_286 = add %arrayPtr_285 8
	mov %idVal_287 %varDef_469
	%offset_288 = mul %idVal_287 8
	%elementAddr_289 = add %arrayBase_286 %offset_288
	%elementVal_290 = load %elementAddr_289
	%res_291 = add %idVal_279 %elementVal_290
	%res_292 = lsft 1 30
	%res_293 = sub %res_292 1
	%res_294 = bit_and %res_291 %res_293
	mov %varDef_471 %res_294
	mov %idVal_295 %varDef_469
	mov %oldVal_296 %varDef_469
	%newVal_297 = inc %oldVal_296
	mov %varDef_472 %newVal_297
	br <39>

<37> for_step
	mov %idVal_298 %varDef_465
	mov %oldVal_299 %varDef_465
	%newVal_300 = inc %oldVal_299
	mov %varDef_473 %newVal_300
	br <35>

<38> for_end
	mov %idVal_302 %varDef_467
	%res_301 = toString ( %idVal_302 )
	print ( %res_301 )
	ret 0

}

