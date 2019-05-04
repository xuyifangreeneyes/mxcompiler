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
	%global2local_15 = alloca 8
	%global2local_14 = alloca 8
	%global2local_13 = alloca 8
	%global2local_12 = alloca 8
	%tmp_19 = load @xlist
	store %tmp_19 %global2local_15
	%tmp_18 = load @dy
	store %tmp_18 %global2local_14
	%tmp_17 = load @dx
	store %tmp_17 %global2local_13
	%tmp_16 = load @ylist
	store %tmp_16 %global2local_12
	%memberLength_1 = mul 12000 8
	%arrayLength_2 = add %memberLength_1 8
	%arrayPtr_0 = malloc %arrayLength_2
	store 12000 %arrayPtr_0
	store %arrayPtr_0 %global2local_15
	%memberLength_4 = mul 12000 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store 12000 %arrayPtr_3
	store %arrayPtr_3 %global2local_12
	%memberLength_7 = mul 8 8
	%arrayLength_8 = add %memberLength_7 8
	%arrayPtr_6 = malloc %arrayLength_8
	store 8 %arrayPtr_6
	store %arrayPtr_6 %global2local_13
	%memberLength_10 = mul 9 8
	%arrayLength_11 = add %memberLength_10 8
	%arrayPtr_9 = malloc %arrayLength_11
	store 9 %arrayPtr_9
	store %arrayPtr_9 %global2local_14
	%tmp_20 = load %global2local_12
	store %tmp_20 @ylist
	%tmp_21 = load %global2local_13
	store %tmp_21 @dx
	%tmp_22 = load %global2local_14
	store %tmp_22 @dy
	%tmp_23 = load %global2local_15
	store %tmp_23 @xlist
	ret 

}

define origin ( %argVal_0 ) {
<0> entry
	%global2local_41 = alloca 8
	%global2local_40 = alloca 8
	%global2local_39 = alloca 8
	%global2local_38 = alloca 8
	%global2local_37 = alloca 8
	%argAddr_1 = alloca 8
	%tmp_46 = load @i
	store %tmp_46 %global2local_41
	%tmp_45 = load @j
	store %tmp_45 %global2local_40
	%tmp_44 = load @step
	store %tmp_44 %global2local_39
	%tmp_43 = load @head
	store %tmp_43 %global2local_38
	%tmp_42 = load @tail
	store %tmp_42 %global2local_37
	store %argVal_0 %argAddr_1
	store 0 %global2local_38
	store 0 %global2local_37
	%idVal_2 = load %argAddr_1
	%memberLength_4 = mul %idVal_2 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store %idVal_2 %arrayPtr_3
	store %arrayPtr_3 %global2local_39
	store 0 %global2local_41
	br <1>

<1> for_cond
	%idVal_6 = load %global2local_41
	%idVal_7 = load %argAddr_1
	%res_8 = lt %idVal_6 %idVal_7
	br %res_8 <2> <4>

<2> for_body
	%idVal_9 = load %argAddr_1
	%memberLength_11 = mul %idVal_9 8
	%arrayLength_12 = add %memberLength_11 8
	%arrayPtr_10 = malloc %arrayLength_12
	store %idVal_9 %arrayPtr_10
	%arrayPtr_13 = load %global2local_39
	%arrayBase_14 = add %arrayPtr_13 8
	%idVal_15 = load %global2local_41
	%offset_16 = mul %idVal_15 8
	%elementAddr_17 = add %arrayBase_14 %offset_16
	store %arrayPtr_10 %elementAddr_17
	store 0 %global2local_40
	br <5>

<5> for_cond
	%idVal_18 = load %global2local_40
	%idVal_19 = load %argAddr_1
	%res_20 = lt %idVal_18 %idVal_19
	br %res_20 <6> <8>

<6> for_body
	%arrayPtr_21 = load %global2local_39
	%arrayBase_22 = add %arrayPtr_21 8
	%idVal_23 = load %global2local_41
	%offset_24 = mul %idVal_23 8
	%elementAddr_25 = add %arrayBase_22 %offset_24
	%arrayPtr_26 = load %elementAddr_25
	%arrayBase_27 = add %arrayPtr_26 8
	%idVal_28 = load %global2local_40
	%offset_29 = mul %idVal_28 8
	%elementAddr_30 = add %arrayBase_27 %offset_29
	store 0 %elementAddr_30
	br <7>

<7> for_step
	%idVal_31 = load %global2local_40
	%oldVal_32 = load %global2local_40
	%newVal_33 = inc %oldVal_32
	store %newVal_33 %global2local_40
	br <5>

<8> for_end
	br <3>

<3> for_step
	%idVal_34 = load %global2local_41
	%oldVal_35 = load %global2local_41
	%newVal_36 = inc %oldVal_35
	store %newVal_36 %global2local_41
	br <1>

<4> for_end
	%tmp_47 = load %global2local_37
	store %tmp_47 @tail
	%tmp_48 = load %global2local_38
	store %tmp_48 @head
	%tmp_49 = load %global2local_39
	store %tmp_49 @step
	%tmp_50 = load %global2local_40
	store %tmp_50 @j
	%tmp_51 = load %global2local_41
	store %tmp_51 @i
	ret 

}

