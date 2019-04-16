@n

@h

@now

@a

@A

@M

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
	store 48271 @A
	store 2147483647 @M
	store 1 @seed
	ret 

}

define random ( ) {
<0> entry
	%varAddr_0 = alloca 8
	%idVal_1 = load @A
	%idVal_2 = load @seed
	%idVal_3 = load @Q
	%res_4 = mod %idVal_2 %idVal_3
	%res_5 = mul %idVal_1 %res_4
	%idVal_6 = load @R
	%idVal_7 = load @seed
	%idVal_8 = load @Q
	%res_9 = div %idVal_7 %idVal_8
	%res_10 = mul %idVal_6 %res_9
	%res_11 = sub %res_5 %res_10
	store %res_11 %varAddr_0
	%idVal_12 = load %varAddr_0
	%res_13 = ge %idVal_12 0
	br %res_13 <1> <2>

<1> if_true
	%idVal_14 = load %varAddr_0
	store %idVal_14 @seed
	br <3>

<2> if_false
	%idVal_15 = load %varAddr_0
	%idVal_16 = load @M
	%res_17 = add %idVal_15 %idVal_16
	store %res_17 @seed
	br <3>

<3> if_merge
	%idVal_18 = load @seed
	ret %idVal_18

}

define initialize ( %argVal_0 ) {
<0> entry
	%argAddr_1 = alloca 8
	store %argVal_0 %argAddr_1
	%idVal_2 = load %argAddr_1
	store %idVal_2 @seed
	ret 

}

define swap ( %argVal_0 %argVal_2 ) {
<0> entry
	%varAddr_4 = alloca 8
	%argAddr_3 = alloca 8
	%argAddr_1 = alloca 8
	store %argVal_0 %argAddr_1
	store %argVal_2 %argAddr_3
	%arrayPtr_5 = load @a
	%arrayBase_6 = add %arrayPtr_5 8
	%idVal_7 = load %argAddr_1
	%offset_8 = mul %idVal_7 8
	%elementAddr_9 = add %arrayBase_6 %offset_8
	%elementVal_10 = load %elementAddr_9
	store %elementVal_10 %varAddr_4
	%arrayPtr_11 = load @a
	%arrayBase_12 = add %arrayPtr_11 8
	%idVal_13 = load %argAddr_3
	%offset_14 = mul %idVal_13 8
	%elementAddr_15 = add %arrayBase_12 %offset_14
	%elementVal_16 = load %elementAddr_15
	%arrayPtr_17 = load @a
	%arrayBase_18 = add %arrayPtr_17 8
	%idVal_19 = load %argAddr_1
	%offset_20 = mul %idVal_19 8
	%elementAddr_21 = add %arrayBase_18 %offset_20
	store %elementVal_16 %elementAddr_21
	%idVal_22 = load %varAddr_4
	%arrayPtr_23 = load @a
	%arrayBase_24 = add %arrayPtr_23 8
	%idVal_25 = load %argAddr_3
	%offset_26 = mul %idVal_25 8
	%elementAddr_27 = add %arrayBase_24 %offset_26
	store %idVal_22 %elementAddr_27
	ret 

}

define pd ( %argVal_0 ) {
<0> entry
	%argAddr_1 = alloca 8
	store %argVal_0 %argAddr_1
	br <1>

<1> for_cond
	%idVal_2 = load @h
	%idVal_3 = load %argAddr_1
	%res_4 = le %idVal_2 %idVal_3
	br %res_4 <2> <4>

<2> for_body
	%idVal_5 = load %argAddr_1
	%idVal_6 = load @h
	%idVal_7 = load @h
	%res_8 = add %idVal_7 1
	%res_9 = mul %idVal_6 %res_8
	%res_10 = div %res_9 2
	%res_11 = eq %idVal_5 %res_10
	br %res_11 <5> <6>

<5> if_true
	ret 1

<6> if_merge
	br <3>

<3> for_step
	%idVal_12 = load @h
	%oldVal_13 = load @h
	%newVal_14 = inc %oldVal_13
	store %newVal_14 @h
	br <1>

<4> for_end
	ret 0

}

