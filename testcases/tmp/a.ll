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
	%boolValAddr_4 = alloca 4
	%argAddr_3 = alloca 4
	%argAddr_1 = alloca 4
	store %argVal_0 %argAddr_1
	store %argVal_2 %argAddr_3
	%idVal_5 = load %argAddr_1
	%idVal_6 = load %argAddr_3
	%res_7 = lt %idVal_5 %idVal_6
	br %res_7 <4> <2>

<4> lhs_true
	%idVal_8 = load %argAddr_1
	%res_9 = ge %idVal_8 0
	br %res_9 <1> <2>

<1> bool_true
	store 1 %boolValAddr_4
	br <3>

<2> bool_false
	store 0 %boolValAddr_4
	br <3>

<3> bool_merge
	%boolVal_10 = load %boolValAddr_4
	ret %boolVal_10

}

define #main ( ) {
<0> entry
	%varAddr_15 = alloca 4
	%varAddr_14 = alloca 4
	%varAddr_13 = alloca 4
	%varAddr_12 = alloca 4
	%varAddr_11 = alloca 4
	%varAddr_10 = alloca 4
	%varAddr_9 = alloca 4
	%varAddr_8 = alloca 4
	%varAddr_7 = alloca 4
	%varAddr_6 = alloca 4
	%varAddr_5 = alloca 4
	%varAddr_4 = alloca 4
	%varAddr_3 = alloca 4
	%varAddr_2 = alloca 4
	%varAddr_1 = alloca 4
	%varAddr_0 = alloca 4
	%res_16 = #getInt ( )
	store %res_16 %varAddr_0
	store 0 %varAddr_1
	store 0 %varAddr_6
	store 0 %varAddr_2
	store 0 %varAddr_3
	%idVal_17 = load %varAddr_0
	%res_18 = sub %idVal_17 1
	store %res_18 %varAddr_4
	%idVal_19 = load %varAddr_0
	%res_20 = sub %idVal_19 1
	store %res_20 %varAddr_5
	store 0 %varAddr_9
	store 0 %varAddr_10
	store 0 %varAddr_8
	store 0 %varAddr_7
	%idVal_21 = load %varAddr_0
	%idVal_22 = load %varAddr_0
	%res_23 = mul %idVal_21 %idVal_22
	%memberLength_25 = mul %res_23 4
	%arrayLength_26 = add %memberLength_25 4
	%arrayPtr_24 = malloc %arrayLength_26
	store %res_23 %arrayPtr_24
	store %arrayPtr_24 %varAddr_11
	store 0 %varAddr_14
	br <1>

<1> for_cond
	%idVal_27 = load %varAddr_14
	%idVal_28 = load %varAddr_0
	%idVal_29 = load %varAddr_0
	%res_30 = mul %idVal_28 %idVal_29
	%res_31 = lt %idVal_27 %res_30
	br %res_31 <2> <4>

<2> for_body
	%arrayPtr_32 = load %varAddr_11
	%arrayBase_33 = add %arrayPtr_32 4
	%idVal_34 = load %varAddr_14
	%offset_35 = mul %idVal_34 4
	%elementAddr_36 = add %arrayBase_33 %offset_35
	store 0 %elementAddr_36
	br <3>

<3> for_step
	%idVal_37 = load %varAddr_14
	%oldVal_38 = load %varAddr_14
	%newVal_39 = inc %oldVal_38
	store %newVal_39 %varAddr_14
	br <1>

<4> for_end
	%idVal_40 = load %varAddr_0
	%idVal_41 = load %varAddr_0
	%res_42 = mul %idVal_40 %idVal_41
	%memberLength_44 = mul %res_42 4
	%arrayLength_45 = add %memberLength_44 4
	%arrayPtr_43 = malloc %arrayLength_45
	store %res_42 %arrayPtr_43
	store %arrayPtr_43 %varAddr_12
	store 0 %varAddr_14
	br <5>

<5> for_cond
	%idVal_46 = load %varAddr_14
	%idVal_47 = load %varAddr_0
	%idVal_48 = load %varAddr_0
	%res_49 = mul %idVal_47 %idVal_48
	%res_50 = lt %idVal_46 %res_49
	br %res_50 <6> <8>

<6> for_body
	%arrayPtr_51 = load %varAddr_12
	%arrayBase_52 = add %arrayPtr_51 4
	%idVal_53 = load %varAddr_14
	%offset_54 = mul %idVal_53 4
	%elementAddr_55 = add %arrayBase_52 %offset_54
	store 0 %elementAddr_55
	br <7>

<7> for_step
	%idVal_56 = load %varAddr_14
	%oldVal_57 = load %varAddr_14
	%newVal_58 = inc %oldVal_57
	store %newVal_58 %varAddr_14
	br <5>

<8> for_end
	%idVal_59 = load %varAddr_0
	%memberLength_61 = mul %idVal_59 4
	%arrayLength_62 = add %memberLength_61 4
	%arrayPtr_60 = malloc %arrayLength_62
	store %idVal_59 %arrayPtr_60
	store %arrayPtr_60 %varAddr_13
	store 0 %varAddr_14
	br <9>

<9> for_cond
	%idVal_63 = load %varAddr_14
	%idVal_64 = load %varAddr_0
	%res_65 = lt %idVal_63 %idVal_64
	br %res_65 <10> <12>