define check ( %argVal_0 ) {
<0> entry
	%global2local_9 = alloca 8
	%boolValAddr_2 = alloca 8
	%argAddr_1 = alloca 8
	%tmp_10 = load @N
	store %tmp_10 %global2local_9
	store %argVal_0 %argAddr_1
	%idVal_3 = load %argAddr_1
	%idVal_4 = load %global2local_9
	%res_5 = lt %idVal_3 %idVal_4
	br %res_5 <4> <2>

<4> lhs_true
	%idVal_6 = load %argAddr_1
	%res_7 = ge %idVal_6 0
	br %res_7 <1> <2>

<1> bool_true
	store 1 %boolValAddr_2
	br <3>

<2> bool_false
	store 0 %boolValAddr_2
	br <3>

<3> bool_merge
	%boolVal_8 = load %boolValAddr_2
	ret %boolVal_8

}

define addList ( %argVal_0 %argVal_2 ) {
<0> entry
	%global2local_80 = alloca 8
	%global2local_79 = alloca 8
	%global2local_78 = alloca 8
	%global2local_77 = alloca 8
	%global2local_76 = alloca 8
	%global2local_75 = alloca 8
	%global2local_74 = alloca 8
	%global2local_73 = alloca 8
	%global2local_72 = alloca 8
	%cargAddr_65 = alloca 8
	%cboolValAddr_64 = alloca 8
	%retValAddr_63 = alloca 8
	%cargAddr_56 = alloca 8
	%cboolValAddr_55 = alloca 8
	%retValAddr_54 = alloca 8
	%argAddr_3 = alloca 8
	%argAddr_1 = alloca 8
	%tmp_89 = load @now
	store %tmp_89 %global2local_80
	%tmp_88 = load @xlist
	store %tmp_88 %global2local_79
	%tmp_87 = load @step
	store %tmp_87 %global2local_78
	%tmp_86 = load @N
	store %tmp_86 %global2local_77
	%tmp_85 = load @targetx
	store %tmp_85 %global2local_76
	%tmp_84 = load @ylist
	store %tmp_84 %global2local_75
	%tmp_83 = load @ok
	store %tmp_83 %global2local_74
	%tmp_82 = load @targety
	store %tmp_82 %global2local_73
	%tmp_81 = load @tail
	store %tmp_81 %global2local_72
	store %argVal_0 %argAddr_1
	store %argVal_2 %argAddr_3
	%idVal_5 = load %argAddr_1
	br <9>

<9> centry
	store %idVal_5 %cargAddr_56
	%cidVal_57 = load %cargAddr_56
	%cidVal_58 = load %global2local_77
	%cres_59 = lt %cidVal_57 %cidVal_58
	br %cres_59 <10> <12>

<10> clhs_true
	%cidVal_60 = load %cargAddr_56
	%cres_61 = ge %cidVal_60 0
	br %cres_61 <11> <12>

<11> cbool_true
	store 1 %cboolValAddr_55
	br <13>

<12> cbool_false
	store 0 %cboolValAddr_55
	br <13>

<13> cbool_merge
	%cboolVal_62 = load %cboolValAddr_55
	store %cboolVal_62 %retValAddr_54
	br <8>

<8> after_call
	%res_4 = load %retValAddr_54
	br %res_4 <4> <2>

<4> lhs_true
	%idVal_7 = load %argAddr_3
	br <15>

<15> centry
	store %idVal_7 %cargAddr_65
	%cidVal_66 = load %cargAddr_65
	%cidVal_67 = load %global2local_77
	%cres_68 = lt %cidVal_66 %cidVal_67
	br %cres_68 <16> <18>

<16> clhs_true
	%cidVal_69 = load %cargAddr_65
	%cres_70 = ge %cidVal_69 0
	br %cres_70 <17> <18>

<17> cbool_true
	store 1 %cboolValAddr_64
	br <19>

<18> cbool_false
	store 0 %cboolValAddr_64
	br <19>

<19> cbool_merge
	%cboolVal_71 = load %cboolValAddr_64
	store %cboolVal_71 %retValAddr_63
	br <14>

<14> after_call
	%res_6 = load %retValAddr_63
	br %res_6 <3> <2>

<3> lhs_true
	%arrayPtr_8 = load %global2local_78
	%arrayBase_9 = add %arrayPtr_8 8
	%idVal_10 = load %argAddr_1
	%offset_11 = mul %idVal_10 8
	%elementAddr_12 = add %arrayBase_9 %offset_11
	%arrayPtr_13 = load %elementAddr_12
	%arrayBase_14 = add %arrayPtr_13 8
	%idVal_15 = load %argAddr_3
	%offset_16 = mul %idVal_15 8
	%elementAddr_17 = add %arrayBase_14 %offset_16
	%elementVal_18 = load %elementAddr_17
	%res_19 = neg 1
	%res_20 = eq %elementVal_18 %res_19
	br %res_20 <1> <2>

<1> if_true
	%idVal_21 = load %global2local_72
	%oldVal_22 = load %global2local_72
	%newVal_23 = inc %oldVal_22
	store %newVal_23 %global2local_72
	%idVal_24 = load %argAddr_1
	%arrayPtr_25 = load %global2local_79
	%arrayBase_26 = add %arrayPtr_25 8
	%idVal_27 = load %global2local_72
	%offset_28 = mul %idVal_27 8
	%elementAddr_29 = add %arrayBase_26 %offset_28
	store %idVal_24 %elementAddr_29
	%idVal_30 = load %argAddr_3
	%arrayPtr_31 = load %global2local_75
	%arrayBase_32 = add %arrayPtr_31 8
	%idVal_33 = load %global2local_72
	%offset_34 = mul %idVal_33 8
	%elementAddr_35 = add %arrayBase_32 %offset_34
	store %idVal_30 %elementAddr_35
	%idVal_36 = load %global2local_80
	%res_37 = add %idVal_36 1
	%arrayPtr_38 = load %global2local_78
	%arrayBase_39 = add %arrayPtr_38 8
	%idVal_40 = load %argAddr_1
	%offset_41 = mul %idVal_40 8
	%elementAddr_42 = add %arrayBase_39 %offset_41
	%arrayPtr_43 = load %elementAddr_42
	%arrayBase_44 = add %arrayPtr_43 8
	%idVal_45 = load %argAddr_3
	%offset_46 = mul %idVal_45 8
	%elementAddr_47 = add %arrayBase_44 %offset_46
	store %res_37 %elementAddr_47
	%idVal_48 = load %argAddr_1
	%idVal_49 = load %global2local_76
	%res_50 = eq %idVal_48 %idVal_49
	br %res_50 <7> <6>

<7> lhs_true
	%idVal_51 = load %argAddr_3
	%idVal_52 = load %global2local_73
	%res_53 = eq %idVal_51 %idVal_52
	br %res_53 <5> <6>

<5> if_true
	store 1 %global2local_74
	br <6>

<6> if_merge
	br <2>

<2> if_merge
	%tmp_90 = load %global2local_72
	store %tmp_90 @tail
	%tmp_91 = load %global2local_74
	store %tmp_91 @ok
	ret 

}

