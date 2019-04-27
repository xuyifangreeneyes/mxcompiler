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
	%varAddr_35 = alloca 4
	%varAddr_34 = alloca 4
	%varAddr_33 = alloca 4
	%varAddr_32 = alloca 4
	store 0 %varAddr_34
	store 1 %varAddr_35
	br <1>

<1> for_cond
	%varDef_23 = load %varAddr_34
	%varDef_24 = load %varAddr_35
	%res_6 = le %varDef_24 5
	br %res_6 <2> <4>

<2> for_body
	store %varDef_23 %varAddr_32
	store 1 %varAddr_33
	br <5>

<5> for_cond
	%varDef_27 = load %varAddr_32
	%varDef_28 = load %varAddr_33
	%res_9 = le %varDef_28 5
	br %res_9 <6> <3>

<6> for_body
	%res_12 = add %varDef_27 %varDef_24
	%newVal_15 = inc %varDef_28
	store %res_12 %varAddr_32
	store %newVal_15 %varAddr_33
	br <5>

<3> for_step
	%newVal_18 = inc %varDef_24
	store %varDef_27 %varAddr_34
	store %newVal_18 %varAddr_35
	br <1>

<4> for_end
	ret %varDef_23

}

