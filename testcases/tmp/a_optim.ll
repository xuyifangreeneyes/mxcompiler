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
	%res_5 = eq %argVal_2 0
	br %res_5 <1> <2>

<1> if_true
	ret 

<2> if_merge
	%res_6 = __arraySize ( %argVal_2 )
	%memberLength_9 = mul %res_6 8
	%arrayLength_10 = add %memberLength_9 8
	%arrayPtr_8 = malloc %arrayLength_10
	store %res_6 %arrayPtr_8
	%arrayBase_11 = add %arrayPtr_8 8
	%memberAddr_13 = add %thisVal_0 0
	store %arrayBase_11 %memberAddr_13
	%res_16 = __arraySize ( %argVal_2 )
	mov %varDef_36 0
	br <3>

<3> for_cond
	%res_18 = lt %varDef_36 %res_16
	br %res_18 <4> <6>

<4> for_body
	%offset_21 = mul %varDef_36 8
	%elementAddr_22 = add %argVal_2 %offset_21
	%elementVal_23 = load %elementAddr_22
	%memberAddr_25 = add %thisVal_0 0
	%arrayBase_26 = load %memberAddr_25
	%elementAddr_29 = add %arrayBase_26 %offset_21
	store %elementVal_23 %elementAddr_29
	%newVal_32 = inc %varDef_36
	mov %varDef_36 %newVal_32
	br <3>

<6> for_end
	ret 

}

define __vector_getDim ( %thisVal_0 ) {
<0> entry
	%memberAddr_3 = add %thisVal_0 0
	%idVal_4 = load %memberAddr_3
	%res_5 = eq %idVal_4 0
	br %res_5 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	%memberAddr_8 = add %thisVal_0 0
	%classPtr_9 = load %memberAddr_8
	%res_6 = __arraySize ( %classPtr_9 )
	ret %res_6

}

define __vector_dot ( %thisVal_0 %argVal_2 ) {
<0> entry
	mov %varDef_43 0
	mov %varDef_44 0
	br <1>

<1> while_cond
	%cmemberAddr_32 = add %thisVal_0 0
	%cidVal_33 = load %cmemberAddr_32
	%cres_34 = eq %cidVal_33 0
	br %cres_34 <6> <7>

<6> cif_true
	mov %varDef_50 0
	br <4>

<7> cif_merge
	%cmemberAddr_36 = add %thisVal_0 0
	%cclassPtr_37 = load %cmemberAddr_36
	%cres_38 = __arraySize ( %cclassPtr_37 )
	mov %varDef_50 %cres_38
	br <4>

<4> after_call
	%res_9 = lt %varDef_43 %varDef_50
	br %res_9 <2> <3>

<2> while_body
	%memberAddr_11 = add %thisVal_0 0
	%arrayBase_12 = load %memberAddr_11
	%offset_14 = mul %varDef_43 8
	%elementAddr_15 = add %arrayBase_12 %offset_14
	%elementVal_16 = load %elementAddr_15
	%memberAddr_18 = add %argVal_2 0
	%arrayBase_19 = load %memberAddr_18
	%elementAddr_22 = add %arrayBase_19 %offset_14
	%elementVal_23 = load %elementAddr_22
	%res_24 = mul %elementVal_16 %elementVal_23
	%newVal_27 = inc %varDef_43
	mov %varDef_43 %newVal_27
	mov %varDef_44 %res_24
	br <1>

<3> while_end
	ret %varDef_44

}

