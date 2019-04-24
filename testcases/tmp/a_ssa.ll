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
	%memberLength_1 = mul 4 8
	%arrayLength_2 = add %memberLength_1 8
	%arrayPtr_0 = malloc %arrayLength_2
	store 4 %arrayPtr_0
	store %arrayPtr_0 @a
	ret 

}

define main ( ) {
<0> entry
	%classPtr_2 = load @a
	%res_1 = _arraySize ( %classPtr_2 )
	%memberLength_4 = mul %res_1 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store %res_1 %arrayPtr_3
	mov %varDef_54 %arrayPtr_3
	mov %varDef_55 0
	br <1>

<1> for_cond
	%varDef_56 = phi <0> %varDef_55 <2> %varDef_57
	mov %idVal_7 %varDef_56
	%classPtr_9 = load @a
	%res_8 = _arraySize ( %classPtr_9 )
	%res_10 = lt %idVal_7 %res_8
	br %res_10 <2> <4>

<2> for_body
	%arrayPtr_11 = load @a
	%arrayBase_12 = add %arrayPtr_11 8
	mov %idVal_13 %varDef_56
	%offset_14 = mul %idVal_13 8
	%elementAddr_15 = add %arrayBase_12 %offset_14
	store 0 %elementAddr_15
	%res_16 = getInt ( )
	mov %arrayPtr_17 %varDef_54
	%arrayBase_18 = add %arrayPtr_17 8
	mov %idVal_19 %varDef_56
	%offset_20 = mul %idVal_19 8
	%elementAddr_21 = add %arrayBase_18 %offset_20
	store %res_16 %elementAddr_21
	mov %idVal_22 %varDef_56
	mov %oldVal_23 %varDef_56
	%newVal_24 = inc %oldVal_23
	mov %varDef_57 %newVal_24
	br <1>

<4> for_end
	mov %varDef_58 0
	br <5>

<5> for_cond
	%varDef_59 = phi <4> %varDef_58 <6> %varDef_60
	mov %idVal_25 %varDef_59
	%classPtr_27 = load @a
	%res_26 = _arraySize ( %classPtr_27 )
	%res_28 = lt %idVal_25 %res_26
	br %res_28 <6> <8>

<6> for_body
	%arrayPtr_30 = load @a
	%arrayBase_31 = add %arrayPtr_30 8
	mov %idVal_32 %varDef_59
	%offset_33 = mul %idVal_32 8
	%elementAddr_34 = add %arrayBase_31 %offset_33
	%elementVal_35 = load %elementAddr_34
	%res_29 = toString ( %elementVal_35 )
	print ( %res_29 )
	mov %idVal_36 %varDef_59
	mov %oldVal_37 %varDef_59
	%newVal_38 = inc %oldVal_37
	mov %varDef_60 %newVal_38
	br <5>

<8> for_end
	println ( $str_0 )
	mov %idVal_39 %varDef_54
	store %idVal_39 @a
	mov %varDef_61 0
	br <9>

<9> for_cond
	%varDef_62 = phi <8> %varDef_61 <10> %varDef_63
	mov %idVal_40 %varDef_62
	%classPtr_42 = load @a
	%res_41 = _arraySize ( %classPtr_42 )
	%res_43 = lt %idVal_40 %res_41
	br %res_43 <10> <12>

<10> for_body
	%arrayPtr_45 = load @a
	%arrayBase_46 = add %arrayPtr_45 8
	mov %idVal_47 %varDef_62
	%offset_48 = mul %idVal_47 8
	%elementAddr_49 = add %arrayBase_46 %offset_48
	%elementVal_50 = load %elementAddr_49
	%res_44 = toString ( %elementVal_50 )
	print ( %res_44 )
	mov %idVal_51 %varDef_62
	mov %oldVal_52 %varDef_62
	%newVal_53 = inc %oldVal_52
	mov %varDef_63 %newVal_53
	br <9>

<12> for_end
	ret 0

}

