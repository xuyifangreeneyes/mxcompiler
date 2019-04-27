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
	mov %varDef_20 5
	mov %varDef_21 0
	mov %varDef_22 1
	br <1>

<1> for_cond
	%varDef_23 = phi <0> %varDef_21 <3> %varDef_27
	%varDef_24 = phi <0> %varDef_22 <3> %varDef_31
	%varDef_25 = phi <0> 0 <3> %varDef_28
	mov %idVal_4 %varDef_24
	mov %idVal_5 %varDef_20
	%res_6 = le %idVal_4 %idVal_5
	br %res_6 <2> <4>

<2> for_body
	mov %varDef_26 1
	br <5>

<5> for_cond
	%varDef_27 = phi <2> %varDef_23 <6> %varDef_29
	%varDef_28 = phi <2> %varDef_26 <6> %varDef_30
	mov %idVal_7 %varDef_28
	mov %idVal_8 %varDef_20
	%res_9 = le %idVal_7 %idVal_8
	br %res_9 <6> <3>

<6> for_body
	mov %idVal_10 %varDef_27
	mov %idVal_11 %varDef_24
	%res_12 = add %idVal_10 %idVal_11
	mov %varDef_29 %res_12
	mov %idVal_13 %varDef_28
	mov %oldVal_14 %varDef_28
	%newVal_15 = inc %oldVal_14
	mov %varDef_30 %newVal_15
	br <5>

<3> for_step
	mov %idVal_16 %varDef_24
	mov %oldVal_17 %varDef_24
	%newVal_18 = inc %oldVal_17
	mov %varDef_31 %newVal_18
	br <1>

<4> for_end
	mov %idVal_19 %varDef_23
	ret %idVal_19

}

