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
	%res_6 = mod %argVal_0 %argVal_2
	%res_7 = eq %res_6 0
	br %res_7 <1> <2>

<1> if_true
	ret %argVal_2

<2> if_false
	%res_13 = mod %argVal_0 %argVal_2
	%cres_19 = mod %argVal_2 %res_13
	%cres_20 = eq %cres_19 0
	br %cres_20 <6> <7>

<6> cif_true
	br <4>

<7> cif_false
	%cres_25 = mod %argVal_2 %res_13
	%cres_32 = mod %res_13 %cres_25
	%cres_33 = eq %cres_32 0
	br %cres_33 <11> <12>

<11> cif_true
	br <9>

<12> cif_false
	%cres_38 = mod %res_13 %cres_25
	%cres_45 = mod %cres_25 %cres_38
	%cres_46 = eq %cres_45 0
	br %cres_46 <16> <17>

<16> cif_true
	br <14>

<17> cif_false
	%cres_51 = mod %cres_25 %cres_38
	%cres_52 = #gcd ( %cres_38 %cres_51 )
	br <14>

<14> after_call
	%varDef_65 = phi <16> %cres_38 <17> %cres_52
	br <9>

<9> after_call
	%varDef_67 = phi <11> %cres_25 <14> %varDef_65
	br <4>

<4> after_call
	%varDef_72 = phi <6> %res_13 <9> %varDef_67
	ret %varDef_72

}

define #main ( ) {
<0> entry
	br <2>

<2> centry
	%res_0 = #toString ( 1 )
	#println ( %res_0 )
	%res_2 = #toString ( 1029 )
	#println ( %res_2 )
	%res_4 = #toString ( 171 )
	#println ( %res_4 )
	ret 0

}

