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
	store 1 @seed
	ret 

}

define random ( ) {
<0> entry
	%varAddr_33 = alloca 4
	%tmp_24 = load @R
	%tmp_23 = load @seed
	%tmp_22 = load @Q
	%res_4 = mod %tmp_23 %tmp_22
	%res_5 = mul 48271 %res_4
	%res_9 = div %tmp_23 %tmp_22
	%res_10 = mul %tmp_24 %res_9
	%res_11 = sub %res_5 %res_10
	%res_13 = ge %res_11 0
	br %res_13 <1> <2>

<1> if_true
	store %res_11 %varAddr_33
	br <3>

<2> if_false
	%res_17 = add %res_11 2147483647
	store %res_17 %varAddr_33
	br <3>

<3> if_merge
	%varDef_32 = load %varAddr_33
	store %varDef_32 @seed
	ret %varDef_32

}

define initialize ( %argVal_0 ) {
<0> entry
	store %argVal_0 @seed
	ret 

}

define swap ( %argVal_0 %argVal_2 ) {
<0> entry
	%tmp_25 = load @a
	%offset_7 = mul %argVal_0 8
	%elementAddr_8 = add %tmp_25 %offset_7
	%elementVal_9 = load %elementAddr_8
	%offset_12 = mul %argVal_2 8
	%elementAddr_13 = add %tmp_25 %offset_12
	%elementVal_14 = load %elementAddr_13
	store %elementVal_14 %elementAddr_8
	store %elementVal_9 %elementAddr_13
	ret 

}

define pd ( %argVal_0 ) {
<0> entry
	%varAddr_23 = alloca 4
	%tmp_16 = load @h
	store %tmp_16 %varAddr_23
	br <1>

<1> for_cond
	%varDef_21 = load %varAddr_23
	%res_4 = le %varDef_21 %argVal_0
	br %res_4 <2> <4>

<2> for_body
	%res_8 = add %varDef_21 1
	%res_9 = mul %varDef_21 %res_8
	%res_10 = div %res_9 2
	%res_11 = eq %argVal_0 %res_10
	br %res_11 <5> <3>

<5> if_true
	store %varDef_21 @h
	ret 1

<3> for_step
	%newVal_14 = inc %varDef_21
	store %newVal_14 %varAddr_23
	br <1>

<4> for_end
	store %varDef_21 @h
	ret 0

}

define show ( ) {
<0> entry
	%varAddr_21 = alloca 4
	%tmp_15 = load @now
	%tmp_14 = load @a
	store 0 %varAddr_21
	br <1>

<1> for_cond
	%varDef_19 = load %varAddr_21
	%res_3 = lt %varDef_19 %tmp_15
	br %res_3 <2> <4>

<2> for_body
	%offset_6 = mul %varDef_19 8
	%elementAddr_7 = add %tmp_14 %offset_6
	%elementVal_8 = load %elementAddr_7
	__printInt ( %elementVal_8 )
	print ( $str_0 )
	%newVal_11 = inc %varDef_19
	store %newVal_11 %varAddr_21
	br <1>

<4> for_end
	println ( $str_1 )
	ret 

}

