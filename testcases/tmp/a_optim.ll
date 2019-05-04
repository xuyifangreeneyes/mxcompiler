@N

@head

@targetx

@targety

@x

@y

@xlist

@ylist

@tail

@ok

@now

@dx

@dy

@step

@i

@j

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
	%arrayPtr_0 = malloc 96008
	store 12000 %arrayPtr_0
	%arrayPtr_3 = malloc 96008
	store 12000 %arrayPtr_3
	%arrayPtr_6 = malloc 72
	store 8 %arrayPtr_6
	%arrayPtr_9 = malloc 80
	store 9 %arrayPtr_9
	store %arrayPtr_3 @ylist
	store %arrayPtr_6 @dx
	store %arrayPtr_9 @dy
	store %arrayPtr_0 @xlist
	ret 

}

define origin ( %argVal_0 ) {
<0> entry
	%varAddr_70 = alloca 4
	%varAddr_69 = alloca 4
	%varAddr_68 = alloca 4
	%tmp_45 = load @j
	%memberLength_4 = mul %argVal_0 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store %argVal_0 %arrayPtr_3
	store %tmp_45 %varAddr_69
	store 0 %varAddr_70
	br <1>

<1> for_cond
	%varDef_62 = load %varAddr_69
	%varDef_63 = load %varAddr_70
	%res_8 = lt %varDef_63 %argVal_0
	br %res_8 <2> <4>

<2> for_body
	%memberLength_11 = mul %argVal_0 8
	%arrayLength_12 = add %memberLength_11 8
	%arrayPtr_10 = malloc %arrayLength_12
	store %argVal_0 %arrayPtr_10
	%arrayBase_14 = add %arrayPtr_3 8
	%offset_16 = mul %varDef_63 8
	%elementAddr_17 = add %arrayBase_14 %offset_16
	store %arrayPtr_10 %elementAddr_17
	store 0 %varAddr_68
	br <5>

<5> for_cond
	%varDef_65 = load %varAddr_68
	%res_20 = lt %varDef_65 %argVal_0
	br %res_20 <6> <3>

<6> for_body
	%arrayBase_22 = add %arrayPtr_3 8
	%offset_24 = mul %varDef_63 8
	%elementAddr_25 = add %arrayBase_22 %offset_24
	%arrayPtr_26 = load %elementAddr_25
	%arrayBase_27 = add %arrayPtr_26 8
	%offset_29 = mul %varDef_65 8
	%elementAddr_30 = add %arrayBase_27 %offset_29
	store 0 %elementAddr_30
	%newVal_33 = inc %varDef_65
	store %newVal_33 %varAddr_68
	br <5>

<3> for_step
	%newVal_36 = inc %varDef_63
	store %varDef_65 %varAddr_69
	store %newVal_36 %varAddr_70
	br <1>

<4> for_end
	store 0 @tail
	store 0 @head
	store %arrayPtr_3 @step
	store %varDef_62 @j
	store %varDef_63 @i
	ret 

}

define check ( %argVal_0 ) {
<0> entry
	%varAddr_16 = alloca 4
	%tmp_10 = load @N
	%res_5 = lt %argVal_0 %tmp_10
	br %res_5 <4> <2>

<4> lhs_true
	%res_7 = ge %argVal_0 0
	br %res_7 <1> <2>

<1> bool_true
	store 1 %varAddr_16
	br <3>

<2> bool_false
	store 0 %varAddr_16
	br <3>

<3> bool_merge
	%varDef_15 = load %varAddr_16
	ret %varDef_15

}