<10> for_body
	%idVal_66 = load %varAddr_0
	%memberLength_68 = mul %idVal_66 4
	%arrayLength_69 = add %memberLength_68 4
	%arrayPtr_67 = malloc %arrayLength_69
	store %idVal_66 %arrayPtr_67
	%arrayPtr_70 = load %varAddr_13
	%arrayBase_71 = add %arrayPtr_70 4
	%idVal_72 = load %varAddr_14
	%offset_73 = mul %idVal_72 4
	%elementAddr_74 = add %arrayBase_71 %offset_73
	store %arrayPtr_67 %elementAddr_74
	store 0 %varAddr_15
	br <13>

<13> for_cond
	%idVal_75 = load %varAddr_15
	%idVal_76 = load %varAddr_0
	%res_77 = lt %idVal_75 %idVal_76
	br %res_77 <14> <16>

<14> for_body
	%res_78 = neg 1
	%arrayPtr_79 = load %varAddr_13
	%arrayBase_80 = add %arrayPtr_79 4
	%idVal_81 = load %varAddr_14
	%offset_82 = mul %idVal_81 4
	%elementAddr_83 = add %arrayBase_80 %offset_82
	%arrayPtr_84 = load %elementAddr_83
	%arrayBase_85 = add %arrayPtr_84 4
	%idVal_86 = load %varAddr_15
	%offset_87 = mul %idVal_86 4
	%elementAddr_88 = add %arrayBase_85 %offset_87
	store %res_78 %elementAddr_88
	br <15>

<15> for_step
	%idVal_89 = load %varAddr_15
	%oldVal_90 = load %varAddr_15
	%newVal_91 = inc %oldVal_90
	store %newVal_91 %varAddr_15
	br <13>

<16> for_end
	br <11>

<11> for_step
	%idVal_92 = load %varAddr_14
	%oldVal_93 = load %varAddr_14
	%newVal_94 = inc %oldVal_93
	store %newVal_94 %varAddr_14
	br <9>

<12> for_end
	%idVal_95 = load %varAddr_2
	%arrayPtr_96 = load %varAddr_11
	%arrayBase_97 = add %arrayPtr_96 4
	%offset_98 = mul 0 4
	%elementAddr_99 = add %arrayBase_97 %offset_98
	store %idVal_95 %elementAddr_99
	%idVal_100 = load %varAddr_3
	%arrayPtr_101 = load %varAddr_12
	%arrayBase_102 = add %arrayPtr_101 4
	%offset_103 = mul 0 4
	%elementAddr_104 = add %arrayBase_102 %offset_103
	store %idVal_100 %elementAddr_104
	%arrayPtr_105 = load %varAddr_13
	%arrayBase_106 = add %arrayPtr_105 4
	%idVal_107 = load %varAddr_2
	%offset_108 = mul %idVal_107 4
	%elementAddr_109 = add %arrayBase_106 %offset_108
	%arrayPtr_110 = load %elementAddr_109
	%arrayBase_111 = add %arrayPtr_110 4
	%idVal_112 = load %varAddr_3
	%offset_113 = mul %idVal_112 4
	%elementAddr_114 = add %arrayBase_111 %offset_113
	store 0 %elementAddr_114
	br <17>

<17> while_cond
	%idVal_115 = load %varAddr_1
	%idVal_116 = load %varAddr_6
	%res_117 = le %idVal_115 %idVal_116
	br %res_117 <18> <19>

<18> while_body
	%arrayPtr_118 = load %varAddr_13
	%arrayBase_119 = add %arrayPtr_118 4
	%arrayPtr_120 = load %varAddr_11
	%arrayBase_121 = add %arrayPtr_120 4
	%idVal_122 = load %varAddr_1
	%offset_123 = mul %idVal_122 4
	%elementAddr_124 = add %arrayBase_121 %offset_123
	%elementVal_125 = load %elementAddr_124
	%offset_126 = mul %elementVal_125 4
	%elementAddr_127 = add %arrayBase_119 %offset_126
	%arrayPtr_128 = load %elementAddr_127
	%arrayBase_129 = add %arrayPtr_128 4
	%arrayPtr_130 = load %varAddr_12
	%arrayBase_131 = add %arrayPtr_130 4
	%idVal_132 = load %varAddr_1
	%offset_133 = mul %idVal_132 4
	%elementAddr_134 = add %arrayBase_131 %offset_133
	%elementVal_135 = load %elementAddr_134
	%offset_136 = mul %elementVal_135 4
	%elementAddr_137 = add %arrayBase_129 %offset_136
	%elementVal_138 = load %elementAddr_137
	store %elementVal_138 %varAddr_8
	%arrayPtr_139 = load %varAddr_11
	%arrayBase_140 = add %arrayPtr_139 4
	%idVal_141 = load %varAddr_1
	%offset_142 = mul %idVal_141 4
	%elementAddr_143 = add %arrayBase_140 %offset_142
	%elementVal_144 = load %elementAddr_143
	%res_145 = sub %elementVal_144 1
	store %res_145 %varAddr_9
	%arrayPtr_146 = load %varAddr_12
	%arrayBase_147 = add %arrayPtr_146 4
	%idVal_148 = load %varAddr_1
	%offset_149 = mul %idVal_148 4
	%elementAddr_150 = add %arrayBase_147 %offset_149
	%elementVal_151 = load %elementAddr_150
	%res_152 = sub %elementVal_151 2
	store %res_152 %varAddr_10
	%idVal_154 = load %varAddr_9
	%idVal_155 = load %varAddr_0
	%res_153 = #check ( %idVal_154 %idVal_155 )
	br %res_153 <23> <21>

