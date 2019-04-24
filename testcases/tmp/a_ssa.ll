@N

@n

@a

@bak

@a_left

@a_right

@heap

@i1

@i2

@i3

@i4

@i5

@i6

@i7

@i8

@i9

@i10

@i11

@i12

@i13

@i14

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
	store 100000 @N
	%idVal_0 = load @N
	%memberLength_2 = mul %idVal_0 8
	%arrayLength_3 = add %memberLength_2 8
	%arrayPtr_1 = malloc %arrayLength_3
	store %idVal_0 %arrayPtr_1
	store %arrayPtr_1 @a
	%idVal_4 = load @N
	%memberLength_6 = mul %idVal_4 8
	%arrayLength_7 = add %memberLength_6 8
	%arrayPtr_5 = malloc %arrayLength_7
	store %idVal_4 %arrayPtr_5
	store %arrayPtr_5 @bak
	%idVal_8 = load @N
	%memberLength_10 = mul %idVal_8 8
	%arrayLength_11 = add %memberLength_10 8
	%arrayPtr_9 = malloc %arrayLength_11
	store %idVal_8 %arrayPtr_9
	store %arrayPtr_9 @a_left
	%idVal_12 = load @N
	%memberLength_14 = mul %idVal_12 8
	%arrayLength_15 = add %memberLength_14 8
	%arrayPtr_13 = malloc %arrayLength_15
	store %idVal_12 %arrayPtr_13
	store %arrayPtr_13 @a_right
	%idVal_16 = load @N
	%memberLength_18 = mul %idVal_16 8
	%arrayLength_19 = add %memberLength_18 8
	%arrayPtr_17 = malloc %arrayLength_19
	store %idVal_16 %arrayPtr_17
	store %arrayPtr_17 @heap
	ret 

}

