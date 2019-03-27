$str_0 "no solution!\n"

define #print

define #println

define #getString

define #getInt

define #toString

define #string#length

define #string#substring

define #string#parseInt

define #string#ord

define #array#size

define #string#add

define #string#eq

define #string#neq

define #string#lt

define #string#gt

define #string#le

define #string#ge

define #global#init ( ) {
<0> entry

}

define #check ( %argVal_0 %argVal_2 ) {
<0> entry
	%res_7 = lt %argVal_0 %argVal_2
	br %res_7 <4> <2>

<4> lhs_true
	%res_9 = ge %argVal_0 0
	br %res_9 <1> <2>

<1> bool_true
	br <3>

<2> bool_false
	br <3>

<3> bool_merge
	%varDef_15 = phi <1> 1 <2> 0
	ret %varDef_15

}

define #main ( ) {
<0> entry
	%res_16 = #getInt ( )
	%res_18 = sub %res_16 1
	%res_23 = mul %res_16 %res_16
	%memberLength_25 = mul %res_23 4
	%arrayLength_26 = add %memberLength_25 4
	%arrayPtr_24 = malloc %arrayLength_26
	store %res_23 %arrayPtr_24
	br <1>

<1> for_cond
	%varDef_850 = phi <0> 0 <2> %newVal_39
	%res_30 = mul %res_16 %res_16
	%res_31 = lt %varDef_850 %res_30
	br %res_31 <2> <4>

<2> for_body
	%arrayBase_33 = add %arrayPtr_24 4
	%offset_35 = mul %varDef_850 4
	%elementAddr_36 = add %arrayBase_33 %offset_35
	store 0 %elementAddr_36
	%newVal_39 = inc %varDef_850
	br <1>

<4> for_end
	%res_42 = mul %res_16 %res_16
	%memberLength_44 = mul %res_42 4
	%arrayLength_45 = add %memberLength_44 4
	%arrayPtr_43 = malloc %arrayLength_45
	store %res_42 %arrayPtr_43
	br <5>

<5> for_cond
	%varDef_854 = phi <4> 0 <6> %newVal_58
	%res_49 = mul %res_16 %res_16
	%res_50 = lt %varDef_854 %res_49
	br %res_50 <6> <8>

<6> for_body
	%arrayBase_52 = add %arrayPtr_43 4
	%offset_54 = mul %varDef_854 4
	%elementAddr_55 = add %arrayBase_52 %offset_54
	store 0 %elementAddr_55
	%newVal_58 = inc %varDef_854
	br <5>

<8> for_end
	%memberLength_61 = mul %res_16 4
	%arrayLength_62 = add %memberLength_61 4
	%arrayPtr_60 = malloc %arrayLength_62
	store %res_16 %arrayPtr_60
	br <9>

<9> for_cond
	%varDef_858 = phi <8> 0 <11> %newVal_94
	%res_65 = lt %varDef_858 %res_16
	br %res_65 <10> <12>

<10> for_body
	%memberLength_68 = mul %res_16 4
	%arrayLength_69 = add %memberLength_68 4
	%arrayPtr_67 = malloc %arrayLength_69
	store %res_16 %arrayPtr_67
	%arrayBase_71 = add %arrayPtr_60 4
	%offset_73 = mul %varDef_858 4
	%elementAddr_74 = add %arrayBase_71 %offset_73
	store %arrayPtr_67 %elementAddr_74
	br <13>

<13> for_cond
	%varDef_861 = phi <10> 0 <14> %newVal_91
	%res_77 = lt %varDef_861 %res_16
	br %res_77 <14> <11>

<14> for_body
	%arrayBase_80 = add %arrayPtr_60 4
	%offset_82 = mul %varDef_858 4
	%elementAddr_83 = add %arrayBase_80 %offset_82
	%arrayPtr_84 = load %elementAddr_83
	%arrayBase_85 = add %arrayPtr_84 4
	%offset_87 = mul %varDef_861 4
	%elementAddr_88 = add %arrayBase_85 %offset_87
	store -1 %elementAddr_88
	%newVal_91 = inc %varDef_861
	br <13>

<11> for_step
	%newVal_94 = inc %varDef_858
	br <9>

<12> for_end
	%arrayBase_97 = add %arrayPtr_24 4
	%elementAddr_99 = add %arrayBase_97 0
	store 0 %elementAddr_99
	%arrayBase_102 = add %arrayPtr_43 4
	%elementAddr_104 = add %arrayBase_102 0
	store 0 %elementAddr_104
	%arrayBase_106 = add %arrayPtr_60 4
	%elementAddr_109 = add %arrayBase_106 0
	%arrayPtr_110 = load %elementAddr_109
	%arrayBase_111 = add %arrayPtr_110 4
	%elementAddr_114 = add %arrayBase_111 0
	store 0 %elementAddr_114
	br <17>

