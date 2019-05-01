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
	%tmp_19 = load @xlist
	mov %varDef_24 %tmp_19
	%tmp_18 = load @ylist
	mov %varDef_25 %tmp_18
	%tmp_17 = load @dy
	mov %varDef_26 %tmp_17
	%tmp_16 = load @dx
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
	mov %tmp_20 %varDef_30
	store %tmp_20 @dx
	mov %tmp_21 %varDef_31
	store %tmp_21 @dy
	mov %tmp_22 %varDef_29
	store %tmp_22 @ylist
	mov %tmp_23 %varDef_28
	store %tmp_23 @xlist
	ret 

}

define origin ( %argVal_0 ) {
<0> entry
	%tmp_46 = load @head
	mov %varDef_52 %tmp_46
	%tmp_45 = load @j
	mov %varDef_53 %tmp_45
	%tmp_44 = load @i
	mov %varDef_54 %tmp_44
	%tmp_43 = load @tail
	mov %varDef_55 %tmp_43
	%tmp_42 = load @step
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
	%varDef_62 = phi <0> %varDef_61 <3> %varDef_67
	%varDef_63 = phi <0> %varDef_53 <3> %varDef_65
	mov %idVal_6 %varDef_62
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
	mov %idVal_15 %varDef_62
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
	mov %idVal_23 %varDef_62
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
	mov %idVal_34 %varDef_62
	mov %oldVal_35 %varDef_62
	%newVal_36 = inc %oldVal_35
	mov %varDef_67 %newVal_36
	br <1>

<4> for_end
	mov %tmp_47 %varDef_60
	store %tmp_47 @step
	mov %tmp_48 %varDef_59
	store %tmp_48 @tail
	mov %tmp_49 %varDef_62
	store %tmp_49 @i
	mov %tmp_50 %varDef_63
	store %tmp_50 @j
	mov %tmp_51 %varDef_58
	store %tmp_51 @head
	ret 

}

define check ( %argVal_0 ) {
<0> entry
	%tmp_10 = load @N
	mov %varDef_12 %tmp_10
	mov %varDef_13 %argVal_0
	mov %idVal_3 %varDef_13
	mov %idVal_4 %varDef_12
	%res_5 = lt %idVal_3 %idVal_4
	br %res_5 <4> <2>

<4> lhs_true
	mov %idVal_6 %varDef_13
	%res_7 = ge %idVal_6 0
	br %res_7 <1> <2>

<1> bool_true
	mov %varDef_14 1
	br <3>

<2> bool_false
	mov %varDef_15 0
	br <3>

<3> bool_merge
	%varDef_16 = phi <1> %varDef_14 <2> %varDef_15
	mov %boolVal_8 %varDef_16
	mov %tmp_11 %varDef_12
	store %tmp_11 @N
	ret %boolVal_8

}