define _A_Optimizer ( %thisVal_0 ) {
<0> entry
	mov %varDef_391 %thisVal_0
	%memberLength_4 = mul 2 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store 2 %arrayPtr_3
	%arrayEndPos_6 = add %arrayPtr_3 %arrayLength_5
	%startPos_7 = add %arrayPtr_3 8
	mov %varDef_392 %startPos_7
	br <1>

<1> new_for_cond
	%varDef_393 = phi <0> %varDef_392 <8> %varDef_454
	%varDef_394 = phi <0> 0 <8> %varDef_403
	%varDef_395 = phi <0> 0 <8> %varDef_404
	%varDef_396 = phi <0> 0 <8> %varDef_405
	%varDef_397 = phi <0> 0 <8> %varDef_406
	%varDef_398 = phi <0> 0 <8> %varDef_407
	%varDef_399 = phi <0> 0 <8> %varDef_408
	%varDef_400 = phi <0> 0 <8> %varDef_409
	%varDef_401 = phi <0> 0 <8> %varDef_410
	mov %pos_9 %varDef_393
	%condition_10 = lt %pos_9 %arrayEndPos_6
	br %condition_10 <2> <4>

<2> new_for_body
	%memberLength_12 = mul 2 8
	%arrayLength_13 = add %memberLength_12 8
	%arrayPtr_11 = malloc %arrayLength_13
	store 2 %arrayPtr_11
	%arrayEndPos_14 = add %arrayPtr_11 %arrayLength_13
	%startPos_15 = add %arrayPtr_11 8
	mov %varDef_402 %startPos_15
	br <5>

<5> new_for_cond
	%varDef_403 = phi <2> %varDef_402 <12> %varDef_453
	%varDef_404 = phi <2> %varDef_395 <12> %varDef_412
	%varDef_405 = phi <2> %varDef_396 <12> %varDef_413
	%varDef_406 = phi <2> %varDef_397 <12> %varDef_414
	%varDef_407 = phi <2> %varDef_398 <12> %varDef_415
	%varDef_408 = phi <2> %varDef_399 <12> %varDef_416
	%varDef_409 = phi <2> %varDef_400 <12> %varDef_417
	%varDef_410 = phi <2> %varDef_401 <12> %varDef_418
	mov %pos_17 %varDef_403
	%condition_18 = lt %pos_17 %arrayEndPos_14
	br %condition_18 <6> <8>

<6> new_for_body
	%memberLength_20 = mul 2 8
	%arrayLength_21 = add %memberLength_20 8
	%arrayPtr_19 = malloc %arrayLength_21
	store 2 %arrayPtr_19
	%arrayEndPos_22 = add %arrayPtr_19 %arrayLength_21
	%startPos_23 = add %arrayPtr_19 8
	mov %varDef_411 %startPos_23
	br <9>

<9> new_for_cond
	%varDef_412 = phi <6> %varDef_411 <16> %varDef_452
	%varDef_413 = phi <6> %varDef_405 <16> %varDef_420
	%varDef_414 = phi <6> %varDef_406 <16> %varDef_421
	%varDef_415 = phi <6> %varDef_407 <16> %varDef_422
	%varDef_416 = phi <6> %varDef_408 <16> %varDef_423
	%varDef_417 = phi <6> %varDef_409 <16> %varDef_424
	%varDef_418 = phi <6> %varDef_410 <16> %varDef_425
	mov %pos_25 %varDef_412
	%condition_26 = lt %pos_25 %arrayEndPos_22
	br %condition_26 <10> <12>

<10> new_for_body
	%memberLength_28 = mul 2 8
	%arrayLength_29 = add %memberLength_28 8
	%arrayPtr_27 = malloc %arrayLength_29
	store 2 %arrayPtr_27
	%arrayEndPos_30 = add %arrayPtr_27 %arrayLength_29
	%startPos_31 = add %arrayPtr_27 8
	mov %varDef_419 %startPos_31
	br <13>

<13> new_for_cond
	%varDef_420 = phi <10> %varDef_419 <20> %varDef_451
	%varDef_421 = phi <10> %varDef_414 <20> %varDef_427
	%varDef_422 = phi <10> %varDef_415 <20> %varDef_428
	%varDef_423 = phi <10> %varDef_416 <20> %varDef_429
	%varDef_424 = phi <10> %varDef_417 <20> %varDef_430
	%varDef_425 = phi <10> %varDef_418 <20> %varDef_431
	mov %pos_33 %varDef_420
	%condition_34 = lt %pos_33 %arrayEndPos_30
	br %condition_34 <14> <16>

<14> new_for_body
	%memberLength_36 = mul 2 8
	%arrayLength_37 = add %memberLength_36 8
	%arrayPtr_35 = malloc %arrayLength_37
	store 2 %arrayPtr_35
	%arrayEndPos_38 = add %arrayPtr_35 %arrayLength_37
	%startPos_39 = add %arrayPtr_35 8
	mov %varDef_426 %startPos_39
	br <17>

<17> new_for_cond
	%varDef_427 = phi <14> %varDef_426 <24> %varDef_450
	%varDef_428 = phi <14> %varDef_422 <24> %varDef_433
	%varDef_429 = phi <14> %varDef_423 <24> %varDef_434
	%varDef_430 = phi <14> %varDef_424 <24> %varDef_435
	%varDef_431 = phi <14> %varDef_425 <24> %varDef_436
	mov %pos_41 %varDef_427
	%condition_42 = lt %pos_41 %arrayEndPos_38
	br %condition_42 <18> <20>

<18> new_for_body
	%memberLength_44 = mul 2 8
	%arrayLength_45 = add %memberLength_44 8
	%arrayPtr_43 = malloc %arrayLength_45
	store 2 %arrayPtr_43
	%arrayEndPos_46 = add %arrayPtr_43 %arrayLength_45
	%startPos_47 = add %arrayPtr_43 8
	mov %varDef_432 %startPos_47
	br <21>

<21> new_for_cond
	%varDef_433 = phi <18> %varDef_432 <28> %varDef_449
	%varDef_434 = phi <18> %varDef_429 <28> %varDef_438
	%varDef_435 = phi <18> %varDef_430 <28> %varDef_439
	%varDef_436 = phi <18> %varDef_431 <28> %varDef_440
	mov %pos_49 %varDef_433
	%condition_50 = lt %pos_49 %arrayEndPos_46
	br %condition_50 <22> <24>

<22> new_for_body
	%memberLength_52 = mul 2 8
	%arrayLength_53 = add %memberLength_52 8
	%arrayPtr_51 = malloc %arrayLength_53
	store 2 %arrayPtr_51
	%arrayEndPos_54 = add %arrayPtr_51 %arrayLength_53
	%startPos_55 = add %arrayPtr_51 8
	mov %varDef_437 %startPos_55
	br <25>

<25> new_for_cond
	%varDef_438 = phi <22> %varDef_437 <32> %varDef_448
	%varDef_439 = phi <22> %varDef_435 <32> %varDef_442
	%varDef_440 = phi <22> %varDef_436 <32> %varDef_443
	mov %pos_57 %varDef_438
	%condition_58 = lt %pos_57 %arrayEndPos_54
	br %condition_58 <26> <28>

<26> new_for_body
	%memberLength_60 = mul 2 8
	%arrayLength_61 = add %memberLength_60 8
	%arrayPtr_59 = malloc %arrayLength_61
	store 2 %arrayPtr_59
	%arrayEndPos_62 = add %arrayPtr_59 %arrayLength_61
	%startPos_63 = add %arrayPtr_59 8
	mov %varDef_441 %startPos_63
	br <29>

<29> new_for_cond
	%varDef_442 = phi <26> %varDef_441 <36> %varDef_447
	%varDef_443 = phi <26> %varDef_440 <36> %varDef_445
	mov %pos_65 %varDef_442
	%condition_66 = lt %pos_65 %arrayEndPos_62
	br %condition_66 <30> <32>

<30> new_for_body
	%memberLength_68 = mul 2 8
	%arrayLength_69 = add %memberLength_68 8
	%arrayPtr_67 = malloc %arrayLength_69
	store 2 %arrayPtr_67
	%arrayEndPos_70 = add %arrayPtr_67 %arrayLength_69
	%startPos_71 = add %arrayPtr_67 8
	mov %varDef_444 %startPos_71
	br <33>

<33> new_for_cond
	%varDef_445 = phi <30> %varDef_444 <34> %varDef_446
	mov %pos_73 %varDef_445
	%condition_74 = lt %pos_73 %arrayEndPos_70
	br %condition_74 <34> <36>

<34> new_for_body
	%memberLength_76 = mul 2 8
	%arrayLength_77 = add %memberLength_76 8
	%arrayPtr_75 = malloc %arrayLength_77
	store 2 %arrayPtr_75
	store %arrayPtr_75 %pos_73
	%pos_78 = add %pos_73 8
	mov %varDef_446 %pos_78
	br <33>

<36> new_for_end
	store %arrayPtr_67 %pos_65
	%pos_79 = add %pos_65 8
	mov %varDef_447 %pos_79
	br <29>

<32> new_for_end
	store %arrayPtr_59 %pos_57
	%pos_80 = add %pos_57 8
	mov %varDef_448 %pos_80
	br <25>

<28> new_for_end
	store %arrayPtr_51 %pos_49
	%pos_81 = add %pos_49 8
	mov %varDef_449 %pos_81
	br <21>

<24> new_for_end
	store %arrayPtr_43 %pos_41
	%pos_82 = add %pos_41 8
	mov %varDef_450 %pos_82
	br <17>

<20> new_for_end
	store %arrayPtr_35 %pos_33
	%pos_83 = add %pos_33 8
	mov %varDef_451 %pos_83
	br <13>

<16> new_for_end
	store %arrayPtr_27 %pos_25
	%pos_84 = add %pos_25 8
	mov %varDef_452 %pos_84
	br <9>

<12> new_for_end
	store %arrayPtr_19 %pos_17
	%pos_85 = add %pos_17 8
	mov %varDef_453 %pos_85
	br <5>

<8> new_for_end
	store %arrayPtr_11 %pos_9
	%pos_86 = add %pos_9 8
	mov %varDef_454 %pos_86
	br <1>

<4> new_for_end
	mov %varDef_455 %arrayPtr_3
	mov %varDef_456 0
	mov %varDef_457 1
	br <37>

<37> for_cond
	%varDef_458 = phi <4> %varDef_457 <38> %varDef_461
	%varDef_459 = phi <4> %varDef_456 <38> %varDef_460
	mov %idVal_103 %varDef_458
	%res_104 = le %idVal_103 1000
	br %res_104 <38> <40>

<38> for_body
	mov %idVal_105 %varDef_458
	%res_106 = add 123 %idVal_105
	mov %arrayPtr_107 %varDef_455
	%arrayBase_108 = add %arrayPtr_107 8
	%offset_109 = mul 0 8
	%elementAddr_110 = add %arrayBase_108 %offset_109
	%arrayPtr_111 = load %elementAddr_110
	%arrayBase_112 = add %arrayPtr_111 8
	%offset_113 = mul 1 8
	%elementAddr_114 = add %arrayBase_112 %offset_113
	%arrayPtr_115 = load %elementAddr_114
	%arrayBase_116 = add %arrayPtr_115 8
	%offset_117 = mul 0 8
	%elementAddr_118 = add %arrayBase_116 %offset_117
	%arrayPtr_119 = load %elementAddr_118
	%arrayBase_120 = add %arrayPtr_119 8
	%offset_121 = mul 1 8
	%elementAddr_122 = add %arrayBase_120 %offset_121
	%arrayPtr_123 = load %elementAddr_122
	%arrayBase_124 = add %arrayPtr_123 8
	%offset_125 = mul 0 8
	%elementAddr_126 = add %arrayBase_124 %offset_125
	%arrayPtr_127 = load %elementAddr_126
	%arrayBase_128 = add %arrayPtr_127 8
	%offset_129 = mul 1 8
	%elementAddr_130 = add %arrayBase_128 %offset_129
	%arrayPtr_131 = load %elementAddr_130
	%arrayBase_132 = add %arrayPtr_131 8
	%offset_133 = mul 0 8
	%elementAddr_134 = add %arrayBase_132 %offset_133
	%arrayPtr_135 = load %elementAddr_134
	%arrayBase_136 = add %arrayPtr_135 8
	%offset_137 = mul 1 8
	%elementAddr_138 = add %arrayBase_136 %offset_137
	%arrayPtr_139 = load %elementAddr_138
	%arrayBase_140 = add %arrayPtr_139 8
	%offset_141 = mul 0 8
	%elementAddr_142 = add %arrayBase_140 %offset_141
	%arrayPtr_143 = load %elementAddr_142
	%arrayBase_144 = add %arrayPtr_143 8
	%offset_145 = mul 1 8
	%elementAddr_146 = add %arrayBase_144 %offset_145
	store %res_106 %elementAddr_146
	mov %idVal_147 %varDef_459
	mov %arrayPtr_148 %varDef_455
	%arrayBase_149 = add %arrayPtr_148 8
	%offset_150 = mul 0 8
	%elementAddr_151 = add %arrayBase_149 %offset_150
	%arrayPtr_152 = load %elementAddr_151
	%arrayBase_153 = add %arrayPtr_152 8
	%offset_154 = mul 1 8
	%elementAddr_155 = add %arrayBase_153 %offset_154
	%arrayPtr_156 = load %elementAddr_155
	%arrayBase_157 = add %arrayPtr_156 8
	%offset_158 = mul 0 8
	%elementAddr_159 = add %arrayBase_157 %offset_158
	%arrayPtr_160 = load %elementAddr_159
	%arrayBase_161 = add %arrayPtr_160 8
	%offset_162 = mul 1 8
	%elementAddr_163 = add %arrayBase_161 %offset_162
	%arrayPtr_164 = load %elementAddr_163
	%arrayBase_165 = add %arrayPtr_164 8
	%offset_166 = mul 0 8
	%elementAddr_167 = add %arrayBase_165 %offset_166
	%arrayPtr_168 = load %elementAddr_167
	%arrayBase_169 = add %arrayPtr_168 8
	%offset_170 = mul 1 8
	%elementAddr_171 = add %arrayBase_169 %offset_170
	%arrayPtr_172 = load %elementAddr_171
	%arrayBase_173 = add %arrayPtr_172 8
	%offset_174 = mul 0 8
	%elementAddr_175 = add %arrayBase_173 %offset_174
	%arrayPtr_176 = load %elementAddr_175
	%arrayBase_177 = add %arrayPtr_176 8
	%offset_178 = mul 1 8
	%elementAddr_179 = add %arrayBase_177 %offset_178
	%arrayPtr_180 = load %elementAddr_179
	%arrayBase_181 = add %arrayPtr_180 8
	%offset_182 = mul 0 8
	%elementAddr_183 = add %arrayBase_181 %offset_182
	%arrayPtr_184 = load %elementAddr_183
	%arrayBase_185 = add %arrayPtr_184 8
	%offset_186 = mul 1 8
	%elementAddr_187 = add %arrayBase_185 %offset_186
	%elementVal_188 = load %elementAddr_187
	%res_189 = add %idVal_147 %elementVal_188
	mov %varDef_460 %res_189
	mov %idVal_190 %varDef_458
	mov %oldVal_191 %varDef_458
	%newVal_192 = inc %oldVal_191
	mov %varDef_461 %newVal_192
	br <37>

<40> for_end
	mov %idVal_194 %varDef_459
	%res_193 = toString ( %idVal_194 )
	println ( %res_193 )
	mov %varDef_462 1
	br <41>

<41> for_cond
	%varDef_463 = phi <40> %varDef_462 <42> %varDef_466
	%varDef_464 = phi <40> %varDef_459 <42> %varDef_465
	mov %idVal_195 %varDef_463
	%res_196 = le %idVal_195 1000000
	br %res_196 <42> <44>

<42> for_body
	mov %idVal_197 %varDef_464
	%res_198 = mod 9876 1234
	%res_199 = mul %res_198 2345
	%res_200 = mod %res_199 1234
	%res_201 = mul %res_200 2345
	%res_202 = mod %res_201 1234
	%res_203 = mul %res_202 2345
	%res_204 = mod %res_203 1234
	%res_205 = mul %res_204 2345
	%res_206 = mod %res_205 1234
	%res_207 = mul %res_206 2345
	%res_208 = mod %res_207 1234
	%res_209 = mul %res_208 2345
	%res_210 = mod %res_209 1234
	%res_211 = mul %res_210 2345
	%res_212 = mod %res_211 1234
	%res_213 = mul %res_212 2345
	%res_214 = mod %res_213 1234
	%res_215 = mul %res_214 2345
	%res_216 = mod %res_215 1234
	%res_217 = mul %res_216 2345
	%res_218 = mod %res_217 1234
	%res_219 = mul %res_218 2345
	%res_220 = mod %res_219 1234
	%res_221 = mul %res_220 2345
	%res_222 = mod %res_221 1234
	%res_223 = mul %res_222 2345
	%res_224 = mod %res_223 1234
	%res_225 = mul %res_224 2345
	%res_226 = mod %res_225 1234
	%res_227 = mul %res_226 2345
	%res_228 = mod %res_227 1234
	%res_229 = mul %res_228 2345
	%res_230 = mod %res_229 1234
	%res_231 = mul %res_230 2345
	%res_232 = mod %res_231 1234
	%res_233 = mul %res_232 2345
	%res_234 = mod %res_233 1234
	%res_235 = mul %res_234 2345
	%res_236 = mod %res_235 1234
	%res_237 = mul %res_236 2345
	%res_238 = mod %res_237 1234
	%res_239 = mul %res_238 2345
	%res_240 = mod %res_239 1234
	%res_241 = mul %res_240 2345
	%res_242 = mod %res_241 1234
	%res_243 = mul %res_242 2345
	%res_244 = mod %res_243 1234
	%res_245 = mul %res_244 2345
	%res_246 = mod %res_245 1234
	%res_247 = mul %res_246 2345
	%res_248 = mod %res_247 1234
	%res_249 = mul %res_248 2345
	%res_250 = mod %res_249 1234
	%res_251 = mul %res_250 2345
	%res_252 = mod %res_251 1234
	%res_253 = mul %res_252 2345
	%res_254 = mod %res_253 1234
	%res_255 = mul %res_254 2345
	%res_256 = mod %res_255 1234
	%res_257 = mul %res_256 2345
	%res_258 = mod %res_257 1234
	%res_259 = mul %res_258 2345
	%res_260 = mod %res_259 1234
	%res_261 = mul %res_260 2345
	%res_262 = mod %res_261 1234
	%res_263 = mul %res_262 2345
	%res_264 = mod %res_263 1234
	%res_265 = mul %res_264 2345
	%res_266 = mod %res_265 1234
	%res_267 = mul %res_266 2345
	%res_268 = mod %res_267 1234
	%res_269 = mul %res_268 2345
	%res_270 = mod %res_269 1234
	%res_271 = mul %res_270 2345
	%res_272 = mod %res_271 1234
	%res_273 = mul %res_272 2345
	%res_274 = mod %res_273 1234
	%res_275 = mul %res_274 2345
	%res_276 = mod %res_275 1234
	%res_277 = mul %res_276 2345
	%res_278 = mod %res_277 1234
	%res_279 = mul %res_278 2345
	%res_280 = mod %res_279 1234
	%res_281 = mul %res_280 2345
	%res_282 = mod %res_281 1234
	%res_283 = mul %res_282 2345
	%res_284 = mod %res_283 1234
	%res_285 = mul %res_284 2345
	%res_286 = mod %res_285 1234
	%res_287 = mul %res_286 2345
	%res_288 = mod %res_287 1234
	%res_289 = mul %res_288 2345
	%res_290 = mod %res_289 1234
	%res_291 = mul %res_290 2345
	%res_292 = mod %res_291 1234
	%res_293 = mul %res_292 2345
	%res_294 = mod %res_293 1234
	%res_295 = mul %res_294 2345
	%res_296 = mod %res_295 1234
	%res_297 = mul %res_296 2345
	%res_298 = mod %res_297 1234
	%res_299 = mul %res_298 2345
	%res_300 = mod %res_299 1234
	%res_301 = mul %res_300 2345
	%res_302 = mod %res_301 1234
	%res_303 = mul %res_302 2345
	%res_304 = mod %res_303 1234
	%res_305 = mul %res_304 2345
	%res_306 = mod %res_305 1234
	%res_307 = mul %res_306 2345
	%res_308 = mod %res_307 1234
	%res_309 = mul %res_308 2345
	%res_310 = mod %res_309 1234
	%res_311 = mul %res_310 2345
	%res_312 = mod %res_311 1234
	%res_313 = mul %res_312 2345
	%res_314 = mod %res_313 1234
	%res_315 = mul %res_314 2345
	%res_316 = mod %res_315 1234
	%res_317 = mul %res_316 2345
	%res_318 = mod %res_317 1234
	%res_319 = mul %res_318 2345
	%res_320 = mod %res_319 1234
	%res_321 = mul %res_320 2345
	%res_322 = mod %res_321 1234
	%res_323 = mul %res_322 2345
	%res_324 = mod %res_323 1234
	%res_325 = mul %res_324 2345
	%res_326 = mod %res_325 1234
	%res_327 = mul %res_326 2345
	%res_328 = mod %res_327 1234
	%res_329 = mul %res_328 2345
	%res_330 = mod %res_329 1234
	%res_331 = mul %res_330 2345
	%res_332 = mod %res_331 1234
	%res_333 = mul %res_332 2345
	%res_334 = mod %res_333 1234
	%res_335 = mul %res_334 2345
	%res_336 = mod %res_335 1234
	%res_337 = mul %res_336 2345
	%res_338 = mod %res_337 1234
	%res_339 = mul %res_338 2345
	%res_340 = mod %res_339 1234
	%res_341 = mul %res_340 2345
	%res_342 = mod %res_341 1234
	%res_343 = mul %res_342 2345
	%res_344 = mod %res_343 1234
	%res_345 = mul %res_344 2345
	%res_346 = mod %res_345 1234
	%res_347 = mul %res_346 2345
	%res_348 = mod %res_347 1234
	%res_349 = mul %res_348 2345
	%res_350 = mod %res_349 1234
	%res_351 = mul %res_350 2345
	%res_352 = mod %res_351 1234
	%res_353 = mul %res_352 2345
	%res_354 = mod %res_353 1234
	%res_355 = mul %res_354 2345
	%res_356 = mod %res_355 1234
	%res_357 = mul %res_356 2345
	%res_358 = mod %res_357 1234
	%res_359 = mul %res_358 2345
	%res_360 = mod %res_359 1234
	%res_361 = mul %res_360 2345
	%res_362 = mod %res_361 1234
	%res_363 = mul %res_362 2345
	%res_364 = mod %res_363 1234
	%res_365 = mul %res_364 2345
	%res_366 = mod %res_365 1234
	%res_367 = mul %res_366 2345
	%res_368 = mod %res_367 1234
	%res_369 = mul %res_368 2345
	%res_370 = mod %res_369 1234
	%res_371 = mul %res_370 2345
	%res_372 = mod %res_371 1234
	%res_373 = mul %res_372 2345
	%res_374 = mod %res_373 1234
	%res_375 = mul %res_374 2345
	%res_376 = mod %res_375 1234
	%res_377 = mul %res_376 2345
	%res_378 = mod %res_377 1234
	%res_379 = mod %res_378 11
	%res_380 = add %idVal_197 %res_379
	mov %varDef_465 %res_380
	mov %idVal_381 %varDef_463
	mov %oldVal_382 %varDef_463
	%newVal_383 = inc %oldVal_382
	mov %varDef_466 %newVal_383
	br <41>

<44> for_end
	mov %idVal_385 %varDef_464
	%res_384 = toString ( %idVal_385 )
	println ( %res_384 )
	mov %varDef_467 1
	br <45>

<45> for_cond
	%varDef_468 = phi <44> %varDef_467 <47> %varDef_469
	mov %idVal_386 %varDef_468
	%res_387 = le %idVal_386 200000000
	br %res_387 <47> <48>

<47> for_step
	mov %idVal_388 %varDef_468
	mov %oldVal_389 %varDef_468
	%newVal_390 = inc %oldVal_389
	mov %varDef_469 %newVal_390
	br <45>

<48> for_end
	ret 

}

