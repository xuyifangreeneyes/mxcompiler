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
	%varAddr_821 = alloca 4
	%varAddr_820 = alloca 4
	%varAddr_819 = alloca 4
	%varAddr_818 = alloca 4
	%varAddr_817 = alloca 4
	%varAddr_816 = alloca 4
	%varAddr_815 = alloca 4
	%varAddr_814 = alloca 4
	%varAddr_813 = alloca 4
	%varAddr_812 = alloca 4
	%varAddr_811 = alloca 4
	%varAddr_810 = alloca 4
	%varAddr_809 = alloca 4
	%varAddr_808 = alloca 4
	%varAddr_807 = alloca 4
	%res_11 = eq %argVal_0 1
	br %res_11 <1> <2>

<1> if_true
	%newVal_14 = inc %argVal_8
	store %newVal_14 %varAddr_807
	br <3>

<2> if_false
	%res_17 = sub %argVal_0 1
	%cres_40 = eq %res_17 1
	br %cres_40 <6> <7>

<6> cif_true
	%cnewVal_43 = inc %argVal_8
	store %cnewVal_43 %varAddr_819
	br <8>

<7> cif_false
	%cres_45 = sub %res_17 1
	%cres_98 = eq %cres_45 1
	br %cres_98 <16> <17>

<16> cif_true
	%cnewVal_101 = inc %argVal_8
	store %cnewVal_101 %varAddr_817
	br <18>

<17> cif_false
	%cres_103 = sub %cres_45 1
	%cres_214 = eq %cres_103 1
	br %cres_214 <36> <37>

<36> cif_true
	%cnewVal_217 = inc %argVal_8
	store %cnewVal_217 %varAddr_818
	br <38>

<37> cif_false
	%cres_219 = sub %cres_103 1
	%cres_224 = cd ( %cres_219 %argVal_2 %argVal_4 %argVal_6 %argVal_8 )
	%cres_231 = cd ( %cres_219 %argVal_6 %argVal_2 %argVal_4 %cres_224 )
	%cnewVal_234 = inc %cres_231
	store %cnewVal_234 %varAddr_818
	br <38>

<38> cif_merge
	%varDef_466 = load %varAddr_818
	%cres_110 = sub %cres_45 1
	%cres_243 = eq %cres_110 1
	br %cres_243 <41> <42>

<41> cif_true
	%cnewVal_246 = inc %varDef_466
	store %cnewVal_246 %varAddr_820
	br <43>

<42> cif_false
	%cres_248 = sub %cres_110 1
	%cres_253 = cd ( %cres_248 %argVal_4 %argVal_6 %argVal_2 %varDef_466 )
	%cres_260 = cd ( %cres_248 %argVal_2 %argVal_4 %argVal_6 %cres_253 )
	%cnewVal_263 = inc %cres_260
	store %cnewVal_263 %varAddr_820
	br <43>

<43> cif_merge
	%varDef_478 = load %varAddr_820
	%cnewVal_118 = inc %varDef_478
	store %cnewVal_118 %varAddr_817
	br <18>

<18> cif_merge
	%varDef_482 = load %varAddr_817
	%cres_52 = sub %res_17 1
	%cres_127 = eq %cres_52 1
	br %cres_127 <21> <22>

<21> cif_true
	%cnewVal_130 = inc %varDef_482
	store %cnewVal_130 %varAddr_821
	br <23>

<22> cif_false
	%cres_132 = sub %cres_52 1
	%cres_272 = eq %cres_132 1
	br %cres_272 <46> <47>

<46> cif_true
	%cnewVal_275 = inc %varDef_482
	store %cnewVal_275 %varAddr_808
	br <48>

<47> cif_false
	%cres_277 = sub %cres_132 1
	%cres_282 = cd ( %cres_277 %argVal_6 %argVal_2 %argVal_4 %varDef_482 )
	%cres_289 = cd ( %cres_277 %argVal_4 %argVal_6 %argVal_2 %cres_282 )
	%cnewVal_292 = inc %cres_289
	store %cnewVal_292 %varAddr_808
	br <48>

<48> cif_merge
	%varDef_512 = load %varAddr_808
	%cres_139 = sub %cres_52 1
	%cres_301 = eq %cres_139 1
	br %cres_301 <51> <52>

<51> cif_true
	%cnewVal_304 = inc %varDef_512
	store %cnewVal_304 %varAddr_815
	br <53>

<52> cif_false
	%cres_306 = sub %cres_139 1
	%cres_311 = cd ( %cres_306 %argVal_2 %argVal_4 %argVal_6 %varDef_512 )
	%cres_318 = cd ( %cres_306 %argVal_6 %argVal_2 %argVal_4 %cres_311 )
	%cnewVal_321 = inc %cres_318
	store %cnewVal_321 %varAddr_815
	br <53>