<17> while_cond
	%varDef_864 = phi <12> 0 <77> %res_662
	%varDef_865 = phi <12> 0 <77> %varDef_1105
	%varDef_866 = phi <12> 0 <77> %varDef_1106
	%varDef_874 = phi <12> 0 <77> %varDef_953
	%varDef_875 = phi <12> 0 <77> %varDef_954
	%varDef_876 = phi <12> 0 <77> %varDef_955
	%varDef_877 = phi <12> 0 <77> %varDef_956
	%varDef_882 = phi <12> 0 <77> %varDef_975
	%varDef_883 = phi <12> 0 <77> %varDef_976
	%varDef_884 = phi <12> 0 <77> %varDef_977
	%varDef_885 = phi <12> 0 <77> %varDef_978
	%varDef_890 = phi <12> 0 <77> %varDef_997
	%varDef_891 = phi <12> 0 <77> %varDef_998
	%varDef_892 = phi <12> 0 <77> %varDef_999
	%varDef_893 = phi <12> 0 <77> %varDef_1000
	%varDef_898 = phi <12> 0 <77> %varDef_1019
	%varDef_899 = phi <12> 0 <77> %varDef_1020
	%varDef_900 = phi <12> 0 <77> %varDef_1021
	%varDef_901 = phi <12> 0 <77> %varDef_1022
	%varDef_906 = phi <12> 0 <77> %varDef_1041
	%varDef_907 = phi <12> 0 <77> %varDef_1042
	%varDef_908 = phi <12> 0 <77> %varDef_1043
	%varDef_909 = phi <12> 0 <77> %varDef_1044
	%varDef_914 = phi <12> 0 <77> %varDef_1063
	%varDef_915 = phi <12> 0 <77> %varDef_1064
	%varDef_916 = phi <12> 0 <77> %varDef_1065
	%varDef_917 = phi <12> 0 <77> %varDef_1066
	%varDef_922 = phi <12> 0 <77> %varDef_1085
	%varDef_923 = phi <12> 0 <77> %varDef_1086
	%varDef_924 = phi <12> 0 <77> %varDef_1087
	%varDef_925 = phi <12> 0 <77> %varDef_1088
	%varDef_930 = phi <12> 0 <77> %varDef_1107
	%varDef_931 = phi <12> 0 <77> %varDef_1108
	%varDef_932 = phi <12> 0 <77> %varDef_1109
	%varDef_933 = phi <12> 0 <77> %varDef_1110
	%res_117 = le %varDef_864 %varDef_865
	br %res_117 <18> <19>

<18> while_body
	%arrayBase_119 = add %arrayPtr_60 4
	%arrayBase_121 = add %arrayPtr_24 4
	%offset_123 = mul %varDef_864 4
	%elementAddr_124 = add %arrayBase_121 %offset_123
	%elementVal_125 = load %elementAddr_124
	%offset_126 = mul %elementVal_125 4
	%elementAddr_127 = add %arrayBase_119 %offset_126
	%arrayPtr_128 = load %elementAddr_127
	%arrayBase_129 = add %arrayPtr_128 4
	%arrayBase_131 = add %arrayPtr_43 4
	%elementAddr_134 = add %arrayBase_131 %offset_123
	%elementVal_135 = load %elementAddr_134
	%offset_136 = mul %elementVal_135 4
	%elementAddr_137 = add %arrayBase_129 %offset_136
	%elementVal_138 = load %elementAddr_137
	%elementVal_144 = load %elementAddr_124
	%res_145 = sub %elementVal_144 1
	%elementVal_151 = load %elementAddr_134
	%res_152 = sub %elementVal_151 2
	%cres_683 = lt %res_145 %res_16
	br %cres_683 <83> <85>

<83> clhs_true
	%cres_685 = ge %res_145 0
	br %cres_685 <84> <85>

<84> cbool_true
	br <86>

<85> cbool_false
	br <86>

<86> cbool_merge
	%varDef_941 = phi <84> 1 <85> 0
	br %varDef_941 <23> <21>

<23> lhs_true
	%cres_693 = lt %res_152 %res_16
	br %cres_693 <89> <91>

<89> clhs_true
	%cres_695 = ge %res_152 0
	br %cres_695 <90> <91>

<90> cbool_true
	br <92>

<91> cbool_false
	br <92>

<92> cbool_merge
	%varDef_947 = phi <90> 1 <91> 0
	br %varDef_947 <22> <21>

<22> lhs_true
	%arrayBase_160 = add %arrayPtr_60 4
	%offset_162 = mul %res_145 4
	%elementAddr_163 = add %arrayBase_160 %offset_162
	%arrayPtr_164 = load %elementAddr_163
	%arrayBase_165 = add %arrayPtr_164 4
	%offset_167 = mul %res_152 4
	%elementAddr_168 = add %arrayBase_165 %offset_167
	%elementVal_169 = load %elementAddr_168
	%res_171 = eq %elementVal_169 -1
	br %res_171 <20> <21>

<20> if_true
	%res_173 = add %varDef_865 1
	%arrayBase_176 = add %arrayPtr_24 4
	%offset_178 = mul %res_173 4
	%elementAddr_179 = add %arrayBase_176 %offset_178
	store %res_145 %elementAddr_179
	%arrayBase_182 = add %arrayPtr_43 4
	%elementAddr_185 = add %arrayBase_182 %offset_178
	store %res_152 %elementAddr_185
	%res_187 = add %elementVal_138 1
	%arrayBase_189 = add %arrayPtr_60 4
	%offset_191 = mul %res_145 4
	%elementAddr_192 = add %arrayBase_189 %offset_191
	%arrayPtr_193 = load %elementAddr_192
	%arrayBase_194 = add %arrayPtr_193 4
	%offset_196 = mul %res_152 4
	%elementAddr_197 = add %arrayBase_194 %offset_196
	store %res_187 %elementAddr_197
	%res_200 = eq %res_145 %res_18
	br %res_200 <26> <21>