define _A_A ( %thisVal_0 ) {
<0> entry
	mov %varDef_88 %thisVal_0
	%memberLength_3 = mul 2 8
	%arrayLength_4 = add %memberLength_3 8
	%arrayPtr_2 = malloc %arrayLength_4
	store 2 %arrayPtr_2
	%arrayEndPos_5 = add %arrayPtr_2 %arrayLength_4
	%startPos_6 = add %arrayPtr_2 8
	mov %varDef_89 %startPos_6
	br <1>

<1> new_for_cond
	%varDef_90 = phi <0> %varDef_89 <8> %varDef_151
	%varDef_91 = phi <0> 0 <8> %varDef_100
	%varDef_92 = phi <0> 0 <8> %varDef_101
	%varDef_93 = phi <0> 0 <8> %varDef_102
	%varDef_94 = phi <0> 0 <8> %varDef_103
	%varDef_95 = phi <0> 0 <8> %varDef_104
	%varDef_96 = phi <0> 0 <8> %varDef_105
	%varDef_97 = phi <0> 0 <8> %varDef_106
	%varDef_98 = phi <0> 0 <8> %varDef_107
	mov %pos_8 %varDef_90
	%condition_9 = lt %pos_8 %arrayEndPos_5
	br %condition_9 <2> <4>

<2> new_for_body
	%memberLength_11 = mul 2 8
	%arrayLength_12 = add %memberLength_11 8
	%arrayPtr_10 = malloc %arrayLength_12
	store 2 %arrayPtr_10
	%arrayEndPos_13 = add %arrayPtr_10 %arrayLength_12
	%startPos_14 = add %arrayPtr_10 8
	mov %varDef_99 %startPos_14
	br <5>

<5> new_for_cond
	%varDef_100 = phi <2> %varDef_99 <12> %varDef_150
	%varDef_101 = phi <2> %varDef_92 <12> %varDef_109
	%varDef_102 = phi <2> %varDef_93 <12> %varDef_110
	%varDef_103 = phi <2> %varDef_94 <12> %varDef_111
	%varDef_104 = phi <2> %varDef_95 <12> %varDef_112
	%varDef_105 = phi <2> %varDef_96 <12> %varDef_113
	%varDef_106 = phi <2> %varDef_97 <12> %varDef_114
	%varDef_107 = phi <2> %varDef_98 <12> %varDef_115
	mov %pos_16 %varDef_100
	%condition_17 = lt %pos_16 %arrayEndPos_13
	br %condition_17 <6> <8>

<6> new_for_body
	%memberLength_19 = mul 3 8
	%arrayLength_20 = add %memberLength_19 8
	%arrayPtr_18 = malloc %arrayLength_20
	store 3 %arrayPtr_18
	%arrayEndPos_21 = add %arrayPtr_18 %arrayLength_20
	%startPos_22 = add %arrayPtr_18 8
	mov %varDef_108 %startPos_22
	br <9>

<9> new_for_cond
	%varDef_109 = phi <6> %varDef_108 <16> %varDef_149
	%varDef_110 = phi <6> %varDef_102 <16> %varDef_117
	%varDef_111 = phi <6> %varDef_103 <16> %varDef_118
	%varDef_112 = phi <6> %varDef_104 <16> %varDef_119
	%varDef_113 = phi <6> %varDef_105 <16> %varDef_120
	%varDef_114 = phi <6> %varDef_106 <16> %varDef_121
	%varDef_115 = phi <6> %varDef_107 <16> %varDef_122
	mov %pos_24 %varDef_109
	%condition_25 = lt %pos_24 %arrayEndPos_21
	br %condition_25 <10> <12>

<10> new_for_body
	%memberLength_27 = mul 2 8
	%arrayLength_28 = add %memberLength_27 8
	%arrayPtr_26 = malloc %arrayLength_28
	store 2 %arrayPtr_26
	%arrayEndPos_29 = add %arrayPtr_26 %arrayLength_28
	%startPos_30 = add %arrayPtr_26 8
	mov %varDef_116 %startPos_30
	br <13>

<13> new_for_cond
	%varDef_117 = phi <10> %varDef_116 <20> %varDef_148
	%varDef_118 = phi <10> %varDef_111 <20> %varDef_124
	%varDef_119 = phi <10> %varDef_112 <20> %varDef_125
	%varDef_120 = phi <10> %varDef_113 <20> %varDef_126
	%varDef_121 = phi <10> %varDef_114 <20> %varDef_127
	%varDef_122 = phi <10> %varDef_115 <20> %varDef_128
	mov %pos_32 %varDef_117
	%condition_33 = lt %pos_32 %arrayEndPos_29
	br %condition_33 <14> <16>

<14> new_for_body
	%memberLength_35 = mul 3 8
	%arrayLength_36 = add %memberLength_35 8
	%arrayPtr_34 = malloc %arrayLength_36
	store 3 %arrayPtr_34
	%arrayEndPos_37 = add %arrayPtr_34 %arrayLength_36
	%startPos_38 = add %arrayPtr_34 8
	mov %varDef_123 %startPos_38
	br <17>

<17> new_for_cond
	%varDef_124 = phi <14> %varDef_123 <24> %varDef_147
	%varDef_125 = phi <14> %varDef_119 <24> %varDef_130
	%varDef_126 = phi <14> %varDef_120 <24> %varDef_131
	%varDef_127 = phi <14> %varDef_121 <24> %varDef_132
	%varDef_128 = phi <14> %varDef_122 <24> %varDef_133
	mov %pos_40 %varDef_124
	%condition_41 = lt %pos_40 %arrayEndPos_37
	br %condition_41 <18> <20>

<18> new_for_body
	%memberLength_43 = mul 2 8
	%arrayLength_44 = add %memberLength_43 8
	%arrayPtr_42 = malloc %arrayLength_44
	store 2 %arrayPtr_42
	%arrayEndPos_45 = add %arrayPtr_42 %arrayLength_44
	%startPos_46 = add %arrayPtr_42 8
	mov %varDef_129 %startPos_46
	br <21>

<21> new_for_cond
	%varDef_130 = phi <18> %varDef_129 <28> %varDef_146
	%varDef_131 = phi <18> %varDef_126 <28> %varDef_135
	%varDef_132 = phi <18> %varDef_127 <28> %varDef_136
	%varDef_133 = phi <18> %varDef_128 <28> %varDef_137
	mov %pos_48 %varDef_130
	%condition_49 = lt %pos_48 %arrayEndPos_45
	br %condition_49 <22> <24>

<22> new_for_body
	%memberLength_51 = mul 2 8
	%arrayLength_52 = add %memberLength_51 8
	%arrayPtr_50 = malloc %arrayLength_52
	store 2 %arrayPtr_50
	%arrayEndPos_53 = add %arrayPtr_50 %arrayLength_52
	%startPos_54 = add %arrayPtr_50 8
	mov %varDef_134 %startPos_54
	br <25>

<25> new_for_cond
	%varDef_135 = phi <22> %varDef_134 <32> %varDef_145
	%varDef_136 = phi <22> %varDef_132 <32> %varDef_139
	%varDef_137 = phi <22> %varDef_133 <32> %varDef_140
	mov %pos_56 %varDef_135
	%condition_57 = lt %pos_56 %arrayEndPos_53
	br %condition_57 <26> <28>

<26> new_for_body
	%memberLength_59 = mul 3 8
	%arrayLength_60 = add %memberLength_59 8
	%arrayPtr_58 = malloc %arrayLength_60
	store 3 %arrayPtr_58
	%arrayEndPos_61 = add %arrayPtr_58 %arrayLength_60
	%startPos_62 = add %arrayPtr_58 8
	mov %varDef_138 %startPos_62
	br <29>

<29> new_for_cond
	%varDef_139 = phi <26> %varDef_138 <36> %varDef_144
	%varDef_140 = phi <26> %varDef_137 <36> %varDef_142
	mov %pos_64 %varDef_139
	%condition_65 = lt %pos_64 %arrayEndPos_61
	br %condition_65 <30> <32>

<30> new_for_body
	%memberLength_67 = mul 2 8
	%arrayLength_68 = add %memberLength_67 8
	%arrayPtr_66 = malloc %arrayLength_68
	store 2 %arrayPtr_66
	%arrayEndPos_69 = add %arrayPtr_66 %arrayLength_68
	%startPos_70 = add %arrayPtr_66 8
	mov %varDef_141 %startPos_70
	br <33>

<33> new_for_cond
	%varDef_142 = phi <30> %varDef_141 <34> %varDef_143
	mov %pos_72 %varDef_142
	%condition_73 = lt %pos_72 %arrayEndPos_69
	br %condition_73 <34> <36>

<34> new_for_body
	%memberLength_75 = mul 2 8
	%arrayLength_76 = add %memberLength_75 8
	%arrayPtr_74 = malloc %arrayLength_76
	store 2 %arrayPtr_74
	store %arrayPtr_74 %pos_72
	%pos_77 = add %pos_72 8
	mov %varDef_143 %pos_77
	br <33>

<36> new_for_end
	store %arrayPtr_66 %pos_64
	%pos_78 = add %pos_64 8
	mov %varDef_144 %pos_78
	br <29>

<32> new_for_end
	store %arrayPtr_58 %pos_56
	%pos_79 = add %pos_56 8
	mov %varDef_145 %pos_79
	br <25>

<28> new_for_end
	store %arrayPtr_50 %pos_48
	%pos_80 = add %pos_48 8
	mov %varDef_146 %pos_80
	br <21>

<24> new_for_end
	store %arrayPtr_42 %pos_40
	%pos_81 = add %pos_40 8
	mov %varDef_147 %pos_81
	br <17>

<20> new_for_end
	store %arrayPtr_34 %pos_32
	%pos_82 = add %pos_32 8
	mov %varDef_148 %pos_82
	br <13>

<16> new_for_end
	store %arrayPtr_26 %pos_24
	%pos_83 = add %pos_24 8
	mov %varDef_149 %pos_83
	br <9>

<12> new_for_end
	store %arrayPtr_18 %pos_16
	%pos_84 = add %pos_16 8
	mov %varDef_150 %pos_84
	br <5>

<8> new_for_end
	store %arrayPtr_10 %pos_8
	%pos_85 = add %pos_8 8
	mov %varDef_151 %pos_85
	br <1>

<4> new_for_end
	mov %classPtr_86 %varDef_88
	%memberAddr_87 = add %classPtr_86 0
	store %arrayPtr_2 %memberAddr_87
	ret 

}

