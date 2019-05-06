@asciiTable

$str_0 " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"

$str_1 ""

$str_2 " "

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
	%global2local_0 = alloca 8
	%tmp_1 = load @asciiTable
	store %tmp_1 %global2local_0
	store $str_0 %global2local_0
	%tmp_2 = load %global2local_0
	store %tmp_2 @asciiTable
	ret 

}

define hilo ( %argVal_0 %argVal_2 ) {
<0> entry
	%argAddr_3 = alloca 8
	%argAddr_1 = alloca 8
	store %argVal_0 %argAddr_1
	store %argVal_2 %argAddr_3
	%idVal_4 = load %argAddr_3
	%idVal_5 = load %argAddr_1
	%res_6 = lsft %idVal_5 16
	%res_7 = bit_or %idVal_4 %res_6
	ret %res_7

}

define shift_l ( %argVal_0 %argVal_2 ) {
<0> entry
	%cargAddr_11 = alloca 8
	%cargAddr_10 = alloca 8
	%retValAddr_9 = alloca 8
	%argAddr_3 = alloca 8
	%argAddr_1 = alloca 8
	store %argVal_0 %argAddr_1
	store %argVal_2 %argAddr_3
	%idVal_4 = load %argAddr_1
	%idVal_5 = load %argAddr_3
	%res_6 = lsft %idVal_4 %idVal_5
	br <2>

<2> centry
	store 32767 %cargAddr_11
	store 65535 %cargAddr_10
	%cidVal_12 = load %cargAddr_10
	%cidVal_13 = load %cargAddr_11
	%cres_14 = lsft %cidVal_13 16
	%cres_15 = bit_or %cidVal_12 %cres_14
	store %cres_15 %retValAddr_9
	br <1>

<1> after_call
	%res_7 = load %retValAddr_9
	%res_8 = bit_and %res_6 %res_7
	ret %res_8

}

define shift_r ( %argVal_0 %argVal_2 ) {
<0> entry
	%cargAddr_28 = alloca 8
	%cargAddr_27 = alloca 8
	%retValAddr_26 = alloca 8
	%cargAddr_21 = alloca 8
	%cargAddr_20 = alloca 8
	%retValAddr_19 = alloca 8
	%varAddr_4 = alloca 8
	%argAddr_3 = alloca 8
	%argAddr_1 = alloca 8
	store %argVal_0 %argAddr_1
	store %argVal_2 %argAddr_3
	br <2>

<2> centry
	store 32767 %cargAddr_21
	store 65535 %cargAddr_20
	%cidVal_22 = load %cargAddr_20
	%cidVal_23 = load %cargAddr_21
	%cres_24 = lsft %cidVal_23 16
	%cres_25 = bit_or %cidVal_22 %cres_24
	store %cres_25 %retValAddr_19
	br <1>

<1> after_call
	%res_5 = load %retValAddr_19
	store %res_5 %varAddr_4
	%idVal_6 = load %varAddr_4
	%idVal_7 = load %argAddr_3
	%res_8 = rsft %idVal_6 %idVal_7
	%res_9 = lsft %res_8 1
	%res_10 = add %res_9 1
	store %res_10 %varAddr_4
	%idVal_11 = load %varAddr_4
	%idVal_12 = load %argAddr_1
	%idVal_13 = load %argAddr_3
	%res_14 = rsft %idVal_12 %idVal_13
	%res_15 = bit_and %idVal_11 %res_14
	store %res_15 %varAddr_4
	%idVal_16 = load %varAddr_4
	br <4>

<4> centry
	store 32767 %cargAddr_28
	store 65535 %cargAddr_27
	%cidVal_29 = load %cargAddr_27
	%cidVal_30 = load %cargAddr_28
	%cres_31 = lsft %cidVal_30 16
	%cres_32 = bit_or %cidVal_29 %cres_31
	store %cres_32 %retValAddr_26
	br <3>

<3> after_call
	%res_17 = load %retValAddr_26
	%res_18 = bit_and %idVal_16 %res_17
	ret %res_18

}

