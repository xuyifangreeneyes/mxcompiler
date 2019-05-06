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
	%arrayBase_3 = add %arrayPtr_0 8
	%arrayPtr_4 = malloc 96008
	store 12000 %arrayPtr_4
	%arrayBase_7 = add %arrayPtr_4 8
	%arrayPtr_8 = malloc 72
	store 8 %arrayPtr_8
	%arrayBase_11 = add %arrayPtr_8 8
	%arrayPtr_12 = malloc 80
	store 9 %arrayPtr_12
	%arrayBase_15 = add %arrayPtr_12 8
	store %arrayBase_11 @dx
	store %arrayBase_3 @xlist
	store %arrayBase_7 @ylist
	store %arrayBase_15 @dy
	ret 

}

define origin ( %argVal_0 ) {
<0> entry
	%varAddr_69 = alloca 4
	%varAddr_68 = alloca 4
	%varAddr_67 = alloca 4
	%tmp_45 = load @j
	%memberLength_4 = mul %argVal_0 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store %argVal_0 %arrayPtr_3
	%arrayBase_6 = add %arrayPtr_3 8
	store 0 %varAddr_67
	store %tmp_45 %varAddr_68
	br <1>

<1> for_cond
	%varDef_61 = load %varAddr_67
	%varDef_62 = load %varAddr_68
	%res_9 = lt %varDef_61 %argVal_0
	br %res_9 <2> <4>

<2> for_body
	%memberLength_12 = mul %argVal_0 8
	%arrayLength_13 = add %memberLength_12 8
	%arrayPtr_11 = malloc %arrayLength_13
	store %argVal_0 %arrayPtr_11
	%arrayBase_14 = add %arrayPtr_11 8
	%offset_17 = mul %varDef_61 8
	%elementAddr_18 = add %arrayBase_6 %offset_17
	store %arrayBase_14 %elementAddr_18
	store 0 %varAddr_69
	br <5>

<5> for_cond
	%varDef_64 = load %varAddr_69
	%res_21 = lt %varDef_64 %argVal_0
	br %res_21 <6> <3>

<6> for_body
	%offset_24 = mul %varDef_61 8
	%elementAddr_25 = add %arrayBase_6 %offset_24
	%arrayBase_26 = load %elementAddr_25
	%offset_28 = mul %varDef_64 8
	%elementAddr_29 = add %arrayBase_26 %offset_28
	store 0 %elementAddr_29
	%newVal_32 = inc %varDef_64
	store %newVal_32 %varAddr_69
	br <5>

<3> for_step
	%newVal_35 = inc %varDef_61
	store %newVal_35 %varAddr_67
	store %varDef_64 %varAddr_68
	br <1>

<4> for_end
	store 0 @tail
	store %varDef_61 @i
	store 0 @head
	store %arrayBase_6 @step
	store %varDef_62 @j
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
	%varAddr_117 = alloca 4
	%varAddr_116 = alloca 4
	%varAddr_115 = alloca 4
	%varAddr_114 = alloca 4
	%tmp_83 = load @step
	%tmp_82 = load @targetx
	%tmp_81 = load @ylist
	%tmp_80 = load @xlist
	%tmp_79 = load @ok
	%tmp_78 = load @targety
	%tmp_77 = load @tail
	%tmp_76 = load @N
	%tmp_75 = load @now
	br <9>

<9> centry
	%cres_53 = lt %argVal_0 %tmp_76
	br %cres_53 <10> <12>

<10> clhs_true
	%cres_55 = ge %argVal_0 0
	br %cres_55 <11> <12>

<11> cbool_true
	store 1 %varAddr_117
	br <13>

<12> cbool_false
	store 0 %varAddr_117
	br <13>

<13> cbool_merge
	%varDef_100 = load %varAddr_117
	br %varDef_100 <4> <23>

<23> parallel_copy
	store %tmp_77 %varAddr_114
	store %tmp_79 %varAddr_115
	br <2>

<4> lhs_true
	%cres_62 = lt %argVal_2 %tmp_76
	br %cres_62 <16> <18>

<16> clhs_true
	%cres_64 = ge %argVal_2 0
	br %cres_64 <17> <18>

<17> cbool_true
	store 1 %varAddr_116
	br <19>

<18> cbool_false
	store 0 %varAddr_116
	br <19>

<19> cbool_merge
	%varDef_105 = load %varAddr_116
	br %varDef_105 <3> <22>

<22> parallel_copy
	store %tmp_77 %varAddr_114
	store %tmp_79 %varAddr_115
	br <2>

<3> lhs_true
	%offset_10 = mul %argVal_0 8
	%elementAddr_11 = add %tmp_83 %offset_10
	%arrayBase_12 = load %elementAddr_11
	%offset_14 = mul %argVal_2 8
	%elementAddr_15 = add %arrayBase_12 %offset_14
	%elementVal_16 = load %elementAddr_15
	%res_18 = eq %elementVal_16 -1
	br %res_18 <1> <24>

<24> parallel_copy
	store %tmp_77 %varAddr_114
	store %tmp_79 %varAddr_115
	br <2>

<1> if_true
	%newVal_21 = inc %tmp_77
	%offset_25 = mul %newVal_21 8
	%elementAddr_26 = add %tmp_80 %offset_25
	store %argVal_0 %elementAddr_26
	%elementAddr_31 = add %tmp_81 %offset_25
	store %argVal_2 %elementAddr_31
	%res_33 = add %tmp_75 1
	%offset_36 = mul %argVal_0 8
	%elementAddr_37 = add %tmp_83 %offset_36
	%arrayBase_38 = load %elementAddr_37
	%offset_40 = mul %argVal_2 8
	%elementAddr_41 = add %arrayBase_38 %offset_40
	store %res_33 %elementAddr_41
	%res_44 = eq %argVal_0 %tmp_82
	br %res_44 <7> <20>

<20> parallel_copy
	store %newVal_21 %varAddr_114
	store %tmp_79 %varAddr_115
	br <2>

<7> lhs_true
	%res_47 = eq %argVal_2 %tmp_78
	br %res_47 <5> <21>

<21> parallel_copy
	store %newVal_21 %varAddr_114
	store %tmp_79 %varAddr_115
	br <2>

<5> if_true
	store %newVal_21 %varAddr_114
	store 1 %varAddr_115
	br <2>

<2> if_merge
	%varDef_112 = load %varAddr_114
	%varDef_113 = load %varAddr_115
	store %varDef_112 @tail
	store %varDef_113 @ok
	ret 

}

