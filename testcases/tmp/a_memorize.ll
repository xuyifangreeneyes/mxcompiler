@tablePtrPtr_0

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
	%tablePtr_0 = malloc 2048
	store %tablePtr_0 @tablePtrPtr_0
	ret 

}

define h ( %argVal_0 ) {
<0> entry
	%retValAddr_34 = alloca 8
	%retValAddr_25 = alloca 8
	%varAddr_7 = alloca 8
	%varAddr_6 = alloca 8
	%argAddr_1 = alloca 8
	store %argVal_0 %argAddr_1
	%idVal_2 = load %argAddr_1
	%res_3 = eq %idVal_2 0
	br %res_3 <1> <3>

<3> lhs_false
	%idVal_4 = load %argAddr_1
	%res_5 = eq %idVal_4 1
	br %res_5 <1> <2>

<1> if_true
	ret 1

<2> if_merge
	store 0 %varAddr_6
	store 0 %varAddr_7
	br <4>

<4> for_cond
	%idVal_8 = load %varAddr_7
	%idVal_9 = load %argAddr_1
	%res_10 = lt %idVal_8 %idVal_9
	br %res_10 <5> <7>

<5> for_body
	%idVal_11 = load %varAddr_6
	%idVal_13 = load %varAddr_7
	%inTable_26 = lt %idVal_13 256
	br %inTable_26 <9> <12>

<9> check_table
	%tablePtr_27 = load @tablePtrPtr_0
	%offset_28 = mul %idVal_13 8
	%ansAddr_29 = add %tablePtr_27 %offset_28
	%ans_30 = load %ansAddr_29
	%ansValid_31 = neq %ans_30 0
	br %ansValid_31 <10> <11>

<10> get_ans
	store %ans_30 %retValAddr_25
	br <8>

<11> set_ans
	%res1_32 = h ( %idVal_13 )
	store %res1_32 %ansAddr_29
	store %res1_32 %retValAddr_25
	br <8>

<12> normal_call
	%res2_33 = h ( %idVal_13 )
	store %res2_33 %retValAddr_25
	br <8>

<8> after_call
	%res_12 = load %retValAddr_25
	%idVal_15 = load %argAddr_1
	%res_16 = sub %idVal_15 1
	%idVal_17 = load %varAddr_7
	%res_18 = sub %res_16 %idVal_17
	%inTable_35 = lt %res_18 256
	br %inTable_35 <14> <17>

<14> check_table
	%tablePtr_36 = load @tablePtrPtr_0
	%offset_37 = mul %res_18 8
	%ansAddr_38 = add %tablePtr_36 %offset_37
	%ans_39 = load %ansAddr_38
	%ansValid_40 = neq %ans_39 0
	br %ansValid_40 <15> <16>

<15> get_ans
	store %ans_39 %retValAddr_34
	br <13>

<16> set_ans
	%res1_41 = h ( %res_18 )
	store %res1_41 %ansAddr_38
	store %res1_41 %retValAddr_34
	br <13>

<17> normal_call
	%res2_42 = h ( %res_18 )
	store %res2_42 %retValAddr_34
	br <13>

<13> after_call
	%res_14 = load %retValAddr_34
	%res_19 = mul %res_12 %res_14
	%res_20 = add %idVal_11 %res_19
	store %res_20 %varAddr_6
	br <6>

<6> for_step
	%idVal_21 = load %varAddr_7
	%oldVal_22 = load %varAddr_7
	%newVal_23 = inc %oldVal_22
	store %newVal_23 %varAddr_7
	br <4>

<7> for_end
	%idVal_24 = load %varAddr_6
	ret %idVal_24

}

define main ( ) {
<0> entry
	%varAddr_0 = alloca 8
	%res_1 = getInt ( )
	store %res_1 %varAddr_0
	%idVal_3 = load %varAddr_0
	%res_2 = h ( %idVal_3 )
	__printlnInt ( %res_2 )
	ret 0

}

