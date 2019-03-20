@object

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
	%classPtr_0 = load @object
	#A#func1 ( %classPtr_0 2 3 )
	%classPtr_3 = load @object
	%res_2 = #A#set ( %classPtr_3 0 1 )
	%res_1 = #A#set ( %res_2 1 0 )
	%classPtr_6 = load @object
	%classPtr_8 = load @object
	%res_7 = #A#getThis ( %classPtr_8 )
	%res_5 = #A#copy ( %classPtr_6 %res_7 )
	%classPtr_11 = load @object
	%res_10 = #A#getThis ( %classPtr_11 )
	%res_9 = #A#getThis ( %res_10 )
	%res_4 = #A#copy ( %res_5 %res_9 )
	ret 0

}

define #A#func1 ( %thisVal_0 %argVal_2 %argVal_4 ) {
<0> entry
	move %varDef_17 %thisVal_0
	move %varDef_18 %argVal_2
	move %varDef_19 %argVal_4
	move %classPtr_6 %varDef_17
	move %classPtr_7 %varDef_17
	%memberAddr_8 = add %classPtr_7 0
	%memberVal_9 = load %memberAddr_8
	move %idVal_10 %varDef_18
	%res_11 = mul %memberVal_9 %idVal_10
	move %classPtr_12 %varDef_17
	%memberAddr_13 = add %classPtr_12 4
	%memberVal_14 = load %memberAddr_13
	move %idVal_15 %varDef_19
	%res_16 = mul %memberVal_14 %idVal_15
	#A#func2 ( %classPtr_6 %res_11 %res_16 )

}

define #A#func2 ( %thisVal_0 %argVal_2 %argVal_4 ) {
<0> entry
	move %varDef_21 %thisVal_0
	move %classPtr_6 %varDef_21
	move %classPtr_7 %varDef_21
	%memberAddr_8 = add %classPtr_7 0
	%idVal_9 = load %memberAddr_8
	move %classPtr_10 %varDef_21
	%memberAddr_11 = add %classPtr_10 0
	%memberVal_12 = load %memberAddr_11
	%res_13 = mul %idVal_9 %memberVal_12
	move %classPtr_14 %varDef_21
	%memberAddr_15 = add %classPtr_14 4
	%idVal_16 = load %memberAddr_15
	move %classPtr_17 %varDef_21
	%memberAddr_18 = add %classPtr_17 4
	%memberVal_19 = load %memberAddr_18
	%res_20 = mul %idVal_16 %memberVal_19
	#A#func1 ( %classPtr_6 %res_13 %res_20 )

}

define #A#set ( %thisVal_0 %argVal_2 %argVal_4 ) {
<0> entry
	move %varDef_25 %thisVal_0
	move %varDef_26 %argVal_2
	move %varDef_27 %argVal_4
	move %classPtr_10 %varDef_25
	move %classPtr_11 %varDef_25
	%memberAddr_12 = add %classPtr_11 0
	%idVal_13 = load %memberAddr_12
	move %classPtr_14 %varDef_25
	%memberAddr_15 = add %classPtr_14 4
	%idVal_16 = load %memberAddr_15
	%res_9 = #A#set ( %classPtr_10 %idVal_13 %idVal_16 )
	move %classPtr_17 %varDef_25
	%memberAddr_18 = add %classPtr_17 0
	%memberVal_19 = load %memberAddr_18
	move %classPtr_20 %varDef_25
	%memberAddr_21 = add %classPtr_20 4
	%memberVal_22 = load %memberAddr_21
	%res_8 = #A#set ( %res_9 %memberVal_19 %memberVal_22 )
	move %idVal_23 %varDef_26
	move %idVal_24 %varDef_27
	%res_7 = #A#set ( %res_8 %idVal_23 %idVal_24 )
	%res_6 = #A#getThis ( %res_7 )
	ret %res_6

}

define #A#copy ( %thisVal_0 %argVal_2 ) {
<0> entry
	move %varDef_5 %thisVal_0
	move %idVal_4 %varDef_5
	ret %idVal_4

}

define #A#getThis ( %thisVal_0 ) {
<0> entry
	move %varDef_9 %thisVal_0
	move %classPtr_7 %varDef_9
	%res_6 = #A#getThis ( %classPtr_7 )
	%res_5 = #A#getThis ( %res_6 )
	%res_4 = #A#getThis ( %res_5 )
	%res_3 = #A#getThis ( %res_4 )
	move %idVal_8 %varDef_9
	%res_2 = #A#copy ( %res_3 %idVal_8 )
	ret %res_2

}

