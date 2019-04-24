@N

@n

@a

@bak

@a_left

@a_right

@heap

@i1

@i2

@i3

@i4

@i5

@i6

@i7

@i8

@i9

@i10

@i11

@i12

@i13

@i14

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
	store 100000 @N
	%idVal_0 = load @N
	%memberLength_2 = mul %idVal_0 8
	%arrayLength_3 = add %memberLength_2 8
	%arrayPtr_1 = malloc %arrayLength_3
	store %idVal_0 %arrayPtr_1
	store %arrayPtr_1 @a
	%idVal_4 = load @N
	%memberLength_6 = mul %idVal_4 8
	%arrayLength_7 = add %memberLength_6 8
	%arrayPtr_5 = malloc %arrayLength_7
	store %idVal_4 %arrayPtr_5
	store %arrayPtr_5 @bak
	%idVal_8 = load @N
	%memberLength_10 = mul %idVal_8 8
	%arrayLength_11 = add %memberLength_10 8
	%arrayPtr_9 = malloc %arrayLength_11
	store %idVal_8 %arrayPtr_9
	store %arrayPtr_9 @a_left
	%idVal_12 = load @N
	%memberLength_14 = mul %idVal_12 8
	%arrayLength_15 = add %memberLength_14 8
	%arrayPtr_13 = malloc %arrayLength_15
	store %idVal_12 %arrayPtr_13
	store %arrayPtr_13 @a_right
	%idVal_16 = load @N
	%memberLength_18 = mul %idVal_16 8
	%arrayLength_19 = add %memberLength_18 8
	%arrayPtr_17 = malloc %arrayLength_19
	store %idVal_16 %arrayPtr_17
	store %arrayPtr_17 @heap
	ret 

}

