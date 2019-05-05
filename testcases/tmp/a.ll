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
	%arrayBase_5 = load @a
	%idVal_6 = load %argAddr_1
	%offset_7 = mul %idVal_6 8
	%elementAddr_8 = add %arrayBase_5 %offset_7
	%elementVal_9 = load %elementAddr_8
	store %elementVal_9 %varAddr_4
	%arrayBase_10 = load @a
	%idVal_11 = load %argAddr_3
	%offset_12 = mul %idVal_11 8
	%elementAddr_13 = add %arrayBase_10 %offset_12
	%elementVal_14 = load %elementAddr_13
	%arrayBase_15 = load @a
	%idVal_16 = load %argAddr_1
	%offset_17 = mul %idVal_16 8
	%elementAddr_18 = add %arrayBase_15 %offset_17
	store %elementVal_14 %elementAddr_18
	%idVal_19 = load %varAddr_4
	%arrayBase_20 = load @a
	%idVal_21 = load %argAddr_3
	%offset_22 = mul %idVal_21 8
	%elementAddr_23 = add %arrayBase_20 %offset_22
	store %idVal_19 %elementAddr_23
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
	%arrayBase_4 = load @a
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
	%varAddr_7 = alloca 8
	%varAddr_2 = alloca 8
	%varAddr_1 = alloca 8
	%varAddr_0 = alloca 8
	%memberLength_4 = mul 101 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store 101 %arrayPtr_3
	%arrayBase_6 = add %arrayPtr_3 8
	store %arrayBase_6 %varAddr_2
	%idVal_8 = load @now
	%idVal_9 = load @h
	%res_10 = neq %idVal_8 %idVal_9
	br %res_10 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	store 0 %varAddr_1
	br <3>

<3> for_cond
	%idVal_11 = load %varAddr_1
	%idVal_12 = load @now
	%res_13 = lt %idVal_11 %idVal_12
	br %res_13 <4> <6>

<4> for_body
	%arrayBase_14 = load @a
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
	%idVal_27 = load @now
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
	%idVal_33 = load @now
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
	%idVal_72 = load @now
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
	%varAddr_10 = alloca 8
	%varAddr_0 = alloca 8
	store 0 %varAddr_0
	br <1>

<1> for_cond
	%idVal_1 = load %varAddr_0
	%idVal_2 = load @now
	%res_3 = lt %idVal_1 %idVal_2
	br %res_3 <2> <4>

<2> for_body
	%arrayBase_4 = load @a
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
	%idVal_14 = load @now
	%res_15 = lt %idVal_13 %idVal_14
	br %res_15 <8> <10>

<8> for_body
	%arrayBase_16 = load @a
	%idVal_17 = load %varAddr_10
	%offset_18 = mul %idVal_17 8
	%elementAddr_19 = add %arrayBase_16 %offset_18
	%elementVal_20 = load %elementAddr_19
	%res_21 = neq %elementVal_20 0
	br %res_21 <11> <12>

<11> if_true
	%idVal_22 = load %varAddr_0
	%idVal_23 = load %varAddr_10
	swap ( %idVal_22 %idVal_23 )
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
	%idVal_31 = load @now
	%res_32 = lt %idVal_30 %idVal_31
	br %res_32 <14> <16>

<14> for_body
	%arrayBase_33 = load @a
	%idVal_34 = load %varAddr_0
	%offset_35 = mul %idVal_34 8
	%elementAddr_36 = add %arrayBase_33 %offset_35
	%elementVal_37 = load %elementAddr_36
	%res_38 = eq %elementVal_37 0
	br %res_38 <17> <18>

<17> if_true
	%idVal_39 = load %varAddr_0
	store %idVal_39 @now
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
	%arrayBase_4 = load @a
	%idVal_5 = load %varAddr_0
	%offset_6 = mul %idVal_5 8
	%elementAddr_7 = add %arrayBase_4 %offset_6
	%elementVal_8 = load %elementAddr_7
	%arrayBase_9 = load @a
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
	%idVal_17 = load @now
	%arrayBase_18 = load @a
	%idVal_19 = load @now
	%offset_20 = mul %idVal_19 8
	%elementAddr_21 = add %arrayBase_18 %offset_20
	store %idVal_17 %elementAddr_21
	%idVal_22 = load @now
	%oldVal_23 = load @now
	%newVal_24 = inc %oldVal_23
	store %newVal_24 @now
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
	%memberLength_10 = mul 200 8
	%arrayLength_11 = add %memberLength_10 8
	%arrayPtr_9 = malloc %arrayLength_11
	store 200 %arrayPtr_9
	%arrayBase_12 = add %arrayPtr_9 8
	store %arrayBase_12 @a
	%idVal_13 = load @M
	%idVal_14 = load @A
	%res_15 = div %idVal_13 %idVal_14
	store %res_15 @Q
	%idVal_16 = load @M
	%idVal_17 = load @A
	%res_18 = mod %idVal_16 %idVal_17
	store %res_18 @R
	%idVal_20 = load @n
	%res_19 = pd ( %idVal_20 )
	br %res_19 <6> <5>

<5> if_true
	println ( $str_2 )
	ret 1

<6> if_merge
	println ( $str_3 )
	%res_21 = random ( )
	initialize ( %res_21 )
	%res_22 = random ( )
	%res_23 = mod %res_22 10
	%res_24 = add %res_23 1
	store %res_24 @now
	%idVal_25 = load @now
	__printlnInt ( %idVal_25 )
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
	%arrayBase_33 = load @a
	%idVal_34 = load %varAddr_6
	%offset_35 = mul %idVal_34 8
	%elementAddr_36 = add %arrayBase_33 %offset_35
	store %res_32 %elementAddr_36
	br <11>

<11> while_cond
	%arrayBase_37 = load @a
	%idVal_38 = load %varAddr_6
	%offset_39 = mul %idVal_38 8
	%elementAddr_40 = add %arrayBase_37 %offset_39
	%elementVal_41 = load %elementAddr_40
	%idVal_42 = load %varAddr_7
	%res_43 = add %elementVal_41 %idVal_42
	%idVal_44 = load @n
	%res_45 = gt %res_43 %idVal_44
	br %res_45 <12> <13>

<12> while_body
	%res_46 = random ( )
	%res_47 = mod %res_46 10
	%res_48 = add %res_47 1
	%arrayBase_49 = load @a
	%idVal_50 = load %varAddr_6
	%offset_51 = mul %idVal_50 8
	%elementAddr_52 = add %arrayBase_49 %offset_51
	store %res_48 %elementAddr_52
	br <11>

<13> while_end
	%idVal_53 = load %varAddr_7
	%arrayBase_54 = load @a
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
	%idVal_63 = load @n
	%idVal_64 = load %varAddr_7
	%res_65 = sub %idVal_63 %idVal_64
	%arrayBase_66 = load @a
	%idVal_67 = load @now
	%res_68 = sub %idVal_67 1
	%offset_69 = mul %res_68 8
	%elementAddr_70 = add %arrayBase_66 %offset_69
	store %res_65 %elementAddr_70
	show ( )
	merge ( )
	br <14>

<14> while_cond
	%res_71 = win ( )
	br %res_71 <16> <15>

<15> while_body
	%idVal_72 = load %varAddr_8
	%oldVal_73 = load %varAddr_8
	%newVal_74 = inc %oldVal_73
	store %newVal_74 %varAddr_8
	move ( )
	merge ( )
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
	ret 0

}