<26> lhs_true
	%res_203 = eq %res_152 %res_18
	br %res_203 <24> <21>

<24> if_true
	br <21>

<21> if_merge
	%varDef_951 = phi <86> %varDef_865 <92> %varDef_865 <22> %varDef_865 <20> %res_173 <26> %res_173 <24> %res_173
	%varDef_952 = phi <86> %varDef_866 <92> %varDef_866 <22> %varDef_866 <20> %varDef_866 <26> %varDef_866 <24> 1
	%varDef_953 = phi <86> %varDef_874 <92> %varDef_947 <22> %varDef_947 <20> %varDef_947 <26> %varDef_947 <24> %varDef_947
	%varDef_954 = phi <86> %varDef_875 <92> %varDef_947 <22> %varDef_947 <20> %varDef_947 <26> %varDef_947 <24> %varDef_947
	%varDef_955 = phi <86> %varDef_876 <92> %res_16 <22> %res_16 <20> %res_16 <26> %res_16 <24> %res_16
	%varDef_956 = phi <86> %varDef_877 <92> %res_152 <22> %res_152 <20> %res_152 <26> %res_152 <24> %res_152
	%arrayBase_205 = add %arrayPtr_24 4
	%offset_207 = mul %varDef_864 4
	%elementAddr_208 = add %arrayBase_205 %offset_207
	%elementVal_209 = load %elementAddr_208
	%res_210 = sub %elementVal_209 1
	%arrayBase_212 = add %arrayPtr_43 4
	%elementAddr_215 = add %arrayBase_212 %offset_207
	%elementVal_216 = load %elementAddr_215
	%res_217 = add %elementVal_216 2
	%cres_703 = lt %res_210 %res_16
	br %cres_703 <95> <97>

<95> clhs_true
	%cres_705 = ge %res_210 0
	br %cres_705 <96> <97>

<96> cbool_true
	br <98>

<97> cbool_false
	br <98>

<98> cbool_merge
	%varDef_963 = phi <96> 1 <97> 0
	br %varDef_963 <30> <28>

<30> lhs_true
	%cres_713 = lt %res_217 %res_16
	br %cres_713 <101> <103>

<101> clhs_true
	%cres_715 = ge %res_217 0
	br %cres_715 <102> <103>

<102> cbool_true
	br <104>

<103> cbool_false
	br <104>

<104> cbool_merge
	%varDef_969 = phi <102> 1 <103> 0
	br %varDef_969 <29> <28>

<29> lhs_true
	%arrayBase_225 = add %arrayPtr_60 4
	%offset_227 = mul %res_210 4
	%elementAddr_228 = add %arrayBase_225 %offset_227
	%arrayPtr_229 = load %elementAddr_228
	%arrayBase_230 = add %arrayPtr_229 4
	%offset_232 = mul %res_217 4
	%elementAddr_233 = add %arrayBase_230 %offset_232
	%elementVal_234 = load %elementAddr_233
	%res_236 = eq %elementVal_234 -1
	br %res_236 <27> <28>

<27> if_true
	%res_238 = add %varDef_951 1
	%arrayBase_241 = add %arrayPtr_24 4
	%offset_243 = mul %res_238 4
	%elementAddr_244 = add %arrayBase_241 %offset_243
	store %res_210 %elementAddr_244
	%arrayBase_247 = add %arrayPtr_43 4
	%elementAddr_250 = add %arrayBase_247 %offset_243
	store %res_217 %elementAddr_250
	%res_252 = add %elementVal_138 1
	%arrayBase_254 = add %arrayPtr_60 4
	%offset_256 = mul %res_210 4
	%elementAddr_257 = add %arrayBase_254 %offset_256
	%arrayPtr_258 = load %elementAddr_257
	%arrayBase_259 = add %arrayPtr_258 4
	%offset_261 = mul %res_217 4
	%elementAddr_262 = add %arrayBase_259 %offset_261
	store %res_252 %elementAddr_262
	%res_265 = eq %res_210 %res_18
	br %res_265 <33> <28>

<33> lhs_true
	%res_268 = eq %res_217 %res_18
	br %res_268 <31> <28>

<31> if_true
	br <28>