define __vector_scalarInPlaceMultiply ( %thisVal_0 %argVal_2 ) {
<0> entry
	%memberAddr_5 = add %thisVal_0 0
	%idVal_6 = load %memberAddr_5
	%res_7 = eq %idVal_6 0
	br %res_7 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	mov %varDef_45 0
	br <3>

<3> for_cond
	%cmemberAddr_35 = add %thisVal_0 0
	%cidVal_36 = load %cmemberAddr_35
	%cres_37 = eq %cidVal_36 0
	br %cres_37 <9> <10>

<9> cif_true
	mov %varDef_51 0
	br <7>

<10> cif_merge
	%cmemberAddr_39 = add %thisVal_0 0
	%cclassPtr_40 = load %cmemberAddr_39
	%cres_41 = __arraySize ( %cclassPtr_40 )
	mov %varDef_51 %cres_41
	br <7>

<7> after_call
	%res_12 = lt %varDef_45 %varDef_51
	br %res_12 <4> <6>

<4> for_body
	%memberAddr_15 = add %thisVal_0 0
	%arrayBase_16 = load %memberAddr_15
	%offset_18 = mul %varDef_45 8
	%elementAddr_19 = add %arrayBase_16 %offset_18
	%elementVal_20 = load %elementAddr_19
	%res_21 = mul %argVal_2 %elementVal_20
	%arrayBase_24 = load %memberAddr_15
	%elementAddr_27 = add %arrayBase_24 %offset_18
	store %res_21 %elementAddr_27
	%newVal_30 = inc %varDef_45
	mov %varDef_45 %newVal_30
	br <3>

<6> for_end
	ret %thisVal_0

}

define __vector_add ( %thisVal_0 %argVal_2 ) {
<0> entry
	br <9>

<9> centry
	%cmemberAddr_55 = add %thisVal_0 0
	%cidVal_56 = load %cmemberAddr_55
	%cres_57 = eq %cidVal_56 0
	br %cres_57 <10> <11>

<10> cif_true
	mov %varDef_107 0
	br <8>

<11> cif_merge
	%cmemberAddr_59 = add %thisVal_0 0
	%cclassPtr_60 = load %cmemberAddr_59
	%cres_61 = __arraySize ( %cclassPtr_60 )
	mov %varDef_107 %cres_61
	br <8>

<8> after_call
	%cmemberAddr_65 = add %argVal_2 0
	%cidVal_66 = load %cmemberAddr_65
	%cres_67 = eq %cidVal_66 0
	br %cres_67 <14> <15>

<14> cif_true
	mov %varDef_111 0
	br <12>

<15> cif_merge
	%cmemberAddr_69 = add %argVal_2 0
	%cclassPtr_70 = load %cmemberAddr_69
	%cres_71 = __arraySize ( %cclassPtr_70 )
	mov %varDef_111 %cres_71
	br <12>

<12> after_call
	%res_8 = neq %varDef_107 %varDef_111
	br %res_8 <1> <3>

<3> lhs_false
	%cmemberAddr_75 = add %thisVal_0 0
	%cidVal_76 = load %cmemberAddr_75
	%cres_77 = eq %cidVal_76 0
	br %cres_77 <18> <19>

<18> cif_true
	mov %varDef_115 0
	br <16>

<19> cif_merge
	%cmemberAddr_79 = add %thisVal_0 0
	%cclassPtr_80 = load %cmemberAddr_79
	%cres_81 = __arraySize ( %cclassPtr_80 )
	mov %varDef_115 %cres_81
	br <16>

<16> after_call
	%res_11 = eq %varDef_115 0
	br %res_11 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	%classPtr_13 = malloc 8
	%cmemberAddr_85 = add %thisVal_0 0
	%cidVal_86 = load %cmemberAddr_85
	%cres_87 = eq %cidVal_86 0
	br %cres_87 <22> <23>

<22> cif_true
	mov %varDef_120 0
	br <20>

<23> cif_merge
	%cmemberAddr_89 = add %thisVal_0 0
	%cclassPtr_90 = load %cmemberAddr_89
	%cres_91 = __arraySize ( %cclassPtr_90 )
	mov %varDef_120 %cres_91
	br <20>

<20> after_call
	%memberLength_18 = mul %varDef_120 8
	%arrayLength_19 = add %memberLength_18 8
	%arrayPtr_17 = malloc %arrayLength_19
	store %varDef_120 %arrayPtr_17
	%arrayBase_20 = add %arrayPtr_17 8
	%memberAddr_22 = add %classPtr_13 0
	store %arrayBase_20 %memberAddr_22
	mov %varDef_122 0
	br <4>

<4> for_cond
	%cmemberAddr_95 = add %thisVal_0 0
	%cidVal_96 = load %cmemberAddr_95
	%cres_97 = eq %cidVal_96 0
	br %cres_97 <26> <27>

<26> cif_true
	mov %varDef_128 0
	br <24>

<27> cif_merge
	%cmemberAddr_99 = add %thisVal_0 0
	%cclassPtr_100 = load %cmemberAddr_99
	%cres_101 = __arraySize ( %cclassPtr_100 )
	mov %varDef_128 %cres_101
	br <24>

<24> after_call
	%res_26 = lt %varDef_122 %varDef_128
	br %res_26 <5> <7>

<5> for_body
	%memberAddr_28 = add %thisVal_0 0
	%arrayBase_29 = load %memberAddr_28
	%offset_31 = mul %varDef_122 8
	%elementAddr_32 = add %arrayBase_29 %offset_31
	%elementVal_33 = load %elementAddr_32
	%memberAddr_35 = add %argVal_2 0
	%arrayBase_36 = load %memberAddr_35
	%elementAddr_39 = add %arrayBase_36 %offset_31
	%elementVal_40 = load %elementAddr_39
	%res_41 = add %elementVal_33 %elementVal_40
	%memberAddr_43 = add %classPtr_13 0
	%arrayBase_44 = load %memberAddr_43
	%elementAddr_47 = add %arrayBase_44 %offset_31
	store %res_41 %elementAddr_47
	%newVal_50 = inc %varDef_122
	mov %varDef_122 %newVal_50
	br <4>

<7> for_end
	ret %classPtr_13

}

