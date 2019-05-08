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
	mov %varDef_33 %thisVal_0
	mov %varDef_34 %argVal_2
	mov %idVal_4 %varDef_34
	%res_5 = eq %idVal_4 0
	br %res_5 <1> <2>

<1> if_true
	ret 

<2> if_merge
	mov %classPtr_7 %varDef_34
	%res_6 = __arraySize ( %classPtr_7 )
	%memberLength_9 = mul %res_6 8
	%arrayLength_10 = add %memberLength_9 8
	%arrayPtr_8 = malloc %arrayLength_10
	store %res_6 %arrayPtr_8
	%arrayBase_11 = add %arrayPtr_8 8
	mov %classPtr_12 %varDef_33
	%memberAddr_13 = add %classPtr_12 0
	store %arrayBase_11 %memberAddr_13
	mov %varDef_35 0
	br <3>

<3> for_cond
	%varDef_36 = phi <2> %varDef_35 <4> %varDef_37
	mov %idVal_15 %varDef_36
	mov %classPtr_17 %varDef_34
	%res_16 = __arraySize ( %classPtr_17 )
	%res_18 = lt %idVal_15 %res_16
	br %res_18 <4> <6>

<4> for_body
	mov %arrayBase_19 %varDef_34
	mov %idVal_20 %varDef_36
	%offset_21 = mul %idVal_20 8
	%elementAddr_22 = add %arrayBase_19 %offset_21
	%elementVal_23 = load %elementAddr_22
	mov %classPtr_24 %varDef_33
	%memberAddr_25 = add %classPtr_24 0
	%arrayBase_26 = load %memberAddr_25
	mov %idVal_27 %varDef_36
	%offset_28 = mul %idVal_27 8
	%elementAddr_29 = add %arrayBase_26 %offset_28
	store %elementVal_23 %elementAddr_29
	mov %idVal_30 %varDef_36
	mov %oldVal_31 %varDef_36
	%newVal_32 = inc %oldVal_31
	mov %varDef_37 %newVal_32
	br <3>

<6> for_end
	ret 

}

define __vector_getDim ( %thisVal_0 ) {
<0> entry
	mov %varDef_10 %thisVal_0
	mov %classPtr_2 %varDef_10
	%memberAddr_3 = add %classPtr_2 0
	%idVal_4 = load %memberAddr_3
	%res_5 = eq %idVal_4 0
	br %res_5 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	mov %classPtr_7 %varDef_10
	%memberAddr_8 = add %classPtr_7 0
	%classPtr_9 = load %memberAddr_8
	%res_6 = __arraySize ( %classPtr_9 )
	ret %res_6

}

define __vector_dot ( %thisVal_0 %argVal_2 ) {
<0> entry
	mov %varDef_39 %thisVal_0
	mov %varDef_40 %argVal_2
	mov %varDef_41 0
	mov %varDef_42 0
	br <1>

<1> while_cond
	%varDef_43 = phi <0> %varDef_41 <2> %varDef_52
	%varDef_44 = phi <0> %varDef_42 <2> %varDef_51
	mov %idVal_6 %varDef_43
	mov %classPtr_8 %varDef_39
	mov %varDef_47 %classPtr_8
	mov %cclassPtr_31 %varDef_47
	%cmemberAddr_32 = add %cclassPtr_31 0
	%cidVal_33 = load %cmemberAddr_32
	%cres_34 = eq %cidVal_33 0
	br %cres_34 <6> <7>

<6> cif_true
	mov %varDef_48 0
	br <4>

<7> cif_merge
	mov %cclassPtr_35 %varDef_47
	%cmemberAddr_36 = add %cclassPtr_35 0
	%cclassPtr_37 = load %cmemberAddr_36
	%cres_38 = __arraySize ( %cclassPtr_37 )
	mov %varDef_49 %cres_38
	br <4>

<4> after_call
	%varDef_50 = phi <6> %varDef_48 <7> %varDef_49
	mov %res_7 %varDef_50
	%res_9 = lt %idVal_6 %res_7
	br %res_9 <2> <3>

<2> while_body
	mov %classPtr_10 %varDef_39
	%memberAddr_11 = add %classPtr_10 0
	%arrayBase_12 = load %memberAddr_11
	mov %idVal_13 %varDef_43
	%offset_14 = mul %idVal_13 8
	%elementAddr_15 = add %arrayBase_12 %offset_14
	%elementVal_16 = load %elementAddr_15
	mov %classPtr_17 %varDef_40
	%memberAddr_18 = add %classPtr_17 0
	%arrayBase_19 = load %memberAddr_18
	mov %idVal_20 %varDef_43
	%offset_21 = mul %idVal_20 8
	%elementAddr_22 = add %arrayBase_19 %offset_21
	%elementVal_23 = load %elementAddr_22
	%res_24 = mul %elementVal_16 %elementVal_23
	mov %varDef_51 %res_24
	mov %idVal_25 %varDef_43
	mov %oldVal_26 %varDef_43
	%newVal_27 = inc %oldVal_26
	mov %varDef_52 %newVal_27
	br <1>

<3> while_end
	mov %idVal_28 %varDef_44
	ret %idVal_28

}