<28> if_merge
	%varDef_973 = phi <98> %varDef_951 <104> %varDef_951 <29> %varDef_951 <27> %res_238 <33> %res_238 <31> %res_238
	%varDef_974 = phi <98> %varDef_952 <104> %varDef_952 <29> %varDef_952 <27> %varDef_952 <33> %varDef_952 <31> 1
	%varDef_975 = phi <98> %varDef_882 <104> %varDef_969 <29> %varDef_969 <27> %varDef_969 <33> %varDef_969 <31> %varDef_969
	%varDef_976 = phi <98> %varDef_883 <104> %varDef_969 <29> %varDef_969 <27> %varDef_969 <33> %varDef_969 <31> %varDef_969
	%varDef_977 = phi <98> %varDef_884 <104> %res_16 <29> %res_16 <27> %res_16 <33> %res_16 <31> %res_16
	%varDef_978 = phi <98> %varDef_885 <104> %res_217 <29> %res_217 <27> %res_217 <33> %res_217 <31> %res_217
	%arrayBase_270 = add %arrayPtr_24 4
	%offset_272 = mul %varDef_864 4
	%elementAddr_273 = add %arrayBase_270 %offset_272
	%elementVal_274 = load %elementAddr_273
	%res_275 = add %elementVal_274 1
	%arrayBase_277 = add %arrayPtr_43 4
	%elementAddr_280 = add %arrayBase_277 %offset_272
	%elementVal_281 = load %elementAddr_280
	%res_282 = sub %elementVal_281 2
	%cres_723 = lt %res_275 %res_16
	br %cres_723 <107> <109>

<107> clhs_true
	%cres_725 = ge %res_275 0
	br %cres_725 <108> <109>

<108> cbool_true
	br <110>

<109> cbool_false
	br <110>

<110> cbool_merge
	%varDef_985 = phi <108> 1 <109> 0
	br %varDef_985 <37> <35>

<37> lhs_true
	%cres_733 = lt %res_282 %res_16
	br %cres_733 <113> <115>

<113> clhs_true
	%cres_735 = ge %res_282 0
	br %cres_735 <114> <115>

<114> cbool_true
	br <116>

<115> cbool_false
	br <116>

<116> cbool_merge
	%varDef_991 = phi <114> 1 <115> 0
	br %varDef_991 <36> <35>

<36> lhs_true
	%arrayBase_290 = add %arrayPtr_60 4
	%offset_292 = mul %res_275 4
	%elementAddr_293 = add %arrayBase_290 %offset_292
	%arrayPtr_294 = load %elementAddr_293
	%arrayBase_295 = add %arrayPtr_294 4
	%offset_297 = mul %res_282 4
	%elementAddr_298 = add %arrayBase_295 %offset_297
	%elementVal_299 = load %elementAddr_298
	%res_301 = eq %elementVal_299 -1
	br %res_301 <34> <35>

<34> if_true
	%res_303 = add %varDef_973 1
	%arrayBase_306 = add %arrayPtr_24 4
	%offset_308 = mul %res_303 4
	%elementAddr_309 = add %arrayBase_306 %offset_308
	store %res_275 %elementAddr_309
	%arrayBase_312 = add %arrayPtr_43 4
	%elementAddr_315 = add %arrayBase_312 %offset_308
	store %res_282 %elementAddr_315
	%res_317 = add %elementVal_138 1
	%arrayBase_319 = add %arrayPtr_60 4
	%offset_321 = mul %res_275 4
	%elementAddr_322 = add %arrayBase_319 %offset_321
	%arrayPtr_323 = load %elementAddr_322
	%arrayBase_324 = add %arrayPtr_323 4
	%offset_326 = mul %res_282 4
	%elementAddr_327 = add %arrayBase_324 %offset_326
	store %res_317 %elementAddr_327
	%res_330 = eq %res_275 %res_18
	br %res_330 <40> <35>

<40> lhs_true
	%res_333 = eq %res_282 %res_18
	br %res_333 <38> <35>

<38> if_true
	br <35>

<35> if_merge
	%varDef_995 = phi <110> %varDef_973 <116> %varDef_973 <36> %varDef_973 <34> %res_303 <40> %res_303 <38> %res_303
	%varDef_996 = phi <110> %varDef_974 <116> %varDef_974 <36> %varDef_974 <34> %varDef_974 <40> %varDef_974 <38> 1
	%varDef_997 = phi <110> %varDef_890 <116> %varDef_991 <36> %varDef_991 <34> %varDef_991 <40> %varDef_991 <38> %varDef_991
	%varDef_998 = phi <110> %varDef_891 <116> %varDef_991 <36> %varDef_991 <34> %varDef_991 <40> %varDef_991 <38> %varDef_991
	%varDef_999 = phi <110> %varDef_892 <116> %res_16 <36> %res_16 <34> %res_16 <40> %res_16 <38> %res_16
	%varDef_1000 = phi <110> %varDef_893 <116> %res_282 <36> %res_282 <34> %res_282 <40> %res_282 <38> %res_282
	%arrayBase_335 = add %arrayPtr_24 4
	%offset_337 = mul %varDef_864 4
	%elementAddr_338 = add %arrayBase_335 %offset_337
	%elementVal_339 = load %elementAddr_338
	%res_340 = add %elementVal_339 1
	%arrayBase_342 = add %arrayPtr_43 4
	%elementAddr_345 = add %arrayBase_342 %offset_337
	%elementVal_346 = load %elementAddr_345
	%res_347 = add %elementVal_346 2
	%cres_743 = lt %res_340 %res_16
	br %cres_743 <119> <121>

<119> clhs_true
	%cres_745 = ge %res_340 0
	br %cres_745 <120> <121>