define win ( ) {
<0> entry
	%varAddr_118 = alloca 4
	%varAddr_117 = alloca 4
	%varAddr_116 = alloca 4
	%varAddr_115 = alloca 4
	%varAddr_114 = alloca 4
	%varAddr_113 = alloca 4
	%varAddr_112 = alloca 4
	%tmp_90 = load @now
	%tmp_89 = load @h
	%tmp_88 = load @a
	%arrayPtr_3 = malloc 816
	store 101 %arrayPtr_3
	%arrayBase_6 = add %arrayPtr_3 8
	%res_10 = neq %tmp_90 %tmp_89
	br %res_10 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	store 0 %varAddr_118
	br <3>

<3> for_cond
	%varDef_96 = load %varAddr_118
	%res_13 = lt %varDef_96 %tmp_90
	br %res_13 <4> <6>

<4> for_body
	%offset_16 = mul %varDef_96 8
	%elementAddr_17 = add %tmp_88 %offset_16
	%elementVal_18 = load %elementAddr_17
	%elementAddr_22 = add %arrayBase_6 %offset_16
	store %elementVal_18 %elementAddr_22
	%newVal_25 = inc %varDef_96
	store %newVal_25 %varAddr_118
	br <3>

<6> for_end
	store 0 %varAddr_115
	store 0 %varAddr_116
	br <7>

<7> for_cond
	%varDef_99 = load %varAddr_115
	%varDef_101 = load %varAddr_116
	%res_28 = sub %tmp_90 1
	%res_29 = lt %varDef_99 %res_28
	br %res_29 <8> <10>

<8> for_body
	%res_31 = add %varDef_99 1
	store %res_31 %varAddr_113
	store %varDef_101 %varAddr_114
	br <11>

<11> for_cond
	%varDef_103 = load %varAddr_113
	%varDef_104 = load %varAddr_114
	%res_34 = lt %varDef_103 %tmp_90
	br %res_34 <12> <9>

<12> for_body
	%offset_37 = mul %varDef_99 8
	%elementAddr_38 = add %arrayBase_6 %offset_37
	%elementVal_39 = load %elementAddr_38
	%offset_42 = mul %varDef_103 8
	%elementAddr_43 = add %arrayBase_6 %offset_42
	%elementVal_44 = load %elementAddr_43
	%res_45 = gt %elementVal_39 %elementVal_44
	br %res_45 <15> <23>

<23> parallel_copy
	store %varDef_104 %varAddr_112
	br <13>

<15> if_true
	%offset_48 = mul %varDef_99 8
	%elementAddr_49 = add %arrayBase_6 %offset_48
	%elementVal_50 = load %elementAddr_49
	%offset_53 = mul %varDef_103 8
	%elementAddr_54 = add %arrayBase_6 %offset_53
	%elementVal_55 = load %elementAddr_54
	store %elementVal_55 %elementAddr_49
	store %elementVal_50 %elementAddr_54
	store %elementVal_50 %varAddr_112
	br <13>

<13> for_step
	%varDef_106 = load %varAddr_112
	%newVal_67 = inc %varDef_103
	store %newVal_67 %varAddr_113
	store %varDef_106 %varAddr_114
	br <11>

<9> for_step
	%newVal_70 = inc %varDef_99
	store %newVal_70 %varAddr_115
	store %varDef_104 %varAddr_116
	br <7>

<10> for_end
	store 0 %varAddr_117
	br <17>

<17> for_cond
	%varDef_110 = load %varAddr_117
	%res_73 = lt %varDef_110 %tmp_90
	br %res_73 <18> <20>

<18> for_body
	%offset_76 = mul %varDef_110 8
	%elementAddr_77 = add %arrayBase_6 %offset_76
	%elementVal_78 = load %elementAddr_77
	%res_80 = add %varDef_110 1
	%res_81 = neq %elementVal_78 %res_80
	br %res_81 <21> <19>

<21> if_true
	ret 0

<19> for_step
	%newVal_84 = inc %varDef_110
	store %newVal_84 %varAddr_117
	br <17>

<20> for_end
	ret 1

}