define addList ( %argVal_0 %argVal_2 ) {
<0> entry
	%tmp_89 = load @now
	mov %varDef_99 %tmp_89
	%tmp_88 = load @targetx
	mov %varDef_100 %tmp_88
	%tmp_87 = load @xlist
	mov %varDef_101 %tmp_87
	%tmp_86 = load @targety
	mov %varDef_102 %tmp_86
	%tmp_85 = load @N
	mov %varDef_103 %tmp_85
	%tmp_84 = load @ylist
	mov %varDef_104 %tmp_84
	%tmp_83 = load @tail
	mov %varDef_105 %tmp_83
	%tmp_82 = load @ok
	mov %varDef_106 %tmp_82
	%tmp_81 = load @step
	mov %varDef_107 %tmp_81
	mov %varDef_108 %argVal_0
	mov %varDef_109 %argVal_2
	mov %idVal_5 %varDef_108
	br <9>

<9> centry
	mov %varDef_110 %idVal_5
	mov %cidVal_57 %varDef_110
	mov %cidVal_58 %varDef_103
	%cres_59 = lt %cidVal_57 %cidVal_58
	br %cres_59 <10> <12>

<10> clhs_true
	mov %cidVal_60 %varDef_110
	%cres_61 = ge %cidVal_60 0
	br %cres_61 <11> <12>

<11> cbool_true
	mov %varDef_111 1
	br <13>

<12> cbool_false
	mov %varDef_112 0
	br <13>

<13> cbool_merge
	%varDef_113 = phi <11> %varDef_111 <12> %varDef_112
	mov %cboolVal_62 %varDef_113
	mov %varDef_114 %cboolVal_62
	mov %res_4 %varDef_114
	br %res_4 <4> <2>

<4> lhs_true
	mov %idVal_7 %varDef_109
	mov %varDef_115 %idVal_7
	mov %cidVal_66 %varDef_115
	mov %cidVal_67 %varDef_103
	%cres_68 = lt %cidVal_66 %cidVal_67
	br %cres_68 <16> <18>

<16> clhs_true
	mov %cidVal_69 %varDef_115
	%cres_70 = ge %cidVal_69 0
	br %cres_70 <17> <18>

<17> cbool_true
	mov %varDef_116 1
	br <19>

<18> cbool_false
	mov %varDef_117 0
	br <19>

<19> cbool_merge
	%varDef_118 = phi <17> %varDef_116 <18> %varDef_117
	mov %cboolVal_71 %varDef_118
	mov %varDef_119 %cboolVal_71
	mov %res_6 %varDef_119
	br %res_6 <3> <2>

<3> lhs_true
	mov %arrayPtr_8 %varDef_107
	%arrayBase_9 = add %arrayPtr_8 8
	mov %idVal_10 %varDef_108
	%offset_11 = mul %idVal_10 8
	%elementAddr_12 = add %arrayBase_9 %offset_11
	%arrayPtr_13 = load %elementAddr_12
	%arrayBase_14 = add %arrayPtr_13 8
	mov %idVal_15 %varDef_109
	%offset_16 = mul %idVal_15 8
	%elementAddr_17 = add %arrayBase_14 %offset_16
	%elementVal_18 = load %elementAddr_17
	%res_19 = neg 1
	%res_20 = eq %elementVal_18 %res_19
	br %res_20 <1> <2>

<1> if_true
	mov %idVal_21 %varDef_105
	mov %oldVal_22 %varDef_105
	%newVal_23 = inc %oldVal_22
	mov %varDef_120 %newVal_23
	mov %idVal_24 %varDef_108
	mov %arrayPtr_25 %varDef_101
	%arrayBase_26 = add %arrayPtr_25 8
	mov %idVal_27 %varDef_120
	%offset_28 = mul %idVal_27 8
	%elementAddr_29 = add %arrayBase_26 %offset_28
	store %idVal_24 %elementAddr_29
	mov %idVal_30 %varDef_109
	mov %arrayPtr_31 %varDef_104
	%arrayBase_32 = add %arrayPtr_31 8
	mov %idVal_33 %varDef_120
	%offset_34 = mul %idVal_33 8
	%elementAddr_35 = add %arrayBase_32 %offset_34
	store %idVal_30 %elementAddr_35
	mov %idVal_36 %varDef_99
	%res_37 = add %idVal_36 1
	mov %arrayPtr_38 %varDef_107
	%arrayBase_39 = add %arrayPtr_38 8
	mov %idVal_40 %varDef_108
	%offset_41 = mul %idVal_40 8
	%elementAddr_42 = add %arrayBase_39 %offset_41
	%arrayPtr_43 = load %elementAddr_42
	%arrayBase_44 = add %arrayPtr_43 8
	mov %idVal_45 %varDef_109
	%offset_46 = mul %idVal_45 8
	%elementAddr_47 = add %arrayBase_44 %offset_46
	store %res_37 %elementAddr_47
	mov %idVal_48 %varDef_108
	mov %idVal_49 %varDef_100
	%res_50 = eq %idVal_48 %idVal_49
	br %res_50 <7> <2>

<7> lhs_true
	mov %idVal_51 %varDef_109
	mov %idVal_52 %varDef_102
	%res_53 = eq %idVal_51 %idVal_52
	br %res_53 <5> <2>

<5> if_true
	mov %varDef_121 1
	br <2>

<2> if_merge
	%varDef_122 = phi <13> 0 <19> %varDef_119 <3> %varDef_119 <1> %varDef_119 <7> %varDef_119 <5> %varDef_119
	%varDef_123 = phi <13> 0 <19> %varDef_118 <3> %varDef_118 <1> %varDef_118 <7> %varDef_118 <5> %varDef_118
	%varDef_124 = phi <13> 0 <19> %varDef_115 <3> %varDef_115 <1> %varDef_115 <7> %varDef_115 <5> %varDef_115
	%varDef_125 = phi <13> %varDef_106 <19> %varDef_106 <3> %varDef_106 <1> %varDef_106 <7> %varDef_106 <5> %varDef_121
	%varDef_126 = phi <13> %varDef_105 <19> %varDef_105 <3> %varDef_105 <1> %varDef_120 <7> %varDef_120 <5> %varDef_120
	mov %tmp_90 %varDef_107
	store %tmp_90 @step
	mov %tmp_91 %varDef_125
	store %tmp_91 @ok
	mov %tmp_92 %varDef_126
	store %tmp_92 @tail
	mov %tmp_93 %varDef_104
	store %tmp_93 @ylist
	mov %tmp_94 %varDef_103
	store %tmp_94 @N
	mov %tmp_95 %varDef_102
	store %tmp_95 @targety
	mov %tmp_96 %varDef_101
	store %tmp_96 @xlist
	mov %tmp_97 %varDef_100
	store %tmp_97 @targetx
	mov %tmp_98 %varDef_99
	store %tmp_98 @now
	ret 

}