<120> cbool_true
	br <122>

<121> cbool_false
	br <122>

<122> cbool_merge
	%varDef_1007 = phi <120> 1 <121> 0
	br %varDef_1007 <44> <42>

<44> lhs_true
	%cres_753 = lt %res_347 %res_16
	br %cres_753 <125> <127>

<125> clhs_true
	%cres_755 = ge %res_347 0
	br %cres_755 <126> <127>

<126> cbool_true
	br <128>

<127> cbool_false
	br <128>

<128> cbool_merge
	%varDef_1013 = phi <126> 1 <127> 0
	br %varDef_1013 <43> <42>

<43> lhs_true
	%arrayBase_355 = add %arrayPtr_60 4
	%offset_357 = mul %res_340 4
	%elementAddr_358 = add %arrayBase_355 %offset_357
	%arrayPtr_359 = load %elementAddr_358
	%arrayBase_360 = add %arrayPtr_359 4
	%offset_362 = mul %res_347 4
	%elementAddr_363 = add %arrayBase_360 %offset_362
	%elementVal_364 = load %elementAddr_363
	%res_366 = eq %elementVal_364 -1
	br %res_366 <41> <42>

<41> if_true
	%res_368 = add %varDef_995 1
	%arrayBase_371 = add %arrayPtr_24 4
	%offset_373 = mul %res_368 4
	%elementAddr_374 = add %arrayBase_371 %offset_373
	store %res_340 %elementAddr_374
	%arrayBase_377 = add %arrayPtr_43 4
	%elementAddr_380 = add %arrayBase_377 %offset_373
	store %res_347 %elementAddr_380
	%res_382 = add %elementVal_138 1
	%arrayBase_384 = add %arrayPtr_60 4
	%offset_386 = mul %res_340 4
	%elementAddr_387 = add %arrayBase_384 %offset_386
	%arrayPtr_388 = load %elementAddr_387
	%arrayBase_389 = add %arrayPtr_388 4
	%offset_391 = mul %res_347 4
	%elementAddr_392 = add %arrayBase_389 %offset_391
	store %res_382 %elementAddr_392
	%res_395 = eq %res_340 %res_18
	br %res_395 <47> <42>

<47> lhs_true
	%res_398 = eq %res_347 %res_18
	br %res_398 <45> <42>

<45> if_true
	br <42>

<42> if_merge
	%varDef_1017 = phi <122> %varDef_995 <128> %varDef_995 <43> %varDef_995 <41> %res_368 <47> %res_368 <45> %res_368
	%varDef_1018 = phi <122> %varDef_996 <128> %varDef_996 <43> %varDef_996 <41> %varDef_996 <47> %varDef_996 <45> 1
	%varDef_1019 = phi <122> %varDef_898 <128> %varDef_1013 <43> %varDef_1013 <41> %varDef_1013 <47> %varDef_1013 <45> %varDef_1013
	%varDef_1020 = phi <122> %varDef_899 <128> %varDef_1013 <43> %varDef_1013 <41> %varDef_1013 <47> %varDef_1013 <45> %varDef_1013
	%varDef_1021 = phi <122> %varDef_900 <128> %res_16 <43> %res_16 <41> %res_16 <47> %res_16 <45> %res_16
	%varDef_1022 = phi <122> %varDef_901 <128> %res_347 <43> %res_347 <41> %res_347 <47> %res_347 <45> %res_347
	%arrayBase_400 = add %arrayPtr_24 4
	%offset_402 = mul %varDef_864 4
	%elementAddr_403 = add %arrayBase_400 %offset_402
	%elementVal_404 = load %elementAddr_403
	%res_405 = sub %elementVal_404 2
	%arrayBase_407 = add %arrayPtr_43 4
	%elementAddr_410 = add %arrayBase_407 %offset_402
	%elementVal_411 = load %elementAddr_410
	%res_412 = sub %elementVal_411 1
	%cres_763 = lt %res_405 %res_16
	br %cres_763 <131> <133>

<131> clhs_true
	%cres_765 = ge %res_405 0
	br %cres_765 <132> <133>

<132> cbool_true
	br <134>

<133> cbool_false
	br <134>

<134> cbool_merge
	%varDef_1029 = phi <132> 1 <133> 0
	br %varDef_1029 <51> <49>

<51> lhs_true
	%cres_773 = lt %res_412 %res_16
	br %cres_773 <137> <139>

<137> clhs_true
	%cres_775 = ge %res_412 0
	br %cres_775 <138> <139>

<138> cbool_true
	br <140>

<139> cbool_false
	br <140>

<140> cbool_merge
	%varDef_1035 = phi <138> 1 <139> 0
	br %varDef_1035 <50> <49>

<50> lhs_true
	%arrayBase_420 = add %arrayPtr_60 4
	%offset_422 = mul %res_405 4
	%elementAddr_423 = add %arrayBase_420 %offset_422
	%arrayPtr_424 = load %elementAddr_423
	%arrayBase_425 = add %arrayPtr_424 4
	%offset_427 = mul %res_412 4
	%elementAddr_428 = add %arrayBase_425 %offset_427
	%elementVal_429 = load %elementAddr_428
	%res_431 = eq %elementVal_429 -1
	br %res_431 <48> <49>

