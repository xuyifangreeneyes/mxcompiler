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
	%global2local_19 = alloca 8
	%global2local_18 = alloca 8
	%global2local_17 = alloca 8
	%global2local_16 = alloca 8
	%tmp_23 = load @dy
	store %tmp_23 %global2local_19
	%tmp_22 = load @ylist
	store %tmp_22 %global2local_18
	%tmp_21 = load @xlist
	store %tmp_21 %global2local_17
	%tmp_20 = load @dx
	store %tmp_20 %global2local_16
	%memberLength_1 = mul 12000 8
	%arrayLength_2 = add %memberLength_1 8
	%arrayPtr_0 = malloc %arrayLength_2
	store 12000 %arrayPtr_0
	%arrayBase_3 = add %arrayPtr_0 8
	store %arrayBase_3 %global2local_17
	%memberLength_5 = mul 12000 8
	%arrayLength_6 = add %memberLength_5 8
	%arrayPtr_4 = malloc %arrayLength_6
	store 12000 %arrayPtr_4
	%arrayBase_7 = add %arrayPtr_4 8
	store %arrayBase_7 %global2local_18
	%memberLength_9 = mul 8 8
	%arrayLength_10 = add %memberLength_9 8
	%arrayPtr_8 = malloc %arrayLength_10
	store 8 %arrayPtr_8
	%arrayBase_11 = add %arrayPtr_8 8
	store %arrayBase_11 %global2local_16
	%memberLength_13 = mul 9 8
	%arrayLength_14 = add %memberLength_13 8
	%arrayPtr_12 = malloc %arrayLength_14
	store 9 %arrayPtr_12
	%arrayBase_15 = add %arrayPtr_12 8
	store %arrayBase_15 %global2local_19
	%tmp_24 = load %global2local_16
	store %tmp_24 @dx
	%tmp_25 = load %global2local_17
	store %tmp_25 @xlist
	%tmp_26 = load %global2local_18
	store %tmp_26 @ylist
	%tmp_27 = load %global2local_19
	store %tmp_27 @dy
	ret 

}