define __vector_scalarInPlaceMultiply ( %thisVal_0 %argVal_2 ) {
<0> entry
	mov %varDef_42 %thisVal_0
	mov %varDef_43 %argVal_2
	mov %classPtr_4 %varDef_42
	%memberAddr_5 = add %classPtr_4 0
	%idVal_6 = load %memberAddr_5
	%res_7 = eq %idVal_6 0
	br %res_7 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	mov %varDef_44 0
	br <3>

<3> for_cond
	%varDef_45 = phi <2> %varDef_44 <4> %varDef_52
	mov %idVal_9 %varDef_45
	mov %classPtr_11 %varDef_42
	mov %varDef_48 %classPtr_11
	mov %cclassPtr_34 %varDef_48
	%cmemberAddr_35 = add %cclassPtr_34 0
	%cidVal_36 = load %cmemberAddr_35
	%cres_37 = eq %cidVal_36 0
	br %cres_37 <9> <10>

<9> cif_true
	mov %varDef_49 0
	br <7>

<10> cif_merge
	mov %cclassPtr_38 %varDef_48
	%cmemberAddr_39 = add %cclassPtr_38 0
	%cclassPtr_40 = load %cmemberAddr_39
	%cres_41 = __arraySize ( %cclassPtr_40 )
	mov %varDef_50 %cres_41
	br <7>

<7> after_call
	%varDef_51 = phi <9> %varDef_49 <10> %varDef_50
	mov %res_10 %varDef_51
	%res_12 = lt %idVal_9 %res_10
	br %res_12 <4> <6>

<4> for_body
	mov %idVal_13 %varDef_43
	mov %classPtr_14 %varDef_42
	%memberAddr_15 = add %classPtr_14 0
	%arrayBase_16 = load %memberAddr_15
	mov %idVal_17 %varDef_45
	%offset_18 = mul %idVal_17 8
	%elementAddr_19 = add %arrayBase_16 %offset_18
	%elementVal_20 = load %elementAddr_19
	%res_21 = mul %idVal_13 %elementVal_20
	mov %classPtr_22 %varDef_42
	%memberAddr_23 = add %classPtr_22 0
	%arrayBase_24 = load %memberAddr_23
	mov %idVal_25 %varDef_45
	%offset_26 = mul %idVal_25 8
	%elementAddr_27 = add %arrayBase_24 %offset_26
	store %res_21 %elementAddr_27
	mov %idVal_28 %varDef_45
	mov %oldVal_29 %varDef_45
	%newVal_30 = inc %oldVal_29
	mov %varDef_52 %newVal_30
	br <3>

<6> for_end
	mov %idVal_31 %varDef_42
	ret %idVal_31

}

