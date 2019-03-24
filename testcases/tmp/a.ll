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
	%boolValAddr_14 = alloca 4
	%varAddr_13 = alloca 4
	%boolValAddr_4 = alloca 4
	%varAddr_3 = alloca 4
	%varAddr_2 = alloca 4
	%varAddr_1 = alloca 4
	%varAddr_0 = alloca 4
	store 5 %varAddr_0
	store 0 %varAddr_1
	%idVal_5 = load %varAddr_1
	%res_6 = neq %idVal_5 0
	br %res_6 <4> <2>

<4> lhs_true
	%idVal_7 = load %varAddr_0
	%idVal_8 = load %varAddr_1
	%res_9 = div %idVal_7 %idVal_8
	%res_10 = neq %res_9 1
	br %res_10 <1> <2>

<1> bool_true
	store 1 %boolValAddr_4
	br <3>

<2> bool_false
	store 0 %boolValAddr_4
	br <3>

<3> bool_merge
	%boolVal_11 = load %boolValAddr_4
	store %boolVal_11 %varAddr_3
	%idVal_12 = load %varAddr_3
	br %idVal_12 <5> <6>

<5> if_true
	store 10 %varAddr_2
	br <7>

<6> if_false
	store 20 %varAddr_2
	br <7>

<7> if_merge
	%idVal_15 = load %varAddr_2
	%res_16 = eq %idVal_15 10
	br %res_16 <12> <8>

<12> lhs_true
	%idVal_17 = load %varAddr_0
	%idVal_18 = load %varAddr_1
	%res_19 = div %idVal_17 %idVal_18
	%res_20 = eq %res_19 0
	br %res_20 <11> <8>

<11> lhs_true
	%idVal_21 = load %varAddr_0
	%res_22 = eq %idVal_21 5
	br %res_22 <9> <8>

<8> bool_true
	store 1 %boolValAddr_14
	br <10>

<9> bool_false
	store 0 %boolValAddr_14
	br <10>

<10> bool_merge
	%boolVal_23 = load %boolValAddr_14
	store %boolVal_23 %varAddr_13
	%idVal_24 = load %varAddr_13
	br %idVal_24 <13> <14>

<13> if_true
	store 30 %varAddr_2
	br <14>

<14> if_merge
	%idVal_25 = load %varAddr_2
	ret %idVal_25

}