<48> if_true
	%res_433 = add %varDef_1017 1
	%arrayBase_436 = add %arrayPtr_24 4
	%offset_438 = mul %res_433 4
	%elementAddr_439 = add %arrayBase_436 %offset_438
	store %res_405 %elementAddr_439
	%arrayBase_442 = add %arrayPtr_43 4
	%elementAddr_445 = add %arrayBase_442 %offset_438
	store %res_412 %elementAddr_445
	%res_447 = add %elementVal_138 1
	%arrayBase_449 = add %arrayPtr_60 4
	%offset_451 = mul %res_405 4
	%elementAddr_452 = add %arrayBase_449 %offset_451
	%arrayPtr_453 = load %elementAddr_452
	%arrayBase_454 = add %arrayPtr_453 4
	%offset_456 = mul %res_412 4
	%elementAddr_457 = add %arrayBase_454 %offset_456
	store %res_447 %elementAddr_457
	%res_460 = eq %res_405 %res_18
	br %res_460 <54> <49>

<54> lhs_true
	%res_463 = eq %res_412 %res_18
	br %res_463 <52> <49>

<52> if_true
	br <49>

<49> if_merge
	%varDef_1039 = phi <134> %varDef_1017 <140> %varDef_1017 <50> %varDef_1017 <48> %res_433 <54> %res_433 <52> %res_433
	%varDef_1040 = phi <134> %varDef_1018 <140> %varDef_1018 <50> %varDef_1018 <48> %varDef_1018 <54> %varDef_1018 <52> 1
	%varDef_1041 = phi <134> %varDef_906 <140> %varDef_1035 <50> %varDef_1035 <48> %varDef_1035 <54> %varDef_1035 <52> %varDef_1035
	%varDef_1042 = phi <134> %varDef_907 <140> %varDef_1035 <50> %varDef_1035 <48> %varDef_1035 <54> %varDef_1035 <52> %varDef_1035
	%varDef_1043 = phi <134> %varDef_908 <140> %res_16 <50> %res_16 <48> %res_16 <54> %res_16 <52> %res_16
	%varDef_1044 = phi <134> %varDef_909 <140> %res_412 <50> %res_412 <48> %res_412 <54> %res_412 <52> %res_412
	%arrayBase_465 = add %arrayPtr_24 4
	%offset_467 = mul %varDef_864 4
	%elementAddr_468 = add %arrayBase_465 %offset_467
	%elementVal_469 = load %elementAddr_468
	%res_470 = sub %elementVal_469 2
	%arrayBase_472 = add %arrayPtr_43 4
	%elementAddr_475 = add %arrayBase_472 %offset_467
	%elementVal_476 = load %elementAddr_475
	%res_477 = add %elementVal_476 1
	%cres_783 = lt %res_470 %res_16
	br %cres_783 <143> <145>

<143> clhs_true
	%cres_785 = ge %res_470 0
	br %cres_785 <144> <145>

<144> cbool_true
	br <146>

<145> cbool_false
	br <146>

<146> cbool_merge
	%varDef_1051 = phi <144> 1 <145> 0
	br %varDef_1051 <58> <56>

<58> lhs_true
	%cres_793 = lt %res_477 %res_16
	br %cres_793 <149> <151>

<149> clhs_true
	%cres_795 = ge %res_477 0
	br %cres_795 <150> <151>

<150> cbool_true
	br <152>

<151> cbool_false
	br <152>

<152> cbool_merge
	%varDef_1057 = phi <150> 1 <151> 0
	br %varDef_1057 <57> <56>

<57> lhs_true
	%arrayBase_485 = add %arrayPtr_60 4
	%offset_487 = mul %res_470 4
	%elementAddr_488 = add %arrayBase_485 %offset_487
	%arrayPtr_489 = load %elementAddr_488
	%arrayBase_490 = add %arrayPtr_489 4
	%offset_492 = mul %res_477 4
	%elementAddr_493 = add %arrayBase_490 %offset_492
	%elementVal_494 = load %elementAddr_493
	%res_496 = eq %elementVal_494 -1
	br %res_496 <55> <56>

<55> if_true
	%res_498 = add %varDef_1039 1
	%arrayBase_501 = add %arrayPtr_24 4
	%offset_503 = mul %res_498 4
	%elementAddr_504 = add %arrayBase_501 %offset_503
	store %res_470 %elementAddr_504
	%arrayBase_507 = add %arrayPtr_43 4
	%elementAddr_510 = add %arrayBase_507 %offset_503
	store %res_477 %elementAddr_510
	%res_512 = add %elementVal_138 1
	%arrayBase_514 = add %arrayPtr_60 4
	%offset_516 = mul %res_470 4
	%elementAddr_517 = add %arrayBase_514 %offset_516
	%arrayPtr_518 = load %elementAddr_517
	%arrayBase_519 = add %arrayPtr_518 4
	%offset_521 = mul %res_477 4
	%elementAddr_522 = add %arrayBase_519 %offset_521
	store %res_512 %elementAddr_522
	%res_525 = eq %res_470 %res_18
	br %res_525 <61> <56>