define restore ( ) {
<0> entry
	mov %varDef_18 1
	br <1>

<1> for_cond
	%varDef_19 = phi <0> %varDef_18 <2> %varDef_20
	mov %idVal_1 %varDef_19
	%idVal_2 = load @n
	%res_3 = le %idVal_1 %idVal_2
	br %res_3 <2> <4>

<2> for_body
	%arrayPtr_4 = load @bak
	%arrayBase_5 = add %arrayPtr_4 8
	mov %idVal_6 %varDef_19
	%offset_7 = mul %idVal_6 8
	%elementAddr_8 = add %arrayBase_5 %offset_7
	%elementVal_9 = load %elementAddr_8
	%arrayPtr_10 = load @a
	%arrayBase_11 = add %arrayPtr_10 8
	mov %idVal_12 %varDef_19
	%offset_13 = mul %idVal_12 8
	%elementAddr_14 = add %arrayBase_11 %offset_13
	store %elementVal_9 %elementAddr_14
	mov %idVal_15 %varDef_19
	mov %oldVal_16 %varDef_19
	%newVal_17 = inc %oldVal_16
	mov %varDef_20 %newVal_17
	br <1>

<4> for_end
	ret 

}

define quicksort ( %argVal_0 %argVal_2 ) {
<0> entry
	mov %varDef_141 %argVal_0
	mov %varDef_142 %argVal_2
	mov %varDef_143 0
	%arrayPtr_20 = load @a
	%arrayBase_21 = add %arrayPtr_20 8
	mov %idVal_22 %varDef_141
	%offset_23 = mul %idVal_22 8
	%elementAddr_24 = add %arrayBase_21 %offset_23
	%elementVal_25 = load %elementAddr_24
	mov %varDef_144 %elementVal_25
	mov %varDef_145 0
	mov %varDef_146 0
	mov %idVal_29 %varDef_141
	%res_30 = add %idVal_29 1
	mov %varDef_147 %res_30
	br <1>

<1> for_cond
	%varDef_148 = phi <0> %varDef_143 <3> %varDef_152
	%varDef_149 = phi <0> %varDef_145 <3> %varDef_155
	%varDef_150 = phi <0> %varDef_146 <3> %varDef_156
	%varDef_151 = phi <0> %varDef_147 <3> %varDef_157
	mov %idVal_31 %varDef_151
	mov %idVal_32 %varDef_142
	%res_33 = lt %idVal_31 %idVal_32
	br %res_33 <2> <4>

<2> for_body
	mov %idVal_34 %varDef_148
	mov %oldVal_35 %varDef_148
	%newVal_36 = inc %oldVal_35
	mov %varDef_152 %newVal_36
	%arrayPtr_37 = load @a
	%arrayBase_38 = add %arrayPtr_37 8
	mov %idVal_39 %varDef_151
	%offset_40 = mul %idVal_39 8
	%elementAddr_41 = add %arrayBase_38 %offset_40
	%elementVal_42 = load %elementAddr_41
	mov %idVal_43 %varDef_144
	%res_44 = lt %elementVal_42 %idVal_43
	br %res_44 <5> <6>

<5> if_true
	%arrayPtr_45 = load @a
	%arrayBase_46 = add %arrayPtr_45 8
	mov %idVal_47 %varDef_151
	%offset_48 = mul %idVal_47 8
	%elementAddr_49 = add %arrayBase_46 %offset_48
	%elementVal_50 = load %elementAddr_49
	%arrayPtr_51 = load @a_left
	%arrayBase_52 = add %arrayPtr_51 8
	mov %idVal_53 %varDef_149
	mov %oldVal_54 %varDef_149
	%newVal_55 = inc %oldVal_54
	mov %varDef_153 %newVal_55
	%offset_56 = mul %oldVal_54 8
	%elementAddr_57 = add %arrayBase_52 %offset_56
	store %elementVal_50 %elementAddr_57
	br <3>

<6> if_false
	%arrayPtr_58 = load @a
	%arrayBase_59 = add %arrayPtr_58 8
	mov %idVal_60 %varDef_151
	%offset_61 = mul %idVal_60 8
	%elementAddr_62 = add %arrayBase_59 %offset_61
	%elementVal_63 = load %elementAddr_62
	%arrayPtr_64 = load @a_right
	%arrayBase_65 = add %arrayPtr_64 8
	mov %idVal_66 %varDef_150
	mov %oldVal_67 %varDef_150
	%newVal_68 = inc %oldVal_67
	mov %varDef_154 %newVal_68
	%offset_69 = mul %oldVal_67 8
	%elementAddr_70 = add %arrayBase_65 %offset_69
	store %elementVal_63 %elementAddr_70
	br <3>

<3> for_step
	%varDef_155 = phi <5> %varDef_153 <6> %varDef_149
	%varDef_156 = phi <5> %varDef_150 <6> %varDef_154
	mov %idVal_71 %varDef_151
	mov %oldVal_72 %varDef_151
	%newVal_73 = inc %oldVal_72
	mov %varDef_157 %newVal_73
	br <1>

<4> for_end
	mov %idVal_75 %varDef_141
	mov %varDef_158 %idVal_75
	mov %varDef_159 0
	br <8>

<8> for_cond
	%varDef_160 = phi <4> %varDef_159 <9> %varDef_163
	%varDef_161 = phi <4> %varDef_158 <9> %varDef_162
	mov %idVal_76 %varDef_160
	mov %idVal_77 %varDef_149
	%res_78 = lt %idVal_76 %idVal_77
	br %res_78 <9> <11>

<9> for_body
	%arrayPtr_79 = load @a_left
	%arrayBase_80 = add %arrayPtr_79 8
	mov %idVal_81 %varDef_160
	%offset_82 = mul %idVal_81 8
	%elementAddr_83 = add %arrayBase_80 %offset_82
	%elementVal_84 = load %elementAddr_83
	%arrayPtr_85 = load @a
	%arrayBase_86 = add %arrayPtr_85 8
	mov %idVal_87 %varDef_161
	mov %oldVal_88 %varDef_161
	%newVal_89 = inc %oldVal_88
	mov %varDef_162 %newVal_89
	%offset_90 = mul %oldVal_88 8
	%elementAddr_91 = add %arrayBase_86 %offset_90
	store %elementVal_84 %elementAddr_91
	mov %idVal_92 %varDef_160
	mov %oldVal_93 %varDef_160
	%newVal_94 = inc %oldVal_93
	mov %varDef_163 %newVal_94
	br <8>

<11> for_end
	mov %idVal_95 %varDef_144
	%arrayPtr_96 = load @a
	%arrayBase_97 = add %arrayPtr_96 8
	mov %idVal_98 %varDef_161
	mov %oldVal_99 %varDef_161
	%newVal_100 = inc %oldVal_99
	mov %varDef_164 %newVal_100
	%offset_101 = mul %oldVal_99 8
	%elementAddr_102 = add %arrayBase_97 %offset_101
	store %idVal_95 %elementAddr_102
	mov %varDef_165 0
	br <12>

<12> for_cond
	%varDef_166 = phi <11> %varDef_165 <13> %varDef_169
	%varDef_167 = phi <11> %varDef_164 <13> %varDef_168
	mov %idVal_103 %varDef_166
	mov %idVal_104 %varDef_150
	%res_105 = lt %idVal_103 %idVal_104
	br %res_105 <13> <15>

<13> for_body
	%arrayPtr_106 = load @a_right
	%arrayBase_107 = add %arrayPtr_106 8
	mov %idVal_108 %varDef_166
	%offset_109 = mul %idVal_108 8
	%elementAddr_110 = add %arrayBase_107 %offset_109
	%elementVal_111 = load %elementAddr_110
	%arrayPtr_112 = load @a
	%arrayBase_113 = add %arrayPtr_112 8
	mov %idVal_114 %varDef_167
	mov %oldVal_115 %varDef_167
	%newVal_116 = inc %oldVal_115
	mov %varDef_168 %newVal_116
	%offset_117 = mul %oldVal_115 8
	%elementAddr_118 = add %arrayBase_113 %offset_117
	store %elementVal_111 %elementAddr_118
	mov %idVal_119 %varDef_166
	mov %oldVal_120 %varDef_166
	%newVal_121 = inc %oldVal_120
	mov %varDef_169 %newVal_121
	br <12>

<15> for_end
	mov %idVal_122 %varDef_149
	%res_123 = gt %idVal_122 1
	br %res_123 <16> <17>

<16> if_true
	mov %idVal_124 %varDef_148
	mov %idVal_126 %varDef_141
	mov %idVal_127 %varDef_141
	mov %idVal_128 %varDef_149
	%res_129 = add %idVal_127 %idVal_128
	%res_125 = quicksort ( %idVal_126 %res_129 )
	%res_130 = add %idVal_124 %res_125
	mov %varDef_170 %res_130
	br <17>

<17> if_merge
	%varDef_171 = phi <15> %varDef_148 <16> %varDef_170
	mov %idVal_131 %varDef_150
	%res_132 = gt %idVal_131 1
	br %res_132 <18> <19>

<18> if_true
	mov %idVal_133 %varDef_171
	mov %idVal_135 %varDef_142
	mov %idVal_136 %varDef_150
	%res_137 = sub %idVal_135 %idVal_136
	mov %idVal_138 %varDef_142
	%res_134 = quicksort ( %res_137 %idVal_138 )
	%res_139 = add %idVal_133 %res_134
	mov %varDef_172 %res_139
	br <19>

<19> if_merge
	%varDef_173 = phi <17> %varDef_171 <18> %varDef_172
	mov %idVal_140 %varDef_173
	ret %idVal_140

}