define merge ( ) {
<0> entry
	%varAddr_105 = alloca 4
	%varAddr_104 = alloca 4
	%varAddr_103 = alloca 4
	%varAddr_102 = alloca 4
	%varAddr_101 = alloca 4
	%varAddr_100 = alloca 4
	%varAddr_99 = alloca 4
	%varAddr_98 = alloca 4
	%varAddr_97 = alloca 4
	%varAddr_96 = alloca 4
	%varAddr_95 = alloca 4
	%varAddr_94 = alloca 4
	%tmp_68 = load @now
	%tmp_67 = load @a
	store 0 %varAddr_95
	store 0 %varAddr_96
	store 0 %varAddr_97
	store 0 %varAddr_98
	store 0 %varAddr_99
	br <1>

<1> for_cond
	%varDef_73 = load %varAddr_95
	%varDef_74 = load %varAddr_96
	%varDef_75 = load %varAddr_97
	%varDef_76 = load %varAddr_98
	%varDef_77 = load %varAddr_99
	%res_3 = lt %varDef_73 %tmp_68
	br %res_3 <2> <4>

<2> for_body
	%offset_6 = mul %varDef_73 8
	%elementAddr_7 = add %tmp_67 %offset_6
	%elementVal_8 = load %elementAddr_7
	%res_9 = eq %elementVal_8 0
	br %res_9 <5> <21>

<21> parallel_copy
	store %varDef_74 %varAddr_100
	store %varDef_75 %varAddr_101
	store %varDef_76 %varAddr_102
	store %varDef_77 %varAddr_103
	br <3>

<5> if_true
	%res_12 = add %varDef_73 1
	store %res_12 %varAddr_105
	br <7>

<7> for_cond
	%varDef_79 = load %varAddr_105
	%res_15 = lt %varDef_79 %tmp_68
	br %res_15 <8> <22>

<22> parallel_copy
	store %varDef_79 %varAddr_100
	store %varDef_75 %varAddr_101
	store %varDef_76 %varAddr_102
	store %varDef_77 %varAddr_103
	br <3>

<8> for_body
	%offset_18 = mul %varDef_79 8
	%elementAddr_19 = add %tmp_67 %offset_18
	%elementVal_20 = load %elementAddr_19
	%res_21 = neq %elementVal_20 0
	br %res_21 <11> <9>

<11> if_true
	%coffset_48 = mul %varDef_73 8
	%celementAddr_49 = add %tmp_67 %coffset_48
	%celementVal_50 = load %celementAddr_49
	%coffset_53 = mul %varDef_79 8
	%celementAddr_54 = add %tmp_67 %coffset_53
	%celementVal_55 = load %celementAddr_54
	store %celementVal_55 %celementAddr_49
	store %celementVal_50 %celementAddr_54
	store %varDef_79 %varAddr_100
	store %celementVal_50 %varAddr_101
	store %varDef_79 %varAddr_102
	store %varDef_73 %varAddr_103
	br <3>

<9> for_step
	%newVal_26 = inc %varDef_79
	store %newVal_26 %varAddr_105
	br <7>

<3> for_step
	%varDef_84 = load %varAddr_100
	%varDef_85 = load %varAddr_101
	%varDef_86 = load %varAddr_102
	%varDef_87 = load %varAddr_103
	%newVal_29 = inc %varDef_73
	store %newVal_29 %varAddr_95
	store %varDef_84 %varAddr_96
	store %varDef_85 %varAddr_97
	store %varDef_86 %varAddr_98
	store %varDef_87 %varAddr_99
	br <1>

<4> for_end
	store 0 %varAddr_94
	br <13>

<13> for_cond
	%varDef_90 = load %varAddr_94
	%res_32 = lt %varDef_90 %tmp_68
	br %res_32 <14> <23>

<23> parallel_copy
	store %tmp_68 %varAddr_104
	br <16>

<14> for_body
	%offset_35 = mul %varDef_90 8
	%elementAddr_36 = add %tmp_67 %offset_35
	%elementVal_37 = load %elementAddr_36
	%res_38 = eq %elementVal_37 0
	br %res_38 <17> <15>

<17> if_true
	store %varDef_90 %varAddr_104
	br <16>

<15> for_step
	%newVal_42 = inc %varDef_90
	store %newVal_42 %varAddr_94
	br <13>

<16> for_end
	%varDef_93 = load %varAddr_104
	store %varDef_93 @now
	ret 

}

define move ( ) {
<0> entry
	%varAddr_36 = alloca 4
	%tmp_28 = load @now
	%tmp_27 = load @a
	store 0 %varAddr_36
	br <1>

<1> for_cond
	%varDef_33 = load %varAddr_36
	%res_3 = lt %varDef_33 %tmp_28
	br %res_3 <2> <4>

<2> for_body
	%offset_11 = mul %varDef_33 8
	%elementAddr_12 = add %tmp_27 %offset_11
	%oldVal_13 = load %elementAddr_12
	%newVal_14 = dec %oldVal_13
	store %newVal_14 %elementAddr_12
	%res_16 = add %varDef_33 1
	store %res_16 %varAddr_36
	br <1>

<4> for_end
	%offset_20 = mul %tmp_28 8
	%elementAddr_21 = add %tmp_27 %offset_20
	store %tmp_28 %elementAddr_21
	%newVal_24 = inc %tmp_28
	store %newVal_24 @now
	ret 

}

