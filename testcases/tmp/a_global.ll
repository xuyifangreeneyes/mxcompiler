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
	%global2local_0 = alloca 8
	%tmp_1 = load @seed
	store %tmp_1 %global2local_0
	store 1 %global2local_0
	%tmp_2 = load %global2local_0
	store %tmp_2 @seed
	ret 

}

define random ( ) {
<0> entry
	%global2local_21 = alloca 8
	%global2local_20 = alloca 8
	%global2local_19 = alloca 8
	%varAddr_0 = alloca 8
	%tmp_24 = load @R
	store %tmp_24 %global2local_21
	%tmp_23 = load @seed
	store %tmp_23 %global2local_20
	%tmp_22 = load @Q
	store %tmp_22 %global2local_19
	mov %idVal_1 48271
	%idVal_2 = load %global2local_20
	%idVal_3 = load %global2local_19
	%res_4 = mod %idVal_2 %idVal_3
	%res_5 = mul %idVal_1 %res_4
	%idVal_6 = load %global2local_21
	%idVal_7 = load %global2local_20
	%idVal_8 = load %global2local_19
	%res_9 = div %idVal_7 %idVal_8
	%res_10 = mul %idVal_6 %res_9
	%res_11 = sub %res_5 %res_10
	store %res_11 %varAddr_0
	%idVal_12 = load %varAddr_0
	%res_13 = ge %idVal_12 0
	br %res_13 <1> <2>

<1> if_true
	%idVal_14 = load %varAddr_0
	store %idVal_14 %global2local_20
	br <3>

<2> if_false
	%idVal_15 = load %varAddr_0
	mov %idVal_16 2147483647
	%res_17 = add %idVal_15 %idVal_16
	store %res_17 %global2local_20
	br <3>

<3> if_merge
	%idVal_18 = load %global2local_20
	%tmp_25 = load %global2local_20
	store %tmp_25 @seed
	ret %idVal_18

}

define initialize ( %argVal_0 ) {
<0> entry
	%global2local_3 = alloca 8
	%argAddr_1 = alloca 8
	%tmp_4 = load @seed
	store %tmp_4 %global2local_3
	store %argVal_0 %argAddr_1
	%idVal_2 = load %argAddr_1
	store %idVal_2 %global2local_3
	%tmp_5 = load %global2local_3
	store %tmp_5 @seed
	ret 

}

define swap ( %argVal_0 %argVal_2 ) {
<0> entry
	%global2local_24 = alloca 8
	%varAddr_4 = alloca 8
	%argAddr_3 = alloca 8
	%argAddr_1 = alloca 8
	%tmp_25 = load @a
	store %tmp_25 %global2local_24
	store %argVal_0 %argAddr_1
	store %argVal_2 %argAddr_3
	%arrayBase_5 = load %global2local_24
	%idVal_6 = load %argAddr_1
	%offset_7 = mul %idVal_6 8
	%elementAddr_8 = add %arrayBase_5 %offset_7
	%elementVal_9 = load %elementAddr_8
	store %elementVal_9 %varAddr_4
	%arrayBase_10 = load %global2local_24
	%idVal_11 = load %argAddr_3
	%offset_12 = mul %idVal_11 8
	%elementAddr_13 = add %arrayBase_10 %offset_12
	%elementVal_14 = load %elementAddr_13
	%arrayBase_15 = load %global2local_24
	%idVal_16 = load %argAddr_1
	%offset_17 = mul %idVal_16 8
	%elementAddr_18 = add %arrayBase_15 %offset_17
	store %elementVal_14 %elementAddr_18
	%idVal_19 = load %varAddr_4
	%arrayBase_20 = load %global2local_24
	%idVal_21 = load %argAddr_3
	%offset_22 = mul %idVal_21 8
	%elementAddr_23 = add %arrayBase_20 %offset_22
	store %idVal_19 %elementAddr_23
	ret 

}

define pd ( %argVal_0 ) {
<0> entry
	%global2local_15 = alloca 8
	%argAddr_1 = alloca 8
	%tmp_16 = load @h
	store %tmp_16 %global2local_15
	store %argVal_0 %argAddr_1
	br <1>

<1> for_cond
	%idVal_2 = load %global2local_15
	%idVal_3 = load %argAddr_1
	%res_4 = le %idVal_2 %idVal_3
	br %res_4 <2> <4>

<2> for_body
	%idVal_5 = load %argAddr_1
	%idVal_6 = load %global2local_15
	%idVal_7 = load %global2local_15
	%res_8 = add %idVal_7 1
	%res_9 = mul %idVal_6 %res_8
	%res_10 = div %res_9 2
	%res_11 = eq %idVal_5 %res_10
	br %res_11 <5> <6>

<5> if_true
	%tmp_17 = load %global2local_15
	store %tmp_17 @h
	ret 1

<6> if_merge
	br <3>

<3> for_step
	%idVal_12 = load %global2local_15
	%oldVal_13 = load %global2local_15
	%newVal_14 = inc %oldVal_13
	store %newVal_14 %global2local_15
	br <1>

<4> for_end
	%tmp_18 = load %global2local_15
	store %tmp_18 @h
	ret 0

}

define show ( ) {
<0> entry
	%global2local_13 = alloca 8
	%global2local_12 = alloca 8
	%varAddr_0 = alloca 8
	%tmp_15 = load @now
	store %tmp_15 %global2local_13
	%tmp_14 = load @a
	store %tmp_14 %global2local_12
	store 0 %varAddr_0
	br <1>

<1> for_cond
	%idVal_1 = load %varAddr_0
	%idVal_2 = load %global2local_13
	%res_3 = lt %idVal_1 %idVal_2
	br %res_3 <2> <4>

<2> for_body
	%arrayBase_4 = load %global2local_12
	%idVal_5 = load %varAddr_0
	%offset_6 = mul %idVal_5 8
	%elementAddr_7 = add %arrayBase_4 %offset_6
	%elementVal_8 = load %elementAddr_7
	__printInt ( %elementVal_8 )
	print ( $str_0 )
	br <3>

<3> for_step
	%idVal_9 = load %varAddr_0
	%oldVal_10 = load %varAddr_0
	%newVal_11 = inc %oldVal_10
	store %newVal_11 %varAddr_0
	br <1>

<4> for_end
	println ( $str_1 )
	ret 

}