define show ( ) {
<0> entry
	%varAddr_0 = alloca 8
	store 0 %varAddr_0
	br <1>

<1> for_cond
	%idVal_1 = load %varAddr_0
	%idVal_2 = load @now
	%res_3 = lt %idVal_1 %idVal_2
	br %res_3 <2> <4>

<2> for_body
	%arrayPtr_5 = load @a
	%arrayBase_6 = add %arrayPtr_5 8
	%idVal_7 = load %varAddr_0
	%offset_8 = mul %idVal_7 8
	%elementAddr_9 = add %arrayBase_6 %offset_8
	%elementVal_10 = load %elementAddr_9
	%res_4 = toString ( %elementVal_10 )
	%res_11 = _stringAdd ( %res_4 $str_0 )
	print ( %res_11 )
	br <3>

<3> for_step
	%idVal_12 = load %varAddr_0
	%oldVal_13 = load %varAddr_0
	%newVal_14 = inc %oldVal_13
	store %newVal_14 %varAddr_0
	br <1>

<4> for_end
	println ( $str_1 )
	ret 

}

define win ( ) {
<0> entry
	%varAddr_6 = alloca 8
	%varAddr_2 = alloca 8
	%varAddr_1 = alloca 8
	%varAddr_0 = alloca 8
	%memberLength_4 = mul 101 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store 101 %arrayPtr_3
	store %arrayPtr_3 %varAddr_2
	%idVal_7 = load @now
	%idVal_8 = load @h
	%res_9 = neq %idVal_7 %idVal_8
	br %res_9 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	store 0 %varAddr_1
	br <3>

<3> for_cond
	%idVal_10 = load %varAddr_1
	%idVal_11 = load @now
	%res_12 = lt %idVal_10 %idVal_11
	br %res_12 <4> <6>

<4> for_body
	%arrayPtr_13 = load @a
	%arrayBase_14 = add %arrayPtr_13 8
	%idVal_15 = load %varAddr_1
	%offset_16 = mul %idVal_15 8
	%elementAddr_17 = add %arrayBase_14 %offset_16
	%elementVal_18 = load %elementAddr_17
	%arrayPtr_19 = load %varAddr_2
	%arrayBase_20 = add %arrayPtr_19 8
	%idVal_21 = load %varAddr_1
	%offset_22 = mul %idVal_21 8
	%elementAddr_23 = add %arrayBase_20 %offset_22
	store %elementVal_18 %elementAddr_23
	br <5>

<5> for_step
	%idVal_24 = load %varAddr_1
	%oldVal_25 = load %varAddr_1
	%newVal_26 = inc %oldVal_25
	store %newVal_26 %varAddr_1
	br <3>

<6> for_end
	store 0 %varAddr_0
	br <7>

<7> for_cond
	%idVal_27 = load %varAddr_0
	%idVal_28 = load @now
	%res_29 = sub %idVal_28 1
	%res_30 = lt %idVal_27 %res_29
	br %res_30 <8> <10>

<8> for_body
	%idVal_31 = load %varAddr_0
	%res_32 = add %idVal_31 1
	store %res_32 %varAddr_1
	br <11>

<11> for_cond
	%idVal_33 = load %varAddr_1
	%idVal_34 = load @now
	%res_35 = lt %idVal_33 %idVal_34
	br %res_35 <12> <14>

<12> for_body
	%arrayPtr_36 = load %varAddr_2
	%arrayBase_37 = add %arrayPtr_36 8
	%idVal_38 = load %varAddr_0
	%offset_39 = mul %idVal_38 8
	%elementAddr_40 = add %arrayBase_37 %offset_39
	%elementVal_41 = load %elementAddr_40
	%arrayPtr_42 = load %varAddr_2
	%arrayBase_43 = add %arrayPtr_42 8
	%idVal_44 = load %varAddr_1
	%offset_45 = mul %idVal_44 8
	%elementAddr_46 = add %arrayBase_43 %offset_45
	%elementVal_47 = load %elementAddr_46
	%res_48 = gt %elementVal_41 %elementVal_47
	br %res_48 <15> <16>

<15> if_true
	%arrayPtr_49 = load %varAddr_2
	%arrayBase_50 = add %arrayPtr_49 8
	%idVal_51 = load %varAddr_0
	%offset_52 = mul %idVal_51 8
	%elementAddr_53 = add %arrayBase_50 %offset_52
	%elementVal_54 = load %elementAddr_53
	store %elementVal_54 %varAddr_6
	%arrayPtr_55 = load %varAddr_2
	%arrayBase_56 = add %arrayPtr_55 8
	%idVal_57 = load %varAddr_1
	%offset_58 = mul %idVal_57 8
	%elementAddr_59 = add %arrayBase_56 %offset_58
	%elementVal_60 = load %elementAddr_59
	%arrayPtr_61 = load %varAddr_2
	%arrayBase_62 = add %arrayPtr_61 8
	%idVal_63 = load %varAddr_0
	%offset_64 = mul %idVal_63 8
	%elementAddr_65 = add %arrayBase_62 %offset_64
	store %elementVal_60 %elementAddr_65
	%idVal_66 = load %varAddr_6
	%arrayPtr_67 = load %varAddr_2
	%arrayBase_68 = add %arrayPtr_67 8
	%idVal_69 = load %varAddr_1
	%offset_70 = mul %idVal_69 8
	%elementAddr_71 = add %arrayBase_68 %offset_70
	store %idVal_66 %elementAddr_71
	br <16>

<16> if_merge
	br <13>

<13> for_step
	%idVal_72 = load %varAddr_1
	%oldVal_73 = load %varAddr_1
	%newVal_74 = inc %oldVal_73
	store %newVal_74 %varAddr_1
	br <11>

<14> for_end
	br <9>

<9> for_step
	%idVal_75 = load %varAddr_0
	%oldVal_76 = load %varAddr_0
	%newVal_77 = inc %oldVal_76
	store %newVal_77 %varAddr_0
	br <7>

<10> for_end
	store 0 %varAddr_0
	br <17>

<17> for_cond
	%idVal_78 = load %varAddr_0
	%idVal_79 = load @now
	%res_80 = lt %idVal_78 %idVal_79
	br %res_80 <18> <20>

<18> for_body
	%arrayPtr_81 = load %varAddr_2
	%arrayBase_82 = add %arrayPtr_81 8
	%idVal_83 = load %varAddr_0
	%offset_84 = mul %idVal_83 8
	%elementAddr_85 = add %arrayBase_82 %offset_84
	%elementVal_86 = load %elementAddr_85
	%idVal_87 = load %varAddr_0
	%res_88 = add %idVal_87 1
	%res_89 = neq %elementVal_86 %res_88
	br %res_89 <21> <22>

<21> if_true
	ret 0

<22> if_merge
	br <19>

<19> for_step
	%idVal_90 = load %varAddr_0
	%oldVal_91 = load %varAddr_0
	%newVal_92 = inc %oldVal_91
	store %newVal_92 %varAddr_0
	br <17>

<20> for_end
	ret 1

}

