@n

@h

@now

@a

@Q

@R

@seed

$str_0 " "

$str_1 ""

$str_2 "Sorry, the number n must be a number s.t. there exists i satisfying n=1+2+...+i"

$str_3 "Let's start!"

$str_4 "Total: "

$str_5 " step(s)"

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
	%tmp_1 = load @seed
	mov %varDef_3 %tmp_1
	mov %varDef_4 1
	mov %tmp_2 %varDef_4
	store %tmp_2 @seed
	ret 

}

define random ( ) {
<0> entry
	%tmp_24 = load @R
	mov %varDef_26 %tmp_24
	%tmp_23 = load @seed
	mov %varDef_27 %tmp_23
	%tmp_22 = load @Q
	mov %varDef_28 %tmp_22
	mov %idVal_1 48271
	mov %idVal_2 %varDef_27
	mov %idVal_3 %varDef_28
	%res_4 = mod %idVal_2 %idVal_3
	%res_5 = mul %idVal_1 %res_4
	mov %idVal_6 %varDef_26
	mov %idVal_7 %varDef_27
	mov %idVal_8 %varDef_28
	%res_9 = div %idVal_7 %idVal_8
	%res_10 = mul %idVal_6 %res_9
	%res_11 = sub %res_5 %res_10
	mov %varDef_29 %res_11
	mov %idVal_12 %varDef_29
	%res_13 = ge %idVal_12 0
	br %res_13 <1> <2>

<1> if_true
	mov %idVal_14 %varDef_29
	mov %varDef_30 %idVal_14
	br <3>

<2> if_false
	mov %idVal_15 %varDef_29
	mov %idVal_16 2147483647
	%res_17 = add %idVal_15 %idVal_16
	mov %varDef_31 %res_17
	br <3>

<3> if_merge
	%varDef_32 = phi <1> %varDef_30 <2> %varDef_31
	mov %idVal_18 %varDef_32
	mov %tmp_25 %varDef_32
	store %tmp_25 @seed
	ret %idVal_18

}

define initialize ( %argVal_0 ) {
<0> entry
	%tmp_4 = load @seed
	mov %varDef_6 %tmp_4
	mov %varDef_7 %argVal_0
	mov %idVal_2 %varDef_7
	mov %varDef_8 %idVal_2
	mov %tmp_5 %varDef_8
	store %tmp_5 @seed
	ret 

}

define swap ( %argVal_0 %argVal_2 ) {
<0> entry
	%tmp_25 = load @a
	mov %varDef_26 %tmp_25
	mov %varDef_27 %argVal_0
	mov %varDef_28 %argVal_2
	mov %arrayBase_5 %varDef_26
	mov %idVal_6 %varDef_27
	%offset_7 = mul %idVal_6 8
	%elementAddr_8 = add %arrayBase_5 %offset_7
	%elementVal_9 = load %elementAddr_8
	mov %varDef_29 %elementVal_9
	mov %arrayBase_10 %varDef_26
	mov %idVal_11 %varDef_28
	%offset_12 = mul %idVal_11 8
	%elementAddr_13 = add %arrayBase_10 %offset_12
	%elementVal_14 = load %elementAddr_13
	mov %arrayBase_15 %varDef_26
	mov %idVal_16 %varDef_27
	%offset_17 = mul %idVal_16 8
	%elementAddr_18 = add %arrayBase_15 %offset_17
	store %elementVal_14 %elementAddr_18
	mov %idVal_19 %varDef_29
	mov %arrayBase_20 %varDef_26
	mov %idVal_21 %varDef_28
	%offset_22 = mul %idVal_21 8
	%elementAddr_23 = add %arrayBase_20 %offset_22
	store %idVal_19 %elementAddr_23
	ret 

}

define pd ( %argVal_0 ) {
<0> entry
	%tmp_16 = load @h
	mov %varDef_19 %tmp_16
	mov %varDef_20 %argVal_0
	br <1>

<1> for_cond
	%varDef_21 = phi <0> %varDef_19 <3> %varDef_22
	mov %idVal_2 %varDef_21
	mov %idVal_3 %varDef_20
	%res_4 = le %idVal_2 %idVal_3
	br %res_4 <2> <4>

<2> for_body
	mov %idVal_5 %varDef_20
	mov %idVal_6 %varDef_21
	mov %idVal_7 %varDef_21
	%res_8 = add %idVal_7 1
	%res_9 = mul %idVal_6 %res_8
	%res_10 = div %res_9 2
	%res_11 = eq %idVal_5 %res_10
	br %res_11 <5> <3>

<5> if_true
	mov %tmp_17 %varDef_21
	store %tmp_17 @h
	ret 1

<3> for_step
	mov %idVal_12 %varDef_21
	mov %oldVal_13 %varDef_21
	%newVal_14 = inc %oldVal_13
	mov %varDef_22 %newVal_14
	br <1>

<4> for_end
	mov %tmp_18 %varDef_21
	store %tmp_18 @h
	ret 0

}

define show ( ) {
<0> entry
	%tmp_15 = load @now
	mov %varDef_16 %tmp_15
	%tmp_14 = load @a
	mov %varDef_17 %tmp_14
	mov %varDef_18 0
	br <1>

<1> for_cond
	%varDef_19 = phi <0> %varDef_18 <2> %varDef_20
	mov %idVal_1 %varDef_19
	mov %idVal_2 %varDef_16
	%res_3 = lt %idVal_1 %idVal_2
	br %res_3 <2> <4>

<2> for_body
	mov %arrayBase_4 %varDef_17
	mov %idVal_5 %varDef_19
	%offset_6 = mul %idVal_5 8
	%elementAddr_7 = add %arrayBase_4 %offset_6
	%elementVal_8 = load %elementAddr_7
	__printInt ( %elementVal_8 )
	print ( $str_0 )
	mov %idVal_9 %varDef_19
	mov %oldVal_10 %varDef_19
	%newVal_11 = inc %oldVal_10
	mov %varDef_20 %newVal_11
	br <1>

<4> for_end
	println ( $str_1 )
	ret 

}

