@id

@a

@b

@aa

$str_0 "i am string"

$str_1 "hello"

$str_2 "string"

$str_3 "hello world"

define #print

define #println

define #getString

define #getInt

define #toString

define #string#length

define #string#substring

define #string#parseInt

define #string#ord

define #array#size

define #string#add

define #string#eq

define #string#neq

define #string#lt

define #string#gt

define #string#le

define #string#ge

define #global#init ( ) {
<0> entry
	%classPtr_0 = malloc 4
	store %classPtr_0 @a
	%classPtr_2 = load @a
	%res_1 = #A#method ( %classPtr_2 )
	store %res_1 @b
	%classPtr_6 = load @b
	%res_5 = #B#method ( %classPtr_6 )
	%res_4 = #A#method ( %res_5 )
	%res_3 = #B#method ( %res_4 )
	store %res_3 @aa

}

define #Test#id ( %thisVal_0 %argVal_2 ) {
<0> entry
	%argAddr_3 = alloca 4
	%thisAddr_1 = alloca 4
	store %thisVal_0 %thisAddr_1
	store %argVal_2 %argAddr_3
	%idVal_4 = load %argAddr_3
	%res_5 = eq %idVal_4 0
	ret %res_5

}

define #Test#Test ( %thisVal_0 ) {
<0> entry
	%thisAddr_1 = alloca 4
	store %thisVal_0 %thisAddr_1

}

define #Test#test ( %thisVal_0 %argVal_2 ) {
<0> entry
	%varAddr_44 = alloca 4
	%varAddr_43 = alloca 4
	%varAddr_35 = alloca 4
	%varAddr_15 = alloca 4
	%varAddr_12 = alloca 4
	%boolValAddr_6 = alloca 4
	%argAddr_3 = alloca 4
	%thisAddr_1 = alloca 4
	store %thisVal_0 %thisAddr_1
	store %argVal_2 %argAddr_3
	store $str_0 %argAddr_3
	%classPtr_5 = load %thisAddr_1
	%idVal_7 = load %thisAddr_1
	%res_8 = neq %idVal_7 0
	br %res_8 <3> <6>

<6> lhs_false
	%idVal_9 = load %thisAddr_1
	%res_10 = eq 0 %idVal_9
	br %res_10 <3> <4>

<3> bool_true
	store 1 %boolValAddr_6
	br <5>

<4> bool_false
	store 0 %boolValAddr_6
	br <5>

<5> bool_merge
	%boolVal_11 = load %boolValAddr_6
	%res_4 = #Test#id ( %classPtr_5 %boolVal_11 )
	br %res_4 <1> <2>

<1> if_true
	%classPtr_14 = load %thisAddr_1
	%res_13 = #Test#id ( %classPtr_14 1 )
	store %res_13 %varAddr_12
	store 0 %varAddr_15
	br <7>

<7> for_cond
	%classPtr_17 = load %thisAddr_1
	%idVal_18 = load %varAddr_15
	%res_19 = gt %idVal_18 0
	%res_16 = #Test#id ( %classPtr_17 %res_19 )
	br %res_16 <8> <10>

<8> for_body
	%classPtr_21 = load %thisAddr_1
	%idVal_22 = load %varAddr_15
	%idVal_23 = load %varAddr_15
	%res_24 = bit_or %idVal_22 %idVal_23
	%res_25 = le %res_24 0
	%res_20 = #Test#id ( %classPtr_21 %res_25 )
	br %res_20 <11> <12>

<11> if_true
	br <10>

<12> if_merge
	br <9>

<9> for_step
	%idVal_26 = load %varAddr_15
	%oldVal_27 = load %varAddr_15
	%newVal_28 = inc %oldVal_27
	store %newVal_28 %varAddr_15
	br <7>

<10> for_end
	store 0 %varAddr_12
	br <2>

<2> if_merge
	%idVal_29 = load %argAddr_3
	%res_30 = #string#eq ( %idVal_29 $str_0 )
	br %res_30 <13> <14>

<13> if_true
	%classPtr_32 = load %thisAddr_1
	%idVal_33 = load %argAddr_3
	%res_34 = #string#gt ( %idVal_33 $str_1 )
	%res_31 = #Test#id ( %classPtr_32 %res_34 )
	br %res_31 <15> <16>

<15> if_true
	ret 

<16> if_merge
	%classPtr_36 = malloc 0
	#Test#Test ( %classPtr_36 )
	store %classPtr_36 %varAddr_35
	%classPtr_38 = load %varAddr_35
	%classPtr_40 = load %varAddr_35
	%classPtr_42 = load %varAddr_35
	%res_41 = #Test#id ( %classPtr_42 0 )
	%res_39 = #Test#id ( %classPtr_40 %res_41 )
	%res_37 = #Test#id ( %classPtr_38 %res_39 )
	br %res_37 <17> <18>

