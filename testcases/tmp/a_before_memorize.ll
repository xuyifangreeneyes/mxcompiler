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

define h ( %argVal_0 ) {
<0> entry
	%varAddr_7 = alloca 8
	%varAddr_6 = alloca 8
	%argAddr_1 = alloca 8
	store %argVal_0 %argAddr_1
	%idVal_2 = load %argAddr_1
	%res_3 = eq %idVal_2 0
	br %res_3 <1> <3>

<3> lhs_false
	%idVal_4 = load %argAddr_1
	%res_5 = eq %idVal_4 1
	br %res_5 <1> <2>

<1> if_true
	ret 1

<2> if_merge
	store 0 %varAddr_6
	store 0 %varAddr_7
	br <4>

<4> for_cond
	%idVal_8 = load %varAddr_7
	%idVal_9 = load %argAddr_1
	%res_10 = lt %idVal_8 %idVal_9
	br %res_10 <5> <7>

<5> for_body
	%idVal_11 = load %varAddr_6
	%idVal_13 = load %varAddr_7
	%res_12 = h ( %idVal_13 )
	%idVal_15 = load %argAddr_1
	%res_16 = sub %idVal_15 1
	%idVal_17 = load %varAddr_7
	%res_18 = sub %res_16 %idVal_17
	%res_14 = h ( %res_18 )
	%res_19 = mul %res_12 %res_14
	%res_20 = add %idVal_11 %res_19
	store %res_20 %varAddr_6
	br <6>

<6> for_step
	%idVal_21 = load %varAddr_7
	%oldVal_22 = load %varAddr_7
	%newVal_23 = inc %oldVal_22
	store %newVal_23 %varAddr_7
	br <4>

<7> for_end
	%idVal_24 = load %varAddr_6
	ret %idVal_24

}

define main ( ) {
<0> entry
	%varAddr_0 = alloca 8
	%res_1 = getInt ( )
	store %res_1 %varAddr_0
	%idVal_3 = load %varAddr_0
	%res_2 = h ( %idVal_3 )
	__printlnInt ( %res_2 )
	ret 0

}