define __vector_add ( %thisVal_0 %argVal_2 ) {
<0> entry
	mov %varDef_102 %thisVal_0
	mov %varDef_103 %argVal_2
	mov %classPtr_5 %varDef_102
	br <9>

<9> centry
	mov %varDef_104 %classPtr_5
	mov %cclassPtr_54 %varDef_104
	%cmemberAddr_55 = add %cclassPtr_54 0
	%cidVal_56 = load %cmemberAddr_55
	%cres_57 = eq %cidVal_56 0
	br %cres_57 <10> <11>

<10> cif_true
	mov %varDef_105 0
	br <8>

<11> cif_merge
	mov %cclassPtr_58 %varDef_104
	%cmemberAddr_59 = add %cclassPtr_58 0
	%cclassPtr_60 = load %cmemberAddr_59
	%cres_61 = __arraySize ( %cclassPtr_60 )
	mov %varDef_106 %cres_61
	br <8>

<8> after_call
	%varDef_107 = phi <10> %varDef_105 <11> %varDef_106
	mov %res_4 %varDef_107
	mov %classPtr_7 %varDef_103
	mov %varDef_108 %classPtr_7
	mov %cclassPtr_64 %varDef_108
	%cmemberAddr_65 = add %cclassPtr_64 0
	%cidVal_66 = load %cmemberAddr_65
	%cres_67 = eq %cidVal_66 0
	br %cres_67 <14> <15>

<14> cif_true
	mov %varDef_109 0
	br <12>

<15> cif_merge
	mov %cclassPtr_68 %varDef_108
	%cmemberAddr_69 = add %cclassPtr_68 0
	%cclassPtr_70 = load %cmemberAddr_69
	%cres_71 = __arraySize ( %cclassPtr_70 )
	mov %varDef_110 %cres_71
	br <12>

<12> after_call
	%varDef_111 = phi <14> %varDef_109 <15> %varDef_110
	mov %res_6 %varDef_111
	%res_8 = neq %res_4 %res_6
	br %res_8 <1> <3>

<3> lhs_false
	mov %classPtr_10 %varDef_102
	mov %varDef_112 %classPtr_10
	mov %cclassPtr_74 %varDef_112
	%cmemberAddr_75 = add %cclassPtr_74 0
	%cidVal_76 = load %cmemberAddr_75
	%cres_77 = eq %cidVal_76 0
	br %cres_77 <18> <19>

<18> cif_true
	mov %varDef_113 0
	br <16>

<19> cif_merge
	mov %cclassPtr_78 %varDef_112
	%cmemberAddr_79 = add %cclassPtr_78 0
	%cclassPtr_80 = load %cmemberAddr_79
	%cres_81 = __arraySize ( %cclassPtr_80 )
	mov %varDef_114 %cres_81
	br <16>

<16> after_call
	%varDef_115 = phi <18> %varDef_113 <19> %varDef_114
	mov %res_9 %varDef_115
	%res_11 = eq %res_9 0
	br %res_11 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	%classPtr_13 = malloc 8
	mov %varDef_116 %classPtr_13
	mov %classPtr_16 %varDef_102
	mov %varDef_117 %classPtr_16
	mov %cclassPtr_84 %varDef_117
	%cmemberAddr_85 = add %cclassPtr_84 0
	%cidVal_86 = load %cmemberAddr_85
	%cres_87 = eq %cidVal_86 0
	br %cres_87 <22> <23>

<22> cif_true
	mov %varDef_118 0
	br <20>

<23> cif_merge
	mov %cclassPtr_88 %varDef_117
	%cmemberAddr_89 = add %cclassPtr_88 0
	%cclassPtr_90 = load %cmemberAddr_89
	%cres_91 = __arraySize ( %cclassPtr_90 )
	mov %varDef_119 %cres_91
	br <20>

<20> after_call
	%varDef_120 = phi <22> %varDef_118 <23> %varDef_119
	mov %res_15 %varDef_120
	%memberLength_18 = mul %res_15 8
	%arrayLength_19 = add %memberLength_18 8
	%arrayPtr_17 = malloc %arrayLength_19
	store %res_15 %arrayPtr_17
	%arrayBase_20 = add %arrayPtr_17 8
	mov %classPtr_21 %varDef_116
	%memberAddr_22 = add %classPtr_21 0
	store %arrayBase_20 %memberAddr_22
	mov %varDef_121 0
	br <4>

<4> for_cond
	%varDef_122 = phi <20> %varDef_121 <5> %varDef_129
	mov %idVal_23 %varDef_122
	mov %classPtr_25 %varDef_102
	mov %varDef_125 %classPtr_25
	mov %cclassPtr_94 %varDef_125
	%cmemberAddr_95 = add %cclassPtr_94 0
	%cidVal_96 = load %cmemberAddr_95
	%cres_97 = eq %cidVal_96 0
	br %cres_97 <26> <27>

<26> cif_true
	mov %varDef_126 0
	br <24>

<27> cif_merge
	mov %cclassPtr_98 %varDef_125
	%cmemberAddr_99 = add %cclassPtr_98 0
	%cclassPtr_100 = load %cmemberAddr_99
	%cres_101 = __arraySize ( %cclassPtr_100 )
	mov %varDef_127 %cres_101
	br <24>

<24> after_call
	%varDef_128 = phi <26> %varDef_126 <27> %varDef_127
	mov %res_24 %varDef_128
	%res_26 = lt %idVal_23 %res_24
	br %res_26 <5> <7>

<5> for_body
	mov %classPtr_27 %varDef_102
	%memberAddr_28 = add %classPtr_27 0
	%arrayBase_29 = load %memberAddr_28
	mov %idVal_30 %varDef_122
	%offset_31 = mul %idVal_30 8
	%elementAddr_32 = add %arrayBase_29 %offset_31
	%elementVal_33 = load %elementAddr_32
	mov %classPtr_34 %varDef_103
	%memberAddr_35 = add %classPtr_34 0
	%arrayBase_36 = load %memberAddr_35
	mov %idVal_37 %varDef_122
	%offset_38 = mul %idVal_37 8
	%elementAddr_39 = add %arrayBase_36 %offset_38
	%elementVal_40 = load %elementAddr_39
	%res_41 = add %elementVal_33 %elementVal_40
	mov %classPtr_42 %varDef_116
	%memberAddr_43 = add %classPtr_42 0
	%arrayBase_44 = load %memberAddr_43
	mov %idVal_45 %varDef_122
	%offset_46 = mul %idVal_45 8
	%elementAddr_47 = add %arrayBase_44 %offset_46
	store %res_41 %elementAddr_47
	mov %idVal_48 %varDef_122
	mov %oldVal_49 %varDef_122
	%newVal_50 = inc %oldVal_49
	mov %varDef_129 %newVal_50
	br <4>

<7> for_end
	mov %idVal_51 %varDef_116
	ret %idVal_51

}