define win ( ) {
<0> entry
	%global2local_87 = alloca 8
	%global2local_86 = alloca 8
	%global2local_85 = alloca 8
	%varAddr_7 = alloca 8
	%varAddr_2 = alloca 8
	%varAddr_1 = alloca 8
	%varAddr_0 = alloca 8
	%tmp_90 = load @now
	store %tmp_90 %global2local_87
	%tmp_89 = load @h
	store %tmp_89 %global2local_86
	%tmp_88 = load @a
	store %tmp_88 %global2local_85
	%memberLength_4 = mul 101 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store 101 %arrayPtr_3
	%arrayBase_6 = add %arrayPtr_3 8
	store %arrayBase_6 %varAddr_2
	%idVal_8 = load %global2local_87
	%idVal_9 = load %global2local_86
	%res_10 = neq %idVal_8 %idVal_9
	br %res_10 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	store 0 %varAddr_1
	br <3>

<3> for_cond
	%idVal_11 = load %varAddr_1
	%idVal_12 = load %global2local_87
	%res_13 = lt %idVal_11 %idVal_12
	br %res_13 <4> <6>

<4> for_body
	%arrayBase_14 = load %global2local_85
	%idVal_15 = load %varAddr_1
	%offset_16 = mul %idVal_15 8
	%elementAddr_17 = add %arrayBase_14 %offset_16
	%elementVal_18 = load %elementAddr_17
	%arrayBase_19 = load %varAddr_2
	%idVal_20 = load %varAddr_1
	%offset_21 = mul %idVal_20 8
	%elementAddr_22 = add %arrayBase_19 %offset_21
	store %elementVal_18 %elementAddr_22
	br <5>

<5> for_step
	%idVal_23 = load %varAddr_1
	%oldVal_24 = load %varAddr_1
	%newVal_25 = inc %oldVal_24
	store %newVal_25 %varAddr_1
	br <3>

<6> for_end
	store 0 %varAddr_0
	br <7>

<7> for_cond
	%idVal_26 = load %varAddr_0
	%idVal_27 = load %global2local_87
	%res_28 = sub %idVal_27 1
	%res_29 = lt %idVal_26 %res_28
	br %res_29 <8> <10>

<8> for_body
	%idVal_30 = load %varAddr_0
	%res_31 = add %idVal_30 1
	store %res_31 %varAddr_1
	br <11>

<11> for_cond
	%idVal_32 = load %varAddr_1
	%idVal_33 = load %global2local_87
	%res_34 = lt %idVal_32 %idVal_33
	br %res_34 <12> <14>

<12> for_body
	%arrayBase_35 = load %varAddr_2
	%idVal_36 = load %varAddr_0
	%offset_37 = mul %idVal_36 8
	%elementAddr_38 = add %arrayBase_35 %offset_37
	%elementVal_39 = load %elementAddr_38
	%arrayBase_40 = load %varAddr_2
	%idVal_41 = load %varAddr_1
	%offset_42 = mul %idVal_41 8
	%elementAddr_43 = add %arrayBase_40 %offset_42
	%elementVal_44 = load %elementAddr_43
	%res_45 = gt %elementVal_39 %elementVal_44
	br %res_45 <15> <16>

<15> if_true
	%arrayBase_46 = load %varAddr_2
	%idVal_47 = load %varAddr_0
	%offset_48 = mul %idVal_47 8
	%elementAddr_49 = add %arrayBase_46 %offset_48
	%elementVal_50 = load %elementAddr_49
	store %elementVal_50 %varAddr_7
	%arrayBase_51 = load %varAddr_2
	%idVal_52 = load %varAddr_1
	%offset_53 = mul %idVal_52 8
	%elementAddr_54 = add %arrayBase_51 %offset_53
	%elementVal_55 = load %elementAddr_54
	%arrayBase_56 = load %varAddr_2
	%idVal_57 = load %varAddr_0
	%offset_58 = mul %idVal_57 8
	%elementAddr_59 = add %arrayBase_56 %offset_58
	store %elementVal_55 %elementAddr_59
	%idVal_60 = load %varAddr_7
	%arrayBase_61 = load %varAddr_2
	%idVal_62 = load %varAddr_1
	%offset_63 = mul %idVal_62 8
	%elementAddr_64 = add %arrayBase_61 %offset_63
	store %idVal_60 %elementAddr_64
	br <16>

<16> if_merge
	br <13>

<13> for_step
	%idVal_65 = load %varAddr_1
	%oldVal_66 = load %varAddr_1
	%newVal_67 = inc %oldVal_66
	store %newVal_67 %varAddr_1
	br <11>

<14> for_end
	br <9>

<9> for_step
	%idVal_68 = load %varAddr_0
	%oldVal_69 = load %varAddr_0
	%newVal_70 = inc %oldVal_69
	store %newVal_70 %varAddr_0
	br <7>

<10> for_end
	store 0 %varAddr_0
	br <17>

<17> for_cond
	%idVal_71 = load %varAddr_0
	%idVal_72 = load %global2local_87
	%res_73 = lt %idVal_71 %idVal_72
	br %res_73 <18> <20>

<18> for_body
	%arrayBase_74 = load %varAddr_2
	%idVal_75 = load %varAddr_0
	%offset_76 = mul %idVal_75 8
	%elementAddr_77 = add %arrayBase_74 %offset_76
	%elementVal_78 = load %elementAddr_77
	%idVal_79 = load %varAddr_0
	%res_80 = add %idVal_79 1
	%res_81 = neq %elementVal_78 %res_80
	br %res_81 <21> <22>

<21> if_true
	ret 0

<22> if_merge
	br <19>

<19> for_step
	%idVal_82 = load %varAddr_0
	%oldVal_83 = load %varAddr_0
	%newVal_84 = inc %oldVal_83
	store %newVal_84 %varAddr_0
	br <17>

<20> for_end
	ret 1

}

