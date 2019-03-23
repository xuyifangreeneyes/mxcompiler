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
	%thisAddr_1 = alloca 4
	store %thisVal_0 %thisAddr_1
	%classPtr_2 = load %thisAddr_1
	%memberAddr_3 = add %classPtr_2 4
	store $str_0 %memberAddr_3
	%classPtr_4 = load %thisAddr_1
	%memberAddr_5 = add %classPtr_4 0
	store 1 %memberAddr_5
	%classPtr_6 = load %thisAddr_1
	%memberAddr_7 = add %classPtr_6 8
	store 0 %memberAddr_7
	%memberLength_9 = mul 100 4
	%arrayLength_10 = add %memberLength_9 4
	%arrayPtr_8 = malloc %arrayLength_10
	store 100 %arrayPtr_8
	%classPtr_11 = load %thisAddr_1
	%memberAddr_12 = add %classPtr_11 8
	store %arrayPtr_8 %memberAddr_12
	ret 

}

define #ClassA#getClassA ( %thisVal_0 %argVal_2 ) {
<0> entry
	%varAddr_4 = alloca 4
	%argAddr_3 = alloca 4
	%thisAddr_1 = alloca 4
	store %thisVal_0 %thisAddr_1
	store %argVal_2 %argAddr_3
	%classPtr_5 = malloc 12
	#ClassA#ClassA ( %classPtr_5 )
	store %classPtr_5 %varAddr_4
	%idVal_6 = load %argAddr_3
	%classPtr_7 = load %varAddr_4
	%memberAddr_8 = add %classPtr_7 0
	store %idVal_6 %memberAddr_8
	%idVal_9 = load %argAddr_3
	%classPtr_10 = load %thisAddr_1
	%memberAddr_11 = add %classPtr_10 0
	store %idVal_9 %memberAddr_11
	%idVal_12 = load %varAddr_4
	ret %idVal_12

}

define #ClassA#getString ( %thisVal_0 ) {
<0> entry
	%thisAddr_1 = alloca 4
	store %thisVal_0 %thisAddr_1
	%classPtr_2 = load %thisAddr_1
	%memberAddr_3 = add %classPtr_2 4
	%idVal_4 = load %memberAddr_3
	ret %idVal_4

}

define #Main ( %argVal_0 ) {
<0> entry
	%varAddr_26 = alloca 4
	%varAddr_25 = alloca 4
	%varAddr_24 = alloca 4
	%varAddr_12 = alloca 4
	%varAddr_4 = alloca 4
	%varAddr_2 = alloca 4
	%argAddr_1 = alloca 4
	store %argVal_0 %argAddr_1
	%classPtr_3 = malloc 12
	#ClassA#ClassA ( %classPtr_3 )
	store %classPtr_3 %varAddr_2
	%classPtr_6 = load %varAddr_2
	%idVal_7 = load %argAddr_1
	%res_5 = #ClassA#getClassA ( %classPtr_6 %idVal_7 )
	store %res_5 %varAddr_4
	%idVal_8 = load %argAddr_1
	%classPtr_9 = load %varAddr_4
	%memberAddr_10 = add %classPtr_9 0
	store %idVal_8 %memberAddr_10
	%res_11 = #getInt ( )
	store %res_11 %argAddr_1
	%classPtr_15 = load %varAddr_4
	%res_14 = #ClassA#getString ( %classPtr_15 )
	%res_13 = #string#parseInt ( %res_14 )
	%res_17 = #getString ( )
	%res_16 = #string#ord ( %res_17 123 )
	%classPtr_21 = load %varAddr_4
	%res_20 = #ClassA#getString ( %classPtr_21 )
	%res_19 = #string#substring ( %res_20 1 3 )
	%res_18 = #string#length ( %res_19 )
	%res_22 = mod %res_16 %res_18
	%res_23 = add %res_13 %res_22
	store %res_23 %varAddr_12
	store $str_1 %varAddr_24
	store $str_2 %varAddr_25
	store 0 %varAddr_26
	%idVal_27 = load %varAddr_24
	%idVal_28 = load %varAddr_25
	%res_29 = #string#lt ( %idVal_27 %idVal_28 )
	br %res_29 <1> <2>

<1> if_true
	%idVal_30 = load %varAddr_26
	%oldVal_31 = load %varAddr_26
	%newVal_32 = inc %oldVal_31
	store %newVal_32 %varAddr_26
	br <2>

<2> if_merge
	%idVal_33 = load %varAddr_24
	%idVal_34 = load %varAddr_25
	%res_35 = #string#le ( %idVal_33 %idVal_34 )
	br %res_35 <3> <4>

<3> if_true
	%idVal_36 = load %varAddr_26
	%oldVal_37 = load %varAddr_26
	%newVal_38 = inc %oldVal_37
	store %newVal_38 %varAddr_26
	br <4>

<4> if_merge
	%idVal_39 = load %varAddr_24
	%idVal_40 = load %varAddr_25
	%res_41 = #string#gt ( %idVal_39 %idVal_40 )
	br %res_41 <5> <6>

<5> if_true
	%idVal_42 = load %varAddr_26
	%oldVal_43 = load %varAddr_26
	%newVal_44 = inc %oldVal_43
	store %newVal_44 %varAddr_26
	br <6>

<6> if_merge
	%idVal_45 = load %varAddr_24
	%idVal_46 = load %varAddr_25
	%res_47 = #string#ge ( %idVal_45 %idVal_46 )
	br %res_47 <7> <8>

<7> if_true
	%idVal_48 = load %varAddr_26
	%oldVal_49 = load %varAddr_26
	%newVal_50 = inc %oldVal_49
	store %newVal_50 %varAddr_26
	br <8>

<8> if_merge
	%idVal_51 = load %varAddr_24
	%idVal_52 = load %varAddr_25
	%res_53 = #string#add ( %idVal_51 %idVal_52 )
	%idVal_54 = load %varAddr_24
	%idVal_55 = load %varAddr_25
	%res_56 = #string#add ( %idVal_54 %idVal_55 )
	%res_57 = #string#eq ( %res_53 %res_56 )
	br %res_57 <9> <13>

<9> if_true
	%idVal_58 = load %varAddr_26
	%oldVal_59 = load %varAddr_26
	%newVal_60 = inc %oldVal_59
	store %newVal_60 %varAddr_26
	br <20>

<13> if_false
	%idVal_64 = load %varAddr_26
	%oldVal_65 = load %varAddr_26
	%newVal_66 = dec %oldVal_65
	store %newVal_66 %varAddr_26
	br <20>

<20> while_body
	br <20>

}

define #main ( ) {
<0> entry
	%res_0 = #Main ( 0 )

}