define main ( ) {
<0> entry
	%varAddr_594 = alloca 4
	%varAddr_593 = alloca 4
	%varAddr_592 = alloca 4
	%varAddr_591 = alloca 4
	%varAddr_590 = alloca 4
	%varAddr_589 = alloca 4
	%varAddr_588 = alloca 4
	%varAddr_587 = alloca 4
	%varAddr_586 = alloca 4
	%varAddr_585 = alloca 4
	%varAddr_584 = alloca 4
	%varAddr_583 = alloca 4
	%varAddr_582 = alloca 4
	%varAddr_581 = alloca 4
	%varAddr_580 = alloca 4
	%varAddr_579 = alloca 4
	%varAddr_578 = alloca 4
	%varAddr_577 = alloca 4
	%varAddr_576 = alloca 4
	%varAddr_575 = alloca 4
	%varAddr_574 = alloca 4
	%varAddr_573 = alloca 4
	%varAddr_572 = alloca 4
	%varAddr_571 = alloca 4
	%varAddr_570 = alloca 4
	%varAddr_569 = alloca 4
	%varAddr_568 = alloca 4
	%varAddr_567 = alloca 4
	%varAddr_566 = alloca 4
	%varAddr_565 = alloca 4
	%varAddr_564 = alloca 4
	%varAddr_563 = alloca 4
	%varAddr_562 = alloca 4
	%varAddr_561 = alloca 4
	%varAddr_560 = alloca 4
	%varAddr_559 = alloca 4
	%varAddr_558 = alloca 4
	%varAddr_557 = alloca 4
	%varAddr_556 = alloca 4
	%varAddr_555 = alloca 4
	%varAddr_554 = alloca 4
	%varAddr_553 = alloca 4
	%varAddr_552 = alloca 4
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
	%tmp_356 = load @R
	%tmp_355 = load @now
	%tmp_354 = load @h
	%tmp_353 = load @seed
	%tmp_352 = load @a
	%tmp_351 = load @n
	%tmp_350 = load @Q
	%res_2 = getInt ( )
	store 0 %varAddr_560
	store 0 %varAddr_561
	store 0 %varAddr_562
	store 0 %varAddr_563
	store 0 %varAddr_564
	store 0 %varAddr_565
	store 0 %varAddr_566
	store 0 %varAddr_567
	store 0 %varAddr_568
	store 0 %varAddr_569
	store 0 %varAddr_570
	store 0 %varAddr_571
	store 0 %varAddr_572
	store 0 %varAddr_573
	store 0 %varAddr_574
	store %tmp_350 %varAddr_575
	store %tmp_351 %varAddr_576
	store %tmp_352 %varAddr_577
	store %tmp_353 %varAddr_578
	store %tmp_354 %varAddr_579
	store %tmp_355 %varAddr_580
	store %tmp_356 %varAddr_581
	br <1>

<1> for_cond
	%varDef_383 = load %varAddr_560
	%varDef_394 = load %varAddr_561
	%varDef_395 = load %varAddr_562
	%varDef_396 = load %varAddr_563
	%varDef_397 = load %varAddr_564
	%varDef_399 = load %varAddr_565
	%varDef_401 = load %varAddr_566
	%varDef_402 = load %varAddr_567
	%varDef_403 = load %varAddr_568
	%varDef_404 = load %varAddr_569
	%varDef_405 = load %varAddr_570
	%varDef_406 = load %varAddr_571
	%varDef_407 = load %varAddr_572
	%varDef_408 = load %varAddr_573
	%varDef_409 = load %varAddr_574
	%varDef_410 = load %varAddr_575
	%varDef_411 = load %varAddr_576
	%varDef_412 = load %varAddr_577
	%varDef_413 = load %varAddr_578
	%varDef_414 = load %varAddr_579
	%varDef_415 = load %varAddr_580
	%varDef_416 = load %varAddr_581
	%res_5 = lt %varDef_383 %res_2
	br %res_5 <2> <4>

<2> for_body
	%arrayPtr_9 = malloc 1608
	store 200 %arrayPtr_9
	%arrayBase_12 = add %arrayPtr_9 8
	store 0 %varAddr_554
	br <19>

<19> cfor_cond
	%varDef_426 = load %varAddr_554
	%cres_83 = le %varDef_426 5050
	br %cres_83 <20> <24>

<20> cfor_body
	%cres_87 = add %varDef_426 1
	%cres_88 = mul %varDef_426 %cres_87
	%cres_89 = div %cres_88 2
	%cres_90 = eq 5050 %cres_89
	br %cres_90 <21> <23>

<21> cif_true
	store 1 %varAddr_584
	br <17>

<23> cfor_step
	%cnewVal_93 = inc %varDef_426
	store %cnewVal_93 %varAddr_554
	br <19>

<24> cfor_end
	store 0 %varAddr_584
	br <17>

<17> after_call
	%varDef_430 = load %varAddr_584
	br %varDef_430 <6> <5>

<5> if_true
	println ( $str_2 )
	store 44488 @Q
	store 5050 @n
	store %arrayBase_12 @a
	store %varDef_413 @seed
	store %varDef_426 @h
	store %varDef_415 @now
	store 3399 @R
	ret 1

<6> if_merge
	println ( $str_3 )
	%cres_99 = mod %varDef_413 44488
	%cres_100 = mul 48271 %cres_99
	%cres_104 = div %varDef_413 44488
	%cres_105 = mul 3399 %cres_104
	%cres_106 = sub %cres_100 %cres_105
	%cres_108 = ge %cres_106 0
	br %cres_108 <27> <28>

<27> cif_true
	store %cres_106 %varAddr_526
	br <29>

<28> cif_false
	%cres_112 = add %cres_106 2147483647
	store %cres_112 %varAddr_526
	br <29>

<29> cif_merge
	%varDef_434 = load %varAddr_526
	%cres_121 = mod %varDef_434 44488
	%cres_122 = mul 48271 %cres_121
	%cres_126 = div %varDef_434 44488
	%cres_127 = mul 3399 %cres_126
	%cres_128 = sub %cres_122 %cres_127
	%cres_130 = ge %cres_128 0
	br %cres_130 <34> <35>

<34> cif_true
	store %cres_128 %varAddr_541
	br <36>

<35> cif_false
	%cres_134 = add %cres_128 2147483647
	store %cres_134 %varAddr_541
	br <36>

<36> cif_merge
	%varDef_441 = load %varAddr_541
	%res_23 = mod %varDef_441 10
	%res_24 = add %res_23 1
	__printlnInt ( %res_24 )
	store 0 %varAddr_587
	store 0 %varAddr_588
	store %varDef_394 %varAddr_589
	store %varDef_395 %varAddr_590
	store %varDef_396 %varAddr_591
	store %varDef_397 %varAddr_592
	store %varDef_441 %varAddr_593
	br <7>

<7> for_cond
	%varDef_444 = load %varAddr_587
	%varDef_445 = load %varAddr_588
	%varDef_446 = load %varAddr_589
	%varDef_447 = load %varAddr_590
	%varDef_448 = load %varAddr_591
	%varDef_449 = load %varAddr_592
	%varDef_450 = load %varAddr_593
	%res_28 = sub %res_24 1
	%res_29 = lt %varDef_444 %res_28
	br %res_29 <38> <10>

<38> centry
	%cres_141 = mod %varDef_450 44488
	%cres_142 = mul 48271 %cres_141
	%cres_146 = div %varDef_450 44488
	%cres_147 = mul 3399 %cres_146
	%cres_148 = sub %cres_142 %cres_147
	%cres_150 = ge %cres_148 0
	br %cres_150 <39> <40>

<39> cif_true
	store %cres_148 %varAddr_525
	br <41>

<40> cif_false
	%cres_154 = add %cres_148 2147483647
	store %cres_154 %varAddr_525
	br <41>

<41> cif_merge
	%varDef_454 = load %varAddr_525
	%res_31 = mod %varDef_454 10
	%res_32 = add %res_31 1
	%offset_35 = mul %varDef_444 8
	%elementAddr_36 = add %arrayBase_12 %offset_35
	store %res_32 %elementAddr_36
	store %varDef_448 %varAddr_543
	store %varDef_449 %varAddr_544
	store %varDef_454 %varAddr_545
	br <11>

<11> while_cond
	%varDef_456 = load %varAddr_543
	%varDef_457 = load %varAddr_544
	%varDef_458 = load %varAddr_545
	%offset_39 = mul %varDef_444 8
	%elementAddr_40 = add %arrayBase_12 %offset_39
	%elementVal_41 = load %elementAddr_40
	%res_43 = add %elementVal_41 %varDef_445
	%res_45 = gt %res_43 5050
	br %res_45 <43> <13>

<43> centry
	%cres_161 = mod %varDef_458 44488
	%cres_162 = mul 48271 %cres_161
	%cres_166 = div %varDef_458 44488
	%cres_167 = mul 3399 %cres_166
	%cres_168 = sub %cres_162 %cres_167
	%cres_170 = ge %cres_168 0
	br %cres_170 <44> <45>

<44> cif_true
	store %cres_168 %varAddr_586
	br <46>

<45> cif_false
	%cres_174 = add %cres_168 2147483647
	store %cres_174 %varAddr_586
	br <46>

<46> cif_merge
	%varDef_462 = load %varAddr_586
	%res_47 = mod %varDef_462 10
	%res_48 = add %res_47 1
	%offset_51 = mul %varDef_444 8
	%elementAddr_52 = add %arrayBase_12 %offset_51
	store %res_48 %elementAddr_52
	store %varDef_462 %varAddr_543
	store %cres_168 %varAddr_544
	store %varDef_462 %varAddr_545
	br <11>

<13> while_end
	%offset_56 = mul %varDef_444 8
	%elementAddr_57 = add %arrayBase_12 %offset_56
	%elementVal_58 = load %elementAddr_57
	%res_59 = add %varDef_445 %elementVal_58
	%newVal_62 = inc %varDef_444
	store %newVal_62 %varAddr_587
	store %res_59 %varAddr_588
	store %varDef_454 %varAddr_589
	store %cres_148 %varAddr_590
	store %varDef_456 %varAddr_591
	store %varDef_457 %varAddr_592
	store %varDef_458 %varAddr_593
	br <7>

<10> for_end
	%res_65 = sub 5050 %varDef_445
	%res_68 = sub %res_24 1
	%offset_69 = mul %res_68 8
	%elementAddr_70 = add %arrayBase_12 %offset_69
	store %res_65 %elementAddr_70
	store 0 %varAddr_540
	br <49>

<49> cfor_cond
	%varDef_467 = load %varAddr_540
	%cres_179 = lt %varDef_467 %res_24
	br %cres_179 <50> <52>

<50> cfor_body
	%coffset_182 = mul %varDef_467 8
	%celementAddr_183 = add %arrayBase_12 %coffset_182
	%celementVal_184 = load %celementAddr_183
	__printInt ( %celementVal_184 )
	print ( $str_0 )
	%cnewVal_187 = inc %varDef_467
	store %cnewVal_187 %varAddr_540
	br <49>

<52> cfor_end
	println ( $str_1 )
	store %varDef_399 %varAddr_527
	store 0 %varAddr_528
	store %varDef_404 %varAddr_529
	store %varDef_405 %varAddr_530
	store %varDef_406 %varAddr_531
	br <55>

<55> cfor_cond
	%varDef_470 = load %varAddr_527
	%varDef_471 = load %varAddr_528
	%varDef_472 = load %varAddr_529
	%varDef_473 = load %varAddr_530
	%varDef_474 = load %varAddr_531
	%cres_192 = lt %varDef_471 %res_24
	br %cres_192 <56> <66>

<56> cfor_body
	%coffset_195 = mul %varDef_471 8
	%celementAddr_196 = add %arrayBase_12 %coffset_195
	%celementVal_197 = load %celementAddr_196
	%cres_198 = eq %celementVal_197 0
	br %cres_198 <57> <107>

<107> parallel_copy
	store %varDef_470 %varAddr_550
	store %varDef_472 %varAddr_551
	store %varDef_473 %varAddr_552
	store %varDef_474 %varAddr_553
	br <65>

<57> cif_true
	%cres_200 = add %varDef_471 1
	store %cres_200 %varAddr_583
	br <58>

<58> cfor_cond
	%varDef_476 = load %varAddr_583
	%cres_203 = lt %varDef_476 %res_24
	br %cres_203 <59> <108>

<108> parallel_copy
	store %varDef_476 %varAddr_550
	store %varDef_472 %varAddr_551
	store %varDef_473 %varAddr_552
	store %varDef_474 %varAddr_553
	br <65>

<59> cfor_body
	%coffset_206 = mul %varDef_476 8
	%celementAddr_207 = add %arrayBase_12 %coffset_206
	%celementVal_208 = load %celementAddr_207
	%cres_209 = neq %celementVal_208 0
	br %cres_209 <60> <62>

<60> cif_true
	%coffset_304 = mul %varDef_471 8
	%celementAddr_305 = add %arrayBase_12 %coffset_304
	%celementVal_306 = load %celementAddr_305
	%coffset_309 = mul %varDef_476 8
	%celementAddr_310 = add %arrayBase_12 %coffset_309
	%celementVal_311 = load %celementAddr_310
	store %celementVal_311 %celementAddr_305
	store %celementVal_306 %celementAddr_310
	store %varDef_476 %varAddr_550
	store %celementVal_306 %varAddr_551
	store %varDef_476 %varAddr_552
	store %varDef_471 %varAddr_553
	br <65>

<62> cfor_step
	%cnewVal_214 = inc %varDef_476
	store %cnewVal_214 %varAddr_583
	br <58>

<65> cfor_step
	%varDef_481 = load %varAddr_550
	%varDef_482 = load %varAddr_551
	%varDef_483 = load %varAddr_552
	%varDef_484 = load %varAddr_553
	%cnewVal_217 = inc %varDef_471
	store %varDef_481 %varAddr_527
	store %cnewVal_217 %varAddr_528
	store %varDef_482 %varAddr_529
	store %varDef_483 %varAddr_530
	store %varDef_484 %varAddr_531
	br <55>

<66> cfor_end
	store 0 %varAddr_594
	br <67>

<67> cfor_cond
	%varDef_487 = load %varAddr_594
	%cres_220 = lt %varDef_487 %res_24
	br %cres_220 <68> <104>

<104> parallel_copy
	store 0 %varAddr_532
	store %varDef_401 %varAddr_533
	store %varDef_402 %varAddr_534
	store %varDef_403 %varAddr_535
	store %varDef_407 %varAddr_536
	store %varDef_408 %varAddr_537
	store %varDef_409 %varAddr_538
	store %res_24 %varAddr_539
	br <14>

<68> cfor_body
	%coffset_223 = mul %varDef_487 8
	%celementAddr_224 = add %arrayBase_12 %coffset_223
	%celementVal_225 = load %celementAddr_224
	%cres_226 = eq %celementVal_225 0
	br %cres_226 <69> <71>

<69> cif_true
	store 0 %varAddr_532
	store %varDef_401 %varAddr_533
	store %varDef_402 %varAddr_534
	store %varDef_403 %varAddr_535
	store %varDef_407 %varAddr_536
	store %varDef_408 %varAddr_537
	store %varDef_409 %varAddr_538
	store %varDef_487 %varAddr_539
	br <14>

<71> cfor_step
	%cnewVal_230 = inc %varDef_487
	store %cnewVal_230 %varAddr_594
	br <67>

<14> while_cond
	%varDef_490 = load %varAddr_532
	%varDef_491 = load %varAddr_533
	%varDef_492 = load %varAddr_534
	%varDef_493 = load %varAddr_535
	%varDef_494 = load %varAddr_536
	%varDef_495 = load %varAddr_537
	%varDef_496 = load %varAddr_538
	%varDef_497 = load %varAddr_539
	store %arrayBase_12 @a
	store %varDef_426 @h
	store %varDef_497 @now
	%res_71 = win ( )
	br %res_71 <16> <15>

<15> while_body
	%newVal_74 = inc %varDef_490
	store 0 %varAddr_542
	br <75>

<75> cfor_cond
	%varDef_500 = load %varAddr_542
	%cres_234 = lt %varDef_500 %varDef_497
	br %cres_234 <76> <78>

<76> cfor_body
	%coffset_242 = mul %varDef_500 8
	%celementAddr_243 = add %arrayBase_12 %coffset_242
	%coldVal_244 = load %celementAddr_243
	%cnewVal_245 = dec %coldVal_244
	store %cnewVal_245 %celementAddr_243
	%cres_247 = add %varDef_500 1
	store %cres_247 %varAddr_542
	br <75>

<78> cfor_end
	%coffset_251 = mul %varDef_497 8
	%celementAddr_252 = add %arrayBase_12 %coffset_251
	store %varDef_497 %celementAddr_252
	%cnewVal_255 = inc %varDef_497
	store %varDef_492 %varAddr_555
	store 0 %varAddr_556
	store %varDef_494 %varAddr_557
	store %varDef_495 %varAddr_558
	store %varDef_496 %varAddr_559
	br <81>

<81> cfor_cond
	%varDef_504 = load %varAddr_555
	%varDef_505 = load %varAddr_556
	%varDef_506 = load %varAddr_557
	%varDef_507 = load %varAddr_558
	%varDef_508 = load %varAddr_559
	%cres_260 = lt %varDef_505 %cnewVal_255
	br %cres_260 <82> <92>

<82> cfor_body
	%coffset_263 = mul %varDef_505 8
	%celementAddr_264 = add %arrayBase_12 %coffset_263
	%celementVal_265 = load %celementAddr_264
	%cres_266 = eq %celementVal_265 0
	br %cres_266 <83> <106>

<106> parallel_copy
	store %varDef_504 %varAddr_546
	store %varDef_506 %varAddr_547
	store %varDef_507 %varAddr_548
	store %varDef_508 %varAddr_549
	br <91>

<83> cif_true
	%cres_268 = add %varDef_505 1
	store %cres_268 %varAddr_582
	br <84>

<84> cfor_cond
	%varDef_510 = load %varAddr_582
	%cres_271 = lt %varDef_510 %cnewVal_255
	br %cres_271 <85> <105>

<105> parallel_copy
	store %varDef_510 %varAddr_546
	store %varDef_506 %varAddr_547
	store %varDef_507 %varAddr_548
	store %varDef_508 %varAddr_549
	br <91>

<85> cfor_body
	%coffset_274 = mul %varDef_510 8
	%celementAddr_275 = add %arrayBase_12 %coffset_274
	%celementVal_276 = load %celementAddr_275
	%cres_277 = neq %celementVal_276 0
	br %cres_277 <86> <88>

<86> cif_true
	%coffset_326 = mul %varDef_505 8
	%celementAddr_327 = add %arrayBase_12 %coffset_326
	%celementVal_328 = load %celementAddr_327
	%coffset_331 = mul %varDef_510 8
	%celementAddr_332 = add %arrayBase_12 %coffset_331
	%celementVal_333 = load %celementAddr_332
	store %celementVal_333 %celementAddr_327
	store %celementVal_328 %celementAddr_332
	store %varDef_510 %varAddr_546
	store %celementVal_328 %varAddr_547
	store %varDef_510 %varAddr_548
	store %varDef_505 %varAddr_549
	br <91>

<88> cfor_step
	%cnewVal_282 = inc %varDef_510
	store %cnewVal_282 %varAddr_582
	br <84>

<91> cfor_step
	%varDef_515 = load %varAddr_546
	%varDef_516 = load %varAddr_547
	%varDef_517 = load %varAddr_548
	%varDef_518 = load %varAddr_549
	%cnewVal_285 = inc %varDef_505
	store %varDef_515 %varAddr_555
	store %cnewVal_285 %varAddr_556
	store %varDef_516 %varAddr_557
	store %varDef_517 %varAddr_558
	store %varDef_518 %varAddr_559
	br <81>

<92> cfor_end
	store 0 %varAddr_585
	br <93>

<93> cfor_cond
	%varDef_521 = load %varAddr_585
	%cres_288 = lt %varDef_521 %cnewVal_255
	br %cres_288 <94> <103>

<103> parallel_copy
	store %newVal_74 %varAddr_532
	store %varDef_500 %varAddr_533
	store %varDef_504 %varAddr_534
	store %varDef_521 %varAddr_535
	store %varDef_506 %varAddr_536
	store %varDef_507 %varAddr_537
	store %varDef_508 %varAddr_538
	store %cnewVal_255 %varAddr_539
	br <14>

<94> cfor_body
	%coffset_291 = mul %varDef_521 8
	%celementAddr_292 = add %arrayBase_12 %coffset_291
	%celementVal_293 = load %celementAddr_292
	%cres_294 = eq %celementVal_293 0
	br %cres_294 <95> <97>

<95> cif_true
	store %newVal_74 %varAddr_532
	store %varDef_500 %varAddr_533
	store %varDef_504 %varAddr_534
	store %varDef_521 %varAddr_535
	store %varDef_506 %varAddr_536
	store %varDef_507 %varAddr_537
	store %varDef_508 %varAddr_538
	store %varDef_521 %varAddr_539
	br <14>

<97> cfor_step
	%cnewVal_298 = inc %varDef_521
	store %cnewVal_298 %varAddr_585
	br <93>

<16> while_end
	print ( $str_4 )
	__printInt ( %varDef_490 )
	println ( $str_5 )
	%newVal_78 = inc %varDef_383
	store %newVal_78 %varAddr_560
	store %varDef_446 %varAddr_561
	store %varDef_447 %varAddr_562
	store %varDef_448 %varAddr_563
	store %varDef_449 %varAddr_564
	store %varDef_470 %varAddr_565
	store %varDef_491 %varAddr_566
	store %varDef_492 %varAddr_567
	store %varDef_493 %varAddr_568
	store %varDef_472 %varAddr_569
	store %varDef_473 %varAddr_570
	store %varDef_474 %varAddr_571
	store %varDef_494 %varAddr_572
	store %varDef_495 %varAddr_573
	store %varDef_496 %varAddr_574
	store 44488 %varAddr_575
	store 5050 %varAddr_576
	store %arrayBase_12 %varAddr_577
	store %varDef_450 %varAddr_578
	store %varDef_426 %varAddr_579
	store %varDef_497 %varAddr_580
	store 3399 %varAddr_581
	br <1>

<4> for_end
	store %varDef_410 @Q
	store %varDef_411 @n
	store %varDef_412 @a
	store %varDef_413 @seed
	store %varDef_414 @h
	store %varDef_415 @now
	store %varDef_416 @R
	ret 0

}

