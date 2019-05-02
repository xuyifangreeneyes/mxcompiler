$str_0 "A"

$str_1 "B"

$str_2 "C"

define print

define println

define getString

define getInt

define toString

define __stringLength

define __stringSubstring

define __stringParseInt

define __stringOrd

define __arraySize

define __stringAdd

define __stringEq

define __stringNeq

define __stringLt

define __stringGt

define __stringLe

define __stringGe

define __printInt

define __printlnInt

define __globalInit ( ) {
<0> entry
	ret 

}

define cd ( %argVal_0 %argVal_2 %argVal_4 %argVal_6 %argVal_8 ) {
<0> entry
	%varAddr_349 = alloca 4
	%varAddr_348 = alloca 4
	%varAddr_347 = alloca 4
	%varAddr_346 = alloca 4
	%varAddr_345 = alloca 4
	%varAddr_344 = alloca 4
	%varAddr_343 = alloca 4
	%res_11 = eq %argVal_0 1
	br %res_11 <1> <2>

<1> if_true
	%newVal_14 = inc %argVal_8
	store %newVal_14 %varAddr_344
	br <3>

<2> if_false
	%res_17 = sub %argVal_0 1
	%cres_40 = eq %res_17 1
	br %cres_40 <6> <7>

<6> cif_true
	%cnewVal_43 = inc %argVal_8
	store %cnewVal_43 %varAddr_347
	br <8>

<7> cif_false
	%cres_45 = sub %res_17 1
	%cres_98 = eq %cres_45 1
	br %cres_98 <16> <17>

<16> cif_true
	%cnewVal_101 = inc %argVal_8
	store %cnewVal_101 %varAddr_343
	br <18>

<17> cif_false
	%cres_103 = sub %cres_45 1
	%cres_108 = cd ( %cres_103 %argVal_2 %argVal_6 %argVal_4 %argVal_8 )
	%cres_115 = cd ( %cres_103 %argVal_4 %argVal_2 %argVal_6 %cres_108 )
	%cnewVal_118 = inc %cres_115
	store %cnewVal_118 %varAddr_343
	br <18>

<18> cif_merge
	%varDef_228 = load %varAddr_343
	%cres_52 = sub %res_17 1
	%cres_127 = eq %cres_52 1
	br %cres_127 <21> <22>

<21> cif_true
	%cnewVal_130 = inc %varDef_228
	store %cnewVal_130 %varAddr_346
	br <23>

<22> cif_false
	%cres_132 = sub %cres_52 1
	%cres_137 = cd ( %cres_132 %argVal_6 %argVal_4 %argVal_2 %varDef_228 )
	%cres_144 = cd ( %cres_132 %argVal_2 %argVal_6 %argVal_4 %cres_137 )
	%cnewVal_147 = inc %cres_144
	store %cnewVal_147 %varAddr_346
	br <23>

<23> cif_merge
	%varDef_240 = load %varAddr_346
	%cnewVal_60 = inc %varDef_240
	store %cnewVal_60 %varAddr_347
	br <8>

<8> cif_merge
	%varDef_244 = load %varAddr_347
	%res_24 = sub %argVal_0 1
	%cres_69 = eq %res_24 1
	br %cres_69 <11> <12>

<11> cif_true
	%cnewVal_72 = inc %varDef_244
	store %cnewVal_72 %varAddr_348
	br <13>

<12> cif_false
	%cres_74 = sub %res_24 1
	%cres_156 = eq %cres_74 1
	br %cres_156 <26> <27>

<26> cif_true
	%cnewVal_159 = inc %varDef_244
	store %cnewVal_159 %varAddr_349
	br <28>

<27> cif_false
	%cres_161 = sub %cres_74 1
	%cres_166 = cd ( %cres_161 %argVal_4 %argVal_2 %argVal_6 %varDef_244 )
	%cres_173 = cd ( %cres_161 %argVal_6 %argVal_4 %argVal_2 %cres_166 )
	%cnewVal_176 = inc %cres_173
	store %cnewVal_176 %varAddr_349
	br <28>

<28> cif_merge
	%varDef_274 = load %varAddr_349
	%cres_81 = sub %res_24 1
	%cres_185 = eq %cres_81 1
	br %cres_185 <31> <32>

<31> cif_true
	%cnewVal_188 = inc %varDef_274
	store %cnewVal_188 %varAddr_345
	br <33>

<32> cif_false
	%cres_190 = sub %cres_81 1
	%cres_195 = cd ( %cres_190 %argVal_2 %argVal_6 %argVal_4 %varDef_274 )
	%cres_202 = cd ( %cres_190 %argVal_4 %argVal_2 %argVal_6 %cres_195 )
	%cnewVal_205 = inc %cres_202
	store %cnewVal_205 %varAddr_345
	br <33>

<33> cif_merge
	%varDef_286 = load %varAddr_345
	%cnewVal_89 = inc %varDef_286
	store %cnewVal_89 %varAddr_348
	br <13>

<13> cif_merge
	%varDef_290 = load %varAddr_348
	%newVal_31 = inc %varDef_290
	store %newVal_31 %varAddr_344
	br <3>

<3> if_merge
	%varDef_306 = load %varAddr_344
	ret %varDef_306

}

define main ( ) {
<0> entry
	%varAddr_151 = alloca 4
	%varAddr_150 = alloca 4
	%varAddr_149 = alloca 4
	%res_4 = getInt ( )
	br <2>

<2> centry
	%cres_19 = eq %res_4 1
	br %cres_19 <3> <4>

<3> cif_true
	store 1 %varAddr_149
	br <5>

<4> cif_false
	%cres_24 = sub %res_4 1
	%cres_48 = eq %cres_24 1
	br %cres_48 <8> <9>

<8> cif_true
	store 1 %varAddr_151
	br <10>

<9> cif_false
	%cres_53 = sub %cres_24 1
	%cres_58 = cd ( %cres_53 $str_0 $str_1 $str_2 0 )
	%cres_65 = cd ( %cres_53 $str_2 $str_0 $str_1 %cres_58 )
	%cnewVal_68 = inc %cres_65
	store %cnewVal_68 %varAddr_151
	br <10>

<10> cif_merge
	%varDef_118 = load %varAddr_151
	%cres_31 = sub %res_4 1
	%cres_77 = eq %cres_31 1
	br %cres_77 <13> <14>

<13> cif_true
	%cnewVal_80 = inc %varDef_118
	store %cnewVal_80 %varAddr_150
	br <15>

<14> cif_false
	%cres_82 = sub %cres_31 1
	%cres_87 = cd ( %cres_82 $str_1 $str_2 $str_0 %varDef_118 )
	%cres_94 = cd ( %cres_82 $str_0 $str_1 $str_2 %cres_87 )
	%cnewVal_97 = inc %cres_94
	store %cnewVal_97 %varAddr_150
	br <15>

<15> cif_merge
	%varDef_130 = load %varAddr_150
	%cnewVal_39 = inc %varDef_130
	store %cnewVal_39 %varAddr_149
	br <5>

<5> cif_merge
	%varDef_134 = load %varAddr_149
	__printlnInt ( %varDef_134 )
	ret 0

}

