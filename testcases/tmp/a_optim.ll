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
	%res_8 = add %argVal_0 %argVal_2
	%res_10 = add %res_8 %argVal_4
	%res_13 = bit_and %res_10 1073741823
	ret %res_13

}

define main ( ) {
<0> entry
	%varAddr_551 = alloca 4
	%varAddr_550 = alloca 4
	%varAddr_549 = alloca 4
	%varAddr_548 = alloca 4
	%varAddr_547 = alloca 4
	%varAddr_546 = alloca 4
	%varAddr_545 = alloca 4
	%varAddr_544 = alloca 4
	%varAddr_543 = alloca 4
	%varAddr_542 = alloca 4
	%varAddr_541 = alloca 4
	%varAddr_540 = alloca 4
	%varAddr_539 = alloca 4
	%varAddr_538 = alloca 4
	%varAddr_537 = alloca 4
	%varAddr_536 = alloca 4
	%varAddr_535 = alloca 4
	%varAddr_534 = alloca 4
	%varAddr_533 = alloca 4
	%varAddr_532 = alloca 4
	%varAddr_531 = alloca 4
	%varAddr_530 = alloca 4
	%varAddr_529 = alloca 4
	%varAddr_528 = alloca 4
	%varAddr_527 = alloca 4
	%varAddr_526 = alloca 4
	%varAddr_525 = alloca 4
	%varAddr_524 = alloca 4
	%varAddr_523 = alloca 4
	%varAddr_522 = alloca 4
	%varAddr_521 = alloca 4
	%varAddr_520 = alloca 4
	%varAddr_519 = alloca 4
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
	%res_1 = getInt ( )
	%memberLength_6 = mul %res_1 8
	%arrayLength_7 = add %memberLength_6 8
	%arrayPtr_5 = malloc %arrayLength_7
	store %res_1 %arrayPtr_5
	%arrayEndPos_8 = add %arrayPtr_5 %arrayLength_7
	%startPos_9 = add %arrayPtr_5 8
	store %startPos_9 %varAddr_514
	br <1>

<1> new_for_cond
	%varDef_353 = load %varAddr_514
	%condition_12 = lt %varDef_353 %arrayEndPos_8
	br %condition_12 <2> <4>

<2> new_for_body
	%memberLength_14 = mul %res_1 8
	%arrayLength_15 = add %memberLength_14 8
	%arrayPtr_13 = malloc %arrayLength_15
	store %res_1 %arrayPtr_13
	store %arrayPtr_13 %varDef_353
	%pos_16 = add %varDef_353 8
	store %pos_16 %varAddr_514
	br <1>

<4> new_for_end
	%memberLength_21 = mul %res_1 8
	%arrayLength_22 = add %memberLength_21 8
	%arrayPtr_20 = malloc %arrayLength_22
	store %res_1 %arrayPtr_20
	%arrayEndPos_23 = add %arrayPtr_20 %arrayLength_22
	%startPos_24 = add %arrayPtr_20 8
	store %startPos_24 %varAddr_517
	br <5>

<5> new_for_cond
	%varDef_357 = load %varAddr_517
	%condition_27 = lt %varDef_357 %arrayEndPos_23
	br %condition_27 <6> <8>

<6> new_for_body
	%memberLength_29 = mul %res_1 8
	%arrayLength_30 = add %memberLength_29 8
	%arrayPtr_28 = malloc %arrayLength_30
	store %res_1 %arrayPtr_28
	store %arrayPtr_28 %varDef_357
	%pos_31 = add %varDef_357 8
	store %pos_31 %varAddr_517
	br <5>

<8> new_for_end
	%memberLength_36 = mul %res_1 8
	%arrayLength_37 = add %memberLength_36 8
	%arrayPtr_35 = malloc %arrayLength_37
	store %res_1 %arrayPtr_35
	%arrayEndPos_38 = add %arrayPtr_35 %arrayLength_37
	%startPos_39 = add %arrayPtr_35 8
	store %startPos_39 %varAddr_516
	br <9>

<9> new_for_cond
	%varDef_361 = load %varAddr_516
	%condition_42 = lt %varDef_361 %arrayEndPos_38
	br %condition_42 <10> <12>

<10> new_for_body
	%memberLength_44 = mul %res_1 8
	%arrayLength_45 = add %memberLength_44 8
	%arrayPtr_43 = malloc %arrayLength_45
	store %res_1 %arrayPtr_43
	store %arrayPtr_43 %varDef_361
	%pos_46 = add %varDef_361 8
	store %pos_46 %varAddr_516
	br <9>

<12> new_for_end
	store 0 %varAddr_515
	br <13>

<13> for_cond
	%varDef_365 = load %varAddr_515
	%res_52 = lt %varDef_365 %res_1
	br %res_52 <14> <16>

<14> for_body
	store 0 %varAddr_474
	br <17>

<17> for_cond
	%varDef_368 = load %varAddr_474
	%res_55 = lt %varDef_368 %res_1
	br %res_55 <18> <15>

<18> for_body
	%res_58 = add %varDef_365 %varDef_368
	%arrayBase_60 = add %arrayPtr_5 8
	%offset_62 = mul %varDef_365 8
	%elementAddr_63 = add %arrayBase_60 %offset_62
	%arrayPtr_64 = load %elementAddr_63
	%arrayBase_65 = add %arrayPtr_64 8
	%offset_67 = mul %varDef_368 8
	%elementAddr_68 = add %arrayBase_65 %offset_67
	store %res_58 %elementAddr_68
	%newVal_71 = inc %varDef_368
	store %newVal_71 %varAddr_474
	br <17>

<15> for_step
	%newVal_74 = inc %varDef_365
	store %newVal_74 %varAddr_515
	br <13>

<16> for_end
	store 0 %varAddr_518
	store 0 %varAddr_519
	store 0 %varAddr_520
	store 0 %varAddr_521
	store 0 %varAddr_522
	store 0 %varAddr_523
	store 0 %varAddr_524
	store 0 %varAddr_525
	store 0 %varAddr_526
	store 0 %varAddr_527
	store 0 %varAddr_528
	store 0 %varAddr_529
	store 0 %varAddr_530
	store 0 %varAddr_531
	store 0 %varAddr_532
	store 0 %varAddr_533
	store 0 %varAddr_534
	store 0 %varAddr_535
	br <21>

<21> for_cond
	%varDef_372 = load %varAddr_518
	%varDef_374 = load %varAddr_519
	%varDef_375 = load %varAddr_520
	%varDef_376 = load %varAddr_521
	%varDef_377 = load %varAddr_522
	%varDef_378 = load %varAddr_523
	%varDef_379 = load %varAddr_524
	%varDef_380 = load %varAddr_525
	%varDef_381 = load %varAddr_526
	%varDef_382 = load %varAddr_527
	%varDef_383 = load %varAddr_528
	%varDef_384 = load %varAddr_529
	%varDef_385 = load %varAddr_530
	%varDef_386 = load %varAddr_531
	%varDef_387 = load %varAddr_532
	%varDef_388 = load %varAddr_533
	%varDef_389 = load %varAddr_534
	%varDef_390 = load %varAddr_535
	%res_77 = lt %varDef_372 %res_1
	br %res_77 <22> <24>

<22> for_body
	store 0 %varAddr_496
	store %varDef_374 %varAddr_497
	store %varDef_375 %varAddr_498
	store %varDef_376 %varAddr_499
	store %varDef_377 %varAddr_500
	store %varDef_378 %varAddr_501
	store %varDef_379 %varAddr_502
	store %varDef_380 %varAddr_503
	store %varDef_381 %varAddr_504
	store %varDef_382 %varAddr_505
	store %varDef_383 %varAddr_506
	store %varDef_384 %varAddr_507
	store %varDef_385 %varAddr_508
	store %varDef_386 %varAddr_509
	store %varDef_387 %varAddr_510
	store %varDef_388 %varAddr_511
	store %varDef_389 %varAddr_512
	store %varDef_390 %varAddr_513
	br <25>

<25> for_cond
	%varDef_392 = load %varAddr_496
	%varDef_393 = load %varAddr_497
	%varDef_394 = load %varAddr_498
	%varDef_395 = load %varAddr_499
	%varDef_396 = load %varAddr_500
	%varDef_397 = load %varAddr_501
	%varDef_398 = load %varAddr_502
	%varDef_399 = load %varAddr_503
	%varDef_400 = load %varAddr_504
	%varDef_401 = load %varAddr_505
	%varDef_402 = load %varAddr_506
	%varDef_403 = load %varAddr_507
	%varDef_404 = load %varAddr_508
	%varDef_405 = load %varAddr_509
	%varDef_406 = load %varAddr_510
	%varDef_407 = load %varAddr_511
	%varDef_408 = load %varAddr_512
	%varDef_409 = load %varAddr_513
	%res_80 = lt %varDef_392 %res_1
	br %res_80 <26> <23>

<26> for_body
	store 0 %varAddr_477
	store %varDef_394 %varAddr_478
	store %varDef_395 %varAddr_479
	store %varDef_396 %varAddr_480
	store %varDef_397 %varAddr_481
	store %varDef_398 %varAddr_482
	store %varDef_399 %varAddr_483
	store %varDef_400 %varAddr_484
	store %varDef_401 %varAddr_485
	store %varDef_402 %varAddr_486
	store %varDef_403 %varAddr_487
	store %varDef_404 %varAddr_488
	store %varDef_405 %varAddr_489
	store %varDef_406 %varAddr_490
	store %varDef_407 %varAddr_491
	store %varDef_408 %varAddr_492
	store %varDef_409 %varAddr_493
	br <29>

<29> for_cond
	%varDef_411 = load %varAddr_477
	%varDef_412 = load %varAddr_478
	%varDef_413 = load %varAddr_479
	%varDef_414 = load %varAddr_480
	%varDef_415 = load %varAddr_481
	%varDef_416 = load %varAddr_482
	%varDef_417 = load %varAddr_483
	%varDef_418 = load %varAddr_484
	%varDef_419 = load %varAddr_485
	%varDef_420 = load %varAddr_486
	%varDef_421 = load %varAddr_487
	%varDef_422 = load %varAddr_488
	%varDef_423 = load %varAddr_489
	%varDef_424 = load %varAddr_490
	%varDef_425 = load %varAddr_491
	%varDef_426 = load %varAddr_492
	%varDef_427 = load %varAddr_493
	%res_83 = lt %varDef_411 %res_1
	br %res_83 <30> <27>

<30> for_body
	%res_86 = ge %varDef_392 %varDef_372
	br %res_86 <33> <51>

<51> parallel_copy
	store %varDef_412 %varAddr_536
	store %varDef_413 %varAddr_537
	store %varDef_414 %varAddr_538
	store %varDef_415 %varAddr_539
	store %varDef_416 %varAddr_540
	store %varDef_417 %varAddr_541
	store %varDef_418 %varAddr_542
	store %varDef_419 %varAddr_543
	store %varDef_420 %varAddr_544
	store %varDef_421 %varAddr_545
	store %varDef_422 %varAddr_546
	store %varDef_423 %varAddr_547
	store %varDef_424 %varAddr_548
	store %varDef_425 %varAddr_549
	store %varDef_426 %varAddr_550
	store %varDef_427 %varAddr_551
	br <31>

<33> if_true
	%arrayBase_89 = add %arrayPtr_20 8
	%offset_91 = mul %varDef_372 8
	%elementAddr_92 = add %arrayBase_89 %offset_91
	%arrayPtr_93 = load %elementAddr_92
	%arrayBase_94 = add %arrayPtr_93 8
	%offset_96 = mul %varDef_392 8
	%elementAddr_97 = add %arrayBase_94 %offset_96
	%elementVal_98 = load %elementAddr_97
	%arrayBase_100 = add %arrayPtr_5 8
	%elementAddr_103 = add %arrayBase_100 %offset_91
	%arrayPtr_104 = load %elementAddr_103
	%arrayBase_105 = add %arrayPtr_104 8
	%offset_107 = mul %varDef_411 8
	%elementAddr_108 = add %arrayBase_105 %offset_107
	%elementVal_109 = load %elementAddr_108
	%elementAddr_114 = add %arrayBase_100 %offset_107
	%arrayPtr_115 = load %elementAddr_114
	%arrayBase_116 = add %arrayPtr_115 8
	%elementAddr_119 = add %arrayBase_116 %offset_96
	%elementVal_120 = load %elementAddr_119
	%cres_309 = add %elementVal_98 %elementVal_109
	%cres_311 = add %cres_309 %elementVal_120
	%cres_314 = bit_and %cres_311 1073741823
	%arrayPtr_126 = load %elementAddr_92
	%arrayBase_127 = add %arrayPtr_126 8
	%elementAddr_130 = add %arrayBase_127 %offset_96
	store %cres_314 %elementAddr_130
	%arrayPtr_137 = load %elementAddr_92
	%arrayBase_138 = add %arrayPtr_137 8
	%elementAddr_141 = add %arrayBase_138 %offset_96
	%elementVal_142 = load %elementAddr_141
	%arrayPtr_148 = load %elementAddr_103
	%arrayBase_149 = add %arrayPtr_148 8
	%elementAddr_152 = add %arrayBase_149 %offset_107
	%elementVal_153 = load %elementAddr_152
	%arrayPtr_159 = load %elementAddr_114
	%arrayBase_160 = add %arrayPtr_159 8
	%elementAddr_163 = add %arrayBase_160 %offset_96
	%elementVal_164 = load %elementAddr_163
	%cres_321 = add %elementVal_142 %elementVal_153
	%cres_323 = add %cres_321 %elementVal_164
	%cres_326 = bit_and %cres_323 1073741823
	%arrayBase_166 = add %arrayPtr_35 8
	%elementAddr_169 = add %arrayBase_166 %offset_91
	%arrayPtr_170 = load %elementAddr_169
	%arrayBase_171 = add %arrayPtr_170 8
	%elementAddr_174 = add %arrayBase_171 %offset_96
	store %cres_326 %elementAddr_174
	%arrayPtr_181 = load %elementAddr_92
	%arrayBase_182 = add %arrayPtr_181 8
	%elementAddr_185 = add %arrayBase_182 %offset_96
	%elementVal_186 = load %elementAddr_185
	%arrayPtr_192 = load %elementAddr_103
	%arrayBase_193 = add %arrayPtr_192 8
	%elementAddr_196 = add %arrayBase_193 %offset_107
	%elementVal_197 = load %elementAddr_196
	%arrayPtr_203 = load %elementAddr_114
	%arrayBase_204 = add %arrayPtr_203 8
	%elementAddr_207 = add %arrayBase_204 %offset_96
	%elementVal_208 = load %elementAddr_207
	%cres_333 = add %elementVal_186 %elementVal_197
	%cres_335 = add %cres_333 %elementVal_208
	%cres_338 = bit_and %cres_335 1073741823
	%arrayPtr_214 = load %elementAddr_169
	%arrayBase_215 = add %arrayPtr_214 8
	%elementAddr_218 = add %arrayBase_215 %offset_96
	store %cres_338 %elementAddr_218
	%arrayPtr_225 = load %elementAddr_92
	%arrayBase_226 = add %arrayPtr_225 8
	%elementAddr_229 = add %arrayBase_226 %offset_96
	%elementVal_230 = load %elementAddr_229
	%arrayPtr_236 = load %elementAddr_103
	%arrayBase_237 = add %arrayPtr_236 8
	%elementAddr_240 = add %arrayBase_237 %offset_107
	%elementVal_241 = load %elementAddr_240
	%arrayPtr_247 = load %elementAddr_114
	%arrayBase_248 = add %arrayPtr_247 8
	%elementAddr_251 = add %arrayBase_248 %offset_96
	%elementVal_252 = load %elementAddr_251
	%cres_345 = add %elementVal_230 %elementVal_241
	%cres_347 = add %cres_345 %elementVal_252
	%cres_350 = bit_and %cres_347 1073741823
	%arrayPtr_258 = load %elementAddr_169
	%arrayBase_259 = add %arrayPtr_258 8
	%elementAddr_262 = add %arrayBase_259 %offset_96
	store %cres_350 %elementAddr_262
	store %cres_314 %varAddr_536
	store %elementVal_120 %varAddr_537
	store %elementVal_109 %varAddr_538
	store %elementVal_98 %varAddr_539
	store %cres_326 %varAddr_540
	store %elementVal_164 %varAddr_541
	store %elementVal_153 %varAddr_542
	store %elementVal_142 %varAddr_543
	store %cres_338 %varAddr_544
	store %elementVal_208 %varAddr_545
	store %elementVal_197 %varAddr_546
	store %elementVal_186 %varAddr_547
	store %cres_350 %varAddr_548
	store %elementVal_252 %varAddr_549
	store %elementVal_241 %varAddr_550
	store %elementVal_230 %varAddr_551
	br <31>

<31> for_step
	%varDef_444 = load %varAddr_536
	%varDef_445 = load %varAddr_537
	%varDef_446 = load %varAddr_538
	%varDef_447 = load %varAddr_539
	%varDef_448 = load %varAddr_540
	%varDef_449 = load %varAddr_541
	%varDef_450 = load %varAddr_542
	%varDef_451 = load %varAddr_543
	%varDef_452 = load %varAddr_544
	%varDef_453 = load %varAddr_545
	%varDef_454 = load %varAddr_546
	%varDef_455 = load %varAddr_547
	%varDef_456 = load %varAddr_548
	%varDef_457 = load %varAddr_549
	%varDef_458 = load %varAddr_550
	%varDef_459 = load %varAddr_551
	%newVal_265 = inc %varDef_411
	store %newVal_265 %varAddr_477
	store %varDef_444 %varAddr_478
	store %varDef_445 %varAddr_479
	store %varDef_446 %varAddr_480
	store %varDef_447 %varAddr_481
	store %varDef_448 %varAddr_482
	store %varDef_449 %varAddr_483
	store %varDef_450 %varAddr_484
	store %varDef_451 %varAddr_485
	store %varDef_452 %varAddr_486
	store %varDef_453 %varAddr_487
	store %varDef_454 %varAddr_488
	store %varDef_455 %varAddr_489
	store %varDef_456 %varAddr_490
	store %varDef_457 %varAddr_491
	store %varDef_458 %varAddr_492
	store %varDef_459 %varAddr_493
	br <29>

<27> for_step
	%newVal_268 = inc %varDef_392
	store %newVal_268 %varAddr_496
	store %varDef_411 %varAddr_497
	store %varDef_412 %varAddr_498
	store %varDef_413 %varAddr_499
	store %varDef_414 %varAddr_500
	store %varDef_415 %varAddr_501
	store %varDef_416 %varAddr_502
	store %varDef_417 %varAddr_503
	store %varDef_418 %varAddr_504
	store %varDef_419 %varAddr_505
	store %varDef_420 %varAddr_506
	store %varDef_421 %varAddr_507
	store %varDef_422 %varAddr_508
	store %varDef_423 %varAddr_509
	store %varDef_424 %varAddr_510
	store %varDef_425 %varAddr_511
	store %varDef_426 %varAddr_512
	store %varDef_427 %varAddr_513
	br <25>

<23> for_step
	%newVal_271 = inc %varDef_372
	store %newVal_271 %varAddr_518
	store %varDef_393 %varAddr_519
	store %varDef_394 %varAddr_520
	store %varDef_395 %varAddr_521
	store %varDef_396 %varAddr_522
	store %varDef_397 %varAddr_523
	store %varDef_398 %varAddr_524
	store %varDef_399 %varAddr_525
	store %varDef_400 %varAddr_526
	store %varDef_401 %varAddr_527
	store %varDef_402 %varAddr_528
	store %varDef_403 %varAddr_529
	store %varDef_404 %varAddr_530
	store %varDef_405 %varAddr_531
	store %varDef_406 %varAddr_532
	store %varDef_407 %varAddr_533
	store %varDef_408 %varAddr_534
	store %varDef_409 %varAddr_535
	br <21>

<24> for_end
	store 0 %varAddr_494
	store 0 %varAddr_495
	br <35>

<35> for_cond
	%varDef_465 = load %varAddr_494
	%varDef_467 = load %varAddr_495
	%res_275 = lt %varDef_465 %res_1
	br %res_275 <36> <38>

<36> for_body
	store 0 %varAddr_475
	store %varDef_467 %varAddr_476
	br <39>

<39> for_cond
	%varDef_469 = load %varAddr_475
	%varDef_470 = load %varAddr_476
	%res_278 = lt %varDef_469 %res_1
	br %res_278 <40> <37>

<40> for_body
	%arrayBase_281 = add %arrayPtr_20 8
	%offset_283 = mul %varDef_465 8
	%elementAddr_284 = add %arrayBase_281 %offset_283
	%arrayPtr_285 = load %elementAddr_284
	%arrayBase_286 = add %arrayPtr_285 8
	%offset_288 = mul %varDef_469 8
	%elementAddr_289 = add %arrayBase_286 %offset_288
	%elementVal_290 = load %elementAddr_289
	%res_291 = add %varDef_470 %elementVal_290
	%res_294 = bit_and %res_291 1073741823
	%newVal_297 = inc %varDef_469
	store %newVal_297 %varAddr_475
	store %res_294 %varAddr_476
	br <39>

<37> for_step
	%newVal_300 = inc %varDef_465
	store %newVal_300 %varAddr_494
	store %varDef_470 %varAddr_495
	br <35>

<38> for_end
	%res_301 = toString ( %varDef_467 )
	print ( %res_301 )
	ret 0

}

