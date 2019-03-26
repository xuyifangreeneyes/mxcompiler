@a

@i

@j

@b

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
	%memberLength_1 = mul 4 4
	%arrayLength_2 = add %memberLength_1 4
	%arrayPtr_0 = malloc %arrayLength_2
	store 4 %arrayPtr_0
	store %arrayPtr_0 @a
	%memberLength_4 = mul 5 4
	%arrayLength_5 = add %memberLength_4 4
	%arrayPtr_3 = malloc %arrayLength_5
	store 5 %arrayPtr_3
	store %arrayPtr_3 @b

}

define #printNum ( %argVal_0 ) {
<0> entry
	%argAddr_1 = alloca 4
	store %argVal_0 %argAddr_1
	%idVal_3 = load %argAddr_1
	%res_2 = #toString ( %idVal_3 )
	#println ( %res_2 )

}

define #main ( ) {
<0> entry
	%cargAddr_182 = alloca 4
	%retValAddr_181 = alloca 4
	%cargAddr_178 = alloca 4
	%retValAddr_177 = alloca 4
	%cargAddr_174 = alloca 4
	%retValAddr_173 = alloca 4
	%cargAddr_170 = alloca 4
	%retValAddr_169 = alloca 4
	%cargAddr_166 = alloca 4
	%retValAddr_165 = alloca 4
	store 0 @i
	br <1>

<1> for_cond
	%idVal_0 = load @i
	%res_1 = lt %idVal_0 4
	br %res_1 <2> <4>

<2> for_body
	%memberLength_3 = mul 11 4
	%arrayLength_4 = add %memberLength_3 4
	%arrayPtr_2 = malloc %arrayLength_4
	store 11 %arrayPtr_2
	%arrayPtr_5 = load @a
	%arrayBase_6 = add %arrayPtr_5 4
	%idVal_7 = load @i
	%offset_8 = mul %idVal_7 4
	%elementAddr_9 = add %arrayBase_6 %offset_8
	store %arrayPtr_2 %elementAddr_9
	%idVal_10 = load @i
	%oldVal_11 = load @i
	%newVal_12 = inc %oldVal_11
	store %newVal_12 @i
	br <1>

<4> for_end
	store 0 @i
	br <5>

<5> for_cond
	%idVal_13 = load @i
	%res_14 = lt %idVal_13 4
	br %res_14 <6> <8>

<6> for_body
	store 0 @j
	br <9>

<9> for_cond
	%idVal_15 = load @j
	%res_16 = lt %idVal_15 10
	br %res_16 <10> <7>

<10> for_body
	%arrayPtr_17 = load @a
	%arrayBase_18 = add %arrayPtr_17 4
	%idVal_19 = load @i
	%offset_20 = mul %idVal_19 4
	%elementAddr_21 = add %arrayBase_18 %offset_20
	%arrayPtr_22 = load %elementAddr_21
	%arrayBase_23 = add %arrayPtr_22 4
	%idVal_24 = load @j
	%offset_25 = mul %idVal_24 4
	%elementAddr_26 = add %arrayBase_23 %offset_25
	store 888 %elementAddr_26
	%idVal_27 = load @j
	%oldVal_28 = load @j
	%newVal_29 = inc %oldVal_28
	store %newVal_29 @j
	br <9>

<7> for_step
	%idVal_30 = load @i
	%oldVal_31 = load @i
	%newVal_32 = inc %oldVal_31
	store %newVal_32 @i
	br <5>

<8> for_end
	store 0 @i
	br <13>

<13> for_cond
	%idVal_33 = load @i
	%res_34 = lt %idVal_33 5
	br %res_34 <14> <16>

<14> for_body
	%classPtr_35 = malloc 8
	%arrayPtr_36 = load @b
	%arrayBase_37 = add %arrayPtr_36 4
	%idVal_38 = load @i
	%offset_39 = mul %idVal_38 4
	%elementAddr_40 = add %arrayBase_37 %offset_39
	store %classPtr_35 %elementAddr_40
	%res_41 = neg 1
	%arrayPtr_42 = load @b
	%arrayBase_43 = add %arrayPtr_42 4
	%idVal_44 = load @i
	%offset_45 = mul %idVal_44 4
	%elementAddr_46 = add %arrayBase_43 %offset_45
	%classPtr_47 = load %elementAddr_46
	%memberAddr_48 = add %classPtr_47 0
	store %res_41 %memberAddr_48
	%idVal_49 = load @i
	%oldVal_50 = load @i
	%newVal_51 = inc %oldVal_50
	store %newVal_51 @i
	br <13>

<16> for_end
	%arrayPtr_53 = load @a
	%arrayBase_54 = add %arrayPtr_53 4
	%offset_55 = mul 3 4
	%elementAddr_56 = add %arrayBase_54 %offset_55
	%arrayPtr_57 = load %elementAddr_56
	%arrayBase_58 = add %arrayPtr_57 4
	%offset_59 = mul 9 4
	%elementAddr_60 = add %arrayBase_58 %offset_59
	%elementVal_61 = load %elementAddr_60
	store %elementVal_61 %cargAddr_166
	%cidVal_167 = load %cargAddr_166
	%cres_168 = #toString ( %cidVal_167 )
	#println ( %cres_168 )

}