define xorshift ( %argVal_0 %argVal_2 ) {
<0> entry
	%cargAddr_86 = alloca 8
	%cargAddr_85 = alloca 8
	%retValAddr_84 = alloca 8
	%cargAddr_79 = alloca 8
	%cargAddr_78 = alloca 8
	%retValAddr_77 = alloca 8
	%cargAddr_72 = alloca 8
	%cargAddr_71 = alloca 8
	%retValAddr_70 = alloca 8
	%cargAddr_65 = alloca 8
	%cargAddr_64 = alloca 8
	%retValAddr_63 = alloca 8
	%cargAddr_57 = alloca 8
	%cargAddr_56 = alloca 8
	%retValAddr_55 = alloca 8
	%cargAddr_40 = alloca 8
	%cargAddr_39 = alloca 8
	%cvarAddr_38 = alloca 8
	%retValAddr_37 = alloca 8
	%cargAddr_31 = alloca 8
	%cargAddr_30 = alloca 8
	%retValAddr_29 = alloca 8
	%varAddr_7 = alloca 8
	%varAddr_4 = alloca 8
	%argAddr_3 = alloca 8
	%argAddr_1 = alloca 8
	store %argVal_0 %argAddr_1
	store %argVal_2 %argAddr_3
	%idVal_5 = load %argAddr_1
	%res_6 = add %idVal_5 1
	store %res_6 %varAddr_4
	store 0 %varAddr_7
	br <1>

<1> for_cond
	%idVal_8 = load %varAddr_7
	%idVal_9 = load %argAddr_3
	%res_10 = mul %idVal_9 10
	%res_11 = lt %idVal_8 %res_10
	br %res_11 <2> <4>

<2> for_body
	%idVal_12 = load %varAddr_4
	%idVal_14 = load %varAddr_4
	br <6>

<6> centry
	store %idVal_14 %cargAddr_31
	store 13 %cargAddr_30
	%cidVal_32 = load %cargAddr_31
	%cidVal_33 = load %cargAddr_30
	%cres_34 = lsft %cidVal_32 %cidVal_33
	br <12>

<12> centry
	store 32767 %cargAddr_65
	store 65535 %cargAddr_64
	%cidVal_66 = load %cargAddr_64
	%cidVal_67 = load %cargAddr_65
	%cres_68 = lsft %cidVal_67 16
	%cres_69 = bit_or %cidVal_66 %cres_68
	store %cres_69 %retValAddr_63
	br <11>

<11> after_call
	%cres_35 = load %retValAddr_63
	%cres_36 = bit_and %cres_34 %cres_35
	store %cres_36 %retValAddr_29
	br <5>

<5> after_call
	%res_13 = load %retValAddr_29
	%res_15 = bit_xor %idVal_12 %res_13
	store %res_15 %varAddr_4
	%idVal_16 = load %varAddr_4
	%idVal_18 = load %varAddr_4
	br <8>

<8> centry
	store %idVal_18 %cargAddr_40
	store 17 %cargAddr_39
	br <14>

<14> centry
	store 32767 %cargAddr_72
	store 65535 %cargAddr_71
	%cidVal_73 = load %cargAddr_71
	%cidVal_74 = load %cargAddr_72
	%cres_75 = lsft %cidVal_74 16
	%cres_76 = bit_or %cidVal_73 %cres_75
	store %cres_76 %retValAddr_70
	br <13>

<13> after_call
	%cres_41 = load %retValAddr_70
	store %cres_41 %cvarAddr_38
	%cidVal_42 = load %cvarAddr_38
	%cidVal_43 = load %cargAddr_39
	%cres_44 = rsft %cidVal_42 %cidVal_43
	%cres_45 = lsft %cres_44 1
	%cres_46 = add %cres_45 1
	store %cres_46 %cvarAddr_38
	%cidVal_47 = load %cvarAddr_38
	%cidVal_48 = load %cargAddr_40
	%cidVal_49 = load %cargAddr_39
	%cres_50 = rsft %cidVal_48 %cidVal_49
	%cres_51 = bit_and %cidVal_47 %cres_50
	store %cres_51 %cvarAddr_38
	%cidVal_52 = load %cvarAddr_38
	br <16>

<16> centry
	store 32767 %cargAddr_79
	store 65535 %cargAddr_78
	%cidVal_80 = load %cargAddr_78
	%cidVal_81 = load %cargAddr_79
	%cres_82 = lsft %cidVal_81 16
	%cres_83 = bit_or %cidVal_80 %cres_82
	store %cres_83 %retValAddr_77
	br <15>

<15> after_call
	%cres_53 = load %retValAddr_77
	%cres_54 = bit_and %cidVal_52 %cres_53
	store %cres_54 %retValAddr_37
	br <7>

<7> after_call
	%res_17 = load %retValAddr_37
	%res_19 = bit_xor %idVal_16 %res_17
	store %res_19 %varAddr_4
	%idVal_20 = load %varAddr_4
	%idVal_22 = load %varAddr_4
	br <10>

<10> centry
	store %idVal_22 %cargAddr_57
	store 5 %cargAddr_56
	%cidVal_58 = load %cargAddr_57
	%cidVal_59 = load %cargAddr_56
	%cres_60 = lsft %cidVal_58 %cidVal_59
	br <18>

<18> centry
	store 32767 %cargAddr_86
	store 65535 %cargAddr_85
	%cidVal_87 = load %cargAddr_85
	%cidVal_88 = load %cargAddr_86
	%cres_89 = lsft %cidVal_88 16
	%cres_90 = bit_or %cidVal_87 %cres_89
	store %cres_90 %retValAddr_84
	br <17>

<17> after_call
	%cres_61 = load %retValAddr_84
	%cres_62 = bit_and %cres_60 %cres_61
	store %cres_62 %retValAddr_55
	br <9>

<9> after_call
	%res_21 = load %retValAddr_55
	%res_23 = bit_xor %idVal_20 %res_21
	store %res_23 %varAddr_4
	br <3>

<3> for_step
	%idVal_24 = load %varAddr_7
	%oldVal_25 = load %varAddr_7
	%newVal_26 = inc %oldVal_25
	store %newVal_26 %varAddr_7
	br <1>

<4> for_end
	%idVal_27 = load %varAddr_4
	%res_28 = bit_xor %idVal_27 123456789
	ret %res_28

}

define int2chr ( %argVal_0 ) {
<0> entry
	%global2local_12 = alloca 8
	%argAddr_1 = alloca 8
	%tmp_13 = load @asciiTable
	store %tmp_13 %global2local_12
	store %argVal_0 %argAddr_1
	%idVal_2 = load %argAddr_1
	%res_3 = ge %idVal_2 32
	br %res_3 <3> <2>

<3> lhs_true
	%idVal_4 = load %argAddr_1
	%res_5 = le %idVal_4 126
	br %res_5 <1> <2>

<1> if_true
	%classPtr_7 = load %global2local_12
	%idVal_8 = load %argAddr_1
	%res_9 = sub %idVal_8 32
	%idVal_10 = load %argAddr_1
	%res_11 = sub %idVal_10 32
	%res_6 = __stringSubstring ( %classPtr_7 %res_9 %res_11 )
	ret %res_6

<2> if_merge
	ret $str_1

}

define toStringHex ( %argVal_0 ) {
<0> entry
	%global2local_51 = alloca 8
	%cargAddr_40 = alloca 8
	%retValAddr_39 = alloca 8
	%cargAddr_28 = alloca 8
	%retValAddr_27 = alloca 8
	%varAddr_6 = alloca 8
	%varAddr_3 = alloca 8
	%varAddr_2 = alloca 8
	%argAddr_1 = alloca 8
	%tmp_52 = load @asciiTable
	store %tmp_52 %global2local_51
	store %argVal_0 %argAddr_1
	store $str_1 %varAddr_2
	store 28 %varAddr_3
	br <1>

<1> for_cond
	%idVal_4 = load %varAddr_3
	%res_5 = ge %idVal_4 0
	br %res_5 <2> <4>

<2> for_body
	%idVal_7 = load %argAddr_1
	%idVal_8 = load %varAddr_3
	%res_9 = rsft %idVal_7 %idVal_8
	%res_10 = bit_and %res_9 15
	store %res_10 %varAddr_6
	%idVal_11 = load %varAddr_6
	%res_12 = lt %idVal_11 10
	br %res_12 <5> <6>

<5> if_true
	%idVal_13 = load %varAddr_2
	%idVal_15 = load %varAddr_6
	%res_16 = add 48 %idVal_15
	br <9>

<9> centry
	store %res_16 %cargAddr_28
	%cidVal_29 = load %cargAddr_28
	%cres_30 = ge %cidVal_29 32
	br %cres_30 <10> <12>

<10> clhs_true
	%cidVal_31 = load %cargAddr_28
	%cres_32 = le %cidVal_31 126
	br %cres_32 <11> <12>

<11> cif_true
	%cclassPtr_33 = load %global2local_51
	%cidVal_34 = load %cargAddr_28
	%cres_35 = sub %cidVal_34 32
	%cidVal_36 = load %cargAddr_28
	%cres_37 = sub %cidVal_36 32
	%cres_38 = __stringSubstring ( %cclassPtr_33 %cres_35 %cres_37 )
	store %cres_38 %retValAddr_27
	br <8>

<12> cif_merge
	store $str_1 %retValAddr_27
	br <8>

<8> after_call
	%res_14 = load %retValAddr_27
	%res_17 = __stringAdd ( %idVal_13 %res_14 )
	store %res_17 %varAddr_2
	br <7>

<6> if_false
	%idVal_18 = load %varAddr_2
	%idVal_20 = load %varAddr_6
	%res_21 = add 65 %idVal_20
	%res_22 = sub %res_21 10
	br <14>

<14> centry
	store %res_22 %cargAddr_40
	%cidVal_41 = load %cargAddr_40
	%cres_42 = ge %cidVal_41 32
	br %cres_42 <15> <17>

<15> clhs_true
	%cidVal_43 = load %cargAddr_40
	%cres_44 = le %cidVal_43 126
	br %cres_44 <16> <17>

<16> cif_true
	%cclassPtr_45 = load %global2local_51
	%cidVal_46 = load %cargAddr_40
	%cres_47 = sub %cidVal_46 32
	%cidVal_48 = load %cargAddr_40
	%cres_49 = sub %cidVal_48 32
	%cres_50 = __stringSubstring ( %cclassPtr_45 %cres_47 %cres_49 )
	store %cres_50 %retValAddr_39
	br <13>

<17> cif_merge
	store $str_1 %retValAddr_39
	br <13>

<13> after_call
	%res_19 = load %retValAddr_39
	%res_23 = __stringAdd ( %idVal_18 %res_19 )
	store %res_23 %varAddr_2
	br <7>

<7> if_merge
	br <3>

<3> for_step
	%idVal_24 = load %varAddr_3
	%res_25 = sub %idVal_24 4
	store %res_25 %varAddr_3
	br <1>

<4> for_end
	%idVal_26 = load %varAddr_2
	ret %idVal_26

}