define origin ( %argVal_0 ) {
<0> entry
	%global2local_40 = alloca 8
	%global2local_39 = alloca 8
	%global2local_38 = alloca 8
	%global2local_37 = alloca 8
	%global2local_36 = alloca 8
	%argAddr_1 = alloca 8
	%tmp_45 = load @j
	store %tmp_45 %global2local_40
	%tmp_44 = load @step
	store %tmp_44 %global2local_39
	%tmp_43 = load @head
	store %tmp_43 %global2local_38
	%tmp_42 = load @i
	store %tmp_42 %global2local_37
	%tmp_41 = load @tail
	store %tmp_41 %global2local_36
	store %argVal_0 %argAddr_1
	store 0 %global2local_38
	store 0 %global2local_36
	%idVal_2 = load %argAddr_1
	%memberLength_4 = mul %idVal_2 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store %idVal_2 %arrayPtr_3
	%arrayBase_6 = add %arrayPtr_3 8
	store %arrayBase_6 %global2local_39
	store 0 %global2local_37
	br <1>

<1> for_cond
	%idVal_7 = load %global2local_37
	%idVal_8 = load %argAddr_1
	%res_9 = lt %idVal_7 %idVal_8
	br %res_9 <2> <4>

<2> for_body
	%idVal_10 = load %argAddr_1
	%memberLength_12 = mul %idVal_10 8
	%arrayLength_13 = add %memberLength_12 8
	%arrayPtr_11 = malloc %arrayLength_13
	store %idVal_10 %arrayPtr_11
	%arrayBase_14 = add %arrayPtr_11 8
	%arrayBase_15 = load %global2local_39
	%idVal_16 = load %global2local_37
	%offset_17 = mul %idVal_16 8
	%elementAddr_18 = add %arrayBase_15 %offset_17
	store %arrayBase_14 %elementAddr_18
	store 0 %global2local_40
	br <5>

<5> for_cond
	%idVal_19 = load %global2local_40
	%idVal_20 = load %argAddr_1
	%res_21 = lt %idVal_19 %idVal_20
	br %res_21 <6> <8>

<6> for_body
	%arrayBase_22 = load %global2local_39
	%idVal_23 = load %global2local_37
	%offset_24 = mul %idVal_23 8
	%elementAddr_25 = add %arrayBase_22 %offset_24
	%arrayBase_26 = load %elementAddr_25
	%idVal_27 = load %global2local_40
	%offset_28 = mul %idVal_27 8
	%elementAddr_29 = add %arrayBase_26 %offset_28
	store 0 %elementAddr_29
	br <7>

<7> for_step
	%idVal_30 = load %global2local_40
	%oldVal_31 = load %global2local_40
	%newVal_32 = inc %oldVal_31
	store %newVal_32 %global2local_40
	br <5>

<8> for_end
	br <3>

<3> for_step
	%idVal_33 = load %global2local_37
	%oldVal_34 = load %global2local_37
	%newVal_35 = inc %oldVal_34
	store %newVal_35 %global2local_37
	br <1>

<4> for_end
	%tmp_46 = load %global2local_36
	store %tmp_46 @tail
	%tmp_47 = load %global2local_37
	store %tmp_47 @i
	%tmp_48 = load %global2local_38
	store %tmp_48 @head
	%tmp_49 = load %global2local_39
	store %tmp_49 @step
	%tmp_50 = load %global2local_40
	store %tmp_50 @j
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
	%global2local_74 = alloca 8
	%global2local_73 = alloca 8
	%global2local_72 = alloca 8
	%global2local_71 = alloca 8
	%global2local_70 = alloca 8
	%global2local_69 = alloca 8
	%global2local_68 = alloca 8
	%global2local_67 = alloca 8
	%global2local_66 = alloca 8
	%cargAddr_59 = alloca 8
	%cboolValAddr_58 = alloca 8
	%retValAddr_57 = alloca 8
	%cargAddr_50 = alloca 8
	%cboolValAddr_49 = alloca 8
	%retValAddr_48 = alloca 8
	%argAddr_3 = alloca 8
	%argAddr_1 = alloca 8
	%tmp_83 = load @step
	store %tmp_83 %global2local_74
	%tmp_82 = load @targetx
	store %tmp_82 %global2local_73
	%tmp_81 = load @ylist
	store %tmp_81 %global2local_72
	%tmp_80 = load @xlist
	store %tmp_80 %global2local_71
	%tmp_79 = load @ok
	store %tmp_79 %global2local_70
	%tmp_78 = load @targety
	store %tmp_78 %global2local_69
	%tmp_77 = load @tail
	store %tmp_77 %global2local_68
	%tmp_76 = load @N
	store %tmp_76 %global2local_67
	%tmp_75 = load @now
	store %tmp_75 %global2local_66
	store %argVal_0 %argAddr_1
	store %argVal_2 %argAddr_3
	%idVal_5 = load %argAddr_1
	br <9>

<9> centry
	store %idVal_5 %cargAddr_50
	%cidVal_51 = load %cargAddr_50
	%cidVal_52 = load %global2local_67
	%cres_53 = lt %cidVal_51 %cidVal_52
	br %cres_53 <10> <12>

<10> clhs_true
	%cidVal_54 = load %cargAddr_50
	%cres_55 = ge %cidVal_54 0
	br %cres_55 <11> <12>

<11> cbool_true
	store 1 %cboolValAddr_49
	br <13>

<12> cbool_false
	store 0 %cboolValAddr_49
	br <13>

<13> cbool_merge
	%cboolVal_56 = load %cboolValAddr_49
	store %cboolVal_56 %retValAddr_48
	br <8>

<8> after_call
	%res_4 = load %retValAddr_48
	br %res_4 <4> <2>

<4> lhs_true
	%idVal_7 = load %argAddr_3
	br <15>

<15> centry
	store %idVal_7 %cargAddr_59
	%cidVal_60 = load %cargAddr_59
	%cidVal_61 = load %global2local_67
	%cres_62 = lt %cidVal_60 %cidVal_61
	br %cres_62 <16> <18>

<16> clhs_true
	%cidVal_63 = load %cargAddr_59
	%cres_64 = ge %cidVal_63 0
	br %cres_64 <17> <18>

<17> cbool_true
	store 1 %cboolValAddr_58
	br <19>

<18> cbool_false
	store 0 %cboolValAddr_58
	br <19>

<19> cbool_merge
	%cboolVal_65 = load %cboolValAddr_58
	store %cboolVal_65 %retValAddr_57
	br <14>

<14> after_call
	%res_6 = load %retValAddr_57
	br %res_6 <3> <2>

<3> lhs_true
	%arrayBase_8 = load %global2local_74
	%idVal_9 = load %argAddr_1
	%offset_10 = mul %idVal_9 8
	%elementAddr_11 = add %arrayBase_8 %offset_10
	%arrayBase_12 = load %elementAddr_11
	%idVal_13 = load %argAddr_3
	%offset_14 = mul %idVal_13 8
	%elementAddr_15 = add %arrayBase_12 %offset_14
	%elementVal_16 = load %elementAddr_15
	%res_17 = neg 1
	%res_18 = eq %elementVal_16 %res_17
	br %res_18 <1> <2>

<1> if_true
	%idVal_19 = load %global2local_68
	%oldVal_20 = load %global2local_68
	%newVal_21 = inc %oldVal_20
	store %newVal_21 %global2local_68
	%idVal_22 = load %argAddr_1
	%arrayBase_23 = load %global2local_71
	%idVal_24 = load %global2local_68
	%offset_25 = mul %idVal_24 8
	%elementAddr_26 = add %arrayBase_23 %offset_25
	store %idVal_22 %elementAddr_26
	%idVal_27 = load %argAddr_3
	%arrayBase_28 = load %global2local_72
	%idVal_29 = load %global2local_68
	%offset_30 = mul %idVal_29 8
	%elementAddr_31 = add %arrayBase_28 %offset_30
	store %idVal_27 %elementAddr_31
	%idVal_32 = load %global2local_66
	%res_33 = add %idVal_32 1
	%arrayBase_34 = load %global2local_74
	%idVal_35 = load %argAddr_1
	%offset_36 = mul %idVal_35 8
	%elementAddr_37 = add %arrayBase_34 %offset_36
	%arrayBase_38 = load %elementAddr_37
	%idVal_39 = load %argAddr_3
	%offset_40 = mul %idVal_39 8
	%elementAddr_41 = add %arrayBase_38 %offset_40
	store %res_33 %elementAddr_41
	%idVal_42 = load %argAddr_1
	%idVal_43 = load %global2local_73
	%res_44 = eq %idVal_42 %idVal_43
	br %res_44 <7> <6>

<7> lhs_true
	%idVal_45 = load %argAddr_3
	%idVal_46 = load %global2local_69
	%res_47 = eq %idVal_45 %idVal_46
	br %res_47 <5> <6>

<5> if_true
	store 1 %global2local_70
	br <6>

<6> if_merge
	br <2>

<2> if_merge
	%tmp_84 = load %global2local_68
	store %tmp_84 @tail
	%tmp_85 = load %global2local_70
	store %tmp_85 @ok
	ret 

}

