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

}

define #main ( ) {
<0> entry
	move %varDef_26 5
	move %varDef_27 0
	move %idVal_5 %varDef_27
	%res_6 = neq %idVal_5 0
	br %res_6 <4> <2>

<4> lhs_true
	move %idVal_7 %varDef_26
	move %idVal_8 %varDef_27
	%res_9 = div %idVal_7 %idVal_8
	%res_10 = neq %res_9 1
	br %res_10 <1> <2>

<1> bool_true
	move %varDef_28 1
	br <3>

<2> bool_false
	move %varDef_29 0
	br <3>

<3> bool_merge
	%varDef_30 = phi <1> %varDef_28 <2> %varDef_29
	move %boolVal_11 %varDef_30
	move %varDef_31 %boolVal_11
	move %idVal_12 %varDef_31
	br %idVal_12 <5> <6>

<5> if_true
	move %varDef_32 10
	br <7>

<6> if_false
	move %varDef_33 20
	br <7>

<7> if_merge
	%varDef_34 = phi <5> %varDef_32 <6> %varDef_33
	move %idVal_15 %varDef_34
	%res_16 = eq %idVal_15 10
	br %res_16 <12> <8>

<12> lhs_true
	move %idVal_17 %varDef_26
	move %idVal_18 %varDef_27
	%res_19 = div %idVal_17 %idVal_18
	%res_20 = eq %res_19 0
	br %res_20 <11> <8>

<11> lhs_true
	move %idVal_21 %varDef_26
	%res_22 = eq %idVal_21 5
	br %res_22 <9> <8>

<8> bool_true
	move %varDef_36 1
	br <10>

<9> bool_false
	move %varDef_35 0
	br <10>

<10> bool_merge
	%varDef_37 = phi <9> %varDef_35 <8> %varDef_36
	move %boolVal_23 %varDef_37
	move %varDef_38 %boolVal_23
	move %idVal_24 %varDef_38
	br %idVal_24 <13> <14>

<13> if_true
	move %varDef_39 30
	br <14>

<14> if_merge
	%varDef_40 = phi <10> %varDef_34 <13> %varDef_39
	move %idVal_25 %varDef_40
	ret %idVal_25

}

