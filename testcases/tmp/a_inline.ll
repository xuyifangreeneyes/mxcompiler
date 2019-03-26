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
	%cargAddr_42 = alloca 4
	%cargAddr_41 = alloca 4
	%retValAddr_40 = alloca 4
	%cargAddr_29 = alloca 4
	%cargAddr_28 = alloca 4
	%retValAddr_27 = alloca 4
	%cargAddr_16 = alloca 4
	%cargAddr_15 = alloca 4
	%retValAddr_14 = alloca 4
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
	br <5>

<5> centry
	store %idVal_10 %cargAddr_16
	store %res_13 %cargAddr_15
	%cidVal_17 = load %cargAddr_16
	%cidVal_18 = load %cargAddr_15
	%cres_19 = mod %cidVal_17 %cidVal_18
	%cres_20 = eq %cres_19 0
	br %cres_20 <6> <7>

<6> cif_true
	%cidVal_21 = load %cargAddr_15
	store %cidVal_21 %retValAddr_14
	br <4>

<7> cif_false
	%cidVal_22 = load %cargAddr_15
	%cidVal_23 = load %cargAddr_16
	%cidVal_24 = load %cargAddr_15
	%cres_25 = mod %cidVal_23 %cidVal_24
	br <10>

<10> centry
	store %cidVal_22 %cargAddr_29
	store %cres_25 %cargAddr_28
	%cidVal_30 = load %cargAddr_29
	%cidVal_31 = load %cargAddr_28
	%cres_32 = mod %cidVal_30 %cidVal_31
	%cres_33 = eq %cres_32 0
	br %cres_33 <11> <12>

<11> cif_true
	%cidVal_34 = load %cargAddr_28
	store %cidVal_34 %retValAddr_27
	br <9>

<12> cif_false
	%cidVal_35 = load %cargAddr_28
	%cidVal_36 = load %cargAddr_29
	%cidVal_37 = load %cargAddr_28
	%cres_38 = mod %cidVal_36 %cidVal_37
	br <15>

<15> centry
	store %cidVal_35 %cargAddr_42
	store %cres_38 %cargAddr_41
	%cidVal_43 = load %cargAddr_42
	%cidVal_44 = load %cargAddr_41
	%cres_45 = mod %cidVal_43 %cidVal_44
	%cres_46 = eq %cres_45 0
	br %cres_46 <16> <17>

<16> cif_true
	%cidVal_47 = load %cargAddr_41
	store %cidVal_47 %retValAddr_40
	br <14>

<17> cif_false
	%cidVal_48 = load %cargAddr_41
	%cidVal_49 = load %cargAddr_42
	%cidVal_50 = load %cargAddr_41
	%cres_51 = mod %cidVal_49 %cidVal_50
	%cres_52 = #gcd ( %cidVal_48 %cres_51 )
	store %cres_52 %retValAddr_40
	br <14>

<18> cif_merge
	br <14>

<14> after_call
	%cres_39 = load %retValAddr_40
	store %cres_39 %retValAddr_27
	br <9>

<13> cif_merge
	br <9>

<9> after_call
	%cres_26 = load %retValAddr_27
	store %cres_26 %retValAddr_14
	br <4>

<8> cif_merge
	br <4>

<4> after_call
	%res_9 = load %retValAddr_14
	ret %res_9

<3> if_merge

}

define #main ( ) {
<0> entry
	%cargAddr_112 = alloca 4
	%cargAddr_111 = alloca 4
	%retValAddr_110 = alloca 4
	%cargAddr_99 = alloca 4
	%cargAddr_98 = alloca 4
	%retValAddr_97 = alloca 4
	%cargAddr_86 = alloca 4
	%cargAddr_85 = alloca 4
	%retValAddr_84 = alloca 4
	%cargAddr_73 = alloca 4
	%cargAddr_72 = alloca 4
	%retValAddr_71 = alloca 4
	%cargAddr_60 = alloca 4
	%cargAddr_59 = alloca 4
	%retValAddr_58 = alloca 4
	%cargAddr_47 = alloca 4
	%cargAddr_46 = alloca 4
	%retValAddr_45 = alloca 4
	%cargAddr_34 = alloca 4
	%cargAddr_33 = alloca 4
	%retValAddr_32 = alloca 4
	%cargAddr_21 = alloca 4
	%cargAddr_20 = alloca 4
	%retValAddr_19 = alloca 4
	%cargAddr_8 = alloca 4
	%cargAddr_7 = alloca 4
	%retValAddr_6 = alloca 4
	br <2>