define addList ( %argVal_0 %argVal_2 ) {
<0> entry
	%varAddr_123 = alloca 4
	%varAddr_122 = alloca 4
	%varAddr_121 = alloca 4
	%varAddr_120 = alloca 4
	%tmp_89 = load @now
	%tmp_88 = load @xlist
	%tmp_87 = load @step
	%tmp_86 = load @N
	%tmp_85 = load @targetx
	%tmp_84 = load @ylist
	%tmp_83 = load @ok
	%tmp_82 = load @targety
	%tmp_81 = load @tail
	br <9>

<9> centry
	%cres_59 = lt %argVal_0 %tmp_86
	br %cres_59 <10> <12>

<10> clhs_true
	%cres_61 = ge %argVal_0 0
	br %cres_61 <11> <12>

<11> cbool_true
	store 1 %varAddr_123
	br <13>

<12> cbool_false
	store 0 %varAddr_123
	br <13>

<13> cbool_merge
	%varDef_106 = load %varAddr_123
	br %varDef_106 <4> <23>

<23> parallel_copy
	store %tmp_81 %varAddr_120
	store %tmp_83 %varAddr_121
	br <2>

<4> lhs_true
	%cres_68 = lt %argVal_2 %tmp_86
	br %cres_68 <16> <18>

<16> clhs_true
	%cres_70 = ge %argVal_2 0
	br %cres_70 <17> <18>

<17> cbool_true
	store 1 %varAddr_122
	br <19>

<18> cbool_false
	store 0 %varAddr_122
	br <19>

<19> cbool_merge
	%varDef_111 = load %varAddr_122
	br %varDef_111 <3> <24>

<24> parallel_copy
	store %tmp_81 %varAddr_120
	store %tmp_83 %varAddr_121
	br <2>

<3> lhs_true
	%arrayBase_9 = add %tmp_87 8
	%offset_11 = mul %argVal_0 8
	%elementAddr_12 = add %arrayBase_9 %offset_11
	%arrayPtr_13 = load %elementAddr_12
	%arrayBase_14 = add %arrayPtr_13 8
	%offset_16 = mul %argVal_2 8
	%elementAddr_17 = add %arrayBase_14 %offset_16
	%elementVal_18 = load %elementAddr_17
	%res_20 = eq %elementVal_18 -1
	br %res_20 <1> <22>

<22> parallel_copy
	store %tmp_81 %varAddr_120
	store %tmp_83 %varAddr_121
	br <2>

<1> if_true
	%newVal_23 = inc %tmp_81
	%arrayBase_26 = add %tmp_88 8
	%offset_28 = mul %newVal_23 8
	%elementAddr_29 = add %arrayBase_26 %offset_28
	store %argVal_0 %elementAddr_29
	%arrayBase_32 = add %tmp_84 8
	%elementAddr_35 = add %arrayBase_32 %offset_28
	store %argVal_2 %elementAddr_35
	%res_37 = add %tmp_89 1
	%arrayBase_39 = add %tmp_87 8
	%offset_41 = mul %argVal_0 8
	%elementAddr_42 = add %arrayBase_39 %offset_41
	%arrayPtr_43 = load %elementAddr_42
	%arrayBase_44 = add %arrayPtr_43 8
	%offset_46 = mul %argVal_2 8
	%elementAddr_47 = add %arrayBase_44 %offset_46
	store %res_37 %elementAddr_47
	%res_50 = eq %argVal_0 %tmp_85
	br %res_50 <7> <21>

<21> parallel_copy
	store %newVal_23 %varAddr_120
	store %tmp_83 %varAddr_121
	br <2>

<7> lhs_true
	%res_53 = eq %argVal_2 %tmp_82
	br %res_53 <5> <20>

<20> parallel_copy
	store %newVal_23 %varAddr_120
	store %tmp_83 %varAddr_121
	br <2>

<5> if_true
	store %newVal_23 %varAddr_120
	store 1 %varAddr_121
	br <2>

<2> if_merge
	%varDef_118 = load %varAddr_120
	%varDef_119 = load %varAddr_121
	store %varDef_118 @tail
	store %varDef_119 @ok
	ret 

}

