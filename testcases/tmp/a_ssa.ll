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
	%tmp_23 = load @dy
	mov %varDef_28 %tmp_23
	%tmp_22 = load @ylist
	mov %varDef_29 %tmp_22
	%tmp_21 = load @xlist
	mov %varDef_30 %tmp_21
	%tmp_20 = load @dx
	mov %varDef_31 %tmp_20
	%memberLength_1 = mul 12000 8
	%arrayLength_2 = add %memberLength_1 8
	%arrayPtr_0 = malloc %arrayLength_2
	store 12000 %arrayPtr_0
	%arrayBase_3 = add %arrayPtr_0 8
	mov %varDef_32 %arrayBase_3
	%memberLength_5 = mul 12000 8
	%arrayLength_6 = add %memberLength_5 8
	%arrayPtr_4 = malloc %arrayLength_6
	store 12000 %arrayPtr_4
	%arrayBase_7 = add %arrayPtr_4 8
	mov %varDef_33 %arrayBase_7
	%memberLength_9 = mul 8 8
	%arrayLength_10 = add %memberLength_9 8
	%arrayPtr_8 = malloc %arrayLength_10
	store 8 %arrayPtr_8
	%arrayBase_11 = add %arrayPtr_8 8
	mov %varDef_34 %arrayBase_11
	%memberLength_13 = mul 9 8
	%arrayLength_14 = add %memberLength_13 8
	%arrayPtr_12 = malloc %arrayLength_14
	store 9 %arrayPtr_12
	%arrayBase_15 = add %arrayPtr_12 8
	mov %varDef_35 %arrayBase_15
	mov %tmp_24 %varDef_34
	store %tmp_24 @dx
	mov %tmp_25 %varDef_32
	store %tmp_25 @xlist
	mov %tmp_26 %varDef_33
	store %tmp_26 @ylist
	mov %tmp_27 %varDef_35
	store %tmp_27 @dy
	ret 

}