define merge ( ) {
<0> entry
	%varAddr_11 = alloca 8
	%varAddr_0 = alloca 8
	store 0 %varAddr_0
	br <1>

<1> for_cond
	%idVal_1 = load %varAddr_0
	%idVal_2 = load @now
	%res_3 = lt %idVal_1 %idVal_2
	br %res_3 <2> <4>

<2> for_body
	%arrayPtr_4 = load @a
	%arrayBase_5 = add %arrayPtr_4 8
	%idVal_6 = load %varAddr_0
	%offset_7 = mul %idVal_6 8
	%elementAddr_8 = add %arrayBase_5 %offset_7
	%elementVal_9 = load %elementAddr_8
	%res_10 = eq %elementVal_9 0
	br %res_10 <5> <6>

<5> if_true
	%idVal_12 = load %varAddr_0
	%res_13 = add %idVal_12 1
	store %res_13 %varAddr_11
	br <7>

<7> for_cond
	%idVal_14 = load %varAddr_11
	%idVal_15 = load @now
	%res_16 = lt %idVal_14 %idVal_15
	br %res_16 <8> <10>

<8> for_body
	%arrayPtr_17 = load @a
	%arrayBase_18 = add %arrayPtr_17 8
	%idVal_19 = load %varAddr_11
	%offset_20 = mul %idVal_19 8
	%elementAddr_21 = add %arrayBase_18 %offset_20
	%elementVal_22 = load %elementAddr_21
	%res_23 = neq %elementVal_22 0
	br %res_23 <11> <12>

<11> if_true
	%idVal_24 = load %varAddr_0
	%idVal_25 = load %varAddr_11
	swap ( %idVal_24 %idVal_25 )
	br <10>

<12> if_merge
	br <9>

<9> for_step
	%idVal_26 = load %varAddr_11
	%oldVal_27 = load %varAddr_11
	%newVal_28 = inc %oldVal_27
	store %newVal_28 %varAddr_11
	br <7>

<10> for_end
	br <6>

<6> if_merge
	br <3>

<3> for_step
	%idVal_29 = load %varAddr_0
	%oldVal_30 = load %varAddr_0
	%newVal_31 = inc %oldVal_30
	store %newVal_31 %varAddr_0
	br <1>

<4> for_end
	store 0 %varAddr_0
	br <13>

<13> for_cond
	%idVal_32 = load %varAddr_0
	%idVal_33 = load @now
	%res_34 = lt %idVal_32 %idVal_33
	br %res_34 <14> <16>

<14> for_body
	%arrayPtr_35 = load @a
	%arrayBase_36 = add %arrayPtr_35 8
	%idVal_37 = load %varAddr_0
	%offset_38 = mul %idVal_37 8
	%elementAddr_39 = add %arrayBase_36 %offset_38
	%elementVal_40 = load %elementAddr_39
	%res_41 = eq %elementVal_40 0
	br %res_41 <17> <18>

<17> if_true
	%idVal_42 = load %varAddr_0
	store %idVal_42 @now
	br <16>

<18> if_merge
	br <15>

<15> for_step
	%idVal_43 = load %varAddr_0
	%oldVal_44 = load %varAddr_0
	%newVal_45 = inc %oldVal_44
	store %newVal_45 %varAddr_0
	br <13>

<16> for_end
	ret 

}