<61> lhs_true
	%res_528 = eq %res_477 %res_18
	br %res_528 <59> <56>

<59> if_true
	br <56>

<56> if_merge
	%varDef_1061 = phi <146> %varDef_1039 <152> %varDef_1039 <57> %varDef_1039 <55> %res_498 <61> %res_498 <59> %res_498
	%varDef_1062 = phi <146> %varDef_1040 <152> %varDef_1040 <57> %varDef_1040 <55> %varDef_1040 <61> %varDef_1040 <59> 1
	%varDef_1063 = phi <146> %varDef_914 <152> %varDef_1057 <57> %varDef_1057 <55> %varDef_1057 <61> %varDef_1057 <59> %varDef_1057
	%varDef_1064 = phi <146> %varDef_915 <152> %varDef_1057 <57> %varDef_1057 <55> %varDef_1057 <61> %varDef_1057 <59> %varDef_1057
	%varDef_1065 = phi <146> %varDef_916 <152> %res_16 <57> %res_16 <55> %res_16 <61> %res_16 <59> %res_16
	%varDef_1066 = phi <146> %varDef_917 <152> %res_477 <57> %res_477 <55> %res_477 <61> %res_477 <59> %res_477
	%arrayBase_530 = add %arrayPtr_24 4
	%offset_532 = mul %varDef_864 4
	%elementAddr_533 = add %arrayBase_530 %offset_532
	%elementVal_534 = load %elementAddr_533
	%res_535 = add %elementVal_534 2
	%arrayBase_537 = add %arrayPtr_43 4
	%elementAddr_540 = add %arrayBase_537 %offset_532
	%elementVal_541 = load %elementAddr_540
	%res_542 = sub %elementVal_541 1
	%cres_803 = lt %res_535 %res_16
	br %cres_803 <155> <157>

<155> clhs_true
	%cres_805 = ge %res_535 0
	br %cres_805 <156> <157>

<156> cbool_true
	br <158>

<157> cbool_false
	br <158>

<158> cbool_merge
	%varDef_1073 = phi <156> 1 <157> 0
	br %varDef_1073 <65> <63>

<65> lhs_true
	%cres_813 = lt %res_542 %res_16
	br %cres_813 <161> <163>

<161> clhs_true
	%cres_815 = ge %res_542 0
	br %cres_815 <162> <163>

<162> cbool_true
	br <164>

<163> cbool_false
	br <164>

<164> cbool_merge
	%varDef_1079 = phi <162> 1 <163> 0
	br %varDef_1079 <64> <63>

<64> lhs_true
	%arrayBase_550 = add %arrayPtr_60 4
	%offset_552 = mul %res_535 4
	%elementAddr_553 = add %arrayBase_550 %offset_552
	%arrayPtr_554 = load %elementAddr_553
	%arrayBase_555 = add %arrayPtr_554 4
	%offset_557 = mul %res_542 4
	%elementAddr_558 = add %arrayBase_555 %offset_557
	%elementVal_559 = load %elementAddr_558
	%res_561 = eq %elementVal_559 -1
	br %res_561 <62> <63>

<62> if_true
	%res_563 = add %varDef_1061 1
	%arrayBase_566 = add %arrayPtr_24 4
	%offset_568 = mul %res_563 4
	%elementAddr_569 = add %arrayBase_566 %offset_568
	store %res_535 %elementAddr_569
	%arrayBase_572 = add %arrayPtr_43 4
	%elementAddr_575 = add %arrayBase_572 %offset_568
	store %res_542 %elementAddr_575
	%res_577 = add %elementVal_138 1
	%arrayBase_579 = add %arrayPtr_60 4
	%offset_581 = mul %res_535 4
	%elementAddr_582 = add %arrayBase_579 %offset_581
	%arrayPtr_583 = load %elementAddr_582
	%arrayBase_584 = add %arrayPtr_583 4
	%offset_586 = mul %res_542 4
	%elementAddr_587 = add %arrayBase_584 %offset_586
	store %res_577 %elementAddr_587
	%res_590 = eq %res_535 %res_18
	br %res_590 <68> <63>

<68> lhs_true
	%res_593 = eq %res_542 %res_18
	br %res_593 <66> <63>

<66> if_true
	br <63>

<63> if_merge
	%varDef_1083 = phi <158> %varDef_1061 <164> %varDef_1061 <64> %varDef_1061 <62> %res_563 <68> %res_563 <66> %res_563
	%varDef_1084 = phi <158> %varDef_1062 <164> %varDef_1062 <64> %varDef_1062 <62> %varDef_1062 <68> %varDef_1062 <66> 1
	%varDef_1085 = phi <158> %varDef_922 <164> %varDef_1079 <64> %varDef_1079 <62> %varDef_1079 <68> %varDef_1079 <66> %varDef_1079
	%varDef_1086 = phi <158> %varDef_923 <164> %varDef_1079 <64> %varDef_1079 <62> %varDef_1079 <68> %varDef_1079 <66> %varDef_1079
	%varDef_1087 = phi <158> %varDef_924 <164> %res_16 <64> %res_16 <62> %res_16 <68> %res_16 <66> %res_16
	%varDef_1088 = phi <158> %varDef_925 <164> %res_542 <64> %res_542 <62> %res_542 <68> %res_542 <66> %res_542
	%arrayBase_595 = add %arrayPtr_24 4
	%offset_597 = mul %varDef_864 4
	%elementAddr_598 = add %arrayBase_595 %offset_597
	%elementVal_599 = load %elementAddr_598
	%res_600 = add %elementVal_599 2
	%arrayBase_602 = add %arrayPtr_43 4
	%elementAddr_605 = add %arrayBase_602 %offset_597
	%elementVal_606 = load %elementAddr_605
	%res_607 = add %elementVal_606 1
	%cres_823 = lt %res_600 %res_16
	br %cres_823 <167> <169>