define main ( ) {
<0> entry
	%varAddr_460 = alloca 4
	%varAddr_459 = alloca 4
	%varAddr_458 = alloca 4
	%varAddr_457 = alloca 4
	%varAddr_456 = alloca 4
	%varAddr_455 = alloca 4
	%varAddr_454 = alloca 4
	%varAddr_453 = alloca 4
	%varAddr_452 = alloca 4
	%varAddr_451 = alloca 4
	%varAddr_450 = alloca 4
	%varAddr_449 = alloca 4
	%varAddr_448 = alloca 4
	%varAddr_447 = alloca 4
	%varAddr_446 = alloca 4
	%varAddr_445 = alloca 4
	%varAddr_444 = alloca 4
	%varAddr_443 = alloca 4
	%varAddr_442 = alloca 4
	%varAddr_441 = alloca 4
	%varAddr_440 = alloca 4
	%varAddr_439 = alloca 4
	%varAddr_438 = alloca 4
	%varAddr_437 = alloca 4
	%varAddr_436 = alloca 4
	%varAddr_435 = alloca 4
	%varAddr_434 = alloca 4
	%varAddr_433 = alloca 4
	%varAddr_432 = alloca 4
	%varAddr_431 = alloca 4
	%varAddr_430 = alloca 4
	%varAddr_429 = alloca 4
	%varAddr_428 = alloca 4
	%varAddr_427 = alloca 4
	%varAddr_426 = alloca 4
	%varAddr_425 = alloca 4
	%varAddr_424 = alloca 4
	%varAddr_423 = alloca 4
	%varAddr_422 = alloca 4
	%varAddr_421 = alloca 4
	%varAddr_420 = alloca 4
	%varAddr_419 = alloca 4
	%varAddr_418 = alloca 4
	%varAddr_417 = alloca 4
	%varAddr_416 = alloca 4
	%tmp_301 = load @now
	%tmp_300 = load @dy
	%tmp_295 = load @x
	%tmp_294 = load @xlist
	%tmp_293 = load @y
	%tmp_291 = load @dx
	%tmp_290 = load @j
	%tmp_288 = load @ylist
	%tmp_287 = load @ok
	br <22>

<22> centry
	%carrayPtr_168 = malloc 856
	store 106 %carrayPtr_168
	store %tmp_290 %varAddr_439
	store 0 %varAddr_440
	br <23>

<23> cfor_cond
	%varDef_335 = load %varAddr_439
	%varDef_336 = load %varAddr_440
	%cres_171 = lt %varDef_336 106
	br %cres_171 <24> <21>

<24> cfor_body
	%carrayPtr_175 = malloc 856
	store 106 %carrayPtr_175
	%carrayBase_177 = add %carrayPtr_168 8
	%coffset_179 = mul %varDef_336 8
	%celementAddr_180 = add %carrayBase_177 %coffset_179
	store %carrayPtr_175 %celementAddr_180
	store 0 %varAddr_421
	br <25>

<25> cfor_cond
	%varDef_338 = load %varAddr_421
	%cres_183 = lt %varDef_338 106
	br %cres_183 <26> <29>

<26> cfor_body
	%carrayBase_185 = add %carrayPtr_168 8
	%coffset_187 = mul %varDef_336 8
	%celementAddr_188 = add %carrayBase_185 %coffset_187
	%carrayPtr_189 = load %celementAddr_188
	%carrayBase_190 = add %carrayPtr_189 8
	%coffset_192 = mul %varDef_338 8
	%celementAddr_193 = add %carrayBase_190 %coffset_192
	store 0 %celementAddr_193
	%cnewVal_196 = inc %varDef_338
	store %cnewVal_196 %varAddr_421
	br <25>

<29> cfor_step
	%cnewVal_199 = inc %varDef_336
	store %varDef_338 %varAddr_439
	store %cnewVal_199 %varAddr_440
	br <23>

<21> after_call
	%res_0 = getInt ( )
	%res_2 = sub %res_0 1
	store %varDef_335 %varAddr_458
	store 0 %varAddr_459
	br <1>

<1> for_cond
	%varDef_345 = load %varAddr_458
	%varDef_346 = load %varAddr_459
	%res_6 = lt %varDef_346 %res_0
	br %res_6 <2> <4>

<2> for_body
	store 0 %varAddr_422
	br <5>

<5> for_cond
	%varDef_348 = load %varAddr_422
	%res_9 = lt %varDef_348 %res_0
	br %res_9 <6> <3>

<6> for_body
	%arrayBase_12 = add %carrayPtr_168 8
	%offset_14 = mul %varDef_346 8
	%elementAddr_15 = add %arrayBase_12 %offset_14
	%arrayPtr_16 = load %elementAddr_15
	%arrayBase_17 = add %arrayPtr_16 8
	%offset_19 = mul %varDef_348 8
	%elementAddr_20 = add %arrayBase_17 %offset_19
	store -1 %elementAddr_20
	%newVal_23 = inc %varDef_348
	store %newVal_23 %varAddr_422
	br <5>

<3> for_step
	%newVal_26 = inc %varDef_346
	store %varDef_348 %varAddr_458
	store %newVal_26 %varAddr_459
	br <1>

<4> for_end
	%arrayBase_29 = add %tmp_291 8
	%elementAddr_31 = add %arrayBase_29 0
	store -2 %elementAddr_31
	%arrayBase_34 = add %tmp_300 8
	%elementAddr_36 = add %arrayBase_34 0
	store -1 %elementAddr_36
	%elementAddr_41 = add %arrayBase_29 8
	store -2 %elementAddr_41
	%elementAddr_45 = add %arrayBase_34 8
	store 1 %elementAddr_45
	%elementAddr_49 = add %arrayBase_29 16
	store 2 %elementAddr_49
	%elementAddr_54 = add %arrayBase_34 16
	store -1 %elementAddr_54
	%elementAddr_58 = add %arrayBase_29 24
	store 2 %elementAddr_58
	%elementAddr_62 = add %arrayBase_34 24
	store 1 %elementAddr_62
	%elementAddr_67 = add %arrayBase_29 32
	store -1 %elementAddr_67
	%elementAddr_72 = add %arrayBase_34 32
	store -2 %elementAddr_72
	%elementAddr_77 = add %arrayBase_29 40
	store -1 %elementAddr_77
	%elementAddr_81 = add %arrayBase_34 40
	store 2 %elementAddr_81
	%elementAddr_85 = add %arrayBase_29 48
	store 1 %elementAddr_85
	%elementAddr_90 = add %arrayBase_34 48
	store -2 %elementAddr_90
	%elementAddr_94 = add %arrayBase_29 56
	store 1 %elementAddr_94
	%elementAddr_98 = add %arrayBase_34 56
	store 2 %elementAddr_98
	store 0 %varAddr_423
	store 0 %varAddr_424
	store 0 %varAddr_425
	store 0 %varAddr_426
	store 0 %varAddr_427
	store 0 %varAddr_428
	store 0 %varAddr_429
	store 0 %varAddr_430
	store %tmp_287 %varAddr_431
	store 0 %varAddr_432
	store %varDef_345 %varAddr_433
	store %tmp_293 %varAddr_434
	store %tmp_295 %varAddr_435
	store 0 %varAddr_436
	store %tmp_301 %varAddr_437
	br <9>

<9> while_cond
	%varDef_351 = load %varAddr_423
	%varDef_352 = load %varAddr_424
	%varDef_353 = load %varAddr_425
	%varDef_354 = load %varAddr_426
	%varDef_355 = load %varAddr_427
	%varDef_356 = load %varAddr_428
	%varDef_357 = load %varAddr_429
	%varDef_358 = load %varAddr_430
	%varDef_359 = load %varAddr_431
	%varDef_360 = load %varAddr_432
	%varDef_361 = load %varAddr_433
	%varDef_362 = load %varAddr_434
	%varDef_363 = load %varAddr_435
	%varDef_364 = load %varAddr_436
	%varDef_365 = load %varAddr_437
	%res_101 = le %varDef_360 %varDef_364
	br %res_101 <10> <57>

<57> parallel_copy
	store %varDef_359 %varAddr_452
	store %varDef_361 %varAddr_453
	store %varDef_362 %varAddr_454
	store %varDef_363 %varAddr_455
	store %varDef_364 %varAddr_456
	store %varDef_365 %varAddr_457
	br <11>

<10> while_body
	%arrayBase_103 = add %tmp_294 8
	%offset_105 = mul %varDef_360 8
	%elementAddr_106 = add %arrayBase_103 %offset_105
	%elementVal_107 = load %elementAddr_106
	%arrayBase_109 = add %tmp_288 8
	%elementAddr_112 = add %arrayBase_109 %offset_105
	%elementVal_113 = load %elementAddr_112
	%arrayBase_115 = add %carrayPtr_168 8
	%offset_117 = mul %elementVal_107 8
	%elementAddr_118 = add %arrayBase_115 %offset_117
	%arrayPtr_119 = load %elementAddr_118
	%arrayBase_120 = add %arrayPtr_119 8
	%offset_122 = mul %elementVal_113 8
	%elementAddr_123 = add %arrayBase_120 %offset_122
	%elementVal_124 = load %elementAddr_123
	store %varDef_351 %varAddr_441
	store %varDef_352 %varAddr_442
	store %varDef_353 %varAddr_443
	store %varDef_354 %varAddr_444
	store %varDef_355 %varAddr_445
	store %varDef_356 %varAddr_446
	store %varDef_357 %varAddr_447
	store %varDef_358 %varAddr_448
	store %varDef_359 %varAddr_449
	store 0 %varAddr_450
	store %varDef_364 %varAddr_451
	br <12>

<12> for_cond
	%varDef_370 = load %varAddr_441
	%varDef_371 = load %varAddr_442
	%varDef_372 = load %varAddr_443
	%varDef_373 = load %varAddr_444
	%varDef_374 = load %varAddr_445
	%varDef_375 = load %varAddr_446
	%varDef_376 = load %varAddr_447
	%varDef_377 = load %varAddr_448
	%varDef_378 = load %varAddr_449
	%varDef_379 = load %varAddr_450
	%varDef_380 = load %varAddr_451
	%res_126 = lt %varDef_379 8
	br %res_126 <13> <15>

<13> for_body
	%arrayBase_129 = add %tmp_291 8
	%offset_131 = mul %varDef_379 8
	%elementAddr_132 = add %arrayBase_129 %offset_131
	%elementVal_133 = load %elementAddr_132
	%res_134 = add %elementVal_107 %elementVal_133
	%arrayBase_137 = add %tmp_300 8
	%elementAddr_140 = add %arrayBase_137 %offset_131
	%elementVal_141 = load %elementAddr_140
	%res_142 = add %elementVal_113 %elementVal_141
	%cres_257 = lt %res_134 %res_0
	br %cres_257 <42> <44>

<42> clhs_true
	%cres_259 = ge %res_134 0
	br %cres_259 <43> <44>

<43> cbool_true
	store 1 %varAddr_438
	br <45>

<44> cbool_false
	store 0 %varAddr_438
	br <45>

<45> cbool_merge
	%varDef_386 = load %varAddr_438
	br %varDef_386 <33> <55>

<55> parallel_copy
	store %varDef_375 %varAddr_416
	store %varDef_376 %varAddr_417
	store %varDef_377 %varAddr_418
	store %varDef_378 %varAddr_419
	store %varDef_380 %varAddr_420
	br <14>

<33> clhs_true
	%cres_266 = lt %res_142 %res_0
	br %cres_266 <48> <50>

<48> clhs_true
	%cres_268 = ge %res_142 0
	br %cres_268 <49> <50>

<49> cbool_true
	store 1 %varAddr_460
	br <51>

<50> cbool_false
	store 0 %varAddr_460
	br <51>

<51> cbool_merge
	%varDef_391 = load %varAddr_460
	br %varDef_391 <34> <53>

<53> parallel_copy
	store %varDef_391 %varAddr_416
	store %varDef_391 %varAddr_417
	store %res_142 %varAddr_418
	store %varDef_378 %varAddr_419
	store %varDef_380 %varAddr_420
	br <14>

<34> clhs_true
	%carrayBase_207 = add %carrayPtr_168 8
	%coffset_209 = mul %res_134 8
	%celementAddr_210 = add %carrayBase_207 %coffset_209
	%carrayPtr_211 = load %celementAddr_210
	%carrayBase_212 = add %carrayPtr_211 8
	%coffset_214 = mul %res_142 8
	%celementAddr_215 = add %carrayBase_212 %coffset_214
	%celementVal_216 = load %celementAddr_215
	%cres_218 = eq %celementVal_216 -1
	br %cres_218 <35> <52>

<52> parallel_copy
	store %varDef_391 %varAddr_416
	store %varDef_391 %varAddr_417
	store %res_142 %varAddr_418
	store %varDef_378 %varAddr_419
	store %varDef_380 %varAddr_420
	br <14>

<35> cif_true
	%cnewVal_221 = inc %varDef_380
	%carrayBase_224 = add %tmp_294 8
	%coffset_226 = mul %cnewVal_221 8
	%celementAddr_227 = add %carrayBase_224 %coffset_226
	store %res_134 %celementAddr_227
	%carrayBase_230 = add %tmp_288 8
	%celementAddr_233 = add %carrayBase_230 %coffset_226
	store %res_142 %celementAddr_233
	%cres_235 = add %elementVal_124 1
	%carrayBase_237 = add %carrayPtr_168 8
	%coffset_239 = mul %res_134 8
	%celementAddr_240 = add %carrayBase_237 %coffset_239
	%carrayPtr_241 = load %celementAddr_240
	%carrayBase_242 = add %carrayPtr_241 8
	%coffset_244 = mul %res_142 8
	%celementAddr_245 = add %carrayBase_242 %coffset_244
	store %cres_235 %celementAddr_245
	%cres_248 = eq %res_134 %res_2
	br %cres_248 <36> <56>

<56> parallel_copy
	store %varDef_391 %varAddr_416
	store %varDef_391 %varAddr_417
	store %res_142 %varAddr_418
	store %varDef_378 %varAddr_419
	store %cnewVal_221 %varAddr_420
	br <14>

<36> clhs_true
	%cres_251 = eq %res_142 %res_2
	br %cres_251 <37> <54>

<54> parallel_copy
	store %varDef_391 %varAddr_416
	store %varDef_391 %varAddr_417
	store %res_142 %varAddr_418
	store %varDef_378 %varAddr_419
	store %cnewVal_221 %varAddr_420
	br <14>

<37> cif_true
	store %varDef_391 %varAddr_416
	store %varDef_391 %varAddr_417
	store %res_142 %varAddr_418
	store 1 %varAddr_419
	store %cnewVal_221 %varAddr_420
	br <14>

<14> for_step
	%varDef_395 = load %varAddr_416
	%varDef_396 = load %varAddr_417
	%varDef_397 = load %varAddr_418
	%varDef_398 = load %varAddr_419
	%varDef_399 = load %varAddr_420
	%newVal_145 = inc %varDef_379
	store %res_142 %varAddr_441
	store %res_134 %varAddr_442
	store %varDef_386 %varAddr_443
	store %varDef_386 %varAddr_444
	store %res_134 %varAddr_445
	store %varDef_395 %varAddr_446
	store %varDef_396 %varAddr_447
	store %varDef_397 %varAddr_448
	store %varDef_398 %varAddr_449
	store %newVal_145 %varAddr_450
	store %varDef_399 %varAddr_451
	br <12>

<15> for_end
	%res_147 = eq %varDef_378 1
	br %res_147 <58> <17>

<58> parallel_copy
	store %varDef_378 %varAddr_452
	store %varDef_379 %varAddr_453
	store %elementVal_113 %varAddr_454
	store %elementVal_107 %varAddr_455
	store %varDef_380 %varAddr_456
	store %elementVal_124 %varAddr_457
	br <11>

<17> if_merge
	%newVal_150 = inc %varDef_360
	store %varDef_370 %varAddr_423
	store %varDef_371 %varAddr_424
	store %varDef_372 %varAddr_425
	store %varDef_373 %varAddr_426
	store %varDef_374 %varAddr_427
	store %varDef_375 %varAddr_428
	store %varDef_376 %varAddr_429
	store %varDef_377 %varAddr_430
	store %varDef_378 %varAddr_431
	store %newVal_150 %varAddr_432
	store %varDef_379 %varAddr_433
	store %elementVal_113 %varAddr_434
	store %elementVal_107 %varAddr_435
	store %varDef_380 %varAddr_436
	store %elementVal_124 %varAddr_437
	br <9>

<11> while_end
	%varDef_410 = load %varAddr_452
	%varDef_411 = load %varAddr_453
	%varDef_412 = load %varAddr_454
	%varDef_413 = load %varAddr_455
	%varDef_414 = load %varAddr_456
	%varDef_415 = load %varAddr_457
	%res_152 = eq %varDef_410 1
	br %res_152 <18> <19>

<18> if_true
	%arrayBase_154 = add %carrayPtr_168 8
	%offset_156 = mul %res_2 8
	%elementAddr_157 = add %arrayBase_154 %offset_156
	%arrayPtr_158 = load %elementAddr_157
	%arrayBase_159 = add %arrayPtr_158 8
	%elementAddr_162 = add %arrayBase_159 %offset_156
	%elementVal_163 = load %elementAddr_162
	__printlnInt ( %elementVal_163 )
	br <20>

<19> if_false
	print ( $str_0 )
	br <20>

<20> if_merge
	store %res_2 @targety
	store %varDef_410 @ok
	store %varDef_360 @head
	store %varDef_411 @j
	store %varDef_346 @i
	store %varDef_412 @y
	store %varDef_413 @x
	store %varDef_414 @tail
	store %res_2 @targetx
	store %res_0 @N
	store %carrayPtr_168 @step
	store %varDef_415 @now
	ret 0

}

