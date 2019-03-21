$str_0 "no solution!\n"

define #print

define #println

define #getString

define #getInt

define #toString

define #string#length

define #string#substring

define #string#parseInt

define #string#ord

define #array#size

define #string#add

define #string#eq

define #string#neq

define #string#lt

define #string#gt

define #string#le

define #string#ge

define #global#init ( ) {
<0> entry

}

define #check ( %argVal_0 %argVal_2 ) {
<0> entry
	%res_7 = lt %argVal_0 %argVal_2
	br %res_7 <4> <2>

<4> lhs_true
	%res_9 = ge %argVal_0 0
	br %res_9 <1> <2>

<1> bool_true
	br <3>

<2> bool_false
	br <3>

<3> bool_merge
	%varDef_15 = phi <1> 1 <2> 0
	ret %varDef_15

}

define #main ( ) {
<0> entry
	%res_16 = #getInt ( )
	%res_18 = sub %res_16 1
	%res_20 = sub %res_16 1
	%res_23 = mul %res_16 %res_16
	%memberLength_25 = mul %res_23 4
	%arrayLength_26 = add %memberLength_25 4
	%arrayPtr_24 = malloc %arrayLength_26
	store %res_23 %arrayPtr_24
	br <1>

<1> for_cond
	%varDef_690 = phi <0> 0 <3> %newVal_39
	%res_30 = mul %res_16 %res_16
	%res_31 = lt %varDef_690 %res_30
	br %res_31 <2> <4>

<2> for_body
	%arrayBase_33 = add %arrayPtr_24 4
	%offset_35 = mul %varDef_690 4
	%elementAddr_36 = add %arrayBase_33 %offset_35
	store 0 %elementAddr_36
	br <3>

<3> for_step
	%newVal_39 = inc %varDef_690
	br <1>

<4> for_end
	%res_42 = mul %res_16 %res_16
	%memberLength_44 = mul %res_42 4
	%arrayLength_45 = add %memberLength_44 4
	%arrayPtr_43 = malloc %arrayLength_45
	store %res_42 %arrayPtr_43
	br <5>

<5> for_cond
	%varDef_694 = phi <4> 0 <7> %newVal_58
	%res_49 = mul %res_16 %res_16
	%res_50 = lt %varDef_694 %res_49
	br %res_50 <6> <8>

<6> for_body
	%arrayBase_52 = add %arrayPtr_43 4
	%offset_54 = mul %varDef_694 4
	%elementAddr_55 = add %arrayBase_52 %offset_54
	store 0 %elementAddr_55
	br <7>

<7> for_step
	%newVal_58 = inc %varDef_694
	br <5>

<8> for_end
	%memberLength_61 = mul %res_16 4
	%arrayLength_62 = add %memberLength_61 4
	%arrayPtr_60 = malloc %arrayLength_62
	store %res_16 %arrayPtr_60
	br <9>

<9> for_cond
	%varDef_698 = phi <8> 0 <11> %newVal_94
	%res_65 = lt %varDef_698 %res_16
	br %res_65 <10> <12>

<10> for_body
	%memberLength_68 = mul %res_16 4
	%arrayLength_69 = add %memberLength_68 4
	%arrayPtr_67 = malloc %arrayLength_69
	store %res_16 %arrayPtr_67
	%arrayBase_71 = add %arrayPtr_60 4
	%offset_73 = mul %varDef_698 4
	%elementAddr_74 = add %arrayBase_71 %offset_73
	store %arrayPtr_67 %elementAddr_74
	br <13>

<13> for_cond
	%varDef_701 = phi <10> 0 <15> %newVal_91
	%res_77 = lt %varDef_701 %res_16
	br %res_77 <14> <16>

<14> for_body
	%arrayBase_80 = add %arrayPtr_60 4
	%offset_82 = mul %varDef_698 4
	%elementAddr_83 = add %arrayBase_80 %offset_82
	%arrayPtr_84 = load %elementAddr_83
	%arrayBase_85 = add %arrayPtr_84 4
	%offset_87 = mul %varDef_701 4
	%elementAddr_88 = add %arrayBase_85 %offset_87
	store -1 %elementAddr_88
	br <15>

<15> for_step
	%newVal_91 = inc %varDef_701
	br <13>

<16> for_end
	br <11>

<11> for_step
	%newVal_94 = inc %varDef_698
	br <9>