<23> lhs_true
	%idVal_157 = load %varAddr_10
	%idVal_158 = load %varAddr_0
	%res_156 = #check ( %idVal_157 %idVal_158 )
	br %res_156 <22> <21>

<22> lhs_true
	%arrayPtr_159 = load %varAddr_13
	%arrayBase_160 = add %arrayPtr_159 4
	%idVal_161 = load %varAddr_9
	%offset_162 = mul %idVal_161 4
	%elementAddr_163 = add %arrayBase_160 %offset_162
	%arrayPtr_164 = load %elementAddr_163
	%arrayBase_165 = add %arrayPtr_164 4
	%idVal_166 = load %varAddr_10
	%offset_167 = mul %idVal_166 4
	%elementAddr_168 = add %arrayBase_165 %offset_167
	%elementVal_169 = load %elementAddr_168
	%res_170 = neg 1
	%res_171 = eq %elementVal_169 %res_170
	br %res_171 <20> <21>

<20> if_true
	%idVal_172 = load %varAddr_6
	%res_173 = add %idVal_172 1
	store %res_173 %varAddr_6
	%idVal_174 = load %varAddr_9
	%arrayPtr_175 = load %varAddr_11
	%arrayBase_176 = add %arrayPtr_175 4
	%idVal_177 = load %varAddr_6
	%offset_178 = mul %idVal_177 4
	%elementAddr_179 = add %arrayBase_176 %offset_178
	store %idVal_174 %elementAddr_179
	%idVal_180 = load %varAddr_10
	%arrayPtr_181 = load %varAddr_12
	%arrayBase_182 = add %arrayPtr_181 4
	%idVal_183 = load %varAddr_6
	%offset_184 = mul %idVal_183 4
	%elementAddr_185 = add %arrayBase_182 %offset_184
	store %idVal_180 %elementAddr_185
	%idVal_186 = load %varAddr_8
	%res_187 = add %idVal_186 1
	%arrayPtr_188 = load %varAddr_13
	%arrayBase_189 = add %arrayPtr_188 4
	%idVal_190 = load %varAddr_9
	%offset_191 = mul %idVal_190 4
	%elementAddr_192 = add %arrayBase_189 %offset_191
	%arrayPtr_193 = load %elementAddr_192
	%arrayBase_194 = add %arrayPtr_193 4
	%idVal_195 = load %varAddr_10
	%offset_196 = mul %idVal_195 4
	%elementAddr_197 = add %arrayBase_194 %offset_196
	store %res_187 %elementAddr_197
	%idVal_198 = load %varAddr_9
	%idVal_199 = load %varAddr_4
	%res_200 = eq %idVal_198 %idVal_199
	br %res_200 <26> <25>

<26> lhs_true
	%idVal_201 = load %varAddr_10
	%idVal_202 = load %varAddr_5
	%res_203 = eq %idVal_201 %idVal_202
	br %res_203 <24> <25>

<24> if_true
	store 1 %varAddr_7
	br <25>

<25> if_merge
	br <21>

<21> if_merge
	%arrayPtr_204 = load %varAddr_11
	%arrayBase_205 = add %arrayPtr_204 4
	%idVal_206 = load %varAddr_1
	%offset_207 = mul %idVal_206 4
	%elementAddr_208 = add %arrayBase_205 %offset_207
	%elementVal_209 = load %elementAddr_208
	%res_210 = sub %elementVal_209 1
	store %res_210 %varAddr_9
	%arrayPtr_211 = load %varAddr_12
	%arrayBase_212 = add %arrayPtr_211 4
	%idVal_213 = load %varAddr_1
	%offset_214 = mul %idVal_213 4
	%elementAddr_215 = add %arrayBase_212 %offset_214
	%elementVal_216 = load %elementAddr_215
	%res_217 = add %elementVal_216 2
	store %res_217 %varAddr_10
	%idVal_219 = load %varAddr_9
	%idVal_220 = load %varAddr_0
	%res_218 = #check ( %idVal_219 %idVal_220 )
	br %res_218 <30> <28>

<30> lhs_true
	%idVal_222 = load %varAddr_10
	%idVal_223 = load %varAddr_0
	%res_221 = #check ( %idVal_222 %idVal_223 )
	br %res_221 <29> <28>

<29> lhs_true
	%arrayPtr_224 = load %varAddr_13
	%arrayBase_225 = add %arrayPtr_224 4
	%idVal_226 = load %varAddr_9
	%offset_227 = mul %idVal_226 4
	%elementAddr_228 = add %arrayBase_225 %offset_227
	%arrayPtr_229 = load %elementAddr_228
	%arrayBase_230 = add %arrayPtr_229 4
	%idVal_231 = load %varAddr_10
	%offset_232 = mul %idVal_231 4
	%elementAddr_233 = add %arrayBase_230 %offset_232
	%elementVal_234 = load %elementAddr_233
	%res_235 = neg 1
	%res_236 = eq %elementVal_234 %res_235
	br %res_236 <27> <28>