define _A_Optimizer ( %thisVal_0 ) {
<0> entry
	%varAddr_518 = alloca 4
	%varAddr_517 = alloca 4
	%varAddr_516 = alloca 4
	%varAddr_515 = alloca 4
	%varAddr_514 = alloca 4
	%varAddr_513 = alloca 4
	%varAddr_512 = alloca 4
	%varAddr_511 = alloca 4
	%varAddr_510 = alloca 4
	%varAddr_509 = alloca 4
	%varAddr_508 = alloca 4
	%varAddr_507 = alloca 4
	%varAddr_506 = alloca 4
	%varAddr_505 = alloca 4
	%varAddr_504 = alloca 4
	%varAddr_503 = alloca 4
	%varAddr_502 = alloca 4
	%varAddr_501 = alloca 4
	%varAddr_500 = alloca 4
	%varAddr_499 = alloca 4
	%varAddr_498 = alloca 4
	%varAddr_497 = alloca 4
	%varAddr_496 = alloca 4
	%varAddr_495 = alloca 4
	%varAddr_494 = alloca 4
	%varAddr_493 = alloca 4
	%varAddr_492 = alloca 4
	%varAddr_491 = alloca 4
	%varAddr_490 = alloca 4
	%varAddr_489 = alloca 4
	%varAddr_488 = alloca 4
	%varAddr_487 = alloca 4
	%varAddr_486 = alloca 4
	%varAddr_485 = alloca 4
	%varAddr_484 = alloca 4
	%varAddr_483 = alloca 4
	%varAddr_482 = alloca 4
	%varAddr_481 = alloca 4
	%varAddr_480 = alloca 4
	%varAddr_479 = alloca 4
	%varAddr_478 = alloca 4
	%varAddr_477 = alloca 4
	%varAddr_476 = alloca 4
	%varAddr_475 = alloca 4
	%varAddr_474 = alloca 4
	%varAddr_473 = alloca 4
	%varAddr_472 = alloca 4
	%varAddr_471 = alloca 4
	%varAddr_470 = alloca 4
	%arrayPtr_3 = malloc 24
	store 2 %arrayPtr_3
	%arrayEndPos_6 = add %arrayPtr_3 24
	%startPos_7 = add %arrayPtr_3 8
	store %startPos_7 %varAddr_470
	store 0 %varAddr_471
	store 0 %varAddr_472
	store 0 %varAddr_473
	store 0 %varAddr_474
	store 0 %varAddr_475
	store 0 %varAddr_476
	store 0 %varAddr_477
	br <1>

<1> new_for_cond
	%varDef_393 = load %varAddr_470
	%varDef_395 = load %varAddr_471
	%varDef_396 = load %varAddr_472
	%varDef_397 = load %varAddr_473
	%varDef_398 = load %varAddr_474
	%varDef_399 = load %varAddr_475
	%varDef_400 = load %varAddr_476
	%varDef_401 = load %varAddr_477
	%condition_10 = lt %varDef_393 %arrayEndPos_6
	br %condition_10 <2> <4>

<2> new_for_body
	%arrayPtr_11 = malloc 24
	store 2 %arrayPtr_11
	%arrayEndPos_14 = add %arrayPtr_11 24
	%startPos_15 = add %arrayPtr_11 8
	store %startPos_15 %varAddr_502
	store %varDef_395 %varAddr_503
	store %varDef_396 %varAddr_504
	store %varDef_397 %varAddr_505
	store %varDef_398 %varAddr_506
	store %varDef_399 %varAddr_507
	store %varDef_400 %varAddr_508
	store %varDef_401 %varAddr_509
	br <5>

<5> new_for_cond
	%varDef_403 = load %varAddr_502
	%varDef_404 = load %varAddr_503
	%varDef_405 = load %varAddr_504
	%varDef_406 = load %varAddr_505
	%varDef_407 = load %varAddr_506
	%varDef_408 = load %varAddr_507
	%varDef_409 = load %varAddr_508
	%varDef_410 = load %varAddr_509
	%condition_18 = lt %varDef_403 %arrayEndPos_14
	br %condition_18 <6> <8>

<6> new_for_body
	%arrayPtr_19 = malloc 24
	store 2 %arrayPtr_19
	%arrayEndPos_22 = add %arrayPtr_19 24
	%startPos_23 = add %arrayPtr_19 8
	store %startPos_23 %varAddr_483
	store %varDef_405 %varAddr_484
	store %varDef_406 %varAddr_485
	store %varDef_407 %varAddr_486
	store %varDef_408 %varAddr_487
	store %varDef_409 %varAddr_488
	store %varDef_410 %varAddr_489
	br <9>

<9> new_for_cond
	%varDef_412 = load %varAddr_483
	%varDef_413 = load %varAddr_484
	%varDef_414 = load %varAddr_485
	%varDef_415 = load %varAddr_486
	%varDef_416 = load %varAddr_487
	%varDef_417 = load %varAddr_488
	%varDef_418 = load %varAddr_489
	%condition_26 = lt %varDef_412 %arrayEndPos_22
	br %condition_26 <10> <12>

<10> new_for_body
	%arrayPtr_27 = malloc 24
	store 2 %arrayPtr_27
	%arrayEndPos_30 = add %arrayPtr_27 24
	%startPos_31 = add %arrayPtr_27 8
	store %startPos_31 %varAddr_513
	store %varDef_414 %varAddr_514
	store %varDef_415 %varAddr_515
	store %varDef_416 %varAddr_516
	store %varDef_417 %varAddr_517
	store %varDef_418 %varAddr_518
	br <13>

<13> new_for_cond
	%varDef_420 = load %varAddr_513
	%varDef_421 = load %varAddr_514
	%varDef_422 = load %varAddr_515
	%varDef_423 = load %varAddr_516
	%varDef_424 = load %varAddr_517
	%varDef_425 = load %varAddr_518
	%condition_34 = lt %varDef_420 %arrayEndPos_30
	br %condition_34 <14> <16>

<14> new_for_body
	%arrayPtr_35 = malloc 24
	store 2 %arrayPtr_35
	%arrayEndPos_38 = add %arrayPtr_35 24
	%startPos_39 = add %arrayPtr_35 8
	store %startPos_39 %varAddr_478
	store %varDef_422 %varAddr_479
	store %varDef_423 %varAddr_480
	store %varDef_424 %varAddr_481
	store %varDef_425 %varAddr_482
	br <17>

<17> new_for_cond
	%varDef_427 = load %varAddr_478
	%varDef_428 = load %varAddr_479
	%varDef_429 = load %varAddr_480
	%varDef_430 = load %varAddr_481
	%varDef_431 = load %varAddr_482
	%condition_42 = lt %varDef_427 %arrayEndPos_38
	br %condition_42 <18> <20>

<18> new_for_body
	%arrayPtr_43 = malloc 24
	store 2 %arrayPtr_43
	%arrayEndPos_46 = add %arrayPtr_43 24
	%startPos_47 = add %arrayPtr_43 8
	store %startPos_47 %varAddr_498
	store %varDef_429 %varAddr_499
	store %varDef_430 %varAddr_500
	store %varDef_431 %varAddr_501
	br <21>

<21> new_for_cond
	%varDef_433 = load %varAddr_498
	%varDef_434 = load %varAddr_499
	%varDef_435 = load %varAddr_500
	%varDef_436 = load %varAddr_501
	%condition_50 = lt %varDef_433 %arrayEndPos_46
	br %condition_50 <22> <24>

<22> new_for_body
	%arrayPtr_51 = malloc 24
	store 2 %arrayPtr_51
	%arrayEndPos_54 = add %arrayPtr_51 24
	%startPos_55 = add %arrayPtr_51 8
	store %startPos_55 %varAddr_510
	store %varDef_435 %varAddr_511
	store %varDef_436 %varAddr_512
	br <25>

<25> new_for_cond
	%varDef_438 = load %varAddr_510
	%varDef_439 = load %varAddr_511
	%varDef_440 = load %varAddr_512
	%condition_58 = lt %varDef_438 %arrayEndPos_54
	br %condition_58 <26> <28>

<26> new_for_body
	%arrayPtr_59 = malloc 24
	store 2 %arrayPtr_59
	%arrayEndPos_62 = add %arrayPtr_59 24
	%startPos_63 = add %arrayPtr_59 8
	store %startPos_63 %varAddr_490
	store %varDef_440 %varAddr_491
	br <29>

<29> new_for_cond
	%varDef_442 = load %varAddr_490
	%varDef_443 = load %varAddr_491
	%condition_66 = lt %varDef_442 %arrayEndPos_62
	br %condition_66 <30> <32>

<30> new_for_body
	%arrayPtr_67 = malloc 24
	store 2 %arrayPtr_67
	%arrayEndPos_70 = add %arrayPtr_67 24
	%startPos_71 = add %arrayPtr_67 8
	store %startPos_71 %varAddr_492
	br <33>

<33> new_for_cond
	%varDef_445 = load %varAddr_492
	%condition_74 = lt %varDef_445 %arrayEndPos_70
	br %condition_74 <34> <36>

<34> new_for_body
	%arrayPtr_75 = malloc 24
	store 2 %arrayPtr_75
	store %arrayPtr_75 %varDef_445
	%pos_78 = add %varDef_445 8
	store %pos_78 %varAddr_492
	br <33>

<36> new_for_end
	store %arrayPtr_67 %varDef_442
	%pos_79 = add %varDef_442 8
	store %pos_79 %varAddr_490
	store %varDef_445 %varAddr_491
	br <29>

<32> new_for_end
	store %arrayPtr_59 %varDef_438
	%pos_80 = add %varDef_438 8
	store %pos_80 %varAddr_510
	store %varDef_442 %varAddr_511
	store %varDef_443 %varAddr_512
	br <25>

<28> new_for_end
	store %arrayPtr_51 %varDef_433
	%pos_81 = add %varDef_433 8
	store %pos_81 %varAddr_498
	store %varDef_438 %varAddr_499
	store %varDef_439 %varAddr_500
	store %varDef_440 %varAddr_501
	br <21>

<24> new_for_end
	store %arrayPtr_43 %varDef_427
	%pos_82 = add %varDef_427 8
	store %pos_82 %varAddr_478
	store %varDef_433 %varAddr_479
	store %varDef_434 %varAddr_480
	store %varDef_435 %varAddr_481
	store %varDef_436 %varAddr_482
	br <17>

<20> new_for_end
	store %arrayPtr_35 %varDef_420
	%pos_83 = add %varDef_420 8
	store %pos_83 %varAddr_513
	store %varDef_427 %varAddr_514
	store %varDef_428 %varAddr_515
	store %varDef_429 %varAddr_516
	store %varDef_430 %varAddr_517
	store %varDef_431 %varAddr_518
	br <13>

<16> new_for_end
	store %arrayPtr_27 %varDef_412
	%pos_84 = add %varDef_412 8
	store %pos_84 %varAddr_483
	store %varDef_420 %varAddr_484
	store %varDef_421 %varAddr_485
	store %varDef_422 %varAddr_486
	store %varDef_423 %varAddr_487
	store %varDef_424 %varAddr_488
	store %varDef_425 %varAddr_489
	br <9>

<12> new_for_end
	store %arrayPtr_19 %varDef_403
	%pos_85 = add %varDef_403 8
	store %pos_85 %varAddr_502
	store %varDef_412 %varAddr_503
	store %varDef_413 %varAddr_504
	store %varDef_414 %varAddr_505
	store %varDef_415 %varAddr_506
	store %varDef_416 %varAddr_507
	store %varDef_417 %varAddr_508
	store %varDef_418 %varAddr_509
	br <5>

<8> new_for_end
	store %arrayPtr_11 %varDef_393
	%pos_86 = add %varDef_393 8
	store %pos_86 %varAddr_470
	store %varDef_404 %varAddr_471
	store %varDef_405 %varAddr_472
	store %varDef_406 %varAddr_473
	store %varDef_407 %varAddr_474
	store %varDef_408 %varAddr_475
	store %varDef_409 %varAddr_476
	store %varDef_410 %varAddr_477
	br <1>

<4> new_for_end
	store 1 %varAddr_495
	store 0 %varAddr_496
	br <37>

<37> for_cond
	%varDef_458 = load %varAddr_495
	%varDef_459 = load %varAddr_496
	%res_104 = le %varDef_458 1000
	br %res_104 <38> <40>

<38> for_body
	%res_106 = add 123 %varDef_458
	%arrayBase_108 = add %arrayPtr_3 8
	%elementAddr_110 = add %arrayBase_108 0
	%arrayPtr_111 = load %elementAddr_110
	%arrayBase_112 = add %arrayPtr_111 8
	%elementAddr_114 = add %arrayBase_112 8
	%arrayPtr_115 = load %elementAddr_114
	%arrayBase_116 = add %arrayPtr_115 8
	%elementAddr_118 = add %arrayBase_116 0
	%arrayPtr_119 = load %elementAddr_118
	%arrayBase_120 = add %arrayPtr_119 8
	%elementAddr_122 = add %arrayBase_120 8
	%arrayPtr_123 = load %elementAddr_122
	%arrayBase_124 = add %arrayPtr_123 8
	%elementAddr_126 = add %arrayBase_124 0
	%arrayPtr_127 = load %elementAddr_126
	%arrayBase_128 = add %arrayPtr_127 8
	%elementAddr_130 = add %arrayBase_128 8
	%arrayPtr_131 = load %elementAddr_130
	%arrayBase_132 = add %arrayPtr_131 8
	%elementAddr_134 = add %arrayBase_132 0
	%arrayPtr_135 = load %elementAddr_134
	%arrayBase_136 = add %arrayPtr_135 8
	%elementAddr_138 = add %arrayBase_136 8
	%arrayPtr_139 = load %elementAddr_138
	%arrayBase_140 = add %arrayPtr_139 8
	%elementAddr_142 = add %arrayBase_140 0
	%arrayPtr_143 = load %elementAddr_142
	%arrayBase_144 = add %arrayPtr_143 8
	%elementAddr_146 = add %arrayBase_144 8
	store %res_106 %elementAddr_146
	%arrayPtr_152 = load %elementAddr_110
	%arrayBase_153 = add %arrayPtr_152 8
	%elementAddr_155 = add %arrayBase_153 8
	%arrayPtr_156 = load %elementAddr_155
	%arrayBase_157 = add %arrayPtr_156 8
	%elementAddr_159 = add %arrayBase_157 0
	%arrayPtr_160 = load %elementAddr_159
	%arrayBase_161 = add %arrayPtr_160 8
	%elementAddr_163 = add %arrayBase_161 8
	%arrayPtr_164 = load %elementAddr_163
	%arrayBase_165 = add %arrayPtr_164 8
	%elementAddr_167 = add %arrayBase_165 0
	%arrayPtr_168 = load %elementAddr_167
	%arrayBase_169 = add %arrayPtr_168 8
	%elementAddr_171 = add %arrayBase_169 8
	%arrayPtr_172 = load %elementAddr_171
	%arrayBase_173 = add %arrayPtr_172 8
	%elementAddr_175 = add %arrayBase_173 0
	%arrayPtr_176 = load %elementAddr_175
	%arrayBase_177 = add %arrayPtr_176 8
	%elementAddr_179 = add %arrayBase_177 8
	%arrayPtr_180 = load %elementAddr_179
	%arrayBase_181 = add %arrayPtr_180 8
	%elementAddr_183 = add %arrayBase_181 0
	%arrayPtr_184 = load %elementAddr_183
	%arrayBase_185 = add %arrayPtr_184 8
	%elementAddr_187 = add %arrayBase_185 8
	%elementVal_188 = load %elementAddr_187
	%res_189 = add %varDef_459 %elementVal_188
	%newVal_192 = inc %varDef_458
	store %newVal_192 %varAddr_495
	store %res_189 %varAddr_496
	br <37>

<40> for_end
	%res_193 = toString ( %varDef_459 )
	println ( %res_193 )
	store 1 %varAddr_493
	store %varDef_459 %varAddr_494
	br <41>

<41> for_cond
	%varDef_463 = load %varAddr_493
	%varDef_464 = load %varAddr_494
	%res_196 = le %varDef_463 1000000
	br %res_196 <42> <44>

<42> for_body
	mov %res_207 18760
	%res_208 = mod %res_207 1234
	%res_209 = mul %res_208 2345
	%res_210 = mod %res_209 1234
	%res_211 = mul %res_210 2345
	%res_212 = mod %res_211 1234
	%res_213 = mul %res_212 2345
	%res_214 = mod %res_213 1234
	%res_215 = mul %res_214 2345
	%res_216 = mod %res_215 1234
	%res_217 = mul %res_216 2345
	%res_218 = mod %res_217 1234
	%res_219 = mul %res_218 2345
	%res_220 = mod %res_219 1234
	%res_221 = mul %res_220 2345
	%res_222 = mod %res_221 1234
	%res_223 = mul %res_222 2345
	%res_224 = mod %res_223 1234
	%res_225 = mul %res_224 2345
	%res_226 = mod %res_225 1234
	%res_227 = mul %res_226 2345
	%res_228 = mod %res_227 1234
	%res_229 = mul %res_228 2345
	%res_230 = mod %res_229 1234
	%res_231 = mul %res_230 2345
	%res_232 = mod %res_231 1234
	%res_233 = mul %res_232 2345
	%res_234 = mod %res_233 1234
	%res_235 = mul %res_234 2345
	%res_236 = mod %res_235 1234
	%res_237 = mul %res_236 2345
	%res_238 = mod %res_237 1234
	%res_239 = mul %res_238 2345
	%res_240 = mod %res_239 1234
	%res_241 = mul %res_240 2345
	%res_242 = mod %res_241 1234
	%res_243 = mul %res_242 2345
	%res_244 = mod %res_243 1234
	%res_245 = mul %res_244 2345
	%res_246 = mod %res_245 1234
	%res_247 = mul %res_246 2345
	%res_248 = mod %res_247 1234
	%res_249 = mul %res_248 2345
	%res_250 = mod %res_249 1234
	%res_251 = mul %res_250 2345
	%res_252 = mod %res_251 1234
	%res_253 = mul %res_252 2345
	%res_254 = mod %res_253 1234
	%res_255 = mul %res_254 2345
	%res_256 = mod %res_255 1234
	%res_257 = mul %res_256 2345
	%res_258 = mod %res_257 1234
	%res_259 = mul %res_258 2345
	%res_260 = mod %res_259 1234
	%res_261 = mul %res_260 2345
	%res_262 = mod %res_261 1234
	%res_263 = mul %res_262 2345
	%res_264 = mod %res_263 1234
	%res_265 = mul %res_264 2345
	%res_266 = mod %res_265 1234
	%res_267 = mul %res_266 2345
	%res_268 = mod %res_267 1234
	%res_269 = mul %res_268 2345
	%res_270 = mod %res_269 1234
	%res_271 = mul %res_270 2345
	%res_272 = mod %res_271 1234
	%res_273 = mul %res_272 2345
	%res_274 = mod %res_273 1234
	%res_275 = mul %res_274 2345
	%res_276 = mod %res_275 1234
	%res_277 = mul %res_276 2345
	%res_278 = mod %res_277 1234
	%res_279 = mul %res_278 2345
	%res_280 = mod %res_279 1234
	%res_281 = mul %res_280 2345
	%res_282 = mod %res_281 1234
	%res_283 = mul %res_282 2345
	%res_284 = mod %res_283 1234
	%res_285 = mul %res_284 2345
	%res_286 = mod %res_285 1234
	%res_287 = mul %res_286 2345
	%res_288 = mod %res_287 1234
	%res_289 = mul %res_288 2345
	%res_290 = mod %res_289 1234
	%res_291 = mul %res_290 2345
	%res_292 = mod %res_291 1234
	%res_293 = mul %res_292 2345
	%res_294 = mod %res_293 1234
	%res_295 = mul %res_294 2345
	%res_296 = mod %res_295 1234
	%res_297 = mul %res_296 2345
	%res_298 = mod %res_297 1234
	%res_299 = mul %res_298 2345
	%res_300 = mod %res_299 1234
	%res_301 = mul %res_300 2345
	%res_302 = mod %res_301 1234
	%res_303 = mul %res_302 2345
	%res_304 = mod %res_303 1234
	%res_305 = mul %res_304 2345
	%res_306 = mod %res_305 1234
	%res_307 = mul %res_306 2345
	%res_308 = mod %res_307 1234
	%res_309 = mul %res_308 2345
	%res_310 = mod %res_309 1234
	%res_311 = mul %res_310 2345
	%res_312 = mod %res_311 1234
	%res_313 = mul %res_312 2345
	%res_314 = mod %res_313 1234
	%res_315 = mul %res_314 2345
	%res_316 = mod %res_315 1234
	%res_317 = mul %res_316 2345
	%res_318 = mod %res_317 1234
	%res_319 = mul %res_318 2345
	%res_320 = mod %res_319 1234
	%res_321 = mul %res_320 2345
	%res_322 = mod %res_321 1234
	%res_323 = mul %res_322 2345
	%res_324 = mod %res_323 1234
	%res_325 = mul %res_324 2345
	%res_326 = mod %res_325 1234
	%res_327 = mul %res_326 2345
	%res_328 = mod %res_327 1234
	%res_329 = mul %res_328 2345
	%res_330 = mod %res_329 1234
	%res_331 = mul %res_330 2345
	%res_332 = mod %res_331 1234
	%res_333 = mul %res_332 2345
	%res_334 = mod %res_333 1234
	%res_335 = mul %res_334 2345
	%res_336 = mod %res_335 1234
	%res_337 = mul %res_336 2345
	%res_338 = mod %res_337 1234
	%res_339 = mul %res_338 2345
	%res_340 = mod %res_339 1234
	%res_341 = mul %res_340 2345
	%res_342 = mod %res_341 1234
	%res_343 = mul %res_342 2345
	%res_344 = mod %res_343 1234
	%res_345 = mul %res_344 2345
	%res_346 = mod %res_345 1234
	%res_347 = mul %res_346 2345
	%res_348 = mod %res_347 1234
	%res_349 = mul %res_348 2345
	%res_350 = mod %res_349 1234
	%res_351 = mul %res_350 2345
	%res_352 = mod %res_351 1234
	%res_353 = mul %res_352 2345
	%res_354 = mod %res_353 1234
	%res_355 = mul %res_354 2345
	%res_356 = mod %res_355 1234
	%res_357 = mul %res_356 2345
	%res_358 = mod %res_357 1234
	%res_359 = mul %res_358 2345
	%res_360 = mod %res_359 1234
	%res_361 = mul %res_360 2345
	%res_362 = mod %res_361 1234
	%res_363 = mul %res_362 2345
	%res_364 = mod %res_363 1234
	%res_365 = mul %res_364 2345
	%res_366 = mod %res_365 1234
	%res_367 = mul %res_366 2345
	%res_368 = mod %res_367 1234
	%res_369 = mul %res_368 2345
	%res_370 = mod %res_369 1234
	%res_371 = mul %res_370 2345
	%res_372 = mod %res_371 1234
	%res_373 = mul %res_372 2345
	%res_374 = mod %res_373 1234
	%res_375 = mul %res_374 2345
	%res_376 = mod %res_375 1234
	%res_377 = mul %res_376 2345
	%res_378 = mod %res_377 1234
	%res_379 = mod %res_378 11
	%res_380 = add %varDef_464 %res_379
	%newVal_383 = inc %varDef_463
	store %newVal_383 %varAddr_493
	store %res_380 %varAddr_494
	br <41>

<44> for_end
	%res_384 = toString ( %varDef_464 )
	println ( %res_384 )
	store 1 %varAddr_497
	br <45>

<45> for_cond
	%varDef_468 = load %varAddr_497
	%res_387 = le %varDef_468 200000000
	br %res_387 <47> <48>

<47> for_step
	%newVal_390 = inc %varDef_468
	store %newVal_390 %varAddr_497
	br <45>

<48> for_end
	ret 

}

