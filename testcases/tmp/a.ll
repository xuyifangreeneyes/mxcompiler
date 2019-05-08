$str_0 "( "

$str_1 ", "

$str_2 " )"

$str_3 "vector x: "

$str_4 "excited!"

$str_5 "vector y: "

$str_6 "x + y: "

$str_7 "x * y: "

$str_8 "(1 << 3) * y: "

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

define __vector_init ( %thisVal_0 %argVal_2 ) {
<0> entry
	%varAddr_14 = alloca 8
	%argAddr_3 = alloca 8
	%thisAddr_1 = alloca 8
	store %thisVal_0 %thisAddr_1
	store %argVal_2 %argAddr_3
	%idVal_4 = load %argAddr_3
	%res_5 = eq %idVal_4 0
	br %res_5 <1> <2>

<1> if_true
	ret 

<2> if_merge
	%classPtr_7 = load %argAddr_3
	%res_6 = __arraySize ( %classPtr_7 )
	%memberLength_9 = mul %res_6 8
	%arrayLength_10 = add %memberLength_9 8
	%arrayPtr_8 = malloc %arrayLength_10
	store %res_6 %arrayPtr_8
	%arrayBase_11 = add %arrayPtr_8 8
	%classPtr_12 = load %thisAddr_1
	%memberAddr_13 = add %classPtr_12 0
	store %arrayBase_11 %memberAddr_13
	store 0 %varAddr_14
	br <3>

<3> for_cond
	%idVal_15 = load %varAddr_14
	%classPtr_17 = load %argAddr_3
	%res_16 = __arraySize ( %classPtr_17 )
	%res_18 = lt %idVal_15 %res_16
	br %res_18 <4> <6>

<4> for_body
	%arrayBase_19 = load %argAddr_3
	%idVal_20 = load %varAddr_14
	%offset_21 = mul %idVal_20 8
	%elementAddr_22 = add %arrayBase_19 %offset_21
	%elementVal_23 = load %elementAddr_22
	%classPtr_24 = load %thisAddr_1
	%memberAddr_25 = add %classPtr_24 0
	%arrayBase_26 = load %memberAddr_25
	%idVal_27 = load %varAddr_14
	%offset_28 = mul %idVal_27 8
	%elementAddr_29 = add %arrayBase_26 %offset_28
	store %elementVal_23 %elementAddr_29
	br <5>

<5> for_step
	%idVal_30 = load %varAddr_14
	%oldVal_31 = load %varAddr_14
	%newVal_32 = inc %oldVal_31
	store %newVal_32 %varAddr_14
	br <3>

<6> for_end
	ret 

}

define __vector_getDim ( %thisVal_0 ) {
<0> entry
	%thisAddr_1 = alloca 8
	store %thisVal_0 %thisAddr_1
	%classPtr_2 = load %thisAddr_1
	%memberAddr_3 = add %classPtr_2 0
	%idVal_4 = load %memberAddr_3
	%res_5 = eq %idVal_4 0
	br %res_5 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	%classPtr_7 = load %thisAddr_1
	%memberAddr_8 = add %classPtr_7 0
	%classPtr_9 = load %memberAddr_8
	%res_6 = __arraySize ( %classPtr_9 )
	ret %res_6

}

