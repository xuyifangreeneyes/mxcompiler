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
	%tmp_19 = load @xlist
	mov %varDef_24 %tmp_19
	%tmp_18 = load @dy
	mov %varDef_25 %tmp_18
	%tmp_17 = load @dx
	mov %varDef_26 %tmp_17
	%tmp_16 = load @ylist
	mov %varDef_27 %tmp_16
	%memberLength_1 = mul 12000 8
	%arrayLength_2 = add %memberLength_1 8
	%arrayPtr_0 = malloc %arrayLength_2
	store 12000 %arrayPtr_0
	mov %varDef_28 %arrayPtr_0
	%memberLength_4 = mul 12000 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store 12000 %arrayPtr_3
	mov %varDef_29 %arrayPtr_3
	%memberLength_7 = mul 8 8
	%arrayLength_8 = add %memberLength_7 8
	%arrayPtr_6 = malloc %arrayLength_8
	store 8 %arrayPtr_6
	mov %varDef_30 %arrayPtr_6
	%memberLength_10 = mul 9 8
	%arrayLength_11 = add %memberLength_10 8
	%arrayPtr_9 = malloc %arrayLength_11
	store 9 %arrayPtr_9
	mov %varDef_31 %arrayPtr_9
	mov %tmp_20 %varDef_29
	store %tmp_20 @ylist
	mov %tmp_21 %varDef_30
	store %tmp_21 @dx
	mov %tmp_22 %varDef_31
	store %tmp_22 @dy
	mov %tmp_23 %varDef_28
	store %tmp_23 @xlist
	ret 

}

define origin ( %argVal_0 ) {
<0> entry
	%tmp_46 = load @i
	mov %varDef_52 %tmp_46
	%tmp_45 = load @j
	mov %varDef_53 %tmp_45
	%tmp_44 = load @step
	mov %varDef_54 %tmp_44
	%tmp_43 = load @head
	mov %varDef_55 %tmp_43
	%tmp_42 = load @tail
	mov %varDef_56 %tmp_42
	mov %varDef_57 %argVal_0
	mov %varDef_58 0
	mov %varDef_59 0
	mov %idVal_2 %varDef_57
	%memberLength_4 = mul %idVal_2 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store %idVal_2 %arrayPtr_3
	mov %varDef_60 %arrayPtr_3
	mov %varDef_61 0
	br <1>

<1> for_cond
	%varDef_62 = phi <0> %varDef_53 <3> %varDef_65
	%varDef_63 = phi <0> %varDef_61 <3> %varDef_67
	mov %idVal_6 %varDef_63
	mov %idVal_7 %varDef_57
	%res_8 = lt %idVal_6 %idVal_7
	br %res_8 <2> <4>

<2> for_body
	mov %idVal_9 %varDef_57
	%memberLength_11 = mul %idVal_9 8
	%arrayLength_12 = add %memberLength_11 8
	%arrayPtr_10 = malloc %arrayLength_12
	store %idVal_9 %arrayPtr_10
	mov %arrayPtr_13 %varDef_60
	%arrayBase_14 = add %arrayPtr_13 8
	mov %idVal_15 %varDef_63
	%offset_16 = mul %idVal_15 8
	%elementAddr_17 = add %arrayBase_14 %offset_16
	store %arrayPtr_10 %elementAddr_17
	mov %varDef_64 0
	br <5>

<5> for_cond
	%varDef_65 = phi <2> %varDef_64 <6> %varDef_66
	mov %idVal_18 %varDef_65
	mov %idVal_19 %varDef_57
	%res_20 = lt %idVal_18 %idVal_19
	br %res_20 <6> <3>

<6> for_body
	mov %arrayPtr_21 %varDef_60
	%arrayBase_22 = add %arrayPtr_21 8
	mov %idVal_23 %varDef_63
	%offset_24 = mul %idVal_23 8
	%elementAddr_25 = add %arrayBase_22 %offset_24
	%arrayPtr_26 = load %elementAddr_25
	%arrayBase_27 = add %arrayPtr_26 8
	mov %idVal_28 %varDef_65
	%offset_29 = mul %idVal_28 8
	%elementAddr_30 = add %arrayBase_27 %offset_29
	store 0 %elementAddr_30
	mov %idVal_31 %varDef_65
	mov %oldVal_32 %varDef_65
	%newVal_33 = inc %oldVal_32
	mov %varDef_66 %newVal_33
	br <5>

<3> for_step
	mov %idVal_34 %varDef_63
	mov %oldVal_35 %varDef_63
	%newVal_36 = inc %oldVal_35
	mov %varDef_67 %newVal_36
	br <1>

<4> for_end
	mov %tmp_47 %varDef_59
	store %tmp_47 @tail
	mov %tmp_48 %varDef_58
	store %tmp_48 @head
	mov %tmp_49 %varDef_60
	store %tmp_49 @step
	mov %tmp_50 %varDef_62
	store %tmp_50 @j
	mov %tmp_51 %varDef_63
	store %tmp_51 @i
	ret 

}