define __vector_set ( %thisVal_0 %argVal_2 %argVal_4 ) {
<0> entry
	mov %varDef_27 %thisVal_0
	mov %varDef_28 %argVal_2
	mov %varDef_29 %argVal_4
	mov %classPtr_7 %varDef_27
	br <4>

<4> centry
	mov %varDef_30 %classPtr_7
	mov %cclassPtr_19 %varDef_30
	%cmemberAddr_20 = add %cclassPtr_19 0
	%cidVal_21 = load %cmemberAddr_20
	%cres_22 = eq %cidVal_21 0
	br %cres_22 <5> <6>

<5> cif_true
	mov %varDef_31 0
	br <3>

<6> cif_merge
	mov %cclassPtr_23 %varDef_30
	%cmemberAddr_24 = add %cclassPtr_23 0
	%cclassPtr_25 = load %cmemberAddr_24
	%cres_26 = __arraySize ( %cclassPtr_25 )
	mov %varDef_32 %cres_26
	br <3>

<3> after_call
	%varDef_33 = phi <5> %varDef_31 <6> %varDef_32
	mov %res_6 %varDef_33
	mov %idVal_8 %varDef_28
	%res_9 = lt %res_6 %idVal_8
	br %res_9 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	mov %idVal_10 %varDef_29
	mov %classPtr_11 %varDef_27
	%memberAddr_12 = add %classPtr_11 0
	%arrayBase_13 = load %memberAddr_12
	mov %idVal_14 %varDef_28
	%offset_15 = mul %idVal_14 8
	%elementAddr_16 = add %arrayBase_13 %offset_15
	store %idVal_10 %elementAddr_16
	ret 1

}