<53> cif_merge
	%varDef_524 = load %varAddr_815
	%cnewVal_147 = inc %varDef_524
	store %cnewVal_147 %varAddr_821
	br <23>

<23> cif_merge
	%varDef_528 = load %varAddr_821
	%cnewVal_60 = inc %varDef_528
	store %cnewVal_60 %varAddr_819
	br <8>

<8> cif_merge
	%varDef_544 = load %varAddr_819
	%res_24 = sub %argVal_0 1
	%cres_69 = eq %res_24 1
	br %cres_69 <11> <12>

<11> cif_true
	%cnewVal_72 = inc %varDef_544
	store %cnewVal_72 %varAddr_816
	br <13>

<12> cif_false
	%cres_74 = sub %res_24 1
	%cres_156 = eq %cres_74 1
	br %cres_156 <26> <27>

<26> cif_true
	%cnewVal_159 = inc %varDef_544
	store %cnewVal_159 %varAddr_813
	br <28>

<27> cif_false
	%cres_161 = sub %cres_74 1
	%cres_330 = eq %cres_161 1
	br %cres_330 <56> <57>

<56> cif_true
	%cnewVal_333 = inc %varDef_544
	store %cnewVal_333 %varAddr_811
	br <58>

<57> cif_false
	%cres_335 = sub %cres_161 1
	%cres_340 = cd ( %cres_335 %argVal_4 %argVal_6 %argVal_2 %varDef_544 )
	%cres_347 = cd ( %cres_335 %argVal_2 %argVal_4 %argVal_6 %cres_340 )
	%cnewVal_350 = inc %cres_347
	store %cnewVal_350 %varAddr_811
	br <58>

<58> cif_merge
	%varDef_604 = load %varAddr_811
	%cres_168 = sub %cres_74 1
	%cres_359 = eq %cres_168 1
	br %cres_359 <61> <62>

<61> cif_true
	%cnewVal_362 = inc %varDef_604
	store %cnewVal_362 %varAddr_809
	br <63>

<62> cif_false
	%cres_364 = sub %cres_168 1
	%cres_369 = cd ( %cres_364 %argVal_6 %argVal_2 %argVal_4 %varDef_604 )
	%cres_376 = cd ( %cres_364 %argVal_4 %argVal_6 %argVal_2 %cres_369 )
	%cnewVal_379 = inc %cres_376
	store %cnewVal_379 %varAddr_809
	br <63>

<63> cif_merge
	%varDef_616 = load %varAddr_809
	%cnewVal_176 = inc %varDef_616
	store %cnewVal_176 %varAddr_813
	br <28>

<28> cif_merge
	%varDef_620 = load %varAddr_813
	%cres_81 = sub %res_24 1
	%cres_185 = eq %cres_81 1
	br %cres_185 <31> <32>

<31> cif_true
	%cnewVal_188 = inc %varDef_620
	store %cnewVal_188 %varAddr_814
	br <33>

<32> cif_false
	%cres_190 = sub %cres_81 1
	%cres_388 = eq %cres_190 1
	br %cres_388 <66> <67>

<66> cif_true
	%cnewVal_391 = inc %varDef_620
	store %cnewVal_391 %varAddr_812
	br <68>

<67> cif_false
	%cres_393 = sub %cres_190 1
	%cres_398 = cd ( %cres_393 %argVal_2 %argVal_4 %argVal_6 %varDef_620 )
	%cres_405 = cd ( %cres_393 %argVal_6 %argVal_2 %argVal_4 %cres_398 )
	%cnewVal_408 = inc %cres_405
	store %cnewVal_408 %varAddr_812
	br <68>

<68> cif_merge
	%varDef_650 = load %varAddr_812
	%cres_197 = sub %cres_81 1
	%cres_417 = eq %cres_197 1
	br %cres_417 <71> <72>

<71> cif_true
	%cnewVal_420 = inc %varDef_650
	store %cnewVal_420 %varAddr_810
	br <73>

<72> cif_false
	%cres_422 = sub %cres_197 1
	%cres_427 = cd ( %cres_422 %argVal_4 %argVal_6 %argVal_2 %varDef_650 )
	%cres_434 = cd ( %cres_422 %argVal_2 %argVal_4 %argVal_6 %cres_427 )
	%cnewVal_437 = inc %cres_434
	store %cnewVal_437 %varAddr_810
	br <73>

<73> cif_merge
	%varDef_662 = load %varAddr_810
	%cnewVal_205 = inc %varDef_662
	store %cnewVal_205 %varAddr_814
	br <33>

<33> cif_merge
	%varDef_666 = load %varAddr_814
	%cnewVal_89 = inc %varDef_666
	store %cnewVal_89 %varAddr_816
	br <13>