define __vector_set ( %thisVal_0 %argVal_2 %argVal_4 ) {
<0> entry
	br <4>

<4> centry
	%cmemberAddr_20 = add %thisVal_0 0
	%cidVal_21 = load %cmemberAddr_20
	%cres_22 = eq %cidVal_21 0
	br %cres_22 <5> <6>

<5> cif_true
	mov %varDef_33 0
	br <3>

<6> cif_merge
	%cmemberAddr_24 = add %thisVal_0 0
	%cclassPtr_25 = load %cmemberAddr_24
	%cres_26 = __arraySize ( %cclassPtr_25 )
	mov %varDef_33 %cres_26
	br <3>

<3> after_call
	%res_9 = lt %varDef_33 %argVal_2
	br %res_9 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	%memberAddr_12 = add %thisVal_0 0
	%arrayBase_13 = load %memberAddr_12
	%offset_15 = mul %argVal_2 8
	%elementAddr_16 = add %arrayBase_13 %offset_15
	store %argVal_4 %elementAddr_16
	ret 1

}

define __vector_tostring ( %thisVal_0 ) {
<0> entry
	br <8>

<8> centry
	%cmemberAddr_40 = add %thisVal_0 0
	%cidVal_41 = load %cmemberAddr_40
	%cres_42 = eq %cidVal_41 0
	br %cres_42 <9> <10>

<9> cif_true
	mov %varDef_62 0
	br <7>

<10> cif_merge
	%cmemberAddr_44 = add %thisVal_0 0
	%cclassPtr_45 = load %cmemberAddr_44
	%cres_46 = __arraySize ( %cclassPtr_45 )
	mov %varDef_62 %cres_46
	br <7>

<7> after_call
	%res_5 = gt %varDef_62 0
	br %res_5 <1> <15>

<15> parallel_copy
	mov %varDef_64 $str_0
	br <2>

<1> if_true
	%memberAddr_9 = add %thisVal_0 0
	%arrayBase_10 = load %memberAddr_9
	%elementAddr_12 = add %arrayBase_10 0
	%elementVal_13 = load %elementAddr_12
	%res_7 = toString ( %elementVal_13 )
	%res_14 = __stringAdd ( $str_0 %res_7 )
	mov %varDef_64 %res_14
	br <2>

<2> if_merge
	mov %varDef_67 1
	mov %varDef_66 %varDef_64
	br <3>

<3> for_cond
	%cmemberAddr_50 = add %thisVal_0 0
	%cidVal_51 = load %cmemberAddr_50
	%cres_52 = eq %cidVal_51 0
	br %cres_52 <13> <14>

<13> cif_true
	mov %varDef_73 0
	br <11>

<14> cif_merge
	%cmemberAddr_54 = add %thisVal_0 0
	%cclassPtr_55 = load %cmemberAddr_54
	%cres_56 = __arraySize ( %cclassPtr_55 )
	mov %varDef_73 %cres_56
	br <11>

<11> after_call
	%res_19 = lt %varDef_67 %varDef_73
	br %res_19 <4> <6>

<4> for_body
	%res_21 = __stringAdd ( %varDef_66 $str_1 )
	%memberAddr_24 = add %thisVal_0 0
	%arrayBase_25 = load %memberAddr_24
	%offset_27 = mul %varDef_67 8
	%elementAddr_28 = add %arrayBase_25 %offset_27
	%elementVal_29 = load %elementAddr_28
	%res_22 = toString ( %elementVal_29 )
	%res_30 = __stringAdd ( %res_21 %res_22 )
	%newVal_33 = inc %varDef_67
	mov %varDef_66 %res_30
	mov %varDef_67 %newVal_33
	br <3>

<6> for_end
	%res_35 = __stringAdd ( %varDef_66 $str_2 )
	ret %res_35

}