define getnumber ( %argVal_0 %argVal_2 %argVal_4 ) {
<0> entry
	%cargAddr_77 = alloca 8
	%cargAddr_76 = alloca 8
	%retValAddr_75 = alloca 8
	%cargAddr_60 = alloca 8
	%cargAddr_59 = alloca 8
	%cvarAddr_58 = alloca 8
	%retValAddr_57 = alloca 8
	%cargAddr_51 = alloca 8
	%cargAddr_50 = alloca 8
	%retValAddr_49 = alloca 8
	%cargAddr_25 = alloca 8
	%cargAddr_24 = alloca 8
	%cvarAddr_23 = alloca 8
	%cvarAddr_22 = alloca 8
	%retValAddr_21 = alloca 8
	%varAddr_9 = alloca 8
	%varAddr_6 = alloca 8
	%argAddr_5 = alloca 8
	%argAddr_3 = alloca 8
	%argAddr_1 = alloca 8
	store %argVal_0 %argAddr_1
	store %argVal_2 %argAddr_3
	store %argVal_4 %argAddr_5
	%idVal_7 = load %argAddr_5
	%res_8 = bit_and %idVal_7 31
	store %res_8 %varAddr_6
	%idVal_11 = load %argAddr_1
	%idVal_12 = load %argAddr_3
	br <2>

<2> centry
	store %idVal_11 %cargAddr_25
	store %idVal_12 %cargAddr_24
	%cidVal_26 = load %cargAddr_25
	%cres_27 = add %cidVal_26 1
	store %cres_27 %cvarAddr_23
	store 0 %cvarAddr_22
	br <3>

<3> cfor_cond
	%cidVal_28 = load %cvarAddr_22
	%cidVal_29 = load %cargAddr_24
	%cres_30 = mul %cidVal_29 10
	%cres_31 = lt %cidVal_28 %cres_30
	br %cres_31 <4> <6>

<4> cfor_body
	%cidVal_32 = load %cvarAddr_23
	%cidVal_33 = load %cvarAddr_23
	br <12>

<12> centry
	store %cidVal_33 %cargAddr_77
	store 13 %cargAddr_76
	%cidVal_78 = load %cargAddr_77
	%cidVal_79 = load %cargAddr_76
	%cres_80 = lsft %cidVal_78 %cidVal_79
	%cres_81 = hilo ( 32767 65535 )
	%cres_82 = bit_and %cres_80 %cres_81
	store %cres_82 %retValAddr_75
	br <11>

<11> after_call
	%cres_34 = load %retValAddr_75
	%cres_35 = bit_xor %cidVal_32 %cres_34
	store %cres_35 %cvarAddr_23
	%cidVal_36 = load %cvarAddr_23
	%cidVal_37 = load %cvarAddr_23
	%cres_38 = shift_r ( %cidVal_37 17 )
	%cres_39 = bit_xor %cidVal_36 %cres_38
	store %cres_39 %cvarAddr_23
	%cidVal_40 = load %cvarAddr_23
	%cidVal_41 = load %cvarAddr_23
	%cres_42 = shift_l ( %cidVal_41 5 )
	%cres_43 = bit_xor %cidVal_40 %cres_42
	store %cres_43 %cvarAddr_23
	br <5>

<5> cfor_step
	%cidVal_44 = load %cvarAddr_22
	%coldVal_45 = load %cvarAddr_22
	%cnewVal_46 = inc %coldVal_45
	store %cnewVal_46 %cvarAddr_22
	br <3>

<6> cfor_end
	%cidVal_47 = load %cvarAddr_23
	%cres_48 = bit_xor %cidVal_47 123456789
	store %cres_48 %retValAddr_21
	br <1>

<1> after_call
	%res_10 = load %retValAddr_21
	store %res_10 %varAddr_9
	%idVal_14 = load %varAddr_9
	%idVal_15 = load %varAddr_6
	br <8>

<8> centry
	store %idVal_14 %cargAddr_51
	store %idVal_15 %cargAddr_50
	%cidVal_52 = load %cargAddr_51
	%cidVal_53 = load %cargAddr_50
	%cres_54 = lsft %cidVal_52 %cidVal_53
	%cres_55 = hilo ( 32767 65535 )
	%cres_56 = bit_and %cres_54 %cres_55
	store %cres_56 %retValAddr_49
	br <7>

<7> after_call
	%res_13 = load %retValAddr_49
	%idVal_17 = load %varAddr_9
	%idVal_18 = load %varAddr_6
	%res_19 = sub 32 %idVal_18
	br <10>

<10> centry
	store %idVal_17 %cargAddr_60
	store %res_19 %cargAddr_59
	%cres_61 = hilo ( 32767 65535 )
	store %cres_61 %cvarAddr_58
	%cidVal_62 = load %cvarAddr_58
	%cidVal_63 = load %cargAddr_59
	%cres_64 = rsft %cidVal_62 %cidVal_63
	%cres_65 = lsft %cres_64 1
	%cres_66 = add %cres_65 1
	store %cres_66 %cvarAddr_58
	%cidVal_67 = load %cvarAddr_58
	%cidVal_68 = load %cargAddr_60
	%cidVal_69 = load %cargAddr_59
	%cres_70 = rsft %cidVal_68 %cidVal_69
	%cres_71 = bit_and %cidVal_67 %cres_70
	store %cres_71 %cvarAddr_58
	%cidVal_72 = load %cvarAddr_58
	%cres_73 = hilo ( 32767 65535 )
	%cres_74 = bit_and %cidVal_72 %cres_73
	store %cres_74 %retValAddr_57
	br <9>

<9> after_call
	%res_16 = load %retValAddr_57
	%res_20 = bit_or %res_13 %res_16
	ret %res_20

}