define calc ( ) {
<0> entry
	mov %varDef_85 1
	br <1>

<1> for_cond
	%varDef_86 = phi <0> %varDef_85 <2> %varDef_87
	mov %idVal_15 %varDef_86
	%idVal_16 = load @n
	%res_17 = le %idVal_15 %idVal_16
	br %res_17 <2> <4>

<2> for_body
	mov %idVal_18 %varDef_86
	%res_19 = sub %idVal_18 1
	%arrayPtr_20 = load @a_left
	%arrayBase_21 = add %arrayPtr_20 8
	mov %idVal_22 %varDef_86
	%offset_23 = mul %idVal_22 8
	%elementAddr_24 = add %arrayBase_21 %offset_23
	store %res_19 %elementAddr_24
	mov %idVal_25 %varDef_86
	%res_26 = add %idVal_25 1
	%arrayPtr_27 = load @a_right
	%arrayBase_28 = add %arrayPtr_27 8
	mov %idVal_29 %varDef_86
	%offset_30 = mul %idVal_29 8
	%elementAddr_31 = add %arrayBase_28 %offset_30
	store %res_26 %elementAddr_31
	mov %idVal_32 %varDef_86
	mov %oldVal_33 %varDef_86
	%newVal_34 = inc %oldVal_33
	mov %varDef_87 %newVal_34
	br <1>

<4> for_end
	mov %varDef_88 0
	%idVal_36 = load @n
	mov %varDef_89 %idVal_36
	br <5>

<5> for_cond
	%varDef_90 = phi <4> %varDef_89 <6> %varDef_97
	%varDef_91 = phi <4> %varDef_88 <6> %varDef_96
	%varDef_92 = phi <4> 0 <6> %varDef_94
	%varDef_93 = phi <4> 0 <6> %varDef_95
	mov %idVal_37 %varDef_90
	%res_38 = ge %idVal_37 1
	br %res_38 <6> <8>

<6> for_body
	%arrayPtr_40 = load @a_left
	%arrayBase_41 = add %arrayPtr_40 8
	%arrayPtr_42 = load @a
	%arrayBase_43 = add %arrayPtr_42 8
	mov %idVal_44 %varDef_90
	%offset_45 = mul %idVal_44 8
	%elementAddr_46 = add %arrayBase_43 %offset_45
	%elementVal_47 = load %elementAddr_46
	%offset_48 = mul %elementVal_47 8
	%elementAddr_49 = add %arrayBase_41 %offset_48
	%elementVal_50 = load %elementAddr_49
	mov %varDef_94 %elementVal_50
	%arrayPtr_52 = load @a_right
	%arrayBase_53 = add %arrayPtr_52 8
	%arrayPtr_54 = load @a
	%arrayBase_55 = add %arrayPtr_54 8
	mov %idVal_56 %varDef_90
	%offset_57 = mul %idVal_56 8
	%elementAddr_58 = add %arrayBase_55 %offset_57
	%elementVal_59 = load %elementAddr_58
	%offset_60 = mul %elementVal_59 8
	%elementAddr_61 = add %arrayBase_53 %offset_60
	%elementVal_62 = load %elementAddr_61
	mov %varDef_95 %elementVal_62
	mov %idVal_63 %varDef_95
	%arrayPtr_64 = load @a_right
	%arrayBase_65 = add %arrayPtr_64 8
	mov %idVal_66 %varDef_94
	%offset_67 = mul %idVal_66 8
	%elementAddr_68 = add %arrayBase_65 %offset_67
	store %idVal_63 %elementAddr_68
	mov %idVal_69 %varDef_94
	%arrayPtr_70 = load @a_left
	%arrayBase_71 = add %arrayPtr_70 8
	mov %idVal_72 %varDef_95
	%offset_73 = mul %idVal_72 8
	%elementAddr_74 = add %arrayBase_71 %offset_73
	store %idVal_69 %elementAddr_74
	mov %idVal_75 %varDef_91
	mov %idVal_76 %varDef_95
	%res_77 = add %idVal_75 %idVal_76
	mov %idVal_78 %varDef_94
	%res_79 = sub %res_77 %idVal_78
	%res_80 = sub %res_79 2
	mov %varDef_96 %res_80
	mov %idVal_81 %varDef_90
	mov %oldVal_82 %varDef_90
	%newVal_83 = dec %oldVal_82
	mov %varDef_97 %newVal_83
	br <5>

<8> for_end
	mov %idVal_84 %varDef_91
	ret %idVal_84

}