define main ( ) {
<0> entry
	%global2local_285 = alloca 8
	%global2local_284 = alloca 8
	%global2local_283 = alloca 8
	%global2local_282 = alloca 8
	%global2local_281 = alloca 8
	%global2local_280 = alloca 8
	%global2local_279 = alloca 8
	%global2local_278 = alloca 8
	%global2local_277 = alloca 8
	%global2local_276 = alloca 8
	%global2local_275 = alloca 8
	%global2local_274 = alloca 8
	%global2local_273 = alloca 8
	%global2local_272 = alloca 8
	%global2local_271 = alloca 8
	%global2local_270 = alloca 8
	%cargAddr_263 = alloca 8
	%cboolValAddr_262 = alloca 8
	%retValAddr_261 = alloca 8
	%cargAddr_254 = alloca 8
	%cboolValAddr_253 = alloca 8
	%retValAddr_252 = alloca 8
	%cargAddr_201 = alloca 8
	%cargAddr_200 = alloca 8
	%cargAddr_164 = alloca 8
	%tmp_301 = load @now
	store %tmp_301 %global2local_285
	%tmp_300 = load @dy
	store %tmp_300 %global2local_284
	%tmp_299 = load @step
	store %tmp_299 %global2local_283
	%tmp_298 = load @N
	store %tmp_298 %global2local_282
	%tmp_297 = load @targetx
	store %tmp_297 %global2local_281
	%tmp_296 = load @tail
	store %tmp_296 %global2local_280
	%tmp_295 = load @x
	store %tmp_295 %global2local_279
	%tmp_294 = load @xlist
	store %tmp_294 %global2local_278
	%tmp_293 = load @y
	store %tmp_293 %global2local_277
	%tmp_292 = load @i
	store %tmp_292 %global2local_276
	%tmp_291 = load @dx
	store %tmp_291 %global2local_275
	%tmp_290 = load @j
	store %tmp_290 %global2local_274
	%tmp_289 = load @head
	store %tmp_289 %global2local_273
	%tmp_288 = load @ylist
	store %tmp_288 %global2local_272
	%tmp_287 = load @ok
	store %tmp_287 %global2local_271
	%tmp_286 = load @targety
	store %tmp_286 %global2local_270
	br <22>

<22> centry
	store 106 %cargAddr_164
	store 0 %global2local_273
	store 0 %global2local_280
	%cidVal_165 = load %cargAddr_164
	%cmemberLength_166 = mul %cidVal_165 8
	%carrayLength_167 = add %cmemberLength_166 8
	%carrayPtr_168 = malloc %carrayLength_167
	store %cidVal_165 %carrayPtr_168
	store %carrayPtr_168 %global2local_283
	store 0 %global2local_276
	br <23>

<23> cfor_cond
	%cidVal_169 = load %global2local_276
	%cidVal_170 = load %cargAddr_164
	%cres_171 = lt %cidVal_169 %cidVal_170
	br %cres_171 <24> <30>

<24> cfor_body
	%cidVal_172 = load %cargAddr_164
	%cmemberLength_173 = mul %cidVal_172 8
	%carrayLength_174 = add %cmemberLength_173 8
	%carrayPtr_175 = malloc %carrayLength_174
	store %cidVal_172 %carrayPtr_175
	%carrayPtr_176 = load %global2local_283
	%carrayBase_177 = add %carrayPtr_176 8
	%cidVal_178 = load %global2local_276
	%coffset_179 = mul %cidVal_178 8
	%celementAddr_180 = add %carrayBase_177 %coffset_179
	store %carrayPtr_175 %celementAddr_180
	store 0 %global2local_274
	br <25>

<25> cfor_cond
	%cidVal_181 = load %global2local_274
	%cidVal_182 = load %cargAddr_164
	%cres_183 = lt %cidVal_181 %cidVal_182
	br %cres_183 <26> <28>

<26> cfor_body
	%carrayPtr_184 = load %global2local_283
	%carrayBase_185 = add %carrayPtr_184 8
	%cidVal_186 = load %global2local_276
	%coffset_187 = mul %cidVal_186 8
	%celementAddr_188 = add %carrayBase_185 %coffset_187
	%carrayPtr_189 = load %celementAddr_188
	%carrayBase_190 = add %carrayPtr_189 8
	%cidVal_191 = load %global2local_274
	%coffset_192 = mul %cidVal_191 8
	%celementAddr_193 = add %carrayBase_190 %coffset_192
	store 0 %celementAddr_193
	br <27>

<27> cfor_step
	%cidVal_194 = load %global2local_274
	%coldVal_195 = load %global2local_274
	%cnewVal_196 = inc %coldVal_195
	store %cnewVal_196 %global2local_274
	br <25>

<28> cfor_end
	br <29>

<29> cfor_step
	%cidVal_197 = load %global2local_276
	%coldVal_198 = load %global2local_276
	%cnewVal_199 = inc %coldVal_198
	store %cnewVal_199 %global2local_276
	br <23>

<30> cfor_end
	br <21>

<21> after_call
	%res_0 = getInt ( )
	store %res_0 %global2local_282
	%idVal_1 = load %global2local_282
	%res_2 = sub %idVal_1 1
	store %res_2 %global2local_270
	%idVal_3 = load %global2local_270
	store %idVal_3 %global2local_281
	store 0 %global2local_276
	br <1>

<1> for_cond
	%idVal_4 = load %global2local_276
	%idVal_5 = load %global2local_282
	%res_6 = lt %idVal_4 %idVal_5
	br %res_6 <2> <4>

<2> for_body
	store 0 %global2local_274
	br <5>

<5> for_cond
	%idVal_7 = load %global2local_274
	%idVal_8 = load %global2local_282
	%res_9 = lt %idVal_7 %idVal_8
	br %res_9 <6> <8>

<6> for_body
	%res_10 = neg 1
	%arrayPtr_11 = load %global2local_283
	%arrayBase_12 = add %arrayPtr_11 8
	%idVal_13 = load %global2local_276
	%offset_14 = mul %idVal_13 8
	%elementAddr_15 = add %arrayBase_12 %offset_14
	%arrayPtr_16 = load %elementAddr_15
	%arrayBase_17 = add %arrayPtr_16 8
	%idVal_18 = load %global2local_274
	%offset_19 = mul %idVal_18 8
	%elementAddr_20 = add %arrayBase_17 %offset_19
	store %res_10 %elementAddr_20
	br <7>

<7> for_step
	%idVal_21 = load %global2local_274
	%oldVal_22 = load %global2local_274
	%newVal_23 = inc %oldVal_22
	store %newVal_23 %global2local_274
	br <5>

<8> for_end
	br <3>

<3> for_step
	%idVal_24 = load %global2local_276
	%oldVal_25 = load %global2local_276
	%newVal_26 = inc %oldVal_25
	store %newVal_26 %global2local_276
	br <1>

<4> for_end
	%res_27 = neg 2
	%arrayPtr_28 = load %global2local_275
	%arrayBase_29 = add %arrayPtr_28 8
	%offset_30 = mul 0 8
	%elementAddr_31 = add %arrayBase_29 %offset_30
	store %res_27 %elementAddr_31
	%res_32 = neg 1
	%arrayPtr_33 = load %global2local_284
	%arrayBase_34 = add %arrayPtr_33 8
	%offset_35 = mul 0 8
	%elementAddr_36 = add %arrayBase_34 %offset_35
	store %res_32 %elementAddr_36
	%res_37 = neg 2
	%arrayPtr_38 = load %global2local_275
	%arrayBase_39 = add %arrayPtr_38 8
	%offset_40 = mul 1 8
	%elementAddr_41 = add %arrayBase_39 %offset_40
	store %res_37 %elementAddr_41
	%arrayPtr_42 = load %global2local_284
	%arrayBase_43 = add %arrayPtr_42 8
	%offset_44 = mul 1 8
	%elementAddr_45 = add %arrayBase_43 %offset_44
	store 1 %elementAddr_45
	%arrayPtr_46 = load %global2local_275
	%arrayBase_47 = add %arrayPtr_46 8
	%offset_48 = mul 2 8
	%elementAddr_49 = add %arrayBase_47 %offset_48
	store 2 %elementAddr_49
	%res_50 = neg 1
	%arrayPtr_51 = load %global2local_284
	%arrayBase_52 = add %arrayPtr_51 8
	%offset_53 = mul 2 8
	%elementAddr_54 = add %arrayBase_52 %offset_53
	store %res_50 %elementAddr_54
	%arrayPtr_55 = load %global2local_275
	%arrayBase_56 = add %arrayPtr_55 8
	%offset_57 = mul 3 8
	%elementAddr_58 = add %arrayBase_56 %offset_57
	store 2 %elementAddr_58
	%arrayPtr_59 = load %global2local_284
	%arrayBase_60 = add %arrayPtr_59 8
	%offset_61 = mul 3 8
	%elementAddr_62 = add %arrayBase_60 %offset_61
	store 1 %elementAddr_62
	%res_63 = neg 1
	%arrayPtr_64 = load %global2local_275
	%arrayBase_65 = add %arrayPtr_64 8
	%offset_66 = mul 4 8
	%elementAddr_67 = add %arrayBase_65 %offset_66
	store %res_63 %elementAddr_67
	%res_68 = neg 2
	%arrayPtr_69 = load %global2local_284
	%arrayBase_70 = add %arrayPtr_69 8
	%offset_71 = mul 4 8
	%elementAddr_72 = add %arrayBase_70 %offset_71
	store %res_68 %elementAddr_72
	%res_73 = neg 1
	%arrayPtr_74 = load %global2local_275
	%arrayBase_75 = add %arrayPtr_74 8
	%offset_76 = mul 5 8
	%elementAddr_77 = add %arrayBase_75 %offset_76
	store %res_73 %elementAddr_77
	%arrayPtr_78 = load %global2local_284
	%arrayBase_79 = add %arrayPtr_78 8
	%offset_80 = mul 5 8
	%elementAddr_81 = add %arrayBase_79 %offset_80
	store 2 %elementAddr_81
	%arrayPtr_82 = load %global2local_275
	%arrayBase_83 = add %arrayPtr_82 8
	%offset_84 = mul 6 8
	%elementAddr_85 = add %arrayBase_83 %offset_84
	store 1 %elementAddr_85
	%res_86 = neg 2
	%arrayPtr_87 = load %global2local_284
	%arrayBase_88 = add %arrayPtr_87 8
	%offset_89 = mul 6 8
	%elementAddr_90 = add %arrayBase_88 %offset_89
	store %res_86 %elementAddr_90
	%arrayPtr_91 = load %global2local_275
	%arrayBase_92 = add %arrayPtr_91 8
	%offset_93 = mul 7 8
	%elementAddr_94 = add %arrayBase_92 %offset_93
	store 1 %elementAddr_94
	%arrayPtr_95 = load %global2local_284
	%arrayBase_96 = add %arrayPtr_95 8
	%offset_97 = mul 7 8
	%elementAddr_98 = add %arrayBase_96 %offset_97
	store 2 %elementAddr_98
	br <9>

<9> while_cond
	%idVal_99 = load %global2local_273
	%idVal_100 = load %global2local_280
	%res_101 = le %idVal_99 %idVal_100
	br %res_101 <10> <11>

<10> while_body
	%arrayPtr_102 = load %global2local_278
	%arrayBase_103 = add %arrayPtr_102 8
	%idVal_104 = load %global2local_273
	%offset_105 = mul %idVal_104 8
	%elementAddr_106 = add %arrayBase_103 %offset_105
	%elementVal_107 = load %elementAddr_106
	store %elementVal_107 %global2local_279
	%arrayPtr_108 = load %global2local_272
	%arrayBase_109 = add %arrayPtr_108 8
	%idVal_110 = load %global2local_273
	%offset_111 = mul %idVal_110 8
	%elementAddr_112 = add %arrayBase_109 %offset_111
	%elementVal_113 = load %elementAddr_112
	store %elementVal_113 %global2local_277
	%arrayPtr_114 = load %global2local_283
	%arrayBase_115 = add %arrayPtr_114 8
	%idVal_116 = load %global2local_279
	%offset_117 = mul %idVal_116 8
	%elementAddr_118 = add %arrayBase_115 %offset_117
	%arrayPtr_119 = load %elementAddr_118
	%arrayBase_120 = add %arrayPtr_119 8
	%idVal_121 = load %global2local_277
	%offset_122 = mul %idVal_121 8
	%elementAddr_123 = add %arrayBase_120 %offset_122
	%elementVal_124 = load %elementAddr_123
	store %elementVal_124 %global2local_285
	store 0 %global2local_274
	br <12>

<12> for_cond
	%idVal_125 = load %global2local_274
	%res_126 = lt %idVal_125 8
	br %res_126 <13> <15>

<13> for_body
	%idVal_127 = load %global2local_279
	%arrayPtr_128 = load %global2local_275
	%arrayBase_129 = add %arrayPtr_128 8
	%idVal_130 = load %global2local_274
	%offset_131 = mul %idVal_130 8
	%elementAddr_132 = add %arrayBase_129 %offset_131
	%elementVal_133 = load %elementAddr_132
	%res_134 = add %idVal_127 %elementVal_133
	%idVal_135 = load %global2local_277
	%arrayPtr_136 = load %global2local_284
	%arrayBase_137 = add %arrayPtr_136 8
	%idVal_138 = load %global2local_274
	%offset_139 = mul %idVal_138 8
	%elementAddr_140 = add %arrayBase_137 %offset_139
	%elementVal_141 = load %elementAddr_140
	%res_142 = add %idVal_135 %elementVal_141
	br <32>

<32> centry
	store %res_134 %cargAddr_201
	store %res_142 %cargAddr_200
	%cidVal_202 = load %cargAddr_201
	br <41>

<41> centry
	store %cidVal_202 %cargAddr_254
	%cidVal_255 = load %cargAddr_254
	%cidVal_256 = load %global2local_282
	%cres_257 = lt %cidVal_255 %cidVal_256
	br %cres_257 <42> <44>

<42> clhs_true
	%cidVal_258 = load %cargAddr_254
	%cres_259 = ge %cidVal_258 0
	br %cres_259 <43> <44>

<43> cbool_true
	store 1 %cboolValAddr_253
	br <45>

<44> cbool_false
	store 0 %cboolValAddr_253
	br <45>

<45> cbool_merge
	%cboolVal_260 = load %cboolValAddr_253
	store %cboolVal_260 %retValAddr_252
	br <40>

<40> after_call
	%cres_203 = load %retValAddr_252
	br %cres_203 <33> <39>

<33> clhs_true
	%cidVal_204 = load %cargAddr_200
	br <47>

<47> centry
	store %cidVal_204 %cargAddr_263
	%cidVal_264 = load %cargAddr_263
	%cidVal_265 = load %global2local_282
	%cres_266 = lt %cidVal_264 %cidVal_265
	br %cres_266 <48> <50>

<48> clhs_true
	%cidVal_267 = load %cargAddr_263
	%cres_268 = ge %cidVal_267 0
	br %cres_268 <49> <50>

<49> cbool_true
	store 1 %cboolValAddr_262
	br <51>

<50> cbool_false
	store 0 %cboolValAddr_262
	br <51>

<51> cbool_merge
	%cboolVal_269 = load %cboolValAddr_262
	store %cboolVal_269 %retValAddr_261
	br <46>

<46> after_call
	%cres_205 = load %retValAddr_261
	br %cres_205 <34> <39>

<34> clhs_true
	%carrayPtr_206 = load %global2local_283
	%carrayBase_207 = add %carrayPtr_206 8
	%cidVal_208 = load %cargAddr_201
	%coffset_209 = mul %cidVal_208 8
	%celementAddr_210 = add %carrayBase_207 %coffset_209
	%carrayPtr_211 = load %celementAddr_210
	%carrayBase_212 = add %carrayPtr_211 8
	%cidVal_213 = load %cargAddr_200
	%coffset_214 = mul %cidVal_213 8
	%celementAddr_215 = add %carrayBase_212 %coffset_214
	%celementVal_216 = load %celementAddr_215
	%cres_217 = neg 1
	%cres_218 = eq %celementVal_216 %cres_217
	br %cres_218 <35> <39>

<35> cif_true
	%cidVal_219 = load %global2local_280
	%coldVal_220 = load %global2local_280
	%cnewVal_221 = inc %coldVal_220
	store %cnewVal_221 %global2local_280
	%cidVal_222 = load %cargAddr_201
	%carrayPtr_223 = load %global2local_278
	%carrayBase_224 = add %carrayPtr_223 8
	%cidVal_225 = load %global2local_280
	%coffset_226 = mul %cidVal_225 8
	%celementAddr_227 = add %carrayBase_224 %coffset_226
	store %cidVal_222 %celementAddr_227
	%cidVal_228 = load %cargAddr_200
	%carrayPtr_229 = load %global2local_272
	%carrayBase_230 = add %carrayPtr_229 8
	%cidVal_231 = load %global2local_280
	%coffset_232 = mul %cidVal_231 8
	%celementAddr_233 = add %carrayBase_230 %coffset_232
	store %cidVal_228 %celementAddr_233
	%cidVal_234 = load %global2local_285
	%cres_235 = add %cidVal_234 1
	%carrayPtr_236 = load %global2local_283
	%carrayBase_237 = add %carrayPtr_236 8
	%cidVal_238 = load %cargAddr_201
	%coffset_239 = mul %cidVal_238 8
	%celementAddr_240 = add %carrayBase_237 %coffset_239
	%carrayPtr_241 = load %celementAddr_240
	%carrayBase_242 = add %carrayPtr_241 8
	%cidVal_243 = load %cargAddr_200
	%coffset_244 = mul %cidVal_243 8
	%celementAddr_245 = add %carrayBase_242 %coffset_244
	store %cres_235 %celementAddr_245
	%cidVal_246 = load %cargAddr_201
	%cidVal_247 = load %global2local_281
	%cres_248 = eq %cidVal_246 %cidVal_247
	br %cres_248 <36> <38>

<36> clhs_true
	%cidVal_249 = load %cargAddr_200
	%cidVal_250 = load %global2local_270
	%cres_251 = eq %cidVal_249 %cidVal_250
	br %cres_251 <37> <38>

<37> cif_true
	store 1 %global2local_271
	br <38>

<38> cif_merge
	br <39>

<39> cif_merge
	br <31>

<31> after_call
	br <14>

<14> for_step
	%idVal_143 = load %global2local_274
	%oldVal_144 = load %global2local_274
	%newVal_145 = inc %oldVal_144
	store %newVal_145 %global2local_274
	br <12>

<15> for_end
	%idVal_146 = load %global2local_271
	%res_147 = eq %idVal_146 1
	br %res_147 <16> <17>

<16> if_true
	br <11>

<17> if_merge
	%idVal_148 = load %global2local_273
	%oldVal_149 = load %global2local_273
	%newVal_150 = inc %oldVal_149
	store %newVal_150 %global2local_273
	br <9>

<11> while_end
	%idVal_151 = load %global2local_271
	%res_152 = eq %idVal_151 1
	br %res_152 <18> <19>

<18> if_true
	%arrayPtr_153 = load %global2local_283
	%arrayBase_154 = add %arrayPtr_153 8
	%idVal_155 = load %global2local_281
	%offset_156 = mul %idVal_155 8
	%elementAddr_157 = add %arrayBase_154 %offset_156
	%arrayPtr_158 = load %elementAddr_157
	%arrayBase_159 = add %arrayPtr_158 8
	%idVal_160 = load %global2local_270
	%offset_161 = mul %idVal_160 8
	%elementAddr_162 = add %arrayBase_159 %offset_161
	%elementVal_163 = load %elementAddr_162
	__printlnInt ( %elementVal_163 )
	br <20>

<19> if_false
	print ( $str_0 )
	br <20>

<20> if_merge
	%tmp_302 = load %global2local_270
	store %tmp_302 @targety
	%tmp_303 = load %global2local_271
	store %tmp_303 @ok
	%tmp_304 = load %global2local_273
	store %tmp_304 @head
	%tmp_305 = load %global2local_274
	store %tmp_305 @j
	%tmp_306 = load %global2local_276
	store %tmp_306 @i
	%tmp_307 = load %global2local_277
	store %tmp_307 @y
	%tmp_308 = load %global2local_279
	store %tmp_308 @x
	%tmp_309 = load %global2local_280
	store %tmp_309 @tail
	%tmp_310 = load %global2local_281
	store %tmp_310 @targetx
	%tmp_311 = load %global2local_282
	store %tmp_311 @N
	%tmp_312 = load %global2local_283
	store %tmp_312 @step
	%tmp_313 = load %global2local_285
	store %tmp_313 @now
	ret 0

}

