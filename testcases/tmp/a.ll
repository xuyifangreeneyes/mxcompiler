@n

$str_0 "2"

$str_1 " "

$str_2 "1"

$str_3 "3"

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

define init ( ) {
<0> entry
	%res_0 = getInt ( )
	store %res_0 @n
	ret 

}

define is_prime ( %argVal_0 ) {
<0> entry
	%varAddr_4 = alloca 8
	%argAddr_1 = alloca 8
	store %argVal_0 %argAddr_1
	%idVal_2 = load %argAddr_1
	%res_3 = eq %idVal_2 1
	br %res_3 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	store 2 %varAddr_4
	br <3>

<3> for_cond
	%idVal_5 = load %varAddr_4
	%idVal_6 = load %varAddr_4
	%res_7 = mul %idVal_5 %idVal_6
	%idVal_8 = load %argAddr_1
	%res_9 = le %res_7 %idVal_8
	br %res_9 <4> <6>

<4> for_body
	%idVal_10 = load %argAddr_1
	%idVal_11 = load %varAddr_4
	%res_12 = mod %idVal_10 %idVal_11
	%res_13 = eq %res_12 0
	br %res_13 <7> <8>

<7> if_true
	ret 0

<8> if_merge
	br <5>

<5> for_step
	%idVal_14 = load %varAddr_4
	%oldVal_15 = load %varAddr_4
	%newVal_16 = inc %oldVal_15
	store %newVal_16 %varAddr_4
	br <3>

<6> for_end
	ret 1

}

define find ( %argVal_0 %argVal_2 ) {
<0> entry
	%varAddr_20 = alloca 8
	%varAddr_16 = alloca 8
	%argAddr_3 = alloca 8
	%argAddr_1 = alloca 8
	store %argVal_0 %argAddr_1
	store %argVal_2 %argAddr_3
	%idVal_5 = load %argAddr_1
	%res_4 = is_prime ( %idVal_5 )
	br %res_4 <1> <2>

<1> if_true
	%idVal_6 = load %argAddr_3
	%res_7 = gt %idVal_6 0
	br %res_7 <3> <4>

<3> if_true
	println ( $str_0 )
	%idVal_9 = load %argAddr_3
	%res_8 = toString ( %idVal_9 )
	%res_10 = _stringAdd ( %res_8 $str_1 )
	%idVal_12 = load %argAddr_1
	%res_11 = toString ( %idVal_12 )
	%res_13 = _stringAdd ( %res_10 %res_11 )
	println ( %res_13 )
	br <5>

<4> if_false
	println ( $str_2 )
	%idVal_15 = load %argAddr_1
	%res_14 = toString ( %idVal_15 )
	println ( %res_14 )
	br <5>

<5> if_merge
	ret 

<2> if_merge
	store 5 %varAddr_16
	%idVal_17 = load %argAddr_3
	%res_18 = neg 1
	%res_19 = eq %idVal_17 %res_18
	br %res_19 <6> <7>

<6> if_true
	store 6 %varAddr_20
	%idVal_21 = load %argAddr_1
	%res_22 = sub %idVal_21 2
	store %res_22 %varAddr_20
	br <9>

<9> for_cond
	br <10>

<10> for_body
	%idVal_24 = load %varAddr_20
	%res_23 = is_prime ( %idVal_24 )
	br %res_23 <13> <14>

<13> if_true
	%idVal_25 = load %argAddr_1
	%idVal_26 = load %varAddr_20
	%res_27 = sub %idVal_25 %idVal_26
	%idVal_28 = load %varAddr_20
	find ( %res_27 %idVal_28 )
	ret 

<14> if_merge
	br <11>

<11> for_step
	%idVal_29 = load %varAddr_20
	%oldVal_30 = load %varAddr_20
	%newVal_31 = dec %oldVal_30
	store %newVal_31 %varAddr_20
	br <9>

<12> for_end
	br <8>

<7> if_false
	%idVal_32 = load %argAddr_1
	%res_33 = sub %idVal_32 1
	store %res_33 %varAddr_16
	br <15>

<15> for_cond
	br <16>

<16> for_body
	%idVal_35 = load %varAddr_16
	%res_34 = is_prime ( %idVal_35 )
	br %res_34 <21> <20>

<21> lhs_true
	%idVal_37 = load %argAddr_1
	%idVal_38 = load %varAddr_16
	%res_39 = sub %idVal_37 %idVal_38
	%res_36 = is_prime ( %res_39 )
	br %res_36 <19> <20>

<19> if_true
	println ( $str_3 )
	%idVal_41 = load %argAddr_3
	%res_40 = toString ( %idVal_41 )
	%res_42 = _stringAdd ( %res_40 $str_1 )
	%idVal_44 = load %varAddr_16
	%res_43 = toString ( %idVal_44 )
	%res_45 = _stringAdd ( %res_42 %res_43 )
	%res_46 = _stringAdd ( %res_45 $str_1 )
	%idVal_48 = load %argAddr_1
	%idVal_49 = load %varAddr_16
	%res_50 = sub %idVal_48 %idVal_49
	%res_47 = toString ( %res_50 )
	%res_51 = _stringAdd ( %res_46 %res_47 )
	println ( %res_51 )
	ret 

<20> if_merge
	br <17>

<17> for_step
	%idVal_52 = load %varAddr_16
	%oldVal_53 = load %varAddr_16
	%newVal_54 = dec %oldVal_53
	store %newVal_54 %varAddr_16
	br <15>

<18> for_end
	br <8>

<8> if_merge
	ret 

}

define work ( ) {
<0> entry
	%idVal_0 = load @n
	%res_1 = neg 1
	find ( %idVal_0 %res_1 )
	ret 

}

define main ( ) {
<0> entry
	init ( )
	work ( )
	ret 0

}