define merge ( ) {
<0> entry
	%global2local_66 = alloca 8
	%global2local_65 = alloca 8
	%cargAddr_45 = alloca 8
	%cargAddr_44 = alloca 8
	%cvarAddr_43 = alloca 8
	%varAddr_10 = alloca 8
	%varAddr_0 = alloca 8
	%tmp_68 = load @now
	store %tmp_68 %global2local_66
	%tmp_67 = load @a
	store %tmp_67 %global2local_65
	store 0 %varAddr_0
	br <1>

<1> for_cond
	%idVal_1 = load %varAddr_0
	%idVal_2 = load %global2local_66
	%res_3 = lt %idVal_1 %idVal_2
	br %res_3 <2> <4>

<2> for_body
	%arrayBase_4 = load %global2local_65
	%idVal_5 = load %varAddr_0
	%offset_6 = mul %idVal_5 8
	%elementAddr_7 = add %arrayBase_4 %offset_6
	%elementVal_8 = load %elementAddr_7
	%res_9 = eq %elementVal_8 0
	br %res_9 <5> <6>

<5> if_true
	%idVal_11 = load %varAddr_0
	%res_12 = add %idVal_11 1
	store %res_12 %varAddr_10
	br <7>

<7> for_cond
	%idVal_13 = load %varAddr_10
	%idVal_14 = load %global2local_66
	%res_15 = lt %idVal_13 %idVal_14
	br %res_15 <8> <10>

<8> for_body
	%arrayBase_16 = load %global2local_65
	%idVal_17 = load %varAddr_10
	%offset_18 = mul %idVal_17 8
	%elementAddr_19 = add %arrayBase_16 %offset_18
	%elementVal_20 = load %elementAddr_19
	%res_21 = neq %elementVal_20 0
	br %res_21 <11> <12>

<11> if_true
	%idVal_22 = load %varAddr_0
	%idVal_23 = load %varAddr_10
	br <20>

<20> centry
	store %idVal_22 %cargAddr_45
	store %idVal_23 %cargAddr_44
	%carrayBase_46 = load %global2local_65
	%cidVal_47 = load %cargAddr_45
	%coffset_48 = mul %cidVal_47 8
	%celementAddr_49 = add %carrayBase_46 %coffset_48
	%celementVal_50 = load %celementAddr_49
	store %celementVal_50 %cvarAddr_43
	%carrayBase_51 = load %global2local_65
	%cidVal_52 = load %cargAddr_44
	%coffset_53 = mul %cidVal_52 8
	%celementAddr_54 = add %carrayBase_51 %coffset_53
	%celementVal_55 = load %celementAddr_54
	%carrayBase_56 = load %global2local_65
	%cidVal_57 = load %cargAddr_45
	%coffset_58 = mul %cidVal_57 8
	%celementAddr_59 = add %carrayBase_56 %coffset_58
	store %celementVal_55 %celementAddr_59
	%cidVal_60 = load %cvarAddr_43
	%carrayBase_61 = load %global2local_65
	%cidVal_62 = load %cargAddr_44
	%coffset_63 = mul %cidVal_62 8
	%celementAddr_64 = add %carrayBase_61 %coffset_63
	store %cidVal_60 %celementAddr_64
	br <19>

<19> after_call
	br <10>

<12> if_merge
	br <9>

<9> for_step
	%idVal_24 = load %varAddr_10
	%oldVal_25 = load %varAddr_10
	%newVal_26 = inc %oldVal_25
	store %newVal_26 %varAddr_10
	br <7>

<10> for_end
	br <6>

<6> if_merge
	br <3>

<3> for_step
	%idVal_27 = load %varAddr_0
	%oldVal_28 = load %varAddr_0
	%newVal_29 = inc %oldVal_28
	store %newVal_29 %varAddr_0
	br <1>

<4> for_end
	store 0 %varAddr_0
	br <13>

<13> for_cond
	%idVal_30 = load %varAddr_0
	%idVal_31 = load %global2local_66
	%res_32 = lt %idVal_30 %idVal_31
	br %res_32 <14> <16>

<14> for_body
	%arrayBase_33 = load %global2local_65
	%idVal_34 = load %varAddr_0
	%offset_35 = mul %idVal_34 8
	%elementAddr_36 = add %arrayBase_33 %offset_35
	%elementVal_37 = load %elementAddr_36
	%res_38 = eq %elementVal_37 0
	br %res_38 <17> <18>

<17> if_true
	%idVal_39 = load %varAddr_0
	store %idVal_39 %global2local_66
	br <16>

<18> if_merge
	br <15>

<15> for_step
	%idVal_40 = load %varAddr_0
	%oldVal_41 = load %varAddr_0
	%newVal_42 = inc %oldVal_41
	store %newVal_42 %varAddr_0
	br <13>

<16> for_end
	%tmp_69 = load %global2local_66
	store %tmp_69 @now
	ret 

}

