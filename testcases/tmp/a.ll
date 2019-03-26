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

define #gcd ( %argVal_0 %argVal_2 ) {
<0> entry
	%argAddr_3 = alloca 4
	%argAddr_1 = alloca 4
	store %argVal_0 %argAddr_1
	store %argVal_2 %argAddr_3
	%idVal_4 = load %argAddr_1
	%idVal_5 = load %argAddr_3
	%res_6 = mod %idVal_4 %idVal_5
	%res_7 = eq %res_6 0
	br %res_7 <1> <2>

<1> if_true
	%idVal_8 = load %argAddr_3
	ret %idVal_8

<2> if_false
	%idVal_10 = load %argAddr_3
	%idVal_11 = load %argAddr_1
	%idVal_12 = load %argAddr_3
	%res_13 = mod %idVal_11 %idVal_12
	%res_9 = #gcd ( %idVal_10 %res_13 )
	ret %res_9

<3> if_merge

}

define #main ( ) {
<0> entry
	%res_1 = #gcd ( 10 1 )
	%res_0 = #toString ( %res_1 )
	#println ( %res_0 )
	%res_3 = #gcd ( 34986 3087 )
	%res_2 = #toString ( %res_3 )
	#println ( %res_2 )
	%res_5 = #gcd ( 2907 1539 )
	%res_4 = #toString ( %res_5 )
	#println ( %res_4 )
	ret 0

}