<27> if_true
	%idVal_237 = load %varAddr_6
	%res_238 = add %idVal_237 1
	store %res_238 %varAddr_6
	%idVal_239 = load %varAddr_9
	%arrayPtr_240 = load %varAddr_11
	%arrayBase_241 = add %arrayPtr_240 4
	%idVal_242 = load %varAddr_6
	%offset_243 = mul %idVal_242 4
	%elementAddr_244 = add %arrayBase_241 %offset_243
	store %idVal_239 %elementAddr_244
	%idVal_245 = load %varAddr_10
	%arrayPtr_246 = load %varAddr_12
	%arrayBase_247 = add %arrayPtr_246 4
	%idVal_248 = load %varAddr_6
	%offset_249 = mul %idVal_248 4
	%elementAddr_250 = add %arrayBase_247 %offset_249
	store %idVal_245 %elementAddr_250
	%idVal_251 = load %varAddr_8
	%res_252 = add %idVal_251 1
	%arrayPtr_253 = load %varAddr_13
	%arrayBase_254 = add %arrayPtr_253 4
	%idVal_255 = load %varAddr_9
	%offset_256 = mul %idVal_255 4
	%elementAddr_257 = add %arrayBase_254 %offset_256
	%arrayPtr_258 = load %elementAddr_257
	%arrayBase_259 = add %arrayPtr_258 4
	%idVal_260 = load %varAddr_10
	%offset_261 = mul %idVal_260 4
	%elementAddr_262 = add %arrayBase_259 %offset_261
	store %res_252 %elementAddr_262
	%idVal_263 = load %varAddr_9
	%idVal_264 = load %varAddr_4
	%res_265 = eq %idVal_263 %idVal_264
	br %res_265 <33> <32>

<33> lhs_true
	%idVal_266 = load %varAddr_10
	%idVal_267 = load %varAddr_5
	%res_268 = eq %idVal_266 %idVal_267
	br %res_268 <31> <32>

<31> if_true
	store 1 %varAddr_7
	br <32>

<32> if_merge
	br <28>

<28> if_merge
	%arrayPtr_269 = load %varAddr_11
	%arrayBase_270 = add %arrayPtr_269 4
	%idVal_271 = load %varAddr_1
	%offset_272 = mul %idVal_271 4
	%elementAddr_273 = add %arrayBase_270 %offset_272
	%elementVal_274 = load %elementAddr_273
	%res_275 = add %elementVal_274 1
	store %res_275 %varAddr_9
	%arrayPtr_276 = load %varAddr_12
	%arrayBase_277 = add %arrayPtr_276 4
	%idVal_278 = load %varAddr_1
	%offset_279 = mul %idVal_278 4
	%elementAddr_280 = add %arrayBase_277 %offset_279
	%elementVal_281 = load %elementAddr_280
	%res_282 = sub %elementVal_281 2
	store %res_282 %varAddr_10
	%idVal_284 = load %varAddr_9
	%idVal_285 = load %varAddr_0
	%res_283 = #check ( %idVal_284 %idVal_285 )
	br %res_283 <37> <35>

<37> lhs_true
	%idVal_287 = load %varAddr_10
	%idVal_288 = load %varAddr_0
	%res_286 = #check ( %idVal_287 %idVal_288 )
	br %res_286 <36> <35>

<36> lhs_true
	%arrayPtr_289 = load %varAddr_13
	%arrayBase_290 = add %arrayPtr_289 4
	%idVal_291 = load %varAddr_9
	%offset_292 = mul %idVal_291 4
	%elementAddr_293 = add %arrayBase_290 %offset_292
	%arrayPtr_294 = load %elementAddr_293
	%arrayBase_295 = add %arrayPtr_294 4
	%idVal_296 = load %varAddr_10
	%offset_297 = mul %idVal_296 4
	%elementAddr_298 = add %arrayBase_295 %offset_297
	%elementVal_299 = load %elementAddr_298
	%res_300 = neg 1
	%res_301 = eq %elementVal_299 %res_300
	br %res_301 <34> <35>

<34> if_true
	%idVal_302 = load %varAddr_6
	%res_303 = add %idVal_302 1
	store %res_303 %varAddr_6
	%idVal_304 = load %varAddr_9
	%arrayPtr_305 = load %varAddr_11
	%arrayBase_306 = add %arrayPtr_305 4
	%idVal_307 = load %varAddr_6
	%offset_308 = mul %idVal_307 4
	%elementAddr_309 = add %arrayBase_306 %offset_308
	store %idVal_304 %elementAddr_309
	%idVal_310 = load %varAddr_10
	%arrayPtr_311 = load %varAddr_12
	%arrayBase_312 = add %arrayPtr_311 4
	%idVal_313 = load %varAddr_6
	%offset_314 = mul %idVal_313 4
	%elementAddr_315 = add %arrayBase_312 %offset_314
	store %idVal_310 %elementAddr_315
	%idVal_316 = load %varAddr_8
	%res_317 = add %idVal_316 1
	%arrayPtr_318 = load %varAddr_13
	%arrayBase_319 = add %arrayPtr_318 4
	%idVal_320 = load %varAddr_9
	%offset_321 = mul %idVal_320 4
	%elementAddr_322 = add %arrayBase_319 %offset_321
	%arrayPtr_323 = load %elementAddr_322
	%arrayBase_324 = add %arrayPtr_323 4
	%idVal_325 = load %varAddr_10
	%offset_326 = mul %idVal_325 4
	%elementAddr_327 = add %arrayBase_324 %offset_326
	store %res_317 %elementAddr_327
	%idVal_328 = load %varAddr_9
	%idVal_329 = load %varAddr_4
	%res_330 = eq %idVal_328 %idVal_329
	br %res_330 <40> <39>