define __vector_dot ( %thisVal_0 %argVal_2 ) {
<0> entry
	%varAddr_5 = alloca 8
	%varAddr_4 = alloca 8
	%argAddr_3 = alloca 8
	%thisAddr_1 = alloca 8
	store %thisVal_0 %thisAddr_1
	store %argVal_2 %argAddr_3
	store 0 %varAddr_4
	store 0 %varAddr_5
	br <1>

<1> while_cond
	%idVal_6 = load %varAddr_4
	%classPtr_8 = load %thisAddr_1
	%res_7 = __vector_getDim ( %classPtr_8 )
	%res_9 = lt %idVal_6 %res_7
	br %res_9 <2> <3>

<2> while_body
	%classPtr_10 = load %thisAddr_1
	%memberAddr_11 = add %classPtr_10 0
	%arrayBase_12 = load %memberAddr_11
	%idVal_13 = load %varAddr_4
	%offset_14 = mul %idVal_13 8
	%elementAddr_15 = add %arrayBase_12 %offset_14
	%elementVal_16 = load %elementAddr_15
	%classPtr_17 = load %argAddr_3
	%memberAddr_18 = add %classPtr_17 0
	%arrayBase_19 = load %memberAddr_18
	%idVal_20 = load %varAddr_4
	%offset_21 = mul %idVal_20 8
	%elementAddr_22 = add %arrayBase_19 %offset_21
	%elementVal_23 = load %elementAddr_22
	%res_24 = mul %elementVal_16 %elementVal_23
	store %res_24 %varAddr_5
	%idVal_25 = load %varAddr_4
	%oldVal_26 = load %varAddr_4
	%newVal_27 = inc %oldVal_26
	store %newVal_27 %varAddr_4
	br <1>

<3> while_end
	%idVal_28 = load %varAddr_5
	ret %idVal_28

}

define __vector_scalarInPlaceMultiply ( %thisVal_0 %argVal_2 ) {
<0> entry
	%varAddr_8 = alloca 8
	%argAddr_3 = alloca 8
	%thisAddr_1 = alloca 8
	store %thisVal_0 %thisAddr_1
	store %argVal_2 %argAddr_3
	%classPtr_4 = load %thisAddr_1
	%memberAddr_5 = add %classPtr_4 0
	%idVal_6 = load %memberAddr_5
	%res_7 = eq %idVal_6 0
	br %res_7 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	store 0 %varAddr_8
	br <3>

<3> for_cond
	%idVal_9 = load %varAddr_8
	%classPtr_11 = load %thisAddr_1
	%res_10 = __vector_getDim ( %classPtr_11 )
	%res_12 = lt %idVal_9 %res_10
	br %res_12 <4> <6>

<4> for_body
	%idVal_13 = load %argAddr_3
	%classPtr_14 = load %thisAddr_1
	%memberAddr_15 = add %classPtr_14 0
	%arrayBase_16 = load %memberAddr_15
	%idVal_17 = load %varAddr_8
	%offset_18 = mul %idVal_17 8
	%elementAddr_19 = add %arrayBase_16 %offset_18
	%elementVal_20 = load %elementAddr_19
	%res_21 = mul %idVal_13 %elementVal_20
	%classPtr_22 = load %thisAddr_1
	%memberAddr_23 = add %classPtr_22 0
	%arrayBase_24 = load %memberAddr_23
	%idVal_25 = load %varAddr_8
	%offset_26 = mul %idVal_25 8
	%elementAddr_27 = add %arrayBase_24 %offset_26
	store %res_21 %elementAddr_27
	br <5>

<5> for_step
	%idVal_28 = load %varAddr_8
	%oldVal_29 = load %varAddr_8
	%newVal_30 = inc %oldVal_29
	store %newVal_30 %varAddr_8
	br <3>

<6> for_end
	%idVal_31 = load %thisAddr_1
	ret %idVal_31

}