define mergesort ( %argVal_0 %argVal_2 ) {
<0> entry
	mov %varDef_174 %argVal_0
	mov %varDef_175 %argVal_2
	mov %idVal_18 %varDef_174
	%res_19 = add %idVal_18 1
	mov %idVal_20 %varDef_175
	%res_21 = eq %res_19 %idVal_20
	br %res_21 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	mov %idVal_23 %varDef_174
	mov %idVal_24 %varDef_175
	%res_25 = add %idVal_23 %idVal_24
	%res_26 = rsft %res_25 1
	mov %varDef_176 %res_26
	mov %varDef_177 0
	mov %idVal_28 %varDef_177
	mov %idVal_30 %varDef_174
	mov %idVal_31 %varDef_176
	%res_29 = mergesort ( %idVal_30 %idVal_31 )
	%res_32 = add %idVal_28 %res_29
	mov %varDef_178 %res_32
	mov %idVal_33 %varDef_178
	mov %idVal_35 %varDef_176
	mov %idVal_36 %varDef_175
	%res_34 = mergesort ( %idVal_35 %idVal_36 )
	%res_37 = add %idVal_33 %res_34
	mov %varDef_179 %res_37
	mov %varDef_180 0
	mov %varDef_181 0
	mov %idVal_41 %varDef_174
	mov %varDef_182 %idVal_41
	br <3>

<3> for_cond
	%varDef_183 = phi <2> %varDef_180 <4> %varDef_185
	%varDef_184 = phi <2> %varDef_182 <4> %varDef_186
	mov %idVal_42 %varDef_184
	mov %idVal_43 %varDef_176
	%res_44 = lt %idVal_42 %idVal_43
	br %res_44 <4> <6>

<4> for_body
	%arrayPtr_45 = load @a
	%arrayBase_46 = add %arrayPtr_45 8
	mov %idVal_47 %varDef_184
	%offset_48 = mul %idVal_47 8
	%elementAddr_49 = add %arrayBase_46 %offset_48
	%elementVal_50 = load %elementAddr_49
	%arrayPtr_51 = load @a_left
	%arrayBase_52 = add %arrayPtr_51 8
	mov %idVal_53 %varDef_183
	mov %oldVal_54 %varDef_183
	%newVal_55 = inc %oldVal_54
	mov %varDef_185 %newVal_55
	%offset_56 = mul %oldVal_54 8
	%elementAddr_57 = add %arrayBase_52 %offset_56
	store %elementVal_50 %elementAddr_57
	mov %idVal_58 %varDef_184
	mov %oldVal_59 %varDef_184
	%newVal_60 = inc %oldVal_59
	mov %varDef_186 %newVal_60
	br <3>

<6> for_end
	mov %idVal_61 %varDef_176
	mov %varDef_187 %idVal_61
	br <7>

<7> for_cond
	%varDef_188 = phi <6> %varDef_181 <8> %varDef_190
	%varDef_189 = phi <6> %varDef_187 <8> %varDef_191
	mov %idVal_62 %varDef_189
	mov %idVal_63 %varDef_175
	%res_64 = lt %idVal_62 %idVal_63
	br %res_64 <8> <10>

<8> for_body
	%arrayPtr_65 = load @a
	%arrayBase_66 = add %arrayPtr_65 8
	mov %idVal_67 %varDef_189
	%offset_68 = mul %idVal_67 8
	%elementAddr_69 = add %arrayBase_66 %offset_68
	%elementVal_70 = load %elementAddr_69
	%arrayPtr_71 = load @a_right
	%arrayBase_72 = add %arrayPtr_71 8
	mov %idVal_73 %varDef_188
	mov %oldVal_74 %varDef_188
	%newVal_75 = inc %oldVal_74
	mov %varDef_190 %newVal_75
	%offset_76 = mul %oldVal_74 8
	%elementAddr_77 = add %arrayBase_72 %offset_76
	store %elementVal_70 %elementAddr_77
	mov %idVal_78 %varDef_189
	mov %oldVal_79 %varDef_189
	%newVal_80 = inc %oldVal_79
	mov %varDef_191 %newVal_80
	br <7>

<10> for_end
	mov %varDef_192 0
	mov %varDef_193 0
	mov %idVal_84 %varDef_174
	mov %varDef_194 %idVal_84
	br <11>

<11> while_cond
	%varDef_195 = phi <10> %varDef_179 <15> %varDef_199 <16> %varDef_199
	%varDef_196 = phi <10> %varDef_192 <15> %varDef_200 <16> %varDef_196
	%varDef_197 = phi <10> %varDef_193 <15> %varDef_197 <16> %varDef_202
	%varDef_198 = phi <10> %varDef_194 <15> %varDef_201 <16> %varDef_203
	mov %idVal_85 %varDef_196
	mov %idVal_86 %varDef_183
	%res_87 = lt %idVal_85 %idVal_86
	br %res_87 <14> <18>

<14> lhs_true
	mov %idVal_88 %varDef_197
	mov %idVal_89 %varDef_188
	%res_90 = lt %idVal_88 %idVal_89
	br %res_90 <12> <18>

<12> while_body
	mov %idVal_91 %varDef_195
	mov %oldVal_92 %varDef_195
	%newVal_93 = inc %oldVal_92
	mov %varDef_199 %newVal_93
	%arrayPtr_94 = load @a_left
	%arrayBase_95 = add %arrayPtr_94 8
	mov %idVal_96 %varDef_196
	%offset_97 = mul %idVal_96 8
	%elementAddr_98 = add %arrayBase_95 %offset_97
	%elementVal_99 = load %elementAddr_98
	%arrayPtr_100 = load @a_right
	%arrayBase_101 = add %arrayPtr_100 8
	mov %idVal_102 %varDef_197
	%offset_103 = mul %idVal_102 8
	%elementAddr_104 = add %arrayBase_101 %offset_103
	%elementVal_105 = load %elementAddr_104
	%res_106 = lt %elementVal_99 %elementVal_105
	br %res_106 <15> <16>

<15> if_true
	%arrayPtr_107 = load @a_left
	%arrayBase_108 = add %arrayPtr_107 8
	mov %idVal_109 %varDef_196
	mov %oldVal_110 %varDef_196
	%newVal_111 = inc %oldVal_110
	mov %varDef_200 %newVal_111
	%offset_112 = mul %oldVal_110 8
	%elementAddr_113 = add %arrayBase_108 %offset_112
	%elementVal_114 = load %elementAddr_113
	%arrayPtr_115 = load @a
	%arrayBase_116 = add %arrayPtr_115 8
	mov %idVal_117 %varDef_198
	mov %oldVal_118 %varDef_198
	%newVal_119 = inc %oldVal_118
	mov %varDef_201 %newVal_119
	%offset_120 = mul %oldVal_118 8
	%elementAddr_121 = add %arrayBase_116 %offset_120
	store %elementVal_114 %elementAddr_121
	br <11>

<16> if_false
	%arrayPtr_122 = load @a_right
	%arrayBase_123 = add %arrayPtr_122 8
	mov %idVal_124 %varDef_197
	mov %oldVal_125 %varDef_197
	%newVal_126 = inc %oldVal_125
	mov %varDef_202 %newVal_126
	%offset_127 = mul %oldVal_125 8
	%elementAddr_128 = add %arrayBase_123 %offset_127
	%elementVal_129 = load %elementAddr_128
	%arrayPtr_130 = load @a
	%arrayBase_131 = add %arrayPtr_130 8
	mov %idVal_132 %varDef_198
	mov %oldVal_133 %varDef_198
	%newVal_134 = inc %oldVal_133
	mov %varDef_203 %newVal_134
	%offset_135 = mul %oldVal_133 8
	%elementAddr_136 = add %arrayBase_131 %offset_135
	store %elementVal_129 %elementAddr_136
	br <11>

<18> while_cond
	%varDef_204 = phi <11> %varDef_196 <14> %varDef_196 <19> %varDef_206
	%varDef_205 = phi <11> %varDef_198 <14> %varDef_198 <19> %varDef_207
	mov %idVal_137 %varDef_204
	mov %idVal_138 %varDef_183
	%res_139 = lt %idVal_137 %idVal_138
	br %res_139 <19> <21>

<19> while_body
	%arrayPtr_140 = load @a_left
	%arrayBase_141 = add %arrayPtr_140 8
	mov %idVal_142 %varDef_204
	mov %oldVal_143 %varDef_204
	%newVal_144 = inc %oldVal_143
	mov %varDef_206 %newVal_144
	%offset_145 = mul %oldVal_143 8
	%elementAddr_146 = add %arrayBase_141 %offset_145
	%elementVal_147 = load %elementAddr_146
	%arrayPtr_148 = load @a
	%arrayBase_149 = add %arrayPtr_148 8
	mov %idVal_150 %varDef_205
	mov %oldVal_151 %varDef_205
	%newVal_152 = inc %oldVal_151
	mov %varDef_207 %newVal_152
	%offset_153 = mul %oldVal_151 8
	%elementAddr_154 = add %arrayBase_149 %offset_153
	store %elementVal_147 %elementAddr_154
	br <18>

<21> while_cond
	%varDef_208 = phi <18> %varDef_197 <22> %varDef_210
	%varDef_209 = phi <18> %varDef_205 <22> %varDef_211
	mov %idVal_155 %varDef_208
	mov %idVal_156 %varDef_188
	%res_157 = lt %idVal_155 %idVal_156
	br %res_157 <22> <23>

<22> while_body
	%arrayPtr_158 = load @a_right
	%arrayBase_159 = add %arrayPtr_158 8
	mov %idVal_160 %varDef_208
	mov %oldVal_161 %varDef_208
	%newVal_162 = inc %oldVal_161
	mov %varDef_210 %newVal_162
	%offset_163 = mul %oldVal_161 8
	%elementAddr_164 = add %arrayBase_159 %offset_163
	%elementVal_165 = load %elementAddr_164
	%arrayPtr_166 = load @a
	%arrayBase_167 = add %arrayPtr_166 8
	mov %idVal_168 %varDef_209
	mov %oldVal_169 %varDef_209
	%newVal_170 = inc %oldVal_169
	mov %varDef_211 %newVal_170
	%offset_171 = mul %oldVal_169 8
	%elementAddr_172 = add %arrayBase_167 %offset_171
	store %elementVal_165 %elementAddr_172
	br <21>

<23> while_end
	mov %idVal_173 %varDef_195
	ret %idVal_173

}

