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
	store $str_0 @asciiTable
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
	%argAddr_3 = alloca 8
	%argAddr_1 = alloca 8
	store %argVal_0 %argAddr_1
	store %argVal_2 %argAddr_3
	%idVal_4 = load %argAddr_1
	%idVal_5 = load %argAddr_3
	%res_6 = lsft %idVal_4 %idVal_5
	%res_7 = hilo ( 32767 65535 )
	%res_8 = bit_and %res_6 %res_7
	ret %res_8

}

define shift_r ( %argVal_0 %argVal_2 ) {
<0> entry
	%varAddr_4 = alloca 8
	%argAddr_3 = alloca 8
	%argAddr_1 = alloca 8
	store %argVal_0 %argAddr_1
	store %argVal_2 %argAddr_3
	%res_5 = hilo ( 32767 65535 )
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
	%res_17 = hilo ( 32767 65535 )
	%res_18 = bit_and %idVal_16 %res_17
	ret %res_18

}

define xorshift ( %argVal_0 %argVal_2 ) {
<0> entry
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
	%res_13 = shift_l ( %idVal_14 13 )
	%res_15 = bit_xor %idVal_12 %res_13
	store %res_15 %varAddr_4
	%idVal_16 = load %varAddr_4
	%idVal_18 = load %varAddr_4
	%res_17 = shift_r ( %idVal_18 17 )
	%res_19 = bit_xor %idVal_16 %res_17
	store %res_19 %varAddr_4
	%idVal_20 = load %varAddr_4
	%idVal_22 = load %varAddr_4
	%res_21 = shift_l ( %idVal_22 5 )
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
	%argAddr_1 = alloca 8
	store %argVal_0 %argAddr_1
	%idVal_2 = load %argAddr_1
	%res_3 = ge %idVal_2 32
	br %res_3 <3> <2>

<3> lhs_true
	%idVal_4 = load %argAddr_1
	%res_5 = le %idVal_4 126
	br %res_5 <1> <2>

<1> if_true
	%classPtr_7 = load @asciiTable
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
	%varAddr_6 = alloca 8
	%varAddr_3 = alloca 8
	%varAddr_2 = alloca 8
	%argAddr_1 = alloca 8
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
	%res_14 = int2chr ( %res_16 )
	%res_17 = __stringAdd ( %idVal_13 %res_14 )
	store %res_17 %varAddr_2
	br <7>

<6> if_false
	%idVal_18 = load %varAddr_2
	%idVal_20 = load %varAddr_6
	%res_21 = add 65 %idVal_20
	%res_22 = sub %res_21 10
	%res_19 = int2chr ( %res_22 )
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
	%res_10 = xorshift ( %idVal_11 %idVal_12 )
	store %res_10 %varAddr_9
	%idVal_14 = load %varAddr_9
	%idVal_15 = load %varAddr_6
	%res_13 = shift_l ( %idVal_14 %idVal_15 )
	%idVal_17 = load %varAddr_9
	%idVal_18 = load %varAddr_6
	%res_19 = sub 32 %idVal_18
	%res_16 = shift_r ( %idVal_17 %res_19 )
	%res_20 = bit_or %res_13 %res_16
	ret %res_20

}

define main ( ) {
<0> entry
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
	%res_33 = getnumber ( %idVal_34 %idVal_35 %idVal_36 )
	store %res_33 %varAddr_32
	%idVal_39 = load %varAddr_6
	%idVal_40 = load %varAddr_15
	%idVal_41 = load %varAddr_8
	%res_38 = getnumber ( %idVal_39 %idVal_40 %idVal_41 )
	store %res_38 %varAddr_37
	%idVal_44 = load %varAddr_7
	%idVal_45 = load %varAddr_15
	%idVal_46 = load %varAddr_8
	%res_43 = getnumber ( %idVal_44 %idVal_45 %idVal_46 )
	store %res_43 %varAddr_42
	%idVal_49 = load %varAddr_6
	%idVal_50 = load %varAddr_7
	%res_51 = bit_xor %idVal_49 %idVal_50
	%idVal_52 = load %varAddr_15
	%idVal_53 = load %varAddr_8
	%res_48 = getnumber ( %res_51 %idVal_52 %idVal_53 )
	store %res_48 %varAddr_47
	%idVal_56 = load %varAddr_8
	%res_55 = xorshift ( %idVal_56 1 )
	%idVal_58 = load %varAddr_7
	%res_57 = xorshift ( %idVal_58 1 )
	%res_59 = bit_xor %res_55 %res_57
	%idVal_61 = load %varAddr_6
	%res_60 = xorshift ( %idVal_61 1 )
	%res_62 = bit_xor %res_59 %res_60
	store %res_62 %varAddr_54
	%idVal_63 = load %varAddr_16
	%idVal_65 = load %varAddr_32
	%idVal_66 = load %varAddr_54
	%res_67 = bit_xor %idVal_65 %idVal_66
	%res_64 = xorshift ( %res_67 1 )
	%res_68 = add %idVal_63 %res_64
	store %res_68 %varAddr_16
	%idVal_69 = load %varAddr_17
	%idVal_71 = load %varAddr_37
	%idVal_72 = load %varAddr_54
	%res_73 = bit_xor %idVal_71 %idVal_72
	%res_70 = xorshift ( %res_73 1 )
	%res_74 = add %idVal_69 %res_70
	store %res_74 %varAddr_17
	%idVal_75 = load %varAddr_18
	%idVal_77 = load %varAddr_42
	%idVal_78 = load %varAddr_54
	%res_79 = bit_xor %idVal_77 %idVal_78
	%res_76 = xorshift ( %res_79 1 )
	%res_80 = add %idVal_75 %res_76
	store %res_80 %varAddr_18
	%idVal_81 = load %varAddr_19
	%idVal_83 = load %varAddr_47
	%idVal_84 = load %varAddr_54
	%res_85 = bit_xor %idVal_83 %idVal_84
	%res_82 = xorshift ( %res_85 1 )
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
	%res_96 = toStringHex ( %idVal_97 )
	print ( %res_96 )
	print ( $str_2 )
	%idVal_99 = load %varAddr_17
	%res_98 = toStringHex ( %idVal_99 )
	print ( %res_98 )
	print ( $str_2 )
	%idVal_101 = load %varAddr_18
	%res_100 = toStringHex ( %idVal_101 )
	print ( %res_100 )
	print ( $str_2 )
	%idVal_103 = load %varAddr_19
	%res_102 = toStringHex ( %idVal_103 )
	print ( %res_102 )
	print ( $str_2 )
	println ( $str_1 )
	ret 0

}

