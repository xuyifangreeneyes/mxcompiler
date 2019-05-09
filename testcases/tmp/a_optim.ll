@N

@head

@targetx

@targety

@x

@y

@xlist

@ylist

@tail

@ok

@now

@dx

@dy

@step

@i

@j

$str_0 "no solution!\n"

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
	%arrayPtr_0 = malloc 96008
	store 12000 %arrayPtr_0
	%arrayBase_3 = add %arrayPtr_0 8
	%arrayPtr_4 = malloc 96008
	store 12000 %arrayPtr_4
	%arrayBase_7 = add %arrayPtr_4 8
	%arrayPtr_8 = malloc 72
	store 8 %arrayPtr_8
	%arrayBase_11 = add %arrayPtr_8 8
	%arrayPtr_12 = malloc 80
	store 9 %arrayPtr_12
	%arrayBase_15 = add %arrayPtr_12 8
	store %arrayBase_11 @dx
	store %arrayBase_3 @xlist
	store %arrayBase_7 @ylist
	store %arrayBase_15 @dy
	ret 

}

define origin ( %argVal_0 ) {
<0> entry
	%tmp_45 = load @j
	%memberLength_4 = mul %argVal_0 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store %argVal_0 %arrayPtr_3
	%arrayBase_6 = add %arrayPtr_3 8
	mov %varDef_62 %tmp_45
	mov %varDef_61 0
	br <1>

<1> for_cond
	%res_9 = lt %varDef_61 %argVal_0
	br %res_9 <2> <4>

<2> for_body
	%memberLength_12 = mul %argVal_0 8
	%arrayLength_13 = add %memberLength_12 8
	%arrayPtr_11 = malloc %arrayLength_13
	store %argVal_0 %arrayPtr_11
	%arrayBase_14 = add %arrayPtr_11 8
	%offset_17 = mul %varDef_61 8
	%elementAddr_18 = add %arrayBase_6 %offset_17
	store %arrayBase_14 %elementAddr_18
	mov %varDef_64 0
	br <5>

<5> for_cond
	%res_21 = lt %varDef_64 %argVal_0
	br %res_21 <6> <3>

<6> for_body
	%offset_24 = mul %varDef_61 8
	%elementAddr_25 = add %arrayBase_6 %offset_24
	%arrayBase_26 = load %elementAddr_25
	%offset_28 = mul %varDef_64 8
	%elementAddr_29 = add %arrayBase_26 %offset_28
	store 0 %elementAddr_29
	%newVal_32 = inc %varDef_64
	mov %varDef_64 %newVal_32
	br <5>

<3> for_step
	%newVal_35 = inc %varDef_61
	mov %varDef_61 %newVal_35
	mov %varDef_62 %varDef_64
	br <1>

<4> for_end
	store 0 @tail
	store %varDef_61 @i
	store 0 @head
	store %arrayBase_6 @step
	store %varDef_62 @j
	ret 

}

define check ( %argVal_0 ) {
<0> entry
	%tmp_10 = load @N
	%res_5 = lt %argVal_0 %tmp_10
	br %res_5 <4> <2>

<4> lhs_true
	%res_7 = ge %argVal_0 0
	br %res_7 <1> <2>

<1> bool_true
	mov %varDef_15 1
	br <3>

<2> bool_false
	mov %varDef_15 0
	br <3>

<3> bool_merge
	ret %varDef_15

}

