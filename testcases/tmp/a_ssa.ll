@countA

@countB

@countC

@something

$str_0 "Oops!"

$str_1 " "

$str_2 "\n"

$str_3 ">"

$str_4 "<="

$str_5 ","

$str_6 ""

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

define #A#A ( %thisVal_0 ) {
<0> entry
	move %varDef_60 %thisVal_0
	%idVal_2 = load @countA
	%oldVal_3 = load @countA
	%newVal_4 = inc %oldVal_3
	store %newVal_4 @countA
	move %classPtr_5 %varDef_60
	%memberAddr_6 = add %classPtr_5 12
	store %oldVal_3 %memberAddr_6
	move %classPtr_7 %varDef_60
	%memberAddr_8 = add %classPtr_7 12
	%idVal_9 = load %memberAddr_8
	%res_10 = mod %idVal_9 2
	%res_11 = eq %res_10 0
	br %res_11 <1> <2>

<1> if_true
	%classPtr_12 = malloc 16
	#A#A ( %classPtr_12 )
	move %classPtr_13 %varDef_60
	%memberAddr_14 = add %classPtr_13 0
	store %classPtr_12 %memberAddr_14
	%idVal_15 = load @countB
	%res_16 = mod %idVal_15 2
	%res_17 = eq %res_16 0
	br %res_17 <4> <5>

<4> if_true
	%classPtr_18 = malloc 8
	#B#B ( %classPtr_18 )
	move %classPtr_19 %varDef_60
	%memberAddr_20 = add %classPtr_19 4
	store %classPtr_18 %memberAddr_20
	br <6>

<5> if_false
	move %classPtr_21 %varDef_60
	%memberAddr_22 = add %classPtr_21 4
	store 0 %memberAddr_22
	br <6>

<6> if_merge
	br <3>

<2> if_false
	move %classPtr_23 %varDef_60
	%memberAddr_24 = add %classPtr_23 0
	store 0 %memberAddr_24
	br <3>

<3> if_merge
	%memberLength_26 = mul 2 4
	%arrayLength_27 = add %memberLength_26 4
	%arrayPtr_25 = malloc %arrayLength_27
	store 2 %arrayPtr_25
	move %classPtr_28 %varDef_60
	%memberAddr_29 = add %classPtr_28 8
	store %arrayPtr_25 %memberAddr_29
	%arrayPtr_30 = load null
	%arrayBase_31 = add %arrayPtr_30 4
	%offset_32 = mul 2 4
	%elementAddr_33 = add %arrayBase_31 %offset_32
	%arrayPtr_34 = load %elementAddr_33
	%arrayBase_35 = add %arrayPtr_34 4
	%offset_36 = mul 3 4
	%elementAddr_37 = add %arrayBase_35 %offset_36
	%arrayPtr_38 = load %elementAddr_37
	%arrayBase_39 = add %arrayPtr_38 4
	%offset_40 = mul 3 4
	%elementAddr_41 = add %arrayBase_39 %offset_40
	%elementVal_42 = load %elementAddr_41
	move %classPtr_43 %varDef_60
	%memberAddr_44 = add %classPtr_43 8
	%arrayPtr_45 = load %memberAddr_44
	%arrayBase_46 = add %arrayPtr_45 4
	%offset_47 = mul 0 4
	%elementAddr_48 = add %arrayBase_46 %offset_47
	store %elementVal_42 %elementAddr_48
	move %classPtr_49 %varDef_60
	%memberAddr_50 = add %classPtr_49 8
	%arrayPtr_51 = load %memberAddr_50
	%arrayBase_52 = add %arrayPtr_51 4
	%offset_53 = mul 1 4
	%elementAddr_54 = add %arrayBase_52 %offset_53
	store 0 %elementAddr_54
	move %classPtr_56 %varDef_60
	%memberAddr_57 = add %classPtr_56 8
	%classPtr_58 = load %memberAddr_57
	%res_55 = #array#size ( %classPtr_58 )
	%res_59 = neq %res_55 2
	br %res_59 <7> <8>