define win ( ) {
<0> entry
	%tmp_90 = load @now
	mov %varDef_91 %tmp_90
	%tmp_89 = load @h
	mov %varDef_92 %tmp_89
	%tmp_88 = load @a
	mov %varDef_93 %tmp_88
	%memberLength_4 = mul 101 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store 101 %arrayPtr_3
	%arrayBase_6 = add %arrayPtr_3 8
	mov %varDef_94 %arrayBase_6
	mov %idVal_8 %varDef_91
	mov %idVal_9 %varDef_92
	%res_10 = neq %idVal_8 %idVal_9
	br %res_10 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	mov %varDef_95 0
	br <3>

<3> for_cond
	%varDef_96 = phi <2> %varDef_95 <4> %varDef_97
	mov %idVal_11 %varDef_96
	mov %idVal_12 %varDef_91
	%res_13 = lt %idVal_11 %idVal_12
	br %res_13 <4> <6>

<4> for_body
	mov %arrayBase_14 %varDef_93
	mov %idVal_15 %varDef_96
	%offset_16 = mul %idVal_15 8
	%elementAddr_17 = add %arrayBase_14 %offset_16
	%elementVal_18 = load %elementAddr_17
	mov %arrayBase_19 %varDef_94
	mov %idVal_20 %varDef_96
	%offset_21 = mul %idVal_20 8
	%elementAddr_22 = add %arrayBase_19 %offset_21
	store %elementVal_18 %elementAddr_22
	mov %idVal_23 %varDef_96
	mov %oldVal_24 %varDef_96
	%newVal_25 = inc %oldVal_24
	mov %varDef_97 %newVal_25
	br <3>

<6> for_end
	mov %varDef_98 0
	br <7>

<7> for_cond
	%varDef_99 = phi <6> %varDef_98 <9> %varDef_108
	%varDef_100 = phi <6> %varDef_96 <9> %varDef_103
	%varDef_101 = phi <6> 0 <9> %varDef_104
	mov %idVal_26 %varDef_99
	mov %idVal_27 %varDef_91
	%res_28 = sub %idVal_27 1
	%res_29 = lt %idVal_26 %res_28
	br %res_29 <8> <10>

<8> for_body
	mov %idVal_30 %varDef_99
	%res_31 = add %idVal_30 1
	mov %varDef_102 %res_31
	br <11>

<11> for_cond
	%varDef_103 = phi <8> %varDef_102 <13> %varDef_107
	%varDef_104 = phi <8> %varDef_101 <13> %varDef_106
	mov %idVal_32 %varDef_103
	mov %idVal_33 %varDef_91
	%res_34 = lt %idVal_32 %idVal_33
	br %res_34 <12> <9>

<12> for_body
	mov %arrayBase_35 %varDef_94
	mov %idVal_36 %varDef_99
	%offset_37 = mul %idVal_36 8
	%elementAddr_38 = add %arrayBase_35 %offset_37
	%elementVal_39 = load %elementAddr_38
	mov %arrayBase_40 %varDef_94
	mov %idVal_41 %varDef_103
	%offset_42 = mul %idVal_41 8
	%elementAddr_43 = add %arrayBase_40 %offset_42
	%elementVal_44 = load %elementAddr_43
	%res_45 = gt %elementVal_39 %elementVal_44
	br %res_45 <15> <13>

<15> if_true
	mov %arrayBase_46 %varDef_94
	mov %idVal_47 %varDef_99
	%offset_48 = mul %idVal_47 8
	%elementAddr_49 = add %arrayBase_46 %offset_48
	%elementVal_50 = load %elementAddr_49
	mov %varDef_105 %elementVal_50
	mov %arrayBase_51 %varDef_94
	mov %idVal_52 %varDef_103
	%offset_53 = mul %idVal_52 8
	%elementAddr_54 = add %arrayBase_51 %offset_53
	%elementVal_55 = load %elementAddr_54
	mov %arrayBase_56 %varDef_94
	mov %idVal_57 %varDef_99
	%offset_58 = mul %idVal_57 8
	%elementAddr_59 = add %arrayBase_56 %offset_58
	store %elementVal_55 %elementAddr_59
	mov %idVal_60 %varDef_105
	mov %arrayBase_61 %varDef_94
	mov %idVal_62 %varDef_103
	%offset_63 = mul %idVal_62 8
	%elementAddr_64 = add %arrayBase_61 %offset_63
	store %idVal_60 %elementAddr_64
	br <13>

<13> for_step
	%varDef_106 = phi <12> %varDef_104 <15> %varDef_105
	mov %idVal_65 %varDef_103
	mov %oldVal_66 %varDef_103
	%newVal_67 = inc %oldVal_66
	mov %varDef_107 %newVal_67
	br <11>

<9> for_step
	mov %idVal_68 %varDef_99
	mov %oldVal_69 %varDef_99
	%newVal_70 = inc %oldVal_69
	mov %varDef_108 %newVal_70
	br <7>

<10> for_end
	mov %varDef_109 0
	br <17>

<17> for_cond
	%varDef_110 = phi <10> %varDef_109 <19> %varDef_111
	mov %idVal_71 %varDef_110
	mov %idVal_72 %varDef_91
	%res_73 = lt %idVal_71 %idVal_72
	br %res_73 <18> <20>

<18> for_body
	mov %arrayBase_74 %varDef_94
	mov %idVal_75 %varDef_110
	%offset_76 = mul %idVal_75 8
	%elementAddr_77 = add %arrayBase_74 %offset_76
	%elementVal_78 = load %elementAddr_77
	mov %idVal_79 %varDef_110
	%res_80 = add %idVal_79 1
	%res_81 = neq %elementVal_78 %res_80
	br %res_81 <21> <19>

<21> if_true
	ret 0

<19> for_step
	mov %idVal_82 %varDef_110
	mov %oldVal_83 %varDef_110
	%newVal_84 = inc %oldVal_83
	mov %varDef_111 %newVal_84
	br <17>

<20> for_end
	ret 1

}