define addList ( %argVal_0 %argVal_2 ) {
<0> entry
	%tmp_83 = load @step
	%tmp_82 = load @targetx
	%tmp_81 = load @ylist
	%tmp_80 = load @xlist
	%tmp_79 = load @ok
	%tmp_78 = load @targety
	%tmp_77 = load @tail
	%tmp_76 = load @N
	%tmp_75 = load @now
	br <9>

<9> centry
	%cres_53 = lt %argVal_0 %tmp_76
	br %cres_53 <10> <12>

<10> clhs_true
	%cres_55 = ge %argVal_0 0
	br %cres_55 <11> <12>

<11> cbool_true
	mov %varDef_100 1
	br <13>

<12> cbool_false
	mov %varDef_100 0
	br <13>

<13> cbool_merge
	br %varDef_100 <4> <20>

<20> parallel_copy
	mov %varDef_112 %tmp_77
	mov %varDef_113 %tmp_79
	br <2>

<4> lhs_true
	%cres_62 = lt %argVal_2 %tmp_76
	br %cres_62 <16> <18>

<16> clhs_true
	%cres_64 = ge %argVal_2 0
	br %cres_64 <17> <18>

<17> cbool_true
	mov %varDef_105 1
	br <19>

<18> cbool_false
	mov %varDef_105 0
	br <19>

<19> cbool_merge
	br %varDef_105 <3> <23>

<23> parallel_copy
	mov %varDef_113 %tmp_79
	mov %varDef_112 %tmp_77
	br <2>

<3> lhs_true
	%offset_10 = mul %argVal_0 8
	%elementAddr_11 = add %tmp_83 %offset_10
	%arrayBase_12 = load %elementAddr_11
	%offset_14 = mul %argVal_2 8
	%elementAddr_15 = add %arrayBase_12 %offset_14
	%elementVal_16 = load %elementAddr_15
	%res_18 = eq %elementVal_16 -1
	br %res_18 <1> <21>

<21> parallel_copy
	mov %varDef_112 %tmp_77
	mov %varDef_113 %tmp_79
	br <2>

<1> if_true
	%newVal_21 = inc %tmp_77
	%offset_25 = mul %newVal_21 8
	%elementAddr_26 = add %tmp_80 %offset_25
	store %argVal_0 %elementAddr_26
	%elementAddr_31 = add %tmp_81 %offset_25
	store %argVal_2 %elementAddr_31
	%res_33 = add %tmp_75 1
	%offset_36 = mul %argVal_0 8
	%elementAddr_37 = add %tmp_83 %offset_36
	%arrayBase_38 = load %elementAddr_37
	%offset_40 = mul %argVal_2 8
	%elementAddr_41 = add %arrayBase_38 %offset_40
	store %res_33 %elementAddr_41
	%res_44 = eq %argVal_0 %tmp_82
	br %res_44 <7> <22>

<22> parallel_copy
	mov %varDef_112 %newVal_21
	mov %varDef_113 %tmp_79
	br <2>

<7> lhs_true
	%res_47 = eq %argVal_2 %tmp_78
	br %res_47 <5> <24>

<24> parallel_copy
	mov %varDef_112 %newVal_21
	mov %varDef_113 %tmp_79
	br <2>

<5> if_true
	mov %varDef_113 1
	mov %varDef_112 %newVal_21
	br <2>

<2> if_merge
	store %varDef_112 @tail
	store %varDef_113 @ok
	ret 

}

