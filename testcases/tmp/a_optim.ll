@N

@head

@startx

@starty

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

define _stringLength

define _stringSubstring

define _stringParseInt

define _stringOrd

define _arraySize

define _stringAdd

define _stringEq

define _stringNeq

define _stringLt

define _stringGt

define _stringLe

define _stringGe

define _globalInit ( ) {
<0> entry
	%arrayPtr_0 = malloc 96008
	store 12000 %arrayPtr_0
	%arrayPtr_3 = malloc 96008
	store 12000 %arrayPtr_3
	%arrayPtr_6 = malloc 72
	store 8 %arrayPtr_6
	%arrayPtr_9 = malloc 80
	store 9 %arrayPtr_9
	store %arrayPtr_6 @dx
	store %arrayPtr_9 @dy
	store %arrayPtr_3 @ylist
	store %arrayPtr_0 @xlist
	ret 

}

define origin ( %argVal_0 ) {
<0> entry
	%varAddr_70 = alloca 4
	%varAddr_69 = alloca 4
	%varAddr_68 = alloca 4
	%tmp_45 = load @j
	%memberLength_4 = mul %argVal_0 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store %argVal_0 %arrayPtr_3
	store 0 %varAddr_69
	store %tmp_45 %varAddr_70
	br <1>

<1> for_cond
	%varDef_62 = load %varAddr_69
	%varDef_63 = load %varAddr_70
	%res_8 = lt %varDef_62 %argVal_0
	br %res_8 <2> <4>

<2> for_body
	%memberLength_11 = mul %argVal_0 8
	%arrayLength_12 = add %memberLength_11 8
	%arrayPtr_10 = malloc %arrayLength_12
	store %argVal_0 %arrayPtr_10
	%arrayBase_14 = add %arrayPtr_3 8
	%offset_16 = mul %varDef_62 8
	%elementAddr_17 = add %arrayBase_14 %offset_16
	store %arrayPtr_10 %elementAddr_17
	store 0 %varAddr_68
	br <5>

<5> for_cond
	%varDef_65 = load %varAddr_68
	%res_20 = lt %varDef_65 %argVal_0
	br %res_20 <6> <3>

<6> for_body
	%arrayBase_22 = add %arrayPtr_3 8
	%offset_24 = mul %varDef_62 8
	%elementAddr_25 = add %arrayBase_22 %offset_24
	%arrayPtr_26 = load %elementAddr_25
	%arrayBase_27 = add %arrayPtr_26 8
	%offset_29 = mul %varDef_65 8
	%elementAddr_30 = add %arrayBase_27 %offset_29
	store 0 %elementAddr_30
	%newVal_33 = inc %varDef_65
	store %newVal_33 %varAddr_68
	br <5>

<3> for_step
	%newVal_36 = inc %varDef_62
	store %newVal_36 %varAddr_69
	store %varDef_65 %varAddr_70
	br <1>

<4> for_end
	store %arrayPtr_3 @step
	store 0 @tail
	store %varDef_62 @i
	store %varDef_63 @j
	store 0 @head
	ret 

}

define check ( %argVal_0 ) {
<0> entry
	%varAddr_17 = alloca 4
	%tmp_10 = load @N
	%res_5 = lt %argVal_0 %tmp_10
	br %res_5 <4> <2>

<4> lhs_true
	%res_7 = ge %argVal_0 0
	br %res_7 <1> <2>

<1> bool_true
	store 1 %varAddr_17
	br <3>

<2> bool_false
	store 0 %varAddr_17
	br <3>

<3> bool_merge
	%varDef_16 = load %varAddr_17
	store %tmp_10 @N
	ret %varDef_16

}

