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
	ret 

}

define main ( ) {
<0> entry
	%varAddr_3 = alloca 8
	%varAddr_2 = alloca 8
	%varAddr_1 = alloca 8
	%varAddr_0 = alloca 8
	store 5 %varAddr_0
	store 0 %varAddr_1
	store 1 %varAddr_2
	br <1>

<1> for_cond
	%idVal_4 = load %varAddr_2
	%idVal_5 = load %varAddr_0
	%res_6 = le %idVal_4 %idVal_5
	br %res_6 <2> <4>

<2> for_body
	store 1 %varAddr_3
	br <5>

<5> for_cond
	%idVal_7 = load %varAddr_3
	%idVal_8 = load %varAddr_0
	%res_9 = le %idVal_7 %idVal_8
	br %res_9 <6> <8>

<6> for_body
	%idVal_10 = load %varAddr_1
	%idVal_11 = load %varAddr_2
	%res_12 = add %idVal_10 %idVal_11
	store %res_12 %varAddr_1
	br <7>

<7> for_step
	%idVal_13 = load %varAddr_3
	%oldVal_14 = load %varAddr_3
	%newVal_15 = inc %oldVal_14
	store %newVal_15 %varAddr_3
	br <5>

<8> for_end
	br <3>

<3> for_step
	%idVal_16 = load %varAddr_2
	%oldVal_17 = load %varAddr_2
	%newVal_18 = inc %oldVal_17
	store %newVal_18 %varAddr_2
	br <1>

<4> for_end
	%idVal_19 = load %varAddr_1
	ret %idVal_19

}