define move ( ) {
<0> entry
	%varAddr_0 = alloca 8
	store 0 %varAddr_0
	br <1>

<1> for_cond
	%idVal_1 = load %varAddr_0
	%idVal_2 = load @now
	%res_3 = lt %idVal_1 %idVal_2
	br %res_3 <2> <4>

<2> for_body
	%arrayPtr_4 = load @a
	%arrayBase_5 = add %arrayPtr_4 8
	%idVal_6 = load %varAddr_0
	%offset_7 = mul %idVal_6 8
	%elementAddr_8 = add %arrayBase_5 %offset_7
	%elementVal_9 = load %elementAddr_8
	%arrayPtr_10 = load @a
	%arrayBase_11 = add %arrayPtr_10 8
	%idVal_12 = load %varAddr_0
	%offset_13 = mul %idVal_12 8
	%elementAddr_14 = add %arrayBase_11 %offset_13
	%oldVal_15 = load %elementAddr_14
	%newVal_16 = dec %oldVal_15
	store %newVal_16 %elementAddr_14
	%idVal_17 = load %varAddr_0
	%res_18 = add %idVal_17 1
	store %res_18 %varAddr_0
	br <3>

<3> for_step
	br <1>

<4> for_end
	%idVal_19 = load @now
	%arrayPtr_20 = load @a
	%arrayBase_21 = add %arrayPtr_20 8
	%idVal_22 = load @now
	%offset_23 = mul %idVal_22 8
	%elementAddr_24 = add %arrayBase_21 %offset_23
	store %idVal_19 %elementAddr_24
	%idVal_25 = load @now
	%oldVal_26 = load @now
	%newVal_27 = inc %oldVal_26
	store %newVal_27 @now
	ret 

}