<12> for_end
	%arrayBase_97 = add %arrayPtr_24 4
	%elementAddr_99 = add %arrayBase_97 0
	store 0 %elementAddr_99
	%arrayBase_102 = add %arrayPtr_43 4
	%elementAddr_104 = add %arrayBase_102 0
	store 0 %elementAddr_104
	%arrayBase_106 = add %arrayPtr_60 4
	%elementAddr_109 = add %arrayBase_106 0
	%arrayPtr_110 = load %elementAddr_109
	%arrayBase_111 = add %arrayPtr_110 4
	%elementAddr_114 = add %arrayBase_111 0
	store 0 %elementAddr_114
	br <17>

<17> while_cond
	%varDef_704 = phi <12> 0 <77> %res_662
	%varDef_705 = phi <12> 0 <77> %varDef_765
	%varDef_706 = phi <12> 0 <77> %varDef_766
	%res_117 = le %varDef_704 %varDef_705
	br %res_117 <18> <19>

<18> while_body
	%arrayBase_119 = add %arrayPtr_60 4
	%arrayBase_121 = add %arrayPtr_24 4
	%offset_123 = mul %varDef_704 4
	%elementAddr_124 = add %arrayBase_121 %offset_123
	%elementVal_125 = load %elementAddr_124
	%offset_126 = mul %elementVal_125 4
	%elementAddr_127 = add %arrayBase_119 %offset_126
	%arrayPtr_128 = load %elementAddr_127
	%arrayBase_129 = add %arrayPtr_128 4
	%arrayBase_131 = add %arrayPtr_43 4
	%offset_133 = mul %varDef_704 4
	%elementAddr_134 = add %arrayBase_131 %offset_133
	%elementVal_135 = load %elementAddr_134
	%offset_136 = mul %elementVal_135 4
	%elementAddr_137 = add %arrayBase_129 %offset_136
	%elementVal_138 = load %elementAddr_137
	%arrayBase_140 = add %arrayPtr_24 4
	%offset_142 = mul %varDef_704 4
	%elementAddr_143 = add %arrayBase_140 %offset_142
	%elementVal_144 = load %elementAddr_143
	%res_145 = sub %elementVal_144 1
	%arrayBase_147 = add %arrayPtr_43 4
	%offset_149 = mul %varDef_704 4
	%elementAddr_150 = add %arrayBase_147 %offset_149
	%elementVal_151 = load %elementAddr_150
	%res_152 = sub %elementVal_151 2
	%res_153 = #check ( %res_145 %res_16 )
	br %res_153 <23> <21>

<23> lhs_true
	%res_156 = #check ( %res_152 %res_16 )
	br %res_156 <22> <21>

<22> lhs_true
	%arrayBase_160 = add %arrayPtr_60 4
	%offset_162 = mul %res_145 4
	%elementAddr_163 = add %arrayBase_160 %offset_162
	%arrayPtr_164 = load %elementAddr_163
	%arrayBase_165 = add %arrayPtr_164 4
	%offset_167 = mul %res_152 4
	%elementAddr_168 = add %arrayBase_165 %offset_167
	%elementVal_169 = load %elementAddr_168
	%res_171 = eq %elementVal_169 -1
	br %res_171 <20> <21>

<20> if_true
	%res_173 = add %varDef_705 1
	%arrayBase_176 = add %arrayPtr_24 4
	%offset_178 = mul %res_173 4
	%elementAddr_179 = add %arrayBase_176 %offset_178
	store %res_145 %elementAddr_179
	%arrayBase_182 = add %arrayPtr_43 4
	%offset_184 = mul %res_173 4
	%elementAddr_185 = add %arrayBase_182 %offset_184
	store %res_152 %elementAddr_185
	%res_187 = add %elementVal_138 1
	%arrayBase_189 = add %arrayPtr_60 4
	%offset_191 = mul %res_145 4
	%elementAddr_192 = add %arrayBase_189 %offset_191
	%arrayPtr_193 = load %elementAddr_192
	%arrayBase_194 = add %arrayPtr_193 4
	%offset_196 = mul %res_152 4
	%elementAddr_197 = add %arrayBase_194 %offset_196
	store %res_187 %elementAddr_197
	%res_200 = eq %res_145 %res_18
	br %res_200 <26> <25>

<26> lhs_true
	%res_203 = eq %res_152 %res_20
	br %res_203 <24> <25>

