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
	%varAddr_15 = alloca 4
	%res_1 = #getInt ( )
	%res_3 = mod %res_1 2
	%res_4 = eq %res_3 0
	br <5>

<5> parallel_copy
	br <2>

<4> parallel_copy
	br <1>

<1> if_true
	%res_6 = add %res_1 2
	store %res_6 %varAddr_15
	br <3>

<2> if_false
	%res_8 = sub %res_1 3
	store %res_8 %varAddr_15
	br <3>

<3> if_merge
	%varDef_14 = load %varAddr_15
	%res_9 = #toString ( %varDef_14 )
	#println ( %res_9 )
	ret 0

}

