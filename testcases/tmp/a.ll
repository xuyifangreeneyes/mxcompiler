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
	%varAddr_6 = alloca 8
	%varAddr_0 = alloca 8
	%classPtr_2 = load @a
	%res_1 = _arraySize ( %classPtr_2 )
	%memberLength_4 = mul %res_1 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store %res_1 %arrayPtr_3
	store %arrayPtr_3 %varAddr_0
	store 0 %varAddr_6
	br <1>

<1> for_cond
	%idVal_7 = load %varAddr_6
	%classPtr_9 = load @a
	%res_8 = _arraySize ( %classPtr_9 )
	%res_10 = lt %idVal_7 %res_8
	br %res_10 <2> <4>

<2> for_body
	%arrayPtr_11 = load @a
	%arrayBase_12 = add %arrayPtr_11 8
	%idVal_13 = load %varAddr_6
	%offset_14 = mul %idVal_13 8
	%elementAddr_15 = add %arrayBase_12 %offset_14
	store 0 %elementAddr_15
	%res_16 = getInt ( )
	%arrayPtr_17 = load %varAddr_0
	%arrayBase_18 = add %arrayPtr_17 8
	%idVal_19 = load %varAddr_6
	%offset_20 = mul %idVal_19 8
	%elementAddr_21 = add %arrayBase_18 %offset_20
	store %res_16 %elementAddr_21
	br <3>

<3> for_step
	%idVal_22 = load %varAddr_6
	%oldVal_23 = load %varAddr_6
	%newVal_24 = inc %oldVal_23
	store %newVal_24 %varAddr_6
	br <1>

<4> for_end
	store 0 %varAddr_6
	br <5>

<5> for_cond
	%idVal_25 = load %varAddr_6
	%classPtr_27 = load @a
	%res_26 = _arraySize ( %classPtr_27 )
	%res_28 = lt %idVal_25 %res_26
	br %res_28 <6> <8>

<6> for_body
	%arrayPtr_30 = load @a
	%arrayBase_31 = add %arrayPtr_30 8
	%idVal_32 = load %varAddr_6
	%offset_33 = mul %idVal_32 8
	%elementAddr_34 = add %arrayBase_31 %offset_33
	%elementVal_35 = load %elementAddr_34
	%res_29 = toString ( %elementVal_35 )
	print ( %res_29 )
	br <7>

<7> for_step
	%idVal_36 = load %varAddr_6
	%oldVal_37 = load %varAddr_6
	%newVal_38 = inc %oldVal_37
	store %newVal_38 %varAddr_6
	br <5>

<8> for_end
	println ( $str_0 )
	%idVal_39 = load %varAddr_0
	store %idVal_39 @a
	store 0 %varAddr_6
	br <9>

<9> for_cond
	%idVal_40 = load %varAddr_6
	%classPtr_42 = load @a
	%res_41 = _arraySize ( %classPtr_42 )
	%res_43 = lt %idVal_40 %res_41
	br %res_43 <10> <12>

<10> for_body
	%arrayPtr_45 = load @a
	%arrayBase_46 = add %arrayPtr_45 8
	%idVal_47 = load %varAddr_6
	%offset_48 = mul %idVal_47 8
	%elementAddr_49 = add %arrayBase_46 %offset_48
	%elementVal_50 = load %elementAddr_49
	%res_44 = toString ( %elementVal_50 )
	print ( %res_44 )
	br <11>

<11> for_step
	%idVal_51 = load %varAddr_6
	%oldVal_52 = load %varAddr_6
	%newVal_53 = inc %oldVal_52
	store %newVal_53 %varAddr_6
	br <9>

<12> for_end
	ret 0

}