define _A_A ( %thisVal_0 ) {
<0> entry
	%varAddr_195 = alloca 4
	%varAddr_194 = alloca 4
	%varAddr_193 = alloca 4
	%varAddr_192 = alloca 4
	%varAddr_191 = alloca 4
	%varAddr_190 = alloca 4
	%varAddr_189 = alloca 4
	%varAddr_188 = alloca 4
	%varAddr_187 = alloca 4
	%varAddr_186 = alloca 4
	%varAddr_185 = alloca 4
	%varAddr_184 = alloca 4
	%varAddr_183 = alloca 4
	%varAddr_182 = alloca 4
	%varAddr_181 = alloca 4
	%varAddr_180 = alloca 4
	%varAddr_179 = alloca 4
	%varAddr_178 = alloca 4
	%varAddr_177 = alloca 4
	%varAddr_176 = alloca 4
	%varAddr_175 = alloca 4
	%varAddr_174 = alloca 4
	%varAddr_173 = alloca 4
	%varAddr_172 = alloca 4
	%varAddr_171 = alloca 4
	%varAddr_170 = alloca 4
	%varAddr_169 = alloca 4
	%varAddr_168 = alloca 4
	%varAddr_167 = alloca 4
	%varAddr_166 = alloca 4
	%varAddr_165 = alloca 4
	%varAddr_164 = alloca 4
	%varAddr_163 = alloca 4
	%varAddr_162 = alloca 4
	%varAddr_161 = alloca 4
	%varAddr_160 = alloca 4
	%varAddr_159 = alloca 4
	%varAddr_158 = alloca 4
	%varAddr_157 = alloca 4
	%varAddr_156 = alloca 4
	%varAddr_155 = alloca 4
	%varAddr_154 = alloca 4
	%varAddr_153 = alloca 4
	%varAddr_152 = alloca 4
	%arrayPtr_2 = malloc 24
	store 2 %arrayPtr_2
	%arrayEndPos_5 = add %arrayPtr_2 24
	%startPos_6 = add %arrayPtr_2 8
	store %startPos_6 %varAddr_182
	store 0 %varAddr_183
	store 0 %varAddr_184
	store 0 %varAddr_185
	store 0 %varAddr_186
	store 0 %varAddr_187
	store 0 %varAddr_188
	store 0 %varAddr_189
	br <1>

<1> new_for_cond
	%varDef_90 = load %varAddr_182
	%varDef_92 = load %varAddr_183
	%varDef_93 = load %varAddr_184
	%varDef_94 = load %varAddr_185
	%varDef_95 = load %varAddr_186
	%varDef_96 = load %varAddr_187
	%varDef_97 = load %varAddr_188
	%varDef_98 = load %varAddr_189
	%condition_9 = lt %varDef_90 %arrayEndPos_5
	br %condition_9 <2> <4>

<2> new_for_body
	%arrayPtr_10 = malloc 24
	store 2 %arrayPtr_10
	%arrayEndPos_13 = add %arrayPtr_10 24
	%startPos_14 = add %arrayPtr_10 8
	store %startPos_14 %varAddr_159
	store %varDef_92 %varAddr_160
	store %varDef_93 %varAddr_161
	store %varDef_94 %varAddr_162
	store %varDef_95 %varAddr_163
	store %varDef_96 %varAddr_164
	store %varDef_97 %varAddr_165
	store %varDef_98 %varAddr_166
	br <5>

<5> new_for_cond
	%varDef_100 = load %varAddr_159
	%varDef_101 = load %varAddr_160
	%varDef_102 = load %varAddr_161
	%varDef_103 = load %varAddr_162
	%varDef_104 = load %varAddr_163
	%varDef_105 = load %varAddr_164
	%varDef_106 = load %varAddr_165
	%varDef_107 = load %varAddr_166
	%condition_17 = lt %varDef_100 %arrayEndPos_13
	br %condition_17 <6> <8>

<6> new_for_body
	%arrayPtr_18 = malloc 32
	store 3 %arrayPtr_18
	%arrayEndPos_21 = add %arrayPtr_18 32
	%startPos_22 = add %arrayPtr_18 8
	store %startPos_22 %varAddr_152
	store %varDef_102 %varAddr_153
	store %varDef_103 %varAddr_154
	store %varDef_104 %varAddr_155
	store %varDef_105 %varAddr_156
	store %varDef_106 %varAddr_157
	store %varDef_107 %varAddr_158
	br <9>

<9> new_for_cond
	%varDef_109 = load %varAddr_152
	%varDef_110 = load %varAddr_153
	%varDef_111 = load %varAddr_154
	%varDef_112 = load %varAddr_155
	%varDef_113 = load %varAddr_156
	%varDef_114 = load %varAddr_157
	%varDef_115 = load %varAddr_158
	%condition_25 = lt %varDef_109 %arrayEndPos_21
	br %condition_25 <10> <12>

<10> new_for_body
	%arrayPtr_26 = malloc 24
	store 2 %arrayPtr_26
	%arrayEndPos_29 = add %arrayPtr_26 24
	%startPos_30 = add %arrayPtr_26 8
	store %startPos_30 %varAddr_167
	store %varDef_111 %varAddr_168
	store %varDef_112 %varAddr_169
	store %varDef_113 %varAddr_170
	store %varDef_114 %varAddr_171
	store %varDef_115 %varAddr_172
	br <13>

<13> new_for_cond
	%varDef_117 = load %varAddr_167
	%varDef_118 = load %varAddr_168
	%varDef_119 = load %varAddr_169
	%varDef_120 = load %varAddr_170
	%varDef_121 = load %varAddr_171
	%varDef_122 = load %varAddr_172
	%condition_33 = lt %varDef_117 %arrayEndPos_29
	br %condition_33 <14> <16>

<14> new_for_body
	%arrayPtr_34 = malloc 32
	store 3 %arrayPtr_34
	%arrayEndPos_37 = add %arrayPtr_34 32
	%startPos_38 = add %arrayPtr_34 8
	store %startPos_38 %varAddr_173
	store %varDef_119 %varAddr_174
	store %varDef_120 %varAddr_175
	store %varDef_121 %varAddr_176
	store %varDef_122 %varAddr_177
	br <17>

<17> new_for_cond
	%varDef_124 = load %varAddr_173
	%varDef_125 = load %varAddr_174
	%varDef_126 = load %varAddr_175
	%varDef_127 = load %varAddr_176
	%varDef_128 = load %varAddr_177
	%condition_41 = lt %varDef_124 %arrayEndPos_37
	br %condition_41 <18> <20>

<18> new_for_body
	%arrayPtr_42 = malloc 24
	store 2 %arrayPtr_42
	%arrayEndPos_45 = add %arrayPtr_42 24
	%startPos_46 = add %arrayPtr_42 8
	store %startPos_46 %varAddr_190
	store %varDef_126 %varAddr_191
	store %varDef_127 %varAddr_192
	store %varDef_128 %varAddr_193
	br <21>

<21> new_for_cond
	%varDef_130 = load %varAddr_190
	%varDef_131 = load %varAddr_191
	%varDef_132 = load %varAddr_192
	%varDef_133 = load %varAddr_193
	%condition_49 = lt %varDef_130 %arrayEndPos_45
	br %condition_49 <22> <24>

<22> new_for_body
	%arrayPtr_50 = malloc 24
	store 2 %arrayPtr_50
	%arrayEndPos_53 = add %arrayPtr_50 24
	%startPos_54 = add %arrayPtr_50 8
	store %startPos_54 %varAddr_178
	store %varDef_132 %varAddr_179
	store %varDef_133 %varAddr_180
	br <25>

<25> new_for_cond
	%varDef_135 = load %varAddr_178
	%varDef_136 = load %varAddr_179
	%varDef_137 = load %varAddr_180
	%condition_57 = lt %varDef_135 %arrayEndPos_53
	br %condition_57 <26> <28>

<26> new_for_body
	%arrayPtr_58 = malloc 32
	store 3 %arrayPtr_58
	%arrayEndPos_61 = add %arrayPtr_58 32
	%startPos_62 = add %arrayPtr_58 8
	store %startPos_62 %varAddr_194
	store %varDef_137 %varAddr_195
	br <29>

<29> new_for_cond
	%varDef_139 = load %varAddr_194
	%varDef_140 = load %varAddr_195
	%condition_65 = lt %varDef_139 %arrayEndPos_61
	br %condition_65 <30> <32>

<30> new_for_body
	%arrayPtr_66 = malloc 24
	store 2 %arrayPtr_66
	%arrayEndPos_69 = add %arrayPtr_66 24
	%startPos_70 = add %arrayPtr_66 8
	store %startPos_70 %varAddr_181
	br <33>

<33> new_for_cond
	%varDef_142 = load %varAddr_181
	%condition_73 = lt %varDef_142 %arrayEndPos_69
	br %condition_73 <34> <36>

<34> new_for_body
	%arrayPtr_74 = malloc 24
	store 2 %arrayPtr_74
	store %arrayPtr_74 %varDef_142
	%pos_77 = add %varDef_142 8
	store %pos_77 %varAddr_181
	br <33>

<36> new_for_end
	store %arrayPtr_66 %varDef_139
	%pos_78 = add %varDef_139 8
	store %pos_78 %varAddr_194
	store %varDef_142 %varAddr_195
	br <29>

<32> new_for_end
	store %arrayPtr_58 %varDef_135
	%pos_79 = add %varDef_135 8
	store %pos_79 %varAddr_178
	store %varDef_139 %varAddr_179
	store %varDef_140 %varAddr_180
	br <25>

<28> new_for_end
	store %arrayPtr_50 %varDef_130
	%pos_80 = add %varDef_130 8
	store %pos_80 %varAddr_190
	store %varDef_135 %varAddr_191
	store %varDef_136 %varAddr_192
	store %varDef_137 %varAddr_193
	br <21>

<24> new_for_end
	store %arrayPtr_42 %varDef_124
	%pos_81 = add %varDef_124 8
	store %pos_81 %varAddr_173
	store %varDef_130 %varAddr_174
	store %varDef_131 %varAddr_175
	store %varDef_132 %varAddr_176
	store %varDef_133 %varAddr_177
	br <17>

<20> new_for_end
	store %arrayPtr_34 %varDef_117
	%pos_82 = add %varDef_117 8
	store %pos_82 %varAddr_167
	store %varDef_124 %varAddr_168
	store %varDef_125 %varAddr_169
	store %varDef_126 %varAddr_170
	store %varDef_127 %varAddr_171
	store %varDef_128 %varAddr_172
	br <13>

<16> new_for_end
	store %arrayPtr_26 %varDef_109
	%pos_83 = add %varDef_109 8
	store %pos_83 %varAddr_152
	store %varDef_117 %varAddr_153
	store %varDef_118 %varAddr_154
	store %varDef_119 %varAddr_155
	store %varDef_120 %varAddr_156
	store %varDef_121 %varAddr_157
	store %varDef_122 %varAddr_158
	br <9>

<12> new_for_end
	store %arrayPtr_18 %varDef_100
	%pos_84 = add %varDef_100 8
	store %pos_84 %varAddr_159
	store %varDef_109 %varAddr_160
	store %varDef_110 %varAddr_161
	store %varDef_111 %varAddr_162
	store %varDef_112 %varAddr_163
	store %varDef_113 %varAddr_164
	store %varDef_114 %varAddr_165
	store %varDef_115 %varAddr_166
	br <5>

<8> new_for_end
	store %arrayPtr_10 %varDef_90
	%pos_85 = add %varDef_90 8
	store %pos_85 %varAddr_182
	store %varDef_101 %varAddr_183
	store %varDef_102 %varAddr_184
	store %varDef_103 %varAddr_185
	store %varDef_104 %varAddr_186
	store %varDef_105 %varAddr_187
	store %varDef_106 %varAddr_188
	store %varDef_107 %varAddr_189
	br <1>

<4> new_for_end
	%memberAddr_87 = add %thisVal_0 0
	store %arrayPtr_2 %memberAddr_87
	ret 

}

