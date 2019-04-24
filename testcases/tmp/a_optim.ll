@a

$str_0 ""

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
	%arrayPtr_0 = malloc 40
	store 4 %arrayPtr_0
	store %arrayPtr_0 @a
	ret 

}

define main ( ) {
<0> entry
	%varAddr_66 = alloca 4
	%varAddr_65 = alloca 4
	%varAddr_64 = alloca 4
	%classPtr_2 = load @a
	%res_1 = _arraySize ( %classPtr_2 )
	%memberLength_4 = mul %res_1 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store %res_1 %arrayPtr_3
	store 0 %varAddr_65
	br <1>

<1> for_cond
	%varDef_56 = load %varAddr_65
	%classPtr_9 = load @a
	%res_8 = _arraySize ( %classPtr_9 )
	%res_10 = lt %varDef_56 %res_8
	br %res_10 <2> <4>

<2> for_body
	%arrayPtr_11 = load @a
	%arrayBase_12 = add %arrayPtr_11 8
	%offset_14 = mul %varDef_56 8
	%elementAddr_15 = add %arrayBase_12 %offset_14
	store 0 %elementAddr_15
	%res_16 = getInt ( )
	%arrayBase_18 = add %arrayPtr_3 8
	%elementAddr_21 = add %arrayBase_18 %offset_14
	store %res_16 %elementAddr_21
	%newVal_24 = inc %varDef_56
	store %newVal_24 %varAddr_65
	br <1>

<4> for_end
	store 0 %varAddr_64
	br <5>

<5> for_cond
	%varDef_59 = load %varAddr_64
	%classPtr_27 = load @a
	%res_26 = _arraySize ( %classPtr_27 )
	%res_28 = lt %varDef_59 %res_26
	br %res_28 <6> <8>

<6> for_body
	%arrayPtr_30 = load @a
	%arrayBase_31 = add %arrayPtr_30 8
	%offset_33 = mul %varDef_59 8
	%elementAddr_34 = add %arrayBase_31 %offset_33
	%elementVal_35 = load %elementAddr_34
	%res_29 = toString ( %elementVal_35 )
	print ( %res_29 )
	%newVal_38 = inc %varDef_59
	store %newVal_38 %varAddr_64
	br <5>

<8> for_end
	println ( $str_0 )
	store %arrayPtr_3 @a
	store 0 %varAddr_66
	br <9>

<9> for_cond
	%varDef_62 = load %varAddr_66
	%classPtr_42 = load @a
	%res_41 = _arraySize ( %classPtr_42 )
	%res_43 = lt %varDef_62 %res_41
	br %res_43 <10> <12>

<10> for_body
	%arrayPtr_45 = load @a
	%arrayBase_46 = add %arrayPtr_45 8
	%offset_48 = mul %varDef_62 8
	%elementAddr_49 = add %arrayBase_46 %offset_48
	%elementVal_50 = load %elementAddr_49
	%res_44 = toString ( %elementVal_50 )
	print ( %res_44 )
	%newVal_53 = inc %varDef_62
	store %newVal_53 %varAddr_66
	br <9>

<12> for_end
	ret 0

}