define check ( %argVal_0 ) {
<0> entry
	%tmp_10 = load @N
	mov %varDef_11 %tmp_10
	mov %varDef_12 %argVal_0
	mov %idVal_3 %varDef_12
	mov %idVal_4 %varDef_11
	%res_5 = lt %idVal_3 %idVal_4
	br %res_5 <4> <2>

<4> lhs_true
	mov %idVal_6 %varDef_12
	%res_7 = ge %idVal_6 0
	br %res_7 <1> <2>

<1> bool_true
	mov %varDef_13 1
	br <3>

<2> bool_false
	mov %varDef_14 0
	br <3>

<3> bool_merge
	%varDef_15 = phi <1> %varDef_13 <2> %varDef_14
	mov %boolVal_8 %varDef_15
	ret %boolVal_8

}

define addList ( %argVal_0 %argVal_2 ) {
<0> entry
	%tmp_89 = load @now
	mov %varDef_92 %tmp_89
	%tmp_88 = load @xlist
	mov %varDef_93 %tmp_88
	%tmp_87 = load @step
	mov %varDef_94 %tmp_87
	%tmp_86 = load @N
	mov %varDef_95 %tmp_86
	%tmp_85 = load @targetx
	mov %varDef_96 %tmp_85
	%tmp_84 = load @ylist
	mov %varDef_97 %tmp_84
	%tmp_83 = load @ok
	mov %varDef_98 %tmp_83
	%tmp_82 = load @targety
	mov %varDef_99 %tmp_82
	%tmp_81 = load @tail
	mov %varDef_100 %tmp_81
	mov %varDef_101 %argVal_0
	mov %varDef_102 %argVal_2
	mov %idVal_5 %varDef_101
	br <9>

<9> centry
	mov %varDef_103 %idVal_5
	mov %cidVal_57 %varDef_103
	mov %cidVal_58 %varDef_95
	%cres_59 = lt %cidVal_57 %cidVal_58
	br %cres_59 <10> <12>

<10> clhs_true
	mov %cidVal_60 %varDef_103
	%cres_61 = ge %cidVal_60 0
	br %cres_61 <11> <12>

<11> cbool_true
	mov %varDef_104 1
	br <13>

<12> cbool_false
	mov %varDef_105 0
	br <13>

<13> cbool_merge
	%varDef_106 = phi <11> %varDef_104 <12> %varDef_105
	mov %cboolVal_62 %varDef_106
	mov %varDef_107 %cboolVal_62
	mov %res_4 %varDef_107
	br %res_4 <4> <2>

<4> lhs_true
	mov %idVal_7 %varDef_102
	mov %varDef_108 %idVal_7
	mov %cidVal_66 %varDef_108
	mov %cidVal_67 %varDef_95
	%cres_68 = lt %cidVal_66 %cidVal_67
	br %cres_68 <16> <18>

<16> clhs_true
	mov %cidVal_69 %varDef_108
	%cres_70 = ge %cidVal_69 0
	br %cres_70 <17> <18>

<17> cbool_true
	mov %varDef_109 1
	br <19>

<18> cbool_false
	mov %varDef_110 0
	br <19>

<19> cbool_merge
	%varDef_111 = phi <17> %varDef_109 <18> %varDef_110
	mov %cboolVal_71 %varDef_111
	mov %varDef_112 %cboolVal_71
	mov %res_6 %varDef_112
	br %res_6 <3> <2>

<3> lhs_true
	mov %arrayPtr_8 %varDef_94
	%arrayBase_9 = add %arrayPtr_8 8
	mov %idVal_10 %varDef_101
	%offset_11 = mul %idVal_10 8
	%elementAddr_12 = add %arrayBase_9 %offset_11
	%arrayPtr_13 = load %elementAddr_12
	%arrayBase_14 = add %arrayPtr_13 8
	mov %idVal_15 %varDef_102
	%offset_16 = mul %idVal_15 8
	%elementAddr_17 = add %arrayBase_14 %offset_16
	%elementVal_18 = load %elementAddr_17
	%res_19 = neg 1
	%res_20 = eq %elementVal_18 %res_19
	br %res_20 <1> <2>

<1> if_true
	mov %idVal_21 %varDef_100
	mov %oldVal_22 %varDef_100
	%newVal_23 = inc %oldVal_22
	mov %varDef_113 %newVal_23
	mov %idVal_24 %varDef_101
	mov %arrayPtr_25 %varDef_93
	%arrayBase_26 = add %arrayPtr_25 8
	mov %idVal_27 %varDef_113
	%offset_28 = mul %idVal_27 8
	%elementAddr_29 = add %arrayBase_26 %offset_28
	store %idVal_24 %elementAddr_29
	mov %idVal_30 %varDef_102
	mov %arrayPtr_31 %varDef_97
	%arrayBase_32 = add %arrayPtr_31 8
	mov %idVal_33 %varDef_113
	%offset_34 = mul %idVal_33 8
	%elementAddr_35 = add %arrayBase_32 %offset_34
	store %idVal_30 %elementAddr_35
	mov %idVal_36 %varDef_92
	%res_37 = add %idVal_36 1
	mov %arrayPtr_38 %varDef_94
	%arrayBase_39 = add %arrayPtr_38 8
	mov %idVal_40 %varDef_101
	%offset_41 = mul %idVal_40 8
	%elementAddr_42 = add %arrayBase_39 %offset_41
	%arrayPtr_43 = load %elementAddr_42
	%arrayBase_44 = add %arrayPtr_43 8
	mov %idVal_45 %varDef_102
	%offset_46 = mul %idVal_45 8
	%elementAddr_47 = add %arrayBase_44 %offset_46
	store %res_37 %elementAddr_47
	mov %idVal_48 %varDef_101
	mov %idVal_49 %varDef_96
	%res_50 = eq %idVal_48 %idVal_49
	br %res_50 <7> <2>

<7> lhs_true
	mov %idVal_51 %varDef_102
	mov %idVal_52 %varDef_99
	%res_53 = eq %idVal_51 %idVal_52
	br %res_53 <5> <2>

<5> if_true
	mov %varDef_114 1
	br <2>

<2> if_merge
	%varDef_115 = phi <13> 0 <19> %varDef_112 <3> %varDef_112 <1> %varDef_112 <7> %varDef_112 <5> %varDef_112
	%varDef_116 = phi <13> 0 <19> %varDef_111 <3> %varDef_111 <1> %varDef_111 <7> %varDef_111 <5> %varDef_111
	%varDef_117 = phi <13> 0 <19> %varDef_108 <3> %varDef_108 <1> %varDef_108 <7> %varDef_108 <5> %varDef_108
	%varDef_118 = phi <13> %varDef_100 <19> %varDef_100 <3> %varDef_100 <1> %varDef_113 <7> %varDef_113 <5> %varDef_113
	%varDef_119 = phi <13> %varDef_98 <19> %varDef_98 <3> %varDef_98 <1> %varDef_98 <7> %varDef_98 <5> %varDef_114
	mov %tmp_90 %varDef_118
	store %tmp_90 @tail
	mov %tmp_91 %varDef_119
	store %tmp_91 @ok
	ret 

}