define move ( ) {
<0> entry
	%global2local_26 = alloca 8
	%global2local_25 = alloca 8
	%varAddr_0 = alloca 8
	%tmp_28 = load @now
	store %tmp_28 %global2local_26
	%tmp_27 = load @a
	store %tmp_27 %global2local_25
	store 0 %varAddr_0
	br <1>

<1> for_cond
	%idVal_1 = load %varAddr_0
	%idVal_2 = load %global2local_26
	%res_3 = lt %idVal_1 %idVal_2
	br %res_3 <2> <4>

<2> for_body
	%arrayBase_4 = load %global2local_25
	%idVal_5 = load %varAddr_0
	%offset_6 = mul %idVal_5 8
	%elementAddr_7 = add %arrayBase_4 %offset_6
	%elementVal_8 = load %elementAddr_7
	%arrayBase_9 = load %global2local_25
	%idVal_10 = load %varAddr_0
	%offset_11 = mul %idVal_10 8
	%elementAddr_12 = add %arrayBase_9 %offset_11
	%oldVal_13 = load %elementAddr_12
	%newVal_14 = dec %oldVal_13
	store %newVal_14 %elementAddr_12
	%idVal_15 = load %varAddr_0
	%res_16 = add %idVal_15 1
	store %res_16 %varAddr_0
	br <3>

<3> for_step
	br <1>

<4> for_end
	%idVal_17 = load %global2local_26
	%arrayBase_18 = load %global2local_25
	%idVal_19 = load %global2local_26
	%offset_20 = mul %idVal_19 8
	%elementAddr_21 = add %arrayBase_18 %offset_20
	store %idVal_17 %elementAddr_21
	%idVal_22 = load %global2local_26
	%oldVal_23 = load %global2local_26
	%newVal_24 = inc %oldVal_23
	store %newVal_24 %global2local_26
	%tmp_29 = load %global2local_26
	store %tmp_29 @now
	ret 

}