<17> if_true
	store 233 %varAddr_43
	%classPtr_45 = malloc 0
	#Test#Test ( %classPtr_45 )
	store %classPtr_45 %varAddr_44
	%classPtr_47 = load %varAddr_44
	%idVal_48 = load %varAddr_43
	%res_49 = gt %idVal_48 0
	%res_46 = #Test#id ( %classPtr_47 %res_49 )
	br %res_46 <19> <20>

<19> if_true
	%idVal_50 = load %varAddr_43
	%oldVal_51 = load %varAddr_43
	%newVal_52 = dec %oldVal_51
	store %newVal_52 %varAddr_43
	br <20>

<20> if_merge
	%idVal_53 = load %varAddr_43
	%oldVal_54 = load %varAddr_43
	%newVal_55 = dec %oldVal_54
	store %newVal_55 %varAddr_43
	ret 

<18> if_merge
	%classPtr_56 = malloc 0
	#Test#Test ( %classPtr_56 )
	store %classPtr_56 %varAddr_35
	br <14>

<14> if_merge
	store $str_2 %argAddr_3

}

define #func ( %argVal_0 ) {
<0> entry
	%argAddr_1 = alloca 4
	store %argVal_0 %argAddr_1
	%arrayPtr_2 = load %argAddr_1
	%arrayBase_3 = add %arrayPtr_2 4
	%offset_4 = mul 0 4
	%elementAddr_5 = add %arrayBase_3 %offset_4
	%elementVal_6 = load %elementAddr_5
	ret %elementVal_6

}

define #main ( ) {
<0> entry
	%storageCell_13 = alloca 4
	%varAddr_7 = alloca 4
	%varAddr_0 = alloca 4
	%classPtr_1 = malloc 0
	#Test#Test ( %classPtr_1 )
	store %classPtr_1 %varAddr_0
	%classPtr_2 = load %varAddr_0
	#Test#test ( %classPtr_2 $str_3 )
	%classPtr_4 = load %varAddr_0
	%idVal_5 = load @id
	%res_6 = gt %idVal_5 0
	%res_3 = #Test#id ( %classPtr_4 %res_6 )
	br %res_3 <1> <2>

<1> if_true
	%memberLength_9 = mul 10 4
	%arrayLength_10 = add %memberLength_9 4
	%arrayPtr_8 = malloc %arrayLength_10
	store 10 %arrayPtr_8
	%arrayEndPos_11 = add %arrayPtr_8 %arrayLength_10
	%startPos_12 = add %arrayPtr_8 4
	store %startPos_12 %storageCell_13
	br <3>

<3> new_for_cond
	%pos_14 = load %storageCell_13
	%condition_15 = lt %pos_14 %arrayEndPos_11
	br %condition_15 <4> <6>

<4> new_for_body
	%memberLength_17 = mul 10 4
	%arrayLength_18 = add %memberLength_17 4
	%arrayPtr_16 = malloc %arrayLength_18
	store 10 %arrayPtr_16
	store %arrayPtr_16 %pos_14
	br <5>

<5> new_for_step
	%pos_19 = add %pos_14 4
	store %pos_19 %storageCell_13
	br <3>

<6> new_for_end
	store %arrayPtr_8 %varAddr_7
	%idVal_21 = load %varAddr_7
	%res_20 = #func ( %idVal_21 )
	%res_22 = neq %res_20 0
	br %res_22 <9> <8>

<9> lhs_true
	%idVal_24 = load %varAddr_7
	%res_23 = #func ( %idVal_24 )
	%arrayBase_25 = add %res_23 4
	%offset_26 = mul 1 4
	%elementAddr_27 = add %arrayBase_25 %offset_26
	%elementVal_28 = load %elementAddr_27
	%res_29 = neq %elementVal_28 0
	br %res_29 <7> <8>

<7> if_true
	%idVal_31 = load %varAddr_7
	%res_30 = #func ( %idVal_31 )
	%arrayBase_32 = add %res_30 4
	%offset_33 = mul 0 4
	%elementAddr_34 = add %arrayBase_32 %offset_33
	%elementVal_35 = load %elementAddr_34
	%arrayPtr_36 = load %varAddr_7
	%arrayBase_37 = add %arrayPtr_36 4
	%offset_38 = mul 1 4
	%elementAddr_39 = add %arrayBase_37 %offset_38
	%arrayPtr_40 = load %elementAddr_39
	%arrayBase_41 = add %arrayPtr_40 4
	%offset_42 = mul 1 4
	%elementAddr_43 = add %arrayBase_41 %offset_42
	store %elementVal_35 %elementAddr_43
	br <8>

<8> if_merge
	%idVal_44 = load @id
	%oldVal_45 = load @id
	%newVal_46 = dec %oldVal_45
	store %newVal_46 @id
	ret %newVal_46

<2> if_merge
	ret 0

}

define #A#method ( %thisVal_0 ) {
<0> entry
	%thisAddr_1 = alloca 4
	store %thisVal_0 %thisAddr_1

}

define #B#method ( %thisVal_0 ) {
<0> entry
	%thisAddr_1 = alloca 4
	store %thisVal_0 %thisAddr_1

}

