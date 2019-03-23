$str_0 ""

$str_1 "123"

$str_2 "456"

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

define #ClassA#ClassA ( %thisVal_0 ) {
<0> entry
	%memberAddr_3 = add %thisVal_0 4
	store $str_0 %memberAddr_3
	%memberAddr_5 = add %thisVal_0 0
	store 1 %memberAddr_5
	%memberAddr_7 = add %thisVal_0 8
	store 0 %memberAddr_7
	%arrayPtr_8 = malloc 404
	store 100 %arrayPtr_8
	store %arrayPtr_8 %memberAddr_7
	ret 

}

define #ClassA#getClassA ( %thisVal_0 %argVal_2 ) {
<0> entry
	%classPtr_5 = malloc 12
	#ClassA#ClassA ( %classPtr_5 )
	%memberAddr_8 = add %classPtr_5 0
	store %argVal_2 %memberAddr_8
	%memberAddr_11 = add %thisVal_0 0
	store %argVal_2 %memberAddr_11
	ret %classPtr_5

}

define #ClassA#getString ( %thisVal_0 ) {
<0> entry
	%memberAddr_3 = add %thisVal_0 4
	%idVal_4 = load %memberAddr_3
	ret %idVal_4

}

define #Main ( %argVal_0 ) {
<0> entry
	%classPtr_3 = malloc 12
	#ClassA#ClassA ( %classPtr_3 )
	%res_5 = #ClassA#getClassA ( %classPtr_3 %argVal_0 )
	%memberAddr_10 = add %res_5 0
	store %argVal_0 %memberAddr_10
	%res_11 = #getInt ( )
	%res_14 = #ClassA#getString ( %res_5 )
	%res_13 = #string#parseInt ( %res_14 )
	%res_17 = #getString ( )
	%res_16 = #string#ord ( %res_17 123 )
	%res_20 = #ClassA#getString ( %res_5 )
	%res_19 = #string#substring ( %res_20 1 3 )
	%res_18 = #string#length ( %res_19 )
	%res_29 = #string#lt ( $str_1 $str_2 )
	br %res_29 <1> <2>

<1> if_true
	br <2>

<2> if_merge
	%varDef_79 = phi <0> 0 <1> 1
	%res_35 = #string#le ( $str_1 $str_2 )
	br %res_35 <3> <4>

<3> if_true
	%newVal_38 = inc %varDef_79
	br <4>

<4> if_merge
	%varDef_81 = phi <2> %varDef_79 <3> %newVal_38
	%res_41 = #string#gt ( $str_1 $str_2 )
	br %res_41 <5> <6>

<5> if_true
	%newVal_44 = inc %varDef_81
	br <6>

<6> if_merge
	%varDef_83 = phi <4> %varDef_81 <5> %newVal_44
	%res_47 = #string#ge ( $str_1 $str_2 )
	br %res_47 <7> <8>

<7> if_true
	%newVal_50 = inc %varDef_83
	br <8>

<8> if_merge
	%varDef_85 = phi <6> %varDef_83 <7> %newVal_50
	%res_53 = #string#add ( $str_1 $str_2 )
	%res_56 = #string#add ( $str_1 $str_2 )
	%res_57 = #string#eq ( %res_53 %res_56 )
	br %res_57 <9> <13>

<9> if_true
	%newVal_60 = inc %varDef_85
	br <20>

<13> if_false
	%newVal_66 = dec %varDef_85
	br <20>

<20> while_body
	%varDef_88 = phi <9> %newVal_60 <13> %newVal_66 <20> %varDef_88
	br <20>

}

define #main ( ) {
<0> entry
	%res_0 = #Main ( 0 )

}