define main ( ) {
<0> entry
	%cargAddr_461 = alloca 8
	%cvarAddr_460 = alloca 8
	%cvarAddr_459 = alloca 8
	%cvarAddr_458 = alloca 8
	%retValAddr_457 = alloca 8
	%cargAddr_434 = alloca 8
	%cvarAddr_433 = alloca 8
	%cvarAddr_432 = alloca 8
	%cvarAddr_431 = alloca 8
	%retValAddr_430 = alloca 8
	%cargAddr_407 = alloca 8
	%cvarAddr_406 = alloca 8
	%cvarAddr_405 = alloca 8
	%cvarAddr_404 = alloca 8
	%retValAddr_403 = alloca 8
	%cargAddr_380 = alloca 8
	%cvarAddr_379 = alloca 8
	%cvarAddr_378 = alloca 8
	%cvarAddr_377 = alloca 8
	%retValAddr_376 = alloca 8
	%cargAddr_352 = alloca 8
	%cargAddr_351 = alloca 8
	%cvarAddr_350 = alloca 8
	%cvarAddr_349 = alloca 8
	%retValAddr_348 = alloca 8
	%cargAddr_324 = alloca 8
	%cargAddr_323 = alloca 8
	%cvarAddr_322 = alloca 8
	%cvarAddr_321 = alloca 8
	%retValAddr_320 = alloca 8
	%cargAddr_296 = alloca 8
	%cargAddr_295 = alloca 8
	%cvarAddr_294 = alloca 8
	%cvarAddr_293 = alloca 8
	%retValAddr_292 = alloca 8
	%cargAddr_268 = alloca 8
	%cargAddr_267 = alloca 8
	%cvarAddr_266 = alloca 8
	%cvarAddr_265 = alloca 8
	%retValAddr_264 = alloca 8
	%cargAddr_240 = alloca 8
	%cargAddr_239 = alloca 8
	%cvarAddr_238 = alloca 8
	%cvarAddr_237 = alloca 8
	%retValAddr_236 = alloca 8
	%cargAddr_212 = alloca 8
	%cargAddr_211 = alloca 8
	%cvarAddr_210 = alloca 8
	%cvarAddr_209 = alloca 8
	%retValAddr_208 = alloca 8
	%cargAddr_184 = alloca 8
	%cargAddr_183 = alloca 8
	%cvarAddr_182 = alloca 8
	%cvarAddr_181 = alloca 8
	%retValAddr_180 = alloca 8
	%cargAddr_166 = alloca 8
	%cargAddr_165 = alloca 8
	%cargAddr_164 = alloca 8
	%cvarAddr_163 = alloca 8
	%cvarAddr_162 = alloca 8
	%retValAddr_161 = alloca 8
	%cargAddr_147 = alloca 8
	%cargAddr_146 = alloca 8
	%cargAddr_145 = alloca 8
	%cvarAddr_144 = alloca 8
	%cvarAddr_143 = alloca 8
	%retValAddr_142 = alloca 8
	%cargAddr_128 = alloca 8
	%cargAddr_127 = alloca 8
	%cargAddr_126 = alloca 8
	%cvarAddr_125 = alloca 8
	%cvarAddr_124 = alloca 8
	%retValAddr_123 = alloca 8
	%cargAddr_109 = alloca 8
	%cargAddr_108 = alloca 8
	%cargAddr_107 = alloca 8
	%cvarAddr_106 = alloca 8
	%cvarAddr_105 = alloca 8
	%retValAddr_104 = alloca 8
	%varAddr_54 = alloca 8
	%varAddr_47 = alloca 8
	%varAddr_42 = alloca 8
	%varAddr_37 = alloca 8
	%varAddr_32 = alloca 8
	%varAddr_19 = alloca 8
	%varAddr_18 = alloca 8
	%varAddr_17 = alloca 8
	%varAddr_16 = alloca 8
	%varAddr_15 = alloca 8
	%varAddr_8 = alloca 8
	%varAddr_7 = alloca 8
	%varAddr_6 = alloca 8
	%varAddr_5 = alloca 8
	%varAddr_4 = alloca 8
	%varAddr_3 = alloca 8
	%varAddr_2 = alloca 8
	%varAddr_1 = alloca 8
	%varAddr_0 = alloca 8
	%res_9 = getInt ( )
	store %res_9 %varAddr_0
	%res_10 = getInt ( )
	store %res_10 %varAddr_1
	%res_11 = getInt ( )
	store %res_11 %varAddr_2
	%res_12 = getInt ( )
	store %res_12 %varAddr_3
	%res_13 = getInt ( )
	store %res_13 %varAddr_4
	%res_14 = getInt ( )
	store %res_14 %varAddr_5
	store 30 %varAddr_15
	store 0 %varAddr_16
	store 0 %varAddr_17
	store 0 %varAddr_18
	store 0 %varAddr_19
	%idVal_20 = load %varAddr_0
	store %idVal_20 %varAddr_6
	br <1>

<1> for_cond
	%idVal_21 = load %varAddr_6
	%idVal_22 = load %varAddr_1
	%res_23 = lt %idVal_21 %idVal_22
	br %res_23 <2> <4>

<2> for_body
	%idVal_24 = load %varAddr_2
	store %idVal_24 %varAddr_7
	br <5>

<5> for_cond
	%idVal_25 = load %varAddr_7
	%idVal_26 = load %varAddr_3
	%res_27 = lt %idVal_25 %idVal_26
	br %res_27 <6> <8>

<6> for_body
	%idVal_28 = load %varAddr_4
	store %idVal_28 %varAddr_8
	br <9>

<9> for_cond
	%idVal_29 = load %varAddr_8
	%idVal_30 = load %varAddr_5
	%res_31 = lt %idVal_29 %idVal_30
	br %res_31 <10> <12>

<10> for_body
	%idVal_34 = load %varAddr_0
	%idVal_35 = load %varAddr_15
	%idVal_36 = load %varAddr_8
	br <14>

<14> centry
	store %idVal_34 %cargAddr_109
	store %idVal_35 %cargAddr_108
	store %idVal_36 %cargAddr_107
	%cidVal_110 = load %cargAddr_107
	%cres_111 = bit_and %cidVal_110 31
	store %cres_111 %cvarAddr_106
	%cidVal_112 = load %cargAddr_109
	%cidVal_113 = load %cargAddr_108
	%cres_114 = xorshift ( %cidVal_112 %cidVal_113 )
	store %cres_114 %cvarAddr_105
	%cidVal_115 = load %cvarAddr_105
	%cidVal_116 = load %cvarAddr_106
	%cres_117 = shift_l ( %cidVal_115 %cidVal_116 )
	%cidVal_118 = load %cvarAddr_105
	%cidVal_119 = load %cvarAddr_106
	%cres_120 = sub 32 %cidVal_119
	%cres_121 = shift_r ( %cidVal_118 %cres_120 )
	%cres_122 = bit_or %cres_117 %cres_121
	store %cres_122 %retValAddr_104
	br <13>

<13> after_call
	%res_33 = load %retValAddr_104
	store %res_33 %varAddr_32
	%idVal_39 = load %varAddr_6
	%idVal_40 = load %varAddr_15
	%idVal_41 = load %varAddr_8
	br <16>

<16> centry
	store %idVal_39 %cargAddr_128
	store %idVal_40 %cargAddr_127
	store %idVal_41 %cargAddr_126
	%cidVal_129 = load %cargAddr_126
	%cres_130 = bit_and %cidVal_129 31
	store %cres_130 %cvarAddr_125
	%cidVal_131 = load %cargAddr_128
	%cidVal_132 = load %cargAddr_127
	%cres_133 = xorshift ( %cidVal_131 %cidVal_132 )
	store %cres_133 %cvarAddr_124
	%cidVal_134 = load %cvarAddr_124
	%cidVal_135 = load %cvarAddr_125
	%cres_136 = shift_l ( %cidVal_134 %cidVal_135 )
	%cidVal_137 = load %cvarAddr_124
	%cidVal_138 = load %cvarAddr_125
	%cres_139 = sub 32 %cidVal_138
	%cres_140 = shift_r ( %cidVal_137 %cres_139 )
	%cres_141 = bit_or %cres_136 %cres_140
	store %cres_141 %retValAddr_123
	br <15>

<15> after_call
	%res_38 = load %retValAddr_123
	store %res_38 %varAddr_37
	%idVal_44 = load %varAddr_7
	%idVal_45 = load %varAddr_15
	%idVal_46 = load %varAddr_8
	br <18>

<18> centry
	store %idVal_44 %cargAddr_147
	store %idVal_45 %cargAddr_146
	store %idVal_46 %cargAddr_145
	%cidVal_148 = load %cargAddr_145
	%cres_149 = bit_and %cidVal_148 31
	store %cres_149 %cvarAddr_144
	%cidVal_150 = load %cargAddr_147
	%cidVal_151 = load %cargAddr_146
	%cres_152 = xorshift ( %cidVal_150 %cidVal_151 )
	store %cres_152 %cvarAddr_143
	%cidVal_153 = load %cvarAddr_143
	%cidVal_154 = load %cvarAddr_144
	%cres_155 = shift_l ( %cidVal_153 %cidVal_154 )
	%cidVal_156 = load %cvarAddr_143
	%cidVal_157 = load %cvarAddr_144
	%cres_158 = sub 32 %cidVal_157
	%cres_159 = shift_r ( %cidVal_156 %cres_158 )
	%cres_160 = bit_or %cres_155 %cres_159
	store %cres_160 %retValAddr_142
	br <17>

<17> after_call
	%res_43 = load %retValAddr_142
	store %res_43 %varAddr_42
	%idVal_49 = load %varAddr_6
	%idVal_50 = load %varAddr_7
	%res_51 = bit_xor %idVal_49 %idVal_50
	%idVal_52 = load %varAddr_15
	%idVal_53 = load %varAddr_8
	br <20>

<20> centry
	store %res_51 %cargAddr_166
	store %idVal_52 %cargAddr_165
	store %idVal_53 %cargAddr_164
	%cidVal_167 = load %cargAddr_164
	%cres_168 = bit_and %cidVal_167 31
	store %cres_168 %cvarAddr_163
	%cidVal_169 = load %cargAddr_166
	%cidVal_170 = load %cargAddr_165
	%cres_171 = xorshift ( %cidVal_169 %cidVal_170 )
	store %cres_171 %cvarAddr_162
	%cidVal_172 = load %cvarAddr_162
	%cidVal_173 = load %cvarAddr_163
	%cres_174 = shift_l ( %cidVal_172 %cidVal_173 )
	%cidVal_175 = load %cvarAddr_162
	%cidVal_176 = load %cvarAddr_163
	%cres_177 = sub 32 %cidVal_176
	%cres_178 = shift_r ( %cidVal_175 %cres_177 )
	%cres_179 = bit_or %cres_174 %cres_178
	store %cres_179 %retValAddr_161
	br <19>

<19> after_call
	%res_48 = load %retValAddr_161
	store %res_48 %varAddr_47
	%idVal_56 = load %varAddr_8
	br <22>

<22> centry
	store %idVal_56 %cargAddr_184
	store 1 %cargAddr_183
	%cidVal_185 = load %cargAddr_184
	%cres_186 = add %cidVal_185 1
	store %cres_186 %cvarAddr_182
	store 0 %cvarAddr_181
	br <23>

<23> cfor_cond
	%cidVal_187 = load %cvarAddr_181
	%cidVal_188 = load %cargAddr_183
	%cres_189 = mul %cidVal_188 10
	%cres_190 = lt %cidVal_187 %cres_189
	br %cres_190 <24> <26>

<24> cfor_body
	%cidVal_191 = load %cvarAddr_182
	%cidVal_192 = load %cvarAddr_182
	%cres_193 = shift_l ( %cidVal_192 13 )
	%cres_194 = bit_xor %cidVal_191 %cres_193
	store %cres_194 %cvarAddr_182
	%cidVal_195 = load %cvarAddr_182
	%cidVal_196 = load %cvarAddr_182
	%cres_197 = shift_r ( %cidVal_196 17 )
	%cres_198 = bit_xor %cidVal_195 %cres_197
	store %cres_198 %cvarAddr_182
	%cidVal_199 = load %cvarAddr_182
	%cidVal_200 = load %cvarAddr_182
	%cres_201 = shift_l ( %cidVal_200 5 )
	%cres_202 = bit_xor %cidVal_199 %cres_201
	store %cres_202 %cvarAddr_182
	br <25>

<25> cfor_step
	%cidVal_203 = load %cvarAddr_181
	%coldVal_204 = load %cvarAddr_181
	%cnewVal_205 = inc %coldVal_204
	store %cnewVal_205 %cvarAddr_181
	br <23>

<26> cfor_end
	%cidVal_206 = load %cvarAddr_182
	%cres_207 = bit_xor %cidVal_206 123456789
	store %cres_207 %retValAddr_180
	br <21>

<21> after_call
	%res_55 = load %retValAddr_180
	%idVal_58 = load %varAddr_7
	br <28>

<28> centry
	store %idVal_58 %cargAddr_212
	store 1 %cargAddr_211
	%cidVal_213 = load %cargAddr_212
	%cres_214 = add %cidVal_213 1
	store %cres_214 %cvarAddr_210
	store 0 %cvarAddr_209
	br <29>

<29> cfor_cond
	%cidVal_215 = load %cvarAddr_209
	%cidVal_216 = load %cargAddr_211
	%cres_217 = mul %cidVal_216 10
	%cres_218 = lt %cidVal_215 %cres_217
	br %cres_218 <30> <32>

<30> cfor_body
	%cidVal_219 = load %cvarAddr_210
	%cidVal_220 = load %cvarAddr_210
	%cres_221 = shift_l ( %cidVal_220 13 )
	%cres_222 = bit_xor %cidVal_219 %cres_221
	store %cres_222 %cvarAddr_210
	%cidVal_223 = load %cvarAddr_210
	%cidVal_224 = load %cvarAddr_210
	%cres_225 = shift_r ( %cidVal_224 17 )
	%cres_226 = bit_xor %cidVal_223 %cres_225
	store %cres_226 %cvarAddr_210
	%cidVal_227 = load %cvarAddr_210
	%cidVal_228 = load %cvarAddr_210
	%cres_229 = shift_l ( %cidVal_228 5 )
	%cres_230 = bit_xor %cidVal_227 %cres_229
	store %cres_230 %cvarAddr_210
	br <31>

<31> cfor_step
	%cidVal_231 = load %cvarAddr_209
	%coldVal_232 = load %cvarAddr_209
	%cnewVal_233 = inc %coldVal_232
	store %cnewVal_233 %cvarAddr_209
	br <29>

<32> cfor_end
	%cidVal_234 = load %cvarAddr_210
	%cres_235 = bit_xor %cidVal_234 123456789
	store %cres_235 %retValAddr_208
	br <27>

<27> after_call
	%res_57 = load %retValAddr_208
	%res_59 = bit_xor %res_55 %res_57
	%idVal_61 = load %varAddr_6
	br <34>

<34> centry
	store %idVal_61 %cargAddr_240
	store 1 %cargAddr_239
	%cidVal_241 = load %cargAddr_240
	%cres_242 = add %cidVal_241 1
	store %cres_242 %cvarAddr_238
	store 0 %cvarAddr_237
	br <35>

<35> cfor_cond
	%cidVal_243 = load %cvarAddr_237
	%cidVal_244 = load %cargAddr_239
	%cres_245 = mul %cidVal_244 10
	%cres_246 = lt %cidVal_243 %cres_245
	br %cres_246 <36> <38>

<36> cfor_body
	%cidVal_247 = load %cvarAddr_238
	%cidVal_248 = load %cvarAddr_238
	%cres_249 = shift_l ( %cidVal_248 13 )
	%cres_250 = bit_xor %cidVal_247 %cres_249
	store %cres_250 %cvarAddr_238
	%cidVal_251 = load %cvarAddr_238
	%cidVal_252 = load %cvarAddr_238
	%cres_253 = shift_r ( %cidVal_252 17 )
	%cres_254 = bit_xor %cidVal_251 %cres_253
	store %cres_254 %cvarAddr_238
	%cidVal_255 = load %cvarAddr_238
	%cidVal_256 = load %cvarAddr_238
	%cres_257 = shift_l ( %cidVal_256 5 )
	%cres_258 = bit_xor %cidVal_255 %cres_257
	store %cres_258 %cvarAddr_238
	br <37>

<37> cfor_step
	%cidVal_259 = load %cvarAddr_237
	%coldVal_260 = load %cvarAddr_237
	%cnewVal_261 = inc %coldVal_260
	store %cnewVal_261 %cvarAddr_237
	br <35>

<38> cfor_end
	%cidVal_262 = load %cvarAddr_238
	%cres_263 = bit_xor %cidVal_262 123456789
	store %cres_263 %retValAddr_236
	br <33>

<33> after_call
	%res_60 = load %retValAddr_236
	%res_62 = bit_xor %res_59 %res_60
	store %res_62 %varAddr_54
	%idVal_63 = load %varAddr_16
	%idVal_65 = load %varAddr_32
	%idVal_66 = load %varAddr_54
	%res_67 = bit_xor %idVal_65 %idVal_66
	br <40>

<40> centry
	store %res_67 %cargAddr_268
	store 1 %cargAddr_267
	%cidVal_269 = load %cargAddr_268
	%cres_270 = add %cidVal_269 1
	store %cres_270 %cvarAddr_266
	store 0 %cvarAddr_265
	br <41>

<41> cfor_cond
	%cidVal_271 = load %cvarAddr_265
	%cidVal_272 = load %cargAddr_267
	%cres_273 = mul %cidVal_272 10
	%cres_274 = lt %cidVal_271 %cres_273
	br %cres_274 <42> <44>

<42> cfor_body
	%cidVal_275 = load %cvarAddr_266
	%cidVal_276 = load %cvarAddr_266
	%cres_277 = shift_l ( %cidVal_276 13 )
	%cres_278 = bit_xor %cidVal_275 %cres_277
	store %cres_278 %cvarAddr_266
	%cidVal_279 = load %cvarAddr_266
	%cidVal_280 = load %cvarAddr_266
	%cres_281 = shift_r ( %cidVal_280 17 )
	%cres_282 = bit_xor %cidVal_279 %cres_281
	store %cres_282 %cvarAddr_266
	%cidVal_283 = load %cvarAddr_266
	%cidVal_284 = load %cvarAddr_266
	%cres_285 = shift_l ( %cidVal_284 5 )
	%cres_286 = bit_xor %cidVal_283 %cres_285
	store %cres_286 %cvarAddr_266
	br <43>

<43> cfor_step
	%cidVal_287 = load %cvarAddr_265
	%coldVal_288 = load %cvarAddr_265
	%cnewVal_289 = inc %coldVal_288
	store %cnewVal_289 %cvarAddr_265
	br <41>

<44> cfor_end
	%cidVal_290 = load %cvarAddr_266
	%cres_291 = bit_xor %cidVal_290 123456789
	store %cres_291 %retValAddr_264
	br <39>

<39> after_call
	%res_64 = load %retValAddr_264
	%res_68 = add %idVal_63 %res_64
	store %res_68 %varAddr_16
	%idVal_69 = load %varAddr_17
	%idVal_71 = load %varAddr_37
	%idVal_72 = load %varAddr_54
	%res_73 = bit_xor %idVal_71 %idVal_72
	br <46>

<46> centry
	store %res_73 %cargAddr_296
	store 1 %cargAddr_295
	%cidVal_297 = load %cargAddr_296
	%cres_298 = add %cidVal_297 1
	store %cres_298 %cvarAddr_294
	store 0 %cvarAddr_293
	br <47>

<47> cfor_cond
	%cidVal_299 = load %cvarAddr_293
	%cidVal_300 = load %cargAddr_295
	%cres_301 = mul %cidVal_300 10
	%cres_302 = lt %cidVal_299 %cres_301
	br %cres_302 <48> <50>

<48> cfor_body
	%cidVal_303 = load %cvarAddr_294
	%cidVal_304 = load %cvarAddr_294
	%cres_305 = shift_l ( %cidVal_304 13 )
	%cres_306 = bit_xor %cidVal_303 %cres_305
	store %cres_306 %cvarAddr_294
	%cidVal_307 = load %cvarAddr_294
	%cidVal_308 = load %cvarAddr_294
	%cres_309 = shift_r ( %cidVal_308 17 )
	%cres_310 = bit_xor %cidVal_307 %cres_309
	store %cres_310 %cvarAddr_294
	%cidVal_311 = load %cvarAddr_294
	%cidVal_312 = load %cvarAddr_294
	%cres_313 = shift_l ( %cidVal_312 5 )
	%cres_314 = bit_xor %cidVal_311 %cres_313
	store %cres_314 %cvarAddr_294
	br <49>

<49> cfor_step
	%cidVal_315 = load %cvarAddr_293
	%coldVal_316 = load %cvarAddr_293
	%cnewVal_317 = inc %coldVal_316
	store %cnewVal_317 %cvarAddr_293
	br <47>

<50> cfor_end
	%cidVal_318 = load %cvarAddr_294
	%cres_319 = bit_xor %cidVal_318 123456789
	store %cres_319 %retValAddr_292
	br <45>

<45> after_call
	%res_70 = load %retValAddr_292
	%res_74 = add %idVal_69 %res_70
	store %res_74 %varAddr_17
	%idVal_75 = load %varAddr_18
	%idVal_77 = load %varAddr_42
	%idVal_78 = load %varAddr_54
	%res_79 = bit_xor %idVal_77 %idVal_78
	br <52>

<52> centry
	store %res_79 %cargAddr_324
	store 1 %cargAddr_323
	%cidVal_325 = load %cargAddr_324
	%cres_326 = add %cidVal_325 1
	store %cres_326 %cvarAddr_322
	store 0 %cvarAddr_321
	br <53>

<53> cfor_cond
	%cidVal_327 = load %cvarAddr_321
	%cidVal_328 = load %cargAddr_323
	%cres_329 = mul %cidVal_328 10
	%cres_330 = lt %cidVal_327 %cres_329
	br %cres_330 <54> <56>

<54> cfor_body
	%cidVal_331 = load %cvarAddr_322
	%cidVal_332 = load %cvarAddr_322
	%cres_333 = shift_l ( %cidVal_332 13 )
	%cres_334 = bit_xor %cidVal_331 %cres_333
	store %cres_334 %cvarAddr_322
	%cidVal_335 = load %cvarAddr_322
	%cidVal_336 = load %cvarAddr_322
	%cres_337 = shift_r ( %cidVal_336 17 )
	%cres_338 = bit_xor %cidVal_335 %cres_337
	store %cres_338 %cvarAddr_322
	%cidVal_339 = load %cvarAddr_322
	%cidVal_340 = load %cvarAddr_322
	%cres_341 = shift_l ( %cidVal_340 5 )
	%cres_342 = bit_xor %cidVal_339 %cres_341
	store %cres_342 %cvarAddr_322
	br <55>

<55> cfor_step
	%cidVal_343 = load %cvarAddr_321
	%coldVal_344 = load %cvarAddr_321
	%cnewVal_345 = inc %coldVal_344
	store %cnewVal_345 %cvarAddr_321
	br <53>

<56> cfor_end
	%cidVal_346 = load %cvarAddr_322
	%cres_347 = bit_xor %cidVal_346 123456789
	store %cres_347 %retValAddr_320
	br <51>

<51> after_call
	%res_76 = load %retValAddr_320
	%res_80 = add %idVal_75 %res_76
	store %res_80 %varAddr_18
	%idVal_81 = load %varAddr_19
	%idVal_83 = load %varAddr_47
	%idVal_84 = load %varAddr_54
	%res_85 = bit_xor %idVal_83 %idVal_84
	br <58>

<58> centry
	store %res_85 %cargAddr_352
	store 1 %cargAddr_351
	%cidVal_353 = load %cargAddr_352
	%cres_354 = add %cidVal_353 1
	store %cres_354 %cvarAddr_350
	store 0 %cvarAddr_349
	br <59>

<59> cfor_cond
	%cidVal_355 = load %cvarAddr_349
	%cidVal_356 = load %cargAddr_351
	%cres_357 = mul %cidVal_356 10
	%cres_358 = lt %cidVal_355 %cres_357
	br %cres_358 <60> <62>

<60> cfor_body
	%cidVal_359 = load %cvarAddr_350
	%cidVal_360 = load %cvarAddr_350
	%cres_361 = shift_l ( %cidVal_360 13 )
	%cres_362 = bit_xor %cidVal_359 %cres_361
	store %cres_362 %cvarAddr_350
	%cidVal_363 = load %cvarAddr_350
	%cidVal_364 = load %cvarAddr_350
	%cres_365 = shift_r ( %cidVal_364 17 )
	%cres_366 = bit_xor %cidVal_363 %cres_365
	store %cres_366 %cvarAddr_350
	%cidVal_367 = load %cvarAddr_350
	%cidVal_368 = load %cvarAddr_350
	%cres_369 = shift_l ( %cidVal_368 5 )
	%cres_370 = bit_xor %cidVal_367 %cres_369
	store %cres_370 %cvarAddr_350
	br <61>

<61> cfor_step
	%cidVal_371 = load %cvarAddr_349
	%coldVal_372 = load %cvarAddr_349
	%cnewVal_373 = inc %coldVal_372
	store %cnewVal_373 %cvarAddr_349
	br <59>

<62> cfor_end
	%cidVal_374 = load %cvarAddr_350
	%cres_375 = bit_xor %cidVal_374 123456789
	store %cres_375 %retValAddr_348
	br <57>

<57> after_call
	%res_82 = load %retValAddr_348
	%res_86 = add %idVal_81 %res_82
	store %res_86 %varAddr_19
	br <11>

<11> for_step
	%idVal_87 = load %varAddr_8
	%oldVal_88 = load %varAddr_8
	%newVal_89 = inc %oldVal_88
	store %newVal_89 %varAddr_8
	br <9>

<12> for_end
	br <7>

<7> for_step
	%idVal_90 = load %varAddr_7
	%oldVal_91 = load %varAddr_7
	%newVal_92 = inc %oldVal_91
	store %newVal_92 %varAddr_7
	br <5>

<8> for_end
	br <3>

<3> for_step
	%idVal_93 = load %varAddr_6
	%oldVal_94 = load %varAddr_6
	%newVal_95 = inc %oldVal_94
	store %newVal_95 %varAddr_6
	br <1>

<4> for_end
	%idVal_97 = load %varAddr_16
	br <64>

<64> centry
	store %idVal_97 %cargAddr_380
	store $str_1 %cvarAddr_379
	store 28 %cvarAddr_378
	br <65>

<65> cfor_cond
	%cidVal_381 = load %cvarAddr_378
	%cres_382 = ge %cidVal_381 0
	br %cres_382 <66> <71>

<66> cfor_body
	%cidVal_383 = load %cargAddr_380
	%cidVal_384 = load %cvarAddr_378
	%cres_385 = rsft %cidVal_383 %cidVal_384
	%cres_386 = bit_and %cres_385 15
	store %cres_386 %cvarAddr_377
	%cidVal_387 = load %cvarAddr_377
	%cres_388 = lt %cidVal_387 10
	br %cres_388 <67> <68>

<67> cif_true
	%cidVal_389 = load %cvarAddr_379
	%cidVal_390 = load %cvarAddr_377
	%cres_391 = add 48 %cidVal_390
	%cres_392 = int2chr ( %cres_391 )
	%cres_393 = __stringAdd ( %cidVal_389 %cres_392 )
	store %cres_393 %cvarAddr_379
	br <69>

<68> cif_false
	%cidVal_394 = load %cvarAddr_379
	%cidVal_395 = load %cvarAddr_377
	%cres_396 = add 65 %cidVal_395
	%cres_397 = sub %cres_396 10
	%cres_398 = int2chr ( %cres_397 )
	%cres_399 = __stringAdd ( %cidVal_394 %cres_398 )
	store %cres_399 %cvarAddr_379
	br <69>

<69> cif_merge
	br <70>

<70> cfor_step
	%cidVal_400 = load %cvarAddr_378
	%cres_401 = sub %cidVal_400 4
	store %cres_401 %cvarAddr_378
	br <65>

<71> cfor_end
	%cidVal_402 = load %cvarAddr_379
	store %cidVal_402 %retValAddr_376
	br <63>

<63> after_call
	%res_96 = load %retValAddr_376
	print ( %res_96 )
	print ( $str_2 )
	%idVal_99 = load %varAddr_17
	br <73>

<73> centry
	store %idVal_99 %cargAddr_407
	store $str_1 %cvarAddr_406
	store 28 %cvarAddr_405
	br <74>

<74> cfor_cond
	%cidVal_408 = load %cvarAddr_405
	%cres_409 = ge %cidVal_408 0
	br %cres_409 <75> <80>

<75> cfor_body
	%cidVal_410 = load %cargAddr_407
	%cidVal_411 = load %cvarAddr_405
	%cres_412 = rsft %cidVal_410 %cidVal_411
	%cres_413 = bit_and %cres_412 15
	store %cres_413 %cvarAddr_404
	%cidVal_414 = load %cvarAddr_404
	%cres_415 = lt %cidVal_414 10
	br %cres_415 <76> <77>

<76> cif_true
	%cidVal_416 = load %cvarAddr_406
	%cidVal_417 = load %cvarAddr_404
	%cres_418 = add 48 %cidVal_417
	%cres_419 = int2chr ( %cres_418 )
	%cres_420 = __stringAdd ( %cidVal_416 %cres_419 )
	store %cres_420 %cvarAddr_406
	br <78>

<77> cif_false
	%cidVal_421 = load %cvarAddr_406
	%cidVal_422 = load %cvarAddr_404
	%cres_423 = add 65 %cidVal_422
	%cres_424 = sub %cres_423 10
	%cres_425 = int2chr ( %cres_424 )
	%cres_426 = __stringAdd ( %cidVal_421 %cres_425 )
	store %cres_426 %cvarAddr_406
	br <78>

<78> cif_merge
	br <79>

<79> cfor_step
	%cidVal_427 = load %cvarAddr_405
	%cres_428 = sub %cidVal_427 4
	store %cres_428 %cvarAddr_405
	br <74>

<80> cfor_end
	%cidVal_429 = load %cvarAddr_406
	store %cidVal_429 %retValAddr_403
	br <72>

<72> after_call
	%res_98 = load %retValAddr_403
	print ( %res_98 )
	print ( $str_2 )
	%idVal_101 = load %varAddr_18
	br <82>

<82> centry
	store %idVal_101 %cargAddr_434
	store $str_1 %cvarAddr_433
	store 28 %cvarAddr_432
	br <83>

<83> cfor_cond
	%cidVal_435 = load %cvarAddr_432
	%cres_436 = ge %cidVal_435 0
	br %cres_436 <84> <89>

<84> cfor_body
	%cidVal_437 = load %cargAddr_434
	%cidVal_438 = load %cvarAddr_432
	%cres_439 = rsft %cidVal_437 %cidVal_438
	%cres_440 = bit_and %cres_439 15
	store %cres_440 %cvarAddr_431
	%cidVal_441 = load %cvarAddr_431
	%cres_442 = lt %cidVal_441 10
	br %cres_442 <85> <86>

<85> cif_true
	%cidVal_443 = load %cvarAddr_433
	%cidVal_444 = load %cvarAddr_431
	%cres_445 = add 48 %cidVal_444
	%cres_446 = int2chr ( %cres_445 )
	%cres_447 = __stringAdd ( %cidVal_443 %cres_446 )
	store %cres_447 %cvarAddr_433
	br <87>

<86> cif_false
	%cidVal_448 = load %cvarAddr_433
	%cidVal_449 = load %cvarAddr_431
	%cres_450 = add 65 %cidVal_449
	%cres_451 = sub %cres_450 10
	%cres_452 = int2chr ( %cres_451 )
	%cres_453 = __stringAdd ( %cidVal_448 %cres_452 )
	store %cres_453 %cvarAddr_433
	br <87>

<87> cif_merge
	br <88>

<88> cfor_step
	%cidVal_454 = load %cvarAddr_432
	%cres_455 = sub %cidVal_454 4
	store %cres_455 %cvarAddr_432
	br <83>

<89> cfor_end
	%cidVal_456 = load %cvarAddr_433
	store %cidVal_456 %retValAddr_430
	br <81>

<81> after_call
	%res_100 = load %retValAddr_430
	print ( %res_100 )
	print ( $str_2 )
	%idVal_103 = load %varAddr_19
	br <91>

<91> centry
	store %idVal_103 %cargAddr_461
	store $str_1 %cvarAddr_460
	store 28 %cvarAddr_459
	br <92>

<92> cfor_cond
	%cidVal_462 = load %cvarAddr_459
	%cres_463 = ge %cidVal_462 0
	br %cres_463 <93> <98>

<93> cfor_body
	%cidVal_464 = load %cargAddr_461
	%cidVal_465 = load %cvarAddr_459
	%cres_466 = rsft %cidVal_464 %cidVal_465
	%cres_467 = bit_and %cres_466 15
	store %cres_467 %cvarAddr_458
	%cidVal_468 = load %cvarAddr_458
	%cres_469 = lt %cidVal_468 10
	br %cres_469 <94> <95>

<94> cif_true
	%cidVal_470 = load %cvarAddr_460
	%cidVal_471 = load %cvarAddr_458
	%cres_472 = add 48 %cidVal_471
	%cres_473 = int2chr ( %cres_472 )
	%cres_474 = __stringAdd ( %cidVal_470 %cres_473 )
	store %cres_474 %cvarAddr_460
	br <96>

<95> cif_false
	%cidVal_475 = load %cvarAddr_460
	%cidVal_476 = load %cvarAddr_458
	%cres_477 = add 65 %cidVal_476
	%cres_478 = sub %cres_477 10
	%cres_479 = int2chr ( %cres_478 )
	%cres_480 = __stringAdd ( %cidVal_475 %cres_479 )
	store %cres_480 %cvarAddr_460
	br <96>

<96> cif_merge
	br <97>

<97> cfor_step
	%cidVal_481 = load %cvarAddr_459
	%cres_482 = sub %cidVal_481 4
	store %cres_482 %cvarAddr_459
	br <92>

<98> cfor_end
	%cidVal_483 = load %cvarAddr_460
	store %cidVal_483 %retValAddr_457
	br <90>

<90> after_call
	%res_102 = load %retValAddr_457
	print ( %res_102 )
	print ( $str_2 )
	println ( $str_1 )
	ret 0

}