define main ( ) {
<0> entry
	%global2local_233 = alloca 8
	%global2local_232 = alloca 8
	%global2local_231 = alloca 8
	%global2local_230 = alloca 8
	%global2local_229 = alloca 8
	%global2local_228 = alloca 8
	%global2local_227 = alloca 8
	%global2local_226 = alloca 8
	%global2local_225 = alloca 8
	%global2local_224 = alloca 8
	%global2local_223 = alloca 8
	%global2local_222 = alloca 8
	%global2local_221 = alloca 8
	%global2local_220 = alloca 8
	%global2local_219 = alloca 8
	%global2local_218 = alloca 8
	%cargAddr_211 = alloca 8
	%cboolValAddr_210 = alloca 8
	%retValAddr_209 = alloca 8
	%cargAddr_202 = alloca 8
	%cboolValAddr_201 = alloca 8
	%retValAddr_200 = alloca 8
	%cargAddr_155 = alloca 8
	%cargAddr_154 = alloca 8
	%tmp_249 = load @dy
	store %tmp_249 %global2local_233
	%tmp_248 = load @y
	store %tmp_248 %global2local_232
	%tmp_247 = load @x
	store %tmp_247 %global2local_231
	%tmp_246 = load @i
	store %tmp_246 %global2local_230
	%tmp_245 = load @targetx
	store %tmp_245 %global2local_229
	%tmp_244 = load @N
	store %tmp_244 %global2local_228
	%tmp_243 = load @now
	store %tmp_243 %global2local_227
	%tmp_242 = load @j
	store %tmp_242 %global2local_226
	%tmp_241 = load @step
	store %tmp_241 %global2local_225
	%tmp_240 = load @head
	store %tmp_240 %global2local_224
	%tmp_239 = load @ylist
	store %tmp_239 %global2local_223
	%tmp_238 = load @xlist
	store %tmp_238 %global2local_222
	%tmp_237 = load @ok
	store %tmp_237 %global2local_221
	%tmp_236 = load @tail
	store %tmp_236 %global2local_220
	%tmp_235 = load @targety
	store %tmp_235 %global2local_219
	%tmp_234 = load @dx
	store %tmp_234 %global2local_218
	br <22>

<22> centry
	%cmemberLength_138 = mul 12000 8
	%carrayLength_139 = add %cmemberLength_138 8
	%carrayPtr_140 = malloc %carrayLength_139
	store 12000 %carrayPtr_140
	%carrayBase_141 = add %carrayPtr_140 8
	store %carrayBase_141 %global2local_222
	%cmemberLength_142 = mul 12000 8
	%carrayLength_143 = add %cmemberLength_142 8
	%carrayPtr_144 = malloc %carrayLength_143
	store 12000 %carrayPtr_144
	%carrayBase_145 = add %carrayPtr_144 8
	store %carrayBase_145 %global2local_223
	%cmemberLength_146 = mul 8 8
	%carrayLength_147 = add %cmemberLength_146 8
	%carrayPtr_148 = malloc %carrayLength_147
	store 8 %carrayPtr_148
	%carrayBase_149 = add %carrayPtr_148 8
	store %carrayBase_149 %global2local_218
	%cmemberLength_150 = mul 9 8
	%carrayLength_151 = add %cmemberLength_150 8
	%carrayPtr_152 = malloc %carrayLength_151
	store 9 %carrayPtr_152
	%carrayBase_153 = add %carrayPtr_152 8
	store %carrayBase_153 %global2local_233
	br <21>

<21> after_call
	%tmp_250 = load %global2local_220
	store %tmp_250 @tail
	%tmp_252 = load %global2local_224
	store %tmp_252 @head
	%tmp_255 = load %global2local_226
	store %tmp_255 @j
	%tmp_257 = load %global2local_230
	store %tmp_257 @i
	origin ( 106 )
	%tmp_258 = load @i
	store %tmp_258 %global2local_230
	%tmp_256 = load @j
	store %tmp_256 %global2local_226
	%tmp_254 = load @step
	store %tmp_254 %global2local_225
	%tmp_253 = load @head
	store %tmp_253 %global2local_224
	%tmp_251 = load @tail
	store %tmp_251 %global2local_220
	%res_0 = getInt ( )
	store %res_0 %global2local_228
	%idVal_1 = load %global2local_228
	%res_2 = sub %idVal_1 1
	store %res_2 %global2local_219
	%idVal_3 = load %global2local_219
	store %idVal_3 %global2local_229
	store 0 %global2local_230
	br <1>

<1> for_cond
	%idVal_4 = load %global2local_230
	%idVal_5 = load %global2local_228
	%res_6 = lt %idVal_4 %idVal_5
	br %res_6 <2> <4>

<2> for_body
	store 0 %global2local_226
	br <5>

<5> for_cond
	%idVal_7 = load %global2local_226
	%idVal_8 = load %global2local_228
	%res_9 = lt %idVal_7 %idVal_8
	br %res_9 <6> <8>

<6> for_body
	%res_10 = neg 1
	%arrayBase_11 = load %global2local_225
	%idVal_12 = load %global2local_230
	%offset_13 = mul %idVal_12 8
	%elementAddr_14 = add %arrayBase_11 %offset_13
	%arrayBase_15 = load %elementAddr_14
	%idVal_16 = load %global2local_226
	%offset_17 = mul %idVal_16 8
	%elementAddr_18 = add %arrayBase_15 %offset_17
	store %res_10 %elementAddr_18
	br <7>

<7> for_step
	%idVal_19 = load %global2local_226
	%oldVal_20 = load %global2local_226
	%newVal_21 = inc %oldVal_20
	store %newVal_21 %global2local_226
	br <5>

<8> for_end
	br <3>

<3> for_step
	%idVal_22 = load %global2local_230
	%oldVal_23 = load %global2local_230
	%newVal_24 = inc %oldVal_23
	store %newVal_24 %global2local_230
	br <1>

<4> for_end
	%res_25 = neg 2
	%arrayBase_26 = load %global2local_218
	%offset_27 = mul 0 8
	%elementAddr_28 = add %arrayBase_26 %offset_27
	store %res_25 %elementAddr_28
	%res_29 = neg 1
	%arrayBase_30 = load %global2local_233
	%offset_31 = mul 0 8
	%elementAddr_32 = add %arrayBase_30 %offset_31
	store %res_29 %elementAddr_32
	%res_33 = neg 2
	%arrayBase_34 = load %global2local_218
	%offset_35 = mul 1 8
	%elementAddr_36 = add %arrayBase_34 %offset_35
	store %res_33 %elementAddr_36
	%arrayBase_37 = load %global2local_233
	%offset_38 = mul 1 8
	%elementAddr_39 = add %arrayBase_37 %offset_38
	store 1 %elementAddr_39
	%arrayBase_40 = load %global2local_218
	%offset_41 = mul 2 8
	%elementAddr_42 = add %arrayBase_40 %offset_41
	store 2 %elementAddr_42
	%res_43 = neg 1
	%arrayBase_44 = load %global2local_233
	%offset_45 = mul 2 8
	%elementAddr_46 = add %arrayBase_44 %offset_45
	store %res_43 %elementAddr_46
	%arrayBase_47 = load %global2local_218
	%offset_48 = mul 3 8
	%elementAddr_49 = add %arrayBase_47 %offset_48
	store 2 %elementAddr_49
	%arrayBase_50 = load %global2local_233
	%offset_51 = mul 3 8
	%elementAddr_52 = add %arrayBase_50 %offset_51
	store 1 %elementAddr_52
	%res_53 = neg 1
	%arrayBase_54 = load %global2local_218
	%offset_55 = mul 4 8
	%elementAddr_56 = add %arrayBase_54 %offset_55
	store %res_53 %elementAddr_56
	%res_57 = neg 2
	%arrayBase_58 = load %global2local_233
	%offset_59 = mul 4 8
	%elementAddr_60 = add %arrayBase_58 %offset_59
	store %res_57 %elementAddr_60
	%res_61 = neg 1
	%arrayBase_62 = load %global2local_218
	%offset_63 = mul 5 8
	%elementAddr_64 = add %arrayBase_62 %offset_63
	store %res_61 %elementAddr_64
	%arrayBase_65 = load %global2local_233
	%offset_66 = mul 5 8
	%elementAddr_67 = add %arrayBase_65 %offset_66
	store 2 %elementAddr_67
	%arrayBase_68 = load %global2local_218
	%offset_69 = mul 6 8
	%elementAddr_70 = add %arrayBase_68 %offset_69
	store 1 %elementAddr_70
	%res_71 = neg 2
	%arrayBase_72 = load %global2local_233
	%offset_73 = mul 6 8
	%elementAddr_74 = add %arrayBase_72 %offset_73
	store %res_71 %elementAddr_74
	%arrayBase_75 = load %global2local_218
	%offset_76 = mul 7 8
	%elementAddr_77 = add %arrayBase_75 %offset_76
	store 1 %elementAddr_77
	%arrayBase_78 = load %global2local_233
	%offset_79 = mul 7 8
	%elementAddr_80 = add %arrayBase_78 %offset_79
	store 2 %elementAddr_80
	br <9>

<9> while_cond
	%idVal_81 = load %global2local_224
	%idVal_82 = load %global2local_220
	%res_83 = le %idVal_81 %idVal_82
	br %res_83 <10> <11>

<10> while_body
	%arrayBase_84 = load %global2local_222
	%idVal_85 = load %global2local_224
	%offset_86 = mul %idVal_85 8
	%elementAddr_87 = add %arrayBase_84 %offset_86
	%elementVal_88 = load %elementAddr_87
	store %elementVal_88 %global2local_231
	%arrayBase_89 = load %global2local_223
	%idVal_90 = load %global2local_224
	%offset_91 = mul %idVal_90 8
	%elementAddr_92 = add %arrayBase_89 %offset_91
	%elementVal_93 = load %elementAddr_92
	store %elementVal_93 %global2local_232
	%arrayBase_94 = load %global2local_225
	%idVal_95 = load %global2local_231
	%offset_96 = mul %idVal_95 8
	%elementAddr_97 = add %arrayBase_94 %offset_96
	%arrayBase_98 = load %elementAddr_97
	%idVal_99 = load %global2local_232
	%offset_100 = mul %idVal_99 8
	%elementAddr_101 = add %arrayBase_98 %offset_100
	%elementVal_102 = load %elementAddr_101
	store %elementVal_102 %global2local_227
	store 0 %global2local_226
	br <12>

<12> for_cond
	%idVal_103 = load %global2local_226
	%res_104 = lt %idVal_103 8
	br %res_104 <13> <15>

<13> for_body
	%idVal_105 = load %global2local_231
	%arrayBase_106 = load %global2local_218
	%idVal_107 = load %global2local_226
	%offset_108 = mul %idVal_107 8
	%elementAddr_109 = add %arrayBase_106 %offset_108
	%elementVal_110 = load %elementAddr_109
	%res_111 = add %idVal_105 %elementVal_110
	%idVal_112 = load %global2local_232
	%arrayBase_113 = load %global2local_233
	%idVal_114 = load %global2local_226
	%offset_115 = mul %idVal_114 8
	%elementAddr_116 = add %arrayBase_113 %offset_115
	%elementVal_117 = load %elementAddr_116
	%res_118 = add %idVal_112 %elementVal_117
	br <24>

<24> centry
	store %res_111 %cargAddr_155
	store %res_118 %cargAddr_154
	%cidVal_156 = load %cargAddr_155
	br <33>

<33> centry
	store %cidVal_156 %cargAddr_202
	%cidVal_203 = load %cargAddr_202
	%cidVal_204 = load %global2local_228
	%cres_205 = lt %cidVal_203 %cidVal_204
	br %cres_205 <34> <36>

<34> clhs_true
	%cidVal_206 = load %cargAddr_202
	%cres_207 = ge %cidVal_206 0
	br %cres_207 <35> <36>

<35> cbool_true
	store 1 %cboolValAddr_201
	br <37>

<36> cbool_false
	store 0 %cboolValAddr_201
	br <37>

<37> cbool_merge
	%cboolVal_208 = load %cboolValAddr_201
	store %cboolVal_208 %retValAddr_200
	br <32>

<32> after_call
	%cres_157 = load %retValAddr_200
	br %cres_157 <25> <31>

<25> clhs_true
	%cidVal_158 = load %cargAddr_154
	br <39>

<39> centry
	store %cidVal_158 %cargAddr_211
	%cidVal_212 = load %cargAddr_211
	%cidVal_213 = load %global2local_228
	%cres_214 = lt %cidVal_212 %cidVal_213
	br %cres_214 <40> <42>

<40> clhs_true
	%cidVal_215 = load %cargAddr_211
	%cres_216 = ge %cidVal_215 0
	br %cres_216 <41> <42>

<41> cbool_true
	store 1 %cboolValAddr_210
	br <43>

<42> cbool_false
	store 0 %cboolValAddr_210
	br <43>

<43> cbool_merge
	%cboolVal_217 = load %cboolValAddr_210
	store %cboolVal_217 %retValAddr_209
	br <38>

<38> after_call
	%cres_159 = load %retValAddr_209
	br %cres_159 <26> <31>

<26> clhs_true
	%carrayBase_160 = load %global2local_225
	%cidVal_161 = load %cargAddr_155
	%coffset_162 = mul %cidVal_161 8
	%celementAddr_163 = add %carrayBase_160 %coffset_162
	%carrayBase_164 = load %celementAddr_163
	%cidVal_165 = load %cargAddr_154
	%coffset_166 = mul %cidVal_165 8
	%celementAddr_167 = add %carrayBase_164 %coffset_166
	%celementVal_168 = load %celementAddr_167
	%cres_169 = neg 1
	%cres_170 = eq %celementVal_168 %cres_169
	br %cres_170 <27> <31>

<27> cif_true
	%cidVal_171 = load %global2local_220
	%coldVal_172 = load %global2local_220
	%cnewVal_173 = inc %coldVal_172
	store %cnewVal_173 %global2local_220
	%cidVal_174 = load %cargAddr_155
	%carrayBase_175 = load %global2local_222
	%cidVal_176 = load %global2local_220
	%coffset_177 = mul %cidVal_176 8
	%celementAddr_178 = add %carrayBase_175 %coffset_177
	store %cidVal_174 %celementAddr_178
	%cidVal_179 = load %cargAddr_154
	%carrayBase_180 = load %global2local_223
	%cidVal_181 = load %global2local_220
	%coffset_182 = mul %cidVal_181 8
	%celementAddr_183 = add %carrayBase_180 %coffset_182
	store %cidVal_179 %celementAddr_183
	%cidVal_184 = load %global2local_227
	%cres_185 = add %cidVal_184 1
	%carrayBase_186 = load %global2local_225
	%cidVal_187 = load %cargAddr_155
	%coffset_188 = mul %cidVal_187 8
	%celementAddr_189 = add %carrayBase_186 %coffset_188
	%carrayBase_190 = load %celementAddr_189
	%cidVal_191 = load %cargAddr_154
	%coffset_192 = mul %cidVal_191 8
	%celementAddr_193 = add %carrayBase_190 %coffset_192
	store %cres_185 %celementAddr_193
	%cidVal_194 = load %cargAddr_155
	%cidVal_195 = load %global2local_229
	%cres_196 = eq %cidVal_194 %cidVal_195
	br %cres_196 <28> <30>

<28> clhs_true
	%cidVal_197 = load %cargAddr_154
	%cidVal_198 = load %global2local_219
	%cres_199 = eq %cidVal_197 %cidVal_198
	br %cres_199 <29> <30>

<29> cif_true
	store 1 %global2local_221
	br <30>

<30> cif_merge
	br <31>

<31> cif_merge
	br <23>

<23> after_call
	br <14>

<14> for_step
	%idVal_119 = load %global2local_226
	%oldVal_120 = load %global2local_226
	%newVal_121 = inc %oldVal_120
	store %newVal_121 %global2local_226
	br <12>

<15> for_end
	%idVal_122 = load %global2local_221
	%res_123 = eq %idVal_122 1
	br %res_123 <16> <17>

<16> if_true
	br <11>

<17> if_merge
	%idVal_124 = load %global2local_224
	%oldVal_125 = load %global2local_224
	%newVal_126 = inc %oldVal_125
	store %newVal_126 %global2local_224
	br <9>

<11> while_end
	%idVal_127 = load %global2local_221
	%res_128 = eq %idVal_127 1
	br %res_128 <18> <19>

<18> if_true
	%arrayBase_129 = load %global2local_225
	%idVal_130 = load %global2local_229
	%offset_131 = mul %idVal_130 8
	%elementAddr_132 = add %arrayBase_129 %offset_131
	%arrayBase_133 = load %elementAddr_132
	%idVal_134 = load %global2local_219
	%offset_135 = mul %idVal_134 8
	%elementAddr_136 = add %arrayBase_133 %offset_135
	%elementVal_137 = load %elementAddr_136
	__printlnInt ( %elementVal_137 )
	br <20>

<19> if_false
	print ( $str_0 )
	br <20>

<20> if_merge
	%tmp_259 = load %global2local_218
	store %tmp_259 @dx
	%tmp_260 = load %global2local_219
	store %tmp_260 @targety
	%tmp_261 = load %global2local_220
	store %tmp_261 @tail
	%tmp_262 = load %global2local_221
	store %tmp_262 @ok
	%tmp_263 = load %global2local_222
	store %tmp_263 @xlist
	%tmp_264 = load %global2local_223
	store %tmp_264 @ylist
	%tmp_265 = load %global2local_224
	store %tmp_265 @head
	%tmp_266 = load %global2local_226
	store %tmp_266 @j
	%tmp_267 = load %global2local_227
	store %tmp_267 @now
	%tmp_268 = load %global2local_228
	store %tmp_268 @N
	%tmp_269 = load %global2local_229
	store %tmp_269 @targetx
	%tmp_270 = load %global2local_230
	store %tmp_270 @i
	%tmp_271 = load %global2local_231
	store %tmp_271 @x
	%tmp_272 = load %global2local_232
	store %tmp_272 @y
	%tmp_273 = load %global2local_233
	store %tmp_273 @dy
	ret 0

}