define main ( ) {
<0> entry
	%tmp_301 = load @now
	mov %varDef_314 %tmp_301
	%tmp_300 = load @dy
	mov %varDef_315 %tmp_300
	%tmp_299 = load @step
	mov %varDef_316 %tmp_299
	%tmp_298 = load @N
	mov %varDef_317 %tmp_298
	%tmp_297 = load @targetx
	mov %varDef_318 %tmp_297
	%tmp_296 = load @tail
	mov %varDef_319 %tmp_296
	%tmp_295 = load @x
	mov %varDef_320 %tmp_295
	%tmp_294 = load @xlist
	mov %varDef_321 %tmp_294
	%tmp_293 = load @y
	mov %varDef_322 %tmp_293
	%tmp_292 = load @i
	mov %varDef_323 %tmp_292
	%tmp_291 = load @dx
	mov %varDef_324 %tmp_291
	%tmp_290 = load @j
	mov %varDef_325 %tmp_290
	%tmp_289 = load @head
	mov %varDef_326 %tmp_289
	%tmp_288 = load @ylist
	mov %varDef_327 %tmp_288
	%tmp_287 = load @ok
	mov %varDef_328 %tmp_287
	%tmp_286 = load @targety
	mov %varDef_329 %tmp_286
	br <22>

<22> centry
	mov %varDef_330 106
	mov %varDef_331 0
	mov %varDef_332 0
	mov %cidVal_165 %varDef_330
	%cmemberLength_166 = mul %cidVal_165 8
	%carrayLength_167 = add %cmemberLength_166 8
	%carrayPtr_168 = malloc %carrayLength_167
	store %cidVal_165 %carrayPtr_168
	mov %varDef_333 %carrayPtr_168
	mov %varDef_334 0
	br <23>

<23> cfor_cond
	%varDef_335 = phi <22> %varDef_325 <29> %varDef_338
	%varDef_336 = phi <22> %varDef_334 <29> %varDef_340
	mov %cidVal_169 %varDef_336
	mov %cidVal_170 %varDef_330
	%cres_171 = lt %cidVal_169 %cidVal_170
	br %cres_171 <24> <21>

<24> cfor_body
	mov %cidVal_172 %varDef_330
	%cmemberLength_173 = mul %cidVal_172 8
	%carrayLength_174 = add %cmemberLength_173 8
	%carrayPtr_175 = malloc %carrayLength_174
	store %cidVal_172 %carrayPtr_175
	mov %carrayPtr_176 %varDef_333
	%carrayBase_177 = add %carrayPtr_176 8
	mov %cidVal_178 %varDef_336
	%coffset_179 = mul %cidVal_178 8
	%celementAddr_180 = add %carrayBase_177 %coffset_179
	store %carrayPtr_175 %celementAddr_180
	mov %varDef_337 0
	br <25>

<25> cfor_cond
	%varDef_338 = phi <24> %varDef_337 <26> %varDef_339
	mov %cidVal_181 %varDef_338
	mov %cidVal_182 %varDef_330
	%cres_183 = lt %cidVal_181 %cidVal_182
	br %cres_183 <26> <29>

<26> cfor_body
	mov %carrayPtr_184 %varDef_333
	%carrayBase_185 = add %carrayPtr_184 8
	mov %cidVal_186 %varDef_336
	%coffset_187 = mul %cidVal_186 8
	%celementAddr_188 = add %carrayBase_185 %coffset_187
	%carrayPtr_189 = load %celementAddr_188
	%carrayBase_190 = add %carrayPtr_189 8
	mov %cidVal_191 %varDef_338
	%coffset_192 = mul %cidVal_191 8
	%celementAddr_193 = add %carrayBase_190 %coffset_192
	store 0 %celementAddr_193
	mov %cidVal_194 %varDef_338
	mov %coldVal_195 %varDef_338
	%cnewVal_196 = inc %coldVal_195
	mov %varDef_339 %cnewVal_196
	br <25>

<29> cfor_step
	mov %cidVal_197 %varDef_336
	mov %coldVal_198 %varDef_336
	%cnewVal_199 = inc %coldVal_198
	mov %varDef_340 %cnewVal_199
	br <23>

<21> after_call
	%res_0 = getInt ( )
	mov %varDef_341 %res_0
	mov %idVal_1 %varDef_341
	%res_2 = sub %idVal_1 1
	mov %varDef_342 %res_2
	mov %idVal_3 %varDef_342
	mov %varDef_343 %idVal_3
	mov %varDef_344 0
	br <1>

<1> for_cond
	%varDef_345 = phi <21> %varDef_335 <3> %varDef_348
	%varDef_346 = phi <21> %varDef_344 <3> %varDef_350
	mov %idVal_4 %varDef_346
	mov %idVal_5 %varDef_341
	%res_6 = lt %idVal_4 %idVal_5
	br %res_6 <2> <4>

<2> for_body
	mov %varDef_347 0
	br <5>

<5> for_cond
	%varDef_348 = phi <2> %varDef_347 <6> %varDef_349
	mov %idVal_7 %varDef_348
	mov %idVal_8 %varDef_341
	%res_9 = lt %idVal_7 %idVal_8
	br %res_9 <6> <3>

<6> for_body
	%res_10 = neg 1
	mov %arrayPtr_11 %varDef_333
	%arrayBase_12 = add %arrayPtr_11 8
	mov %idVal_13 %varDef_346
	%offset_14 = mul %idVal_13 8
	%elementAddr_15 = add %arrayBase_12 %offset_14
	%arrayPtr_16 = load %elementAddr_15
	%arrayBase_17 = add %arrayPtr_16 8
	mov %idVal_18 %varDef_348
	%offset_19 = mul %idVal_18 8
	%elementAddr_20 = add %arrayBase_17 %offset_19
	store %res_10 %elementAddr_20
	mov %idVal_21 %varDef_348
	mov %oldVal_22 %varDef_348
	%newVal_23 = inc %oldVal_22
	mov %varDef_349 %newVal_23
	br <5>

<3> for_step
	mov %idVal_24 %varDef_346
	mov %oldVal_25 %varDef_346
	%newVal_26 = inc %oldVal_25
	mov %varDef_350 %newVal_26
	br <1>

<4> for_end
	%res_27 = neg 2
	mov %arrayPtr_28 %varDef_324
	%arrayBase_29 = add %arrayPtr_28 8
	%offset_30 = mul 0 8
	%elementAddr_31 = add %arrayBase_29 %offset_30
	store %res_27 %elementAddr_31
	%res_32 = neg 1
	mov %arrayPtr_33 %varDef_315
	%arrayBase_34 = add %arrayPtr_33 8
	%offset_35 = mul 0 8
	%elementAddr_36 = add %arrayBase_34 %offset_35
	store %res_32 %elementAddr_36
	%res_37 = neg 2
	mov %arrayPtr_38 %varDef_324
	%arrayBase_39 = add %arrayPtr_38 8
	%offset_40 = mul 1 8
	%elementAddr_41 = add %arrayBase_39 %offset_40
	store %res_37 %elementAddr_41
	mov %arrayPtr_42 %varDef_315
	%arrayBase_43 = add %arrayPtr_42 8
	%offset_44 = mul 1 8
	%elementAddr_45 = add %arrayBase_43 %offset_44
	store 1 %elementAddr_45
	mov %arrayPtr_46 %varDef_324
	%arrayBase_47 = add %arrayPtr_46 8
	%offset_48 = mul 2 8
	%elementAddr_49 = add %arrayBase_47 %offset_48
	store 2 %elementAddr_49
	%res_50 = neg 1
	mov %arrayPtr_51 %varDef_315
	%arrayBase_52 = add %arrayPtr_51 8
	%offset_53 = mul 2 8
	%elementAddr_54 = add %arrayBase_52 %offset_53
	store %res_50 %elementAddr_54
	mov %arrayPtr_55 %varDef_324
	%arrayBase_56 = add %arrayPtr_55 8
	%offset_57 = mul 3 8
	%elementAddr_58 = add %arrayBase_56 %offset_57
	store 2 %elementAddr_58
	mov %arrayPtr_59 %varDef_315
	%arrayBase_60 = add %arrayPtr_59 8
	%offset_61 = mul 3 8
	%elementAddr_62 = add %arrayBase_60 %offset_61
	store 1 %elementAddr_62
	%res_63 = neg 1
	mov %arrayPtr_64 %varDef_324
	%arrayBase_65 = add %arrayPtr_64 8
	%offset_66 = mul 4 8
	%elementAddr_67 = add %arrayBase_65 %offset_66
	store %res_63 %elementAddr_67
	%res_68 = neg 2
	mov %arrayPtr_69 %varDef_315
	%arrayBase_70 = add %arrayPtr_69 8
	%offset_71 = mul 4 8
	%elementAddr_72 = add %arrayBase_70 %offset_71
	store %res_68 %elementAddr_72
	%res_73 = neg 1
	mov %arrayPtr_74 %varDef_324
	%arrayBase_75 = add %arrayPtr_74 8
	%offset_76 = mul 5 8
	%elementAddr_77 = add %arrayBase_75 %offset_76
	store %res_73 %elementAddr_77
	mov %arrayPtr_78 %varDef_315
	%arrayBase_79 = add %arrayPtr_78 8
	%offset_80 = mul 5 8
	%elementAddr_81 = add %arrayBase_79 %offset_80
	store 2 %elementAddr_81
	mov %arrayPtr_82 %varDef_324
	%arrayBase_83 = add %arrayPtr_82 8
	%offset_84 = mul 6 8
	%elementAddr_85 = add %arrayBase_83 %offset_84
	store 1 %elementAddr_85
	%res_86 = neg 2
	mov %arrayPtr_87 %varDef_315
	%arrayBase_88 = add %arrayPtr_87 8
	%offset_89 = mul 6 8
	%elementAddr_90 = add %arrayBase_88 %offset_89
	store %res_86 %elementAddr_90
	mov %arrayPtr_91 %varDef_324
	%arrayBase_92 = add %arrayPtr_91 8
	%offset_93 = mul 7 8
	%elementAddr_94 = add %arrayBase_92 %offset_93
	store 1 %elementAddr_94
	mov %arrayPtr_95 %varDef_315
	%arrayBase_96 = add %arrayPtr_95 8
	%offset_97 = mul 7 8
	%elementAddr_98 = add %arrayBase_96 %offset_97
	store 2 %elementAddr_98
	br <9>

<9> while_cond
	%varDef_351 = phi <4> 0 <17> %varDef_370
	%varDef_352 = phi <4> 0 <17> %varDef_371
	%varDef_353 = phi <4> 0 <17> %varDef_372
	%varDef_354 = phi <4> 0 <17> %varDef_373
	%varDef_355 = phi <4> 0 <17> %varDef_374
	%varDef_356 = phi <4> 0 <17> %varDef_375
	%varDef_357 = phi <4> 0 <17> %varDef_376
	%varDef_358 = phi <4> 0 <17> %varDef_377
	%varDef_359 = phi <4> %varDef_328 <17> %varDef_378
	%varDef_360 = phi <4> %varDef_331 <17> %varDef_401
	%varDef_361 = phi <4> %varDef_345 <17> %varDef_379
	%varDef_362 = phi <4> %varDef_322 <17> %varDef_367
	%varDef_363 = phi <4> %varDef_320 <17> %varDef_366
	%varDef_364 = phi <4> %varDef_332 <17> %varDef_380
	%varDef_365 = phi <4> %varDef_314 <17> %varDef_368
	mov %idVal_99 %varDef_360
	mov %idVal_100 %varDef_364
	%res_101 = le %idVal_99 %idVal_100
	br %res_101 <10> <11>

<10> while_body
	mov %arrayPtr_102 %varDef_321
	%arrayBase_103 = add %arrayPtr_102 8
	mov %idVal_104 %varDef_360
	%offset_105 = mul %idVal_104 8
	%elementAddr_106 = add %arrayBase_103 %offset_105
	%elementVal_107 = load %elementAddr_106
	mov %varDef_366 %elementVal_107
	mov %arrayPtr_108 %varDef_327
	%arrayBase_109 = add %arrayPtr_108 8
	mov %idVal_110 %varDef_360
	%offset_111 = mul %idVal_110 8
	%elementAddr_112 = add %arrayBase_109 %offset_111
	%elementVal_113 = load %elementAddr_112
	mov %varDef_367 %elementVal_113
	mov %arrayPtr_114 %varDef_333
	%arrayBase_115 = add %arrayPtr_114 8
	mov %idVal_116 %varDef_366
	%offset_117 = mul %idVal_116 8
	%elementAddr_118 = add %arrayBase_115 %offset_117
	%arrayPtr_119 = load %elementAddr_118
	%arrayBase_120 = add %arrayPtr_119 8
	mov %idVal_121 %varDef_367
	%offset_122 = mul %idVal_121 8
	%elementAddr_123 = add %arrayBase_120 %offset_122
	%elementVal_124 = load %elementAddr_123
	mov %varDef_368 %elementVal_124
	mov %varDef_369 0
	br <12>

<12> for_cond
	%varDef_370 = phi <10> %varDef_351 <14> %varDef_382
	%varDef_371 = phi <10> %varDef_352 <14> %varDef_381
	%varDef_372 = phi <10> %varDef_353 <14> %varDef_387
	%varDef_373 = phi <10> %varDef_354 <14> %varDef_386
	%varDef_374 = phi <10> %varDef_355 <14> %varDef_383
	%varDef_375 = phi <10> %varDef_356 <14> %varDef_395
	%varDef_376 = phi <10> %varDef_357 <14> %varDef_396
	%varDef_377 = phi <10> %varDef_358 <14> %varDef_397
	%varDef_378 = phi <10> %varDef_359 <14> %varDef_398
	%varDef_379 = phi <10> %varDef_369 <14> %varDef_400
	%varDef_380 = phi <10> %varDef_364 <14> %varDef_399
	mov %idVal_125 %varDef_379
	%res_126 = lt %idVal_125 8
	br %res_126 <13> <15>

<13> for_body
	mov %idVal_127 %varDef_366
	mov %arrayPtr_128 %varDef_324
	%arrayBase_129 = add %arrayPtr_128 8
	mov %idVal_130 %varDef_379
	%offset_131 = mul %idVal_130 8
	%elementAddr_132 = add %arrayBase_129 %offset_131
	%elementVal_133 = load %elementAddr_132
	%res_134 = add %idVal_127 %elementVal_133
	mov %idVal_135 %varDef_367
	mov %arrayPtr_136 %varDef_315
	%arrayBase_137 = add %arrayPtr_136 8
	mov %idVal_138 %varDef_379
	%offset_139 = mul %idVal_138 8
	%elementAddr_140 = add %arrayBase_137 %offset_139
	%elementVal_141 = load %elementAddr_140
	%res_142 = add %idVal_135 %elementVal_141
	mov %varDef_381 %res_134
	mov %varDef_382 %res_142
	mov %cidVal_202 %varDef_381
	mov %varDef_383 %cidVal_202
	mov %cidVal_255 %varDef_383
	mov %cidVal_256 %varDef_341
	%cres_257 = lt %cidVal_255 %cidVal_256
	br %cres_257 <42> <44>

<42> clhs_true
	mov %cidVal_258 %varDef_383
	%cres_259 = ge %cidVal_258 0
	br %cres_259 <43> <44>

<43> cbool_true
	mov %varDef_384 1
	br <45>

<44> cbool_false
	mov %varDef_385 0
	br <45>

<45> cbool_merge
	%varDef_386 = phi <43> %varDef_384 <44> %varDef_385
	mov %cboolVal_260 %varDef_386
	mov %varDef_387 %cboolVal_260
	mov %cres_203 %varDef_387
	br %cres_203 <33> <14>

<33> clhs_true
	mov %cidVal_204 %varDef_382
	mov %varDef_388 %cidVal_204
	mov %cidVal_264 %varDef_388
	mov %cidVal_265 %varDef_341
	%cres_266 = lt %cidVal_264 %cidVal_265
	br %cres_266 <48> <50>

<48> clhs_true
	mov %cidVal_267 %varDef_388
	%cres_268 = ge %cidVal_267 0
	br %cres_268 <49> <50>

<49> cbool_true
	mov %varDef_389 1
	br <51>

<50> cbool_false
	mov %varDef_390 0
	br <51>

<51> cbool_merge
	%varDef_391 = phi <49> %varDef_389 <50> %varDef_390
	mov %cboolVal_269 %varDef_391
	mov %varDef_392 %cboolVal_269
	mov %cres_205 %varDef_392
	br %cres_205 <34> <14>

<34> clhs_true
	mov %carrayPtr_206 %varDef_333
	%carrayBase_207 = add %carrayPtr_206 8
	mov %cidVal_208 %varDef_381
	%coffset_209 = mul %cidVal_208 8
	%celementAddr_210 = add %carrayBase_207 %coffset_209
	%carrayPtr_211 = load %celementAddr_210
	%carrayBase_212 = add %carrayPtr_211 8
	mov %cidVal_213 %varDef_382
	%coffset_214 = mul %cidVal_213 8
	%celementAddr_215 = add %carrayBase_212 %coffset_214
	%celementVal_216 = load %celementAddr_215
	%cres_217 = neg 1
	%cres_218 = eq %celementVal_216 %cres_217
	br %cres_218 <35> <14>

<35> cif_true
	mov %cidVal_219 %varDef_380
	mov %coldVal_220 %varDef_380
	%cnewVal_221 = inc %coldVal_220
	mov %varDef_393 %cnewVal_221
	mov %cidVal_222 %varDef_381
	mov %carrayPtr_223 %varDef_321
	%carrayBase_224 = add %carrayPtr_223 8
	mov %cidVal_225 %varDef_393
	%coffset_226 = mul %cidVal_225 8
	%celementAddr_227 = add %carrayBase_224 %coffset_226
	store %cidVal_222 %celementAddr_227
	mov %cidVal_228 %varDef_382
	mov %carrayPtr_229 %varDef_327
	%carrayBase_230 = add %carrayPtr_229 8
	mov %cidVal_231 %varDef_393
	%coffset_232 = mul %cidVal_231 8
	%celementAddr_233 = add %carrayBase_230 %coffset_232
	store %cidVal_228 %celementAddr_233
	mov %cidVal_234 %varDef_368
	%cres_235 = add %cidVal_234 1
	mov %carrayPtr_236 %varDef_333
	%carrayBase_237 = add %carrayPtr_236 8
	mov %cidVal_238 %varDef_381
	%coffset_239 = mul %cidVal_238 8
	%celementAddr_240 = add %carrayBase_237 %coffset_239
	%carrayPtr_241 = load %celementAddr_240
	%carrayBase_242 = add %carrayPtr_241 8
	mov %cidVal_243 %varDef_382
	%coffset_244 = mul %cidVal_243 8
	%celementAddr_245 = add %carrayBase_242 %coffset_244
	store %cres_235 %celementAddr_245
	mov %cidVal_246 %varDef_381
	mov %cidVal_247 %varDef_343
	%cres_248 = eq %cidVal_246 %cidVal_247
	br %cres_248 <36> <14>

<36> clhs_true
	mov %cidVal_249 %varDef_382
	mov %cidVal_250 %varDef_342
	%cres_251 = eq %cidVal_249 %cidVal_250
	br %cres_251 <37> <14>

<37> cif_true
	mov %varDef_394 1
	br <14>

<14> for_step
	%varDef_395 = phi <45> %varDef_375 <51> %varDef_392 <34> %varDef_392 <35> %varDef_392 <36> %varDef_392 <37> %varDef_392
	%varDef_396 = phi <45> %varDef_376 <51> %varDef_391 <34> %varDef_391 <35> %varDef_391 <36> %varDef_391 <37> %varDef_391
	%varDef_397 = phi <45> %varDef_377 <51> %varDef_388 <34> %varDef_388 <35> %varDef_388 <36> %varDef_388 <37> %varDef_388
	%varDef_398 = phi <45> %varDef_378 <51> %varDef_378 <34> %varDef_378 <35> %varDef_378 <36> %varDef_378 <37> %varDef_394
	%varDef_399 = phi <45> %varDef_380 <51> %varDef_380 <34> %varDef_380 <35> %varDef_393 <36> %varDef_393 <37> %varDef_393
	mov %idVal_143 %varDef_379
	mov %oldVal_144 %varDef_379
	%newVal_145 = inc %oldVal_144
	mov %varDef_400 %newVal_145
	br <12>

<15> for_end
	mov %idVal_146 %varDef_378
	%res_147 = eq %idVal_146 1
	br %res_147 <11> <17>

<17> if_merge
	mov %idVal_148 %varDef_360
	mov %oldVal_149 %varDef_360
	%newVal_150 = inc %oldVal_149
	mov %varDef_401 %newVal_150
	br <9>

<11> while_end
	%varDef_402 = phi <9> %varDef_351 <15> %varDef_370
	%varDef_403 = phi <9> %varDef_352 <15> %varDef_371
	%varDef_404 = phi <9> %varDef_353 <15> %varDef_372
	%varDef_405 = phi <9> %varDef_354 <15> %varDef_373
	%varDef_406 = phi <9> %varDef_355 <15> %varDef_374
	%varDef_407 = phi <9> %varDef_356 <15> %varDef_375
	%varDef_408 = phi <9> %varDef_357 <15> %varDef_376
	%varDef_409 = phi <9> %varDef_358 <15> %varDef_377
	%varDef_410 = phi <9> %varDef_359 <15> %varDef_378
	%varDef_411 = phi <9> %varDef_361 <15> %varDef_379
	%varDef_412 = phi <9> %varDef_362 <15> %varDef_367
	%varDef_413 = phi <9> %varDef_363 <15> %varDef_366
	%varDef_414 = phi <9> %varDef_364 <15> %varDef_380
	%varDef_415 = phi <9> %varDef_365 <15> %varDef_368
	mov %idVal_151 %varDef_410
	%res_152 = eq %idVal_151 1
	br %res_152 <18> <19>

<18> if_true
	mov %arrayPtr_153 %varDef_333
	%arrayBase_154 = add %arrayPtr_153 8
	mov %idVal_155 %varDef_343
	%offset_156 = mul %idVal_155 8
	%elementAddr_157 = add %arrayBase_154 %offset_156
	%arrayPtr_158 = load %elementAddr_157
	%arrayBase_159 = add %arrayPtr_158 8
	mov %idVal_160 %varDef_342
	%offset_161 = mul %idVal_160 8
	%elementAddr_162 = add %arrayBase_159 %offset_161
	%elementVal_163 = load %elementAddr_162
	__printlnInt ( %elementVal_163 )
	br <20>

<19> if_false
	print ( $str_0 )
	br <20>

<20> if_merge
	mov %tmp_302 %varDef_342
	store %tmp_302 @targety
	mov %tmp_303 %varDef_410
	store %tmp_303 @ok
	mov %tmp_304 %varDef_360
	store %tmp_304 @head
	mov %tmp_305 %varDef_411
	store %tmp_305 @j
	mov %tmp_306 %varDef_346
	store %tmp_306 @i
	mov %tmp_307 %varDef_412
	store %tmp_307 @y
	mov %tmp_308 %varDef_413
	store %tmp_308 @x
	mov %tmp_309 %varDef_414
	store %tmp_309 @tail
	mov %tmp_310 %varDef_343
	store %tmp_310 @targetx
	mov %tmp_311 %varDef_341
	store %tmp_311 @N
	mov %tmp_312 %varDef_333
	store %tmp_312 @step
	mov %tmp_313 %varDef_415
	store %tmp_313 @now
	ret 0

}

