$str_0 "A"

$str_1 "B"

$str_2 "C"

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
	ret 

}

define cd ( %argVal_0 %argVal_2 %argVal_4 %argVal_6 %argVal_8 ) {
<0> entry
	%argAddr_9 = alloca 8
	%argAddr_7 = alloca 8
	%argAddr_5 = alloca 8
	%argAddr_3 = alloca 8
	%argAddr_1 = alloca 8
	store %argVal_0 %argAddr_1
	store %argVal_2 %argAddr_3
	store %argVal_4 %argAddr_5
	store %argVal_6 %argAddr_7
	store %argVal_8 %argAddr_9
	%idVal_10 = load %argAddr_1
	%res_11 = eq %idVal_10 1
	br %res_11 <1> <2>

<1> if_true
	%idVal_12 = load %argAddr_9
	%oldVal_13 = load %argAddr_9
	%newVal_14 = inc %oldVal_13
	store %newVal_14 %argAddr_9
	br <3>

<2> if_false
	%idVal_16 = load %argAddr_1
	%res_17 = sub %idVal_16 1
	%idVal_18 = load %argAddr_3
	%idVal_19 = load %argAddr_7
	%idVal_20 = load %argAddr_5
	%idVal_21 = load %argAddr_9
	%res_15 = cd ( %res_17 %idVal_18 %idVal_19 %idVal_20 %idVal_21 )
	store %res_15 %argAddr_9
	%idVal_23 = load %argAddr_1
	%res_24 = sub %idVal_23 1
	%idVal_25 = load %argAddr_5
	%idVal_26 = load %argAddr_3
	%idVal_27 = load %argAddr_7
	%idVal_28 = load %argAddr_9
	%res_22 = cd ( %res_24 %idVal_25 %idVal_26 %idVal_27 %idVal_28 )
	store %res_22 %argAddr_9
	%idVal_29 = load %argAddr_9
	%oldVal_30 = load %argAddr_9
	%newVal_31 = inc %oldVal_30
	store %newVal_31 %argAddr_9
	br <3>

<3> if_merge
	%idVal_32 = load %argAddr_9
	ret %idVal_32

}

define main ( ) {
<0> entry
	%varAddr_5 = alloca 8
	%varAddr_3 = alloca 8
	%varAddr_2 = alloca 8
	%varAddr_1 = alloca 8
	%varAddr_0 = alloca 8
	store $str_0 %varAddr_0
	store $str_1 %varAddr_1
	store $str_2 %varAddr_2
	%res_4 = getInt ( )
	store %res_4 %varAddr_3
	%idVal_7 = load %varAddr_3
	%idVal_8 = load %varAddr_0
	%idVal_9 = load %varAddr_1
	%idVal_10 = load %varAddr_2
	%res_6 = cd ( %idVal_7 %idVal_8 %idVal_9 %idVal_10 0 )
	store %res_6 %varAddr_5
	%idVal_11 = load %varAddr_5
	__printlnInt ( %idVal_11 )
	ret 0

}