<2> centry
	store 10 %cargAddr_8
	store 1 %cargAddr_7
	%cidVal_9 = load %cargAddr_8
	%cidVal_10 = load %cargAddr_7
	%cres_11 = mod %cidVal_9 %cidVal_10
	%cres_12 = eq %cres_11 0
	br %cres_12 <3> <4>

<3> cif_true
	%cidVal_13 = load %cargAddr_7
	store %cidVal_13 %retValAddr_6
	br <1>

<4> cif_false
	%cidVal_14 = load %cargAddr_7
	%cidVal_15 = load %cargAddr_8
	%cidVal_16 = load %cargAddr_7
	%cres_17 = mod %cidVal_15 %cidVal_16
	br <17>

<17> centry
	store %cidVal_14 %cargAddr_47
	store %cres_17 %cargAddr_46
	%cidVal_48 = load %cargAddr_47
	%cidVal_49 = load %cargAddr_46
	%cres_50 = mod %cidVal_48 %cidVal_49
	%cres_51 = eq %cres_50 0
	br %cres_51 <18> <19>

<18> cif_true
	%cidVal_52 = load %cargAddr_46
	store %cidVal_52 %retValAddr_45
	br <16>

<19> cif_false
	%cidVal_53 = load %cargAddr_46
	%cidVal_54 = load %cargAddr_47
	%cidVal_55 = load %cargAddr_46
	%cres_56 = mod %cidVal_54 %cidVal_55
	br <32>

<32> centry
	store %cidVal_53 %cargAddr_86
	store %cres_56 %cargAddr_85
	%cidVal_87 = load %cargAddr_86
	%cidVal_88 = load %cargAddr_85
	%cres_89 = mod %cidVal_87 %cidVal_88
	%cres_90 = eq %cres_89 0
	br %cres_90 <33> <34>

<33> cif_true
	%cidVal_91 = load %cargAddr_85
	store %cidVal_91 %retValAddr_84
	br <31>

<34> cif_false
	%cidVal_92 = load %cargAddr_85
	%cidVal_93 = load %cargAddr_86
	%cidVal_94 = load %cargAddr_85
	%cres_95 = mod %cidVal_93 %cidVal_94
	%cres_96 = #gcd ( %cidVal_92 %cres_95 )
	store %cres_96 %retValAddr_84
	br <31>

<35> cif_merge
	br <31>

<31> after_call
	%cres_57 = load %retValAddr_84
	store %cres_57 %retValAddr_45
	br <16>

<20> cif_merge
	br <16>

<16> after_call
	%cres_18 = load %retValAddr_45
	store %cres_18 %retValAddr_6
	br <1>

<5> cif_merge
	br <1>

<1> after_call
	%res_1 = load %retValAddr_6
	%res_0 = #toString ( %res_1 )
	#println ( %res_0 )
	br <7>

<7> centry
	store 34986 %cargAddr_21
	store 3087 %cargAddr_20
	%cidVal_22 = load %cargAddr_21
	%cidVal_23 = load %cargAddr_20
	%cres_24 = mod %cidVal_22 %cidVal_23
	%cres_25 = eq %cres_24 0
	br %cres_25 <8> <9>

<8> cif_true
	%cidVal_26 = load %cargAddr_20
	store %cidVal_26 %retValAddr_19
	br <6>

<9> cif_false
	%cidVal_27 = load %cargAddr_20
	%cidVal_28 = load %cargAddr_21
	%cidVal_29 = load %cargAddr_20
	%cres_30 = mod %cidVal_28 %cidVal_29
	br <22>

<22> centry
	store %cidVal_27 %cargAddr_60
	store %cres_30 %cargAddr_59
	%cidVal_61 = load %cargAddr_60
	%cidVal_62 = load %cargAddr_59
	%cres_63 = mod %cidVal_61 %cidVal_62
	%cres_64 = eq %cres_63 0
	br %cres_64 <23> <24>

<23> cif_true
	%cidVal_65 = load %cargAddr_59
	store %cidVal_65 %retValAddr_58
	br <21>