define __vector_add ( %thisVal_0 %argVal_2 ) {
<0> entry
	%varAddr_14 = alloca 8
	%varAddr_12 = alloca 8
	%argAddr_3 = alloca 8
	%thisAddr_1 = alloca 8
	store %thisVal_0 %thisAddr_1
	store %argVal_2 %argAddr_3
	%classPtr_5 = load %thisAddr_1
	%res_4 = __vector_getDim ( %classPtr_5 )
	%classPtr_7 = load %argAddr_3
	%res_6 = __vector_getDim ( %classPtr_7 )
	%res_8 = neq %res_4 %res_6
	br %res_8 <1> <3>

<3> lhs_false
	%classPtr_10 = load %thisAddr_1
	%res_9 = __vector_getDim ( %classPtr_10 )
	%res_11 = eq %res_9 0
	br %res_11 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	%classPtr_13 = malloc 8
	store %classPtr_13 %varAddr_12
	%classPtr_16 = load %thisAddr_1
	%res_15 = __vector_getDim ( %classPtr_16 )
	%memberLength_18 = mul %res_15 8
	%arrayLength_19 = add %memberLength_18 8
	%arrayPtr_17 = malloc %arrayLength_19
	store %res_15 %arrayPtr_17
	%arrayBase_20 = add %arrayPtr_17 8
	%classPtr_21 = load %varAddr_12
	%memberAddr_22 = add %classPtr_21 0
	store %arrayBase_20 %memberAddr_22
	store 0 %varAddr_14
	br <4>

<4> for_cond
	%idVal_23 = load %varAddr_14
	%classPtr_25 = load %thisAddr_1
	%res_24 = __vector_getDim ( %classPtr_25 )
	%res_26 = lt %idVal_23 %res_24
	br %res_26 <5> <7>

<5> for_body
	%classPtr_27 = load %thisAddr_1
	%memberAddr_28 = add %classPtr_27 0
	%arrayBase_29 = load %memberAddr_28
	%idVal_30 = load %varAddr_14
	%offset_31 = mul %idVal_30 8
	%elementAddr_32 = add %arrayBase_29 %offset_31
	%elementVal_33 = load %elementAddr_32
	%classPtr_34 = load %argAddr_3
	%memberAddr_35 = add %classPtr_34 0
	%arrayBase_36 = load %memberAddr_35
	%idVal_37 = load %varAddr_14
	%offset_38 = mul %idVal_37 8
	%elementAddr_39 = add %arrayBase_36 %offset_38
	%elementVal_40 = load %elementAddr_39
	%res_41 = add %elementVal_33 %elementVal_40
	%classPtr_42 = load %varAddr_12
	%memberAddr_43 = add %classPtr_42 0
	%arrayBase_44 = load %memberAddr_43
	%idVal_45 = load %varAddr_14
	%offset_46 = mul %idVal_45 8
	%elementAddr_47 = add %arrayBase_44 %offset_46
	store %res_41 %elementAddr_47
	br <6>

<6> for_step
	%idVal_48 = load %varAddr_14
	%oldVal_49 = load %varAddr_14
	%newVal_50 = inc %oldVal_49
	store %newVal_50 %varAddr_14
	br <4>

<7> for_end
	%idVal_51 = load %varAddr_12
	ret %idVal_51

}

define __vector_set ( %thisVal_0 %argVal_2 %argVal_4 ) {
<0> entry
	%argAddr_5 = alloca 8
	%argAddr_3 = alloca 8
	%thisAddr_1 = alloca 8
	store %thisVal_0 %thisAddr_1
	store %argVal_2 %argAddr_3
	store %argVal_4 %argAddr_5
	%classPtr_7 = load %thisAddr_1
	%res_6 = __vector_getDim ( %classPtr_7 )
	%idVal_8 = load %argAddr_3
	%res_9 = lt %res_6 %idVal_8
	br %res_9 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	%idVal_10 = load %argAddr_5
	%classPtr_11 = load %thisAddr_1
	%memberAddr_12 = add %classPtr_11 0
	%arrayBase_13 = load %memberAddr_12
	%idVal_14 = load %argAddr_3
	%offset_15 = mul %idVal_14 8
	%elementAddr_16 = add %arrayBase_13 %offset_15
	store %idVal_10 %elementAddr_16
	ret 1

}