<167> clhs_true
	%cres_825 = ge %res_600 0
	br %cres_825 <168> <169>

<168> cbool_true
	br <170>

<169> cbool_false
	br <170>

<170> cbool_merge
	%varDef_1095 = phi <168> 1 <169> 0
	br %varDef_1095 <72> <70>

<72> lhs_true
	%cres_833 = lt %res_607 %res_16
	br %cres_833 <173> <175>

<173> clhs_true
	%cres_835 = ge %res_607 0
	br %cres_835 <174> <175>

<174> cbool_true
	br <176>

<175> cbool_false
	br <176>

<176> cbool_merge
	%varDef_1101 = phi <174> 1 <175> 0
	br %varDef_1101 <71> <70>

<71> lhs_true
	%arrayBase_615 = add %arrayPtr_60 4
	%offset_617 = mul %res_600 4
	%elementAddr_618 = add %arrayBase_615 %offset_617
	%arrayPtr_619 = load %elementAddr_618
	%arrayBase_620 = add %arrayPtr_619 4
	%offset_622 = mul %res_607 4
	%elementAddr_623 = add %arrayBase_620 %offset_622
	%elementVal_624 = load %elementAddr_623
	%res_626 = eq %elementVal_624 -1
	br %res_626 <69> <70>

<69> if_true
	%res_628 = add %varDef_1083 1
	%arrayBase_631 = add %arrayPtr_24 4
	%offset_633 = mul %res_628 4
	%elementAddr_634 = add %arrayBase_631 %offset_633
	store %res_600 %elementAddr_634
	%arrayBase_637 = add %arrayPtr_43 4
	%elementAddr_640 = add %arrayBase_637 %offset_633
	store %res_607 %elementAddr_640
	%res_642 = add %elementVal_138 1
	%arrayBase_644 = add %arrayPtr_60 4
	%offset_646 = mul %res_600 4
	%elementAddr_647 = add %arrayBase_644 %offset_646
	%arrayPtr_648 = load %elementAddr_647
	%arrayBase_649 = add %arrayPtr_648 4
	%offset_651 = mul %res_607 4
	%elementAddr_652 = add %arrayBase_649 %offset_651
	store %res_642 %elementAddr_652
	%res_655 = eq %res_600 %res_18
	br %res_655 <75> <70>

<75> lhs_true
	%res_658 = eq %res_607 %res_18
	br %res_658 <73> <70>

<73> if_true
	br <70>

<70> if_merge
	%varDef_1105 = phi <170> %varDef_1083 <176> %varDef_1083 <71> %varDef_1083 <69> %res_628 <75> %res_628 <73> %res_628
	%varDef_1106 = phi <170> %varDef_1084 <176> %varDef_1084 <71> %varDef_1084 <69> %varDef_1084 <75> %varDef_1084 <73> 1
	%varDef_1107 = phi <170> %varDef_930 <176> %varDef_1101 <71> %varDef_1101 <69> %varDef_1101 <75> %varDef_1101 <73> %varDef_1101
	%varDef_1108 = phi <170> %varDef_931 <176> %varDef_1101 <71> %varDef_1101 <69> %varDef_1101 <75> %varDef_1101 <73> %varDef_1101
	%varDef_1109 = phi <170> %varDef_932 <176> %res_16 <71> %res_16 <69> %res_16 <75> %res_16 <73> %res_16
	%varDef_1110 = phi <170> %varDef_933 <176> %res_607 <71> %res_607 <69> %res_607 <75> %res_607 <73> %res_607
	%res_660 = eq %varDef_1106 1
	br %res_660 <19> <77>

<77> if_merge
	%res_662 = add %varDef_864 1
	br <17>

<19> while_end
	%varDef_1113 = phi <17> %varDef_866 <70> %varDef_1106
	%res_664 = eq %varDef_1113 1
	br %res_664 <78> <79>

<78> if_true
	%arrayBase_667 = add %arrayPtr_60 4
	%offset_669 = mul %res_18 4
	%elementAddr_670 = add %arrayBase_667 %offset_669
	%arrayPtr_671 = load %elementAddr_670
	%arrayBase_672 = add %arrayPtr_671 4
	%elementAddr_675 = add %arrayBase_672 %offset_669
	%elementVal_676 = load %elementAddr_675
	%res_665 = #toString ( %elementVal_676 )
	#println ( %res_665 )
	br <80>

<79> if_false
	#print ( $str_0 )
	br <80>

<80> if_merge
	ret 0

}

