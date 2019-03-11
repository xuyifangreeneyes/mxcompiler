@a

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
	store 0 @a

}

define #A#f ( %thisVal_0 ) {
<0> entry
	%thisAddr_1 = alloca 4
	store %thisVal_0 %thisAddr_1
	%idVal_2 = load @a
	%classPtr_3 = load %thisAddr_1
	%memberAddr_4 = add %classPtr_3 0
	store %idVal_2 %memberAddr_4

}

define #main ( ) {
<0> entry
	%varAddr_22 = alloca 4
	%varAddr_0 = alloca 4
	%memberLength_2 = mul 3 4
	%arrayLength_3 = add %memberLength_2 4
	%arrayPtr_1 = malloc %arrayLength_3
	store 3 %arrayPtr_1
	store %arrayPtr_1 %varAddr_0
	%arrayPtr_4 = load %varAddr_0
	%arrayBase_5 = add %arrayPtr_4 4
	%offset_6 = mul 0 4
	%elementAddr_7 = add %arrayBase_5 %offset_6
	store 0 %elementAddr_7
	%memberLength_9 = mul 10 4
	%arrayLength_10 = add %memberLength_9 4
	%arrayPtr_8 = malloc %arrayLength_10
	store 10 %arrayPtr_8
	%arrayPtr_11 = load %varAddr_0
	%arrayBase_12 = add %arrayPtr_11 4
	%offset_13 = mul 1 4
	%elementAddr_14 = add %arrayBase_12 %offset_13
	store %arrayPtr_8 %elementAddr_14
	%memberLength_16 = mul 30 4
	%arrayLength_17 = add %memberLength_16 4
	%arrayPtr_15 = malloc %arrayLength_17
	store 30 %arrayPtr_15
	%arrayPtr_18 = load %varAddr_0
	%arrayBase_19 = add %arrayPtr_18 4
	%offset_20 = mul 2 4
	%elementAddr_21 = add %arrayBase_19 %offset_20
	store %arrayPtr_15 %elementAddr_21
	store 0 %varAddr_22
	%idVal_23 = load %varAddr_22
	%res_24 = eq %idVal_23 1
	br %res_24 <6> <5>

<6> lhs_true
	br 1 <5> <5>

<1> for_cond
	br <2>

<2> for_body
	br <4>

<3> for_step
	br <1>

<4> for_end
	ret 0

}