<13> cif_merge
	%varDef_682 = load %varAddr_816
	%newVal_31 = inc %varDef_682
	store %newVal_31 %varAddr_807
	br <3>

<3> if_merge
	%varDef_722 = load %varAddr_807
	ret %varDef_722

}

define main ( ) {
<0> entry
	%varAddr_363 = alloca 4
	%varAddr_362 = alloca 4
	%varAddr_361 = alloca 4
	%varAddr_360 = alloca 4
	%varAddr_359 = alloca 4
	%varAddr_358 = alloca 4
	%varAddr_357 = alloca 4
	%res_4 = getInt ( )
	br <2>

<2> centry
	%cres_19 = eq %res_4 1
	br %cres_19 <3> <4>

<3> cif_true
	store 1 %varAddr_362
	br <5>

<4> cif_false
	%cres_24 = sub %res_4 1
	%cres_48 = eq %cres_24 1
	br %cres_48 <8> <9>

<8> cif_true
	store 1 %varAddr_363
	br <10>

<9> cif_false
	%cres_53 = sub %cres_24 1
	%cres_106 = eq %cres_53 1
	br %cres_106 <18> <19>

<18> cif_true
	store 1 %varAddr_357
	br <20>

<19> cif_false
	%cres_111 = sub %cres_53 1
	%cres_116 = cd ( %cres_111 $str_0 $str_2 $str_1 0 )
	%cres_123 = cd ( %cres_111 $str_1 $str_0 $str_2 %cres_116 )
	%cnewVal_126 = inc %cres_123
	store %cnewVal_126 %varAddr_357
	br <20>

<20> cif_merge
	%varDef_240 = load %varAddr_357
	%cres_60 = sub %cres_24 1
	%cres_135 = eq %cres_60 1
	br %cres_135 <23> <24>

<23> cif_true
	%cnewVal_138 = inc %varDef_240
	store %cnewVal_138 %varAddr_361
	br <25>

<24> cif_false
	%cres_140 = sub %cres_60 1
	%cres_145 = cd ( %cres_140 $str_2 $str_1 $str_0 %varDef_240 )
	%cres_152 = cd ( %cres_140 $str_0 $str_2 $str_1 %cres_145 )
	%cnewVal_155 = inc %cres_152
	store %cnewVal_155 %varAddr_361
	br <25>

<25> cif_merge
	%varDef_252 = load %varAddr_361
	%cnewVal_68 = inc %varDef_252
	store %cnewVal_68 %varAddr_363
	br <10>

<10> cif_merge
	%varDef_256 = load %varAddr_363
	%cres_31 = sub %res_4 1
	%cres_77 = eq %cres_31 1
	br %cres_77 <13> <14>

<13> cif_true
	%cnewVal_80 = inc %varDef_256
	store %cnewVal_80 %varAddr_360
	br <15>

<14> cif_false
	%cres_82 = sub %cres_31 1
	%cres_164 = eq %cres_82 1
	br %cres_164 <28> <29>

<28> cif_true
	%cnewVal_167 = inc %varDef_256
	store %cnewVal_167 %varAddr_358
	br <30>

<29> cif_false
	%cres_169 = sub %cres_82 1
	%cres_174 = cd ( %cres_169 $str_1 $str_0 $str_2 %varDef_256 )
	%cres_181 = cd ( %cres_169 $str_2 $str_1 $str_0 %cres_174 )
	%cnewVal_184 = inc %cres_181
	store %cnewVal_184 %varAddr_358
	br <30>

<30> cif_merge
	%varDef_286 = load %varAddr_358
	%cres_89 = sub %cres_31 1
	%cres_193 = eq %cres_89 1
	br %cres_193 <33> <34>

<33> cif_true
	%cnewVal_196 = inc %varDef_286
	store %cnewVal_196 %varAddr_359
	br <35>

<34> cif_false
	%cres_198 = sub %cres_89 1
	%cres_203 = cd ( %cres_198 $str_0 $str_2 $str_1 %varDef_286 )
	%cres_210 = cd ( %cres_198 $str_1 $str_0 $str_2 %cres_203 )
	%cnewVal_213 = inc %cres_210
	store %cnewVal_213 %varAddr_359
	br <35>

<35> cif_merge
	%varDef_298 = load %varAddr_359
	%cnewVal_97 = inc %varDef_298
	store %cnewVal_97 %varAddr_360
	br <15>

<15> cif_merge
	%varDef_302 = load %varAddr_360
	%cnewVal_39 = inc %varDef_302
	store %cnewVal_39 %varAddr_362
	br <5>

<5> cif_merge
	%varDef_318 = load %varAddr_362
	__printlnInt ( %varDef_318 )
	ret 0

}