define restore ( ) {
<0> entry
	%varAddr_21 = alloca 4
	store 1 %varAddr_21
	br <1>

<1> for_cond
	%varDef_19 = load %varAddr_21
	%idVal_2 = load @n
	%res_3 = le %varDef_19 %idVal_2
	br %res_3 <2> <4>

<2> for_body
	%arrayPtr_4 = load @bak
	%arrayBase_5 = add %arrayPtr_4 8
	%offset_7 = mul %varDef_19 8
	%elementAddr_8 = add %arrayBase_5 %offset_7
	%elementVal_9 = load %elementAddr_8
	%arrayPtr_10 = load @a
	%arrayBase_11 = add %arrayPtr_10 8
	%elementAddr_14 = add %arrayBase_11 %offset_7
	store %elementVal_9 %elementAddr_14
	%newVal_17 = inc %varDef_19
	store %newVal_17 %varAddr_21
	br <1>

<4> for_end
	ret 

}

define quicksort ( %argVal_0 %argVal_2 ) {
<0> entry
	%varAddr_185 = alloca 4
	%varAddr_184 = alloca 4
	%varAddr_183 = alloca 4
	%varAddr_182 = alloca 4
	%varAddr_181 = alloca 4
	%varAddr_180 = alloca 4
	%varAddr_179 = alloca 4
	%varAddr_178 = alloca 4
	%varAddr_177 = alloca 4
	%varAddr_176 = alloca 4
	%varAddr_175 = alloca 4
	%varAddr_174 = alloca 4
	%arrayPtr_20 = load @a
	%arrayBase_21 = add %arrayPtr_20 8
	%offset_23 = mul %argVal_0 8
	%elementAddr_24 = add %arrayBase_21 %offset_23
	%elementVal_25 = load %elementAddr_24
	%res_30 = add %argVal_0 1
	store 0 %varAddr_180
	store 0 %varAddr_181
	store 0 %varAddr_182
	store %res_30 %varAddr_183
	br <1>

<1> for_cond
	%varDef_148 = load %varAddr_180
	%varDef_149 = load %varAddr_181
	%varDef_150 = load %varAddr_182
	%varDef_151 = load %varAddr_183
	%res_33 = lt %varDef_151 %argVal_2
	br %res_33 <2> <4>

<2> for_body
	%newVal_36 = inc %varDef_148
	%arrayPtr_37 = load @a
	%arrayBase_38 = add %arrayPtr_37 8
	%offset_40 = mul %varDef_151 8
	%elementAddr_41 = add %arrayBase_38 %offset_40
	%elementVal_42 = load %elementAddr_41
	%res_44 = lt %elementVal_42 %elementVal_25
	br %res_44 <5> <6>

<5> if_true
	%arrayPtr_45 = load @a
	%arrayBase_46 = add %arrayPtr_45 8
	%offset_48 = mul %varDef_151 8
	%elementAddr_49 = add %arrayBase_46 %offset_48
	%elementVal_50 = load %elementAddr_49
	%arrayPtr_51 = load @a_left
	%arrayBase_52 = add %arrayPtr_51 8
	%newVal_55 = inc %varDef_149
	%offset_56 = mul %varDef_149 8
	%elementAddr_57 = add %arrayBase_52 %offset_56
	store %elementVal_50 %elementAddr_57
	store %newVal_55 %varAddr_184
	store %varDef_150 %varAddr_185
	br <3>

<6> if_false
	%arrayPtr_58 = load @a
	%arrayBase_59 = add %arrayPtr_58 8
	%offset_61 = mul %varDef_151 8
	%elementAddr_62 = add %arrayBase_59 %offset_61
	%elementVal_63 = load %elementAddr_62
	%arrayPtr_64 = load @a_right
	%arrayBase_65 = add %arrayPtr_64 8
	%newVal_68 = inc %varDef_150
	%offset_69 = mul %varDef_150 8
	%elementAddr_70 = add %arrayBase_65 %offset_69
	store %elementVal_63 %elementAddr_70
	store %varDef_149 %varAddr_184
	store %newVal_68 %varAddr_185
	br <3>

<3> for_step
	%varDef_155 = load %varAddr_184
	%varDef_156 = load %varAddr_185
	%newVal_73 = inc %varDef_151
	store %newVal_36 %varAddr_180
	store %varDef_155 %varAddr_181
	store %varDef_156 %varAddr_182
	store %newVal_73 %varAddr_183
	br <1>

<4> for_end
	store 0 %varAddr_176
	store %argVal_0 %varAddr_177
	br <8>

<8> for_cond
	%varDef_160 = load %varAddr_176
	%varDef_161 = load %varAddr_177
	%res_78 = lt %varDef_160 %varDef_149
	br %res_78 <9> <11>

<9> for_body
	%arrayPtr_79 = load @a_left
	%arrayBase_80 = add %arrayPtr_79 8
	%offset_82 = mul %varDef_160 8
	%elementAddr_83 = add %arrayBase_80 %offset_82
	%elementVal_84 = load %elementAddr_83
	%arrayPtr_85 = load @a
	%arrayBase_86 = add %arrayPtr_85 8
	%newVal_89 = inc %varDef_161
	%offset_90 = mul %varDef_161 8
	%elementAddr_91 = add %arrayBase_86 %offset_90
	store %elementVal_84 %elementAddr_91
	%newVal_94 = inc %varDef_160
	store %newVal_94 %varAddr_176
	store %newVal_89 %varAddr_177
	br <8>

<11> for_end
	%arrayPtr_96 = load @a
	%arrayBase_97 = add %arrayPtr_96 8
	%newVal_100 = inc %varDef_161
	%offset_101 = mul %varDef_161 8
	%elementAddr_102 = add %arrayBase_97 %offset_101
	store %elementVal_25 %elementAddr_102
	store 0 %varAddr_174
	store %newVal_100 %varAddr_175
	br <12>

<12> for_cond
	%varDef_166 = load %varAddr_174
	%varDef_167 = load %varAddr_175
	%res_105 = lt %varDef_166 %varDef_150
	br %res_105 <13> <15>

<13> for_body
	%arrayPtr_106 = load @a_right
	%arrayBase_107 = add %arrayPtr_106 8
	%offset_109 = mul %varDef_166 8
	%elementAddr_110 = add %arrayBase_107 %offset_109
	%elementVal_111 = load %elementAddr_110
	%arrayPtr_112 = load @a
	%arrayBase_113 = add %arrayPtr_112 8
	%newVal_116 = inc %varDef_167
	%offset_117 = mul %varDef_167 8
	%elementAddr_118 = add %arrayBase_113 %offset_117
	store %elementVal_111 %elementAddr_118
	%newVal_121 = inc %varDef_166
	store %newVal_121 %varAddr_174
	store %newVal_116 %varAddr_175
	br <12>

<15> for_end
	%res_123 = gt %varDef_149 1
	br %res_123 <16> <20>

<20> parallel_copy
	store %varDef_148 %varAddr_178
	br <17>

<16> if_true
	%res_129 = add %argVal_0 %varDef_149
	%res_125 = quicksort ( %argVal_0 %res_129 )
	%res_130 = add %varDef_148 %res_125
	store %res_130 %varAddr_178
	br <17>

<17> if_merge
	%varDef_171 = load %varAddr_178
	%res_132 = gt %varDef_150 1
	br %res_132 <18> <21>

<21> parallel_copy
	store %varDef_171 %varAddr_179
	br <19>

<18> if_true
	%res_137 = sub %argVal_2 %varDef_150
	%res_134 = quicksort ( %res_137 %argVal_2 )
	%res_139 = add %varDef_171 %res_134
	store %res_139 %varAddr_179
	br <19>

<19> if_merge
	%varDef_173 = load %varAddr_179
	ret %varDef_173

}