define merge ( ) {
<0> entry
	%tmp_68 = load @now
	mov %varDef_70 %tmp_68
	%tmp_67 = load @a
	mov %varDef_71 %tmp_67
	mov %varDef_72 0
	br <1>

<1> for_cond
	%varDef_73 = phi <0> %varDef_72 <3> %varDef_88
	%varDef_74 = phi <0> 0 <3> %varDef_84
	%varDef_75 = phi <0> 0 <3> %varDef_85
	%varDef_76 = phi <0> 0 <3> %varDef_86
	%varDef_77 = phi <0> 0 <3> %varDef_87
	mov %idVal_1 %varDef_73
	mov %idVal_2 %varDef_70
	%res_3 = lt %idVal_1 %idVal_2
	br %res_3 <2> <4>

<2> for_body
	mov %arrayBase_4 %varDef_71
	mov %idVal_5 %varDef_73
	%offset_6 = mul %idVal_5 8
	%elementAddr_7 = add %arrayBase_4 %offset_6
	%elementVal_8 = load %elementAddr_7
	%res_9 = eq %elementVal_8 0
	br %res_9 <5> <3>

<5> if_true
	mov %idVal_11 %varDef_73
	%res_12 = add %idVal_11 1
	mov %varDef_78 %res_12
	br <7>

<7> for_cond
	%varDef_79 = phi <5> %varDef_78 <9> %varDef_83
	mov %idVal_13 %varDef_79
	mov %idVal_14 %varDef_70
	%res_15 = lt %idVal_13 %idVal_14
	br %res_15 <8> <3>

<8> for_body
	mov %arrayBase_16 %varDef_71
	mov %idVal_17 %varDef_79
	%offset_18 = mul %idVal_17 8
	%elementAddr_19 = add %arrayBase_16 %offset_18
	%elementVal_20 = load %elementAddr_19
	%res_21 = neq %elementVal_20 0
	br %res_21 <11> <9>

<11> if_true
	mov %idVal_22 %varDef_73
	mov %idVal_23 %varDef_79
	mov %varDef_80 %idVal_22
	mov %varDef_81 %idVal_23
	mov %carrayBase_46 %varDef_71
	mov %cidVal_47 %varDef_80
	%coffset_48 = mul %cidVal_47 8
	%celementAddr_49 = add %carrayBase_46 %coffset_48
	%celementVal_50 = load %celementAddr_49
	mov %varDef_82 %celementVal_50
	mov %carrayBase_51 %varDef_71
	mov %cidVal_52 %varDef_81
	%coffset_53 = mul %cidVal_52 8
	%celementAddr_54 = add %carrayBase_51 %coffset_53
	%celementVal_55 = load %celementAddr_54
	mov %carrayBase_56 %varDef_71
	mov %cidVal_57 %varDef_80
	%coffset_58 = mul %cidVal_57 8
	%celementAddr_59 = add %carrayBase_56 %coffset_58
	store %celementVal_55 %celementAddr_59
	mov %cidVal_60 %varDef_82
	mov %carrayBase_61 %varDef_71
	mov %cidVal_62 %varDef_81
	%coffset_63 = mul %cidVal_62 8
	%celementAddr_64 = add %carrayBase_61 %coffset_63
	store %cidVal_60 %celementAddr_64
	br <3>

<9> for_step
	mov %idVal_24 %varDef_79
	mov %oldVal_25 %varDef_79
	%newVal_26 = inc %oldVal_25
	mov %varDef_83 %newVal_26
	br <7>

<3> for_step
	%varDef_84 = phi <2> %varDef_74 <7> %varDef_79 <11> %varDef_79
	%varDef_85 = phi <2> %varDef_75 <7> %varDef_75 <11> %varDef_82
	%varDef_86 = phi <2> %varDef_76 <7> %varDef_76 <11> %varDef_81
	%varDef_87 = phi <2> %varDef_77 <7> %varDef_77 <11> %varDef_80
	mov %idVal_27 %varDef_73
	mov %oldVal_28 %varDef_73
	%newVal_29 = inc %oldVal_28
	mov %varDef_88 %newVal_29
	br <1>

<4> for_end
	mov %varDef_89 0
	br <13>

<13> for_cond
	%varDef_90 = phi <4> %varDef_89 <15> %varDef_92
	mov %idVal_30 %varDef_90
	mov %idVal_31 %varDef_70
	%res_32 = lt %idVal_30 %idVal_31
	br %res_32 <14> <16>

<14> for_body
	mov %arrayBase_33 %varDef_71
	mov %idVal_34 %varDef_90
	%offset_35 = mul %idVal_34 8
	%elementAddr_36 = add %arrayBase_33 %offset_35
	%elementVal_37 = load %elementAddr_36
	%res_38 = eq %elementVal_37 0
	br %res_38 <17> <15>

<17> if_true
	mov %idVal_39 %varDef_90
	mov %varDef_91 %idVal_39
	br <16>

<15> for_step
	mov %idVal_40 %varDef_90
	mov %oldVal_41 %varDef_90
	%newVal_42 = inc %oldVal_41
	mov %varDef_92 %newVal_42
	br <13>

<16> for_end
	%varDef_93 = phi <13> %varDef_70 <17> %varDef_91
	mov %tmp_69 %varDef_93
	store %tmp_69 @now
	ret 

}

define move ( ) {
<0> entry
	%tmp_28 = load @now
	mov %varDef_30 %tmp_28
	%tmp_27 = load @a
	mov %varDef_31 %tmp_27
	mov %varDef_32 0
	br <1>

<1> for_cond
	%varDef_33 = phi <0> %varDef_32 <2> %varDef_34
	mov %idVal_1 %varDef_33
	mov %idVal_2 %varDef_30
	%res_3 = lt %idVal_1 %idVal_2
	br %res_3 <2> <4>

<2> for_body
	mov %arrayBase_4 %varDef_31
	mov %idVal_5 %varDef_33
	%offset_6 = mul %idVal_5 8
	%elementAddr_7 = add %arrayBase_4 %offset_6
	%elementVal_8 = load %elementAddr_7
	mov %arrayBase_9 %varDef_31
	mov %idVal_10 %varDef_33
	%offset_11 = mul %idVal_10 8
	%elementAddr_12 = add %arrayBase_9 %offset_11
	%oldVal_13 = load %elementAddr_12
	%newVal_14 = dec %oldVal_13
	store %newVal_14 %elementAddr_12
	mov %idVal_15 %varDef_33
	%res_16 = add %idVal_15 1
	mov %varDef_34 %res_16
	br <1>

<4> for_end
	mov %idVal_17 %varDef_30
	mov %arrayBase_18 %varDef_31
	mov %idVal_19 %varDef_30
	%offset_20 = mul %idVal_19 8
	%elementAddr_21 = add %arrayBase_18 %offset_20
	store %idVal_17 %elementAddr_21
	mov %idVal_22 %varDef_30
	mov %oldVal_23 %varDef_30
	%newVal_24 = inc %oldVal_23
	mov %varDef_35 %newVal_24
	mov %tmp_29 %varDef_35
	store %tmp_29 @now
	ret 

}