define __vector_tostring ( %thisVal_0 ) {
<0> entry
	%varAddr_15 = alloca 8
	%varAddr_2 = alloca 8
	%thisAddr_1 = alloca 8
	store %thisVal_0 %thisAddr_1
	store $str_0 %varAddr_2
	%classPtr_4 = load %thisAddr_1
	%res_3 = __vector_getDim ( %classPtr_4 )
	%res_5 = gt %res_3 0
	br %res_5 <1> <2>

<1> if_true
	%idVal_6 = load %varAddr_2
	%classPtr_8 = load %thisAddr_1
	%memberAddr_9 = add %classPtr_8 0
	%arrayBase_10 = load %memberAddr_9
	%offset_11 = mul 0 8
	%elementAddr_12 = add %arrayBase_10 %offset_11
	%elementVal_13 = load %elementAddr_12
	%res_7 = toString ( %elementVal_13 )
	%res_14 = __stringAdd ( %idVal_6 %res_7 )
	store %res_14 %varAddr_2
	br <2>

<2> if_merge
	store 1 %varAddr_15
	br <3>

<3> for_cond
	%idVal_16 = load %varAddr_15
	%classPtr_18 = load %thisAddr_1
	%res_17 = __vector_getDim ( %classPtr_18 )
	%res_19 = lt %idVal_16 %res_17
	br %res_19 <4> <6>

<4> for_body
	%idVal_20 = load %varAddr_2
	%res_21 = __stringAdd ( %idVal_20 $str_1 )
	%classPtr_23 = load %thisAddr_1
	%memberAddr_24 = add %classPtr_23 0
	%arrayBase_25 = load %memberAddr_24
	%idVal_26 = load %varAddr_15
	%offset_27 = mul %idVal_26 8
	%elementAddr_28 = add %arrayBase_25 %offset_27
	%elementVal_29 = load %elementAddr_28
	%res_22 = toString ( %elementVal_29 )
	%res_30 = __stringAdd ( %res_21 %res_22 )
	store %res_30 %varAddr_2
	br <5>

<5> for_step
	%idVal_31 = load %varAddr_15
	%oldVal_32 = load %varAddr_15
	%newVal_33 = inc %oldVal_32
	store %newVal_33 %varAddr_15
	br <3>

<6> for_end
	%idVal_34 = load %varAddr_2
	%res_35 = __stringAdd ( %idVal_34 $str_2 )
	store %res_35 %varAddr_2
	%idVal_36 = load %varAddr_2
	ret %idVal_36

}

define __vector_copy ( %thisVal_0 %argVal_2 ) {
<0> entry
	%varAddr_19 = alloca 8
	%argAddr_3 = alloca 8
	%thisAddr_1 = alloca 8
	store %thisVal_0 %thisAddr_1
	store %argVal_2 %argAddr_3
	%idVal_4 = load %argAddr_3
	%res_5 = eq %idVal_4 0
	br %res_5 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	%classPtr_7 = load %argAddr_3
	%res_6 = __vector_getDim ( %classPtr_7 )
	%res_8 = eq %res_6 0
	br %res_8 <3> <4>

<3> if_true
	%classPtr_9 = load %thisAddr_1
	%memberAddr_10 = add %classPtr_9 0
	store 0 %memberAddr_10
	br <5>

<4> if_false
	%classPtr_12 = load %argAddr_3
	%res_11 = __vector_getDim ( %classPtr_12 )
	%memberLength_14 = mul %res_11 8
	%arrayLength_15 = add %memberLength_14 8
	%arrayPtr_13 = malloc %arrayLength_15
	store %res_11 %arrayPtr_13
	%arrayBase_16 = add %arrayPtr_13 8
	%classPtr_17 = load %thisAddr_1
	%memberAddr_18 = add %classPtr_17 0
	store %arrayBase_16 %memberAddr_18
	store 0 %varAddr_19
	br <6>

<6> for_cond
	%idVal_20 = load %varAddr_19
	%classPtr_22 = load %thisAddr_1
	%res_21 = __vector_getDim ( %classPtr_22 )
	%res_23 = lt %idVal_20 %res_21
	br %res_23 <7> <9>

<7> for_body
	%classPtr_24 = load %argAddr_3
	%memberAddr_25 = add %classPtr_24 0
	%arrayBase_26 = load %memberAddr_25
	%idVal_27 = load %varAddr_19
	%offset_28 = mul %idVal_27 8
	%elementAddr_29 = add %arrayBase_26 %offset_28
	%elementVal_30 = load %elementAddr_29
	%classPtr_31 = load %thisAddr_1
	%memberAddr_32 = add %classPtr_31 0
	%arrayBase_33 = load %memberAddr_32
	%idVal_34 = load %varAddr_19
	%offset_35 = mul %idVal_34 8
	%elementAddr_36 = add %arrayBase_33 %offset_35
	store %elementVal_30 %elementAddr_36
	br <8>

<8> for_step
	%idVal_37 = load %varAddr_19
	%oldVal_38 = load %varAddr_19
	%newVal_39 = inc %oldVal_38
	store %newVal_39 %varAddr_19
	br <6>

<9> for_end
	br <5>

<5> if_merge
	ret 1

}