define main ( ) {
<0> entry
	%varAddr_419 = alloca 4
	%varAddr_418 = alloca 4
	%varAddr_417 = alloca 4
	%varAddr_416 = alloca 4
	%varAddr_415 = alloca 4
	%varAddr_414 = alloca 4
	%varAddr_413 = alloca 4
	%varAddr_412 = alloca 4
	%varAddr_411 = alloca 4
	%varAddr_410 = alloca 4
	%varAddr_409 = alloca 4
	%varAddr_408 = alloca 4
	%varAddr_407 = alloca 4
	%varAddr_406 = alloca 4
	%varAddr_405 = alloca 4
	%varAddr_404 = alloca 4
	%varAddr_403 = alloca 4
	%varAddr_402 = alloca 4
	%varAddr_401 = alloca 4
	%varAddr_400 = alloca 4
	%varAddr_399 = alloca 4
	%varAddr_398 = alloca 4
	%varAddr_397 = alloca 4
	%varAddr_396 = alloca 4
	%varAddr_395 = alloca 4
	%varAddr_394 = alloca 4
	%varAddr_393 = alloca 4
	%varAddr_392 = alloca 4
	%varAddr_391 = alloca 4
	%varAddr_390 = alloca 4
	%varAddr_389 = alloca 4
	%varAddr_388 = alloca 4
	%varAddr_387 = alloca 4
	%varAddr_386 = alloca 4
	%varAddr_385 = alloca 4
	%varAddr_384 = alloca 4
	%varAddr_383 = alloca 4
	%tmp_268 = load @dy
	%tmp_267 = load @y
	%tmp_266 = load @x
	%tmp_262 = load @now
	%tmp_261 = load @j
	%tmp_258 = load @ylist
	%tmp_257 = load @xlist
	%tmp_256 = load @ok
	%tmp_255 = load @dx
	br <22>

<22> centry
	%carrayPtr_142 = malloc 856
	store 106 %carrayPtr_142
	%carrayBase_143 = add %carrayPtr_142 8
	store %tmp_261 %varAddr_411
	store 0 %varAddr_412
	br <23>

<23> cfor_cond
	%varDef_302 = load %varAddr_411
	%varDef_303 = load %varAddr_412
	%cres_146 = lt %varDef_303 106
	br %cres_146 <24> <21>

<24> cfor_body
	%carrayPtr_150 = malloc 856
	store 106 %carrayPtr_150
	%carrayBase_151 = add %carrayPtr_150 8
	%coffset_154 = mul %varDef_303 8
	%celementAddr_155 = add %carrayBase_143 %coffset_154
	store %carrayBase_151 %celementAddr_155
	store 0 %varAddr_395
	br <25>

<25> cfor_cond
	%varDef_305 = load %varAddr_395
	%cres_158 = lt %varDef_305 106
	br %cres_158 <26> <29>

<26> cfor_body
	%coffset_161 = mul %varDef_303 8
	%celementAddr_162 = add %carrayBase_143 %coffset_161
	%carrayBase_163 = load %celementAddr_162
	%coffset_165 = mul %varDef_305 8
	%celementAddr_166 = add %carrayBase_163 %coffset_165
	store 0 %celementAddr_166
	%cnewVal_169 = inc %varDef_305
	store %cnewVal_169 %varAddr_395
	br <25>

<29> cfor_step
	%cnewVal_172 = inc %varDef_303
	store %varDef_305 %varAddr_411
	store %cnewVal_172 %varAddr_412
	br <23>

<21> after_call
	%res_0 = getInt ( )
	%res_2 = sub %res_0 1
	store %varDef_302 %varAddr_401
	store 0 %varAddr_402
	br <1>

<1> for_cond
	%varDef_312 = load %varAddr_401
	%varDef_313 = load %varAddr_402
	%res_6 = lt %varDef_313 %res_0
	br %res_6 <2> <4>

<2> for_body
	store 0 %varAddr_394
	br <5>

<5> for_cond
	%varDef_315 = load %varAddr_394
	%res_9 = lt %varDef_315 %res_0
	br %res_9 <6> <3>

<6> for_body
	%offset_13 = mul %varDef_313 8
	%elementAddr_14 = add %carrayBase_143 %offset_13
	%arrayBase_15 = load %elementAddr_14
	%offset_17 = mul %varDef_315 8
	%elementAddr_18 = add %arrayBase_15 %offset_17
	store -1 %elementAddr_18
	%newVal_21 = inc %varDef_315
	store %newVal_21 %varAddr_394
	br <5>

<3> for_step
	%newVal_24 = inc %varDef_313
	store %varDef_315 %varAddr_401
	store %newVal_24 %varAddr_402
	br <1>

<4> for_end
	%elementAddr_28 = add %tmp_255 0
	store -2 %elementAddr_28
	%elementAddr_32 = add %tmp_268 0
	store -1 %elementAddr_32
	%elementAddr_36 = add %tmp_255 8
	store -2 %elementAddr_36
	%elementAddr_39 = add %tmp_268 8
	store 1 %elementAddr_39
	%elementAddr_42 = add %tmp_255 16
	store 2 %elementAddr_42
	%elementAddr_46 = add %tmp_268 16
	store -1 %elementAddr_46
	%elementAddr_49 = add %tmp_255 24
	store 2 %elementAddr_49
	%elementAddr_52 = add %tmp_268 24
	store 1 %elementAddr_52
	%elementAddr_56 = add %tmp_255 32
	store -1 %elementAddr_56
	%elementAddr_60 = add %tmp_268 32
	store -2 %elementAddr_60
	%elementAddr_64 = add %tmp_255 40
	store -1 %elementAddr_64
	%elementAddr_67 = add %tmp_268 40
	store 2 %elementAddr_67
	%elementAddr_70 = add %tmp_255 48
	store 1 %elementAddr_70
	%elementAddr_74 = add %tmp_268 48
	store -2 %elementAddr_74
	%elementAddr_77 = add %tmp_255 56
	store 1 %elementAddr_77
	%elementAddr_80 = add %tmp_268 56
	store 2 %elementAddr_80
	store 0 %varAddr_404
	store %tmp_256 %varAddr_405
	store 0 %varAddr_406
	store %varDef_312 %varAddr_407
	store %tmp_262 %varAddr_408
	store %tmp_266 %varAddr_409
	store %tmp_267 %varAddr_410
	br <9>

<9> while_cond
	%varDef_326 = load %varAddr_404
	%varDef_327 = load %varAddr_405
	%varDef_328 = load %varAddr_406
	%varDef_329 = load %varAddr_407
	%varDef_330 = load %varAddr_408
	%varDef_331 = load %varAddr_409
	%varDef_332 = load %varAddr_410
	%res_83 = le %varDef_328 %varDef_326
	br %res_83 <10> <57>

<57> parallel_copy
	store %varDef_326 %varAddr_414
	store %varDef_327 %varAddr_415
	store %varDef_329 %varAddr_416
	store %varDef_330 %varAddr_417
	store %varDef_331 %varAddr_418
	store %varDef_332 %varAddr_419
	br <11>

<10> while_body
	%offset_86 = mul %varDef_328 8
	%elementAddr_87 = add %tmp_257 %offset_86
	%elementVal_88 = load %elementAddr_87
	%elementAddr_92 = add %tmp_258 %offset_86
	%elementVal_93 = load %elementAddr_92
	%offset_96 = mul %elementVal_88 8
	%elementAddr_97 = add %carrayBase_143 %offset_96
	%arrayBase_98 = load %elementAddr_97
	%offset_100 = mul %elementVal_93 8
	%elementAddr_101 = add %arrayBase_98 %offset_100
	%elementVal_102 = load %elementAddr_101
	store %varDef_337 %varAddr_383
	store %varDef_338 %varAddr_384
	store %varDef_339 %varAddr_385
	store %varDef_340 %varAddr_386
	store %varDef_341 %varAddr_387
	store %varDef_342 %varAddr_388
	store %varDef_343 %varAddr_389
	store %varDef_344 %varAddr_390
	store %varDef_326 %varAddr_391
	store %varDef_327 %varAddr_392
	store 0 %varAddr_393
	br <12>

<12> for_cond
	%varDef_337 = load %varAddr_383
	%varDef_338 = load %varAddr_384
	%varDef_339 = load %varAddr_385
	%varDef_340 = load %varAddr_386
	%varDef_341 = load %varAddr_387
	%varDef_342 = load %varAddr_388
	%varDef_343 = load %varAddr_389
	%varDef_344 = load %varAddr_390
	%varDef_345 = load %varAddr_391
	%varDef_346 = load %varAddr_392
	%varDef_347 = load %varAddr_393
	%res_104 = lt %varDef_347 8
	br %res_104 <13> <15>

<13> for_body
	%offset_108 = mul %varDef_347 8
	%elementAddr_109 = add %tmp_255 %offset_108
	%elementVal_110 = load %elementAddr_109
	%res_111 = add %elementVal_88 %elementVal_110
	%elementAddr_116 = add %tmp_268 %offset_108
	%elementVal_117 = load %elementAddr_116
	%res_118 = add %elementVal_93 %elementVal_117
	%cres_224 = lt %res_111 %res_0
	br %cres_224 <42> <44>

<42> clhs_true
	%cres_226 = ge %res_111 0
	br %cres_226 <43> <44>

<43> cbool_true
	store 1 %varAddr_403
	br <45>

<44> cbool_false
	store 0 %varAddr_403
	br <45>

<45> cbool_merge
	%varDef_353 = load %varAddr_403
	br %varDef_353 <33> <52>

<52> parallel_copy
	store %varDef_342 %varAddr_396
	store %varDef_343 %varAddr_397
	store %varDef_344 %varAddr_398
	store %varDef_345 %varAddr_399
	store %varDef_346 %varAddr_400
	br <14>

<33> clhs_true
	%cres_233 = lt %res_118 %res_0
	br %cres_233 <48> <50>

<48> clhs_true
	%cres_235 = ge %res_118 0
	br %cres_235 <49> <50>

<49> cbool_true
	store 1 %varAddr_413
	br <51>

<50> cbool_false
	store 0 %varAddr_413
	br <51>

<51> cbool_merge
	%varDef_358 = load %varAddr_413
	br %varDef_358 <34> <53>

<53> parallel_copy
	store %varDef_358 %varAddr_396
	store %varDef_358 %varAddr_397
	store %res_118 %varAddr_398
	store %varDef_345 %varAddr_399
	store %varDef_346 %varAddr_400
	br <14>

<34> clhs_true
	%coffset_181 = mul %res_111 8
	%celementAddr_182 = add %carrayBase_143 %coffset_181
	%carrayBase_183 = load %celementAddr_182
	%coffset_185 = mul %res_118 8
	%celementAddr_186 = add %carrayBase_183 %coffset_185
	%celementVal_187 = load %celementAddr_186
	%cres_189 = eq %celementVal_187 -1
	br %cres_189 <35> <54>

<54> parallel_copy
	store %varDef_358 %varAddr_396
	store %varDef_358 %varAddr_397
	store %res_118 %varAddr_398
	store %varDef_345 %varAddr_399
	store %varDef_346 %varAddr_400
	br <14>

<35> cif_true
	%cnewVal_192 = inc %varDef_345
	%coffset_196 = mul %cnewVal_192 8
	%celementAddr_197 = add %tmp_257 %coffset_196
	store %res_111 %celementAddr_197
	%celementAddr_202 = add %tmp_258 %coffset_196
	store %res_118 %celementAddr_202
	%cres_204 = add %elementVal_102 1
	%coffset_207 = mul %res_111 8
	%celementAddr_208 = add %carrayBase_143 %coffset_207
	%carrayBase_209 = load %celementAddr_208
	%coffset_211 = mul %res_118 8
	%celementAddr_212 = add %carrayBase_209 %coffset_211
	store %cres_204 %celementAddr_212
	%cres_215 = eq %res_111 %res_2
	br %cres_215 <36> <56>

<56> parallel_copy
	store %varDef_358 %varAddr_396
	store %varDef_358 %varAddr_397
	store %res_118 %varAddr_398
	store %cnewVal_192 %varAddr_399
	store %varDef_346 %varAddr_400
	br <14>

<36> clhs_true
	%cres_218 = eq %res_118 %res_2
	br %cres_218 <37> <55>

<55> parallel_copy
	store %varDef_358 %varAddr_396
	store %varDef_358 %varAddr_397
	store %res_118 %varAddr_398
	store %cnewVal_192 %varAddr_399
	store %varDef_346 %varAddr_400
	br <14>

<37> cif_true
	store %varDef_358 %varAddr_396
	store %varDef_358 %varAddr_397
	store %res_118 %varAddr_398
	store %cnewVal_192 %varAddr_399
	store 1 %varAddr_400
	br <14>

<14> for_step
	%varDef_362 = load %varAddr_396
	%varDef_363 = load %varAddr_397
	%varDef_364 = load %varAddr_398
	%varDef_365 = load %varAddr_399
	%varDef_366 = load %varAddr_400
	%newVal_121 = inc %varDef_347
	store %res_118 %varAddr_383
	store %res_111 %varAddr_384
	store %varDef_353 %varAddr_385
	store %varDef_353 %varAddr_386
	store %res_111 %varAddr_387
	store %varDef_362 %varAddr_388
	store %varDef_363 %varAddr_389
	store %varDef_364 %varAddr_390
	store %varDef_365 %varAddr_391
	store %varDef_366 %varAddr_392
	store %newVal_121 %varAddr_393
	br <12>

<15> for_end
	%res_123 = eq %varDef_346 1
	br %res_123 <58> <17>

<58> parallel_copy
	store %varDef_345 %varAddr_414
	store %varDef_346 %varAddr_415
	store %varDef_347 %varAddr_416
	store %elementVal_102 %varAddr_417
	store %elementVal_88 %varAddr_418
	store %elementVal_93 %varAddr_419
	br <11>

<17> if_merge
	%newVal_126 = inc %varDef_328
	store %varDef_345 %varAddr_404
	store %varDef_346 %varAddr_405
	store %newVal_126 %varAddr_406
	store %varDef_347 %varAddr_407
	store %elementVal_102 %varAddr_408
	store %elementVal_88 %varAddr_409
	store %elementVal_93 %varAddr_410
	br <9>

<11> while_end
	%varDef_377 = load %varAddr_414
	%varDef_378 = load %varAddr_415
	%varDef_379 = load %varAddr_416
	%varDef_380 = load %varAddr_417
	%varDef_381 = load %varAddr_418
	%varDef_382 = load %varAddr_419
	%res_128 = eq %varDef_378 1
	br %res_128 <18> <19>

<18> if_true
	%offset_131 = mul %res_2 8
	%elementAddr_132 = add %carrayBase_143 %offset_131
	%arrayBase_133 = load %elementAddr_132
	%elementAddr_136 = add %arrayBase_133 %offset_131
	%elementVal_137 = load %elementAddr_136
	__printlnInt ( %elementVal_137 )
	br <20>

<19> if_false
	print ( $str_0 )
	br <20>

<20> if_merge
	store %varDef_377 @tail
	store %res_2 @targety
	store %varDef_378 @ok
	store %varDef_328 @head
	store %carrayBase_143 @step
	store %varDef_379 @j
	store %varDef_380 @now
	store %res_0 @N
	store %res_2 @targetx
	store %varDef_313 @i
	store %varDef_381 @x
	store %varDef_382 @y
	ret 0

}