define addList ( %argVal_0 %argVal_2 ) {
<0> entry
	%varAddr_130 = alloca 4
	%varAddr_129 = alloca 4
	%varAddr_128 = alloca 4
	%varAddr_127 = alloca 4
	%tmp_89 = load @now
	%tmp_88 = load @targetx
	%tmp_87 = load @xlist
	%tmp_86 = load @targety
	%tmp_85 = load @N
	%tmp_84 = load @ylist
	%tmp_83 = load @tail
	%tmp_82 = load @ok
	%tmp_81 = load @step
	br <9>

<9> centry
	%cres_59 = lt %argVal_0 %tmp_85
	br %cres_59 <10> <12>

<10> clhs_true
	%cres_61 = ge %argVal_0 0
	br %cres_61 <11> <12>

<11> cbool_true
	store 1 %varAddr_128
	br <13>

<12> cbool_false
	store 0 %varAddr_128
	br <13>

<13> cbool_merge
	%varDef_113 = load %varAddr_128
	br %varDef_113 <4> <20>

<20> parallel_copy
	store %tmp_82 %varAddr_129
	store %tmp_83 %varAddr_130
	br <2>

<4> lhs_true
	%cres_68 = lt %argVal_2 %tmp_85
	br %cres_68 <16> <18>

<16> clhs_true
	%cres_70 = ge %argVal_2 0
	br %cres_70 <17> <18>

<17> cbool_true
	store 1 %varAddr_127
	br <19>

<18> cbool_false
	store 0 %varAddr_127
	br <19>

<19> cbool_merge
	%varDef_118 = load %varAddr_127
	br %varDef_118 <3> <21>

<21> parallel_copy
	store %tmp_82 %varAddr_129
	store %tmp_83 %varAddr_130
	br <2>

<3> lhs_true
	%arrayBase_9 = add %tmp_81 8
	%offset_11 = mul %argVal_0 8
	%elementAddr_12 = add %arrayBase_9 %offset_11
	%arrayPtr_13 = load %elementAddr_12
	%arrayBase_14 = add %arrayPtr_13 8
	%offset_16 = mul %argVal_2 8
	%elementAddr_17 = add %arrayBase_14 %offset_16
	%elementVal_18 = load %elementAddr_17
	%res_20 = eq %elementVal_18 -1
	br %res_20 <1> <23>

<23> parallel_copy
	store %tmp_82 %varAddr_129
	store %tmp_83 %varAddr_130
	br <2>

<1> if_true
	%newVal_23 = inc %tmp_83
	%arrayBase_26 = add %tmp_87 8
	%offset_28 = mul %newVal_23 8
	%elementAddr_29 = add %arrayBase_26 %offset_28
	store %argVal_0 %elementAddr_29
	%arrayBase_32 = add %tmp_84 8
	%elementAddr_35 = add %arrayBase_32 %offset_28
	store %argVal_2 %elementAddr_35
	%res_37 = add %tmp_89 1
	%arrayBase_39 = add %tmp_81 8
	%offset_41 = mul %argVal_0 8
	%elementAddr_42 = add %arrayBase_39 %offset_41
	%arrayPtr_43 = load %elementAddr_42
	%arrayBase_44 = add %arrayPtr_43 8
	%offset_46 = mul %argVal_2 8
	%elementAddr_47 = add %arrayBase_44 %offset_46
	store %res_37 %elementAddr_47
	%res_50 = eq %argVal_0 %tmp_88
	br %res_50 <7> <24>

<24> parallel_copy
	store %tmp_82 %varAddr_129
	store %newVal_23 %varAddr_130
	br <2>

<7> lhs_true
	%res_53 = eq %argVal_2 %tmp_86
	br %res_53 <5> <22>

<22> parallel_copy
	store %tmp_82 %varAddr_129
	store %newVal_23 %varAddr_130
	br <2>

<5> if_true
	store 1 %varAddr_129
	store %newVal_23 %varAddr_130
	br <2>

<2> if_merge
	%varDef_125 = load %varAddr_129
	%varDef_126 = load %varAddr_130
	store %tmp_81 @step
	store %varDef_125 @ok
	store %varDef_126 @tail
	store %tmp_84 @ylist
	store %tmp_85 @N
	store %tmp_86 @targety
	store %tmp_87 @xlist
	store %tmp_88 @targetx
	store %tmp_89 @now
	ret 

}