define origin ( %argVal_0 ) {
<0> entry
	%tmp_45 = load @j
	mov %varDef_51 %tmp_45
	%tmp_44 = load @step
	mov %varDef_52 %tmp_44
	%tmp_43 = load @head
	mov %varDef_53 %tmp_43
	%tmp_42 = load @i
	mov %varDef_54 %tmp_42
	%tmp_41 = load @tail
	mov %varDef_55 %tmp_41
	mov %varDef_56 %argVal_0
	mov %varDef_57 0
	mov %varDef_58 0
	mov %idVal_2 %varDef_56
	%memberLength_4 = mul %idVal_2 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store %idVal_2 %arrayPtr_3
	%arrayBase_6 = add %arrayPtr_3 8
	mov %varDef_59 %arrayBase_6
	mov %varDef_60 0
	br <1>

<1> for_cond
	%varDef_61 = phi <0> %varDef_60 <3> %varDef_66
	%varDef_62 = phi <0> %varDef_51 <3> %varDef_64
	mov %idVal_7 %varDef_61
	mov %idVal_8 %varDef_56
	%res_9 = lt %idVal_7 %idVal_8
	br %res_9 <2> <4>

<2> for_body
	mov %idVal_10 %varDef_56
	%memberLength_12 = mul %idVal_10 8
	%arrayLength_13 = add %memberLength_12 8
	%arrayPtr_11 = malloc %arrayLength_13
	store %idVal_10 %arrayPtr_11
	%arrayBase_14 = add %arrayPtr_11 8
	mov %arrayBase_15 %varDef_59
	mov %idVal_16 %varDef_61
	%offset_17 = mul %idVal_16 8
	%elementAddr_18 = add %arrayBase_15 %offset_17
	store %arrayBase_14 %elementAddr_18
	mov %varDef_63 0
	br <5>

<5> for_cond
	%varDef_64 = phi <2> %varDef_63 <6> %varDef_65
	mov %idVal_19 %varDef_64
	mov %idVal_20 %varDef_56
	%res_21 = lt %idVal_19 %idVal_20
	br %res_21 <6> <3>

<6> for_body
	mov %arrayBase_22 %varDef_59
	mov %idVal_23 %varDef_61
	%offset_24 = mul %idVal_23 8
	%elementAddr_25 = add %arrayBase_22 %offset_24
	%arrayBase_26 = load %elementAddr_25
	mov %idVal_27 %varDef_64
	%offset_28 = mul %idVal_27 8
	%elementAddr_29 = add %arrayBase_26 %offset_28
	store 0 %elementAddr_29
	mov %idVal_30 %varDef_64
	mov %oldVal_31 %varDef_64
	%newVal_32 = inc %oldVal_31
	mov %varDef_65 %newVal_32
	br <5>

<3> for_step
	mov %idVal_33 %varDef_61
	mov %oldVal_34 %varDef_61
	%newVal_35 = inc %oldVal_34
	mov %varDef_66 %newVal_35
	br <1>

<4> for_end
	mov %tmp_46 %varDef_58
	store %tmp_46 @tail
	mov %tmp_47 %varDef_61
	store %tmp_47 @i
	mov %tmp_48 %varDef_57
	store %tmp_48 @head
	mov %tmp_49 %varDef_59
	store %tmp_49 @step
	mov %tmp_50 %varDef_62
	store %tmp_50 @j
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
	%tmp_83 = load @step
	mov %varDef_86 %tmp_83
	%tmp_82 = load @targetx
	mov %varDef_87 %tmp_82
	%tmp_81 = load @ylist
	mov %varDef_88 %tmp_81
	%tmp_80 = load @xlist
	mov %varDef_89 %tmp_80
	%tmp_79 = load @ok
	mov %varDef_90 %tmp_79
	%tmp_78 = load @targety
	mov %varDef_91 %tmp_78
	%tmp_77 = load @tail
	mov %varDef_92 %tmp_77
	%tmp_76 = load @N
	mov %varDef_93 %tmp_76
	%tmp_75 = load @now
	mov %varDef_94 %tmp_75
	mov %varDef_95 %argVal_0
	mov %varDef_96 %argVal_2
	mov %idVal_5 %varDef_95
	br <9>

<9> centry
	mov %varDef_97 %idVal_5
	mov %cidVal_51 %varDef_97
	mov %cidVal_52 %varDef_93
	%cres_53 = lt %cidVal_51 %cidVal_52
	br %cres_53 <10> <12>

<10> clhs_true
	mov %cidVal_54 %varDef_97
	%cres_55 = ge %cidVal_54 0
	br %cres_55 <11> <12>

<11> cbool_true
	mov %varDef_98 1
	br <13>

<12> cbool_false
	mov %varDef_99 0
	br <13>

<13> cbool_merge
	%varDef_100 = phi <11> %varDef_98 <12> %varDef_99
	mov %cboolVal_56 %varDef_100
	mov %varDef_101 %cboolVal_56
	mov %res_4 %varDef_101
	br %res_4 <4> <2>

<4> lhs_true
	mov %idVal_7 %varDef_96
	mov %varDef_102 %idVal_7
	mov %cidVal_60 %varDef_102
	mov %cidVal_61 %varDef_93
	%cres_62 = lt %cidVal_60 %cidVal_61
	br %cres_62 <16> <18>

<16> clhs_true
	mov %cidVal_63 %varDef_102
	%cres_64 = ge %cidVal_63 0
	br %cres_64 <17> <18>

<17> cbool_true
	mov %varDef_103 1
	br <19>

<18> cbool_false
	mov %varDef_104 0
	br <19>

<19> cbool_merge
	%varDef_105 = phi <17> %varDef_103 <18> %varDef_104
	mov %cboolVal_65 %varDef_105
	mov %varDef_106 %cboolVal_65
	mov %res_6 %varDef_106
	br %res_6 <3> <2>

<3> lhs_true
	mov %arrayBase_8 %varDef_86
	mov %idVal_9 %varDef_95
	%offset_10 = mul %idVal_9 8
	%elementAddr_11 = add %arrayBase_8 %offset_10
	%arrayBase_12 = load %elementAddr_11
	mov %idVal_13 %varDef_96
	%offset_14 = mul %idVal_13 8
	%elementAddr_15 = add %arrayBase_12 %offset_14
	%elementVal_16 = load %elementAddr_15
	%res_17 = neg 1
	%res_18 = eq %elementVal_16 %res_17
	br %res_18 <1> <2>

<1> if_true
	mov %idVal_19 %varDef_92
	mov %oldVal_20 %varDef_92
	%newVal_21 = inc %oldVal_20
	mov %varDef_107 %newVal_21
	mov %idVal_22 %varDef_95
	mov %arrayBase_23 %varDef_89
	mov %idVal_24 %varDef_107
	%offset_25 = mul %idVal_24 8
	%elementAddr_26 = add %arrayBase_23 %offset_25
	store %idVal_22 %elementAddr_26
	mov %idVal_27 %varDef_96
	mov %arrayBase_28 %varDef_88
	mov %idVal_29 %varDef_107
	%offset_30 = mul %idVal_29 8
	%elementAddr_31 = add %arrayBase_28 %offset_30
	store %idVal_27 %elementAddr_31
	mov %idVal_32 %varDef_94
	%res_33 = add %idVal_32 1
	mov %arrayBase_34 %varDef_86
	mov %idVal_35 %varDef_95
	%offset_36 = mul %idVal_35 8
	%elementAddr_37 = add %arrayBase_34 %offset_36
	%arrayBase_38 = load %elementAddr_37
	mov %idVal_39 %varDef_96
	%offset_40 = mul %idVal_39 8
	%elementAddr_41 = add %arrayBase_38 %offset_40
	store %res_33 %elementAddr_41
	mov %idVal_42 %varDef_95
	mov %idVal_43 %varDef_87
	%res_44 = eq %idVal_42 %idVal_43
	br %res_44 <7> <2>

<7> lhs_true
	mov %idVal_45 %varDef_96
	mov %idVal_46 %varDef_91
	%res_47 = eq %idVal_45 %idVal_46
	br %res_47 <5> <2>

<5> if_true
	mov %varDef_108 1
	br <2>

<2> if_merge
	%varDef_109 = phi <13> 0 <19> %varDef_106 <3> %varDef_106 <1> %varDef_106 <7> %varDef_106 <5> %varDef_106
	%varDef_110 = phi <13> 0 <19> %varDef_105 <3> %varDef_105 <1> %varDef_105 <7> %varDef_105 <5> %varDef_105
	%varDef_111 = phi <13> 0 <19> %varDef_102 <3> %varDef_102 <1> %varDef_102 <7> %varDef_102 <5> %varDef_102
	%varDef_112 = phi <13> %varDef_92 <19> %varDef_92 <3> %varDef_92 <1> %varDef_107 <7> %varDef_107 <5> %varDef_107
	%varDef_113 = phi <13> %varDef_90 <19> %varDef_90 <3> %varDef_90 <1> %varDef_90 <7> %varDef_90 <5> %varDef_108
	mov %tmp_84 %varDef_112
	store %tmp_84 @tail
	mov %tmp_85 %varDef_113
	store %tmp_85 @ok
	ret 

}