define main ( ) {
<0> entry
	%varAddr_8 = alloca 8
	%varAddr_7 = alloca 8
	%varAddr_6 = alloca 8
	%varAddr_1 = alloca 8
	%varAddr_0 = alloca 8
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
	store 5050 @n
	store 0 @h
	%memberLength_10 = mul 101 8
	%arrayLength_11 = add %memberLength_10 8
	%arrayPtr_9 = malloc %arrayLength_11
	store 101 %arrayPtr_9
	store %arrayPtr_9 @a
	%idVal_12 = load @M
	%idVal_13 = load @A
	%res_14 = div %idVal_12 %idVal_13
	store %res_14 @Q
	%idVal_15 = load @M
	%idVal_16 = load @A
	%res_17 = mod %idVal_15 %idVal_16
	store %res_17 @R
	%idVal_19 = load @n
	%res_18 = pd ( %idVal_19 )
	br %res_18 <6> <5>

<5> if_true
	println ( $str_2 )
	ret 1

<6> if_merge
	println ( $str_3 )
	%res_20 = random ( )
	initialize ( %res_20 )
	%res_21 = random ( )
	%res_22 = mod %res_21 10
	%res_23 = add %res_22 1
	store %res_23 @now
	%idVal_25 = load @now
	%res_24 = toString ( %idVal_25 )
	println ( %res_24 )
	br <7>

<7> for_cond
	%idVal_26 = load %varAddr_6
	%idVal_27 = load @now
	%res_28 = sub %idVal_27 1
	%res_29 = lt %idVal_26 %res_28
	br %res_29 <8> <10>

<8> for_body
	%res_30 = random ( )
	%res_31 = mod %res_30 10
	%res_32 = add %res_31 1
	%arrayPtr_33 = load @a
	%arrayBase_34 = add %arrayPtr_33 8
	%idVal_35 = load %varAddr_6
	%offset_36 = mul %idVal_35 8
	%elementAddr_37 = add %arrayBase_34 %offset_36
	store %res_32 %elementAddr_37
	br <11>

<11> while_cond
	%arrayPtr_38 = load @a
	%arrayBase_39 = add %arrayPtr_38 8
	%idVal_40 = load %varAddr_6
	%offset_41 = mul %idVal_40 8
	%elementAddr_42 = add %arrayBase_39 %offset_41
	%elementVal_43 = load %elementAddr_42
	%idVal_44 = load %varAddr_7
	%res_45 = add %elementVal_43 %idVal_44
	%idVal_46 = load @n
	%res_47 = gt %res_45 %idVal_46
	br %res_47 <12> <13>

<12> while_body
	%res_48 = random ( )
	%res_49 = mod %res_48 10
	%res_50 = add %res_49 1
	%arrayPtr_51 = load @a
	%arrayBase_52 = add %arrayPtr_51 8
	%idVal_53 = load %varAddr_6
	%offset_54 = mul %idVal_53 8
	%elementAddr_55 = add %arrayBase_52 %offset_54
	store %res_50 %elementAddr_55
	br <11>

<13> while_end
	%idVal_56 = load %varAddr_7
	%arrayPtr_57 = load @a
	%arrayBase_58 = add %arrayPtr_57 8
	%idVal_59 = load %varAddr_6
	%offset_60 = mul %idVal_59 8
	%elementAddr_61 = add %arrayBase_58 %offset_60
	%elementVal_62 = load %elementAddr_61
	%res_63 = add %idVal_56 %elementVal_62
	store %res_63 %varAddr_7
	br <9>

<9> for_step
	%idVal_64 = load %varAddr_6
	%oldVal_65 = load %varAddr_6
	%newVal_66 = inc %oldVal_65
	store %newVal_66 %varAddr_6
	br <7>

<10> for_end
	%idVal_67 = load @n
	%idVal_68 = load %varAddr_7
	%res_69 = sub %idVal_67 %idVal_68
	%arrayPtr_70 = load @a
	%arrayBase_71 = add %arrayPtr_70 8
	%idVal_72 = load @now
	%res_73 = sub %idVal_72 1
	%offset_74 = mul %res_73 8
	%elementAddr_75 = add %arrayBase_71 %offset_74
	store %res_69 %elementAddr_75
	show ( )
	merge ( )
	br <14>

<14> while_cond
	%res_76 = win ( )
	br %res_76 <16> <15>

<15> while_body
	%idVal_77 = load %varAddr_8
	%oldVal_78 = load %varAddr_8
	%newVal_79 = inc %oldVal_78
	store %newVal_79 %varAddr_8
	move ( )
	merge ( )
	br <14>

<16> while_end
	%idVal_81 = load %varAddr_8
	%res_80 = toString ( %idVal_81 )
	%res_82 = _stringAdd ( $str_4 %res_80 )
	%res_83 = _stringAdd ( %res_82 $str_5 )
	println ( %res_83 )
	br <3>

<3> for_step
	%idVal_84 = load %varAddr_0
	%oldVal_85 = load %varAddr_0
	%newVal_86 = inc %oldVal_85
	store %newVal_86 %varAddr_0
	br <1>

<4> for_end
	ret 0

}