define calc ( ) {
<0> entry
	%varAddr_100 = alloca 4
	%varAddr_99 = alloca 4
	%varAddr_98 = alloca 4
	store 1 %varAddr_100
	br <1>

<1> for_cond
	%varDef_86 = load %varAddr_100
	%idVal_16 = load @n
	%res_17 = le %varDef_86 %idVal_16
	br %res_17 <2> <4>

<2> for_body
	%res_19 = sub %varDef_86 1
	%arrayPtr_20 = load @a_left
	%arrayBase_21 = add %arrayPtr_20 8
	%offset_23 = mul %varDef_86 8
	%elementAddr_24 = add %arrayBase_21 %offset_23
	store %res_19 %elementAddr_24
	%res_26 = add %varDef_86 1
	%arrayPtr_27 = load @a_right
	%arrayBase_28 = add %arrayPtr_27 8
	%elementAddr_31 = add %arrayBase_28 %offset_23
	store %res_26 %elementAddr_31
	%newVal_34 = inc %varDef_86
	store %newVal_34 %varAddr_100
	br <1>

<4> for_end
	%idVal_36 = load @n
	store %idVal_36 %varAddr_98
	store 0 %varAddr_99
	br <5>

<5> for_cond
	%varDef_90 = load %varAddr_98
	%varDef_91 = load %varAddr_99
	%res_38 = ge %varDef_90 1
	br %res_38 <6> <8>

<6> for_body
	%arrayPtr_40 = load @a_left
	%arrayBase_41 = add %arrayPtr_40 8
	%arrayPtr_42 = load @a
	%arrayBase_43 = add %arrayPtr_42 8
	%offset_45 = mul %varDef_90 8
	%elementAddr_46 = add %arrayBase_43 %offset_45
	%elementVal_47 = load %elementAddr_46
	%offset_48 = mul %elementVal_47 8
	%elementAddr_49 = add %arrayBase_41 %offset_48
	%elementVal_50 = load %elementAddr_49
	%arrayPtr_52 = load @a_right
	%arrayBase_53 = add %arrayPtr_52 8
	%arrayPtr_54 = load @a
	%arrayBase_55 = add %arrayPtr_54 8
	%elementAddr_58 = add %arrayBase_55 %offset_45
	%elementVal_59 = load %elementAddr_58
	%offset_60 = mul %elementVal_59 8
	%elementAddr_61 = add %arrayBase_53 %offset_60
	%elementVal_62 = load %elementAddr_61
	%arrayPtr_64 = load @a_right
	%arrayBase_65 = add %arrayPtr_64 8
	%offset_67 = mul %elementVal_50 8
	%elementAddr_68 = add %arrayBase_65 %offset_67
	store %elementVal_62 %elementAddr_68
	%arrayPtr_70 = load @a_left
	%arrayBase_71 = add %arrayPtr_70 8
	%offset_73 = mul %elementVal_62 8
	%elementAddr_74 = add %arrayBase_71 %offset_73
	store %elementVal_50 %elementAddr_74
	%res_77 = add %varDef_91 %elementVal_62
	%res_79 = sub %res_77 %elementVal_50
	%res_80 = sub %res_79 2
	%newVal_83 = dec %varDef_90
	store %newVal_83 %varAddr_98
	store %res_80 %varAddr_99
	br <5>

<8> for_end
	ret %varDef_91

}

