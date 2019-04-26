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
	ret 

}

define main ( ) {
<0> entry
	%res_8 = getInt ( )
	mov %varDef_210 %res_8
	mov %varDef_211 0
	mov %varDef_212 0
	br <1>

<1> for_cond
	%varDef_213 = phi <0> %varDef_212 <3> %varDef_380
	%varDef_214 = phi <0> 0 <3> %varDef_234
	%varDef_215 = phi <0> 0 <3> %varDef_235
	%varDef_216 = phi <0> 0 <3> %varDef_236
	%varDef_217 = phi <0> 0 <3> %varDef_237
	%varDef_218 = phi <0> 0 <3> %varDef_238
	%varDef_219 = phi <0> 0 <3> %varDef_239
	%varDef_220 = phi <0> %varDef_211 <3> %varDef_240
	%varDef_221 = phi <0> 0 <3> %varDef_241
	%varDef_222 = phi <0> 0 <3> %varDef_242
	%varDef_223 = phi <0> 0 <3> %varDef_243
	%varDef_224 = phi <0> 0 <3> %varDef_244
	%varDef_225 = phi <0> 0 <3> %varDef_245
	%varDef_226 = phi <0> 0 <3> %varDef_246
	%varDef_227 = phi <0> 0 <3> %varDef_247
	%varDef_228 = phi <0> 0 <3> %varDef_248
	%varDef_229 = phi <0> 0 <3> %varDef_249
	%varDef_230 = phi <0> 0 <3> %varDef_250
	%varDef_231 = phi <0> 0 <3> %varDef_251
	%varDef_232 = phi <0> 0 <3> %varDef_252
	mov %idVal_10 %varDef_213
	mov %idVal_11 %varDef_210
	%res_12 = lt %idVal_10 %idVal_11
	br %res_12 <2> <4>

<2> for_body
	mov %varDef_233 0
	br <5>

<5> for_cond
	%varDef_234 = phi <2> %varDef_233 <7> %varDef_379
	%varDef_235 = phi <2> %varDef_215 <7> %varDef_254
	%varDef_236 = phi <2> %varDef_216 <7> %varDef_255
	%varDef_237 = phi <2> %varDef_217 <7> %varDef_256
	%varDef_238 = phi <2> %varDef_218 <7> %varDef_257
	%varDef_239 = phi <2> %varDef_219 <7> %varDef_258
	%varDef_240 = phi <2> %varDef_220 <7> %varDef_259
	%varDef_241 = phi <2> %varDef_221 <7> %varDef_260
	%varDef_242 = phi <2> %varDef_222 <7> %varDef_261
	%varDef_243 = phi <2> %varDef_223 <7> %varDef_262
	%varDef_244 = phi <2> %varDef_224 <7> %varDef_263
	%varDef_245 = phi <2> %varDef_225 <7> %varDef_264
	%varDef_246 = phi <2> %varDef_226 <7> %varDef_265
	%varDef_247 = phi <2> %varDef_227 <7> %varDef_266
	%varDef_248 = phi <2> %varDef_228 <7> %varDef_267
	%varDef_249 = phi <2> %varDef_229 <7> %varDef_268
	%varDef_250 = phi <2> %varDef_230 <7> %varDef_269
	%varDef_251 = phi <2> %varDef_231 <7> %varDef_270
	%varDef_252 = phi <2> %varDef_232 <7> %varDef_271
	mov %idVal_13 %varDef_234
	mov %idVal_14 %varDef_210
	%res_15 = lt %idVal_13 %idVal_14
	br %res_15 <6> <3>

<6> for_body
	mov %varDef_253 0
	br <9>

<9> for_cond
	%varDef_254 = phi <6> %varDef_253 <11> %varDef_378
	%varDef_255 = phi <6> %varDef_236 <11> %varDef_273
	%varDef_256 = phi <6> %varDef_237 <11> %varDef_274
	%varDef_257 = phi <6> %varDef_238 <11> %varDef_275
	%varDef_258 = phi <6> %varDef_239 <11> %varDef_276
	%varDef_259 = phi <6> %varDef_240 <11> %varDef_277
	%varDef_260 = phi <6> %varDef_241 <11> %varDef_278
	%varDef_261 = phi <6> %varDef_242 <11> %varDef_279
	%varDef_262 = phi <6> %varDef_243 <11> %varDef_280
	%varDef_263 = phi <6> %varDef_244 <11> %varDef_281
	%varDef_264 = phi <6> %varDef_245 <11> %varDef_282
	%varDef_265 = phi <6> %varDef_246 <11> %varDef_283
	%varDef_266 = phi <6> %varDef_247 <11> %varDef_284
	%varDef_267 = phi <6> %varDef_248 <11> %varDef_285
	%varDef_268 = phi <6> %varDef_249 <11> %varDef_286
	%varDef_269 = phi <6> %varDef_250 <11> %varDef_287
	%varDef_270 = phi <6> %varDef_251 <11> %varDef_288
	%varDef_271 = phi <6> %varDef_252 <11> %varDef_289
	mov %idVal_16 %varDef_254
	mov %idVal_17 %varDef_210
	%res_18 = lt %idVal_16 %idVal_17
	br %res_18 <10> <7>

<10> for_body
	mov %varDef_272 0
	br <13>

<13> for_cond
	%varDef_273 = phi <10> %varDef_272 <15> %varDef_377
	%varDef_274 = phi <10> %varDef_256 <15> %varDef_291
	%varDef_275 = phi <10> %varDef_257 <15> %varDef_292
	%varDef_276 = phi <10> %varDef_258 <15> %varDef_293
	%varDef_277 = phi <10> %varDef_259 <15> %varDef_294
	%varDef_278 = phi <10> %varDef_260 <15> %varDef_295
	%varDef_279 = phi <10> %varDef_261 <15> %varDef_296
	%varDef_280 = phi <10> %varDef_262 <15> %varDef_297
	%varDef_281 = phi <10> %varDef_263 <15> %varDef_298
	%varDef_282 = phi <10> %varDef_264 <15> %varDef_299
	%varDef_283 = phi <10> %varDef_265 <15> %varDef_300
	%varDef_284 = phi <10> %varDef_266 <15> %varDef_301
	%varDef_285 = phi <10> %varDef_267 <15> %varDef_302
	%varDef_286 = phi <10> %varDef_268 <15> %varDef_303
	%varDef_287 = phi <10> %varDef_269 <15> %varDef_304
	%varDef_288 = phi <10> %varDef_270 <15> %varDef_305
	%varDef_289 = phi <10> %varDef_271 <15> %varDef_306
	mov %idVal_19 %varDef_273
	mov %idVal_20 %varDef_210
	%res_21 = lt %idVal_19 %idVal_20
	br %res_21 <14> <11>

<14> for_body
	mov %varDef_290 0
	br <17>

<17> for_cond
	%varDef_291 = phi <14> %varDef_290 <19> %varDef_376
	%varDef_292 = phi <14> %varDef_275 <19> %varDef_308
	%varDef_293 = phi <14> %varDef_276 <19> %varDef_309
	%varDef_294 = phi <14> %varDef_277 <19> %varDef_310
	%varDef_295 = phi <14> %varDef_278 <19> %varDef_311
	%varDef_296 = phi <14> %varDef_279 <19> %varDef_312
	%varDef_297 = phi <14> %varDef_280 <19> %varDef_313
	%varDef_298 = phi <14> %varDef_281 <19> %varDef_314
	%varDef_299 = phi <14> %varDef_282 <19> %varDef_315
	%varDef_300 = phi <14> %varDef_283 <19> %varDef_316
	%varDef_301 = phi <14> %varDef_284 <19> %varDef_317
	%varDef_302 = phi <14> %varDef_285 <19> %varDef_318
	%varDef_303 = phi <14> %varDef_286 <19> %varDef_319
	%varDef_304 = phi <14> %varDef_287 <19> %varDef_320
	%varDef_305 = phi <14> %varDef_288 <19> %varDef_321
	%varDef_306 = phi <14> %varDef_289 <19> %varDef_322
	mov %idVal_22 %varDef_291
	mov %idVal_23 %varDef_210
	%res_24 = lt %idVal_22 %idVal_23
	br %res_24 <18> <15>

<18> for_body
	mov %varDef_307 0
	br <21>

<21> for_cond
	%varDef_308 = phi <18> %varDef_307 <23> %varDef_375
	%varDef_309 = phi <18> %varDef_293 <23> %varDef_324
	%varDef_310 = phi <18> %varDef_294 <23> %varDef_325
	%varDef_311 = phi <18> %varDef_295 <23> %varDef_326
	%varDef_312 = phi <18> %varDef_296 <23> %varDef_327
	%varDef_313 = phi <18> %varDef_297 <23> %varDef_328
	%varDef_314 = phi <18> %varDef_298 <23> %varDef_329
	%varDef_315 = phi <18> %varDef_299 <23> %varDef_330
	%varDef_316 = phi <18> %varDef_300 <23> %varDef_331
	%varDef_317 = phi <18> %varDef_301 <23> %varDef_332
	%varDef_318 = phi <18> %varDef_302 <23> %varDef_333
	%varDef_319 = phi <18> %varDef_303 <23> %varDef_334
	%varDef_320 = phi <18> %varDef_304 <23> %varDef_335
	%varDef_321 = phi <18> %varDef_305 <23> %varDef_336
	%varDef_322 = phi <18> %varDef_306 <23> %varDef_337
	mov %idVal_25 %varDef_308
	mov %idVal_26 %varDef_210
	%res_27 = lt %idVal_25 %idVal_26
	br %res_27 <22> <19>

<22> for_body
	mov %varDef_323 0
	br <25>

<25> for_cond
	%varDef_324 = phi <22> %varDef_323 <27> %varDef_374
	%varDef_325 = phi <22> %varDef_310 <27> %varDef_373
	%varDef_326 = phi <22> %varDef_311 <27> %varDef_341
	%varDef_327 = phi <22> %varDef_312 <27> %varDef_340
	%varDef_328 = phi <22> %varDef_313 <27> %varDef_345
	%varDef_329 = phi <22> %varDef_314 <27> %varDef_344
	%varDef_330 = phi <22> %varDef_315 <27> %varDef_349
	%varDef_331 = phi <22> %varDef_316 <27> %varDef_348
	%varDef_332 = phi <22> %varDef_317 <27> %varDef_353
	%varDef_333 = phi <22> %varDef_318 <27> %varDef_352
	%varDef_334 = phi <22> %varDef_319 <27> %varDef_357
	%varDef_335 = phi <22> %varDef_320 <27> %varDef_356
	%varDef_336 = phi <22> %varDef_321 <27> %varDef_361
	%varDef_337 = phi <22> %varDef_322 <27> %varDef_360
	mov %idVal_28 %varDef_324
	mov %idVal_29 %varDef_210
	%res_30 = lt %idVal_28 %idVal_29
	br %res_30 <26> <23>

<26> for_body
	mov %idVal_33 %varDef_213
	mov %idVal_34 %varDef_234
	%res_35 = eq %idVal_33 %idVal_34
	br %res_35 <35> <34>

<35> lhs_true
	mov %idVal_36 %varDef_254
	%res_37 = gt %idVal_36 0
	br %res_37 <29> <34>

<34> lhs_false
	mov %idVal_38 %varDef_273
	mov %idVal_39 %varDef_291
	%res_40 = eq %idVal_38 %idVal_39
	br %res_40 <37> <33>

<37> lhs_true
	mov %idVal_41 %varDef_308
	%res_42 = gt %idVal_41 0
	br %res_42 <36> <33>

<36> lhs_true
	mov %idVal_43 %varDef_324
	%res_44 = gt %idVal_43 0
	br %res_44 <29> <33>

<33> lhs_false
	mov %idVal_45 %varDef_213
	mov %idVal_46 %varDef_324
	%res_47 = eq %idVal_45 %idVal_46
	br %res_47 <29> <32>

<32> lhs_false
	mov %idVal_48 %varDef_273
	%res_49 = gt %idVal_48 0
	br %res_49 <38> <30>

<38> lhs_true
	mov %idVal_50 %varDef_308
	%res_51 = gt %idVal_50 0
	br %res_51 <29> <30>

<29> bool_true
	mov %varDef_339 1
	br <31>

<30> bool_false
	mov %varDef_338 0
	br <31>

<31> bool_merge
	%varDef_340 = phi <30> %varDef_338 <29> %varDef_339
	mov %boolVal_52 %varDef_340
	mov %varDef_341 %boolVal_52
	mov %idVal_55 %varDef_213
	mov %idVal_56 %varDef_234
	%res_57 = eq %idVal_55 %idVal_56
	br %res_57 <45> <44>

<45> lhs_true
	mov %idVal_58 %varDef_254
	%res_59 = gt %idVal_58 0
	br %res_59 <39> <44>

<44> lhs_false
	mov %idVal_60 %varDef_273
	mov %idVal_61 %varDef_291
	%res_62 = eq %idVal_60 %idVal_61
	br %res_62 <47> <43>

<47> lhs_true
	mov %idVal_63 %varDef_308
	%res_64 = gt %idVal_63 0
	br %res_64 <46> <43>

<46> lhs_true
	mov %idVal_65 %varDef_324
	%res_66 = gt %idVal_65 0
	br %res_66 <39> <43>

<43> lhs_false
	mov %idVal_67 %varDef_213
	mov %idVal_68 %varDef_324
	%res_69 = eq %idVal_67 %idVal_68
	br %res_69 <39> <42>

<42> lhs_false
	mov %idVal_70 %varDef_273
	%res_71 = gt %idVal_70 0
	br %res_71 <48> <40>

<48> lhs_true
	mov %idVal_72 %varDef_308
	%res_73 = gt %idVal_72 0
	br %res_73 <39> <40>

<39> bool_true
	mov %varDef_343 1
	br <41>

<40> bool_false
	mov %varDef_342 0
	br <41>

<41> bool_merge
	%varDef_344 = phi <40> %varDef_342 <39> %varDef_343
	mov %boolVal_74 %varDef_344
	mov %varDef_345 %boolVal_74
	mov %idVal_77 %varDef_213
	mov %idVal_78 %varDef_234
	%res_79 = eq %idVal_77 %idVal_78
	br %res_79 <55> <54>

<55> lhs_true
	mov %idVal_80 %varDef_254
	%res_81 = gt %idVal_80 0
	br %res_81 <49> <54>

<54> lhs_false
	mov %idVal_82 %varDef_273
	mov %idVal_83 %varDef_291
	%res_84 = eq %idVal_82 %idVal_83
	br %res_84 <57> <53>

<57> lhs_true
	mov %idVal_85 %varDef_308
	%res_86 = gt %idVal_85 0
	br %res_86 <56> <53>

<56> lhs_true
	mov %idVal_87 %varDef_324
	%res_88 = gt %idVal_87 0
	br %res_88 <49> <53>

<53> lhs_false
	mov %idVal_89 %varDef_213
	mov %idVal_90 %varDef_324
	%res_91 = eq %idVal_89 %idVal_90
	br %res_91 <49> <52>

<52> lhs_false
	mov %idVal_92 %varDef_273
	%res_93 = gt %idVal_92 0
	br %res_93 <58> <50>

<58> lhs_true
	mov %idVal_94 %varDef_308
	%res_95 = gt %idVal_94 0
	br %res_95 <49> <50>

<49> bool_true
	mov %varDef_347 1
	br <51>

<50> bool_false
	mov %varDef_346 0
	br <51>

<51> bool_merge
	%varDef_348 = phi <50> %varDef_346 <49> %varDef_347
	mov %boolVal_96 %varDef_348
	mov %varDef_349 %boolVal_96
	mov %idVal_99 %varDef_213
	mov %idVal_100 %varDef_234
	%res_101 = eq %idVal_99 %idVal_100
	br %res_101 <65> <64>

<65> lhs_true
	mov %idVal_102 %varDef_254
	%res_103 = gt %idVal_102 0
	br %res_103 <59> <64>

<64> lhs_false
	mov %idVal_104 %varDef_273
	mov %idVal_105 %varDef_291
	%res_106 = eq %idVal_104 %idVal_105
	br %res_106 <67> <63>

<67> lhs_true
	mov %idVal_107 %varDef_308
	%res_108 = gt %idVal_107 0
	br %res_108 <66> <63>

<66> lhs_true
	mov %idVal_109 %varDef_324
	%res_110 = gt %idVal_109 0
	br %res_110 <59> <63>

<63> lhs_false
	mov %idVal_111 %varDef_213
	mov %idVal_112 %varDef_324
	%res_113 = eq %idVal_111 %idVal_112
	br %res_113 <59> <62>

<62> lhs_false
	mov %idVal_114 %varDef_273
	%res_115 = gt %idVal_114 0
	br %res_115 <68> <60>

<68> lhs_true
	mov %idVal_116 %varDef_308
	%res_117 = gt %idVal_116 0
	br %res_117 <59> <60>

<59> bool_true
	mov %varDef_351 1
	br <61>

<60> bool_false
	mov %varDef_350 0
	br <61>

<61> bool_merge
	%varDef_352 = phi <60> %varDef_350 <59> %varDef_351
	mov %boolVal_118 %varDef_352
	mov %varDef_353 %boolVal_118
	mov %idVal_121 %varDef_213
	mov %idVal_122 %varDef_234
	%res_123 = eq %idVal_121 %idVal_122
	br %res_123 <75> <74>

<75> lhs_true
	mov %idVal_124 %varDef_254
	%res_125 = gt %idVal_124 0
	br %res_125 <69> <74>

<74> lhs_false
	mov %idVal_126 %varDef_273
	mov %idVal_127 %varDef_291
	%res_128 = eq %idVal_126 %idVal_127
	br %res_128 <77> <73>

<77> lhs_true
	mov %idVal_129 %varDef_308
	%res_130 = gt %idVal_129 0
	br %res_130 <76> <73>

<76> lhs_true
	mov %idVal_131 %varDef_324
	%res_132 = gt %idVal_131 0
	br %res_132 <69> <73>

<73> lhs_false
	mov %idVal_133 %varDef_213
	mov %idVal_134 %varDef_324
	%res_135 = eq %idVal_133 %idVal_134
	br %res_135 <69> <72>

<72> lhs_false
	mov %idVal_136 %varDef_273
	%res_137 = gt %idVal_136 0
	br %res_137 <78> <70>

<78> lhs_true
	mov %idVal_138 %varDef_308
	%res_139 = gt %idVal_138 0
	br %res_139 <69> <70>

<69> bool_true
	mov %varDef_355 1
	br <71>

<70> bool_false
	mov %varDef_354 0
	br <71>

<71> bool_merge
	%varDef_356 = phi <70> %varDef_354 <69> %varDef_355
	mov %boolVal_140 %varDef_356
	mov %varDef_357 %boolVal_140
	mov %idVal_143 %varDef_213
	mov %idVal_144 %varDef_234
	%res_145 = eq %idVal_143 %idVal_144
	br %res_145 <85> <84>

<85> lhs_true
	mov %idVal_146 %varDef_254
	%res_147 = gt %idVal_146 0
	br %res_147 <79> <84>

<84> lhs_false
	mov %idVal_148 %varDef_273
	mov %idVal_149 %varDef_291
	%res_150 = eq %idVal_148 %idVal_149
	br %res_150 <87> <83>

<87> lhs_true
	mov %idVal_151 %varDef_308
	%res_152 = gt %idVal_151 0
	br %res_152 <86> <83>

<86> lhs_true
	mov %idVal_153 %varDef_324
	%res_154 = gt %idVal_153 0
	br %res_154 <79> <83>

<83> lhs_false
	mov %idVal_155 %varDef_213
	mov %idVal_156 %varDef_324
	%res_157 = eq %idVal_155 %idVal_156
	br %res_157 <79> <82>

<82> lhs_false
	mov %idVal_158 %varDef_273
	%res_159 = gt %idVal_158 0
	br %res_159 <88> <80>

<88> lhs_true
	mov %idVal_160 %varDef_308
	%res_161 = gt %idVal_160 0
	br %res_161 <79> <80>

<79> bool_true
	mov %varDef_359 1
	br <81>

<80> bool_false
	mov %varDef_358 0
	br <81>

<81> bool_merge
	%varDef_360 = phi <80> %varDef_358 <79> %varDef_359
	mov %boolVal_162 %varDef_360
	mov %varDef_361 %boolVal_162
	mov %idVal_163 %varDef_341
	br %idVal_163 <89> <90>

<89> if_true
	mov %idVal_164 %varDef_325
	mov %oldVal_165 %varDef_325
	%newVal_166 = inc %oldVal_165
	mov %varDef_362 %newVal_166
	br <90>

<90> if_merge
	%varDef_363 = phi <81> %varDef_325 <89> %varDef_362
	mov %idVal_167 %varDef_345
	br %idVal_167 <91> <92>

<91> if_true
	mov %idVal_168 %varDef_363
	mov %oldVal_169 %varDef_363
	%newVal_170 = inc %oldVal_169
	mov %varDef_364 %newVal_170
	br <92>

<92> if_merge
	%varDef_365 = phi <90> %varDef_363 <91> %varDef_364
	mov %idVal_171 %varDef_349
	br %idVal_171 <93> <94>

<93> if_true
	mov %idVal_172 %varDef_365
	mov %oldVal_173 %varDef_365
	%newVal_174 = inc %oldVal_173
	mov %varDef_366 %newVal_174
	br <94>

<94> if_merge
	%varDef_367 = phi <92> %varDef_365 <93> %varDef_366
	mov %idVal_175 %varDef_353
	br %idVal_175 <95> <96>

<95> if_true
	mov %idVal_176 %varDef_367
	mov %oldVal_177 %varDef_367
	%newVal_178 = inc %oldVal_177
	mov %varDef_368 %newVal_178
	br <96>

<96> if_merge
	%varDef_369 = phi <94> %varDef_367 <95> %varDef_368
	mov %idVal_179 %varDef_357
	br %idVal_179 <97> <98>

<97> if_true
	mov %idVal_180 %varDef_369
	mov %oldVal_181 %varDef_369
	%newVal_182 = inc %oldVal_181
	mov %varDef_370 %newVal_182
	br <98>

<98> if_merge
	%varDef_371 = phi <96> %varDef_369 <97> %varDef_370
	mov %idVal_183 %varDef_361
	br %idVal_183 <99> <27>

<99> if_true
	mov %idVal_184 %varDef_371
	mov %oldVal_185 %varDef_371
	%newVal_186 = inc %oldVal_185
	mov %varDef_372 %newVal_186
	br <27>

<27> for_step
	%varDef_373 = phi <98> %varDef_371 <99> %varDef_372
	mov %idVal_187 %varDef_324
	mov %oldVal_188 %varDef_324
	%newVal_189 = inc %oldVal_188
	mov %varDef_374 %newVal_189
	br <25>

<23> for_step
	mov %idVal_190 %varDef_308
	mov %oldVal_191 %varDef_308
	%newVal_192 = inc %oldVal_191
	mov %varDef_375 %newVal_192
	br <21>

<19> for_step
	mov %idVal_193 %varDef_291
	mov %oldVal_194 %varDef_291
	%newVal_195 = inc %oldVal_194
	mov %varDef_376 %newVal_195
	br <17>

<15> for_step
	mov %idVal_196 %varDef_273
	mov %oldVal_197 %varDef_273
	%newVal_198 = inc %oldVal_197
	mov %varDef_377 %newVal_198
	br <13>

<11> for_step
	mov %idVal_199 %varDef_254
	mov %oldVal_200 %varDef_254
	%newVal_201 = inc %oldVal_200
	mov %varDef_378 %newVal_201
	br <9>

<7> for_step
	mov %idVal_202 %varDef_234
	mov %oldVal_203 %varDef_234
	%newVal_204 = inc %oldVal_203
	mov %varDef_379 %newVal_204
	br <5>

<3> for_step
	mov %idVal_205 %varDef_213
	mov %oldVal_206 %varDef_213
	%newVal_207 = inc %oldVal_206
	mov %varDef_380 %newVal_207
	br <1>

<4> for_end
	mov %idVal_209 %varDef_220
	%res_208 = toString ( %idVal_209 )
	print ( %res_208 )
	ret 0

}