<40> lhs_true
	%idVal_331 = load %varAddr_10
	%idVal_332 = load %varAddr_5
	%res_333 = eq %idVal_331 %idVal_332
	br %res_333 <38> <39>

<38> if_true
	store 1 %varAddr_7
	br <39>

<39> if_merge
	br <35>

<35> if_merge
	%arrayPtr_334 = load %varAddr_11
	%arrayBase_335 = add %arrayPtr_334 4
	%idVal_336 = load %varAddr_1
	%offset_337 = mul %idVal_336 4
	%elementAddr_338 = add %arrayBase_335 %offset_337
	%elementVal_339 = load %elementAddr_338
	%res_340 = add %elementVal_339 1
	store %res_340 %varAddr_9
	%arrayPtr_341 = load %varAddr_12
	%arrayBase_342 = add %arrayPtr_341 4
	%idVal_343 = load %varAddr_1
	%offset_344 = mul %idVal_343 4
	%elementAddr_345 = add %arrayBase_342 %offset_344
	%elementVal_346 = load %elementAddr_345
	%res_347 = add %elementVal_346 2
	store %res_347 %varAddr_10
	%idVal_349 = load %varAddr_9
	%idVal_350 = load %varAddr_0
	%res_348 = #check ( %idVal_349 %idVal_350 )
	br %res_348 <44> <42>

<44> lhs_true
	%idVal_352 = load %varAddr_10
	%idVal_353 = load %varAddr_0
	%res_351 = #check ( %idVal_352 %idVal_353 )
	br %res_351 <43> <42>

<43> lhs_true
	%arrayPtr_354 = load %varAddr_13
	%arrayBase_355 = add %arrayPtr_354 4
	%idVal_356 = load %varAddr_9
	%offset_357 = mul %idVal_356 4
	%elementAddr_358 = add %arrayBase_355 %offset_357
	%arrayPtr_359 = load %elementAddr_358
	%arrayBase_360 = add %arrayPtr_359 4
	%idVal_361 = load %varAddr_10
	%offset_362 = mul %idVal_361 4
	%elementAddr_363 = add %arrayBase_360 %offset_362
	%elementVal_364 = load %elementAddr_363
	%res_365 = neg 1
	%res_366 = eq %elementVal_364 %res_365
	br %res_366 <41> <42>

<41> if_true
	%idVal_367 = load %varAddr_6
	%res_368 = add %idVal_367 1
	store %res_368 %varAddr_6
	%idVal_369 = load %varAddr_9
	%arrayPtr_370 = load %varAddr_11
	%arrayBase_371 = add %arrayPtr_370 4
	%idVal_372 = load %varAddr_6
	%offset_373 = mul %idVal_372 4
	%elementAddr_374 = add %arrayBase_371 %offset_373
	store %idVal_369 %elementAddr_374
	%idVal_375 = load %varAddr_10
	%arrayPtr_376 = load %varAddr_12
	%arrayBase_377 = add %arrayPtr_376 4
	%idVal_378 = load %varAddr_6
	%offset_379 = mul %idVal_378 4
	%elementAddr_380 = add %arrayBase_377 %offset_379
	store %idVal_375 %elementAddr_380
	%idVal_381 = load %varAddr_8
	%res_382 = add %idVal_381 1
	%arrayPtr_383 = load %varAddr_13
	%arrayBase_384 = add %arrayPtr_383 4
	%idVal_385 = load %varAddr_9
	%offset_386 = mul %idVal_385 4
	%elementAddr_387 = add %arrayBase_384 %offset_386
	%arrayPtr_388 = load %elementAddr_387
	%arrayBase_389 = add %arrayPtr_388 4
	%idVal_390 = load %varAddr_10
	%offset_391 = mul %idVal_390 4
	%elementAddr_392 = add %arrayBase_389 %offset_391
	store %res_382 %elementAddr_392
	%idVal_393 = load %varAddr_9
	%idVal_394 = load %varAddr_4
	%res_395 = eq %idVal_393 %idVal_394
	br %res_395 <47> <46>

<47> lhs_true
	%idVal_396 = load %varAddr_10
	%idVal_397 = load %varAddr_5
	%res_398 = eq %idVal_396 %idVal_397
	br %res_398 <45> <46>

<45> if_true
	store 1 %varAddr_7
	br <46>

<46> if_merge
	br <42>

<42> if_merge
	%arrayPtr_399 = load %varAddr_11
	%arrayBase_400 = add %arrayPtr_399 4
	%idVal_401 = load %varAddr_1
	%offset_402 = mul %idVal_401 4
	%elementAddr_403 = add %arrayBase_400 %offset_402
	%elementVal_404 = load %elementAddr_403
	%res_405 = sub %elementVal_404 2
	store %res_405 %varAddr_9
	%arrayPtr_406 = load %varAddr_12
	%arrayBase_407 = add %arrayPtr_406 4
	%idVal_408 = load %varAddr_1
	%offset_409 = mul %idVal_408 4
	%elementAddr_410 = add %arrayBase_407 %offset_409
	%elementVal_411 = load %elementAddr_410
	%res_412 = sub %elementVal_411 1
	store %res_412 %varAddr_10
	%idVal_414 = load %varAddr_9
	%idVal_415 = load %varAddr_0
	%res_413 = #check ( %idVal_414 %idVal_415 )
	br %res_413 <51> <49>