<24> if_true
	br <25>

<25> if_merge
	%varDef_715 = phi <20> %varDef_706 <26> %varDef_706 <24> 1
	br <21>

<21> if_merge
	%varDef_716 = phi <18> %varDef_705 <23> %varDef_705 <22> %varDef_705 <25> %res_173
	%varDef_717 = phi <18> %varDef_706 <23> %varDef_706 <22> %varDef_706 <25> %varDef_715
	%arrayBase_205 = add %arrayPtr_24 4
	%offset_207 = mul %varDef_704 4
	%elementAddr_208 = add %arrayBase_205 %offset_207
	%elementVal_209 = load %elementAddr_208
	%res_210 = sub %elementVal_209 1
	%arrayBase_212 = add %arrayPtr_43 4
	%offset_214 = mul %varDef_704 4
	%elementAddr_215 = add %arrayBase_212 %offset_214
	%elementVal_216 = load %elementAddr_215
	%res_217 = add %elementVal_216 2
	%res_218 = #check ( %res_210 %res_16 )
	br %res_218 <30> <28>

<30> lhs_true
	%res_221 = #check ( %res_217 %res_16 )
	br %res_221 <29> <28>

<29> lhs_true
	%arrayBase_225 = add %arrayPtr_60 4
	%offset_227 = mul %res_210 4
	%elementAddr_228 = add %arrayBase_225 %offset_227
	%arrayPtr_229 = load %elementAddr_228
	%arrayBase_230 = add %arrayPtr_229 4
	%offset_232 = mul %res_217 4
	%elementAddr_233 = add %arrayBase_230 %offset_232
	%elementVal_234 = load %elementAddr_233
	%res_236 = eq %elementVal_234 -1
	br %res_236 <27> <28>

<27> if_true
	%res_238 = add %varDef_716 1
	%arrayBase_241 = add %arrayPtr_24 4
	%offset_243 = mul %res_238 4
	%elementAddr_244 = add %arrayBase_241 %offset_243
	store %res_210 %elementAddr_244
	%arrayBase_247 = add %arrayPtr_43 4
	%offset_249 = mul %res_238 4
	%elementAddr_250 = add %arrayBase_247 %offset_249
	store %res_217 %elementAddr_250
	%res_252 = add %elementVal_138 1
	%arrayBase_254 = add %arrayPtr_60 4
	%offset_256 = mul %res_210 4
	%elementAddr_257 = add %arrayBase_254 %offset_256
	%arrayPtr_258 = load %elementAddr_257
	%arrayBase_259 = add %arrayPtr_258 4
	%offset_261 = mul %res_217 4
	%elementAddr_262 = add %arrayBase_259 %offset_261
	store %res_252 %elementAddr_262
	%res_265 = eq %res_210 %res_18
	br %res_265 <33> <32>

<33> lhs_true
	%res_268 = eq %res_217 %res_20
	br %res_268 <31> <32>

<31> if_true
	br <32>

<32> if_merge
	%varDef_722 = phi <27> %varDef_717 <33> %varDef_717 <31> 1
	br <28>

<28> if_merge
	%varDef_723 = phi <21> %varDef_716 <30> %varDef_716 <29> %varDef_716 <32> %res_238
	%varDef_724 = phi <21> %varDef_717 <30> %varDef_717 <29> %varDef_717 <32> %varDef_722
	%arrayBase_270 = add %arrayPtr_24 4
	%offset_272 = mul %varDef_704 4
	%elementAddr_273 = add %arrayBase_270 %offset_272
	%elementVal_274 = load %elementAddr_273
	%res_275 = add %elementVal_274 1
	%arrayBase_277 = add %arrayPtr_43 4
	%offset_279 = mul %varDef_704 4
	%elementAddr_280 = add %arrayBase_277 %offset_279
	%elementVal_281 = load %elementAddr_280
	%res_282 = sub %elementVal_281 2
	%res_283 = #check ( %res_275 %res_16 )
	br %res_283 <37> <35>

<37> lhs_true
	%res_286 = #check ( %res_282 %res_16 )
	br %res_286 <36> <35>