define main ( ) {
<0> entry
	%tmp_248 = load @y
	%tmp_247 = load @x
	%tmp_246 = load @i
	%tmp_243 = load @now
	%tmp_242 = load @j
	%tmp_240 = load @head
	%tmp_237 = load @ok
	%tmp_236 = load @tail
	br <22>

<22> centry
	%carrayPtr_140 = malloc 96008
	store 12000 %carrayPtr_140
	%carrayBase_141 = add %carrayPtr_140 8
	%carrayPtr_144 = malloc 96008
	store 12000 %carrayPtr_144
	%carrayBase_145 = add %carrayPtr_144 8
	%carrayPtr_148 = malloc 72
	store 8 %carrayPtr_148
	%carrayBase_149 = add %carrayPtr_148 8
	%carrayPtr_152 = malloc 80
	store 9 %carrayPtr_152
	%carrayBase_153 = add %carrayPtr_152 8
	store %tmp_236 @tail
	store %tmp_240 @head
	store %tmp_242 @j
	store %tmp_246 @i
	origin ( 106 )
	%tmp_256 = load @j
	%tmp_254 = load @step
	%tmp_253 = load @head
	%tmp_251 = load @tail
	%res_0 = getInt ( )
	%res_2 = sub %res_0 1
	mov %varDef_304 0
	mov %varDef_303 %tmp_256
	br <1>

<1> for_cond
	%res_6 = lt %varDef_304 %res_0
	br %res_6 <2> <4>

<2> for_body
	mov %varDef_306 0
	br <5>

<5> for_cond
	%res_9 = lt %varDef_306 %res_0
	br %res_9 <6> <3>

<6> for_body
	%offset_13 = mul %varDef_304 8
	%elementAddr_14 = add %tmp_254 %offset_13
	%arrayBase_15 = load %elementAddr_14
	%offset_17 = mul %varDef_306 8
	%elementAddr_18 = add %arrayBase_15 %offset_17
	store -1 %elementAddr_18
	%newVal_21 = inc %varDef_306
	mov %varDef_306 %newVal_21
	br <5>

<3> for_step
	%newVal_24 = inc %varDef_304
	mov %varDef_304 %newVal_24
	mov %varDef_303 %varDef_306
	br <1>

<4> for_end
	%elementAddr_28 = add %carrayBase_149 0
	store -2 %elementAddr_28
	%elementAddr_32 = add %carrayBase_153 0
	store -1 %elementAddr_32
	%elementAddr_36 = add %carrayBase_149 8
	store -2 %elementAddr_36
	%elementAddr_39 = add %carrayBase_153 8
	store 1 %elementAddr_39
	%elementAddr_42 = add %carrayBase_149 16
	store 2 %elementAddr_42
	%elementAddr_46 = add %carrayBase_153 16
	store -1 %elementAddr_46
	%elementAddr_49 = add %carrayBase_149 24
	store 2 %elementAddr_49
	%elementAddr_52 = add %carrayBase_153 24
	store 1 %elementAddr_52
	%elementAddr_56 = add %carrayBase_149 32
	store -1 %elementAddr_56
	%elementAddr_60 = add %carrayBase_153 32
	store -2 %elementAddr_60
	%elementAddr_64 = add %carrayBase_149 40
	store -1 %elementAddr_64
	%elementAddr_67 = add %carrayBase_153 40
	store 2 %elementAddr_67
	%elementAddr_70 = add %carrayBase_149 48
	store 1 %elementAddr_70
	%elementAddr_74 = add %carrayBase_153 48
	store -2 %elementAddr_74
	%elementAddr_77 = add %carrayBase_149 56
	store 1 %elementAddr_77
	%elementAddr_80 = add %carrayBase_153 56
	store 2 %elementAddr_80
	mov %varDef_323 %tmp_248
	mov %varDef_318 %tmp_237
	mov %varDef_322 %tmp_247
	mov %varDef_317 %tmp_251
	mov %varDef_319 %tmp_253
	mov %varDef_321 %tmp_243
	mov %varDef_320 %varDef_303
	br <9>

<9> while_cond
	%res_83 = le %varDef_319 %varDef_317
	br %res_83 <10> <45>

<45> parallel_copy
	mov %varDef_370 %varDef_320
	mov %varDef_371 %varDef_321
	mov %varDef_372 %varDef_322
	mov %varDef_373 %varDef_323
	mov %varDef_368 %varDef_317
	mov %varDef_369 %varDef_318
	br <11>

<10> while_body
	%offset_86 = mul %varDef_319 8
	%elementAddr_87 = add %carrayBase_141 %offset_86
	%elementVal_88 = load %elementAddr_87
	%elementAddr_92 = add %carrayBase_145 %offset_86
	%elementVal_93 = load %elementAddr_92
	%offset_96 = mul %elementVal_88 8
	%elementAddr_97 = add %tmp_254 %offset_96
	%arrayBase_98 = load %elementAddr_97
	%offset_100 = mul %elementVal_93 8
	%elementAddr_101 = add %arrayBase_98 %offset_100
	%elementVal_102 = load %elementAddr_101
	mov %varDef_337 %varDef_318
	mov %varDef_338 0
	mov %varDef_336 %varDef_317
	br <12>

<12> for_cond
	%res_104 = lt %varDef_338 8
	br %res_104 <13> <15>

<13> for_body
	%offset_108 = mul %varDef_338 8
	%elementAddr_109 = add %carrayBase_149 %offset_108
	%elementVal_110 = load %elementAddr_109
	%res_111 = add %elementVal_88 %elementVal_110
	%elementAddr_116 = add %carrayBase_153 %offset_108
	%elementVal_117 = load %elementAddr_116
	%res_118 = add %elementVal_93 %elementVal_117
	%cres_205 = lt %res_111 %res_0
	br %cres_205 <34> <36>

<34> clhs_true
	%cres_207 = ge %res_111 0
	br %cres_207 <35> <36>

<35> cbool_true
	mov %varDef_344 1
	br <37>

<36> cbool_false
	mov %varDef_344 0
	br <37>

<37> cbool_merge
	br %varDef_344 <25> <48>

<48> parallel_copy
	mov %varDef_355 %varDef_335
	mov %varDef_353 %varDef_333
	mov %varDef_354 %varDef_334
	mov %varDef_356 %varDef_336
	mov %varDef_357 %varDef_337
	br <14>

<25> clhs_true
	%cres_214 = lt %res_118 %res_0
	br %cres_214 <40> <42>

<40> clhs_true
	%cres_216 = ge %res_118 0
	br %cres_216 <41> <42>

<41> cbool_true
	mov %varDef_349 1
	br <43>

<42> cbool_false
	mov %varDef_349 0
	br <43>

<43> cbool_merge
	br %varDef_349 <26> <49>

<49> parallel_copy
	mov %varDef_356 %varDef_336
	mov %varDef_353 %varDef_349
	mov %varDef_354 %varDef_349
	mov %varDef_357 %varDef_337
	mov %varDef_355 %res_118
	br <14>

<26> clhs_true
	%coffset_162 = mul %res_111 8
	%celementAddr_163 = add %tmp_254 %coffset_162
	%carrayBase_164 = load %celementAddr_163
	%coffset_166 = mul %res_118 8
	%celementAddr_167 = add %carrayBase_164 %coffset_166
	%celementVal_168 = load %celementAddr_167
	%cres_170 = eq %celementVal_168 -1
	br %cres_170 <27> <47>

<47> parallel_copy
	mov %varDef_355 %res_118
	mov %varDef_357 %varDef_337
	mov %varDef_356 %varDef_336
	mov %varDef_353 %varDef_349
	mov %varDef_354 %varDef_349
	br <14>

<27> cif_true
	%cnewVal_173 = inc %varDef_336
	%coffset_177 = mul %cnewVal_173 8
	%celementAddr_178 = add %carrayBase_141 %coffset_177
	store %res_111 %celementAddr_178
	%celementAddr_183 = add %carrayBase_145 %coffset_177
	store %res_118 %celementAddr_183
	%cres_185 = add %elementVal_102 1
	%coffset_188 = mul %res_111 8
	%celementAddr_189 = add %tmp_254 %coffset_188
	%carrayBase_190 = load %celementAddr_189
	%coffset_192 = mul %res_118 8
	%celementAddr_193 = add %carrayBase_190 %coffset_192
	store %cres_185 %celementAddr_193
	%cres_196 = eq %res_111 %res_2
	br %cres_196 <28> <50>

<50> parallel_copy
	mov %varDef_356 %cnewVal_173
	mov %varDef_354 %varDef_349
	mov %varDef_353 %varDef_349
	mov %varDef_357 %varDef_337
	mov %varDef_355 %res_118
	br <14>

<28> clhs_true
	%cres_199 = eq %res_118 %res_2
	br %cres_199 <29> <46>

<46> parallel_copy
	mov %varDef_354 %varDef_349
	mov %varDef_357 %varDef_337
	mov %varDef_353 %varDef_349
	mov %varDef_355 %res_118
	mov %varDef_356 %cnewVal_173
	br <14>

<29> cif_true
	mov %varDef_353 %varDef_349
	mov %varDef_356 %cnewVal_173
	mov %varDef_355 %res_118
	mov %varDef_357 1
	mov %varDef_354 %varDef_349
	br <14>

<14> for_step
	%newVal_121 = inc %varDef_338
	mov %varDef_329 %res_111
	mov %varDef_328 %res_118
	mov %varDef_336 %varDef_356
	mov %varDef_332 %res_111
	mov %varDef_335 %varDef_355
	mov %varDef_331 %varDef_344
	mov %varDef_333 %varDef_353
	mov %varDef_334 %varDef_354
	mov %varDef_337 %varDef_357
	mov %varDef_338 %newVal_121
	mov %varDef_330 %varDef_344
	br <12>

<15> for_end
	%res_123 = eq %varDef_337 1
	br %res_123 <44> <17>

<44> parallel_copy
	mov %varDef_368 %varDef_336
	mov %varDef_371 %elementVal_102
	mov %varDef_373 %elementVal_93
	mov %varDef_370 %varDef_338
	mov %varDef_369 %varDef_337
	mov %varDef_372 %elementVal_88
	br <11>

<17> if_merge
	%newVal_126 = inc %varDef_319
	mov %varDef_323 %elementVal_93
	mov %varDef_318 %varDef_337
	mov %varDef_317 %varDef_336
	mov %varDef_321 %elementVal_102
	mov %varDef_322 %elementVal_88
	mov %varDef_319 %newVal_126
	mov %varDef_320 %varDef_338
	br <9>

<11> while_end
	%res_128 = eq %varDef_369 1
	br %res_128 <18> <19>

<18> if_true
	%offset_131 = mul %res_2 8
	%elementAddr_132 = add %tmp_254 %offset_131
	%arrayBase_133 = load %elementAddr_132
	%elementAddr_136 = add %arrayBase_133 %offset_131
	%elementVal_137 = load %elementAddr_136
	__printlnInt ( %elementVal_137 )
	br <20>

<19> if_false
	print ( $str_0 )
	br <20>

<20> if_merge
	store %carrayBase_149 @dx
	store %res_2 @targety
	store %varDef_368 @tail
	store %varDef_369 @ok
	store %carrayBase_141 @xlist
	store %carrayBase_145 @ylist
	store %varDef_319 @head
	store %varDef_370 @j
	store %varDef_371 @now
	store %res_0 @N
	store %res_2 @targetx
	store %varDef_304 @i
	store %varDef_372 @x
	store %varDef_373 @y
	store %carrayBase_153 @dy
	ret 0

}