define __vector_tostring ( %thisVal_0 ) {
<0> entry
	mov %varDef_57 %thisVal_0
	mov %varDef_58 $str_0
	mov %classPtr_4 %varDef_57
	br <8>

<8> centry
	mov %varDef_59 %classPtr_4
	mov %cclassPtr_39 %varDef_59
	%cmemberAddr_40 = add %cclassPtr_39 0
	%cidVal_41 = load %cmemberAddr_40
	%cres_42 = eq %cidVal_41 0
	br %cres_42 <9> <10>

<9> cif_true
	mov %varDef_60 0
	br <7>

<10> cif_merge
	mov %cclassPtr_43 %varDef_59
	%cmemberAddr_44 = add %cclassPtr_43 0
	%cclassPtr_45 = load %cmemberAddr_44
	%cres_46 = __arraySize ( %cclassPtr_45 )
	mov %varDef_61 %cres_46
	br <7>

<7> after_call
	%varDef_62 = phi <9> %varDef_60 <10> %varDef_61
	mov %res_3 %varDef_62
	%res_5 = gt %res_3 0
	br %res_5 <1> <2>

<1> if_true
	mov %idVal_6 %varDef_58
	mov %classPtr_8 %varDef_57
	%memberAddr_9 = add %classPtr_8 0
	%arrayBase_10 = load %memberAddr_9
	%offset_11 = mul 0 8
	%elementAddr_12 = add %arrayBase_10 %offset_11
	%elementVal_13 = load %elementAddr_12
	%res_7 = toString ( %elementVal_13 )
	%res_14 = __stringAdd ( %idVal_6 %res_7 )
	mov %varDef_63 %res_14
	br <2>

<2> if_merge
	%varDef_64 = phi <7> %varDef_58 <1> %varDef_63
	mov %varDef_65 1
	br <3>

<3> for_cond
	%varDef_66 = phi <2> %varDef_64 <4> %varDef_74
	%varDef_67 = phi <2> %varDef_65 <4> %varDef_75
	mov %idVal_16 %varDef_67
	mov %classPtr_18 %varDef_57
	mov %varDef_70 %classPtr_18
	mov %cclassPtr_49 %varDef_70
	%cmemberAddr_50 = add %cclassPtr_49 0
	%cidVal_51 = load %cmemberAddr_50
	%cres_52 = eq %cidVal_51 0
	br %cres_52 <13> <14>

<13> cif_true
	mov %varDef_71 0
	br <11>

<14> cif_merge
	mov %cclassPtr_53 %varDef_70
	%cmemberAddr_54 = add %cclassPtr_53 0
	%cclassPtr_55 = load %cmemberAddr_54
	%cres_56 = __arraySize ( %cclassPtr_55 )
	mov %varDef_72 %cres_56
	br <11>

<11> after_call
	%varDef_73 = phi <13> %varDef_71 <14> %varDef_72
	mov %res_17 %varDef_73
	%res_19 = lt %idVal_16 %res_17
	br %res_19 <4> <6>

<4> for_body
	mov %idVal_20 %varDef_66
	%res_21 = __stringAdd ( %idVal_20 $str_1 )
	mov %classPtr_23 %varDef_57
	%memberAddr_24 = add %classPtr_23 0
	%arrayBase_25 = load %memberAddr_24
	mov %idVal_26 %varDef_67
	%offset_27 = mul %idVal_26 8
	%elementAddr_28 = add %arrayBase_25 %offset_27
	%elementVal_29 = load %elementAddr_28
	%res_22 = toString ( %elementVal_29 )
	%res_30 = __stringAdd ( %res_21 %res_22 )
	mov %varDef_74 %res_30
	mov %idVal_31 %varDef_67
	mov %oldVal_32 %varDef_67
	%newVal_33 = inc %oldVal_32
	mov %varDef_75 %newVal_33
	br <3>

<6> for_end
	mov %idVal_34 %varDef_66
	%res_35 = __stringAdd ( %idVal_34 $str_2 )
	mov %varDef_76 %res_35
	mov %idVal_36 %varDef_76
	ret %idVal_36

}