<36> lhs_true
	%arrayBase_290 = add %arrayPtr_60 4
	%offset_292 = mul %res_275 4
	%elementAddr_293 = add %arrayBase_290 %offset_292
	%arrayPtr_294 = load %elementAddr_293
	%arrayBase_295 = add %arrayPtr_294 4
	%offset_297 = mul %res_282 4
	%elementAddr_298 = add %arrayBase_295 %offset_297
	%elementVal_299 = load %elementAddr_298
	%res_301 = eq %elementVal_299 -1
	br %res_301 <34> <35>

<34> if_true
	%res_303 = add %varDef_723 1
	%arrayBase_306 = add %arrayPtr_24 4
	%offset_308 = mul %res_303 4
	%elementAddr_309 = add %arrayBase_306 %offset_308
	store %res_275 %elementAddr_309
	%arrayBase_312 = add %arrayPtr_43 4
	%offset_314 = mul %res_303 4
	%elementAddr_315 = add %arrayBase_312 %offset_314
	store %res_282 %elementAddr_315
	%res_317 = add %elementVal_138 1
	%arrayBase_319 = add %arrayPtr_60 4
	%offset_321 = mul %res_275 4
	%elementAddr_322 = add %arrayBase_319 %offset_321
	%arrayPtr_323 = load %elementAddr_322
	%arrayBase_324 = add %arrayPtr_323 4
	%offset_326 = mul %res_282 4
	%elementAddr_327 = add %arrayBase_324 %offset_326
	store %res_317 %elementAddr_327
	%res_330 = eq %res_275 %res_18
	br %res_330 <40> <39>

<40> lhs_true
	%res_333 = eq %res_282 %res_20
	br %res_333 <38> <39>

<38> if_true
	br <39>

<39> if_merge
	%varDef_729 = phi <34> %varDef_724 <40> %varDef_724 <38> 1
	br <35>

<35> if_merge
	%varDef_730 = phi <28> %varDef_723 <37> %varDef_723 <36> %varDef_723 <39> %res_303
	%varDef_731 = phi <28> %varDef_724 <37> %varDef_724 <36> %varDef_724 <39> %varDef_729
	%arrayBase_335 = add %arrayPtr_24 4
	%offset_337 = mul %varDef_704 4
	%elementAddr_338 = add %arrayBase_335 %offset_337
	%elementVal_339 = load %elementAddr_338
	%res_340 = add %elementVal_339 1
	%arrayBase_342 = add %arrayPtr_43 4
	%offset_344 = mul %varDef_704 4
	%elementAddr_345 = add %arrayBase_342 %offset_344
	%elementVal_346 = load %elementAddr_345
	%res_347 = add %elementVal_346 2
	%res_348 = #check ( %res_340 %res_16 )
	br %res_348 <44> <42>

<44> lhs_true
	%res_351 = #check ( %res_347 %res_16 )
	br %res_351 <43> <42>

<43> lhs_true
	%arrayBase_355 = add %arrayPtr_60 4
	%offset_357 = mul %res_340 4
	%elementAddr_358 = add %arrayBase_355 %offset_357
	%arrayPtr_359 = load %elementAddr_358
	%arrayBase_360 = add %arrayPtr_359 4
	%offset_362 = mul %res_347 4
	%elementAddr_363 = add %arrayBase_360 %offset_362
	%elementVal_364 = load %elementAddr_363
	%res_366 = eq %elementVal_364 -1
	br %res_366 <41> <42>

<41> if_true
	%res_368 = add %varDef_730 1
	%arrayBase_371 = add %arrayPtr_24 4
	%offset_373 = mul %res_368 4
	%elementAddr_374 = add %arrayBase_371 %offset_373
	store %res_340 %elementAddr_374
	%arrayBase_377 = add %arrayPtr_43 4
	%offset_379 = mul %res_368 4
	%elementAddr_380 = add %arrayBase_377 %offset_379
	store %res_347 %elementAddr_380
	%res_382 = add %elementVal_138 1
	%arrayBase_384 = add %arrayPtr_60 4
	%offset_386 = mul %res_340 4
	%elementAddr_387 = add %arrayBase_384 %offset_386
	%arrayPtr_388 = load %elementAddr_387
	%arrayBase_389 = add %arrayPtr_388 4
	%offset_391 = mul %res_347 4
	%elementAddr_392 = add %arrayBase_389 %offset_391
	store %res_382 %elementAddr_392
	%res_395 = eq %res_340 %res_18
	br %res_395 <47> <46>

<47> lhs_true
	%res_398 = eq %res_347 %res_20
	br %res_398 <45> <46>

