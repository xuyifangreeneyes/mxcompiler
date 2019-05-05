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
	%tmp_23 = load @ylist
	mov %varDef_28 %tmp_23
	%tmp_22 = load @xlist
	mov %varDef_29 %tmp_22
	%tmp_21 = load @dx
	mov %varDef_30 %tmp_21
	%tmp_20 = load @dy
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
	mov %tmp_24 %varDef_35
	store %tmp_24 @dy
	mov %tmp_25 %varDef_34
	store %tmp_25 @dx
	mov %tmp_26 %varDef_32
	store %tmp_26 @xlist
	mov %tmp_27 %varDef_33
	store %tmp_27 @ylist
	ret 

}

define origin ( %argVal_0 ) {
<0> entry
	%tmp_45 = load @head
	mov %varDef_51 %tmp_45
	%tmp_44 = load @step
	mov %varDef_52 %tmp_44
	%tmp_43 = load @tail
	mov %varDef_53 %tmp_43
	%tmp_42 = load @j
	mov %varDef_54 %tmp_42
	%tmp_41 = load @i
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
	%varDef_62 = phi <0> %varDef_54 <3> %varDef_64
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
	mov %tmp_46 %varDef_61
	store %tmp_46 @i
	mov %tmp_47 %varDef_62
	store %tmp_47 @j
	mov %tmp_48 %varDef_58
	store %tmp_48 @tail
	mov %tmp_49 %varDef_59
	store %tmp_49 @step
	mov %tmp_50 %varDef_57
	store %tmp_50 @head
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
	%tmp_83 = load @targetx
	mov %varDef_86 %tmp_83
	%tmp_82 = load @ylist
	mov %varDef_87 %tmp_82
	%tmp_81 = load @ok
	mov %varDef_88 %tmp_81
	%tmp_80 = load @tail
	mov %varDef_89 %tmp_80
	%tmp_79 = load @step
	mov %varDef_90 %tmp_79
	%tmp_78 = load @now
	mov %varDef_91 %tmp_78
	%tmp_77 = load @N
	mov %varDef_92 %tmp_77
	%tmp_76 = load @xlist
	mov %varDef_93 %tmp_76
	%tmp_75 = load @targety
	mov %varDef_94 %tmp_75
	mov %varDef_95 %argVal_0
	mov %varDef_96 %argVal_2
	mov %idVal_5 %varDef_95
	br <9>

<9> centry
	mov %varDef_97 %idVal_5
	mov %cidVal_51 %varDef_97
	mov %cidVal_52 %varDef_92
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
	mov %cidVal_61 %varDef_92
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
	mov %arrayBase_8 %varDef_90
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
	mov %idVal_19 %varDef_89
	mov %oldVal_20 %varDef_89
	%newVal_21 = inc %oldVal_20
	mov %varDef_107 %newVal_21
	mov %idVal_22 %varDef_95
	mov %arrayBase_23 %varDef_93
	mov %idVal_24 %varDef_107
	%offset_25 = mul %idVal_24 8
	%elementAddr_26 = add %arrayBase_23 %offset_25
	store %idVal_22 %elementAddr_26
	mov %idVal_27 %varDef_96
	mov %arrayBase_28 %varDef_87
	mov %idVal_29 %varDef_107
	%offset_30 = mul %idVal_29 8
	%elementAddr_31 = add %arrayBase_28 %offset_30
	store %idVal_27 %elementAddr_31
	mov %idVal_32 %varDef_91
	%res_33 = add %idVal_32 1
	mov %arrayBase_34 %varDef_90
	mov %idVal_35 %varDef_95
	%offset_36 = mul %idVal_35 8
	%elementAddr_37 = add %arrayBase_34 %offset_36
	%arrayBase_38 = load %elementAddr_37
	mov %idVal_39 %varDef_96
	%offset_40 = mul %idVal_39 8
	%elementAddr_41 = add %arrayBase_38 %offset_40
	store %res_33 %elementAddr_41
	mov %idVal_42 %varDef_95
	mov %idVal_43 %varDef_86
	%res_44 = eq %idVal_42 %idVal_43
	br %res_44 <7> <2>

<7> lhs_true
	mov %idVal_45 %varDef_96
	mov %idVal_46 %varDef_94
	%res_47 = eq %idVal_45 %idVal_46
	br %res_47 <5> <2>

<5> if_true
	mov %varDef_108 1
	br <2>

<2> if_merge
	%varDef_109 = phi <13> 0 <19> %varDef_106 <3> %varDef_106 <1> %varDef_106 <7> %varDef_106 <5> %varDef_106
	%varDef_110 = phi <13> 0 <19> %varDef_105 <3> %varDef_105 <1> %varDef_105 <7> %varDef_105 <5> %varDef_105
	%varDef_111 = phi <13> 0 <19> %varDef_102 <3> %varDef_102 <1> %varDef_102 <7> %varDef_102 <5> %varDef_102
	%varDef_112 = phi <13> %varDef_89 <19> %varDef_89 <3> %varDef_89 <1> %varDef_107 <7> %varDef_107 <5> %varDef_107
	%varDef_113 = phi <13> %varDef_88 <19> %varDef_88 <3> %varDef_88 <1> %varDef_88 <7> %varDef_88 <5> %varDef_108
	mov %tmp_84 %varDef_112
	store %tmp_84 @tail
	mov %tmp_85 %varDef_113
	store %tmp_85 @ok
	ret 

}