<51> lhs_true
	%idVal_417 = load %varAddr_10
	%idVal_418 = load %varAddr_0
	%res_416 = #check ( %idVal_417 %idVal_418 )
	br %res_416 <50> <49>

<50> lhs_true
	%arrayPtr_419 = load %varAddr_13
	%arrayBase_420 = add %arrayPtr_419 4
	%idVal_421 = load %varAddr_9
	%offset_422 = mul %idVal_421 4
	%elementAddr_423 = add %arrayBase_420 %offset_422
	%arrayPtr_424 = load %elementAddr_423
	%arrayBase_425 = add %arrayPtr_424 4
	%idVal_426 = load %varAddr_10
	%offset_427 = mul %idVal_426 4
	%elementAddr_428 = add %arrayBase_425 %offset_427
	%elementVal_429 = load %elementAddr_428
	%res_430 = neg 1
	%res_431 = eq %elementVal_429 %res_430
	br %res_431 <48> <49>

<48> if_true
	%idVal_432 = load %varAddr_6
	%res_433 = add %idVal_432 1
	store %res_433 %varAddr_6
	%idVal_434 = load %varAddr_9
	%arrayPtr_435 = load %varAddr_11
	%arrayBase_436 = add %arrayPtr_435 4
	%idVal_437 = load %varAddr_6
	%offset_438 = mul %idVal_437 4
	%elementAddr_439 = add %arrayBase_436 %offset_438
	store %idVal_434 %elementAddr_439
	%idVal_440 = load %varAddr_10
	%arrayPtr_441 = load %varAddr_12
	%arrayBase_442 = add %arrayPtr_441 4
	%idVal_443 = load %varAddr_6
	%offset_444 = mul %idVal_443 4
	%elementAddr_445 = add %arrayBase_442 %offset_444
	store %idVal_440 %elementAddr_445
	%idVal_446 = load %varAddr_8
	%res_447 = add %idVal_446 1
	%arrayPtr_448 = load %varAddr_13
	%arrayBase_449 = add %arrayPtr_448 4
	%idVal_450 = load %varAddr_9
	%offset_451 = mul %idVal_450 4
	%elementAddr_452 = add %arrayBase_449 %offset_451
	%arrayPtr_453 = load %elementAddr_452
	%arrayBase_454 = add %arrayPtr_453 4
	%idVal_455 = load %varAddr_10
	%offset_456 = mul %idVal_455 4
	%elementAddr_457 = add %arrayBase_454 %offset_456
	store %res_447 %elementAddr_457
	%idVal_458 = load %varAddr_9
	%idVal_459 = load %varAddr_4
	%res_460 = eq %idVal_458 %idVal_459
	br %res_460 <54> <53>

<54> lhs_true
	%idVal_461 = load %varAddr_10
	%idVal_462 = load %varAddr_5
	%res_463 = eq %idVal_461 %idVal_462
	br %res_463 <52> <53>

<52> if_true
	store 1 %varAddr_7
	br <53>

<53> if_merge
	br <49>

<49> if_merge
	%arrayPtr_464 = load %varAddr_11
	%arrayBase_465 = add %arrayPtr_464 4
	%idVal_466 = load %varAddr_1
	%offset_467 = mul %idVal_466 4
	%elementAddr_468 = add %arrayBase_465 %offset_467
	%elementVal_469 = load %elementAddr_468
	%res_470 = sub %elementVal_469 2
	store %res_470 %varAddr_9
	%arrayPtr_471 = load %varAddr_12
	%arrayBase_472 = add %arrayPtr_471 4
	%idVal_473 = load %varAddr_1
	%offset_474 = mul %idVal_473 4
	%elementAddr_475 = add %arrayBase_472 %offset_474
	%elementVal_476 = load %elementAddr_475
	%res_477 = add %elementVal_476 1
	store %res_477 %varAddr_10
	%idVal_479 = load %varAddr_9
	%idVal_480 = load %varAddr_0
	%res_478 = #check ( %idVal_479 %idVal_480 )
	br %res_478 <58> <56>

<58> lhs_true
	%idVal_482 = load %varAddr_10
	%idVal_483 = load %varAddr_0
	%res_481 = #check ( %idVal_482 %idVal_483 )
	br %res_481 <57> <56>

<57> lhs_true
	%arrayPtr_484 = load %varAddr_13
	%arrayBase_485 = add %arrayPtr_484 4
	%idVal_486 = load %varAddr_9
	%offset_487 = mul %idVal_486 4
	%elementAddr_488 = add %arrayBase_485 %offset_487
	%arrayPtr_489 = load %elementAddr_488
	%arrayBase_490 = add %arrayPtr_489 4
	%idVal_491 = load %varAddr_10
	%offset_492 = mul %idVal_491 4
	%elementAddr_493 = add %arrayBase_490 %offset_492
	%elementVal_494 = load %elementAddr_493
	%res_495 = neg 1
	%res_496 = eq %elementVal_494 %res_495
	br %res_496 <55> <56>