<45> if_true
	br <46>

<46> if_merge
	%varDef_736 = phi <41> %varDef_731 <47> %varDef_731 <45> 1
	br <42>

<42> if_merge
	%varDef_737 = phi <35> %varDef_730 <44> %varDef_730 <43> %varDef_730 <46> %res_368
	%varDef_738 = phi <35> %varDef_731 <44> %varDef_731 <43> %varDef_731 <46> %varDef_736
	%arrayBase_400 = add %arrayPtr_24 4
	%offset_402 = mul %varDef_704 4
	%elementAddr_403 = add %arrayBase_400 %offset_402
	%elementVal_404 = load %elementAddr_403
	%res_405 = sub %elementVal_404 2
	%arrayBase_407 = add %arrayPtr_43 4
	%offset_409 = mul %varDef_704 4
	%elementAddr_410 = add %arrayBase_407 %offset_409
	%elementVal_411 = load %elementAddr_410
	%res_412 = sub %elementVal_411 1
	%res_413 = #check ( %res_405 %res_16 )
	br %res_413 <51> <49>

<51> lhs_true
	%res_416 = #check ( %res_412 %res_16 )
	br %res_416 <50> <49>

<50> lhs_true
	%arrayBase_420 = add %arrayPtr_60 4
	%offset_422 = mul %res_405 4
	%elementAddr_423 = add %arrayBase_420 %offset_422
	%arrayPtr_424 = load %elementAddr_423
	%arrayBase_425 = add %arrayPtr_424 4
	%offset_427 = mul %res_412 4
	%elementAddr_428 = add %arrayBase_425 %offset_427
	%elementVal_429 = load %elementAddr_428
	%res_431 = eq %elementVal_429 -1
	br %res_431 <48> <49>

<48> if_true
	%res_433 = add %varDef_737 1
	%arrayBase_436 = add %arrayPtr_24 4
	%offset_438 = mul %res_433 4
	%elementAddr_439 = add %arrayBase_436 %offset_438
	store %res_405 %elementAddr_439
	%arrayBase_442 = add %arrayPtr_43 4
	%offset_444 = mul %res_433 4
	%elementAddr_445 = add %arrayBase_442 %offset_444
	store %res_412 %elementAddr_445
	%res_447 = add %elementVal_138 1
	%arrayBase_449 = add %arrayPtr_60 4
	%offset_451 = mul %res_405 4
	%elementAddr_452 = add %arrayBase_449 %offset_451
	%arrayPtr_453 = load %elementAddr_452
	%arrayBase_454 = add %arrayPtr_453 4
	%offset_456 = mul %res_412 4
	%elementAddr_457 = add %arrayBase_454 %offset_456
	store %res_447 %elementAddr_457
	%res_460 = eq %res_405 %res_18
	br %res_460 <54> <53>

<54> lhs_true
	%res_463 = eq %res_412 %res_20
	br %res_463 <52> <53>

<52> if_true
	br <53>

<53> if_merge
	%varDef_743 = phi <48> %varDef_738 <54> %varDef_738 <52> 1
	br <49>

<49> if_merge
	%varDef_744 = phi <42> %varDef_737 <51> %varDef_737 <50> %varDef_737 <53> %res_433
	%varDef_745 = phi <42> %varDef_738 <51> %varDef_738 <50> %varDef_738 <53> %varDef_743
	%arrayBase_465 = add %arrayPtr_24 4
	%offset_467 = mul %varDef_704 4
	%elementAddr_468 = add %arrayBase_465 %offset_467
	%elementVal_469 = load %elementAddr_468
	%res_470 = sub %elementVal_469 2
	%arrayBase_472 = add %arrayPtr_43 4
	%offset_474 = mul %varDef_704 4
	%elementAddr_475 = add %arrayBase_472 %offset_474
	%elementVal_476 = load %elementAddr_475
	%res_477 = add %elementVal_476 1
	%res_478 = #check ( %res_470 %res_16 )
	br %res_478 <58> <56>

<58> lhs_true
	%res_481 = #check ( %res_477 %res_16 )
	br %res_481 <57> <56>