define main ( ) {
<0> entry
	%varAddr_23 = alloca 8
	%varAddr_7 = alloca 8
	%varAddr_2 = alloca 8
	%varAddr_0 = alloca 8
	%classPtr_1 = malloc 8
	store %classPtr_1 %varAddr_0
	%memberLength_4 = mul 10 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store 10 %arrayPtr_3
	%arrayBase_6 = add %arrayPtr_3 8
	store %arrayBase_6 %varAddr_2
	store 0 %varAddr_7
	br <1>

<1> for_cond
	%idVal_8 = load %varAddr_7
	%res_9 = lt %idVal_8 10
	br %res_9 <2> <4>

<2> for_body
	%idVal_10 = load %varAddr_7
	%res_11 = sub 9 %idVal_10
	%arrayBase_12 = load %varAddr_2
	%idVal_13 = load %varAddr_7
	%offset_14 = mul %idVal_13 8
	%elementAddr_15 = add %arrayBase_12 %offset_14
	store %res_11 %elementAddr_15
	br <3>

<3> for_step
	%idVal_16 = load %varAddr_7
	%oldVal_17 = load %varAddr_7
	%newVal_18 = inc %oldVal_17
	store %newVal_18 %varAddr_7
	br <1>

<4> for_end
	%classPtr_19 = load %varAddr_0
	%idVal_20 = load %varAddr_2
	__vector_init ( %classPtr_19 %idVal_20 )
	print ( $str_3 )
	%classPtr_22 = load %varAddr_0
	%res_21 = __vector_tostring ( %classPtr_22 )
	println ( %res_21 )
	%classPtr_24 = malloc 8
	store %classPtr_24 %varAddr_23
	%classPtr_26 = load %varAddr_23
	%idVal_27 = load %varAddr_0
	%res_25 = __vector_copy ( %classPtr_26 %idVal_27 )
	%classPtr_29 = load %varAddr_23
	%res_28 = __vector_set ( %classPtr_29 3 817 )
	br %res_28 <5> <6>

<5> if_true
	println ( $str_4 )
	br <6>

<6> if_merge
	print ( $str_5 )
	%classPtr_31 = load %varAddr_23
	%res_30 = __vector_tostring ( %classPtr_31 )
	println ( %res_30 )
	print ( $str_6 )
	%classPtr_34 = load %varAddr_0
	%idVal_35 = load %varAddr_23
	%res_33 = __vector_add ( %classPtr_34 %idVal_35 )
	%res_32 = __vector_tostring ( %res_33 )
	println ( %res_32 )
	print ( $str_7 )
	%classPtr_37 = load %varAddr_0
	%idVal_38 = load %varAddr_23
	%res_36 = __vector_dot ( %classPtr_37 %idVal_38 )
	__printlnInt ( %res_36 )
	print ( $str_8 )
	%classPtr_41 = load %varAddr_23
	%res_40 = __vector_scalarInPlaceMultiply ( %classPtr_41 8 )
	%res_39 = __vector_tostring ( %res_40 )
	println ( %res_39 )
	ret 0

}