define heapsort ( ) {
<0> entry
	mov %varDef_188 0
	mov %varDef_189 1
	br <1>

<1> for_cond
	%varDef_190 = phi <0> %varDef_188 <3> %varDef_201
	%varDef_191 = phi <0> %varDef_189 <3> %varDef_202
	%varDef_192 = phi <0> 0 <3> %varDef_196
	%varDef_193 = phi <0> 0 <3> %varDef_197
	mov %idVal_17 %varDef_191
	%idVal_18 = load @n
	%res_19 = le %idVal_17 %idVal_18
	br %res_19 <2> <4>

<2> for_body
	%arrayPtr_20 = load @a
	%arrayBase_21 = add %arrayPtr_20 8
	mov %idVal_22 %varDef_191
	%offset_23 = mul %idVal_22 8
	%elementAddr_24 = add %arrayBase_21 %offset_23
	%elementVal_25 = load %elementAddr_24
	%arrayPtr_26 = load @heap
	%arrayBase_27 = add %arrayPtr_26 8
	mov %idVal_28 %varDef_191
	%offset_29 = mul %idVal_28 8
	%elementAddr_30 = add %arrayBase_27 %offset_29
	store %elementVal_25 %elementAddr_30
	mov %idVal_32 %varDef_191
	mov %varDef_194 %idVal_32
	br <5>

<5> while_cond
	%varDef_195 = phi <2> %varDef_190 <9> %varDef_198
	%varDef_196 = phi <2> %varDef_192 <9> %varDef_199
	%varDef_197 = phi <2> %varDef_194 <9> %varDef_200
	mov %idVal_33 %varDef_197
	%res_34 = neq %idVal_33 1
	br %res_34 <6> <3>

<6> while_body
	mov %idVal_35 %varDef_195
	mov %oldVal_36 %varDef_195
	%newVal_37 = inc %oldVal_36
	mov %varDef_198 %newVal_37
	%arrayPtr_38 = load @heap
	%arrayBase_39 = add %arrayPtr_38 8
	mov %idVal_40 %varDef_197
	%offset_41 = mul %idVal_40 8
	%elementAddr_42 = add %arrayBase_39 %offset_41
	%elementVal_43 = load %elementAddr_42
	%arrayPtr_44 = load @heap
	%arrayBase_45 = add %arrayPtr_44 8
	mov %idVal_46 %varDef_197
	%res_47 = rsft %idVal_46 1
	%offset_48 = mul %res_47 8
	%elementAddr_49 = add %arrayBase_45 %offset_48
	%elementVal_50 = load %elementAddr_49
	%res_51 = gt %elementVal_43 %elementVal_50
	br %res_51 <3> <9>

<9> if_merge
	%arrayPtr_52 = load @heap
	%arrayBase_53 = add %arrayPtr_52 8
	mov %idVal_54 %varDef_197
	%offset_55 = mul %idVal_54 8
	%elementAddr_56 = add %arrayBase_53 %offset_55
	%elementVal_57 = load %elementAddr_56
	mov %varDef_199 %elementVal_57
	%arrayPtr_58 = load @heap
	%arrayBase_59 = add %arrayPtr_58 8
	mov %idVal_60 %varDef_197
	%res_61 = rsft %idVal_60 1
	%offset_62 = mul %res_61 8
	%elementAddr_63 = add %arrayBase_59 %offset_62
	%elementVal_64 = load %elementAddr_63
	%arrayPtr_65 = load @heap
	%arrayBase_66 = add %arrayPtr_65 8
	mov %idVal_67 %varDef_197
	%offset_68 = mul %idVal_67 8
	%elementAddr_69 = add %arrayBase_66 %offset_68
	store %elementVal_64 %elementAddr_69
	mov %idVal_70 %varDef_199
	%arrayPtr_71 = load @heap
	%arrayBase_72 = add %arrayPtr_71 8
	mov %idVal_73 %varDef_197
	%res_74 = rsft %idVal_73 1
	%offset_75 = mul %res_74 8
	%elementAddr_76 = add %arrayBase_72 %offset_75
	store %idVal_70 %elementAddr_76
	mov %idVal_77 %varDef_197
	%res_78 = rsft %idVal_77 1
	mov %varDef_200 %res_78
	br <5>

<3> for_step
	%varDef_201 = phi <5> %varDef_195 <6> %varDef_198
	mov %idVal_79 %varDef_191
	mov %oldVal_80 %varDef_191
	%newVal_81 = inc %oldVal_80
	mov %varDef_202 %newVal_81
	br <1>

<4> for_end
	%idVal_83 = load @n
	mov %varDef_203 %idVal_83
	mov %varDef_204 1
	br <10>

<10> for_cond
	%varDef_205 = phi <4> %varDef_190 <12> %varDef_233
	%varDef_206 = phi <4> %varDef_204 <12> %varDef_237
	%varDef_207 = phi <4> %varDef_192 <12> %varDef_216
	%varDef_208 = phi <4> %varDef_203 <12> %varDef_213
	%varDef_209 = phi <4> 0 <12> %varDef_217
	%varDef_210 = phi <4> 0 <12> %varDef_234
	%varDef_211 = phi <4> 0 <12> %varDef_235
	%varDef_212 = phi <4> 0 <12> %varDef_236
	mov %idVal_84 %varDef_206
	%idVal_85 = load @n
	%res_86 = le %idVal_84 %idVal_85
	br %res_86 <11> <13>

<11> for_body
	%arrayPtr_87 = load @heap
	%arrayBase_88 = add %arrayPtr_87 8
	%offset_89 = mul 1 8
	%elementAddr_90 = add %arrayBase_88 %offset_89
	%elementVal_91 = load %elementAddr_90
	%arrayPtr_92 = load @a
	%arrayBase_93 = add %arrayPtr_92 8
	mov %idVal_94 %varDef_206
	%offset_95 = mul %idVal_94 8
	%elementAddr_96 = add %arrayBase_93 %offset_95
	store %elementVal_91 %elementAddr_96
	%arrayPtr_97 = load @heap
	%arrayBase_98 = add %arrayPtr_97 8
	mov %idVal_99 %varDef_208
	mov %oldVal_100 %varDef_208
	%newVal_101 = dec %oldVal_100
	mov %varDef_213 %newVal_101
	%offset_102 = mul %oldVal_100 8
	%elementAddr_103 = add %arrayBase_98 %offset_102
	%elementVal_104 = load %elementAddr_103
	%arrayPtr_105 = load @heap
	%arrayBase_106 = add %arrayPtr_105 8
	%offset_107 = mul 1 8
	%elementAddr_108 = add %arrayBase_106 %offset_107
	store %elementVal_104 %elementAddr_108
	mov %varDef_214 1
	br <14>

<14> while_cond
	%varDef_215 = phi <11> %varDef_205 <22> %varDef_228
	%varDef_216 = phi <11> %varDef_207 <22> %varDef_230
	%varDef_217 = phi <11> %varDef_214 <22> %varDef_231
	%varDef_218 = phi <11> %varDef_210 <22> %varDef_221
	%varDef_219 = phi <11> %varDef_211 <22> %varDef_222
	%varDef_220 = phi <11> %varDef_212 <22> %varDef_232
	mov %idVal_110 %varDef_217
	%res_111 = lsft %idVal_110 1
	mov %idVal_112 %varDef_213
	%res_113 = le %res_111 %idVal_112
	br %res_113 <15> <12>

<15> while_body
	mov %idVal_115 %varDef_217
	%res_116 = lsft %idVal_115 1
	mov %varDef_221 %res_116
	mov %idVal_118 %varDef_221
	%res_119 = add %idVal_118 1
	mov %varDef_222 %res_119
	mov %idVal_121 %varDef_221
	mov %varDef_223 %idVal_121
	mov %idVal_122 %varDef_222
	mov %idVal_123 %varDef_213
	%res_124 = le %idVal_122 %idVal_123
	br %res_124 <17> <18>

<17> if_true
	mov %idVal_125 %varDef_215
	mov %oldVal_126 %varDef_215
	%newVal_127 = inc %oldVal_126
	mov %varDef_224 %newVal_127
	%arrayPtr_128 = load @heap
	%arrayBase_129 = add %arrayPtr_128 8
	mov %idVal_130 %varDef_222
	%offset_131 = mul %idVal_130 8
	%elementAddr_132 = add %arrayBase_129 %offset_131
	%elementVal_133 = load %elementAddr_132
	%arrayPtr_134 = load @heap
	%arrayBase_135 = add %arrayPtr_134 8
	mov %idVal_136 %varDef_221
	%offset_137 = mul %idVal_136 8
	%elementAddr_138 = add %arrayBase_135 %offset_137
	%elementVal_139 = load %elementAddr_138
	%res_140 = lt %elementVal_133 %elementVal_139
	br %res_140 <19> <18>

<19> if_true
	mov %idVal_141 %varDef_222
	mov %varDef_225 %idVal_141
	br <18>

<18> if_merge
	%varDef_226 = phi <15> %varDef_215 <17> %varDef_224 <19> %varDef_224
	%varDef_227 = phi <15> %varDef_223 <17> %varDef_223 <19> %varDef_225
	mov %idVal_142 %varDef_226
	mov %oldVal_143 %varDef_226
	%newVal_144 = inc %oldVal_143
	mov %varDef_228 %newVal_144
	%arrayPtr_145 = load @heap
	%arrayBase_146 = add %arrayPtr_145 8
	mov %idVal_147 %varDef_217
	%offset_148 = mul %idVal_147 8
	%elementAddr_149 = add %arrayBase_146 %offset_148
	%elementVal_150 = load %elementAddr_149
	%arrayPtr_151 = load @heap
	%arrayBase_152 = add %arrayPtr_151 8
	mov %idVal_153 %varDef_227
	%offset_154 = mul %idVal_153 8
	%elementAddr_155 = add %arrayBase_152 %offset_154
	%elementVal_156 = load %elementAddr_155
	%res_157 = lt %elementVal_150 %elementVal_156
	br %res_157 <12> <22>

<22> if_merge
	%arrayPtr_158 = load @heap
	%arrayBase_159 = add %arrayPtr_158 8
	mov %idVal_160 %varDef_217
	%offset_161 = mul %idVal_160 8
	%elementAddr_162 = add %arrayBase_159 %offset_161
	%elementVal_163 = load %elementAddr_162
	mov %varDef_229 %elementVal_163
	%arrayPtr_164 = load @heap
	%arrayBase_165 = add %arrayPtr_164 8
	mov %idVal_166 %varDef_227
	%offset_167 = mul %idVal_166 8
	%elementAddr_168 = add %arrayBase_165 %offset_167
	%elementVal_169 = load %elementAddr_168
	%arrayPtr_170 = load @heap
	%arrayBase_171 = add %arrayPtr_170 8
	mov %idVal_172 %varDef_217
	%offset_173 = mul %idVal_172 8
	%elementAddr_174 = add %arrayBase_171 %offset_173
	store %elementVal_169 %elementAddr_174
	mov %idVal_175 %varDef_229
	%arrayPtr_176 = load @heap
	%arrayBase_177 = add %arrayPtr_176 8
	mov %idVal_178 %varDef_227
	%offset_179 = mul %idVal_178 8
	%elementAddr_180 = add %arrayBase_177 %offset_179
	store %idVal_175 %elementAddr_180
	mov %idVal_181 %varDef_217
	mov %varDef_230 %idVal_181
	mov %idVal_182 %varDef_227
	mov %varDef_231 %idVal_182
	mov %idVal_183 %varDef_230
	mov %varDef_232 %idVal_183
	br <14>

<12> for_step
	%varDef_233 = phi <14> %varDef_215 <18> %varDef_228
	%varDef_234 = phi <14> %varDef_218 <18> %varDef_221
	%varDef_235 = phi <14> %varDef_219 <18> %varDef_222
	%varDef_236 = phi <14> %varDef_220 <18> %varDef_227
	mov %idVal_184 %varDef_206
	mov %oldVal_185 %varDef_206
	%newVal_186 = inc %oldVal_185
	mov %varDef_237 %newVal_186
	br <10>

<13> for_end
	mov %idVal_187 %varDef_205
	ret %idVal_187

}

