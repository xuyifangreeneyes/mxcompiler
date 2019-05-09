@i

@a0

@a1

@a2

@a3

@a4

@a5

@a6

@a7

@a8

@a9

@a10

@b0

@b1

@b2

@b3

@b4

@b5

@b6

@b7

@b8

@b9

@b10

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
	store 0 @i
	store 0 @a0
	store 0 @a1
	store 0 @a2
	store 0 @a3
	store 0 @a4
	store 0 @a5
	store 0 @a6
	store 0 @a7
	store 0 @a8
	store 0 @a9
	store 0 @a10
	store 0 @b0
	store 0 @b1
	store 0 @b2
	store 0 @b3
	store 0 @b4
	store 0 @b5
	store 0 @b6
	store 0 @b7
	store 0 @b8
	store 0 @b9
	store 0 @b10
	ret 

}

define main ( ) {
<0> entry
	%varAddr_1 = alloca 8
	%varAddr_0 = alloca 8
	__globalInit ( )
	store 0 %varAddr_0
	%res_2 = getInt ( )
	store %res_2 %varAddr_1
	store 0 @i
	br <1>

<1> for_cond
	%idVal_3 = load @i
	%idVal_4 = load %varAddr_1
	%res_5 = lt %idVal_3 %idVal_4
	br %res_5 <2> <4>

<2> for_body
	%idVal_6 = load @a0
	%res_7 = add %idVal_6 1
	store %res_7 @a0
	%idVal_8 = load @a1
	%res_9 = add %idVal_8 1
	store %res_9 @a1
	%idVal_10 = load @a2
	%res_11 = add %idVal_10 1
	store %res_11 @a2
	%idVal_12 = load @a0
	%res_13 = add %idVal_12 1
	store %res_13 @a3
	%idVal_14 = load @a1
	%res_15 = add %idVal_14 1
	store %res_15 @a4
	%idVal_16 = load @a2
	%res_17 = add %idVal_16 1
	store %res_17 @a5
	%idVal_18 = load @a0
	%res_19 = add %idVal_18 1
	store %res_19 @a6
	%idVal_20 = load @a1
	%res_21 = add %idVal_20 1
	store %res_21 @a7
	%idVal_22 = load @a2
	%res_23 = add %idVal_22 1
	store %res_23 @a8
	%idVal_24 = load @a0
	%res_25 = add %idVal_24 1
	store %res_25 @a9
	%idVal_26 = load @a1
	%res_27 = add %idVal_26 0
	store %res_27 @a10
	%idVal_28 = load @a0
	store %idVal_28 @b0
	%idVal_29 = load @a1
	store %idVal_29 @b1
	%idVal_30 = load @a2
	store %idVal_30 @b2
	%idVal_31 = load @a3
	store %idVal_31 @b3
	%idVal_32 = load @a4
	store %idVal_32 @b4
	%idVal_33 = load @a5
	store %idVal_33 @b5
	%idVal_34 = load @a6
	store %idVal_34 @b6
	%idVal_35 = load @a7
	store %idVal_35 @b7
	%idVal_36 = load @a8
	store %idVal_36 @b8
	%idVal_37 = load @a9
	store %idVal_37 @b9
	%idVal_38 = load @a10
	store %idVal_38 @b10
	%idVal_39 = load @i
	%res_40 = mod %idVal_39 10000000
	%res_41 = eq %res_40 0
	br %res_41 <5> <6>

<5> if_true
	%idVal_42 = load %varAddr_0
	%idVal_43 = load @a0
	%res_44 = add %idVal_42 %idVal_43
	%idVal_45 = load @a1
	%res_46 = add %res_44 %idVal_45
	%idVal_47 = load @a2
	%res_48 = add %res_46 %idVal_47
	%idVal_49 = load @a3
	%res_50 = add %res_48 %idVal_49
	%idVal_51 = load @a4
	%res_52 = add %res_50 %idVal_51
	%idVal_53 = load @a5
	%res_54 = add %res_52 %idVal_53
	%idVal_55 = load @a6
	%res_56 = add %res_54 %idVal_55
	%idVal_57 = load @a7
	%res_58 = add %res_56 %idVal_57
	%idVal_59 = load @a8
	%res_60 = add %res_58 %idVal_59
	%idVal_61 = load @a9
	%res_62 = add %res_60 %idVal_61
	%idVal_63 = load @a10
	%res_64 = add %res_62 %idVal_63
	%idVal_65 = load @b0
	%res_66 = add %res_64 %idVal_65
	%idVal_67 = load @b1
	%res_68 = add %res_66 %idVal_67
	%idVal_69 = load @b2
	%res_70 = add %res_68 %idVal_69
	%idVal_71 = load @b3
	%res_72 = add %res_70 %idVal_71
	%idVal_73 = load @b4
	%res_74 = add %res_72 %idVal_73
	%idVal_75 = load @b5
	%res_76 = add %res_74 %idVal_75
	%idVal_77 = load @b6
	%res_78 = add %res_76 %idVal_77
	%idVal_79 = load @b7
	%res_80 = add %res_78 %idVal_79
	%idVal_81 = load @b8
	%res_82 = add %res_80 %idVal_81
	%idVal_83 = load @b9
	%res_84 = add %res_82 %idVal_83
	%idVal_85 = load @b10
	%res_86 = add %res_84 %idVal_85
	%res_87 = bit_and %res_86 2147450879
	store %res_87 %varAddr_0
	br <6>

<6> if_merge
	br <3>

<3> for_step
	%idVal_88 = load @i
	%res_89 = add %idVal_88 1
	store %res_89 @i
	br <1>

<4> for_end
	%idVal_90 = load %varAddr_0
	__printlnInt ( %idVal_90 )
	ret 0

}