define __vector_copy ( %thisVal_0 %argVal_2 ) {
<0> entry
	%res_5 = eq %argVal_2 0
	br %res_5 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	%cmemberAddr_43 = add %argVal_2 0
	%cidVal_44 = load %cmemberAddr_43
	%cres_45 = eq %cidVal_44 0
	br %cres_45 <12> <13>

<12> cif_true
	mov %varDef_75 0
	br <10>

<13> cif_merge
	%cmemberAddr_47 = add %argVal_2 0
	%cclassPtr_48 = load %cmemberAddr_47
	%cres_49 = __arraySize ( %cclassPtr_48 )
	mov %varDef_75 %cres_49
	br <10>

<10> after_call
	%res_8 = eq %varDef_75 0
	br %res_8 <3> <4>

<3> if_true
	%memberAddr_10 = add %thisVal_0 0
	store 0 %memberAddr_10
	br <5>

<4> if_false
	%cmemberAddr_53 = add %argVal_2 0
	%cidVal_54 = load %cmemberAddr_53
	%cres_55 = eq %cidVal_54 0
	br %cres_55 <16> <17>

<16> cif_true
	mov %varDef_79 0
	br <14>

<17> cif_merge
	%cmemberAddr_57 = add %argVal_2 0
	%cclassPtr_58 = load %cmemberAddr_57
	%cres_59 = __arraySize ( %cclassPtr_58 )
	mov %varDef_79 %cres_59
	br <14>

<14> after_call
	%memberLength_14 = mul %varDef_79 8
	%arrayLength_15 = add %memberLength_14 8
	%arrayPtr_13 = malloc %arrayLength_15
	store %varDef_79 %arrayPtr_13
	%arrayBase_16 = add %arrayPtr_13 8
	%memberAddr_18 = add %thisVal_0 0
	store %arrayBase_16 %memberAddr_18
	mov %varDef_81 0
	br <6>

<6> for_cond
	%cmemberAddr_63 = add %thisVal_0 0
	%cidVal_64 = load %cmemberAddr_63
	%cres_65 = eq %cidVal_64 0
	br %cres_65 <20> <21>

<20> cif_true
	mov %varDef_87 0
	br <18>

<21> cif_merge
	%cmemberAddr_67 = add %thisVal_0 0
	%cclassPtr_68 = load %cmemberAddr_67
	%cres_69 = __arraySize ( %cclassPtr_68 )
	mov %varDef_87 %cres_69
	br <18>

<18> after_call
	%res_23 = lt %varDef_81 %varDef_87
	br %res_23 <7> <5>

<7> for_body
	%memberAddr_25 = add %argVal_2 0
	%arrayBase_26 = load %memberAddr_25
	%offset_28 = mul %varDef_81 8
	%elementAddr_29 = add %arrayBase_26 %offset_28
	%elementVal_30 = load %elementAddr_29
	%memberAddr_32 = add %thisVal_0 0
	%arrayBase_33 = load %memberAddr_32
	%elementAddr_36 = add %arrayBase_33 %offset_28
	store %elementVal_30 %elementAddr_36
	%newVal_39 = inc %varDef_81
	mov %varDef_81 %newVal_39
	br <6>

<5> if_merge
	ret 1

}