define mergesort ( %argVal_0 %argVal_2 ) {
<0> entry
	%varAddr_223 = alloca 4
	%varAddr_222 = alloca 4
	%varAddr_221 = alloca 4
	%varAddr_220 = alloca 4
	%varAddr_219 = alloca 4
	%varAddr_218 = alloca 4
	%varAddr_217 = alloca 4
	%varAddr_216 = alloca 4
	%varAddr_215 = alloca 4
	%varAddr_214 = alloca 4
	%varAddr_213 = alloca 4
	%varAddr_212 = alloca 4
	%res_19 = add %argVal_0 1
	%res_21 = eq %res_19 %argVal_2
	br %res_21 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	%res_25 = add %argVal_0 %argVal_2
	%res_26 = rsft %res_25 1
	%res_29 = mergesort ( %argVal_0 %res_26 )
	%res_32 = add 0 %res_29
	%res_34 = mergesort ( %res_26 %argVal_2 )
	%res_37 = add %res_32 %res_34
	store 0 %varAddr_218
	store %argVal_0 %varAddr_219
	br <3>

<3> for_cond
	%varDef_183 = load %varAddr_218
	%varDef_184 = load %varAddr_219
	%res_44 = lt %varDef_184 %res_26
	br %res_44 <4> <6>

<4> for_body
	%arrayPtr_45 = load @a
	%arrayBase_46 = add %arrayPtr_45 8
	%offset_48 = mul %varDef_184 8
	%elementAddr_49 = add %arrayBase_46 %offset_48
	%elementVal_50 = load %elementAddr_49
	%arrayPtr_51 = load @a_left
	%arrayBase_52 = add %arrayPtr_51 8
	%newVal_55 = inc %varDef_183
	%offset_56 = mul %varDef_183 8
	%elementAddr_57 = add %arrayBase_52 %offset_56
	store %elementVal_50 %elementAddr_57
	%newVal_60 = inc %varDef_184
	store %newVal_55 %varAddr_218
	store %newVal_60 %varAddr_219
	br <3>

<6> for_end
	store 0 %varAddr_220
	store %res_26 %varAddr_221
	br <7>

<7> for_cond
	%varDef_188 = load %varAddr_220
	%varDef_189 = load %varAddr_221
	%res_64 = lt %varDef_189 %argVal_2
	br %res_64 <8> <10>

<8> for_body
	%arrayPtr_65 = load @a
	%arrayBase_66 = add %arrayPtr_65 8
	%offset_68 = mul %varDef_189 8
	%elementAddr_69 = add %arrayBase_66 %offset_68
	%elementVal_70 = load %elementAddr_69
	%arrayPtr_71 = load @a_right
	%arrayBase_72 = add %arrayPtr_71 8
	%newVal_75 = inc %varDef_188
	%offset_76 = mul %varDef_188 8
	%elementAddr_77 = add %arrayBase_72 %offset_76
	store %elementVal_70 %elementAddr_77
	%newVal_80 = inc %varDef_189
	store %newVal_75 %varAddr_220
	store %newVal_80 %varAddr_221
	br <7>

<10> for_end
	store %res_37 %varAddr_212
	store 0 %varAddr_213
	store 0 %varAddr_214
	store %argVal_0 %varAddr_215
	br <11>

<11> while_cond
	%varDef_195 = load %varAddr_212
	%varDef_196 = load %varAddr_213
	%varDef_197 = load %varAddr_214
	%varDef_198 = load %varAddr_215
	%res_87 = lt %varDef_196 %varDef_183
	br %res_87 <14> <25>

<25> parallel_copy
	store %varDef_196 %varAddr_222
	store %varDef_198 %varAddr_223
	br <18>

<14> lhs_true
	%res_90 = lt %varDef_197 %varDef_188
	br %res_90 <12> <26>

<26> parallel_copy
	store %varDef_196 %varAddr_222
	store %varDef_198 %varAddr_223
	br <18>

<12> while_body
	%newVal_93 = inc %varDef_195
	%arrayPtr_94 = load @a_left
	%arrayBase_95 = add %arrayPtr_94 8
	%offset_97 = mul %varDef_196 8
	%elementAddr_98 = add %arrayBase_95 %offset_97
	%elementVal_99 = load %elementAddr_98
	%arrayPtr_100 = load @a_right
	%arrayBase_101 = add %arrayPtr_100 8
	%offset_103 = mul %varDef_197 8
	%elementAddr_104 = add %arrayBase_101 %offset_103
	%elementVal_105 = load %elementAddr_104
	%res_106 = lt %elementVal_99 %elementVal_105
	br %res_106 <15> <16>

<15> if_true
	%arrayPtr_107 = load @a_left
	%arrayBase_108 = add %arrayPtr_107 8
	%newVal_111 = inc %varDef_196
	%offset_112 = mul %varDef_196 8
	%elementAddr_113 = add %arrayBase_108 %offset_112
	%elementVal_114 = load %elementAddr_113
	%arrayPtr_115 = load @a
	%arrayBase_116 = add %arrayPtr_115 8
	%newVal_119 = inc %varDef_198
	%offset_120 = mul %varDef_198 8
	%elementAddr_121 = add %arrayBase_116 %offset_120
	store %elementVal_114 %elementAddr_121
	store %newVal_93 %varAddr_212
	store %newVal_111 %varAddr_213
	store %varDef_197 %varAddr_214
	store %newVal_119 %varAddr_215
	br <11>

<16> if_false
	%arrayPtr_122 = load @a_right
	%arrayBase_123 = add %arrayPtr_122 8
	%newVal_126 = inc %varDef_197
	%offset_127 = mul %varDef_197 8
	%elementAddr_128 = add %arrayBase_123 %offset_127
	%elementVal_129 = load %elementAddr_128
	%arrayPtr_130 = load @a
	%arrayBase_131 = add %arrayPtr_130 8
	%newVal_134 = inc %varDef_198
	%offset_135 = mul %varDef_198 8
	%elementAddr_136 = add %arrayBase_131 %offset_135
	store %elementVal_129 %elementAddr_136
	store %newVal_93 %varAddr_212
	store %varDef_196 %varAddr_213
	store %newVal_126 %varAddr_214
	store %newVal_134 %varAddr_215
	br <11>

<18> while_cond
	%varDef_204 = load %varAddr_222
	%varDef_205 = load %varAddr_223
	%res_139 = lt %varDef_204 %varDef_183
	br %res_139 <19> <24>

<24> parallel_copy
	store %varDef_197 %varAddr_216
	store %varDef_205 %varAddr_217
	br <21>

<19> while_body
	%arrayPtr_140 = load @a_left
	%arrayBase_141 = add %arrayPtr_140 8
	%newVal_144 = inc %varDef_204
	%offset_145 = mul %varDef_204 8
	%elementAddr_146 = add %arrayBase_141 %offset_145
	%elementVal_147 = load %elementAddr_146
	%arrayPtr_148 = load @a
	%arrayBase_149 = add %arrayPtr_148 8
	%newVal_152 = inc %varDef_205
	%offset_153 = mul %varDef_205 8
	%elementAddr_154 = add %arrayBase_149 %offset_153
	store %elementVal_147 %elementAddr_154
	store %newVal_144 %varAddr_222
	store %newVal_152 %varAddr_223
	br <18>

<21> while_cond
	%varDef_208 = load %varAddr_216
	%varDef_209 = load %varAddr_217
	%res_157 = lt %varDef_208 %varDef_188
	br %res_157 <22> <23>

<22> while_body
	%arrayPtr_158 = load @a_right
	%arrayBase_159 = add %arrayPtr_158 8
	%newVal_162 = inc %varDef_208
	%offset_163 = mul %varDef_208 8
	%elementAddr_164 = add %arrayBase_159 %offset_163
	%elementVal_165 = load %elementAddr_164
	%arrayPtr_166 = load @a
	%arrayBase_167 = add %arrayPtr_166 8
	%newVal_170 = inc %varDef_209
	%offset_171 = mul %varDef_209 8
	%elementAddr_172 = add %arrayBase_167 %offset_171
	store %elementVal_165 %elementAddr_172
	store %newVal_162 %varAddr_216
	store %newVal_170 %varAddr_217
	br <21>

<23> while_end
	ret %varDef_195

}