define main ( ) {
<0> entry
	%tmp_196 = load @targetx
	mov %varDef_241 %tmp_196
	%tmp_195 = load @x
	mov %varDef_242 %tmp_195
	%tmp_194 = load @j
	mov %varDef_243 %tmp_194
	%tmp_193 = load @targety
	mov %varDef_244 %tmp_193
	%tmp_192 = load @N
	mov %varDef_245 %tmp_192
	%tmp_191 = load @y
	mov %varDef_246 %tmp_191
	%tmp_190 = load @ylist
	mov %varDef_247 %tmp_190
	%tmp_189 = load @tail
	mov %varDef_248 %tmp_189
	%tmp_188 = load @ok
	mov %varDef_249 %tmp_188
	%tmp_187 = load @dx
	mov %varDef_250 %tmp_187
	%tmp_186 = load @now
	mov %varDef_251 %tmp_186
	%tmp_185 = load @xlist
	mov %varDef_252 %tmp_185
	%tmp_184 = load @head
	mov %varDef_253 %tmp_184
	%tmp_183 = load @i
	mov %varDef_254 %tmp_183
	%tmp_182 = load @dy
	mov %varDef_255 %tmp_182
	%tmp_181 = load @step
	mov %varDef_256 %tmp_181
	mov %tmp_197 %varDef_256
	store %tmp_197 @step
	mov %tmp_199 %varDef_254
	store %tmp_199 @i
	mov %tmp_201 %varDef_253
	store %tmp_201 @head
	mov %tmp_203 %varDef_248
	store %tmp_203 @tail
	mov %tmp_205 %varDef_243
	store %tmp_205 @j
	origin ( 106 )
	%tmp_206 = load @j
	mov %varDef_257 %tmp_206
	%tmp_204 = load @tail
	mov %varDef_258 %tmp_204
	%tmp_202 = load @head
	mov %varDef_259 %tmp_202
	%tmp_200 = load @i
	mov %varDef_260 %tmp_200
	%tmp_198 = load @step
	mov %varDef_261 %tmp_198
	%res_0 = getInt ( )
	mov %varDef_262 %res_0
	mov %idVal_1 %varDef_262
	%res_2 = sub %idVal_1 1
	mov %varDef_263 %res_2
	mov %idVal_3 %varDef_263
	mov %varDef_264 %idVal_3
	mov %varDef_265 0
	br <1>

<1> for_cond
	%varDef_266 = phi <0> %varDef_265 <3> %varDef_271
	%varDef_267 = phi <0> %varDef_257 <3> %varDef_269
	mov %idVal_4 %varDef_266
	mov %idVal_5 %varDef_262
	%res_6 = lt %idVal_4 %idVal_5
	br %res_6 <2> <4>

<2> for_body
	mov %varDef_268 0
	br <5>

<5> for_cond
	%varDef_269 = phi <2> %varDef_268 <6> %varDef_270
	mov %idVal_7 %varDef_269
	mov %idVal_8 %varDef_262
	%res_9 = lt %idVal_7 %idVal_8
	br %res_9 <6> <3>

<6> for_body
	%res_10 = neg 1
	mov %arrayPtr_11 %varDef_261
	%arrayBase_12 = add %arrayPtr_11 8
	mov %idVal_13 %varDef_266
	%offset_14 = mul %idVal_13 8
	%elementAddr_15 = add %arrayBase_12 %offset_14
	%arrayPtr_16 = load %elementAddr_15
	%arrayBase_17 = add %arrayPtr_16 8
	mov %idVal_18 %varDef_269
	%offset_19 = mul %idVal_18 8
	%elementAddr_20 = add %arrayBase_17 %offset_19
	store %res_10 %elementAddr_20
	mov %idVal_21 %varDef_269
	mov %oldVal_22 %varDef_269
	%newVal_23 = inc %oldVal_22
	mov %varDef_270 %newVal_23
	br <5>

<3> for_step
	mov %idVal_24 %varDef_266
	mov %oldVal_25 %varDef_266
	%newVal_26 = inc %oldVal_25
	mov %varDef_271 %newVal_26
	br <1>

<4> for_end
	%res_27 = neg 2
	mov %arrayPtr_28 %varDef_250
	%arrayBase_29 = add %arrayPtr_28 8
	%offset_30 = mul 0 8
	%elementAddr_31 = add %arrayBase_29 %offset_30
	store %res_27 %elementAddr_31
	%res_32 = neg 1
	mov %arrayPtr_33 %varDef_255
	%arrayBase_34 = add %arrayPtr_33 8
	%offset_35 = mul 0 8
	%elementAddr_36 = add %arrayBase_34 %offset_35
	store %res_32 %elementAddr_36
	%res_37 = neg 2
	mov %arrayPtr_38 %varDef_250
	%arrayBase_39 = add %arrayPtr_38 8
	%offset_40 = mul 1 8
	%elementAddr_41 = add %arrayBase_39 %offset_40
	store %res_37 %elementAddr_41
	mov %arrayPtr_42 %varDef_255
	%arrayBase_43 = add %arrayPtr_42 8
	%offset_44 = mul 1 8
	%elementAddr_45 = add %arrayBase_43 %offset_44
	store 1 %elementAddr_45
	mov %arrayPtr_46 %varDef_250
	%arrayBase_47 = add %arrayPtr_46 8
	%offset_48 = mul 2 8
	%elementAddr_49 = add %arrayBase_47 %offset_48
	store 2 %elementAddr_49
	%res_50 = neg 1
	mov %arrayPtr_51 %varDef_255
	%arrayBase_52 = add %arrayPtr_51 8
	%offset_53 = mul 2 8
	%elementAddr_54 = add %arrayBase_52 %offset_53
	store %res_50 %elementAddr_54
	mov %arrayPtr_55 %varDef_250
	%arrayBase_56 = add %arrayPtr_55 8
	%offset_57 = mul 3 8
	%elementAddr_58 = add %arrayBase_56 %offset_57
	store 2 %elementAddr_58
	mov %arrayPtr_59 %varDef_255
	%arrayBase_60 = add %arrayPtr_59 8
	%offset_61 = mul 3 8
	%elementAddr_62 = add %arrayBase_60 %offset_61
	store 1 %elementAddr_62
	%res_63 = neg 1
	mov %arrayPtr_64 %varDef_250
	%arrayBase_65 = add %arrayPtr_64 8
	%offset_66 = mul 4 8
	%elementAddr_67 = add %arrayBase_65 %offset_66
	store %res_63 %elementAddr_67
	%res_68 = neg 2
	mov %arrayPtr_69 %varDef_255
	%arrayBase_70 = add %arrayPtr_69 8
	%offset_71 = mul 4 8
	%elementAddr_72 = add %arrayBase_70 %offset_71
	store %res_68 %elementAddr_72
	%res_73 = neg 1
	mov %arrayPtr_74 %varDef_250
	%arrayBase_75 = add %arrayPtr_74 8
	%offset_76 = mul 5 8
	%elementAddr_77 = add %arrayBase_75 %offset_76
	store %res_73 %elementAddr_77
	mov %arrayPtr_78 %varDef_255
	%arrayBase_79 = add %arrayPtr_78 8
	%offset_80 = mul 5 8
	%elementAddr_81 = add %arrayBase_79 %offset_80
	store 2 %elementAddr_81
	mov %arrayPtr_82 %varDef_250
	%arrayBase_83 = add %arrayPtr_82 8
	%offset_84 = mul 6 8
	%elementAddr_85 = add %arrayBase_83 %offset_84
	store 1 %elementAddr_85
	%res_86 = neg 2
	mov %arrayPtr_87 %varDef_255
	%arrayBase_88 = add %arrayPtr_87 8
	%offset_89 = mul 6 8
	%elementAddr_90 = add %arrayBase_88 %offset_89
	store %res_86 %elementAddr_90
	mov %arrayPtr_91 %varDef_250
	%arrayBase_92 = add %arrayPtr_91 8
	%offset_93 = mul 7 8
	%elementAddr_94 = add %arrayBase_92 %offset_93
	store 1 %elementAddr_94
	mov %arrayPtr_95 %varDef_255
	%arrayBase_96 = add %arrayPtr_95 8
	%offset_97 = mul 7 8
	%elementAddr_98 = add %arrayBase_96 %offset_97
	store 2 %elementAddr_98
	br <9>

<9> while_cond
	%varDef_272 = phi <4> %varDef_261 <17> %varDef_289
	%varDef_273 = phi <4> %varDef_259 <17> %varDef_309
	%varDef_274 = phi <4> %varDef_252 <17> %varDef_290
	%varDef_275 = phi <4> %varDef_251 <17> %varDef_291
	%varDef_276 = phi <4> %varDef_249 <17> %varDef_292
	%varDef_277 = phi <4> %varDef_258 <17> %varDef_293
	%varDef_278 = phi <4> %varDef_247 <17> %varDef_294
	%varDef_279 = phi <4> %varDef_246 <17> %varDef_286
	%varDef_280 = phi <4> %varDef_262 <17> %varDef_295
	%varDef_281 = phi <4> %varDef_263 <17> %varDef_296
	%varDef_282 = phi <4> %varDef_267 <17> %varDef_297
	%varDef_283 = phi <4> %varDef_242 <17> %varDef_285
	%varDef_284 = phi <4> %varDef_264 <17> %varDef_298
	mov %idVal_99 %varDef_273
	mov %idVal_100 %varDef_277
	%res_101 = le %idVal_99 %idVal_100
	br %res_101 <10> <11>

<10> while_body
	mov %arrayPtr_102 %varDef_274
	%arrayBase_103 = add %arrayPtr_102 8
	mov %idVal_104 %varDef_273
	%offset_105 = mul %idVal_104 8
	%elementAddr_106 = add %arrayBase_103 %offset_105
	%elementVal_107 = load %elementAddr_106
	mov %varDef_285 %elementVal_107
	mov %arrayPtr_108 %varDef_278
	%arrayBase_109 = add %arrayPtr_108 8
	mov %idVal_110 %varDef_273
	%offset_111 = mul %idVal_110 8
	%elementAddr_112 = add %arrayBase_109 %offset_111
	%elementVal_113 = load %elementAddr_112
	mov %varDef_286 %elementVal_113
	mov %arrayPtr_114 %varDef_272
	%arrayBase_115 = add %arrayPtr_114 8
	mov %idVal_116 %varDef_285
	%offset_117 = mul %idVal_116 8
	%elementAddr_118 = add %arrayBase_115 %offset_117
	%arrayPtr_119 = load %elementAddr_118
	%arrayBase_120 = add %arrayPtr_119 8
	mov %idVal_121 %varDef_286
	%offset_122 = mul %idVal_121 8
	%elementAddr_123 = add %arrayBase_120 %offset_122
	%elementVal_124 = load %elementAddr_123
	mov %varDef_287 %elementVal_124
	mov %varDef_288 0
	br <12>

<12> for_cond
	%varDef_289 = phi <10> %varDef_272 <13> %varDef_307
	%varDef_290 = phi <10> %varDef_274 <13> %varDef_306
	%varDef_291 = phi <10> %varDef_287 <13> %varDef_305
	%varDef_292 = phi <10> %varDef_276 <13> %varDef_304
	%varDef_293 = phi <10> %varDef_277 <13> %varDef_303
	%varDef_294 = phi <10> %varDef_278 <13> %varDef_302
	%varDef_295 = phi <10> %varDef_280 <13> %varDef_301
	%varDef_296 = phi <10> %varDef_281 <13> %varDef_300
	%varDef_297 = phi <10> %varDef_288 <13> %varDef_308
	%varDef_298 = phi <10> %varDef_284 <13> %varDef_299
	mov %idVal_125 %varDef_297
	%res_126 = lt %idVal_125 8
	br %res_126 <13> <15>

<13> for_body
	mov %idVal_127 %varDef_285
	mov %arrayPtr_128 %varDef_250
	%arrayBase_129 = add %arrayPtr_128 8
	mov %idVal_130 %varDef_297
	%offset_131 = mul %idVal_130 8
	%elementAddr_132 = add %arrayBase_129 %offset_131
	%elementVal_133 = load %elementAddr_132
	%res_134 = add %idVal_127 %elementVal_133
	mov %idVal_135 %varDef_286
	mov %arrayPtr_136 %varDef_255
	%arrayBase_137 = add %arrayPtr_136 8
	mov %idVal_138 %varDef_297
	%offset_139 = mul %idVal_138 8
	%elementAddr_140 = add %arrayBase_137 %offset_139
	%elementVal_141 = load %elementAddr_140
	%res_142 = add %idVal_135 %elementVal_141
	mov %tmp_207 %varDef_289
	store %tmp_207 @step
	mov %tmp_209 %varDef_290
	store %tmp_209 @xlist
	mov %tmp_211 %varDef_291
	store %tmp_211 @now
	mov %tmp_213 %varDef_292
	store %tmp_213 @ok
	mov %tmp_215 %varDef_293
	store %tmp_215 @tail
	mov %tmp_217 %varDef_294
	store %tmp_217 @ylist
	mov %tmp_219 %varDef_295
	store %tmp_219 @N
	mov %tmp_221 %varDef_296
	store %tmp_221 @targety
	mov %tmp_223 %varDef_298
	store %tmp_223 @targetx
	addList ( %res_134 %res_142 )
	%tmp_224 = load @targetx
	mov %varDef_299 %tmp_224
	%tmp_222 = load @targety
	mov %varDef_300 %tmp_222
	%tmp_220 = load @N
	mov %varDef_301 %tmp_220
	%tmp_218 = load @ylist
	mov %varDef_302 %tmp_218
	%tmp_216 = load @tail
	mov %varDef_303 %tmp_216
	%tmp_214 = load @ok
	mov %varDef_304 %tmp_214
	%tmp_212 = load @now
	mov %varDef_305 %tmp_212
	%tmp_210 = load @xlist
	mov %varDef_306 %tmp_210
	%tmp_208 = load @step
	mov %varDef_307 %tmp_208
	mov %idVal_143 %varDef_297
	mov %oldVal_144 %varDef_297
	%newVal_145 = inc %oldVal_144
	mov %varDef_308 %newVal_145
	br <12>

<15> for_end
	mov %idVal_146 %varDef_292
	%res_147 = eq %idVal_146 1
	br %res_147 <11> <17>

<17> if_merge
	mov %idVal_148 %varDef_273
	mov %oldVal_149 %varDef_273
	%newVal_150 = inc %oldVal_149
	mov %varDef_309 %newVal_150
	br <9>

<11> while_end
	%varDef_310 = phi <9> %varDef_272 <15> %varDef_289
	%varDef_311 = phi <9> %varDef_274 <15> %varDef_290
	%varDef_312 = phi <9> %varDef_275 <15> %varDef_291
	%varDef_313 = phi <9> %varDef_276 <15> %varDef_292
	%varDef_314 = phi <9> %varDef_277 <15> %varDef_293
	%varDef_315 = phi <9> %varDef_278 <15> %varDef_294
	%varDef_316 = phi <9> %varDef_279 <15> %varDef_286
	%varDef_317 = phi <9> %varDef_280 <15> %varDef_295
	%varDef_318 = phi <9> %varDef_281 <15> %varDef_296
	%varDef_319 = phi <9> %varDef_282 <15> %varDef_297
	%varDef_320 = phi <9> %varDef_283 <15> %varDef_285
	%varDef_321 = phi <9> %varDef_284 <15> %varDef_298
	mov %idVal_151 %varDef_313
	%res_152 = eq %idVal_151 1
	br %res_152 <18> <19>

<18> if_true
	mov %arrayPtr_154 %varDef_310
	%arrayBase_155 = add %arrayPtr_154 8
	mov %idVal_156 %varDef_321
	%offset_157 = mul %idVal_156 8
	%elementAddr_158 = add %arrayBase_155 %offset_157
	%arrayPtr_159 = load %elementAddr_158
	%arrayBase_160 = add %arrayPtr_159 8
	mov %idVal_161 %varDef_318
	%offset_162 = mul %idVal_161 8
	%elementAddr_163 = add %arrayBase_160 %offset_162
	%elementVal_164 = load %elementAddr_163
	%res_153 = toString ( %elementVal_164 )
	println ( %res_153 )
	br <20>

<19> if_false
	print ( $str_0 )
	br <20>

<20> if_merge
	mov %tmp_225 %varDef_310
	store %tmp_225 @step
	mov %tmp_226 %varDef_255
	store %tmp_226 @dy
	mov %tmp_227 %varDef_266
	store %tmp_227 @i
	mov %tmp_228 %varDef_273
	store %tmp_228 @head
	mov %tmp_229 %varDef_311
	store %tmp_229 @xlist
	mov %tmp_230 %varDef_312
	store %tmp_230 @now
	mov %tmp_231 %varDef_250
	store %tmp_231 @dx
	mov %tmp_232 %varDef_313
	store %tmp_232 @ok
	mov %tmp_233 %varDef_314
	store %tmp_233 @tail
	mov %tmp_234 %varDef_315
	store %tmp_234 @ylist
	mov %tmp_235 %varDef_316
	store %tmp_235 @y
	mov %tmp_236 %varDef_317
	store %tmp_236 @N
	mov %tmp_237 %varDef_318
	store %tmp_237 @targety
	mov %tmp_238 %varDef_319
	store %tmp_238 @j
	mov %tmp_239 %varDef_320
	store %tmp_239 @x
	mov %tmp_240 %varDef_321
	store %tmp_240 @targetx
	ret 0

}