define __vector_copy ( %thisVal_0 %argVal_2 ) {
<0> entry
	mov %varDef_70 %thisVal_0
	mov %varDef_71 %argVal_2
	mov %idVal_4 %varDef_71
	%res_5 = eq %idVal_4 0
	br %res_5 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	mov %classPtr_7 %varDef_71
	mov %varDef_72 %classPtr_7
	mov %cclassPtr_42 %varDef_72
	%cmemberAddr_43 = add %cclassPtr_42 0
	%cidVal_44 = load %cmemberAddr_43
	%cres_45 = eq %cidVal_44 0
	br %cres_45 <12> <13>

<12> cif_true
	mov %varDef_73 0
	br <10>

<13> cif_merge
	mov %cclassPtr_46 %varDef_72
	%cmemberAddr_47 = add %cclassPtr_46 0
	%cclassPtr_48 = load %cmemberAddr_47
	%cres_49 = __arraySize ( %cclassPtr_48 )
	mov %varDef_74 %cres_49
	br <10>

<10> after_call
	%varDef_75 = phi <12> %varDef_73 <13> %varDef_74
	mov %res_6 %varDef_75
	%res_8 = eq %res_6 0
	br %res_8 <3> <4>

<3> if_true
	mov %classPtr_9 %varDef_70
	%memberAddr_10 = add %classPtr_9 0
	store 0 %memberAddr_10
	br <5>

<4> if_false
	mov %classPtr_12 %varDef_71
	mov %varDef_76 %classPtr_12
	mov %cclassPtr_52 %varDef_76
	%cmemberAddr_53 = add %cclassPtr_52 0
	%cidVal_54 = load %cmemberAddr_53
	%cres_55 = eq %cidVal_54 0
	br %cres_55 <16> <17>

<16> cif_true
	mov %varDef_77 0
	br <14>

<17> cif_merge
	mov %cclassPtr_56 %varDef_76
	%cmemberAddr_57 = add %cclassPtr_56 0
	%cclassPtr_58 = load %cmemberAddr_57
	%cres_59 = __arraySize ( %cclassPtr_58 )
	mov %varDef_78 %cres_59
	br <14>

<14> after_call
	%varDef_79 = phi <16> %varDef_77 <17> %varDef_78
	mov %res_11 %varDef_79
	%memberLength_14 = mul %res_11 8
	%arrayLength_15 = add %memberLength_14 8
	%arrayPtr_13 = malloc %arrayLength_15
	store %res_11 %arrayPtr_13
	%arrayBase_16 = add %arrayPtr_13 8
	mov %classPtr_17 %varDef_70
	%memberAddr_18 = add %classPtr_17 0
	store %arrayBase_16 %memberAddr_18
	mov %varDef_80 0
	br <6>

<6> for_cond
	%varDef_81 = phi <14> %varDef_80 <7> %varDef_88
	mov %idVal_20 %varDef_81
	mov %classPtr_22 %varDef_70
	mov %varDef_84 %classPtr_22
	mov %cclassPtr_62 %varDef_84
	%cmemberAddr_63 = add %cclassPtr_62 0
	%cidVal_64 = load %cmemberAddr_63
	%cres_65 = eq %cidVal_64 0
	br %cres_65 <20> <21>

<20> cif_true
	mov %varDef_85 0
	br <18>

<21> cif_merge
	mov %cclassPtr_66 %varDef_84
	%cmemberAddr_67 = add %cclassPtr_66 0
	%cclassPtr_68 = load %cmemberAddr_67
	%cres_69 = __arraySize ( %cclassPtr_68 )
	mov %varDef_86 %cres_69
	br <18>

<18> after_call
	%varDef_87 = phi <20> %varDef_85 <21> %varDef_86
	mov %res_21 %varDef_87
	%res_23 = lt %idVal_20 %res_21
	br %res_23 <7> <5>

<7> for_body
	mov %classPtr_24 %varDef_71
	%memberAddr_25 = add %classPtr_24 0
	%arrayBase_26 = load %memberAddr_25
	mov %idVal_27 %varDef_81
	%offset_28 = mul %idVal_27 8
	%elementAddr_29 = add %arrayBase_26 %offset_28
	%elementVal_30 = load %elementAddr_29
	mov %classPtr_31 %varDef_70
	%memberAddr_32 = add %classPtr_31 0
	%arrayBase_33 = load %memberAddr_32
	mov %idVal_34 %varDef_81
	%offset_35 = mul %idVal_34 8
	%elementAddr_36 = add %arrayBase_33 %offset_35
	store %elementVal_30 %elementAddr_36
	mov %idVal_37 %varDef_81
	mov %oldVal_38 %varDef_81
	%newVal_39 = inc %oldVal_38
	mov %varDef_88 %newVal_39
	br <6>

<5> if_merge
	ret 1

}