<57> lhs_true
	%arrayBase_485 = add %arrayPtr_60 4
	%offset_487 = mul %res_470 4
	%elementAddr_488 = add %arrayBase_485 %offset_487
	%arrayPtr_489 = load %elementAddr_488
	%arrayBase_490 = add %arrayPtr_489 4
	%offset_492 = mul %res_477 4
	%elementAddr_493 = add %arrayBase_490 %offset_492
	%elementVal_494 = load %elementAddr_493
	%res_496 = eq %elementVal_494 -1
	br %res_496 <55> <56>

<55> if_true
	%res_498 = add %varDef_744 1
	%arrayBase_501 = add %arrayPtr_24 4
	%offset_503 = mul %res_498 4
	%elementAddr_504 = add %arrayBase_501 %offset_503
	store %res_470 %elementAddr_504
	%arrayBase_507 = add %arrayPtr_43 4
	%offset_509 = mul %res_498 4
	%elementAddr_510 = add %arrayBase_507 %offset_509
	store %res_477 %elementAddr_510
	%res_512 = add %elementVal_138 1
	%arrayBase_514 = add %arrayPtr_60 4
	%offset_516 = mul %res_470 4
	%elementAddr_517 = add %arrayBase_514 %offset_516
	%arrayPtr_518 = load %elementAddr_517
	%arrayBase_519 = add %arrayPtr_518 4
	%offset_521 = mul %res_477 4
	%elementAddr_522 = add %arrayBase_519 %offset_521
	store %res_512 %elementAddr_522
	%res_525 = eq %res_470 %res_18
	br %res_525 <61> <60>

<61> lhs_true
	%res_528 = eq %res_477 %res_20
	br %res_528 <59> <60>

<59> if_true
	br <60>

<60> if_merge
	%varDef_750 = phi <55> %varDef_745 <61> %varDef_745 <59> 1
	br <56>

<56> if_merge
	%varDef_751 = phi <49> %varDef_744 <58> %varDef_744 <57> %varDef_744 <60> %res_498
	%varDef_752 = phi <49> %varDef_745 <58> %varDef_745 <57> %varDef_745 <60> %varDef_750
	%arrayBase_530 = add %arrayPtr_24 4
	%offset_532 = mul %varDef_704 4
	%elementAddr_533 = add %arrayBase_530 %offset_532
	%elementVal_534 = load %elementAddr_533
	%res_535 = add %elementVal_534 2
	%arrayBase_537 = add %arrayPtr_43 4
	%offset_539 = mul %varDef_704 4
	%elementAddr_540 = add %arrayBase_537 %offset_539
	%elementVal_541 = load %elementAddr_540
	%res_542 = sub %elementVal_541 1
	%res_543 = #check ( %res_535 %res_16 )
	br %res_543 <65> <63>

<65> lhs_true
	%res_546 = #check ( %res_542 %res_16 )
	br %res_546 <64> <63>

<64> lhs_true
	%arrayBase_550 = add %arrayPtr_60 4
	%offset_552 = mul %res_535 4
	%elementAddr_553 = add %arrayBase_550 %offset_552
	%arrayPtr_554 = load %elementAddr_553
	%arrayBase_555 = add %arrayPtr_554 4
	%offset_557 = mul %res_542 4
	%elementAddr_558 = add %arrayBase_555 %offset_557
	%elementVal_559 = load %elementAddr_558
	%res_561 = eq %elementVal_559 -1
	br %res_561 <62> <63>

<62> if_true
	%res_563 = add %varDef_751 1
	%arrayBase_566 = add %arrayPtr_24 4
	%offset_568 = mul %res_563 4
	%elementAddr_569 = add %arrayBase_566 %offset_568
	store %res_535 %elementAddr_569
	%arrayBase_572 = add %arrayPtr_43 4
	%offset_574 = mul %res_563 4
	%elementAddr_575 = add %arrayBase_572 %offset_574
	store %res_542 %elementAddr_575
	%res_577 = add %elementVal_138 1
	%arrayBase_579 = add %arrayPtr_60 4
	%offset_581 = mul %res_535 4
	%elementAddr_582 = add %arrayBase_579 %offset_581
	%arrayPtr_583 = load %elementAddr_582
	%arrayBase_584 = add %arrayPtr_583 4
	%offset_586 = mul %res_542 4
	%elementAddr_587 = add %arrayBase_584 %offset_586
	store %res_577 %elementAddr_587
	%res_590 = eq %res_535 %res_18
	br %res_590 <68> <67>

<68> lhs_true
	%res_593 = eq %res_542 %res_20
	br %res_593 <66> <67>