define heapsort ( ) {
<0> entry
	%varAddr_263 = alloca 4
	%varAddr_262 = alloca 4
	%varAddr_261 = alloca 4
	%varAddr_260 = alloca 4
	%varAddr_259 = alloca 4
	%varAddr_258 = alloca 4
	%varAddr_257 = alloca 4
	%varAddr_256 = alloca 4
	%varAddr_255 = alloca 4
	%varAddr_254 = alloca 4
	%varAddr_253 = alloca 4
	%varAddr_252 = alloca 4
	%varAddr_251 = alloca 4
	%varAddr_250 = alloca 4
	%varAddr_249 = alloca 4
	%varAddr_248 = alloca 4
	%varAddr_247 = alloca 4
	%varAddr_246 = alloca 4
	%varAddr_245 = alloca 4
	%varAddr_244 = alloca 4
	%varAddr_243 = alloca 4
	%varAddr_242 = alloca 4
	%varAddr_241 = alloca 4
	%varAddr_240 = alloca 4
	%varAddr_239 = alloca 4
	%varAddr_238 = alloca 4
	store 0 %varAddr_240
	store 1 %varAddr_241
	store 0 %varAddr_242
	br <1>

<1> for_cond
	%varDef_190 = load %varAddr_240
	%varDef_191 = load %varAddr_241
	%varDef_192 = load %varAddr_242
	%idVal_18 = load @n
	%res_19 = le %varDef_191 %idVal_18
	br %res_19 <2> <4>

<2> for_body
	%arrayPtr_20 = load @a
	%arrayBase_21 = add %arrayPtr_20 8
	%offset_23 = mul %varDef_191 8
	%elementAddr_24 = add %arrayBase_21 %offset_23
	%elementVal_25 = load %elementAddr_24
	%arrayPtr_26 = load @heap
	%arrayBase_27 = add %arrayPtr_26 8
	%elementAddr_30 = add %arrayBase_27 %offset_23
	store %elementVal_25 %elementAddr_30
	store %varDef_190 %varAddr_243
	store %varDef_192 %varAddr_244
	store %varDef_191 %varAddr_245
	br <5>

<5> while_cond
	%varDef_195 = load %varAddr_243
	%varDef_196 = load %varAddr_244
	%varDef_197 = load %varAddr_245
	%res_34 = neq %varDef_197 1
	br %res_34 <6> <27>

<27> parallel_copy
	store %varDef_195 %varAddr_257
	br <3>

<6> while_body
	%newVal_37 = inc %varDef_195
	%arrayPtr_38 = load @heap
	%arrayBase_39 = add %arrayPtr_38 8
	%offset_41 = mul %varDef_197 8
	%elementAddr_42 = add %arrayBase_39 %offset_41
	%elementVal_43 = load %elementAddr_42
	%arrayPtr_44 = load @heap
	%arrayBase_45 = add %arrayPtr_44 8
	%res_47 = rsft %varDef_197 1
	%offset_48 = mul %res_47 8
	%elementAddr_49 = add %arrayBase_45 %offset_48
	%elementVal_50 = load %elementAddr_49
	%res_51 = gt %elementVal_43 %elementVal_50
	br %res_51 <28> <9>

<28> parallel_copy
	store %newVal_37 %varAddr_257
	br <3>

<9> if_merge
	%arrayPtr_52 = load @heap
	%arrayBase_53 = add %arrayPtr_52 8
	%offset_55 = mul %varDef_197 8
	%elementAddr_56 = add %arrayBase_53 %offset_55
	%elementVal_57 = load %elementAddr_56
	%arrayPtr_58 = load @heap
	%arrayBase_59 = add %arrayPtr_58 8
	%res_61 = rsft %varDef_197 1
	%offset_62 = mul %res_61 8
	%elementAddr_63 = add %arrayBase_59 %offset_62
	%elementVal_64 = load %elementAddr_63
	%arrayPtr_65 = load @heap
	%arrayBase_66 = add %arrayPtr_65 8
	%elementAddr_69 = add %arrayBase_66 %offset_55
	store %elementVal_64 %elementAddr_69
	%arrayPtr_71 = load @heap
	%arrayBase_72 = add %arrayPtr_71 8
	%elementAddr_76 = add %arrayBase_72 %offset_62
	store %elementVal_57 %elementAddr_76
	store %newVal_37 %varAddr_243
	store %elementVal_57 %varAddr_244
	store %res_61 %varAddr_245
	br <5>

<3> for_step
	%varDef_201 = load %varAddr_257
	%newVal_81 = inc %varDef_191
	store %varDef_201 %varAddr_240
	store %newVal_81 %varAddr_241
	store %varDef_196 %varAddr_242
	br <1>

<4> for_end
	%idVal_83 = load @n
	store %varDef_190 %varAddr_250
	store 1 %varAddr_251
	store %varDef_192 %varAddr_252
	store %idVal_83 %varAddr_253
	store 0 %varAddr_254
	store 0 %varAddr_255
	store 0 %varAddr_256
	br <10>

<10> for_cond
	%varDef_205 = load %varAddr_250
	%varDef_206 = load %varAddr_251
	%varDef_207 = load %varAddr_252
	%varDef_208 = load %varAddr_253
	%varDef_210 = load %varAddr_254
	%varDef_211 = load %varAddr_255
	%varDef_212 = load %varAddr_256
	%idVal_85 = load @n
	%res_86 = le %varDef_206 %idVal_85
	br %res_86 <11> <13>

<11> for_body
	%arrayPtr_87 = load @heap
	%arrayBase_88 = add %arrayPtr_87 8
	%elementAddr_90 = add %arrayBase_88 8
	%elementVal_91 = load %elementAddr_90
	%arrayPtr_92 = load @a
	%arrayBase_93 = add %arrayPtr_92 8
	%offset_95 = mul %varDef_206 8
	%elementAddr_96 = add %arrayBase_93 %offset_95
	store %elementVal_91 %elementAddr_96
	%arrayPtr_97 = load @heap
	%arrayBase_98 = add %arrayPtr_97 8
	%newVal_101 = dec %varDef_208
	%offset_102 = mul %varDef_208 8
	%elementAddr_103 = add %arrayBase_98 %offset_102
	%elementVal_104 = load %elementAddr_103
	%arrayPtr_105 = load @heap
	%arrayBase_106 = add %arrayPtr_105 8
	%elementAddr_108 = add %arrayBase_106 8
	store %elementVal_104 %elementAddr_108
	store %varDef_205 %varAddr_258
	store %varDef_207 %varAddr_259
	store 1 %varAddr_260
	store %varDef_210 %varAddr_261
	store %varDef_211 %varAddr_262
	store %varDef_212 %varAddr_263
	br <14>

<14> while_cond
	%varDef_215 = load %varAddr_258
	%varDef_216 = load %varAddr_259
	%varDef_217 = load %varAddr_260
	%varDef_218 = load %varAddr_261
	%varDef_219 = load %varAddr_262
	%varDef_220 = load %varAddr_263
	%res_111 = lsft %varDef_217 1
	%res_113 = le %res_111 %newVal_101
	br %res_113 <15> <26>

<26> parallel_copy
	store %varDef_215 %varAddr_246
	store %varDef_218 %varAddr_247
	store %varDef_219 %varAddr_248
	store %varDef_220 %varAddr_249
	br <12>

<15> while_body
	%res_116 = lsft %varDef_217 1
	%res_119 = add %res_116 1
	%res_124 = le %res_119 %newVal_101
	br %res_124 <17> <24>

<24> parallel_copy
	store %varDef_215 %varAddr_238
	store %res_116 %varAddr_239
	br <18>

<17> if_true
	%newVal_127 = inc %varDef_215
	%arrayPtr_128 = load @heap
	%arrayBase_129 = add %arrayPtr_128 8
	%offset_131 = mul %res_119 8
	%elementAddr_132 = add %arrayBase_129 %offset_131
	%elementVal_133 = load %elementAddr_132
	%arrayPtr_134 = load @heap
	%arrayBase_135 = add %arrayPtr_134 8
	%offset_137 = mul %res_116 8
	%elementAddr_138 = add %arrayBase_135 %offset_137
	%elementVal_139 = load %elementAddr_138
	%res_140 = lt %elementVal_133 %elementVal_139
	br %res_140 <19> <23>

<23> parallel_copy
	store %newVal_127 %varAddr_238
	store %res_116 %varAddr_239
	br <18>

<19> if_true
	store %newVal_127 %varAddr_238
	store %res_119 %varAddr_239
	br <18>

<18> if_merge
	%varDef_226 = load %varAddr_238
	%varDef_227 = load %varAddr_239
	%newVal_144 = inc %varDef_226
	%arrayPtr_145 = load @heap
	%arrayBase_146 = add %arrayPtr_145 8
	%offset_148 = mul %varDef_217 8
	%elementAddr_149 = add %arrayBase_146 %offset_148
	%elementVal_150 = load %elementAddr_149
	%arrayPtr_151 = load @heap
	%arrayBase_152 = add %arrayPtr_151 8
	%offset_154 = mul %varDef_227 8
	%elementAddr_155 = add %arrayBase_152 %offset_154
	%elementVal_156 = load %elementAddr_155
	%res_157 = lt %elementVal_150 %elementVal_156
	br %res_157 <25> <22>

<25> parallel_copy
	store %newVal_144 %varAddr_246
	store %res_116 %varAddr_247
	store %res_119 %varAddr_248
	store %varDef_227 %varAddr_249
	br <12>

<22> if_merge
	%arrayPtr_158 = load @heap
	%arrayBase_159 = add %arrayPtr_158 8
	%offset_161 = mul %varDef_217 8
	%elementAddr_162 = add %arrayBase_159 %offset_161
	%elementVal_163 = load %elementAddr_162
	%arrayPtr_164 = load @heap
	%arrayBase_165 = add %arrayPtr_164 8
	%offset_167 = mul %varDef_227 8
	%elementAddr_168 = add %arrayBase_165 %offset_167
	%elementVal_169 = load %elementAddr_168
	%arrayPtr_170 = load @heap
	%arrayBase_171 = add %arrayPtr_170 8
	%elementAddr_174 = add %arrayBase_171 %offset_161
	store %elementVal_169 %elementAddr_174
	%arrayPtr_176 = load @heap
	%arrayBase_177 = add %arrayPtr_176 8
	%elementAddr_180 = add %arrayBase_177 %offset_167
	store %elementVal_163 %elementAddr_180
	store %newVal_144 %varAddr_258
	store %varDef_217 %varAddr_259
	store %varDef_227 %varAddr_260
	store %res_116 %varAddr_261
	store %res_119 %varAddr_262
	store %varDef_217 %varAddr_263
	br <14>

<12> for_step
	%varDef_233 = load %varAddr_246
	%varDef_234 = load %varAddr_247
	%varDef_235 = load %varAddr_248
	%varDef_236 = load %varAddr_249
	%newVal_186 = inc %varDef_206
	store %varDef_233 %varAddr_250
	store %newVal_186 %varAddr_251
	store %varDef_216 %varAddr_252
	store %newVal_101 %varAddr_253
	store %varDef_234 %varAddr_254
	store %varDef_235 %varAddr_255
	store %varDef_236 %varAddr_256
	br <10>

<13> for_end
	ret %varDef_205

}