define main ( ) {
<0> entry
	%tmp_249 = load @dy
	mov %varDef_274 %tmp_249
	%tmp_248 = load @y
	mov %varDef_275 %tmp_248
	%tmp_247 = load @x
	mov %varDef_276 %tmp_247
	%tmp_246 = load @i
	mov %varDef_277 %tmp_246
	%tmp_245 = load @targetx
	mov %varDef_278 %tmp_245
	%tmp_244 = load @N
	mov %varDef_279 %tmp_244
	%tmp_243 = load @now
	mov %varDef_280 %tmp_243
	%tmp_242 = load @j
	mov %varDef_281 %tmp_242
	%tmp_241 = load @step
	mov %varDef_282 %tmp_241
	%tmp_240 = load @head
	mov %varDef_283 %tmp_240
	%tmp_239 = load @ylist
	mov %varDef_284 %tmp_239
	%tmp_238 = load @xlist
	mov %varDef_285 %tmp_238
	%tmp_237 = load @ok
	mov %varDef_286 %tmp_237
	%tmp_236 = load @tail
	mov %varDef_287 %tmp_236
	%tmp_235 = load @targety
	mov %varDef_288 %tmp_235
	%tmp_234 = load @dx
	mov %varDef_289 %tmp_234
	br <22>

<22> centry
	%cmemberLength_138 = mul 12000 8
	%carrayLength_139 = add %cmemberLength_138 8
	%carrayPtr_140 = malloc %carrayLength_139
	store 12000 %carrayPtr_140
	%carrayBase_141 = add %carrayPtr_140 8
	mov %varDef_290 %carrayBase_141
	%cmemberLength_142 = mul 12000 8
	%carrayLength_143 = add %cmemberLength_142 8
	%carrayPtr_144 = malloc %carrayLength_143
	store 12000 %carrayPtr_144
	%carrayBase_145 = add %carrayPtr_144 8
	mov %varDef_291 %carrayBase_145
	%cmemberLength_146 = mul 8 8
	%carrayLength_147 = add %cmemberLength_146 8
	%carrayPtr_148 = malloc %carrayLength_147
	store 8 %carrayPtr_148
	%carrayBase_149 = add %carrayPtr_148 8
	mov %varDef_292 %carrayBase_149
	%cmemberLength_150 = mul 9 8
	%carrayLength_151 = add %cmemberLength_150 8
	%carrayPtr_152 = malloc %carrayLength_151
	store 9 %carrayPtr_152
	%carrayBase_153 = add %carrayPtr_152 8
	mov %varDef_293 %carrayBase_153
	mov %tmp_250 %varDef_287
	store %tmp_250 @tail
	mov %tmp_252 %varDef_283
	store %tmp_252 @head
	mov %tmp_255 %varDef_281
	store %tmp_255 @j
	mov %tmp_257 %varDef_277
	store %tmp_257 @i
	origin ( 106 )
	%tmp_258 = load @i
	mov %varDef_294 %tmp_258
	%tmp_256 = load @j
	mov %varDef_295 %tmp_256
	%tmp_254 = load @step
	mov %varDef_296 %tmp_254
	%tmp_253 = load @head
	mov %varDef_297 %tmp_253
	%tmp_251 = load @tail
	mov %varDef_298 %tmp_251
	%res_0 = getInt ( )
	mov %varDef_299 %res_0
	mov %idVal_1 %varDef_299
	%res_2 = sub %idVal_1 1
	mov %varDef_300 %res_2
	mov %idVal_3 %varDef_300
	mov %varDef_301 %idVal_3
	mov %varDef_302 0
	br <1>

<1> for_cond
	%varDef_303 = phi <22> %varDef_295 <3> %varDef_306
	%varDef_304 = phi <22> %varDef_302 <3> %varDef_308
	mov %idVal_4 %varDef_304
	mov %idVal_5 %varDef_299
	%res_6 = lt %idVal_4 %idVal_5
	br %res_6 <2> <4>

<2> for_body
	mov %varDef_305 0
	br <5>

<5> for_cond
	%varDef_306 = phi <2> %varDef_305 <6> %varDef_307
	mov %idVal_7 %varDef_306
	mov %idVal_8 %varDef_299
	%res_9 = lt %idVal_7 %idVal_8
	br %res_9 <6> <3>

<6> for_body
	%res_10 = neg 1
	mov %arrayBase_11 %varDef_296
	mov %idVal_12 %varDef_304
	%offset_13 = mul %idVal_12 8
	%elementAddr_14 = add %arrayBase_11 %offset_13
	%arrayBase_15 = load %elementAddr_14
	mov %idVal_16 %varDef_306
	%offset_17 = mul %idVal_16 8
	%elementAddr_18 = add %arrayBase_15 %offset_17
	store %res_10 %elementAddr_18
	mov %idVal_19 %varDef_306
	mov %oldVal_20 %varDef_306
	%newVal_21 = inc %oldVal_20
	mov %varDef_307 %newVal_21
	br <5>

<3> for_step
	mov %idVal_22 %varDef_304
	mov %oldVal_23 %varDef_304
	%newVal_24 = inc %oldVal_23
	mov %varDef_308 %newVal_24
	br <1>

<4> for_end
	%res_25 = neg 2
	mov %arrayBase_26 %varDef_292
	%offset_27 = mul 0 8
	%elementAddr_28 = add %arrayBase_26 %offset_27
	store %res_25 %elementAddr_28
	%res_29 = neg 1
	mov %arrayBase_30 %varDef_293
	%offset_31 = mul 0 8
	%elementAddr_32 = add %arrayBase_30 %offset_31
	store %res_29 %elementAddr_32
	%res_33 = neg 2
	mov %arrayBase_34 %varDef_292
	%offset_35 = mul 1 8
	%elementAddr_36 = add %arrayBase_34 %offset_35
	store %res_33 %elementAddr_36
	mov %arrayBase_37 %varDef_293
	%offset_38 = mul 1 8
	%elementAddr_39 = add %arrayBase_37 %offset_38
	store 1 %elementAddr_39
	mov %arrayBase_40 %varDef_292
	%offset_41 = mul 2 8
	%elementAddr_42 = add %arrayBase_40 %offset_41
	store 2 %elementAddr_42
	%res_43 = neg 1
	mov %arrayBase_44 %varDef_293
	%offset_45 = mul 2 8
	%elementAddr_46 = add %arrayBase_44 %offset_45
	store %res_43 %elementAddr_46
	mov %arrayBase_47 %varDef_292
	%offset_48 = mul 3 8
	%elementAddr_49 = add %arrayBase_47 %offset_48
	store 2 %elementAddr_49
	mov %arrayBase_50 %varDef_293
	%offset_51 = mul 3 8
	%elementAddr_52 = add %arrayBase_50 %offset_51
	store 1 %elementAddr_52
	%res_53 = neg 1
	mov %arrayBase_54 %varDef_292
	%offset_55 = mul 4 8
	%elementAddr_56 = add %arrayBase_54 %offset_55
	store %res_53 %elementAddr_56
	%res_57 = neg 2
	mov %arrayBase_58 %varDef_293
	%offset_59 = mul 4 8
	%elementAddr_60 = add %arrayBase_58 %offset_59
	store %res_57 %elementAddr_60
	%res_61 = neg 1
	mov %arrayBase_62 %varDef_292
	%offset_63 = mul 5 8
	%elementAddr_64 = add %arrayBase_62 %offset_63
	store %res_61 %elementAddr_64
	mov %arrayBase_65 %varDef_293
	%offset_66 = mul 5 8
	%elementAddr_67 = add %arrayBase_65 %offset_66
	store 2 %elementAddr_67
	mov %arrayBase_68 %varDef_292
	%offset_69 = mul 6 8
	%elementAddr_70 = add %arrayBase_68 %offset_69
	store 1 %elementAddr_70
	%res_71 = neg 2
	mov %arrayBase_72 %varDef_293
	%offset_73 = mul 6 8
	%elementAddr_74 = add %arrayBase_72 %offset_73
	store %res_71 %elementAddr_74
	mov %arrayBase_75 %varDef_292
	%offset_76 = mul 7 8
	%elementAddr_77 = add %arrayBase_75 %offset_76
	store 1 %elementAddr_77
	mov %arrayBase_78 %varDef_293
	%offset_79 = mul 7 8
	%elementAddr_80 = add %arrayBase_78 %offset_79
	store 2 %elementAddr_80
	br <9>

<9> while_cond
	%varDef_317 = phi <4> %varDef_298 <17> %varDef_336
	%varDef_318 = phi <4> %varDef_286 <17> %varDef_337
	%varDef_319 = phi <4> %varDef_297 <17> %varDef_359
	%varDef_320 = phi <4> %varDef_303 <17> %varDef_338
	%varDef_321 = phi <4> %varDef_280 <17> %varDef_326
	%varDef_322 = phi <4> %varDef_276 <17> %varDef_324
	%varDef_323 = phi <4> %varDef_275 <17> %varDef_325
	mov %idVal_81 %varDef_319
	mov %idVal_82 %varDef_317
	%res_83 = le %idVal_81 %idVal_82
	br %res_83 <10> <11>

<10> while_body
	mov %arrayBase_84 %varDef_290
	mov %idVal_85 %varDef_319
	%offset_86 = mul %idVal_85 8
	%elementAddr_87 = add %arrayBase_84 %offset_86
	%elementVal_88 = load %elementAddr_87
	mov %varDef_324 %elementVal_88
	mov %arrayBase_89 %varDef_291
	mov %idVal_90 %varDef_319
	%offset_91 = mul %idVal_90 8
	%elementAddr_92 = add %arrayBase_89 %offset_91
	%elementVal_93 = load %elementAddr_92
	mov %varDef_325 %elementVal_93
	mov %arrayBase_94 %varDef_296
	mov %idVal_95 %varDef_324
	%offset_96 = mul %idVal_95 8
	%elementAddr_97 = add %arrayBase_94 %offset_96
	%arrayBase_98 = load %elementAddr_97
	mov %idVal_99 %varDef_325
	%offset_100 = mul %idVal_99 8
	%elementAddr_101 = add %arrayBase_98 %offset_100
	%elementVal_102 = load %elementAddr_101
	mov %varDef_326 %elementVal_102
	mov %varDef_327 0
	br <12>

<12> for_cond
	%varDef_328 = phi <10> %varDef_328 <14> %varDef_340
	%varDef_329 = phi <10> %varDef_329 <14> %varDef_339
	%varDef_330 = phi <10> %varDef_330 <14> %varDef_345
	%varDef_331 = phi <10> %varDef_331 <14> %varDef_344
	%varDef_332 = phi <10> %varDef_332 <14> %varDef_341
	%varDef_333 = phi <10> %varDef_333 <14> %varDef_353
	%varDef_334 = phi <10> %varDef_334 <14> %varDef_354
	%varDef_335 = phi <10> %varDef_335 <14> %varDef_355
	%varDef_336 = phi <10> %varDef_317 <14> %varDef_356
	%varDef_337 = phi <10> %varDef_318 <14> %varDef_357
	%varDef_338 = phi <10> %varDef_327 <14> %varDef_358
	mov %idVal_103 %varDef_338
	%res_104 = lt %idVal_103 8
	br %res_104 <13> <15>

<13> for_body
	mov %idVal_105 %varDef_324
	mov %arrayBase_106 %varDef_292
	mov %idVal_107 %varDef_338
	%offset_108 = mul %idVal_107 8
	%elementAddr_109 = add %arrayBase_106 %offset_108
	%elementVal_110 = load %elementAddr_109
	%res_111 = add %idVal_105 %elementVal_110
	mov %idVal_112 %varDef_325
	mov %arrayBase_113 %varDef_293
	mov %idVal_114 %varDef_338
	%offset_115 = mul %idVal_114 8
	%elementAddr_116 = add %arrayBase_113 %offset_115
	%elementVal_117 = load %elementAddr_116
	%res_118 = add %idVal_112 %elementVal_117
	mov %varDef_339 %res_111
	mov %varDef_340 %res_118
	mov %cidVal_156 %varDef_339
	mov %varDef_341 %cidVal_156
	mov %cidVal_203 %varDef_341
	mov %cidVal_204 %varDef_299
	%cres_205 = lt %cidVal_203 %cidVal_204
	br %cres_205 <34> <36>

<34> clhs_true
	mov %cidVal_206 %varDef_341
	%cres_207 = ge %cidVal_206 0
	br %cres_207 <35> <36>

<35> cbool_true
	mov %varDef_342 1
	br <37>

<36> cbool_false
	mov %varDef_343 0
	br <37>

<37> cbool_merge
	%varDef_344 = phi <35> %varDef_342 <36> %varDef_343
	mov %cboolVal_208 %varDef_344
	mov %varDef_345 %cboolVal_208
	mov %cres_157 %varDef_345
	br %cres_157 <25> <14>

<25> clhs_true
	mov %cidVal_158 %varDef_340
	mov %varDef_346 %cidVal_158
	mov %cidVal_212 %varDef_346
	mov %cidVal_213 %varDef_299
	%cres_214 = lt %cidVal_212 %cidVal_213
	br %cres_214 <40> <42>

<40> clhs_true
	mov %cidVal_215 %varDef_346
	%cres_216 = ge %cidVal_215 0
	br %cres_216 <41> <42>

<41> cbool_true
	mov %varDef_347 1
	br <43>

<42> cbool_false
	mov %varDef_348 0
	br <43>

<43> cbool_merge
	%varDef_349 = phi <41> %varDef_347 <42> %varDef_348
	mov %cboolVal_217 %varDef_349
	mov %varDef_350 %cboolVal_217
	mov %cres_159 %varDef_350
	br %cres_159 <26> <14>

<26> clhs_true
	mov %carrayBase_160 %varDef_296
	mov %cidVal_161 %varDef_339
	%coffset_162 = mul %cidVal_161 8
	%celementAddr_163 = add %carrayBase_160 %coffset_162
	%carrayBase_164 = load %celementAddr_163
	mov %cidVal_165 %varDef_340
	%coffset_166 = mul %cidVal_165 8
	%celementAddr_167 = add %carrayBase_164 %coffset_166
	%celementVal_168 = load %celementAddr_167
	%cres_169 = neg 1
	%cres_170 = eq %celementVal_168 %cres_169
	br %cres_170 <27> <14>

<27> cif_true
	mov %cidVal_171 %varDef_336
	mov %coldVal_172 %varDef_336
	%cnewVal_173 = inc %coldVal_172
	mov %varDef_351 %cnewVal_173
	mov %cidVal_174 %varDef_339
	mov %carrayBase_175 %varDef_290
	mov %cidVal_176 %varDef_351
	%coffset_177 = mul %cidVal_176 8
	%celementAddr_178 = add %carrayBase_175 %coffset_177
	store %cidVal_174 %celementAddr_178
	mov %cidVal_179 %varDef_340
	mov %carrayBase_180 %varDef_291
	mov %cidVal_181 %varDef_351
	%coffset_182 = mul %cidVal_181 8
	%celementAddr_183 = add %carrayBase_180 %coffset_182
	store %cidVal_179 %celementAddr_183
	mov %cidVal_184 %varDef_326
	%cres_185 = add %cidVal_184 1
	mov %carrayBase_186 %varDef_296
	mov %cidVal_187 %varDef_339
	%coffset_188 = mul %cidVal_187 8
	%celementAddr_189 = add %carrayBase_186 %coffset_188
	%carrayBase_190 = load %celementAddr_189
	mov %cidVal_191 %varDef_340
	%coffset_192 = mul %cidVal_191 8
	%celementAddr_193 = add %carrayBase_190 %coffset_192
	store %cres_185 %celementAddr_193
	mov %cidVal_194 %varDef_339
	mov %cidVal_195 %varDef_301
	%cres_196 = eq %cidVal_194 %cidVal_195
	br %cres_196 <28> <14>

<28> clhs_true
	mov %cidVal_197 %varDef_340
	mov %cidVal_198 %varDef_300
	%cres_199 = eq %cidVal_197 %cidVal_198
	br %cres_199 <29> <14>

<29> cif_true
	mov %varDef_352 1
	br <14>

<14> for_step
	%varDef_353 = phi <37> %varDef_333 <43> %varDef_350 <26> %varDef_350 <27> %varDef_350 <28> %varDef_350 <29> %varDef_350
	%varDef_354 = phi <37> %varDef_334 <43> %varDef_349 <26> %varDef_349 <27> %varDef_349 <28> %varDef_349 <29> %varDef_349
	%varDef_355 = phi <37> %varDef_335 <43> %varDef_346 <26> %varDef_346 <27> %varDef_346 <28> %varDef_346 <29> %varDef_346
	%varDef_356 = phi <37> %varDef_336 <43> %varDef_336 <26> %varDef_336 <27> %varDef_351 <28> %varDef_351 <29> %varDef_351
	%varDef_357 = phi <37> %varDef_337 <43> %varDef_337 <26> %varDef_337 <27> %varDef_337 <28> %varDef_337 <29> %varDef_352
	mov %idVal_119 %varDef_338
	mov %oldVal_120 %varDef_338
	%newVal_121 = inc %oldVal_120
	mov %varDef_358 %newVal_121
	br <12>

<15> for_end
	mov %idVal_122 %varDef_337
	%res_123 = eq %idVal_122 1
	br %res_123 <11> <17>

<17> if_merge
	mov %idVal_124 %varDef_319
	mov %oldVal_125 %varDef_319
	%newVal_126 = inc %oldVal_125
	mov %varDef_359 %newVal_126
	br <9>

<11> while_end
	%varDef_360 = phi <9> %varDef_328 <15> %varDef_328
	%varDef_361 = phi <9> %varDef_329 <15> %varDef_329
	%varDef_362 = phi <9> %varDef_330 <15> %varDef_330
	%varDef_363 = phi <9> %varDef_331 <15> %varDef_331
	%varDef_364 = phi <9> %varDef_332 <15> %varDef_332
	%varDef_365 = phi <9> %varDef_333 <15> %varDef_333
	%varDef_366 = phi <9> %varDef_334 <15> %varDef_334
	%varDef_367 = phi <9> %varDef_335 <15> %varDef_335
	%varDef_368 = phi <9> %varDef_317 <15> %varDef_336
	%varDef_369 = phi <9> %varDef_318 <15> %varDef_337
	%varDef_370 = phi <9> %varDef_320 <15> %varDef_338
	%varDef_371 = phi <9> %varDef_321 <15> %varDef_326
	%varDef_372 = phi <9> %varDef_322 <15> %varDef_324
	%varDef_373 = phi <9> %varDef_323 <15> %varDef_325
	mov %idVal_127 %varDef_369
	%res_128 = eq %idVal_127 1
	br %res_128 <18> <19>

<18> if_true
	mov %arrayBase_129 %varDef_296
	mov %idVal_130 %varDef_301
	%offset_131 = mul %idVal_130 8
	%elementAddr_132 = add %arrayBase_129 %offset_131
	%arrayBase_133 = load %elementAddr_132
	mov %idVal_134 %varDef_300
	%offset_135 = mul %idVal_134 8
	%elementAddr_136 = add %arrayBase_133 %offset_135
	%elementVal_137 = load %elementAddr_136
	__printlnInt ( %elementVal_137 )
	br <20>

<19> if_false
	print ( $str_0 )
	br <20>

<20> if_merge
	mov %tmp_259 %varDef_292
	store %tmp_259 @dx
	mov %tmp_260 %varDef_300
	store %tmp_260 @targety
	mov %tmp_261 %varDef_368
	store %tmp_261 @tail
	mov %tmp_262 %varDef_369
	store %tmp_262 @ok
	mov %tmp_263 %varDef_290
	store %tmp_263 @xlist
	mov %tmp_264 %varDef_291
	store %tmp_264 @ylist
	mov %tmp_265 %varDef_319
	store %tmp_265 @head
	mov %tmp_266 %varDef_370
	store %tmp_266 @j
	mov %tmp_267 %varDef_371
	store %tmp_267 @now
	mov %tmp_268 %varDef_299
	store %tmp_268 @N
	mov %tmp_269 %varDef_301
	store %tmp_269 @targetx
	mov %tmp_270 %varDef_304
	store %tmp_270 @i
	mov %tmp_271 %varDef_372
	store %tmp_271 @x
	mov %tmp_272 %varDef_373
	store %tmp_272 @y
	mov %tmp_273 %varDef_293
	store %tmp_273 @dy
	ret 0

}

