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
	br <2>

<2> centry
	store 0 @b
	store 0 @aa

}

define #Test#id ( %thisVal_0 %argVal_2 ) {
<0> entry
	%res_5 = eq %argVal_2 0
	ret %res_5

}

define #Test#Test ( %thisVal_0 ) {
<0> entry

}

define #Test#test ( %thisVal_0 %argVal_2 ) {
<0> entry
	%varAddr_190 = alloca 4
	%varAddr_189 = alloca 4
	%res_8 = neq %thisVal_0 0
	br %res_8 <3> <6>

<6> lhs_false
	%res_10 = eq 0 %thisVal_0
	br %res_10 <3> <4>

<3> bool_true
	store 1 %varAddr_190
	br <5>

<4> bool_false
	store 0 %varAddr_190
	br <5>

<5> bool_merge
	%varDef_110 = load %varAddr_190
	%cres_61 = eq %varDef_110 0
	br %cres_61 <1> <2>

<1> if_true
	store 0 %varAddr_189
	br <7>

<7> for_cond
	%varDef_119 = load %varAddr_189
	%res_19 = gt %varDef_119 0
	%cres_71 = eq %res_19 0
	br %cres_71 <8> <2>

<8> for_body
	%res_24 = bit_or %varDef_119 %varDef_119
	%res_25 = le %res_24 0
	%cres_76 = eq %res_25 0
	br %cres_76 <2> <9>

<9> for_step
	%newVal_28 = inc %varDef_119
	store %newVal_28 %varAddr_189
	br <7>

<2> if_merge
	%res_30 = #string#eq ( $str_0 $str_0 )
	br %res_30 <13> <14>

<13> if_true
	%res_34 = #string#gt ( $str_0 $str_1 )
	%cres_81 = eq %res_34 0
	br %cres_81 <15> <16>

<15> if_true
	ret 

<16> if_merge
	ret 

<14> if_merge

}

define #func ( %argVal_0 ) {
<0> entry
	%arrayBase_3 = add %argVal_0 4
	%elementAddr_5 = add %arrayBase_3 0
	%elementVal_6 = load %elementAddr_5
	ret %elementVal_6

}

define #main ( ) {
<0> entry
	%varAddr_93 = alloca 4
	%classPtr_1 = malloc 0
	br <11>

<11> centry
	#Test#test ( %classPtr_1 $str_3 )
	%idVal_5 = load @id
	%res_6 = gt %idVal_5 0
	%cres_52 = eq %res_6 0
	br %cres_52 <1> <2>

<1> if_true
	%arrayPtr_8 = malloc 44
	store 10 %arrayPtr_8
	%arrayEndPos_11 = add %arrayPtr_8 44
	%startPos_12 = add %arrayPtr_8 4
	store %startPos_12 %varAddr_93
	br <3>

<3> new_for_cond
	%varDef_80 = load %varAddr_93
	%condition_15 = lt %varDef_80 %arrayEndPos_11
	br %condition_15 <4> <6>

<4> new_for_body
	%arrayPtr_16 = malloc 44
	store 10 %arrayPtr_16
	store %arrayPtr_16 %varDef_80
	%pos_19 = add %varDef_80 4
	store %pos_19 %varAddr_93
	br <3>

<6> new_for_end
	%carrayBase_56 = add %arrayPtr_8 4
	%celementAddr_58 = add %carrayBase_56 0
	%celementVal_59 = load %celementAddr_58
	%res_22 = neq %celementVal_59 0
	br %res_22 <9> <8>

<9> lhs_true
	%carrayBase_63 = add %arrayPtr_8 4
	%celementAddr_65 = add %carrayBase_63 0
	%celementVal_66 = load %celementAddr_65
	%arrayBase_25 = add %celementVal_66 4
	%elementAddr_27 = add %arrayBase_25 4
	%elementVal_28 = load %elementAddr_27
	%res_29 = neq %elementVal_28 0
	br %res_29 <7> <8>

<7> if_true
	%carrayBase_70 = add %arrayPtr_8 4
	%celementAddr_72 = add %carrayBase_70 0
	%celementVal_73 = load %celementAddr_72
	%arrayBase_32 = add %celementVal_73 4
	%elementAddr_34 = add %arrayBase_32 0
	%elementVal_35 = load %elementAddr_34
	%elementAddr_39 = add %carrayBase_70 4
	%arrayPtr_40 = load %elementAddr_39
	%arrayBase_41 = add %arrayPtr_40 4
	%elementAddr_43 = add %arrayBase_41 4
	store %elementVal_35 %elementAddr_43
	br <8>

<8> if_merge
	%oldVal_45 = load @id
	%newVal_46 = dec %oldVal_45
	store %newVal_46 @id
	ret %newVal_46

<2> if_merge
	ret 0

}

define #A#method ( %thisVal_0 ) {
<0> entry

}

define #B#method ( %thisVal_0 ) {
<0> entry

}