<55> if_true
	%idVal_497 = load %varAddr_6
	%res_498 = add %idVal_497 1
	store %res_498 %varAddr_6
	%idVal_499 = load %varAddr_9
	%arrayPtr_500 = load %varAddr_11
	%arrayBase_501 = add %arrayPtr_500 4
	%idVal_502 = load %varAddr_6
	%offset_503 = mul %idVal_502 4
	%elementAddr_504 = add %arrayBase_501 %offset_503
	store %idVal_499 %elementAddr_504
	%idVal_505 = load %varAddr_10
	%arrayPtr_506 = load %varAddr_12
	%arrayBase_507 = add %arrayPtr_506 4
	%idVal_508 = load %varAddr_6
	%offset_509 = mul %idVal_508 4
	%elementAddr_510 = add %arrayBase_507 %offset_509
	store %idVal_505 %elementAddr_510
	%idVal_511 = load %varAddr_8
	%res_512 = add %idVal_511 1
	%arrayPtr_513 = load %varAddr_13
	%arrayBase_514 = add %arrayPtr_513 4
	%idVal_515 = load %varAddr_9
	%offset_516 = mul %idVal_515 4
	%elementAddr_517 = add %arrayBase_514 %offset_516
	%arrayPtr_518 = load %elementAddr_517
	%arrayBase_519 = add %arrayPtr_518 4
	%idVal_520 = load %varAddr_10
	%offset_521 = mul %idVal_520 4
	%elementAddr_522 = add %arrayBase_519 %offset_521
	store %res_512 %elementAddr_522
	%idVal_523 = load %varAddr_9
	%idVal_524 = load %varAddr_4
	%res_525 = eq %idVal_523 %idVal_524
	br %res_525 <61> <60>

<61> lhs_true
	%idVal_526 = load %varAddr_10
	%idVal_527 = load %varAddr_5
	%res_528 = eq %idVal_526 %idVal_527
	br %res_528 <59> <60>

<59> if_true
	store 1 %varAddr_7
	br <60>

<60> if_merge
	br <56>

<56> if_merge
	%arrayPtr_529 = load %varAddr_11
	%arrayBase_530 = add %arrayPtr_529 4
	%idVal_531 = load %varAddr_1
	%offset_532 = mul %idVal_531 4
	%elementAddr_533 = add %arrayBase_530 %offset_532
	%elementVal_534 = load %elementAddr_533
	%res_535 = add %elementVal_534 2
	store %res_535 %varAddr_9
	%arrayPtr_536 = load %varAddr_12
	%arrayBase_537 = add %arrayPtr_536 4
	%idVal_538 = load %varAddr_1
	%offset_539 = mul %idVal_538 4
	%elementAddr_540 = add %arrayBase_537 %offset_539
	%elementVal_541 = load %elementAddr_540
	%res_542 = sub %elementVal_541 1
	store %res_542 %varAddr_10
	%idVal_544 = load %varAddr_9
	%idVal_545 = load %varAddr_0
	%res_543 = #check ( %idVal_544 %idVal_545 )
	br %res_543 <65> <63>

<65> lhs_true
	%idVal_547 = load %varAddr_10
	%idVal_548 = load %varAddr_0
	%res_546 = #check ( %idVal_547 %idVal_548 )
	br %res_546 <64> <63>

<64> lhs_true
	%arrayPtr_549 = load %varAddr_13
	%arrayBase_550 = add %arrayPtr_549 4
	%idVal_551 = load %varAddr_9
	%offset_552 = mul %idVal_551 4
	%elementAddr_553 = add %arrayBase_550 %offset_552
	%arrayPtr_554 = load %elementAddr_553
	%arrayBase_555 = add %arrayPtr_554 4
	%idVal_556 = load %varAddr_10
	%offset_557 = mul %idVal_556 4
	%elementAddr_558 = add %arrayBase_555 %offset_557
	%elementVal_559 = load %elementAddr_558
	%res_560 = neg 1
	%res_561 = eq %elementVal_559 %res_560
	br %res_561 <62> <63>

<62> if_true
	%idVal_562 = load %varAddr_6
	%res_563 = add %idVal_562 1
	store %res_563 %varAddr_6
	%idVal_564 = load %varAddr_9
	%arrayPtr_565 = load %varAddr_11
	%arrayBase_566 = add %arrayPtr_565 4
	%idVal_567 = load %varAddr_6
	%offset_568 = mul %idVal_567 4
	%elementAddr_569 = add %arrayBase_566 %offset_568
	store %idVal_564 %elementAddr_569
	%idVal_570 = load %varAddr_10
	%arrayPtr_571 = load %varAddr_12
	%arrayBase_572 = add %arrayPtr_571 4
	%idVal_573 = load %varAddr_6
	%offset_574 = mul %idVal_573 4
	%elementAddr_575 = add %arrayBase_572 %offset_574
	store %idVal_570 %elementAddr_575
	%idVal_576 = load %varAddr_8
	%res_577 = add %idVal_576 1
	%arrayPtr_578 = load %varAddr_13
	%arrayBase_579 = add %arrayPtr_578 4
	%idVal_580 = load %varAddr_9
	%offset_581 = mul %idVal_580 4
	%elementAddr_582 = add %arrayBase_579 %offset_581
	%arrayPtr_583 = load %elementAddr_582
	%arrayBase_584 = add %arrayPtr_583 4
	%idVal_585 = load %varAddr_10
	%offset_586 = mul %idVal_585 4
	%elementAddr_587 = add %arrayBase_584 %offset_586
	store %res_577 %elementAddr_587
	%idVal_588 = load %varAddr_9
	%idVal_589 = load %varAddr_4
	%res_590 = eq %idVal_588 %idVal_589
	br %res_590 <68> <67>