<7> if_true
	#println ( $str_0 )
	br <8>

<8> if_merge

}

define #A#getc0 ( %thisVal_0 ) {
<0> entry
	move %varDef_9 %thisVal_0
	move %classPtr_2 %varDef_9
	%memberAddr_3 = add %classPtr_2 8
	%arrayPtr_4 = load %memberAddr_3
	%arrayBase_5 = add %arrayPtr_4 4
	%offset_6 = mul 0 4
	%elementAddr_7 = add %arrayBase_5 %offset_6
	%elementVal_8 = load %elementAddr_7
	ret %elementVal_8

}

define #B#B ( %thisVal_0 ) {
<0> entry
	move %varDef_16 %thisVal_0
	%idVal_2 = load @countB
	%oldVal_3 = load @countB
	%newVal_4 = inc %oldVal_3
	store %newVal_4 @countB
	move %classPtr_5 %varDef_16
	%memberAddr_6 = add %classPtr_5 0
	store %oldVal_3 %memberAddr_6
	%arrayPtr_9 = load null
	%arrayBase_10 = add %arrayPtr_9 4
	%offset_11 = mul 0 4
	%elementAddr_12 = add %arrayBase_10 %offset_11
	%classPtr_13 = load %elementAddr_12
	%res_8 = #C#Me ( %classPtr_13 )
	%res_7 = #C#Me ( %res_8 )
	move %classPtr_14 %varDef_16
	%memberAddr_15 = add %classPtr_14 4
	store %res_7 %memberAddr_15

}

define #C#C ( %thisVal_0 ) {
<0> entry
	move %varDef_15 %thisVal_0
	%idVal_2 = load @countC
	%oldVal_3 = load @countC
	%newVal_4 = inc %oldVal_3
	store %newVal_4 @countC
	move %classPtr_5 %varDef_15
	%memberAddr_6 = add %classPtr_5 0
	store %oldVal_3 %memberAddr_6
	move %classPtr_8 %varDef_15
	%memberAddr_9 = add %classPtr_8 0
	%idVal_10 = load %memberAddr_9
	%res_7 = #toString ( %idVal_10 )
	move %classPtr_11 %varDef_15
	%memberAddr_12 = add %classPtr_11 4
	store %res_7 %memberAddr_12
	move %classPtr_14 %varDef_15
	%res_13 = #C#Me ( %classPtr_14 )
	store %res_13 @something

}

define #C#Me ( %thisVal_0 ) {
<0> entry
	move %varDef_3 %thisVal_0
	move %idVal_2 %varDef_3
	ret %idVal_2

}

