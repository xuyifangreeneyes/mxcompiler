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
	%varAddr_2 = alloca 4
	%varAddr_1 = alloca 4
	%varAddr_0 = alloca 4
	store 3 %varAddr_0
	store 4 %varAddr_1
	%idVal_3 = load %varAddr_0
	%idVal_4 = load %varAddr_1
	%res_5 = add %idVal_3 %idVal_4
	store %res_5 %varAddr_2
	%idVal_7 = load %varAddr_2
	%res_6 = #toString ( %idVal_7 )
	#print ( %res_6 )
	ret 0

}