define main ( ) {
<0> entry
	%varAddr_151 = alloca 4
	%varAddr_150 = alloca 4
	%varAddr_149 = alloca 4
	%varAddr_148 = alloca 4
	%res_14 = getInt ( )
	store %res_14 @n
	%res_16 = getInt ( )
	store 1 %varAddr_151
	br <1>

<1> for_cond
	%varDef_132 = load %varAddr_151
	%idVal_19 = load @n
	%res_20 = le %varDef_132 %idVal_19
	br %res_20 <2> <4>

<2> for_body
	%arrayPtr_22 = load @a
	%arrayBase_23 = add %arrayPtr_22 8
	%offset_25 = mul %varDef_132 8
	%elementAddr_26 = add %arrayBase_23 %offset_25
	store %varDef_132 %elementAddr_26
	%res_29 = le %varDef_132 %res_16
	br %res_29 <5> <6>

<5> if_true
	%res_31 = add %res_16 1
	%res_33 = sub %res_31 %varDef_132
	%arrayPtr_34 = load @a
	%arrayBase_35 = add %arrayPtr_34 8
	%offset_37 = mul %varDef_132 8
	%elementAddr_38 = add %arrayBase_35 %offset_37
	store %res_33 %elementAddr_38
	br <6>

<6> if_merge
	%arrayPtr_39 = load @a
	%arrayBase_40 = add %arrayPtr_39 8
	%offset_42 = mul %varDef_132 8
	%elementAddr_43 = add %arrayBase_40 %offset_42
	%elementVal_44 = load %elementAddr_43
	%arrayPtr_45 = load @bak
	%arrayBase_46 = add %arrayPtr_45 8
	%elementAddr_49 = add %arrayBase_46 %offset_42
	store %elementVal_44 %elementAddr_49
	%newVal_52 = inc %varDef_132
	store %newVal_52 %varAddr_151
	br <1>

<4> for_end
	%idVal_55 = load @n
	%res_56 = add %idVal_55 1
	%res_54 = quicksort ( 1 %res_56 )
	store 1 %varAddr_150
	br <9>

<9> cfor_cond
	%varDef_136 = load %varAddr_150
	%cidVal_78 = load @n
	%cres_79 = le %varDef_136 %cidVal_78
	br %cres_79 <10> <7>

<10> cfor_body
	%carrayPtr_80 = load @bak
	%carrayBase_81 = add %carrayPtr_80 8
	%coffset_83 = mul %varDef_136 8
	%celementAddr_84 = add %carrayBase_81 %coffset_83
	%celementVal_85 = load %celementAddr_84
	%carrayPtr_86 = load @a
	%carrayBase_87 = add %carrayPtr_86 8
	%celementAddr_90 = add %carrayBase_87 %coffset_83
	store %celementVal_85 %celementAddr_90
	%cnewVal_93 = inc %varDef_136
	store %cnewVal_93 %varAddr_150
	br <9>

<7> after_call
	%res_58 = calc ( )
	store 1 %varAddr_148
	br <15>

<15> cfor_cond
	%varDef_140 = load %varAddr_148
	%cidVal_96 = load @n
	%cres_97 = le %varDef_140 %cidVal_96
	br %cres_97 <16> <13>

<16> cfor_body
	%carrayPtr_98 = load @bak
	%carrayBase_99 = add %carrayPtr_98 8
	%coffset_101 = mul %varDef_140 8
	%celementAddr_102 = add %carrayBase_99 %coffset_101
	%celementVal_103 = load %celementAddr_102
	%carrayPtr_104 = load @a
	%carrayBase_105 = add %carrayPtr_104 8
	%celementAddr_108 = add %carrayBase_105 %coffset_101
	store %celementVal_103 %celementAddr_108
	%cnewVal_111 = inc %varDef_140
	store %cnewVal_111 %varAddr_148
	br <15>

<13> after_call
	%idVal_61 = load @n
	%res_62 = add %idVal_61 1
	%res_60 = mergesort ( 1 %res_62 )
	store 1 %varAddr_149
	br <21>

<21> cfor_cond
	%varDef_144 = load %varAddr_149
	%cidVal_114 = load @n
	%cres_115 = le %varDef_144 %cidVal_114
	br %cres_115 <22> <19>

<22> cfor_body
	%carrayPtr_116 = load @bak
	%carrayBase_117 = add %carrayPtr_116 8
	%coffset_119 = mul %varDef_144 8
	%celementAddr_120 = add %carrayBase_117 %coffset_119
	%celementVal_121 = load %celementAddr_120
	%carrayPtr_122 = load @a
	%carrayBase_123 = add %carrayPtr_122 8
	%celementAddr_126 = add %carrayBase_123 %coffset_119
	store %celementVal_121 %celementAddr_126
	%cnewVal_129 = inc %varDef_144
	store %cnewVal_129 %varAddr_149
	br <21>

<19> after_call
	%res_64 = heapsort ( )
	%res_65 = toString ( %res_54 )
	println ( %res_65 )
	%res_67 = toString ( %res_58 )
	println ( %res_67 )
	%res_69 = toString ( %res_60 )
	println ( %res_69 )
	%res_71 = toString ( %res_64 )
	println ( %res_71 )
	%classPtr_74 = malloc 8
	_A_A ( %classPtr_74 )
	_A_Optimizer ( %classPtr_74 )
	ret 0

}