define main ( ) {
<0> entry
	%varAddr_359 = alloca 4
	%varAddr_358 = alloca 4
	%varAddr_357 = alloca 4
	%varAddr_356 = alloca 4
	%varAddr_355 = alloca 4
	%varAddr_354 = alloca 4
	%varAddr_353 = alloca 4
	%varAddr_352 = alloca 4
	%varAddr_351 = alloca 4
	%varAddr_350 = alloca 4
	%varAddr_349 = alloca 4
	%varAddr_348 = alloca 4
	%varAddr_347 = alloca 4
	%varAddr_346 = alloca 4
	%varAddr_345 = alloca 4
	%varAddr_344 = alloca 4
	%varAddr_343 = alloca 4
	%varAddr_342 = alloca 4
	%varAddr_341 = alloca 4
	%varAddr_340 = alloca 4
	%varAddr_339 = alloca 4
	%varAddr_338 = alloca 4
	%varAddr_337 = alloca 4
	%varAddr_336 = alloca 4
	%varAddr_335 = alloca 4
	%varAddr_334 = alloca 4
	%varAddr_333 = alloca 4
	%varAddr_332 = alloca 4
	%varAddr_331 = alloca 4
	%varAddr_330 = alloca 4
	%varAddr_329 = alloca 4
	%varAddr_328 = alloca 4
	%varAddr_327 = alloca 4
	%varAddr_326 = alloca 4
	%varAddr_325 = alloca 4
	%varAddr_324 = alloca 4
	%varAddr_323 = alloca 4
	%varAddr_322 = alloca 4
	%tmp_195 = load @x
	%tmp_194 = load @j
	%tmp_191 = load @y
	%tmp_190 = load @ylist
	%tmp_189 = load @tail
	%tmp_188 = load @ok
	%tmp_187 = load @dx
	%tmp_186 = load @now
	%tmp_185 = load @xlist
	%tmp_184 = load @head
	%tmp_183 = load @i
	%tmp_182 = load @dy
	%tmp_181 = load @step
	store %tmp_181 @step
	store %tmp_183 @i
	store %tmp_184 @head
	store %tmp_189 @tail
	store %tmp_194 @j
	origin ( 106 )
	%tmp_206 = load @j
	%tmp_204 = load @tail
	%tmp_202 = load @head
	%tmp_198 = load @step
	%res_0 = getInt ( )
	%res_2 = sub %res_0 1
	store 0 %varAddr_322
	store %tmp_206 %varAddr_323
	br <1>

<1> for_cond
	%varDef_266 = load %varAddr_322
	%varDef_267 = load %varAddr_323
	%res_6 = lt %varDef_266 %res_0
	br %res_6 <2> <4>

<2> for_body
	store 0 %varAddr_347
	br <5>

<5> for_cond
	%varDef_269 = load %varAddr_347
	%res_9 = lt %varDef_269 %res_0
	br %res_9 <6> <3>

<6> for_body
	%arrayBase_12 = add %tmp_198 8
	%offset_14 = mul %varDef_266 8
	%elementAddr_15 = add %arrayBase_12 %offset_14
	%arrayPtr_16 = load %elementAddr_15
	%arrayBase_17 = add %arrayPtr_16 8
	%offset_19 = mul %varDef_269 8
	%elementAddr_20 = add %arrayBase_17 %offset_19
	store -1 %elementAddr_20
	%newVal_23 = inc %varDef_269
	store %newVal_23 %varAddr_347
	br <5>

<3> for_step
	%newVal_26 = inc %varDef_266
	store %newVal_26 %varAddr_322
	store %varDef_269 %varAddr_323
	br <1>

<4> for_end
	%arrayBase_29 = add %tmp_187 8
	%elementAddr_31 = add %arrayBase_29 0
	store -2 %elementAddr_31
	%arrayBase_34 = add %tmp_182 8
	%elementAddr_36 = add %arrayBase_34 0
	store -1 %elementAddr_36
	%elementAddr_41 = add %arrayBase_29 8
	store -2 %elementAddr_41
	%elementAddr_45 = add %arrayBase_34 8
	store 1 %elementAddr_45
	%elementAddr_49 = add %arrayBase_29 16
	store 2 %elementAddr_49
	%elementAddr_54 = add %arrayBase_34 16
	store -1 %elementAddr_54
	%elementAddr_58 = add %arrayBase_29 24
	store 2 %elementAddr_58
	%elementAddr_62 = add %arrayBase_34 24
	store 1 %elementAddr_62
	%elementAddr_67 = add %arrayBase_29 32
	store -1 %elementAddr_67
	%elementAddr_72 = add %arrayBase_34 32
	store -2 %elementAddr_72
	%elementAddr_77 = add %arrayBase_29 40
	store -1 %elementAddr_77
	%elementAddr_81 = add %arrayBase_34 40
	store 2 %elementAddr_81
	%elementAddr_85 = add %arrayBase_29 48
	store 1 %elementAddr_85
	%elementAddr_90 = add %arrayBase_34 48
	store -2 %elementAddr_90
	%elementAddr_94 = add %arrayBase_29 56
	store 1 %elementAddr_94
	%elementAddr_98 = add %arrayBase_34 56
	store 2 %elementAddr_98
	store %tmp_198 %varAddr_324
	store %tmp_202 %varAddr_325
	store %tmp_185 %varAddr_326
	store %tmp_186 %varAddr_327
	store %tmp_188 %varAddr_328
	store %tmp_204 %varAddr_329
	store %tmp_190 %varAddr_330
	store %tmp_191 %varAddr_331
	store %res_0 %varAddr_332
	store %res_2 %varAddr_333
	store %varDef_267 %varAddr_334
	store %tmp_195 %varAddr_335
	store %res_2 %varAddr_336
	br <9>

<9> while_cond
	%varDef_272 = load %varAddr_324
	%varDef_273 = load %varAddr_325
	%varDef_274 = load %varAddr_326
	%varDef_275 = load %varAddr_327
	%varDef_276 = load %varAddr_328
	%varDef_277 = load %varAddr_329
	%varDef_278 = load %varAddr_330
	%varDef_279 = load %varAddr_331
	%varDef_280 = load %varAddr_332
	%varDef_281 = load %varAddr_333
	%varDef_282 = load %varAddr_334
	%varDef_283 = load %varAddr_335
	%varDef_284 = load %varAddr_336
	%res_101 = le %varDef_273 %varDef_277
	br %res_101 <10> <21>

<21> parallel_copy
	store %varDef_272 %varAddr_348
	store %varDef_274 %varAddr_349
	store %varDef_275 %varAddr_350
	store %varDef_276 %varAddr_351
	store %varDef_277 %varAddr_352
	store %varDef_278 %varAddr_353
	store %varDef_279 %varAddr_354
	store %varDef_280 %varAddr_355
	store %varDef_281 %varAddr_356
	store %varDef_282 %varAddr_357
	store %varDef_283 %varAddr_358
	store %varDef_284 %varAddr_359
	br <11>

<10> while_body
	%arrayBase_103 = add %varDef_274 8
	%offset_105 = mul %varDef_273 8
	%elementAddr_106 = add %arrayBase_103 %offset_105
	%elementVal_107 = load %elementAddr_106
	%arrayBase_109 = add %varDef_278 8
	%elementAddr_112 = add %arrayBase_109 %offset_105
	%elementVal_113 = load %elementAddr_112
	%arrayBase_115 = add %varDef_272 8
	%offset_117 = mul %elementVal_107 8
	%elementAddr_118 = add %arrayBase_115 %offset_117
	%arrayPtr_119 = load %elementAddr_118
	%arrayBase_120 = add %arrayPtr_119 8
	%offset_122 = mul %elementVal_113 8
	%elementAddr_123 = add %arrayBase_120 %offset_122
	%elementVal_124 = load %elementAddr_123
	store %varDef_272 %varAddr_337
	store %varDef_274 %varAddr_338
	store %elementVal_124 %varAddr_339
	store %varDef_276 %varAddr_340
	store %varDef_277 %varAddr_341
	store %varDef_278 %varAddr_342
	store %varDef_280 %varAddr_343
	store %varDef_281 %varAddr_344
	store 0 %varAddr_345
	store %varDef_284 %varAddr_346
	br <12>

<12> for_cond
	%varDef_289 = load %varAddr_337
	%varDef_290 = load %varAddr_338
	%varDef_291 = load %varAddr_339
	%varDef_292 = load %varAddr_340
	%varDef_293 = load %varAddr_341
	%varDef_294 = load %varAddr_342
	%varDef_295 = load %varAddr_343
	%varDef_296 = load %varAddr_344
	%varDef_297 = load %varAddr_345
	%varDef_298 = load %varAddr_346
	%res_126 = lt %varDef_297 8
	br %res_126 <13> <15>

<13> for_body
	%arrayBase_129 = add %tmp_187 8
	%offset_131 = mul %varDef_297 8
	%elementAddr_132 = add %arrayBase_129 %offset_131
	%elementVal_133 = load %elementAddr_132
	%res_134 = add %elementVal_107 %elementVal_133
	%arrayBase_137 = add %tmp_182 8
	%elementAddr_140 = add %arrayBase_137 %offset_131
	%elementVal_141 = load %elementAddr_140
	%res_142 = add %elementVal_113 %elementVal_141
	store %varDef_289 @step
	store %varDef_290 @xlist
	store %varDef_291 @now
	store %varDef_292 @ok
	store %varDef_293 @tail
	store %varDef_294 @ylist
	store %varDef_295 @N
	store %varDef_296 @targety
	store %varDef_298 @targetx
	addList ( %res_134 %res_142 )
	%tmp_224 = load @targetx
	%tmp_222 = load @targety
	%tmp_220 = load @N
	%tmp_218 = load @ylist
	%tmp_216 = load @tail
	%tmp_214 = load @ok
	%tmp_212 = load @now
	%tmp_210 = load @xlist
	%tmp_208 = load @step
	%newVal_145 = inc %varDef_297
	store %tmp_208 %varAddr_337
	store %tmp_210 %varAddr_338
	store %tmp_212 %varAddr_339
	store %tmp_214 %varAddr_340
	store %tmp_216 %varAddr_341
	store %tmp_218 %varAddr_342
	store %tmp_220 %varAddr_343
	store %tmp_222 %varAddr_344
	store %newVal_145 %varAddr_345
	store %tmp_224 %varAddr_346
	br <12>

<15> for_end
	%res_147 = eq %varDef_292 1
	br %res_147 <22> <17>

<22> parallel_copy
	store %varDef_289 %varAddr_348
	store %varDef_290 %varAddr_349
	store %varDef_291 %varAddr_350
	store %varDef_292 %varAddr_351
	store %varDef_293 %varAddr_352
	store %varDef_294 %varAddr_353
	store %elementVal_113 %varAddr_354
	store %varDef_295 %varAddr_355
	store %varDef_296 %varAddr_356
	store %varDef_297 %varAddr_357
	store %elementVal_107 %varAddr_358
	store %varDef_298 %varAddr_359
	br <11>

<17> if_merge
	%newVal_150 = inc %varDef_273
	store %varDef_289 %varAddr_324
	store %newVal_150 %varAddr_325
	store %varDef_290 %varAddr_326
	store %varDef_291 %varAddr_327
	store %varDef_292 %varAddr_328
	store %varDef_293 %varAddr_329
	store %varDef_294 %varAddr_330
	store %elementVal_113 %varAddr_331
	store %varDef_295 %varAddr_332
	store %varDef_296 %varAddr_333
	store %varDef_297 %varAddr_334
	store %elementVal_107 %varAddr_335
	store %varDef_298 %varAddr_336
	br <9>

<11> while_end
	%varDef_310 = load %varAddr_348
	%varDef_311 = load %varAddr_349
	%varDef_312 = load %varAddr_350
	%varDef_313 = load %varAddr_351
	%varDef_314 = load %varAddr_352
	%varDef_315 = load %varAddr_353
	%varDef_316 = load %varAddr_354
	%varDef_317 = load %varAddr_355
	%varDef_318 = load %varAddr_356
	%varDef_319 = load %varAddr_357
	%varDef_320 = load %varAddr_358
	%varDef_321 = load %varAddr_359
	%res_152 = eq %varDef_313 1
	br %res_152 <18> <19>

<18> if_true
	%arrayBase_155 = add %varDef_310 8
	%offset_157 = mul %varDef_321 8
	%elementAddr_158 = add %arrayBase_155 %offset_157
	%arrayPtr_159 = load %elementAddr_158
	%arrayBase_160 = add %arrayPtr_159 8
	%offset_162 = mul %varDef_318 8
	%elementAddr_163 = add %arrayBase_160 %offset_162
	%elementVal_164 = load %elementAddr_163
	%res_153 = toString ( %elementVal_164 )
	println ( %res_153 )
	br <20>

<19> if_false
	print ( $str_0 )
	br <20>

<20> if_merge
	store %varDef_310 @step
	store %tmp_182 @dy
	store %varDef_266 @i
	store %varDef_273 @head
	store %varDef_311 @xlist
	store %varDef_312 @now
	store %tmp_187 @dx
	store %varDef_313 @ok
	store %varDef_314 @tail
	store %varDef_315 @ylist
	store %varDef_316 @y
	store %varDef_317 @N
	store %varDef_318 @targety
	store %varDef_319 @j
	store %varDef_320 @x
	store %varDef_321 @targetx
	ret 0

}