define main ( ) {
<0> entry
	%classPtr_1 = malloc 8
	%arrayPtr_3 = malloc 88
	store 10 %arrayPtr_3
	%arrayBase_6 = add %arrayPtr_3 8
	mov %varDef_70 0
	br <1>

<1> for_cond
	%res_9 = lt %varDef_70 10
	br %res_9 <2> <4>

<2> for_body
	%res_11 = sub 9 %varDef_70
	%offset_14 = mul %varDef_70 8
	%elementAddr_15 = add %arrayBase_6 %offset_14
	store %res_11 %elementAddr_15
	%newVal_18 = inc %varDef_70
	mov %varDef_70 %newVal_18
	br <1>

<4> for_end
	__vector_init ( %classPtr_1 %arrayBase_6 )
	print ( $str_3 )
	%res_21 = __vector_tostring ( %classPtr_1 )
	println ( %res_21 )
	%classPtr_24 = malloc 8
	%res_25 = __vector_copy ( %classPtr_24 %classPtr_1 )
	%cmemberAddr_60 = add %classPtr_24 0
	%cidVal_61 = load %cmemberAddr_60
	%cres_62 = eq %cidVal_61 0
	br %cres_62 <13> <14>

<13> cif_true
	mov %varDef_79 0
	br <11>

<14> cif_merge
	%cmemberAddr_64 = add %classPtr_24 0
	%cclassPtr_65 = load %cmemberAddr_64
	%cres_66 = __arraySize ( %cclassPtr_65 )
	mov %varDef_79 %cres_66
	br <11>

<11> after_call
	%cres_49 = lt %varDef_79 3
	br %cres_49 <9> <10>

<9> cif_true
	mov %varDef_82 0
	br <7>

<10> cif_merge
	%cmemberAddr_52 = add %classPtr_24 0
	%carrayBase_53 = load %cmemberAddr_52
	%celementAddr_56 = add %carrayBase_53 24
	store 817 %celementAddr_56
	mov %varDef_82 1
	br <7>

<7> after_call
	br %varDef_82 <5> <6>

<5> if_true
	println ( $str_4 )
	br <6>

<6> if_merge
	print ( $str_5 )
	%res_30 = __vector_tostring ( %classPtr_24 )
	println ( %res_30 )
	print ( $str_6 )
	%res_33 = __vector_add ( %classPtr_1 %classPtr_24 )
	%res_32 = __vector_tostring ( %res_33 )
	println ( %res_32 )
	print ( $str_7 )
	%res_36 = __vector_dot ( %classPtr_1 %classPtr_24 )
	__printlnInt ( %res_36 )
	print ( $str_8 )
	%res_40 = __vector_scalarInPlaceMultiply ( %classPtr_24 8 )
	%res_39 = __vector_tostring ( %res_40 )
	println ( %res_39 )
	ret 0

}