<68> lhs_true
	%idVal_591 = load %varAddr_10
	%idVal_592 = load %varAddr_5
	%res_593 = eq %idVal_591 %idVal_592
	br %res_593 <66> <67>

<66> if_true
	store 1 %varAddr_7
	br <67>

<67> if_merge
	br <63>

<63> if_merge
	%arrayPtr_594 = load %varAddr_11
	%arrayBase_595 = add %arrayPtr_594 4
	%idVal_596 = load %varAddr_1
	%offset_597 = mul %idVal_596 4
	%elementAddr_598 = add %arrayBase_595 %offset_597
	%elementVal_599 = load %elementAddr_598
	%res_600 = add %elementVal_599 2
	store %res_600 %varAddr_9
	%arrayPtr_601 = load %varAddr_12
	%arrayBase_602 = add %arrayPtr_601 4
	%idVal_603 = load %varAddr_1
	%offset_604 = mul %idVal_603 4
	%elementAddr_605 = add %arrayBase_602 %offset_604
	%elementVal_606 = load %elementAddr_605
	%res_607 = add %elementVal_606 1
	store %res_607 %varAddr_10
	%idVal_609 = load %varAddr_9
	%idVal_610 = load %varAddr_0
	%res_608 = #check ( %idVal_609 %idVal_610 )
	br %res_608 <72> <70>

<72> lhs_true
	%idVal_612 = load %varAddr_10
	%idVal_613 = load %varAddr_0
	%res_611 = #check ( %idVal_612 %idVal_613 )
	br %res_611 <71> <70>

<71> lhs_true
	%arrayPtr_614 = load %varAddr_13
	%arrayBase_615 = add %arrayPtr_614 4
	%idVal_616 = load %varAddr_9
	%offset_617 = mul %idVal_616 4
	%elementAddr_618 = add %arrayBase_615 %offset_617
	%arrayPtr_619 = load %elementAddr_618
	%arrayBase_620 = add %arrayPtr_619 4
	%idVal_621 = load %varAddr_10
	%offset_622 = mul %idVal_621 4
	%elementAddr_623 = add %arrayBase_620 %offset_622
	%elementVal_624 = load %elementAddr_623
	%res_625 = neg 1
	%res_626 = eq %elementVal_624 %res_625
	br %res_626 <69> <70>

<69> if_true
	%idVal_627 = load %varAddr_6
	%res_628 = add %idVal_627 1
	store %res_628 %varAddr_6
	%idVal_629 = load %varAddr_9
	%arrayPtr_630 = load %varAddr_11
	%arrayBase_631 = add %arrayPtr_630 4
	%idVal_632 = load %varAddr_6
	%offset_633 = mul %idVal_632 4
	%elementAddr_634 = add %arrayBase_631 %offset_633
	store %idVal_629 %elementAddr_634
	%idVal_635 = load %varAddr_10
	%arrayPtr_636 = load %varAddr_12
	%arrayBase_637 = add %arrayPtr_636 4
	%idVal_638 = load %varAddr_6
	%offset_639 = mul %idVal_638 4
	%elementAddr_640 = add %arrayBase_637 %offset_639
	store %idVal_635 %elementAddr_640
	%idVal_641 = load %varAddr_8
	%res_642 = add %idVal_641 1
	%arrayPtr_643 = load %varAddr_13
	%arrayBase_644 = add %arrayPtr_643 4
	%idVal_645 = load %varAddr_9
	%offset_646 = mul %idVal_645 4
	%elementAddr_647 = add %arrayBase_644 %offset_646
	%arrayPtr_648 = load %elementAddr_647
	%arrayBase_649 = add %arrayPtr_648 4
	%idVal_650 = load %varAddr_10
	%offset_651 = mul %idVal_650 4
	%elementAddr_652 = add %arrayBase_649 %offset_651
	store %res_642 %elementAddr_652
	%idVal_653 = load %varAddr_9
	%idVal_654 = load %varAddr_4
	%res_655 = eq %idVal_653 %idVal_654
	br %res_655 <75> <74>

<75> lhs_true
	%idVal_656 = load %varAddr_10
	%idVal_657 = load %varAddr_5
	%res_658 = eq %idVal_656 %idVal_657
	br %res_658 <73> <74>

<73> if_true
	store 1 %varAddr_7
	br <74>

<74> if_merge
	br <70>

<70> if_merge
	%idVal_659 = load %varAddr_7
	%res_660 = eq %idVal_659 1
	br %res_660 <76> <77>

<76> if_true
	br <19>

<77> if_merge
	%idVal_661 = load %varAddr_1
	%res_662 = add %idVal_661 1
	store %res_662 %varAddr_1
	br <17>

<19> while_end
	%idVal_663 = load %varAddr_7
	%res_664 = eq %idVal_663 1
	br %res_664 <78> <79>

<78> if_true
	%arrayPtr_666 = load %varAddr_13
	%arrayBase_667 = add %arrayPtr_666 4
	%idVal_668 = load %varAddr_4
	%offset_669 = mul %idVal_668 4
	%elementAddr_670 = add %arrayBase_667 %offset_669
	%arrayPtr_671 = load %elementAddr_670
	%arrayBase_672 = add %arrayPtr_671 4
	%idVal_673 = load %varAddr_5
	%offset_674 = mul %idVal_673 4
	%elementAddr_675 = add %arrayBase_672 %offset_674
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