define main ( ) {
<0> entry
	%classPtr_1 = malloc 8
	mov %varDef_67 %classPtr_1
	%memberLength_4 = mul 10 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store 10 %arrayPtr_3
	%arrayBase_6 = add %arrayPtr_3 8
	mov %varDef_68 %arrayBase_6
	mov %varDef_69 0
	br <1>

<1> for_cond
	%varDef_70 = phi <0> %varDef_69 <2> %varDef_71
	mov %idVal_8 %varDef_70
	%res_9 = lt %idVal_8 10
	br %res_9 <2> <4>

<2> for_body
	mov %idVal_10 %varDef_70
	%res_11 = sub 9 %idVal_10
	mov %arrayBase_12 %varDef_68
	mov %idVal_13 %varDef_70
	%offset_14 = mul %idVal_13 8
	%elementAddr_15 = add %arrayBase_12 %offset_14
	store %res_11 %elementAddr_15
	mov %idVal_16 %varDef_70
	mov %oldVal_17 %varDef_70
	%newVal_18 = inc %oldVal_17
	mov %varDef_71 %newVal_18
	br <1>

<4> for_end
	mov %classPtr_19 %varDef_67
	mov %idVal_20 %varDef_68
	__vector_init ( %classPtr_19 %idVal_20 )
	print ( $str_3 )
	mov %classPtr_22 %varDef_67
	%res_21 = __vector_tostring ( %classPtr_22 )
	println ( %res_21 )
	%classPtr_24 = malloc 8
	mov %varDef_72 %classPtr_24
	mov %classPtr_26 %varDef_72
	mov %idVal_27 %varDef_67
	%res_25 = __vector_copy ( %classPtr_26 %idVal_27 )
	mov %classPtr_29 %varDef_72
	mov %varDef_73 %classPtr_29
	mov %varDef_74 3
	mov %varDef_75 817
	mov %cclassPtr_46 %varDef_73
	mov %varDef_76 %cclassPtr_46
	mov %cclassPtr_59 %varDef_76
	%cmemberAddr_60 = add %cclassPtr_59 0
	%cidVal_61 = load %cmemberAddr_60
	%cres_62 = eq %cidVal_61 0
	br %cres_62 <13> <14>

<13> cif_true
	mov %varDef_77 0
	br <11>

<14> cif_merge
	mov %cclassPtr_63 %varDef_76
	%cmemberAddr_64 = add %cclassPtr_63 0
	%cclassPtr_65 = load %cmemberAddr_64
	%cres_66 = __arraySize ( %cclassPtr_65 )
	mov %varDef_78 %cres_66
	br <11>

<11> after_call
	%varDef_79 = phi <13> %varDef_77 <14> %varDef_78
	mov %cres_47 %varDef_79
	mov %cidVal_48 %varDef_74
	%cres_49 = lt %cres_47 %cidVal_48
	br %cres_49 <9> <10>

<9> cif_true
	mov %varDef_80 0
	br <7>

<10> cif_merge
	mov %cidVal_50 %varDef_75
	mov %cclassPtr_51 %varDef_73
	%cmemberAddr_52 = add %cclassPtr_51 0
	%carrayBase_53 = load %cmemberAddr_52
	mov %cidVal_54 %varDef_74
	%coffset_55 = mul %cidVal_54 8
	%celementAddr_56 = add %carrayBase_53 %coffset_55
	store %cidVal_50 %celementAddr_56
	mov %varDef_81 1
	br <7>

<7> after_call
	%varDef_82 = phi <9> %varDef_80 <10> %varDef_81
	mov %res_28 %varDef_82
	br %res_28 <5> <6>

<5> if_true
	println ( $str_4 )
	br <6>

<6> if_merge
	print ( $str_5 )
	mov %classPtr_31 %varDef_72
	%res_30 = __vector_tostring ( %classPtr_31 )
	println ( %res_30 )
	print ( $str_6 )
	mov %classPtr_34 %varDef_67
	mov %idVal_35 %varDef_72
	%res_33 = __vector_add ( %classPtr_34 %idVal_35 )
	%res_32 = __vector_tostring ( %res_33 )
	println ( %res_32 )
	print ( $str_7 )
	mov %classPtr_37 %varDef_67
	mov %idVal_38 %varDef_72
	%res_36 = __vector_dot ( %classPtr_37 %idVal_38 )
	__printlnInt ( %res_36 )
	print ( $str_8 )
	mov %classPtr_41 %varDef_72
	%res_40 = __vector_scalarInPlaceMultiply ( %classPtr_41 8 )
	%res_39 = __vector_tostring ( %res_40 )
	println ( %res_39 )
	ret 0

}