define main ( ) {
<0> entry
	%tmp_268 = load @head
	mov %varDef_281 %tmp_268
	%tmp_267 = load @targetx
	mov %varDef_282 %tmp_267
	%tmp_266 = load @ylist
	mov %varDef_283 %tmp_266
	%tmp_265 = load @step
	mov %varDef_284 %tmp_265
	%tmp_264 = load @j
	mov %varDef_285 %tmp_264
	%tmp_263 = load @x
	mov %varDef_286 %tmp_263
	%tmp_262 = load @i
	mov %varDef_287 %tmp_262
	%tmp_261 = load @dx
	mov %varDef_288 %tmp_261
	%tmp_260 = load @y
	mov %varDef_289 %tmp_260
	%tmp_259 = load @dy
	mov %varDef_290 %tmp_259
	%tmp_258 = load @targety
	mov %varDef_291 %tmp_258
	%tmp_257 = load @ok
	mov %varDef_292 %tmp_257
	%tmp_256 = load @tail
	mov %varDef_293 %tmp_256
	%tmp_255 = load @now
	mov %varDef_294 %tmp_255
	%tmp_254 = load @N
	mov %varDef_295 %tmp_254
	%tmp_253 = load @xlist
	mov %varDef_296 %tmp_253
	br <22>

<22> centry
	mov %varDef_297 106
	mov %varDef_298 0
	mov %varDef_299 0
	mov %cidVal_139 %varDef_297
	%cmemberLength_140 = mul %cidVal_139 8
	%carrayLength_141 = add %cmemberLength_140 8
	%carrayPtr_142 = malloc %carrayLength_141
	store %cidVal_139 %carrayPtr_142
	%carrayBase_143 = add %carrayPtr_142 8
	mov %varDef_300 %carrayBase_143
	mov %varDef_301 0
	br <23>

<23> cfor_cond
	%varDef_302 = phi <22> %varDef_301 <29> %varDef_307
	%varDef_303 = phi <22> %varDef_285 <29> %varDef_305
	mov %cidVal_144 %varDef_302
	mov %cidVal_145 %varDef_297
	%cres_146 = lt %cidVal_144 %cidVal_145
	br %cres_146 <24> <21>

<24> cfor_body
	mov %cidVal_147 %varDef_297
	%cmemberLength_148 = mul %cidVal_147 8
	%carrayLength_149 = add %cmemberLength_148 8
	%carrayPtr_150 = malloc %carrayLength_149
	store %cidVal_147 %carrayPtr_150
	%carrayBase_151 = add %carrayPtr_150 8
	mov %carrayBase_152 %varDef_300
	mov %cidVal_153 %varDef_302
	%coffset_154 = mul %cidVal_153 8
	%celementAddr_155 = add %carrayBase_152 %coffset_154
	store %carrayBase_151 %celementAddr_155
	mov %varDef_304 0
	br <25>

<25> cfor_cond
	%varDef_305 = phi <24> %varDef_304 <26> %varDef_306
	mov %cidVal_156 %varDef_305
	mov %cidVal_157 %varDef_297
	%cres_158 = lt %cidVal_156 %cidVal_157
	br %cres_158 <26> <29>

<26> cfor_body
	mov %carrayBase_159 %varDef_300
	mov %cidVal_160 %varDef_302
	%coffset_161 = mul %cidVal_160 8
	%celementAddr_162 = add %carrayBase_159 %coffset_161
	%carrayBase_163 = load %celementAddr_162
	mov %cidVal_164 %varDef_305
	%coffset_165 = mul %cidVal_164 8
	%celementAddr_166 = add %carrayBase_163 %coffset_165
	store 0 %celementAddr_166
	mov %cidVal_167 %varDef_305
	mov %coldVal_168 %varDef_305
	%cnewVal_169 = inc %coldVal_168
	mov %varDef_306 %cnewVal_169
	br <25>

<29> cfor_step
	mov %cidVal_170 %varDef_302
	mov %coldVal_171 %varDef_302
	%cnewVal_172 = inc %coldVal_171
	mov %varDef_307 %cnewVal_172
	br <23>

<21> after_call
	%res_0 = getInt ( )
	mov %varDef_308 %res_0
	mov %idVal_1 %varDef_308
	%res_2 = sub %idVal_1 1
	mov %varDef_309 %res_2
	mov %idVal_3 %varDef_309
	mov %varDef_310 %idVal_3
	mov %varDef_311 0
	br <1>

<1> for_cond
	%varDef_312 = phi <21> %varDef_311 <3> %varDef_317
	%varDef_313 = phi <21> %varDef_303 <3> %varDef_315
	mov %idVal_4 %varDef_312
	mov %idVal_5 %varDef_308
	%res_6 = lt %idVal_4 %idVal_5
	br %res_6 <2> <4>

<2> for_body
	mov %varDef_314 0
	br <5>

<5> for_cond
	%varDef_315 = phi <2> %varDef_314 <6> %varDef_316
	mov %idVal_7 %varDef_315
	mov %idVal_8 %varDef_308
	%res_9 = lt %idVal_7 %idVal_8
	br %res_9 <6> <3>

<6> for_body
	%res_10 = neg 1
	mov %arrayBase_11 %varDef_300
	mov %idVal_12 %varDef_312
	%offset_13 = mul %idVal_12 8
	%elementAddr_14 = add %arrayBase_11 %offset_13
	%arrayBase_15 = load %elementAddr_14
	mov %idVal_16 %varDef_315
	%offset_17 = mul %idVal_16 8
	%elementAddr_18 = add %arrayBase_15 %offset_17
	store %res_10 %elementAddr_18
	mov %idVal_19 %varDef_315
	mov %oldVal_20 %varDef_315
	%newVal_21 = inc %oldVal_20
	mov %varDef_316 %newVal_21
	br <5>

<3> for_step
	mov %idVal_22 %varDef_312
	mov %oldVal_23 %varDef_312
	%newVal_24 = inc %oldVal_23
	mov %varDef_317 %newVal_24
	br <1>

<4> for_end
	%res_25 = neg 2
	mov %arrayBase_26 %varDef_288
	%offset_27 = mul 0 8
	%elementAddr_28 = add %arrayBase_26 %offset_27
	store %res_25 %elementAddr_28
	%res_29 = neg 1
	mov %arrayBase_30 %varDef_290
	%offset_31 = mul 0 8
	%elementAddr_32 = add %arrayBase_30 %offset_31
	store %res_29 %elementAddr_32
	%res_33 = neg 2
	mov %arrayBase_34 %varDef_288
	%offset_35 = mul 1 8
	%elementAddr_36 = add %arrayBase_34 %offset_35
	store %res_33 %elementAddr_36
	mov %arrayBase_37 %varDef_290
	%offset_38 = mul 1 8
	%elementAddr_39 = add %arrayBase_37 %offset_38
	store 1 %elementAddr_39
	mov %arrayBase_40 %varDef_288
	%offset_41 = mul 2 8
	%elementAddr_42 = add %arrayBase_40 %offset_41
	store 2 %elementAddr_42
	%res_43 = neg 1
	mov %arrayBase_44 %varDef_290
	%offset_45 = mul 2 8
	%elementAddr_46 = add %arrayBase_44 %offset_45
	store %res_43 %elementAddr_46
	mov %arrayBase_47 %varDef_288
	%offset_48 = mul 3 8
	%elementAddr_49 = add %arrayBase_47 %offset_48
	store 2 %elementAddr_49
	mov %arrayBase_50 %varDef_290
	%offset_51 = mul 3 8
	%elementAddr_52 = add %arrayBase_50 %offset_51
	store 1 %elementAddr_52
	%res_53 = neg 1
	mov %arrayBase_54 %varDef_288
	%offset_55 = mul 4 8
	%elementAddr_56 = add %arrayBase_54 %offset_55
	store %res_53 %elementAddr_56
	%res_57 = neg 2
	mov %arrayBase_58 %varDef_290
	%offset_59 = mul 4 8
	%elementAddr_60 = add %arrayBase_58 %offset_59
	store %res_57 %elementAddr_60
	%res_61 = neg 1
	mov %arrayBase_62 %varDef_288
	%offset_63 = mul 5 8
	%elementAddr_64 = add %arrayBase_62 %offset_63
	store %res_61 %elementAddr_64
	mov %arrayBase_65 %varDef_290
	%offset_66 = mul 5 8
	%elementAddr_67 = add %arrayBase_65 %offset_66
	store 2 %elementAddr_67
	mov %arrayBase_68 %varDef_288
	%offset_69 = mul 6 8
	%elementAddr_70 = add %arrayBase_68 %offset_69
	store 1 %elementAddr_70
	%res_71 = neg 2
	mov %arrayBase_72 %varDef_290
	%offset_73 = mul 6 8
	%elementAddr_74 = add %arrayBase_72 %offset_73
	store %res_71 %elementAddr_74
	mov %arrayBase_75 %varDef_288
	%offset_76 = mul 7 8
	%elementAddr_77 = add %arrayBase_75 %offset_76
	store 1 %elementAddr_77
	mov %arrayBase_78 %varDef_290
	%offset_79 = mul 7 8
	%elementAddr_80 = add %arrayBase_78 %offset_79
	store 2 %elementAddr_80
	br <9>

<9> while_cond
	%varDef_318 = phi <4> 0 <17> %varDef_337
	%varDef_319 = phi <4> 0 <17> %varDef_338
	%varDef_320 = phi <4> 0 <17> %varDef_339
	%varDef_321 = phi <4> 0 <17> %varDef_340
	%varDef_322 = phi <4> 0 <17> %varDef_341
	%varDef_323 = phi <4> 0 <17> %varDef_342
	%varDef_324 = phi <4> 0 <17> %varDef_343
	%varDef_325 = phi <4> 0 <17> %varDef_344
	%varDef_326 = phi <4> %varDef_294 <17> %varDef_335
	%varDef_327 = phi <4> %varDef_299 <17> %varDef_345
	%varDef_328 = phi <4> %varDef_292 <17> %varDef_346
	%varDef_329 = phi <4> %varDef_289 <17> %varDef_334
	%varDef_330 = phi <4> %varDef_286 <17> %varDef_333
	%varDef_331 = phi <4> %varDef_313 <17> %varDef_347
	%varDef_332 = phi <4> %varDef_298 <17> %varDef_368
	mov %idVal_81 %varDef_332
	mov %idVal_82 %varDef_327
	%res_83 = le %idVal_81 %idVal_82
	br %res_83 <10> <11>

<10> while_body
	mov %arrayBase_84 %varDef_296
	mov %idVal_85 %varDef_332
	%offset_86 = mul %idVal_85 8
	%elementAddr_87 = add %arrayBase_84 %offset_86
	%elementVal_88 = load %elementAddr_87
	mov %varDef_333 %elementVal_88
	mov %arrayBase_89 %varDef_283
	mov %idVal_90 %varDef_332
	%offset_91 = mul %idVal_90 8
	%elementAddr_92 = add %arrayBase_89 %offset_91
	%elementVal_93 = load %elementAddr_92
	mov %varDef_334 %elementVal_93
	mov %arrayBase_94 %varDef_300
	mov %idVal_95 %varDef_333
	%offset_96 = mul %idVal_95 8
	%elementAddr_97 = add %arrayBase_94 %offset_96
	%arrayBase_98 = load %elementAddr_97
	mov %idVal_99 %varDef_334
	%offset_100 = mul %idVal_99 8
	%elementAddr_101 = add %arrayBase_98 %offset_100
	%elementVal_102 = load %elementAddr_101
	mov %varDef_335 %elementVal_102
	mov %varDef_336 0
	br <12>

<12> for_cond
	%varDef_337 = phi <10> %varDef_318 <14> %varDef_349
	%varDef_338 = phi <10> %varDef_319 <14> %varDef_348
	%varDef_339 = phi <10> %varDef_320 <14> %varDef_354
	%varDef_340 = phi <10> %varDef_321 <14> %varDef_353
	%varDef_341 = phi <10> %varDef_322 <14> %varDef_350
	%varDef_342 = phi <10> %varDef_323 <14> %varDef_362
	%varDef_343 = phi <10> %varDef_324 <14> %varDef_363
	%varDef_344 = phi <10> %varDef_325 <14> %varDef_364
	%varDef_345 = phi <10> %varDef_327 <14> %varDef_365
	%varDef_346 = phi <10> %varDef_328 <14> %varDef_366
	%varDef_347 = phi <10> %varDef_336 <14> %varDef_367
	mov %idVal_103 %varDef_347
	%res_104 = lt %idVal_103 8
	br %res_104 <13> <15>

<13> for_body
	mov %idVal_105 %varDef_333
	mov %arrayBase_106 %varDef_288
	mov %idVal_107 %varDef_347
	%offset_108 = mul %idVal_107 8
	%elementAddr_109 = add %arrayBase_106 %offset_108
	%elementVal_110 = load %elementAddr_109
	%res_111 = add %idVal_105 %elementVal_110
	mov %idVal_112 %varDef_334
	mov %arrayBase_113 %varDef_290
	mov %idVal_114 %varDef_347
	%offset_115 = mul %idVal_114 8
	%elementAddr_116 = add %arrayBase_113 %offset_115
	%elementVal_117 = load %elementAddr_116
	%res_118 = add %idVal_112 %elementVal_117
	mov %varDef_348 %res_111
	mov %varDef_349 %res_118
	mov %cidVal_175 %varDef_348
	mov %varDef_350 %cidVal_175
	mov %cidVal_222 %varDef_350
	mov %cidVal_223 %varDef_308
	%cres_224 = lt %cidVal_222 %cidVal_223
	br %cres_224 <42> <44>

<42> clhs_true
	mov %cidVal_225 %varDef_350
	%cres_226 = ge %cidVal_225 0
	br %cres_226 <43> <44>

<43> cbool_true
	mov %varDef_351 1
	br <45>

<44> cbool_false
	mov %varDef_352 0
	br <45>

<45> cbool_merge
	%varDef_353 = phi <43> %varDef_351 <44> %varDef_352
	mov %cboolVal_227 %varDef_353
	mov %varDef_354 %cboolVal_227
	mov %cres_176 %varDef_354
	br %cres_176 <33> <14>

<33> clhs_true
	mov %cidVal_177 %varDef_349
	mov %varDef_355 %cidVal_177
	mov %cidVal_231 %varDef_355
	mov %cidVal_232 %varDef_308
	%cres_233 = lt %cidVal_231 %cidVal_232
	br %cres_233 <48> <50>

<48> clhs_true
	mov %cidVal_234 %varDef_355
	%cres_235 = ge %cidVal_234 0
	br %cres_235 <49> <50>

<49> cbool_true
	mov %varDef_356 1
	br <51>

<50> cbool_false
	mov %varDef_357 0
	br <51>

<51> cbool_merge
	%varDef_358 = phi <49> %varDef_356 <50> %varDef_357
	mov %cboolVal_236 %varDef_358
	mov %varDef_359 %cboolVal_236
	mov %cres_178 %varDef_359
	br %cres_178 <34> <14>

<34> clhs_true
	mov %carrayBase_179 %varDef_300
	mov %cidVal_180 %varDef_348
	%coffset_181 = mul %cidVal_180 8
	%celementAddr_182 = add %carrayBase_179 %coffset_181
	%carrayBase_183 = load %celementAddr_182
	mov %cidVal_184 %varDef_349
	%coffset_185 = mul %cidVal_184 8
	%celementAddr_186 = add %carrayBase_183 %coffset_185
	%celementVal_187 = load %celementAddr_186
	%cres_188 = neg 1
	%cres_189 = eq %celementVal_187 %cres_188
	br %cres_189 <35> <14>

<35> cif_true
	mov %cidVal_190 %varDef_345
	mov %coldVal_191 %varDef_345
	%cnewVal_192 = inc %coldVal_191
	mov %varDef_360 %cnewVal_192
	mov %cidVal_193 %varDef_348
	mov %carrayBase_194 %varDef_296
	mov %cidVal_195 %varDef_360
	%coffset_196 = mul %cidVal_195 8
	%celementAddr_197 = add %carrayBase_194 %coffset_196
	store %cidVal_193 %celementAddr_197
	mov %cidVal_198 %varDef_349
	mov %carrayBase_199 %varDef_283
	mov %cidVal_200 %varDef_360
	%coffset_201 = mul %cidVal_200 8
	%celementAddr_202 = add %carrayBase_199 %coffset_201
	store %cidVal_198 %celementAddr_202
	mov %cidVal_203 %varDef_335
	%cres_204 = add %cidVal_203 1
	mov %carrayBase_205 %varDef_300
	mov %cidVal_206 %varDef_348
	%coffset_207 = mul %cidVal_206 8
	%celementAddr_208 = add %carrayBase_205 %coffset_207
	%carrayBase_209 = load %celementAddr_208
	mov %cidVal_210 %varDef_349
	%coffset_211 = mul %cidVal_210 8
	%celementAddr_212 = add %carrayBase_209 %coffset_211
	store %cres_204 %celementAddr_212
	mov %cidVal_213 %varDef_348
	mov %cidVal_214 %varDef_310
	%cres_215 = eq %cidVal_213 %cidVal_214
	br %cres_215 <36> <14>

<36> clhs_true
	mov %cidVal_216 %varDef_349
	mov %cidVal_217 %varDef_309
	%cres_218 = eq %cidVal_216 %cidVal_217
	br %cres_218 <37> <14>

<37> cif_true
	mov %varDef_361 1
	br <14>

<14> for_step
	%varDef_362 = phi <45> %varDef_342 <51> %varDef_359 <34> %varDef_359 <35> %varDef_359 <36> %varDef_359 <37> %varDef_359
	%varDef_363 = phi <45> %varDef_343 <51> %varDef_358 <34> %varDef_358 <35> %varDef_358 <36> %varDef_358 <37> %varDef_358
	%varDef_364 = phi <45> %varDef_344 <51> %varDef_355 <34> %varDef_355 <35> %varDef_355 <36> %varDef_355 <37> %varDef_355
	%varDef_365 = phi <45> %varDef_345 <51> %varDef_345 <34> %varDef_345 <35> %varDef_360 <36> %varDef_360 <37> %varDef_360
	%varDef_366 = phi <45> %varDef_346 <51> %varDef_346 <34> %varDef_346 <35> %varDef_346 <36> %varDef_346 <37> %varDef_361
	mov %idVal_119 %varDef_347
	mov %oldVal_120 %varDef_347
	%newVal_121 = inc %oldVal_120
	mov %varDef_367 %newVal_121
	br <12>

<15> for_end
	mov %idVal_122 %varDef_346
	%res_123 = eq %idVal_122 1
	br %res_123 <11> <17>

<17> if_merge
	mov %idVal_124 %varDef_332
	mov %oldVal_125 %varDef_332
	%newVal_126 = inc %oldVal_125
	mov %varDef_368 %newVal_126
	br <9>

<11> while_end
	%varDef_369 = phi <9> %varDef_318 <15> %varDef_337
	%varDef_370 = phi <9> %varDef_319 <15> %varDef_338
	%varDef_371 = phi <9> %varDef_320 <15> %varDef_339
	%varDef_372 = phi <9> %varDef_321 <15> %varDef_340
	%varDef_373 = phi <9> %varDef_322 <15> %varDef_341
	%varDef_374 = phi <9> %varDef_323 <15> %varDef_342
	%varDef_375 = phi <9> %varDef_324 <15> %varDef_343
	%varDef_376 = phi <9> %varDef_325 <15> %varDef_344
	%varDef_377 = phi <9> %varDef_326 <15> %varDef_335
	%varDef_378 = phi <9> %varDef_327 <15> %varDef_345
	%varDef_379 = phi <9> %varDef_328 <15> %varDef_346
	%varDef_380 = phi <9> %varDef_329 <15> %varDef_334
	%varDef_381 = phi <9> %varDef_330 <15> %varDef_333
	%varDef_382 = phi <9> %varDef_331 <15> %varDef_347
	mov %idVal_127 %varDef_379
	%res_128 = eq %idVal_127 1
	br %res_128 <18> <19>

<18> if_true
	mov %arrayBase_129 %varDef_300
	mov %idVal_130 %varDef_310
	%offset_131 = mul %idVal_130 8
	%elementAddr_132 = add %arrayBase_129 %offset_131
	%arrayBase_133 = load %elementAddr_132
	mov %idVal_134 %varDef_309
	%offset_135 = mul %idVal_134 8
	%elementAddr_136 = add %arrayBase_133 %offset_135
	%elementVal_137 = load %elementAddr_136
	__printlnInt ( %elementVal_137 )
	br <20>

<19> if_false
	print ( $str_0 )
	br <20>

<20> if_merge
	mov %tmp_269 %varDef_308
	store %tmp_269 @N
	mov %tmp_270 %varDef_377
	store %tmp_270 @now
	mov %tmp_271 %varDef_378
	store %tmp_271 @tail
	mov %tmp_272 %varDef_379
	store %tmp_272 @ok
	mov %tmp_273 %varDef_309
	store %tmp_273 @targety
	mov %tmp_274 %varDef_380
	store %tmp_274 @y
	mov %tmp_275 %varDef_312
	store %tmp_275 @i
	mov %tmp_276 %varDef_381
	store %tmp_276 @x
	mov %tmp_277 %varDef_382
	store %tmp_277 @j
	mov %tmp_278 %varDef_300
	store %tmp_278 @step
	mov %tmp_279 %varDef_310
	store %tmp_279 @targetx
	mov %tmp_280 %varDef_332
	store %tmp_280 @head
	ret 0

}