<66> if_true
	br <67>

<67> if_merge
	%varDef_757 = phi <62> %varDef_752 <68> %varDef_752 <66> 1
	br <63>

<63> if_merge
	%varDef_758 = phi <56> %varDef_751 <65> %varDef_751 <64> %varDef_751 <67> %res_563
	%varDef_759 = phi <56> %varDef_752 <65> %varDef_752 <64> %varDef_752 <67> %varDef_757
	%arrayBase_595 = add %arrayPtr_24 4
	%offset_597 = mul %varDef_704 4
	%elementAddr_598 = add %arrayBase_595 %offset_597
	%elementVal_599 = load %elementAddr_598
	%res_600 = add %elementVal_599 2
	%arrayBase_602 = add %arrayPtr_43 4
	%offset_604 = mul %varDef_704 4
	%elementAddr_605 = add %arrayBase_602 %offset_604
	%elementVal_606 = load %elementAddr_605
	%res_607 = add %elementVal_606 1
	%res_608 = #check ( %res_600 %res_16 )
	br %res_608 <72> <70>

<72> lhs_true
	%res_611 = #check ( %res_607 %res_16 )
	br %res_611 <71> <70>

<71> lhs_true
	%arrayBase_615 = add %arrayPtr_60 4
	%offset_617 = mul %res_600 4
	%elementAddr_618 = add %arrayBase_615 %offset_617
	%arrayPtr_619 = load %elementAddr_618
	%arrayBase_620 = add %arrayPtr_619 4
	%offset_622 = mul %res_607 4
	%elementAddr_623 = add %arrayBase_620 %offset_622
	%elementVal_624 = load %elementAddr_623
	%res_626 = eq %elementVal_624 -1
	br %res_626 <69> <70>

<69> if_true
	%res_628 = add %varDef_758 1
	%arrayBase_631 = add %arrayPtr_24 4
	%offset_633 = mul %res_628 4
	%elementAddr_634 = add %arrayBase_631 %offset_633
	store %res_600 %elementAddr_634
	%arrayBase_637 = add %arrayPtr_43 4
	%offset_639 = mul %res_628 4
	%elementAddr_640 = add %arrayBase_637 %offset_639
	store %res_607 %elementAddr_640
	%res_642 = add %elementVal_138 1
	%arrayBase_644 = add %arrayPtr_60 4
	%offset_646 = mul %res_600 4
	%elementAddr_647 = add %arrayBase_644 %offset_646
	%arrayPtr_648 = load %elementAddr_647
	%arrayBase_649 = add %arrayPtr_648 4
	%offset_651 = mul %res_607 4
	%elementAddr_652 = add %arrayBase_649 %offset_651
	store %res_642 %elementAddr_652
	%res_655 = eq %res_600 %res_18
	br %res_655 <75> <74>

<75> lhs_true
	%res_658 = eq %res_607 %res_20
	br %res_658 <73> <74>

<73> if_true
	br <74>

<74> if_merge
	%varDef_764 = phi <69> %varDef_759 <75> %varDef_759 <73> 1
	br <70>

<70> if_merge
	%varDef_765 = phi <63> %varDef_758 <72> %varDef_758 <71> %varDef_758 <74> %res_628
	%varDef_766 = phi <63> %varDef_759 <72> %varDef_759 <71> %varDef_759 <74> %varDef_764
	%res_660 = eq %varDef_766 1
	br %res_660 <76> <77>

<76> if_true
	br <19>

<77> if_merge
	%res_662 = add %varDef_704 1
	br <17>

<19> while_end
	%varDef_769 = phi <17> %varDef_706 <76> %varDef_766
	%res_664 = eq %varDef_769 1
	br %res_664 <78> <79>

<78> if_true
	%arrayBase_667 = add %arrayPtr_60 4
	%offset_669 = mul %res_18 4
	%elementAddr_670 = add %arrayBase_667 %offset_669
	%arrayPtr_671 = load %elementAddr_670
	%arrayBase_672 = add %arrayPtr_671 4
	%offset_674 = mul %res_20 4
	%elementAddr_675 = add %arrayBase_672 %offset_674
	%elementVal_676 = load %elementAddr_675
	%res_665 = #toString ( %elementVal_676 )
	#println ( %res_665 )
	br <80>

<79> if_false
	#print ( $str_0 )
	br <80>

<80> if_merge
	ret 0

}