define #count ( ) {
<0> entry
	store 0 @countA
	store 0 @countB
	store 0 @countC
	%classPtr_1 = malloc 8
	#B#B ( %classPtr_1 )
	move %varDef_61 %classPtr_1
	%idVal_3 = load @countA
	%res_2 = #toString ( %idVal_3 )
	%res_4 = #string#add ( %res_2 $str_1 )
	%idVal_6 = load @countB
	%res_5 = #toString ( %idVal_6 )
	%res_7 = #string#add ( %res_4 %res_5 )
	%res_8 = #string#add ( %res_7 $str_1 )
	%idVal_10 = load @countC
	%res_9 = #toString ( %idVal_10 )
	%res_11 = #string#add ( %res_8 %res_9 )
	#println ( %res_11 )
	store 1 @countA
	store 1 @countB
	store 1 @countC
	%classPtr_12 = malloc 8
	#B#B ( %classPtr_12 )
	move %varDef_62 %classPtr_12
	%idVal_14 = load @countA
	%res_15 = sub %idVal_14 1
	%res_13 = #toString ( %res_15 )
	%res_16 = #string#add ( %res_13 $str_1 )
	%idVal_18 = load @countB
	%res_19 = sub %idVal_18 1
	%res_17 = #toString ( %res_19 )
	%res_20 = #string#add ( %res_16 %res_17 )
	%res_21 = #string#add ( %res_20 $str_1 )
	%idVal_23 = load @countC
	%res_24 = sub %idVal_23 1
	%res_22 = #toString ( %res_24 )
	%res_25 = #string#add ( %res_21 %res_22 )
	#print ( %res_25 )
	#print ( $str_2 )
	%classPtr_29 = load null
	%memberAddr_30 = add %classPtr_29 4
	%classPtr_31 = load %memberAddr_30
	%classPtr_33 = load @something
	%memberAddr_34 = add %classPtr_33 4
	%classPtr_35 = load %memberAddr_34
	%res_32 = #string#length ( %classPtr_35 )
	%res_36 = sub %res_32 1
	%res_28 = #string#substring ( %classPtr_31 1 %res_36 )
	%res_27 = #string#parseInt ( %res_28 )
	%res_26 = #toString ( %res_27 )
	#println ( %res_26 )
	%classPtr_40 = load @something
	%memberAddr_41 = add %classPtr_40 4
	%classPtr_42 = load %memberAddr_41
	%res_43 = bit_and 42 21
	%res_39 = #string#ord ( %classPtr_42 %res_43 )
	%res_38 = #toString ( %res_39 )
	move %varDef_63 %res_38
	move %idVal_44 %varDef_63
	%classPtr_45 = load @something
	%memberAddr_46 = add %classPtr_45 4
	%memberVal_47 = load %memberAddr_46
	%res_48 = #string#lt ( %idVal_44 %memberVal_47 )
	br %res_48 <1> <2>

<1> if_true
	%classPtr_49 = load @something
	%memberAddr_50 = add %classPtr_49 4
	%memberVal_51 = load %memberAddr_50
	%res_52 = #string#add ( %memberVal_51 $str_3 )
	move %idVal_53 %varDef_63
	%res_54 = #string#add ( %res_52 %idVal_53 )
	#println ( %res_54 )
	br <3>

<2> if_false
	%classPtr_55 = load @something
	%memberAddr_56 = add %classPtr_55 4
	%memberVal_57 = load %memberAddr_56
	%res_58 = #string#add ( %memberVal_57 $str_4 )
	move %idVal_59 %varDef_63
	%res_60 = #string#add ( %res_58 %idVal_59 )
	#println ( %res_60 )
	br <3>

<3> if_merge

}

define #main ( ) {
<0> entry
	move %varDef_23 0
	br <1>

<1> for_cond
	%varDef_24 = phi <0> %varDef_23 <3> %varDef_27
	br <2>

<2> for_body
	move %idVal_1 %varDef_24
	%res_2 = bit_and 891 759
	%res_3 = bit_xor %idVal_1 %res_2
	%res_4 = eq %res_3 666
	%res_5 = eq %res_4 null
	br %res_5 <5> <6>

<5> if_true
	move %idVal_7 %varDef_24
	%res_6 = #toString ( %idVal_7 )
	#println ( %res_6 )
	move %varDef_25 0
	move %idVal_10 %varDef_25
	%res_9 = #toString ( %idVal_10 )
	#println ( %res_9 )
	move %varDef_26 1
	move %idVal_13 %varDef_26
	%res_12 = #toString ( %idVal_13 )
	#println ( %res_12 )
	#count ( )
	br <4>

<6> if_merge
	br <3>

<3> for_step
	move %idVal_14 %varDef_24
	move %oldVal_15 %varDef_24
	%newVal_16 = inc %oldVal_15
	move %varDef_27 %newVal_16
	br <1>

<4> for_end
	br <7>

<7> while_cond
	br 1 <8> <9>

<8> while_body
	move %idVal_17 %varDef_24
	%res_18 = mod %idVal_17 2
	%res_19 = eq %res_18 0
	br %res_19 <10> <11>

<10> if_true
	br <7>

<11> if_merge
	move %idVal_21 %varDef_24
	%res_20 = #toString ( %idVal_21 )
	%res_22 = #string#add ( %res_20 $str_5 )
	#print ( %res_22 )
	br <7>

<9> while_end
	#println ( $str_6 )
	ret 0

}