<24> cif_false
	%cidVal_66 = load %cargAddr_59
	%cidVal_67 = load %cargAddr_60
	%cidVal_68 = load %cargAddr_59
	%cres_69 = mod %cidVal_67 %cidVal_68
	br <37>

<37> centry
	store %cidVal_66 %cargAddr_99
	store %cres_69 %cargAddr_98
	%cidVal_100 = load %cargAddr_99
	%cidVal_101 = load %cargAddr_98
	%cres_102 = mod %cidVal_100 %cidVal_101
	%cres_103 = eq %cres_102 0
	br %cres_103 <38> <39>

<38> cif_true
	%cidVal_104 = load %cargAddr_98
	store %cidVal_104 %retValAddr_97
	br <36>

<39> cif_false
	%cidVal_105 = load %cargAddr_98
	%cidVal_106 = load %cargAddr_99
	%cidVal_107 = load %cargAddr_98
	%cres_108 = mod %cidVal_106 %cidVal_107
	%cres_109 = #gcd ( %cidVal_105 %cres_108 )
	store %cres_109 %retValAddr_97
	br <36>

<40> cif_merge
	br <36>

<36> after_call
	%cres_70 = load %retValAddr_97
	store %cres_70 %retValAddr_58
	br <21>

<25> cif_merge
	br <21>

<21> after_call
	%cres_31 = load %retValAddr_58
	store %cres_31 %retValAddr_19
	br <6>

<10> cif_merge
	br <6>

<6> after_call
	%res_3 = load %retValAddr_19
	%res_2 = #toString ( %res_3 )
	#println ( %res_2 )
	br <12>

<12> centry
	store 2907 %cargAddr_34
	store 1539 %cargAddr_33
	%cidVal_35 = load %cargAddr_34
	%cidVal_36 = load %cargAddr_33
	%cres_37 = mod %cidVal_35 %cidVal_36
	%cres_38 = eq %cres_37 0
	br %cres_38 <13> <14>

<13> cif_true
	%cidVal_39 = load %cargAddr_33
	store %cidVal_39 %retValAddr_32
	br <11>

<14> cif_false
	%cidVal_40 = load %cargAddr_33
	%cidVal_41 = load %cargAddr_34
	%cidVal_42 = load %cargAddr_33
	%cres_43 = mod %cidVal_41 %cidVal_42
	br <27>

<27> centry
	store %cidVal_40 %cargAddr_73
	store %cres_43 %cargAddr_72
	%cidVal_74 = load %cargAddr_73
	%cidVal_75 = load %cargAddr_72
	%cres_76 = mod %cidVal_74 %cidVal_75
	%cres_77 = eq %cres_76 0
	br %cres_77 <28> <29>

<28> cif_true
	%cidVal_78 = load %cargAddr_72
	store %cidVal_78 %retValAddr_71
	br <26>

<29> cif_false
	%cidVal_79 = load %cargAddr_72
	%cidVal_80 = load %cargAddr_73
	%cidVal_81 = load %cargAddr_72
	%cres_82 = mod %cidVal_80 %cidVal_81
	br <42>

<42> centry
	store %cidVal_79 %cargAddr_112
	store %cres_82 %cargAddr_111
	%cidVal_113 = load %cargAddr_112
	%cidVal_114 = load %cargAddr_111
	%cres_115 = mod %cidVal_113 %cidVal_114
	%cres_116 = eq %cres_115 0
	br %cres_116 <43> <44>

<43> cif_true
	%cidVal_117 = load %cargAddr_111
	store %cidVal_117 %retValAddr_110
	br <41>

<44> cif_false
	%cidVal_118 = load %cargAddr_111
	%cidVal_119 = load %cargAddr_112
	%cidVal_120 = load %cargAddr_111
	%cres_121 = mod %cidVal_119 %cidVal_120
	%cres_122 = #gcd ( %cidVal_118 %cres_121 )
	store %cres_122 %retValAddr_110
	br <41>

<45> cif_merge
	br <41>

<41> after_call
	%cres_83 = load %retValAddr_110
	store %cres_83 %retValAddr_71
	br <26>

<30> cif_merge
	br <26>

<26> after_call
	%cres_44 = load %retValAddr_71
	store %cres_44 %retValAddr_32
	br <11>

<15> cif_merge
	br <11>

<11> after_call
	%res_5 = load %retValAddr_32
	%res_4 = #toString ( %res_5 )
	#println ( %res_4 )
	ret 0

}