define main ( ) {
<0> entry
	%tmp_356 = load @R
	mov %varDef_374 %tmp_356
	%tmp_355 = load @now
	mov %varDef_375 %tmp_355
	%tmp_354 = load @h
	mov %varDef_376 %tmp_354
	%tmp_353 = load @seed
	mov %varDef_377 %tmp_353
	%tmp_352 = load @a
	mov %varDef_378 %tmp_352
	%tmp_351 = load @n
	mov %varDef_379 %tmp_351
	%tmp_350 = load @Q
	mov %varDef_380 %tmp_350
	mov %varDef_381 0
	%res_2 = getInt ( )
	mov %varDef_382 %res_2
	br <1>

<1> for_cond
	%varDef_383 = phi <0> %varDef_381 <16> %varDef_524
	%varDef_384 = phi <0> 0 <16> %varDef_444
	%varDef_385 = phi <0> 0 <16> %varDef_445
	%varDef_386 = phi <0> 0 <16> %varDef_490
	%varDef_387 = phi <0> 0 <16> %varDef_430
	%varDef_388 = phi <0> 0 <16> %varDef_425
	%varDef_389 = phi <0> 0 <16> %varDef_435
	%varDef_390 = phi <0> 0 <16> %varDef_431
	%varDef_391 = phi <0> 0 <16> %varDef_436
	%varDef_392 = phi <0> 0 <16> %varDef_442
	%varDef_393 = phi <0> 0 <16> %varDef_438
	%varDef_394 = phi <0> 0 <16> %varDef_446
	%varDef_395 = phi <0> 0 <16> %varDef_447
	%varDef_396 = phi <0> 0 <16> %varDef_448
	%varDef_397 = phi <0> 0 <16> %varDef_449
	%varDef_398 = phi <0> 0 <16> %varDef_467
	%varDef_399 = phi <0> 0 <16> %varDef_470
	%varDef_400 = phi <0> 0 <16> %varDef_487
	%varDef_401 = phi <0> 0 <16> %varDef_491
	%varDef_402 = phi <0> 0 <16> %varDef_492
	%varDef_403 = phi <0> 0 <16> %varDef_493
	%varDef_404 = phi <0> 0 <16> %varDef_472
	%varDef_405 = phi <0> 0 <16> %varDef_473
	%varDef_406 = phi <0> 0 <16> %varDef_474
	%varDef_407 = phi <0> 0 <16> %varDef_494
	%varDef_408 = phi <0> 0 <16> %varDef_495
	%varDef_409 = phi <0> 0 <16> %varDef_496
	%varDef_410 = phi <0> %varDef_380 <16> %varDef_423
	%varDef_411 = phi <0> %varDef_379 <16> %varDef_420
	%varDef_412 = phi <0> %varDef_378 <16> %varDef_422
	%varDef_413 = phi <0> %varDef_377 <16> %varDef_450
	%varDef_414 = phi <0> %varDef_376 <16> %varDef_426
	%varDef_415 = phi <0> %varDef_375 <16> %varDef_497
	%varDef_416 = phi <0> %varDef_374 <16> %varDef_424
	mov %idVal_3 %varDef_383
	mov %idVal_4 %varDef_382
	%res_5 = lt %idVal_3 %idVal_4
	br %res_5 <2> <4>

<2> for_body
	mov %varDef_417 0
	mov %varDef_418 0
	mov %varDef_419 0
	mov %varDef_420 5050
	mov %varDef_421 0
	%memberLength_10 = mul 200 8
	%arrayLength_11 = add %memberLength_10 8
	%arrayPtr_9 = malloc %arrayLength_11
	store 200 %arrayPtr_9
	%arrayBase_12 = add %arrayPtr_9 8
	mov %varDef_422 %arrayBase_12
	mov %idVal_13 2147483647
	mov %idVal_14 48271
	%res_15 = div %idVal_13 %idVal_14
	mov %varDef_423 %res_15
	mov %idVal_16 2147483647
	mov %idVal_17 48271
	%res_18 = mod %idVal_16 %idVal_17
	mov %varDef_424 %res_18
	mov %idVal_20 %varDef_420
	mov %varDef_425 %idVal_20
	br <19>

<19> cfor_cond
	%varDef_426 = phi <2> %varDef_421 <23> %varDef_428
	mov %cidVal_81 %varDef_426
	mov %cidVal_82 %varDef_425
	%cres_83 = le %cidVal_81 %cidVal_82
	br %cres_83 <20> <24>

<20> cfor_body
	mov %cidVal_84 %varDef_425
	mov %cidVal_85 %varDef_426
	mov %cidVal_86 %varDef_426
	%cres_87 = add %cidVal_86 1
	%cres_88 = mul %cidVal_85 %cres_87
	%cres_89 = div %cres_88 2
	%cres_90 = eq %cidVal_84 %cres_89
	br %cres_90 <21> <23>

<21> cif_true
	mov %varDef_427 1
	br <17>

<23> cfor_step
	mov %cidVal_91 %varDef_426
	mov %coldVal_92 %varDef_426
	%cnewVal_93 = inc %coldVal_92
	mov %varDef_428 %cnewVal_93
	br <19>

<24> cfor_end
	mov %varDef_429 0
	br <17>

<17> after_call
	%varDef_430 = phi <21> %varDef_427 <24> %varDef_429
	mov %res_19 %varDef_430
	br %res_19 <6> <5>

<5> if_true
	println ( $str_2 )
	mov %tmp_357 %varDef_423
	store %tmp_357 @Q
	mov %tmp_358 %varDef_420
	store %tmp_358 @n
	mov %tmp_359 %varDef_422
	store %tmp_359 @a
	mov %tmp_360 %varDef_413
	store %tmp_360 @seed
	mov %tmp_361 %varDef_426
	store %tmp_361 @h
	mov %tmp_362 %varDef_415
	store %tmp_362 @now
	mov %tmp_363 %varDef_424
	store %tmp_363 @R
	ret 1

<6> if_merge
	println ( $str_3 )
	mov %cidVal_96 48271
	mov %cidVal_97 %varDef_413
	mov %cidVal_98 %varDef_423
	%cres_99 = mod %cidVal_97 %cidVal_98
	%cres_100 = mul %cidVal_96 %cres_99
	mov %cidVal_101 %varDef_424
	mov %cidVal_102 %varDef_413
	mov %cidVal_103 %varDef_423
	%cres_104 = div %cidVal_102 %cidVal_103
	%cres_105 = mul %cidVal_101 %cres_104
	%cres_106 = sub %cres_100 %cres_105
	mov %varDef_431 %cres_106
	mov %cidVal_107 %varDef_431
	%cres_108 = ge %cidVal_107 0
	br %cres_108 <27> <28>

<27> cif_true
	mov %cidVal_109 %varDef_431
	mov %varDef_432 %cidVal_109
	br <29>

<28> cif_false
	mov %cidVal_110 %varDef_431
	mov %cidVal_111 2147483647
	%cres_112 = add %cidVal_110 %cidVal_111
	mov %varDef_433 %cres_112
	br <29>

<29> cif_merge
	%varDef_434 = phi <27> %varDef_432 <28> %varDef_433
	mov %cidVal_113 %varDef_434
	mov %varDef_435 %cidVal_113
	mov %res_21 %varDef_435
	mov %varDef_436 %res_21
	mov %cidVal_115 %varDef_436
	mov %varDef_437 %cidVal_115
	mov %cidVal_118 48271
	mov %cidVal_119 %varDef_437
	mov %cidVal_120 %varDef_423
	%cres_121 = mod %cidVal_119 %cidVal_120
	%cres_122 = mul %cidVal_118 %cres_121
	mov %cidVal_123 %varDef_424
	mov %cidVal_124 %varDef_437
	mov %cidVal_125 %varDef_423
	%cres_126 = div %cidVal_124 %cidVal_125
	%cres_127 = mul %cidVal_123 %cres_126
	%cres_128 = sub %cres_122 %cres_127
	mov %varDef_438 %cres_128
	mov %cidVal_129 %varDef_438
	%cres_130 = ge %cidVal_129 0
	br %cres_130 <34> <35>

<34> cif_true
	mov %cidVal_131 %varDef_438
	mov %varDef_439 %cidVal_131
	br <36>

<35> cif_false
	mov %cidVal_132 %varDef_438
	mov %cidVal_133 2147483647
	%cres_134 = add %cidVal_132 %cidVal_133
	mov %varDef_440 %cres_134
	br <36>

<36> cif_merge
	%varDef_441 = phi <34> %varDef_439 <35> %varDef_440
	mov %cidVal_135 %varDef_441
	mov %varDef_442 %cidVal_135
	mov %res_22 %varDef_442
	%res_23 = mod %res_22 10
	%res_24 = add %res_23 1
	mov %varDef_443 %res_24
	mov %idVal_25 %varDef_443
	__printlnInt ( %idVal_25 )
	br <7>

<7> for_cond
	%varDef_444 = phi <36> %varDef_417 <13> %varDef_465
	%varDef_445 = phi <36> %varDef_418 <13> %varDef_464
	%varDef_446 = phi <36> %varDef_394 <13> %varDef_455
	%varDef_447 = phi <36> %varDef_395 <13> %varDef_451
	%varDef_448 = phi <36> %varDef_396 <13> %varDef_456
	%varDef_449 = phi <36> %varDef_397 <13> %varDef_457
	%varDef_450 = phi <36> %varDef_441 <13> %varDef_458
	mov %idVal_26 %varDef_444
	mov %idVal_27 %varDef_443
	%res_28 = sub %idVal_27 1
	%res_29 = lt %idVal_26 %res_28
	br %res_29 <38> <10>

<38> centry
	mov %cidVal_138 48271
	mov %cidVal_139 %varDef_450
	mov %cidVal_140 %varDef_423
	%cres_141 = mod %cidVal_139 %cidVal_140
	%cres_142 = mul %cidVal_138 %cres_141
	mov %cidVal_143 %varDef_424
	mov %cidVal_144 %varDef_450
	mov %cidVal_145 %varDef_423
	%cres_146 = div %cidVal_144 %cidVal_145
	%cres_147 = mul %cidVal_143 %cres_146
	%cres_148 = sub %cres_142 %cres_147
	mov %varDef_451 %cres_148
	mov %cidVal_149 %varDef_451
	%cres_150 = ge %cidVal_149 0
	br %cres_150 <39> <40>

<39> cif_true
	mov %cidVal_151 %varDef_451
	mov %varDef_452 %cidVal_151
	br <41>

<40> cif_false
	mov %cidVal_152 %varDef_451
	mov %cidVal_153 2147483647
	%cres_154 = add %cidVal_152 %cidVal_153
	mov %varDef_453 %cres_154
	br <41>

<41> cif_merge
	%varDef_454 = phi <39> %varDef_452 <40> %varDef_453
	mov %cidVal_155 %varDef_454
	mov %varDef_455 %cidVal_155
	mov %res_30 %varDef_455
	%res_31 = mod %res_30 10
	%res_32 = add %res_31 1
	mov %arrayBase_33 %varDef_422
	mov %idVal_34 %varDef_444
	%offset_35 = mul %idVal_34 8
	%elementAddr_36 = add %arrayBase_33 %offset_35
	store %res_32 %elementAddr_36
	br <11>

<11> while_cond
	%varDef_456 = phi <41> %varDef_448 <46> %varDef_463
	%varDef_457 = phi <41> %varDef_449 <46> %varDef_459
	%varDef_458 = phi <41> %varDef_454 <46> %varDef_462
	mov %arrayBase_37 %varDef_422
	mov %idVal_38 %varDef_444
	%offset_39 = mul %idVal_38 8
	%elementAddr_40 = add %arrayBase_37 %offset_39
	%elementVal_41 = load %elementAddr_40
	mov %idVal_42 %varDef_445
	%res_43 = add %elementVal_41 %idVal_42
	mov %idVal_44 %varDef_420
	%res_45 = gt %res_43 %idVal_44
	br %res_45 <43> <13>

<43> centry
	mov %cidVal_158 48271
	mov %cidVal_159 %varDef_458
	mov %cidVal_160 %varDef_423
	%cres_161 = mod %cidVal_159 %cidVal_160
	%cres_162 = mul %cidVal_158 %cres_161
	mov %cidVal_163 %varDef_424
	mov %cidVal_164 %varDef_458
	mov %cidVal_165 %varDef_423
	%cres_166 = div %cidVal_164 %cidVal_165
	%cres_167 = mul %cidVal_163 %cres_166
	%cres_168 = sub %cres_162 %cres_167
	mov %varDef_459 %cres_168
	mov %cidVal_169 %varDef_459
	%cres_170 = ge %cidVal_169 0
	br %cres_170 <44> <45>

<44> cif_true
	mov %cidVal_171 %varDef_459
	mov %varDef_460 %cidVal_171
	br <46>

<45> cif_false
	mov %cidVal_172 %varDef_459
	mov %cidVal_173 2147483647
	%cres_174 = add %cidVal_172 %cidVal_173
	mov %varDef_461 %cres_174
	br <46>

<46> cif_merge
	%varDef_462 = phi <44> %varDef_460 <45> %varDef_461
	mov %cidVal_175 %varDef_462
	mov %varDef_463 %cidVal_175
	mov %res_46 %varDef_463
	%res_47 = mod %res_46 10
	%res_48 = add %res_47 1
	mov %arrayBase_49 %varDef_422
	mov %idVal_50 %varDef_444
	%offset_51 = mul %idVal_50 8
	%elementAddr_52 = add %arrayBase_49 %offset_51
	store %res_48 %elementAddr_52
	br <11>

<13> while_end
	mov %idVal_53 %varDef_445
	mov %arrayBase_54 %varDef_422
	mov %idVal_55 %varDef_444
	%offset_56 = mul %idVal_55 8
	%elementAddr_57 = add %arrayBase_54 %offset_56
	%elementVal_58 = load %elementAddr_57
	%res_59 = add %idVal_53 %elementVal_58
	mov %varDef_464 %res_59
	mov %idVal_60 %varDef_444
	mov %oldVal_61 %varDef_444
	%newVal_62 = inc %oldVal_61
	mov %varDef_465 %newVal_62
	br <7>

<10> for_end
	mov %idVal_63 %varDef_420
	mov %idVal_64 %varDef_445
	%res_65 = sub %idVal_63 %idVal_64
	mov %arrayBase_66 %varDef_422
	mov %idVal_67 %varDef_443
	%res_68 = sub %idVal_67 1
	%offset_69 = mul %res_68 8
	%elementAddr_70 = add %arrayBase_66 %offset_69
	store %res_65 %elementAddr_70
	mov %varDef_466 0
	br <49>

<49> cfor_cond
	%varDef_467 = phi <10> %varDef_466 <50> %varDef_468
	mov %cidVal_177 %varDef_467
	mov %cidVal_178 %varDef_443
	%cres_179 = lt %cidVal_177 %cidVal_178
	br %cres_179 <50> <52>

<50> cfor_body
	mov %carrayBase_180 %varDef_422
	mov %cidVal_181 %varDef_467
	%coffset_182 = mul %cidVal_181 8
	%celementAddr_183 = add %carrayBase_180 %coffset_182
	%celementVal_184 = load %celementAddr_183
	__printInt ( %celementVal_184 )
	print ( $str_0 )
	mov %cidVal_185 %varDef_467
	mov %coldVal_186 %varDef_467
	%cnewVal_187 = inc %coldVal_186
	mov %varDef_468 %cnewVal_187
	br <49>

<52> cfor_end
	println ( $str_1 )
	mov %varDef_469 0
	br <55>

<55> cfor_cond
	%varDef_470 = phi <52> %varDef_399 <65> %varDef_481
	%varDef_471 = phi <52> %varDef_469 <65> %varDef_485
	%varDef_472 = phi <52> %varDef_404 <65> %varDef_482
	%varDef_473 = phi <52> %varDef_405 <65> %varDef_483
	%varDef_474 = phi <52> %varDef_406 <65> %varDef_484
	mov %cidVal_190 %varDef_471
	mov %cidVal_191 %varDef_443
	%cres_192 = lt %cidVal_190 %cidVal_191
	br %cres_192 <56> <66>

<56> cfor_body
	mov %carrayBase_193 %varDef_422
	mov %cidVal_194 %varDef_471
	%coffset_195 = mul %cidVal_194 8
	%celementAddr_196 = add %carrayBase_193 %coffset_195
	%celementVal_197 = load %celementAddr_196
	%cres_198 = eq %celementVal_197 0
	br %cres_198 <57> <65>

<57> cif_true
	mov %cidVal_199 %varDef_471
	%cres_200 = add %cidVal_199 1
	mov %varDef_475 %cres_200
	br <58>

<58> cfor_cond
	%varDef_476 = phi <57> %varDef_475 <62> %varDef_480
	mov %cidVal_201 %varDef_476
	mov %cidVal_202 %varDef_443
	%cres_203 = lt %cidVal_201 %cidVal_202
	br %cres_203 <59> <65>

<59> cfor_body
	mov %carrayBase_204 %varDef_422
	mov %cidVal_205 %varDef_476
	%coffset_206 = mul %cidVal_205 8
	%celementAddr_207 = add %carrayBase_204 %coffset_206
	%celementVal_208 = load %celementAddr_207
	%cres_209 = neq %celementVal_208 0
	br %cres_209 <60> <62>

<60> cif_true
	mov %cidVal_210 %varDef_471
	mov %cidVal_211 %varDef_476
	mov %varDef_477 %cidVal_210
	mov %varDef_478 %cidVal_211
	mov %carrayBase_302 %varDef_422
	mov %cidVal_303 %varDef_477
	%coffset_304 = mul %cidVal_303 8
	%celementAddr_305 = add %carrayBase_302 %coffset_304
	%celementVal_306 = load %celementAddr_305
	mov %varDef_479 %celementVal_306
	mov %carrayBase_307 %varDef_422
	mov %cidVal_308 %varDef_478
	%coffset_309 = mul %cidVal_308 8
	%celementAddr_310 = add %carrayBase_307 %coffset_309
	%celementVal_311 = load %celementAddr_310
	mov %carrayBase_312 %varDef_422
	mov %cidVal_313 %varDef_477
	%coffset_314 = mul %cidVal_313 8
	%celementAddr_315 = add %carrayBase_312 %coffset_314
	store %celementVal_311 %celementAddr_315
	mov %cidVal_316 %varDef_479
	mov %carrayBase_317 %varDef_422
	mov %cidVal_318 %varDef_478
	%coffset_319 = mul %cidVal_318 8
	%celementAddr_320 = add %carrayBase_317 %coffset_319
	store %cidVal_316 %celementAddr_320
	br <65>

<62> cfor_step
	mov %cidVal_212 %varDef_476
	mov %coldVal_213 %varDef_476
	%cnewVal_214 = inc %coldVal_213
	mov %varDef_480 %cnewVal_214
	br <58>

<65> cfor_step
	%varDef_481 = phi <56> %varDef_470 <58> %varDef_476 <60> %varDef_476
	%varDef_482 = phi <56> %varDef_472 <58> %varDef_472 <60> %varDef_479
	%varDef_483 = phi <56> %varDef_473 <58> %varDef_473 <60> %varDef_478
	%varDef_484 = phi <56> %varDef_474 <58> %varDef_474 <60> %varDef_477
	mov %cidVal_215 %varDef_471
	mov %coldVal_216 %varDef_471
	%cnewVal_217 = inc %coldVal_216
	mov %varDef_485 %cnewVal_217
	br <55>

<66> cfor_end
	mov %varDef_486 0
	br <67>

<67> cfor_cond
	%varDef_487 = phi <66> %varDef_486 <71> %varDef_489
	mov %cidVal_218 %varDef_487
	mov %cidVal_219 %varDef_443
	%cres_220 = lt %cidVal_218 %cidVal_219
	br %cres_220 <68> <14>

<68> cfor_body
	mov %carrayBase_221 %varDef_422
	mov %cidVal_222 %varDef_487
	%coffset_223 = mul %cidVal_222 8
	%celementAddr_224 = add %carrayBase_221 %coffset_223
	%celementVal_225 = load %celementAddr_224
	%cres_226 = eq %celementVal_225 0
	br %cres_226 <69> <71>

<69> cif_true
	mov %cidVal_227 %varDef_487
	mov %varDef_488 %cidVal_227
	br <14>

<71> cfor_step
	mov %cidVal_228 %varDef_487
	mov %coldVal_229 %varDef_487
	%cnewVal_230 = inc %coldVal_229
	mov %varDef_489 %cnewVal_230
	br <67>

<14> while_cond
	%varDef_490 = phi <67> %varDef_419 <69> %varDef_419 <93> %varDef_498 <95> %varDef_498
	%varDef_491 = phi <67> %varDef_401 <69> %varDef_401 <93> %varDef_500 <95> %varDef_500
	%varDef_492 = phi <67> %varDef_402 <69> %varDef_402 <93> %varDef_504 <95> %varDef_504
	%varDef_493 = phi <67> %varDef_403 <69> %varDef_403 <93> %varDef_521 <95> %varDef_521
	%varDef_494 = phi <67> %varDef_407 <69> %varDef_407 <93> %varDef_506 <95> %varDef_506
	%varDef_495 = phi <67> %varDef_408 <69> %varDef_408 <93> %varDef_507 <95> %varDef_507
	%varDef_496 = phi <67> %varDef_409 <69> %varDef_409 <93> %varDef_508 <95> %varDef_508
	%varDef_497 = phi <67> %varDef_443 <69> %varDef_488 <93> %varDef_502 <95> %varDef_522
	mov %tmp_364 %varDef_422
	store %tmp_364 @a
	mov %tmp_365 %varDef_426
	store %tmp_365 @h
	mov %tmp_366 %varDef_497
	store %tmp_366 @now
	%res_71 = win ( )
	br %res_71 <16> <15>

<15> while_body
	mov %idVal_72 %varDef_490
	mov %oldVal_73 %varDef_490
	%newVal_74 = inc %oldVal_73
	mov %varDef_498 %newVal_74
	mov %varDef_499 0
	br <75>

<75> cfor_cond
	%varDef_500 = phi <15> %varDef_499 <76> %varDef_501
	mov %cidVal_232 %varDef_500
	mov %cidVal_233 %varDef_497
	%cres_234 = lt %cidVal_232 %cidVal_233
	br %cres_234 <76> <78>

<76> cfor_body
	mov %carrayBase_235 %varDef_422
	mov %cidVal_236 %varDef_500
	%coffset_237 = mul %cidVal_236 8
	%celementAddr_238 = add %carrayBase_235 %coffset_237
	%celementVal_239 = load %celementAddr_238
	mov %carrayBase_240 %varDef_422
	mov %cidVal_241 %varDef_500
	%coffset_242 = mul %cidVal_241 8
	%celementAddr_243 = add %carrayBase_240 %coffset_242
	%coldVal_244 = load %celementAddr_243
	%cnewVal_245 = dec %coldVal_244
	store %cnewVal_245 %celementAddr_243
	mov %cidVal_246 %varDef_500
	%cres_247 = add %cidVal_246 1
	mov %varDef_501 %cres_247
	br <75>

<78> cfor_end
	mov %cidVal_248 %varDef_497
	mov %carrayBase_249 %varDef_422
	mov %cidVal_250 %varDef_497
	%coffset_251 = mul %cidVal_250 8
	%celementAddr_252 = add %carrayBase_249 %coffset_251
	store %cidVal_248 %celementAddr_252
	mov %cidVal_253 %varDef_497
	mov %coldVal_254 %varDef_497
	%cnewVal_255 = inc %coldVal_254
	mov %varDef_502 %cnewVal_255
	mov %varDef_503 0
	br <81>

<81> cfor_cond
	%varDef_504 = phi <78> %varDef_492 <91> %varDef_515
	%varDef_505 = phi <78> %varDef_503 <91> %varDef_519
	%varDef_506 = phi <78> %varDef_494 <91> %varDef_516
	%varDef_507 = phi <78> %varDef_495 <91> %varDef_517
	%varDef_508 = phi <78> %varDef_496 <91> %varDef_518
	mov %cidVal_258 %varDef_505
	mov %cidVal_259 %varDef_502
	%cres_260 = lt %cidVal_258 %cidVal_259
	br %cres_260 <82> <92>

<82> cfor_body
	mov %carrayBase_261 %varDef_422
	mov %cidVal_262 %varDef_505
	%coffset_263 = mul %cidVal_262 8
	%celementAddr_264 = add %carrayBase_261 %coffset_263
	%celementVal_265 = load %celementAddr_264
	%cres_266 = eq %celementVal_265 0
	br %cres_266 <83> <91>

<83> cif_true
	mov %cidVal_267 %varDef_505
	%cres_268 = add %cidVal_267 1
	mov %varDef_509 %cres_268
	br <84>

<84> cfor_cond
	%varDef_510 = phi <83> %varDef_509 <88> %varDef_514
	mov %cidVal_269 %varDef_510
	mov %cidVal_270 %varDef_502
	%cres_271 = lt %cidVal_269 %cidVal_270
	br %cres_271 <85> <91>

<85> cfor_body
	mov %carrayBase_272 %varDef_422
	mov %cidVal_273 %varDef_510
	%coffset_274 = mul %cidVal_273 8
	%celementAddr_275 = add %carrayBase_272 %coffset_274
	%celementVal_276 = load %celementAddr_275
	%cres_277 = neq %celementVal_276 0
	br %cres_277 <86> <88>

<86> cif_true
	mov %cidVal_278 %varDef_505
	mov %cidVal_279 %varDef_510
	mov %varDef_511 %cidVal_278
	mov %varDef_512 %cidVal_279
	mov %carrayBase_324 %varDef_422
	mov %cidVal_325 %varDef_511
	%coffset_326 = mul %cidVal_325 8
	%celementAddr_327 = add %carrayBase_324 %coffset_326
	%celementVal_328 = load %celementAddr_327
	mov %varDef_513 %celementVal_328
	mov %carrayBase_329 %varDef_422
	mov %cidVal_330 %varDef_512
	%coffset_331 = mul %cidVal_330 8
	%celementAddr_332 = add %carrayBase_329 %coffset_331
	%celementVal_333 = load %celementAddr_332
	mov %carrayBase_334 %varDef_422
	mov %cidVal_335 %varDef_511
	%coffset_336 = mul %cidVal_335 8
	%celementAddr_337 = add %carrayBase_334 %coffset_336
	store %celementVal_333 %celementAddr_337
	mov %cidVal_338 %varDef_513
	mov %carrayBase_339 %varDef_422
	mov %cidVal_340 %varDef_512
	%coffset_341 = mul %cidVal_340 8
	%celementAddr_342 = add %carrayBase_339 %coffset_341
	store %cidVal_338 %celementAddr_342
	br <91>

<88> cfor_step
	mov %cidVal_280 %varDef_510
	mov %coldVal_281 %varDef_510
	%cnewVal_282 = inc %coldVal_281
	mov %varDef_514 %cnewVal_282
	br <84>

<91> cfor_step
	%varDef_515 = phi <82> %varDef_504 <84> %varDef_510 <86> %varDef_510
	%varDef_516 = phi <82> %varDef_506 <84> %varDef_506 <86> %varDef_513
	%varDef_517 = phi <82> %varDef_507 <84> %varDef_507 <86> %varDef_512
	%varDef_518 = phi <82> %varDef_508 <84> %varDef_508 <86> %varDef_511
	mov %cidVal_283 %varDef_505
	mov %coldVal_284 %varDef_505
	%cnewVal_285 = inc %coldVal_284
	mov %varDef_519 %cnewVal_285
	br <81>

<92> cfor_end
	mov %varDef_520 0
	br <93>

<93> cfor_cond
	%varDef_521 = phi <92> %varDef_520 <97> %varDef_523
	mov %cidVal_286 %varDef_521
	mov %cidVal_287 %varDef_502
	%cres_288 = lt %cidVal_286 %cidVal_287
	br %cres_288 <94> <14>

<94> cfor_body
	mov %carrayBase_289 %varDef_422
	mov %cidVal_290 %varDef_521
	%coffset_291 = mul %cidVal_290 8
	%celementAddr_292 = add %carrayBase_289 %coffset_291
	%celementVal_293 = load %celementAddr_292
	%cres_294 = eq %celementVal_293 0
	br %cres_294 <95> <97>

<95> cif_true
	mov %cidVal_295 %varDef_521
	mov %varDef_522 %cidVal_295
	br <14>

<97> cfor_step
	mov %cidVal_296 %varDef_521
	mov %coldVal_297 %varDef_521
	%cnewVal_298 = inc %coldVal_297
	mov %varDef_523 %cnewVal_298
	br <93>

<16> while_end
	print ( $str_4 )
	mov %idVal_75 %varDef_490
	__printInt ( %idVal_75 )
	println ( $str_5 )
	mov %idVal_76 %varDef_383
	mov %oldVal_77 %varDef_383
	%newVal_78 = inc %oldVal_77
	mov %varDef_524 %newVal_78
	br <1>

<4> for_end
	mov %tmp_367 %varDef_410
	store %tmp_367 @Q
	mov %tmp_368 %varDef_411
	store %tmp_368 @n
	mov %tmp_369 %varDef_412
	store %tmp_369 @a
	mov %tmp_370 %varDef_413
	store %tmp_370 @seed
	mov %tmp_371 %varDef_414
	store %tmp_371 @h
	mov %tmp_372 %varDef_415
	store %tmp_372 @now
	mov %tmp_373 %varDef_416
	store %tmp_373 @R
	ret 0

}