define main ( ) {
<0> entry
	%res_14 = getInt ( )
	store %res_14 @n
	%res_16 = getInt ( )
	mov %varDef_130 %res_16
	mov %varDef_131 1
	br <1>

<1> for_cond
	%varDef_132 = phi <0> %varDef_131 <6> %varDef_133
	mov %idVal_18 %varDef_132
	%idVal_19 = load @n
	%res_20 = le %idVal_18 %idVal_19
	br %res_20 <2> <4>

<2> for_body
	mov %idVal_21 %varDef_132
	%arrayPtr_22 = load @a
	%arrayBase_23 = add %arrayPtr_22 8
	mov %idVal_24 %varDef_132
	%offset_25 = mul %idVal_24 8
	%elementAddr_26 = add %arrayBase_23 %offset_25
	store %idVal_21 %elementAddr_26
	mov %idVal_27 %varDef_132
	mov %idVal_28 %varDef_130
	%res_29 = le %idVal_27 %idVal_28
	br %res_29 <5> <6>

<5> if_true
	mov %idVal_30 %varDef_130
	%res_31 = add %idVal_30 1
	mov %idVal_32 %varDef_132
	%res_33 = sub %res_31 %idVal_32
	%arrayPtr_34 = load @a
	%arrayBase_35 = add %arrayPtr_34 8
	mov %idVal_36 %varDef_132
	%offset_37 = mul %idVal_36 8
	%elementAddr_38 = add %arrayBase_35 %offset_37
	store %res_33 %elementAddr_38
	br <6>

<6> if_merge
	%arrayPtr_39 = load @a
	%arrayBase_40 = add %arrayPtr_39 8
	mov %idVal_41 %varDef_132
	%offset_42 = mul %idVal_41 8
	%elementAddr_43 = add %arrayBase_40 %offset_42
	%elementVal_44 = load %elementAddr_43
	%arrayPtr_45 = load @bak
	%arrayBase_46 = add %arrayPtr_45 8
	mov %idVal_47 %varDef_132
	%offset_48 = mul %idVal_47 8
	%elementAddr_49 = add %arrayBase_46 %offset_48
	store %elementVal_44 %elementAddr_49
	mov %idVal_50 %varDef_132
	mov %oldVal_51 %varDef_132
	%newVal_52 = inc %oldVal_51
	mov %varDef_133 %newVal_52
	br <1>

<4> for_end
	%idVal_55 = load @n
	%res_56 = add %idVal_55 1
	%res_54 = quicksort ( 1 %res_56 )
	mov %varDef_134 %res_54
	mov %varDef_135 1
	br <9>

<9> cfor_cond
	%varDef_136 = phi <4> %varDef_135 <10> %varDef_137
	mov %cidVal_77 %varDef_136
	%cidVal_78 = load @n
	%cres_79 = le %cidVal_77 %cidVal_78
	br %cres_79 <10> <7>

<10> cfor_body
	%carrayPtr_80 = load @bak
	%carrayBase_81 = add %carrayPtr_80 8
	mov %cidVal_82 %varDef_136
	%coffset_83 = mul %cidVal_82 8
	%celementAddr_84 = add %carrayBase_81 %coffset_83
	%celementVal_85 = load %celementAddr_84
	%carrayPtr_86 = load @a
	%carrayBase_87 = add %carrayPtr_86 8
	mov %cidVal_88 %varDef_136
	%coffset_89 = mul %cidVal_88 8
	%celementAddr_90 = add %carrayBase_87 %coffset_89
	store %celementVal_85 %celementAddr_90
	mov %cidVal_91 %varDef_136
	mov %coldVal_92 %varDef_136
	%cnewVal_93 = inc %coldVal_92
	mov %varDef_137 %cnewVal_93
	br <9>

<7> after_call
	%res_58 = calc ( )
	mov %varDef_138 %res_58
	mov %varDef_139 1
	br <15>

<15> cfor_cond
	%varDef_140 = phi <7> %varDef_139 <16> %varDef_141
	mov %cidVal_95 %varDef_140
	%cidVal_96 = load @n
	%cres_97 = le %cidVal_95 %cidVal_96
	br %cres_97 <16> <13>

<16> cfor_body
	%carrayPtr_98 = load @bak
	%carrayBase_99 = add %carrayPtr_98 8
	mov %cidVal_100 %varDef_140
	%coffset_101 = mul %cidVal_100 8
	%celementAddr_102 = add %carrayBase_99 %coffset_101
	%celementVal_103 = load %celementAddr_102
	%carrayPtr_104 = load @a
	%carrayBase_105 = add %carrayPtr_104 8
	mov %cidVal_106 %varDef_140
	%coffset_107 = mul %cidVal_106 8
	%celementAddr_108 = add %carrayBase_105 %coffset_107
	store %celementVal_103 %celementAddr_108
	mov %cidVal_109 %varDef_140
	mov %coldVal_110 %varDef_140
	%cnewVal_111 = inc %coldVal_110
	mov %varDef_141 %cnewVal_111
	br <15>

<13> after_call
	%idVal_61 = load @n
	%res_62 = add %idVal_61 1
	%res_60 = mergesort ( 1 %res_62 )
	mov %varDef_142 %res_60
	mov %varDef_143 1
	br <21>

<21> cfor_cond
	%varDef_144 = phi <13> %varDef_143 <22> %varDef_145
	mov %cidVal_113 %varDef_144
	%cidVal_114 = load @n
	%cres_115 = le %cidVal_113 %cidVal_114
	br %cres_115 <22> <19>

<22> cfor_body
	%carrayPtr_116 = load @bak
	%carrayBase_117 = add %carrayPtr_116 8
	mov %cidVal_118 %varDef_144
	%coffset_119 = mul %cidVal_118 8
	%celementAddr_120 = add %carrayBase_117 %coffset_119
	%celementVal_121 = load %celementAddr_120
	%carrayPtr_122 = load @a
	%carrayBase_123 = add %carrayPtr_122 8
	mov %cidVal_124 %varDef_144
	%coffset_125 = mul %cidVal_124 8
	%celementAddr_126 = add %carrayBase_123 %coffset_125
	store %celementVal_121 %celementAddr_126
	mov %cidVal_127 %varDef_144
	mov %coldVal_128 %varDef_144
	%cnewVal_129 = inc %coldVal_128
	mov %varDef_145 %cnewVal_129
	br <21>

<19> after_call
	%res_64 = heapsort ( )
	mov %varDef_146 %res_64
	mov %idVal_66 %varDef_134
	%res_65 = toString ( %idVal_66 )
	println ( %res_65 )
	mov %idVal_68 %varDef_138
	%res_67 = toString ( %idVal_68 )
	println ( %res_67 )
	mov %idVal_70 %varDef_142
	%res_69 = toString ( %idVal_70 )
	println ( %res_69 )
	mov %idVal_72 %varDef_146
	%res_71 = toString ( %idVal_72 )
	println ( %res_71 )
	%classPtr_74 = malloc 8
	_A_A ( %classPtr_74 )
	mov %varDef_147 %classPtr_74
	mov %classPtr_75 %varDef_147
	_A_Optimizer ( %classPtr_75 )
	ret 0

}