define main ( ) {
<0> entry
	%global2local_349 = alloca 8
	%global2local_348 = alloca 8
	%global2local_347 = alloca 8
	%global2local_346 = alloca 8
	%global2local_345 = alloca 8
	%global2local_344 = alloca 8
	%global2local_343 = alloca 8
	%cargAddr_323 = alloca 8
	%cargAddr_322 = alloca 8
	%cvarAddr_321 = alloca 8
	%cargAddr_301 = alloca 8
	%cargAddr_300 = alloca 8
	%cvarAddr_299 = alloca 8
	%cvarAddr_257 = alloca 8
	%cvarAddr_256 = alloca 8
	%cvarAddr_231 = alloca 8
	%cvarAddr_189 = alloca 8
	%cvarAddr_188 = alloca 8
	%cvarAddr_176 = alloca 8
	%cvarAddr_157 = alloca 8
	%retValAddr_156 = alloca 8
	%cvarAddr_137 = alloca 8
	%retValAddr_136 = alloca 8
	%cvarAddr_117 = alloca 8
	%retValAddr_116 = alloca 8
	%cargAddr_114 = alloca 8
	%cvarAddr_95 = alloca 8
	%retValAddr_94 = alloca 8
	%cargAddr_80 = alloca 8
	%retValAddr_79 = alloca 8
	%varAddr_8 = alloca 8
	%varAddr_7 = alloca 8
	%varAddr_6 = alloca 8
	%varAddr_1 = alloca 8
	%varAddr_0 = alloca 8
	%tmp_356 = load @R
	store %tmp_356 %global2local_349
	%tmp_355 = load @now
	store %tmp_355 %global2local_348
	%tmp_354 = load @h
	store %tmp_354 %global2local_347
	%tmp_353 = load @seed
	store %tmp_353 %global2local_346
	%tmp_352 = load @a
	store %tmp_352 %global2local_345
	%tmp_351 = load @n
	store %tmp_351 %global2local_344
	%tmp_350 = load @Q
	store %tmp_350 %global2local_343
	store 0 %varAddr_0
	%res_2 = getInt ( )
	store %res_2 %varAddr_1
	br <1>

<1> for_cond
	%idVal_3 = load %varAddr_0
	%idVal_4 = load %varAddr_1
	%res_5 = lt %idVal_3 %idVal_4
	br %res_5 <2> <4>

<2> for_body
	store 0 %varAddr_6
	store 0 %varAddr_7
	store 0 %varAddr_8
	store 5050 %global2local_344
	store 0 %global2local_347
	%memberLength_10 = mul 200 8
	%arrayLength_11 = add %memberLength_10 8
	%arrayPtr_9 = malloc %arrayLength_11
	store 200 %arrayPtr_9
	%arrayBase_12 = add %arrayPtr_9 8
	store %arrayBase_12 %global2local_345
	mov %idVal_13 2147483647
	mov %idVal_14 48271
	%res_15 = div %idVal_13 %idVal_14
	store %res_15 %global2local_343
	mov %idVal_16 2147483647
	mov %idVal_17 48271
	%res_18 = mod %idVal_16 %idVal_17
	store %res_18 %global2local_349
	%idVal_20 = load %global2local_344
	br <18>

<18> centry
	store %idVal_20 %cargAddr_80
	br <19>

<19> cfor_cond
	%cidVal_81 = load %global2local_347
	%cidVal_82 = load %cargAddr_80
	%cres_83 = le %cidVal_81 %cidVal_82
	br %cres_83 <20> <24>

<20> cfor_body
	%cidVal_84 = load %cargAddr_80
	%cidVal_85 = load %global2local_347
	%cidVal_86 = load %global2local_347
	%cres_87 = add %cidVal_86 1
	%cres_88 = mul %cidVal_85 %cres_87
	%cres_89 = div %cres_88 2
	%cres_90 = eq %cidVal_84 %cres_89
	br %cres_90 <21> <22>

<21> cif_true
	store 1 %retValAddr_79
	br <17>

<22> cif_merge
	br <23>

<23> cfor_step
	%cidVal_91 = load %global2local_347
	%coldVal_92 = load %global2local_347
	%cnewVal_93 = inc %coldVal_92
	store %cnewVal_93 %global2local_347
	br <19>

<24> cfor_end
	store 0 %retValAddr_79
	br <17>

<17> after_call
	%res_19 = load %retValAddr_79
	br %res_19 <6> <5>

<5> if_true
	println ( $str_2 )
	%tmp_357 = load %global2local_343
	store %tmp_357 @Q
	%tmp_358 = load %global2local_344
	store %tmp_358 @n
	%tmp_359 = load %global2local_345
	store %tmp_359 @a
	%tmp_360 = load %global2local_346
	store %tmp_360 @seed
	%tmp_361 = load %global2local_347
	store %tmp_361 @h
	%tmp_362 = load %global2local_348
	store %tmp_362 @now
	%tmp_363 = load %global2local_349
	store %tmp_363 @R
	ret 1

<6> if_merge
	println ( $str_3 )
	br <26>

<26> centry
	mov %cidVal_96 48271
	%cidVal_97 = load %global2local_346
	%cidVal_98 = load %global2local_343
	%cres_99 = mod %cidVal_97 %cidVal_98
	%cres_100 = mul %cidVal_96 %cres_99
	%cidVal_101 = load %global2local_349
	%cidVal_102 = load %global2local_346
	%cidVal_103 = load %global2local_343
	%cres_104 = div %cidVal_102 %cidVal_103
	%cres_105 = mul %cidVal_101 %cres_104
	%cres_106 = sub %cres_100 %cres_105
	store %cres_106 %cvarAddr_95
	%cidVal_107 = load %cvarAddr_95
	%cres_108 = ge %cidVal_107 0
	br %cres_108 <27> <28>

<27> cif_true
	%cidVal_109 = load %cvarAddr_95
	store %cidVal_109 %global2local_346
	br <29>

<28> cif_false
	%cidVal_110 = load %cvarAddr_95
	mov %cidVal_111 2147483647
	%cres_112 = add %cidVal_110 %cidVal_111
	store %cres_112 %global2local_346
	br <29>

<29> cif_merge
	%cidVal_113 = load %global2local_346
	store %cidVal_113 %retValAddr_94
	br <25>

<25> after_call
	%res_21 = load %retValAddr_94
	br <31>

<31> centry
	store %res_21 %cargAddr_114
	%cidVal_115 = load %cargAddr_114
	store %cidVal_115 %global2local_346
	br <30>

<30> after_call
	br <33>

<33> centry
	mov %cidVal_118 48271
	%cidVal_119 = load %global2local_346
	%cidVal_120 = load %global2local_343
	%cres_121 = mod %cidVal_119 %cidVal_120
	%cres_122 = mul %cidVal_118 %cres_121
	%cidVal_123 = load %global2local_349
	%cidVal_124 = load %global2local_346
	%cidVal_125 = load %global2local_343
	%cres_126 = div %cidVal_124 %cidVal_125
	%cres_127 = mul %cidVal_123 %cres_126
	%cres_128 = sub %cres_122 %cres_127
	store %cres_128 %cvarAddr_117
	%cidVal_129 = load %cvarAddr_117
	%cres_130 = ge %cidVal_129 0
	br %cres_130 <34> <35>

<34> cif_true
	%cidVal_131 = load %cvarAddr_117
	store %cidVal_131 %global2local_346
	br <36>

<35> cif_false
	%cidVal_132 = load %cvarAddr_117
	mov %cidVal_133 2147483647
	%cres_134 = add %cidVal_132 %cidVal_133
	store %cres_134 %global2local_346
	br <36>

<36> cif_merge
	%cidVal_135 = load %global2local_346
	store %cidVal_135 %retValAddr_116
	br <32>

<32> after_call
	%res_22 = load %retValAddr_116
	%res_23 = mod %res_22 10
	%res_24 = add %res_23 1
	store %res_24 %global2local_348
	%idVal_25 = load %global2local_348
	__printlnInt ( %idVal_25 )
	br <7>

<7> for_cond
	%idVal_26 = load %varAddr_6
	%idVal_27 = load %global2local_348
	%res_28 = sub %idVal_27 1
	%res_29 = lt %idVal_26 %res_28
	br %res_29 <8> <10>

<8> for_body
	br <38>

<38> centry
	mov %cidVal_138 48271
	%cidVal_139 = load %global2local_346
	%cidVal_140 = load %global2local_343
	%cres_141 = mod %cidVal_139 %cidVal_140
	%cres_142 = mul %cidVal_138 %cres_141
	%cidVal_143 = load %global2local_349
	%cidVal_144 = load %global2local_346
	%cidVal_145 = load %global2local_343
	%cres_146 = div %cidVal_144 %cidVal_145
	%cres_147 = mul %cidVal_143 %cres_146
	%cres_148 = sub %cres_142 %cres_147
	store %cres_148 %cvarAddr_137
	%cidVal_149 = load %cvarAddr_137
	%cres_150 = ge %cidVal_149 0
	br %cres_150 <39> <40>

<39> cif_true
	%cidVal_151 = load %cvarAddr_137
	store %cidVal_151 %global2local_346
	br <41>

<40> cif_false
	%cidVal_152 = load %cvarAddr_137
	mov %cidVal_153 2147483647
	%cres_154 = add %cidVal_152 %cidVal_153
	store %cres_154 %global2local_346
	br <41>

<41> cif_merge
	%cidVal_155 = load %global2local_346
	store %cidVal_155 %retValAddr_136
	br <37>

<37> after_call
	%res_30 = load %retValAddr_136
	%res_31 = mod %res_30 10
	%res_32 = add %res_31 1
	%arrayBase_33 = load %global2local_345
	%idVal_34 = load %varAddr_6
	%offset_35 = mul %idVal_34 8
	%elementAddr_36 = add %arrayBase_33 %offset_35
	store %res_32 %elementAddr_36
	br <11>

<11> while_cond
	%arrayBase_37 = load %global2local_345
	%idVal_38 = load %varAddr_6
	%offset_39 = mul %idVal_38 8
	%elementAddr_40 = add %arrayBase_37 %offset_39
	%elementVal_41 = load %elementAddr_40
	%idVal_42 = load %varAddr_7
	%res_43 = add %elementVal_41 %idVal_42
	%idVal_44 = load %global2local_344
	%res_45 = gt %res_43 %idVal_44
	br %res_45 <12> <13>

<12> while_body
	br <43>

<43> centry
	mov %cidVal_158 48271
	%cidVal_159 = load %global2local_346
	%cidVal_160 = load %global2local_343
	%cres_161 = mod %cidVal_159 %cidVal_160
	%cres_162 = mul %cidVal_158 %cres_161
	%cidVal_163 = load %global2local_349
	%cidVal_164 = load %global2local_346
	%cidVal_165 = load %global2local_343
	%cres_166 = div %cidVal_164 %cidVal_165
	%cres_167 = mul %cidVal_163 %cres_166
	%cres_168 = sub %cres_162 %cres_167
	store %cres_168 %cvarAddr_157
	%cidVal_169 = load %cvarAddr_157
	%cres_170 = ge %cidVal_169 0
	br %cres_170 <44> <45>

<44> cif_true
	%cidVal_171 = load %cvarAddr_157
	store %cidVal_171 %global2local_346
	br <46>

<45> cif_false
	%cidVal_172 = load %cvarAddr_157
	mov %cidVal_173 2147483647
	%cres_174 = add %cidVal_172 %cidVal_173
	store %cres_174 %global2local_346
	br <46>

<46> cif_merge
	%cidVal_175 = load %global2local_346
	store %cidVal_175 %retValAddr_156
	br <42>

<42> after_call
	%res_46 = load %retValAddr_156
	%res_47 = mod %res_46 10
	%res_48 = add %res_47 1
	%arrayBase_49 = load %global2local_345
	%idVal_50 = load %varAddr_6
	%offset_51 = mul %idVal_50 8
	%elementAddr_52 = add %arrayBase_49 %offset_51
	store %res_48 %elementAddr_52
	br <11>

<13> while_end
	%idVal_53 = load %varAddr_7
	%arrayBase_54 = load %global2local_345
	%idVal_55 = load %varAddr_6
	%offset_56 = mul %idVal_55 8
	%elementAddr_57 = add %arrayBase_54 %offset_56
	%elementVal_58 = load %elementAddr_57
	%res_59 = add %idVal_53 %elementVal_58
	store %res_59 %varAddr_7
	br <9>

<9> for_step
	%idVal_60 = load %varAddr_6
	%oldVal_61 = load %varAddr_6
	%newVal_62 = inc %oldVal_61
	store %newVal_62 %varAddr_6
	br <7>

<10> for_end
	%idVal_63 = load %global2local_344
	%idVal_64 = load %varAddr_7
	%res_65 = sub %idVal_63 %idVal_64
	%arrayBase_66 = load %global2local_345
	%idVal_67 = load %global2local_348
	%res_68 = sub %idVal_67 1
	%offset_69 = mul %res_68 8
	%elementAddr_70 = add %arrayBase_66 %offset_69
	store %res_65 %elementAddr_70
	br <48>

<48> centry
	store 0 %cvarAddr_176
	br <49>

<49> cfor_cond
	%cidVal_177 = load %cvarAddr_176
	%cidVal_178 = load %global2local_348
	%cres_179 = lt %cidVal_177 %cidVal_178
	br %cres_179 <50> <52>

<50> cfor_body
	%carrayBase_180 = load %global2local_345
	%cidVal_181 = load %cvarAddr_176
	%coffset_182 = mul %cidVal_181 8
	%celementAddr_183 = add %carrayBase_180 %coffset_182
	%celementVal_184 = load %celementAddr_183
	__printInt ( %celementVal_184 )
	print ( $str_0 )
	br <51>

<51> cfor_step
	%cidVal_185 = load %cvarAddr_176
	%coldVal_186 = load %cvarAddr_176
	%cnewVal_187 = inc %coldVal_186
	store %cnewVal_187 %cvarAddr_176
	br <49>

<52> cfor_end
	println ( $str_1 )
	br <47>

<47> after_call
	br <54>

<54> centry
	store 0 %cvarAddr_189
	br <55>

<55> cfor_cond
	%cidVal_190 = load %cvarAddr_189
	%cidVal_191 = load %global2local_348
	%cres_192 = lt %cidVal_190 %cidVal_191
	br %cres_192 <56> <66>

<56> cfor_body
	%carrayBase_193 = load %global2local_345
	%cidVal_194 = load %cvarAddr_189
	%coffset_195 = mul %cidVal_194 8
	%celementAddr_196 = add %carrayBase_193 %coffset_195
	%celementVal_197 = load %celementAddr_196
	%cres_198 = eq %celementVal_197 0
	br %cres_198 <57> <64>

<57> cif_true
	%cidVal_199 = load %cvarAddr_189
	%cres_200 = add %cidVal_199 1
	store %cres_200 %cvarAddr_188
	br <58>

<58> cfor_cond
	%cidVal_201 = load %cvarAddr_188
	%cidVal_202 = load %global2local_348
	%cres_203 = lt %cidVal_201 %cidVal_202
	br %cres_203 <59> <63>

<59> cfor_body
	%carrayBase_204 = load %global2local_345
	%cidVal_205 = load %cvarAddr_188
	%coffset_206 = mul %cidVal_205 8
	%celementAddr_207 = add %carrayBase_204 %coffset_206
	%celementVal_208 = load %celementAddr_207
	%cres_209 = neq %celementVal_208 0
	br %cres_209 <60> <61>

<60> cif_true
	%cidVal_210 = load %cvarAddr_189
	%cidVal_211 = load %cvarAddr_188
	br <100>

<100> centry
	store %cidVal_210 %cargAddr_301
	store %cidVal_211 %cargAddr_300
	%carrayBase_302 = load %global2local_345
	%cidVal_303 = load %cargAddr_301
	%coffset_304 = mul %cidVal_303 8
	%celementAddr_305 = add %carrayBase_302 %coffset_304
	%celementVal_306 = load %celementAddr_305
	store %celementVal_306 %cvarAddr_299
	%carrayBase_307 = load %global2local_345
	%cidVal_308 = load %cargAddr_300
	%coffset_309 = mul %cidVal_308 8
	%celementAddr_310 = add %carrayBase_307 %coffset_309
	%celementVal_311 = load %celementAddr_310
	%carrayBase_312 = load %global2local_345
	%cidVal_313 = load %cargAddr_301
	%coffset_314 = mul %cidVal_313 8
	%celementAddr_315 = add %carrayBase_312 %coffset_314
	store %celementVal_311 %celementAddr_315
	%cidVal_316 = load %cvarAddr_299
	%carrayBase_317 = load %global2local_345
	%cidVal_318 = load %cargAddr_300
	%coffset_319 = mul %cidVal_318 8
	%celementAddr_320 = add %carrayBase_317 %coffset_319
	store %cidVal_316 %celementAddr_320
	br <99>

<99> after_call
	br <63>

<61> cif_merge
	br <62>

<62> cfor_step
	%cidVal_212 = load %cvarAddr_188
	%coldVal_213 = load %cvarAddr_188
	%cnewVal_214 = inc %coldVal_213
	store %cnewVal_214 %cvarAddr_188
	br <58>

<63> cfor_end
	br <64>

<64> cif_merge
	br <65>

<65> cfor_step
	%cidVal_215 = load %cvarAddr_189
	%coldVal_216 = load %cvarAddr_189
	%cnewVal_217 = inc %coldVal_216
	store %cnewVal_217 %cvarAddr_189
	br <55>

<66> cfor_end
	store 0 %cvarAddr_189
	br <67>

<67> cfor_cond
	%cidVal_218 = load %cvarAddr_189
	%cidVal_219 = load %global2local_348
	%cres_220 = lt %cidVal_218 %cidVal_219
	br %cres_220 <68> <72>

<68> cfor_body
	%carrayBase_221 = load %global2local_345
	%cidVal_222 = load %cvarAddr_189
	%coffset_223 = mul %cidVal_222 8
	%celementAddr_224 = add %carrayBase_221 %coffset_223
	%celementVal_225 = load %celementAddr_224
	%cres_226 = eq %celementVal_225 0
	br %cres_226 <69> <70>

<69> cif_true
	%cidVal_227 = load %cvarAddr_189
	store %cidVal_227 %global2local_348
	br <72>

<70> cif_merge
	br <71>

<71> cfor_step
	%cidVal_228 = load %cvarAddr_189
	%coldVal_229 = load %cvarAddr_189
	%cnewVal_230 = inc %coldVal_229
	store %cnewVal_230 %cvarAddr_189
	br <67>

<72> cfor_end
	br <53>

<53> after_call
	br <14>

<14> while_cond
	%tmp_364 = load %global2local_345
	store %tmp_364 @a
	%tmp_365 = load %global2local_347
	store %tmp_365 @h
	%tmp_366 = load %global2local_348
	store %tmp_366 @now
	%res_71 = win ( )
	br %res_71 <16> <15>

<15> while_body
	%idVal_72 = load %varAddr_8
	%oldVal_73 = load %varAddr_8
	%newVal_74 = inc %oldVal_73
	store %newVal_74 %varAddr_8
	br <74>

<74> centry
	store 0 %cvarAddr_231
	br <75>

<75> cfor_cond
	%cidVal_232 = load %cvarAddr_231
	%cidVal_233 = load %global2local_348
	%cres_234 = lt %cidVal_232 %cidVal_233
	br %cres_234 <76> <78>

<76> cfor_body
	%carrayBase_235 = load %global2local_345
	%cidVal_236 = load %cvarAddr_231
	%coffset_237 = mul %cidVal_236 8
	%celementAddr_238 = add %carrayBase_235 %coffset_237
	%celementVal_239 = load %celementAddr_238
	%carrayBase_240 = load %global2local_345
	%cidVal_241 = load %cvarAddr_231
	%coffset_242 = mul %cidVal_241 8
	%celementAddr_243 = add %carrayBase_240 %coffset_242
	%coldVal_244 = load %celementAddr_243
	%cnewVal_245 = dec %coldVal_244
	store %cnewVal_245 %celementAddr_243
	%cidVal_246 = load %cvarAddr_231
	%cres_247 = add %cidVal_246 1
	store %cres_247 %cvarAddr_231
	br <77>

<77> cfor_step
	br <75>

<78> cfor_end
	%cidVal_248 = load %global2local_348
	%carrayBase_249 = load %global2local_345
	%cidVal_250 = load %global2local_348
	%coffset_251 = mul %cidVal_250 8
	%celementAddr_252 = add %carrayBase_249 %coffset_251
	store %cidVal_248 %celementAddr_252
	%cidVal_253 = load %global2local_348
	%coldVal_254 = load %global2local_348
	%cnewVal_255 = inc %coldVal_254
	store %cnewVal_255 %global2local_348
	br <73>

<73> after_call
	br <80>

<80> centry
	store 0 %cvarAddr_257
	br <81>

<81> cfor_cond
	%cidVal_258 = load %cvarAddr_257
	%cidVal_259 = load %global2local_348
	%cres_260 = lt %cidVal_258 %cidVal_259
	br %cres_260 <82> <92>

<82> cfor_body
	%carrayBase_261 = load %global2local_345
	%cidVal_262 = load %cvarAddr_257
	%coffset_263 = mul %cidVal_262 8
	%celementAddr_264 = add %carrayBase_261 %coffset_263
	%celementVal_265 = load %celementAddr_264
	%cres_266 = eq %celementVal_265 0
	br %cres_266 <83> <90>

<83> cif_true
	%cidVal_267 = load %cvarAddr_257
	%cres_268 = add %cidVal_267 1
	store %cres_268 %cvarAddr_256
	br <84>

<84> cfor_cond
	%cidVal_269 = load %cvarAddr_256
	%cidVal_270 = load %global2local_348
	%cres_271 = lt %cidVal_269 %cidVal_270
	br %cres_271 <85> <89>

<85> cfor_body
	%carrayBase_272 = load %global2local_345
	%cidVal_273 = load %cvarAddr_256
	%coffset_274 = mul %cidVal_273 8
	%celementAddr_275 = add %carrayBase_272 %coffset_274
	%celementVal_276 = load %celementAddr_275
	%cres_277 = neq %celementVal_276 0
	br %cres_277 <86> <87>

<86> cif_true
	%cidVal_278 = load %cvarAddr_257
	%cidVal_279 = load %cvarAddr_256
	br <102>

<102> centry
	store %cidVal_278 %cargAddr_323
	store %cidVal_279 %cargAddr_322
	%carrayBase_324 = load %global2local_345
	%cidVal_325 = load %cargAddr_323
	%coffset_326 = mul %cidVal_325 8
	%celementAddr_327 = add %carrayBase_324 %coffset_326
	%celementVal_328 = load %celementAddr_327
	store %celementVal_328 %cvarAddr_321
	%carrayBase_329 = load %global2local_345
	%cidVal_330 = load %cargAddr_322
	%coffset_331 = mul %cidVal_330 8
	%celementAddr_332 = add %carrayBase_329 %coffset_331
	%celementVal_333 = load %celementAddr_332
	%carrayBase_334 = load %global2local_345
	%cidVal_335 = load %cargAddr_323
	%coffset_336 = mul %cidVal_335 8
	%celementAddr_337 = add %carrayBase_334 %coffset_336
	store %celementVal_333 %celementAddr_337
	%cidVal_338 = load %cvarAddr_321
	%carrayBase_339 = load %global2local_345
	%cidVal_340 = load %cargAddr_322
	%coffset_341 = mul %cidVal_340 8
	%celementAddr_342 = add %carrayBase_339 %coffset_341
	store %cidVal_338 %celementAddr_342
	br <101>

<101> after_call
	br <89>

<87> cif_merge
	br <88>

<88> cfor_step
	%cidVal_280 = load %cvarAddr_256
	%coldVal_281 = load %cvarAddr_256
	%cnewVal_282 = inc %coldVal_281
	store %cnewVal_282 %cvarAddr_256
	br <84>

<89> cfor_end
	br <90>

<90> cif_merge
	br <91>

<91> cfor_step
	%cidVal_283 = load %cvarAddr_257
	%coldVal_284 = load %cvarAddr_257
	%cnewVal_285 = inc %coldVal_284
	store %cnewVal_285 %cvarAddr_257
	br <81>

<92> cfor_end
	store 0 %cvarAddr_257
	br <93>

<93> cfor_cond
	%cidVal_286 = load %cvarAddr_257
	%cidVal_287 = load %global2local_348
	%cres_288 = lt %cidVal_286 %cidVal_287
	br %cres_288 <94> <98>

<94> cfor_body
	%carrayBase_289 = load %global2local_345
	%cidVal_290 = load %cvarAddr_257
	%coffset_291 = mul %cidVal_290 8
	%celementAddr_292 = add %carrayBase_289 %coffset_291
	%celementVal_293 = load %celementAddr_292
	%cres_294 = eq %celementVal_293 0
	br %cres_294 <95> <96>

<95> cif_true
	%cidVal_295 = load %cvarAddr_257
	store %cidVal_295 %global2local_348
	br <98>

<96> cif_merge
	br <97>

<97> cfor_step
	%cidVal_296 = load %cvarAddr_257
	%coldVal_297 = load %cvarAddr_257
	%cnewVal_298 = inc %coldVal_297
	store %cnewVal_298 %cvarAddr_257
	br <93>

<98> cfor_end
	br <79>

<79> after_call
	br <14>

<16> while_end
	print ( $str_4 )
	%idVal_75 = load %varAddr_8
	__printInt ( %idVal_75 )
	println ( $str_5 )
	br <3>

<3> for_step
	%idVal_76 = load %varAddr_0
	%oldVal_77 = load %varAddr_0
	%newVal_78 = inc %oldVal_77
	store %newVal_78 %varAddr_0
	br <1>

<4> for_end
	%tmp_367 = load %global2local_343
	store %tmp_367 @Q
	%tmp_368 = load %global2local_344
	store %tmp_368 @n
	%tmp_369 = load %global2local_345
	store %tmp_369 @a
	%tmp_370 = load %global2local_346
	store %tmp_370 @seed
	%tmp_371 = load %global2local_347
	store %tmp_371 @h
	%tmp_372 = load %global2local_348
	store %tmp_372 @now
	%tmp_373 = load %global2local_349
	store %tmp_373 @R
	ret 0

}

