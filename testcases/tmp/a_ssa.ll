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
	move %varDef_13 %thisVal_0
	move %classPtr_2 %varDef_13
	%memberAddr_3 = add %classPtr_2 4
	store $str_0 %memberAddr_3
	move %classPtr_4 %varDef_13
	%memberAddr_5 = add %classPtr_4 0
	store 1 %memberAddr_5
	move %classPtr_6 %varDef_13
	%memberAddr_7 = add %classPtr_6 8
	store 0 %memberAddr_7
	%memberLength_9 = mul 100 4
	%arrayLength_10 = add %memberLength_9 4
	%arrayPtr_8 = malloc %arrayLength_10
	store 100 %arrayPtr_8
	move %classPtr_11 %varDef_13
	%memberAddr_12 = add %classPtr_11 8
	store %arrayPtr_8 %memberAddr_12
	ret 

}

define #ClassA#getClassA ( %thisVal_0 %argVal_2 ) {
<0> entry
	move %varDef_13 %thisVal_0
	move %varDef_14 %argVal_2
	%classPtr_5 = malloc 12
	#ClassA#ClassA ( %classPtr_5 )
	move %varDef_15 %classPtr_5
	move %idVal_6 %varDef_14
	move %classPtr_7 %varDef_15
	%memberAddr_8 = add %classPtr_7 0
	store %idVal_6 %memberAddr_8
	move %idVal_9 %varDef_14
	move %classPtr_10 %varDef_13
	%memberAddr_11 = add %classPtr_10 0
	store %idVal_9 %memberAddr_11
	move %idVal_12 %varDef_15
	ret %idVal_12

}

define #ClassA#getString ( %thisVal_0 ) {
<0> entry
	move %varDef_5 %thisVal_0
	move %classPtr_2 %varDef_5
	%memberAddr_3 = add %classPtr_2 4
	%idVal_4 = load %memberAddr_3
	ret %idVal_4

}

define #Main ( %argVal_0 ) {
<0> entry
	move %varDef_70 %argVal_0
	%classPtr_3 = malloc 12
	#ClassA#ClassA ( %classPtr_3 )
	move %varDef_71 %classPtr_3
	move %classPtr_6 %varDef_71
	move %idVal_7 %varDef_70
	%res_5 = #ClassA#getClassA ( %classPtr_6 %idVal_7 )
	move %varDef_72 %res_5
	move %idVal_8 %varDef_70
	move %classPtr_9 %varDef_72
	%memberAddr_10 = add %classPtr_9 0
	store %idVal_8 %memberAddr_10
	%res_11 = #getInt ( )
	move %varDef_73 %res_11
	move %classPtr_15 %varDef_72
	%res_14 = #ClassA#getString ( %classPtr_15 )
	%res_13 = #string#parseInt ( %res_14 )
	%res_17 = #getString ( )
	%res_16 = #string#ord ( %res_17 123 )
	move %classPtr_21 %varDef_72
	%res_20 = #ClassA#getString ( %classPtr_21 )
	%res_19 = #string#substring ( %res_20 1 3 )
	%res_18 = #string#length ( %res_19 )
	%res_22 = mod %res_16 %res_18
	%res_23 = add %res_13 %res_22
	move %varDef_74 %res_23
	move %varDef_75 $str_1
	move %varDef_76 $str_2
	move %varDef_77 0
	move %idVal_27 %varDef_75
	move %idVal_28 %varDef_76
	%res_29 = #string#lt ( %idVal_27 %idVal_28 )
	br %res_29 <1> <2>

<1> if_true
	move %idVal_30 %varDef_77
	move %oldVal_31 %varDef_77
	%newVal_32 = inc %oldVal_31
	move %varDef_78 %newVal_32
	br <2>

<2> if_merge
	%varDef_79 = phi <0> %varDef_77 <1> %varDef_78
	move %idVal_33 %varDef_75
	move %idVal_34 %varDef_76
	%res_35 = #string#le ( %idVal_33 %idVal_34 )
	br %res_35 <3> <4>

<3> if_true
	move %idVal_36 %varDef_79
	move %oldVal_37 %varDef_79
	%newVal_38 = inc %oldVal_37
	move %varDef_80 %newVal_38
	br <4>

<4> if_merge
	%varDef_81 = phi <2> %varDef_79 <3> %varDef_80
	move %idVal_39 %varDef_75
	move %idVal_40 %varDef_76
	%res_41 = #string#gt ( %idVal_39 %idVal_40 )
	br %res_41 <5> <6>

<5> if_true
	move %idVal_42 %varDef_81
	move %oldVal_43 %varDef_81
	%newVal_44 = inc %oldVal_43
	move %varDef_82 %newVal_44
	br <6>

<6> if_merge
	%varDef_83 = phi <4> %varDef_81 <5> %varDef_82
	move %idVal_45 %varDef_75
	move %idVal_46 %varDef_76
	%res_47 = #string#ge ( %idVal_45 %idVal_46 )
	br %res_47 <7> <8>

<7> if_true
	move %idVal_48 %varDef_83
	move %oldVal_49 %varDef_83
	%newVal_50 = inc %oldVal_49
	move %varDef_84 %newVal_50
	br <8>

<8> if_merge
	%varDef_85 = phi <6> %varDef_83 <7> %varDef_84
	move %idVal_51 %varDef_75
	move %idVal_52 %varDef_76
	%res_53 = #string#add ( %idVal_51 %idVal_52 )
	move %idVal_54 %varDef_75
	move %idVal_55 %varDef_76
	%res_56 = #string#add ( %idVal_54 %idVal_55 )
	%res_57 = #string#eq ( %res_53 %res_56 )
	br %res_57 <9> <13>

<9> if_true
	move %idVal_58 %varDef_85
	move %oldVal_59 %varDef_85
	%newVal_60 = inc %oldVal_59
	move %varDef_86 %newVal_60
	br <20>

<13> if_false
	move %idVal_64 %varDef_85
	move %oldVal_65 %varDef_85
	%newVal_66 = dec %oldVal_65
	move %varDef_87 %newVal_66
	br <20>

<20> while_body
	%varDef_88 = phi <9> %varDef_86 <13> %varDef_87 <20> %varDef_88
	br <20>

}

define #main ( ) {
<0> entry
	%res_0 = #Main ( 0 )

}

