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
	%varAddr_102 = alloca 8
	%varAddr_101 = alloca 8
	%varAddr_100 = alloca 8
	%varAddr_99 = alloca 8
	%varAddr_98 = alloca 8
	%varAddr_97 = alloca 8
	%varAddr_96 = alloca 8
	%varAddr_95 = alloca 8
	%varAddr_94 = alloca 8
	%varAddr_93 = alloca 8
	%varAddr_92 = alloca 8
	%varAddr_91 = alloca 8
	%varAddr_90 = alloca 8
	%varAddr_89 = alloca 8
	%varAddr_88 = alloca 8
	%varAddr_87 = alloca 8
	%storageCell_72 = alloca 8
	%storageCell_64 = alloca 8
	%storageCell_56 = alloca 8
	%storageCell_48 = alloca 8
	%storageCell_40 = alloca 8
	%storageCell_32 = alloca 8
	%storageCell_24 = alloca 8
	%storageCell_16 = alloca 8
	%storageCell_8 = alloca 8
	%varAddr_2 = alloca 8
	%thisAddr_1 = alloca 8
	store %thisVal_0 %thisAddr_1
	%memberLength_4 = mul 2 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store 2 %arrayPtr_3
	%arrayEndPos_6 = add %arrayPtr_3 %arrayLength_5
	%startPos_7 = add %arrayPtr_3 8
	store %startPos_7 %storageCell_8
	br <1>

<1> new_for_cond
	%pos_9 = load %storageCell_8
	%condition_10 = lt %pos_9 %arrayEndPos_6
	br %condition_10 <2> <4>

<2> new_for_body
	%memberLength_12 = mul 2 8
	%arrayLength_13 = add %memberLength_12 8
	%arrayPtr_11 = malloc %arrayLength_13
	store 2 %arrayPtr_11
	%arrayEndPos_14 = add %arrayPtr_11 %arrayLength_13
	%startPos_15 = add %arrayPtr_11 8
	store %startPos_15 %storageCell_16
	br <5>

<5> new_for_cond
	%pos_17 = load %storageCell_16
	%condition_18 = lt %pos_17 %arrayEndPos_14
	br %condition_18 <6> <8>

<6> new_for_body
	%memberLength_20 = mul 2 8
	%arrayLength_21 = add %memberLength_20 8
	%arrayPtr_19 = malloc %arrayLength_21
	store 2 %arrayPtr_19
	%arrayEndPos_22 = add %arrayPtr_19 %arrayLength_21
	%startPos_23 = add %arrayPtr_19 8
	store %startPos_23 %storageCell_24
	br <9>

<9> new_for_cond
	%pos_25 = load %storageCell_24
	%condition_26 = lt %pos_25 %arrayEndPos_22
	br %condition_26 <10> <12>

<10> new_for_body
	%memberLength_28 = mul 2 8
	%arrayLength_29 = add %memberLength_28 8
	%arrayPtr_27 = malloc %arrayLength_29
	store 2 %arrayPtr_27
	%arrayEndPos_30 = add %arrayPtr_27 %arrayLength_29
	%startPos_31 = add %arrayPtr_27 8
	store %startPos_31 %storageCell_32
	br <13>

<13> new_for_cond
	%pos_33 = load %storageCell_32
	%condition_34 = lt %pos_33 %arrayEndPos_30
	br %condition_34 <14> <16>

<14> new_for_body
	%memberLength_36 = mul 2 8
	%arrayLength_37 = add %memberLength_36 8
	%arrayPtr_35 = malloc %arrayLength_37
	store 2 %arrayPtr_35
	%arrayEndPos_38 = add %arrayPtr_35 %arrayLength_37
	%startPos_39 = add %arrayPtr_35 8
	store %startPos_39 %storageCell_40
	br <17>

<17> new_for_cond
	%pos_41 = load %storageCell_40
	%condition_42 = lt %pos_41 %arrayEndPos_38
	br %condition_42 <18> <20>

<18> new_for_body
	%memberLength_44 = mul 2 8
	%arrayLength_45 = add %memberLength_44 8
	%arrayPtr_43 = malloc %arrayLength_45
	store 2 %arrayPtr_43
	%arrayEndPos_46 = add %arrayPtr_43 %arrayLength_45
	%startPos_47 = add %arrayPtr_43 8
	store %startPos_47 %storageCell_48
	br <21>

<21> new_for_cond
	%pos_49 = load %storageCell_48
	%condition_50 = lt %pos_49 %arrayEndPos_46
	br %condition_50 <22> <24>

<22> new_for_body
	%memberLength_52 = mul 2 8
	%arrayLength_53 = add %memberLength_52 8
	%arrayPtr_51 = malloc %arrayLength_53
	store 2 %arrayPtr_51
	%arrayEndPos_54 = add %arrayPtr_51 %arrayLength_53
	%startPos_55 = add %arrayPtr_51 8
	store %startPos_55 %storageCell_56
	br <25>

<25> new_for_cond
	%pos_57 = load %storageCell_56
	%condition_58 = lt %pos_57 %arrayEndPos_54
	br %condition_58 <26> <28>

<26> new_for_body
	%memberLength_60 = mul 2 8
	%arrayLength_61 = add %memberLength_60 8
	%arrayPtr_59 = malloc %arrayLength_61
	store 2 %arrayPtr_59
	%arrayEndPos_62 = add %arrayPtr_59 %arrayLength_61
	%startPos_63 = add %arrayPtr_59 8
	store %startPos_63 %storageCell_64
	br <29>

<29> new_for_cond
	%pos_65 = load %storageCell_64
	%condition_66 = lt %pos_65 %arrayEndPos_62
	br %condition_66 <30> <32>

<30> new_for_body
	%memberLength_68 = mul 2 8
	%arrayLength_69 = add %memberLength_68 8
	%arrayPtr_67 = malloc %arrayLength_69
	store 2 %arrayPtr_67
	%arrayEndPos_70 = add %arrayPtr_67 %arrayLength_69
	%startPos_71 = add %arrayPtr_67 8
	store %startPos_71 %storageCell_72
	br <33>

<33> new_for_cond
	%pos_73 = load %storageCell_72
	%condition_74 = lt %pos_73 %arrayEndPos_70
	br %condition_74 <34> <36>

<34> new_for_body
	%memberLength_76 = mul 2 8
	%arrayLength_77 = add %memberLength_76 8
	%arrayPtr_75 = malloc %arrayLength_77
	store 2 %arrayPtr_75
	store %arrayPtr_75 %pos_73
	br <35>

<35> new_for_step
	%pos_78 = add %pos_73 8
	store %pos_78 %storageCell_72
	br <33>

<36> new_for_end
	store %arrayPtr_67 %pos_65
	br <31>

<31> new_for_step
	%pos_79 = add %pos_65 8
	store %pos_79 %storageCell_64
	br <29>

<32> new_for_end
	store %arrayPtr_59 %pos_57
	br <27>

<27> new_for_step
	%pos_80 = add %pos_57 8
	store %pos_80 %storageCell_56
	br <25>

<28> new_for_end
	store %arrayPtr_51 %pos_49
	br <23>

<23> new_for_step
	%pos_81 = add %pos_49 8
	store %pos_81 %storageCell_48
	br <21>

<24> new_for_end
	store %arrayPtr_43 %pos_41
	br <19>

<19> new_for_step
	%pos_82 = add %pos_41 8
	store %pos_82 %storageCell_40
	br <17>

<20> new_for_end
	store %arrayPtr_35 %pos_33
	br <15>

<15> new_for_step
	%pos_83 = add %pos_33 8
	store %pos_83 %storageCell_32
	br <13>

<16> new_for_end
	store %arrayPtr_27 %pos_25
	br <11>

<11> new_for_step
	%pos_84 = add %pos_25 8
	store %pos_84 %storageCell_24
	br <9>

<12> new_for_end
	store %arrayPtr_19 %pos_17
	br <7>

<7> new_for_step
	%pos_85 = add %pos_17 8
	store %pos_85 %storageCell_16
	br <5>

<8> new_for_end
	store %arrayPtr_11 %pos_9
	br <3>

<3> new_for_step
	%pos_86 = add %pos_9 8
	store %pos_86 %storageCell_8
	br <1>

<4> new_for_end
	store %arrayPtr_3 %varAddr_2
	store 0 %varAddr_102
	store 1 %varAddr_101
	br <37>

<37> for_cond
	%idVal_103 = load %varAddr_101
	%res_104 = le %idVal_103 1000
	br %res_104 <38> <40>

<38> for_body
	%idVal_105 = load %varAddr_101
	%res_106 = add 123 %idVal_105
	%arrayPtr_107 = load %varAddr_2
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
	%idVal_147 = load %varAddr_102
	%arrayPtr_148 = load %varAddr_2
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
	store %res_189 %varAddr_102
	br <39>

<39> for_step
	%idVal_190 = load %varAddr_101
	%oldVal_191 = load %varAddr_101
	%newVal_192 = inc %oldVal_191
	store %newVal_192 %varAddr_101
	br <37>

<40> for_end
	%idVal_194 = load %varAddr_102
	%res_193 = toString ( %idVal_194 )
	println ( %res_193 )
	store 1 %varAddr_101
	br <41>

<41> for_cond
	%idVal_195 = load %varAddr_101
	%res_196 = le %idVal_195 1000000
	br %res_196 <42> <44>

<42> for_body
	%idVal_197 = load %varAddr_102
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
	store %res_380 %varAddr_102
	br <43>

<43> for_step
	%idVal_381 = load %varAddr_101
	%oldVal_382 = load %varAddr_101
	%newVal_383 = inc %oldVal_382
	store %newVal_383 %varAddr_101
	br <41>

<44> for_end
	%idVal_385 = load %varAddr_102
	%res_384 = toString ( %idVal_385 )
	println ( %res_384 )
	store 1 %varAddr_101
	br <45>

<45> for_cond
	%idVal_386 = load %varAddr_101
	%res_387 = le %idVal_386 200000000
	br %res_387 <46> <48>

<46> for_body
	br <47>

<47> for_step
	%idVal_388 = load %varAddr_101
	%oldVal_389 = load %varAddr_101
	%newVal_390 = inc %oldVal_389
	store %newVal_390 %varAddr_101
	br <45>

<48> for_end
	ret 

}

define _A_A ( %thisVal_0 ) {
<0> entry
	%storageCell_71 = alloca 8
	%storageCell_63 = alloca 8
	%storageCell_55 = alloca 8
	%storageCell_47 = alloca 8
	%storageCell_39 = alloca 8
	%storageCell_31 = alloca 8
	%storageCell_23 = alloca 8
	%storageCell_15 = alloca 8
	%storageCell_7 = alloca 8
	%thisAddr_1 = alloca 8
	store %thisVal_0 %thisAddr_1
	%memberLength_3 = mul 2 8
	%arrayLength_4 = add %memberLength_3 8
	%arrayPtr_2 = malloc %arrayLength_4
	store 2 %arrayPtr_2
	%arrayEndPos_5 = add %arrayPtr_2 %arrayLength_4
	%startPos_6 = add %arrayPtr_2 8
	store %startPos_6 %storageCell_7
	br <1>

<1> new_for_cond
	%pos_8 = load %storageCell_7
	%condition_9 = lt %pos_8 %arrayEndPos_5
	br %condition_9 <2> <4>

<2> new_for_body
	%memberLength_11 = mul 2 8
	%arrayLength_12 = add %memberLength_11 8
	%arrayPtr_10 = malloc %arrayLength_12
	store 2 %arrayPtr_10
	%arrayEndPos_13 = add %arrayPtr_10 %arrayLength_12
	%startPos_14 = add %arrayPtr_10 8
	store %startPos_14 %storageCell_15
	br <5>

<5> new_for_cond
	%pos_16 = load %storageCell_15
	%condition_17 = lt %pos_16 %arrayEndPos_13
	br %condition_17 <6> <8>

<6> new_for_body
	%memberLength_19 = mul 3 8
	%arrayLength_20 = add %memberLength_19 8
	%arrayPtr_18 = malloc %arrayLength_20
	store 3 %arrayPtr_18
	%arrayEndPos_21 = add %arrayPtr_18 %arrayLength_20
	%startPos_22 = add %arrayPtr_18 8
	store %startPos_22 %storageCell_23
	br <9>

<9> new_for_cond
	%pos_24 = load %storageCell_23
	%condition_25 = lt %pos_24 %arrayEndPos_21
	br %condition_25 <10> <12>

<10> new_for_body
	%memberLength_27 = mul 2 8
	%arrayLength_28 = add %memberLength_27 8
	%arrayPtr_26 = malloc %arrayLength_28
	store 2 %arrayPtr_26
	%arrayEndPos_29 = add %arrayPtr_26 %arrayLength_28
	%startPos_30 = add %arrayPtr_26 8
	store %startPos_30 %storageCell_31
	br <13>

<13> new_for_cond
	%pos_32 = load %storageCell_31
	%condition_33 = lt %pos_32 %arrayEndPos_29
	br %condition_33 <14> <16>

<14> new_for_body
	%memberLength_35 = mul 3 8
	%arrayLength_36 = add %memberLength_35 8
	%arrayPtr_34 = malloc %arrayLength_36
	store 3 %arrayPtr_34
	%arrayEndPos_37 = add %arrayPtr_34 %arrayLength_36
	%startPos_38 = add %arrayPtr_34 8
	store %startPos_38 %storageCell_39
	br <17>

<17> new_for_cond
	%pos_40 = load %storageCell_39
	%condition_41 = lt %pos_40 %arrayEndPos_37
	br %condition_41 <18> <20>

<18> new_for_body
	%memberLength_43 = mul 2 8
	%arrayLength_44 = add %memberLength_43 8
	%arrayPtr_42 = malloc %arrayLength_44
	store 2 %arrayPtr_42
	%arrayEndPos_45 = add %arrayPtr_42 %arrayLength_44
	%startPos_46 = add %arrayPtr_42 8
	store %startPos_46 %storageCell_47
	br <21>

<21> new_for_cond
	%pos_48 = load %storageCell_47
	%condition_49 = lt %pos_48 %arrayEndPos_45
	br %condition_49 <22> <24>

<22> new_for_body
	%memberLength_51 = mul 2 8
	%arrayLength_52 = add %memberLength_51 8
	%arrayPtr_50 = malloc %arrayLength_52
	store 2 %arrayPtr_50
	%arrayEndPos_53 = add %arrayPtr_50 %arrayLength_52
	%startPos_54 = add %arrayPtr_50 8
	store %startPos_54 %storageCell_55
	br <25>

<25> new_for_cond
	%pos_56 = load %storageCell_55
	%condition_57 = lt %pos_56 %arrayEndPos_53
	br %condition_57 <26> <28>

<26> new_for_body
	%memberLength_59 = mul 3 8
	%arrayLength_60 = add %memberLength_59 8
	%arrayPtr_58 = malloc %arrayLength_60
	store 3 %arrayPtr_58
	%arrayEndPos_61 = add %arrayPtr_58 %arrayLength_60
	%startPos_62 = add %arrayPtr_58 8
	store %startPos_62 %storageCell_63
	br <29>

<29> new_for_cond
	%pos_64 = load %storageCell_63
	%condition_65 = lt %pos_64 %arrayEndPos_61
	br %condition_65 <30> <32>

<30> new_for_body
	%memberLength_67 = mul 2 8
	%arrayLength_68 = add %memberLength_67 8
	%arrayPtr_66 = malloc %arrayLength_68
	store 2 %arrayPtr_66
	%arrayEndPos_69 = add %arrayPtr_66 %arrayLength_68
	%startPos_70 = add %arrayPtr_66 8
	store %startPos_70 %storageCell_71
	br <33>

<33> new_for_cond
	%pos_72 = load %storageCell_71
	%condition_73 = lt %pos_72 %arrayEndPos_69
	br %condition_73 <34> <36>

<34> new_for_body
	%memberLength_75 = mul 2 8
	%arrayLength_76 = add %memberLength_75 8
	%arrayPtr_74 = malloc %arrayLength_76
	store 2 %arrayPtr_74
	store %arrayPtr_74 %pos_72
	br <35>

<35> new_for_step
	%pos_77 = add %pos_72 8
	store %pos_77 %storageCell_71
	br <33>

<36> new_for_end
	store %arrayPtr_66 %pos_64
	br <31>

<31> new_for_step
	%pos_78 = add %pos_64 8
	store %pos_78 %storageCell_63
	br <29>

<32> new_for_end
	store %arrayPtr_58 %pos_56
	br <27>

<27> new_for_step
	%pos_79 = add %pos_56 8
	store %pos_79 %storageCell_55
	br <25>

<28> new_for_end
	store %arrayPtr_50 %pos_48
	br <23>

<23> new_for_step
	%pos_80 = add %pos_48 8
	store %pos_80 %storageCell_47
	br <21>

<24> new_for_end
	store %arrayPtr_42 %pos_40
	br <19>

<19> new_for_step
	%pos_81 = add %pos_40 8
	store %pos_81 %storageCell_39
	br <17>

<20> new_for_end
	store %arrayPtr_34 %pos_32
	br <15>

<15> new_for_step
	%pos_82 = add %pos_32 8
	store %pos_82 %storageCell_31
	br <13>

<16> new_for_end
	store %arrayPtr_26 %pos_24
	br <11>

<11> new_for_step
	%pos_83 = add %pos_24 8
	store %pos_83 %storageCell_23
	br <9>

<12> new_for_end
	store %arrayPtr_18 %pos_16
	br <7>

<7> new_for_step
	%pos_84 = add %pos_16 8
	store %pos_84 %storageCell_15
	br <5>

<8> new_for_end
	store %arrayPtr_10 %pos_8
	br <3>

<3> new_for_step
	%pos_85 = add %pos_8 8
	store %pos_85 %storageCell_7
	br <1>

<4> new_for_end
	%classPtr_86 = load %thisAddr_1
	%memberAddr_87 = add %classPtr_86 0
	store %arrayPtr_2 %memberAddr_87
	ret 

}

define restore ( ) {
<0> entry
	%varAddr_0 = alloca 8
	store 1 %varAddr_0
	br <1>

<1> for_cond
	%idVal_1 = load %varAddr_0
	%idVal_2 = load @n
	%res_3 = le %idVal_1 %idVal_2
	br %res_3 <2> <4>

<2> for_body
	%arrayPtr_4 = load @bak
	%arrayBase_5 = add %arrayPtr_4 8
	%idVal_6 = load %varAddr_0
	%offset_7 = mul %idVal_6 8
	%elementAddr_8 = add %arrayBase_5 %offset_7
	%elementVal_9 = load %elementAddr_8
	%arrayPtr_10 = load @a
	%arrayBase_11 = add %arrayPtr_10 8
	%idVal_12 = load %varAddr_0
	%offset_13 = mul %idVal_12 8
	%elementAddr_14 = add %arrayBase_11 %offset_13
	store %elementVal_9 %elementAddr_14
	br <3>

<3> for_step
	%idVal_15 = load %varAddr_0
	%oldVal_16 = load %varAddr_0
	%newVal_17 = inc %oldVal_16
	store %newVal_17 %varAddr_0
	br <1>

<4> for_end
	ret 

}

define quicksort ( %argVal_0 %argVal_2 ) {
<0> entry
	%varAddr_74 = alloca 8
	%varAddr_28 = alloca 8
	%varAddr_27 = alloca 8
	%varAddr_26 = alloca 8
	%varAddr_19 = alloca 8
	%varAddr_18 = alloca 8
	%varAddr_17 = alloca 8
	%varAddr_16 = alloca 8
	%varAddr_15 = alloca 8
	%varAddr_14 = alloca 8
	%varAddr_13 = alloca 8
	%varAddr_12 = alloca 8
	%varAddr_11 = alloca 8
	%varAddr_10 = alloca 8
	%varAddr_9 = alloca 8
	%varAddr_8 = alloca 8
	%varAddr_7 = alloca 8
	%varAddr_6 = alloca 8
	%varAddr_5 = alloca 8
	%varAddr_4 = alloca 8
	%argAddr_3 = alloca 8
	%argAddr_1 = alloca 8
	store %argVal_0 %argAddr_1
	store %argVal_2 %argAddr_3
	store 0 %varAddr_18
	%arrayPtr_20 = load @a
	%arrayBase_21 = add %arrayPtr_20 8
	%idVal_22 = load %argAddr_1
	%offset_23 = mul %idVal_22 8
	%elementAddr_24 = add %arrayBase_21 %offset_23
	%elementVal_25 = load %elementAddr_24
	store %elementVal_25 %varAddr_19
	store 0 %varAddr_26
	store 0 %varAddr_27
	%idVal_29 = load %argAddr_1
	%res_30 = add %idVal_29 1
	store %res_30 %varAddr_28
	br <1>

<1> for_cond
	%idVal_31 = load %varAddr_28
	%idVal_32 = load %argAddr_3
	%res_33 = lt %idVal_31 %idVal_32
	br %res_33 <2> <4>

<2> for_body
	%idVal_34 = load %varAddr_18
	%oldVal_35 = load %varAddr_18
	%newVal_36 = inc %oldVal_35
	store %newVal_36 %varAddr_18
	%arrayPtr_37 = load @a
	%arrayBase_38 = add %arrayPtr_37 8
	%idVal_39 = load %varAddr_28
	%offset_40 = mul %idVal_39 8
	%elementAddr_41 = add %arrayBase_38 %offset_40
	%elementVal_42 = load %elementAddr_41
	%idVal_43 = load %varAddr_19
	%res_44 = lt %elementVal_42 %idVal_43
	br %res_44 <5> <6>

<5> if_true
	%arrayPtr_45 = load @a
	%arrayBase_46 = add %arrayPtr_45 8
	%idVal_47 = load %varAddr_28
	%offset_48 = mul %idVal_47 8
	%elementAddr_49 = add %arrayBase_46 %offset_48
	%elementVal_50 = load %elementAddr_49
	%arrayPtr_51 = load @a_left
	%arrayBase_52 = add %arrayPtr_51 8
	%idVal_53 = load %varAddr_26
	%oldVal_54 = load %varAddr_26
	%newVal_55 = inc %oldVal_54
	store %newVal_55 %varAddr_26
	%offset_56 = mul %oldVal_54 8
	%elementAddr_57 = add %arrayBase_52 %offset_56
	store %elementVal_50 %elementAddr_57
	br <7>

<6> if_false
	%arrayPtr_58 = load @a
	%arrayBase_59 = add %arrayPtr_58 8
	%idVal_60 = load %varAddr_28
	%offset_61 = mul %idVal_60 8
	%elementAddr_62 = add %arrayBase_59 %offset_61
	%elementVal_63 = load %elementAddr_62
	%arrayPtr_64 = load @a_right
	%arrayBase_65 = add %arrayPtr_64 8
	%idVal_66 = load %varAddr_27
	%oldVal_67 = load %varAddr_27
	%newVal_68 = inc %oldVal_67
	store %newVal_68 %varAddr_27
	%offset_69 = mul %oldVal_67 8
	%elementAddr_70 = add %arrayBase_65 %offset_69
	store %elementVal_63 %elementAddr_70
	br <7>

<7> if_merge
	br <3>

<3> for_step
	%idVal_71 = load %varAddr_28
	%oldVal_72 = load %varAddr_28
	%newVal_73 = inc %oldVal_72
	store %newVal_73 %varAddr_28
	br <1>

<4> for_end
	%idVal_75 = load %argAddr_1
	store %idVal_75 %varAddr_74
	store 0 %varAddr_28
	br <8>

<8> for_cond
	%idVal_76 = load %varAddr_28
	%idVal_77 = load %varAddr_26
	%res_78 = lt %idVal_76 %idVal_77
	br %res_78 <9> <11>

<9> for_body
	%arrayPtr_79 = load @a_left
	%arrayBase_80 = add %arrayPtr_79 8
	%idVal_81 = load %varAddr_28
	%offset_82 = mul %idVal_81 8
	%elementAddr_83 = add %arrayBase_80 %offset_82
	%elementVal_84 = load %elementAddr_83
	%arrayPtr_85 = load @a
	%arrayBase_86 = add %arrayPtr_85 8
	%idVal_87 = load %varAddr_74
	%oldVal_88 = load %varAddr_74
	%newVal_89 = inc %oldVal_88
	store %newVal_89 %varAddr_74
	%offset_90 = mul %oldVal_88 8
	%elementAddr_91 = add %arrayBase_86 %offset_90
	store %elementVal_84 %elementAddr_91
	br <10>

<10> for_step
	%idVal_92 = load %varAddr_28
	%oldVal_93 = load %varAddr_28
	%newVal_94 = inc %oldVal_93
	store %newVal_94 %varAddr_28
	br <8>

<11> for_end
	%idVal_95 = load %varAddr_19
	%arrayPtr_96 = load @a
	%arrayBase_97 = add %arrayPtr_96 8
	%idVal_98 = load %varAddr_74
	%oldVal_99 = load %varAddr_74
	%newVal_100 = inc %oldVal_99
	store %newVal_100 %varAddr_74
	%offset_101 = mul %oldVal_99 8
	%elementAddr_102 = add %arrayBase_97 %offset_101
	store %idVal_95 %elementAddr_102
	store 0 %varAddr_28
	br <12>

<12> for_cond
	%idVal_103 = load %varAddr_28
	%idVal_104 = load %varAddr_27
	%res_105 = lt %idVal_103 %idVal_104
	br %res_105 <13> <15>

<13> for_body
	%arrayPtr_106 = load @a_right
	%arrayBase_107 = add %arrayPtr_106 8
	%idVal_108 = load %varAddr_28
	%offset_109 = mul %idVal_108 8
	%elementAddr_110 = add %arrayBase_107 %offset_109
	%elementVal_111 = load %elementAddr_110
	%arrayPtr_112 = load @a
	%arrayBase_113 = add %arrayPtr_112 8
	%idVal_114 = load %varAddr_74
	%oldVal_115 = load %varAddr_74
	%newVal_116 = inc %oldVal_115
	store %newVal_116 %varAddr_74
	%offset_117 = mul %oldVal_115 8
	%elementAddr_118 = add %arrayBase_113 %offset_117
	store %elementVal_111 %elementAddr_118
	br <14>

<14> for_step
	%idVal_119 = load %varAddr_28
	%oldVal_120 = load %varAddr_28
	%newVal_121 = inc %oldVal_120
	store %newVal_121 %varAddr_28
	br <12>

<15> for_end
	%idVal_122 = load %varAddr_26
	%res_123 = gt %idVal_122 1
	br %res_123 <16> <17>

<16> if_true
	%idVal_124 = load %varAddr_18
	%idVal_126 = load %argAddr_1
	%idVal_127 = load %argAddr_1
	%idVal_128 = load %varAddr_26
	%res_129 = add %idVal_127 %idVal_128
	%res_125 = quicksort ( %idVal_126 %res_129 )
	%res_130 = add %idVal_124 %res_125
	store %res_130 %varAddr_18
	br <17>

<17> if_merge
	%idVal_131 = load %varAddr_27
	%res_132 = gt %idVal_131 1
	br %res_132 <18> <19>

<18> if_true
	%idVal_133 = load %varAddr_18
	%idVal_135 = load %argAddr_3
	%idVal_136 = load %varAddr_27
	%res_137 = sub %idVal_135 %idVal_136
	%idVal_138 = load %argAddr_3
	%res_134 = quicksort ( %res_137 %idVal_138 )
	%res_139 = add %idVal_133 %res_134
	store %res_139 %varAddr_18
	br <19>

<19> if_merge
	%idVal_140 = load %varAddr_18
	ret %idVal_140

}

define calc ( ) {
<0> entry
	%varAddr_51 = alloca 8
	%varAddr_39 = alloca 8
	%varAddr_35 = alloca 8
	%varAddr_14 = alloca 8
	%varAddr_13 = alloca 8
	%varAddr_12 = alloca 8
	%varAddr_11 = alloca 8
	%varAddr_10 = alloca 8
	%varAddr_9 = alloca 8
	%varAddr_8 = alloca 8
	%varAddr_7 = alloca 8
	%varAddr_6 = alloca 8
	%varAddr_5 = alloca 8
	%varAddr_4 = alloca 8
	%varAddr_3 = alloca 8
	%varAddr_2 = alloca 8
	%varAddr_1 = alloca 8
	%varAddr_0 = alloca 8
	store 1 %varAddr_14
	br <1>

<1> for_cond
	%idVal_15 = load %varAddr_14
	%idVal_16 = load @n
	%res_17 = le %idVal_15 %idVal_16
	br %res_17 <2> <4>

<2> for_body
	%idVal_18 = load %varAddr_14
	%res_19 = sub %idVal_18 1
	%arrayPtr_20 = load @a_left
	%arrayBase_21 = add %arrayPtr_20 8
	%idVal_22 = load %varAddr_14
	%offset_23 = mul %idVal_22 8
	%elementAddr_24 = add %arrayBase_21 %offset_23
	store %res_19 %elementAddr_24
	%idVal_25 = load %varAddr_14
	%res_26 = add %idVal_25 1
	%arrayPtr_27 = load @a_right
	%arrayBase_28 = add %arrayPtr_27 8
	%idVal_29 = load %varAddr_14
	%offset_30 = mul %idVal_29 8
	%elementAddr_31 = add %arrayBase_28 %offset_30
	store %res_26 %elementAddr_31
	br <3>

<3> for_step
	%idVal_32 = load %varAddr_14
	%oldVal_33 = load %varAddr_14
	%newVal_34 = inc %oldVal_33
	store %newVal_34 %varAddr_14
	br <1>

<4> for_end
	store 0 %varAddr_35
	%idVal_36 = load @n
	store %idVal_36 %varAddr_14
	br <5>

<5> for_cond
	%idVal_37 = load %varAddr_14
	%res_38 = ge %idVal_37 1
	br %res_38 <6> <8>

<6> for_body
	%arrayPtr_40 = load @a_left
	%arrayBase_41 = add %arrayPtr_40 8
	%arrayPtr_42 = load @a
	%arrayBase_43 = add %arrayPtr_42 8
	%idVal_44 = load %varAddr_14
	%offset_45 = mul %idVal_44 8
	%elementAddr_46 = add %arrayBase_43 %offset_45
	%elementVal_47 = load %elementAddr_46
	%offset_48 = mul %elementVal_47 8
	%elementAddr_49 = add %arrayBase_41 %offset_48
	%elementVal_50 = load %elementAddr_49
	store %elementVal_50 %varAddr_39
	%arrayPtr_52 = load @a_right
	%arrayBase_53 = add %arrayPtr_52 8
	%arrayPtr_54 = load @a
	%arrayBase_55 = add %arrayPtr_54 8
	%idVal_56 = load %varAddr_14
	%offset_57 = mul %idVal_56 8
	%elementAddr_58 = add %arrayBase_55 %offset_57
	%elementVal_59 = load %elementAddr_58
	%offset_60 = mul %elementVal_59 8
	%elementAddr_61 = add %arrayBase_53 %offset_60
	%elementVal_62 = load %elementAddr_61
	store %elementVal_62 %varAddr_51
	%idVal_63 = load %varAddr_51
	%arrayPtr_64 = load @a_right
	%arrayBase_65 = add %arrayPtr_64 8
	%idVal_66 = load %varAddr_39
	%offset_67 = mul %idVal_66 8
	%elementAddr_68 = add %arrayBase_65 %offset_67
	store %idVal_63 %elementAddr_68
	%idVal_69 = load %varAddr_39
	%arrayPtr_70 = load @a_left
	%arrayBase_71 = add %arrayPtr_70 8
	%idVal_72 = load %varAddr_51
	%offset_73 = mul %idVal_72 8
	%elementAddr_74 = add %arrayBase_71 %offset_73
	store %idVal_69 %elementAddr_74
	%idVal_75 = load %varAddr_35
	%idVal_76 = load %varAddr_51
	%res_77 = add %idVal_75 %idVal_76
	%idVal_78 = load %varAddr_39
	%res_79 = sub %res_77 %idVal_78
	%res_80 = sub %res_79 2
	store %res_80 %varAddr_35
	br <7>

<7> for_step
	%idVal_81 = load %varAddr_14
	%oldVal_82 = load %varAddr_14
	%newVal_83 = dec %oldVal_82
	store %newVal_83 %varAddr_14
	br <5>

<8> for_end
	%idVal_84 = load %varAddr_35
	ret %idVal_84

}

define mergesort ( %argVal_0 %argVal_2 ) {
<0> entry
	%varAddr_83 = alloca 8
	%varAddr_82 = alloca 8
	%varAddr_81 = alloca 8
	%varAddr_40 = alloca 8
	%varAddr_39 = alloca 8
	%varAddr_38 = alloca 8
	%varAddr_27 = alloca 8
	%varAddr_22 = alloca 8
	%varAddr_17 = alloca 8
	%varAddr_16 = alloca 8
	%varAddr_15 = alloca 8
	%varAddr_14 = alloca 8
	%varAddr_13 = alloca 8
	%varAddr_12 = alloca 8
	%varAddr_11 = alloca 8
	%varAddr_10 = alloca 8
	%varAddr_9 = alloca 8
	%varAddr_8 = alloca 8
	%varAddr_7 = alloca 8
	%varAddr_6 = alloca 8
	%varAddr_5 = alloca 8
	%varAddr_4 = alloca 8
	%argAddr_3 = alloca 8
	%argAddr_1 = alloca 8
	store %argVal_0 %argAddr_1
	store %argVal_2 %argAddr_3
	%idVal_18 = load %argAddr_1
	%res_19 = add %idVal_18 1
	%idVal_20 = load %argAddr_3
	%res_21 = eq %res_19 %idVal_20
	br %res_21 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	%idVal_23 = load %argAddr_1
	%idVal_24 = load %argAddr_3
	%res_25 = add %idVal_23 %idVal_24
	%res_26 = rsft %res_25 1
	store %res_26 %varAddr_22
	store 0 %varAddr_27
	%idVal_28 = load %varAddr_27
	%idVal_30 = load %argAddr_1
	%idVal_31 = load %varAddr_22
	%res_29 = mergesort ( %idVal_30 %idVal_31 )
	%res_32 = add %idVal_28 %res_29
	store %res_32 %varAddr_27
	%idVal_33 = load %varAddr_27
	%idVal_35 = load %varAddr_22
	%idVal_36 = load %argAddr_3
	%res_34 = mergesort ( %idVal_35 %idVal_36 )
	%res_37 = add %idVal_33 %res_34
	store %res_37 %varAddr_27
	store 0 %varAddr_38
	store 0 %varAddr_39
	%idVal_41 = load %argAddr_1
	store %idVal_41 %varAddr_40
	br <3>

<3> for_cond
	%idVal_42 = load %varAddr_40
	%idVal_43 = load %varAddr_22
	%res_44 = lt %idVal_42 %idVal_43
	br %res_44 <4> <6>

<4> for_body
	%arrayPtr_45 = load @a
	%arrayBase_46 = add %arrayPtr_45 8
	%idVal_47 = load %varAddr_40
	%offset_48 = mul %idVal_47 8
	%elementAddr_49 = add %arrayBase_46 %offset_48
	%elementVal_50 = load %elementAddr_49
	%arrayPtr_51 = load @a_left
	%arrayBase_52 = add %arrayPtr_51 8
	%idVal_53 = load %varAddr_38
	%oldVal_54 = load %varAddr_38
	%newVal_55 = inc %oldVal_54
	store %newVal_55 %varAddr_38
	%offset_56 = mul %oldVal_54 8
	%elementAddr_57 = add %arrayBase_52 %offset_56
	store %elementVal_50 %elementAddr_57
	br <5>

<5> for_step
	%idVal_58 = load %varAddr_40
	%oldVal_59 = load %varAddr_40
	%newVal_60 = inc %oldVal_59
	store %newVal_60 %varAddr_40
	br <3>

<6> for_end
	%idVal_61 = load %varAddr_22
	store %idVal_61 %varAddr_40
	br <7>

<7> for_cond
	%idVal_62 = load %varAddr_40
	%idVal_63 = load %argAddr_3
	%res_64 = lt %idVal_62 %idVal_63
	br %res_64 <8> <10>

<8> for_body
	%arrayPtr_65 = load @a
	%arrayBase_66 = add %arrayPtr_65 8
	%idVal_67 = load %varAddr_40
	%offset_68 = mul %idVal_67 8
	%elementAddr_69 = add %arrayBase_66 %offset_68
	%elementVal_70 = load %elementAddr_69
	%arrayPtr_71 = load @a_right
	%arrayBase_72 = add %arrayPtr_71 8
	%idVal_73 = load %varAddr_39
	%oldVal_74 = load %varAddr_39
	%newVal_75 = inc %oldVal_74
	store %newVal_75 %varAddr_39
	%offset_76 = mul %oldVal_74 8
	%elementAddr_77 = add %arrayBase_72 %offset_76
	store %elementVal_70 %elementAddr_77
	br <9>

<9> for_step
	%idVal_78 = load %varAddr_40
	%oldVal_79 = load %varAddr_40
	%newVal_80 = inc %oldVal_79
	store %newVal_80 %varAddr_40
	br <7>

<10> for_end
	store 0 %varAddr_81
	store 0 %varAddr_82
	%idVal_84 = load %argAddr_1
	store %idVal_84 %varAddr_83
	br <11>

<11> while_cond
	%idVal_85 = load %varAddr_81
	%idVal_86 = load %varAddr_38
	%res_87 = lt %idVal_85 %idVal_86
	br %res_87 <14> <13>

<14> lhs_true
	%idVal_88 = load %varAddr_82
	%idVal_89 = load %varAddr_39
	%res_90 = lt %idVal_88 %idVal_89
	br %res_90 <12> <13>

<12> while_body
	%idVal_91 = load %varAddr_27
	%oldVal_92 = load %varAddr_27
	%newVal_93 = inc %oldVal_92
	store %newVal_93 %varAddr_27
	%arrayPtr_94 = load @a_left
	%arrayBase_95 = add %arrayPtr_94 8
	%idVal_96 = load %varAddr_81
	%offset_97 = mul %idVal_96 8
	%elementAddr_98 = add %arrayBase_95 %offset_97
	%elementVal_99 = load %elementAddr_98
	%arrayPtr_100 = load @a_right
	%arrayBase_101 = add %arrayPtr_100 8
	%idVal_102 = load %varAddr_82
	%offset_103 = mul %idVal_102 8
	%elementAddr_104 = add %arrayBase_101 %offset_103
	%elementVal_105 = load %elementAddr_104
	%res_106 = lt %elementVal_99 %elementVal_105
	br %res_106 <15> <16>

<15> if_true
	%arrayPtr_107 = load @a_left
	%arrayBase_108 = add %arrayPtr_107 8
	%idVal_109 = load %varAddr_81
	%oldVal_110 = load %varAddr_81
	%newVal_111 = inc %oldVal_110
	store %newVal_111 %varAddr_81
	%offset_112 = mul %oldVal_110 8
	%elementAddr_113 = add %arrayBase_108 %offset_112
	%elementVal_114 = load %elementAddr_113
	%arrayPtr_115 = load @a
	%arrayBase_116 = add %arrayPtr_115 8
	%idVal_117 = load %varAddr_83
	%oldVal_118 = load %varAddr_83
	%newVal_119 = inc %oldVal_118
	store %newVal_119 %varAddr_83
	%offset_120 = mul %oldVal_118 8
	%elementAddr_121 = add %arrayBase_116 %offset_120
	store %elementVal_114 %elementAddr_121
	br <17>

<16> if_false
	%arrayPtr_122 = load @a_right
	%arrayBase_123 = add %arrayPtr_122 8
	%idVal_124 = load %varAddr_82
	%oldVal_125 = load %varAddr_82
	%newVal_126 = inc %oldVal_125
	store %newVal_126 %varAddr_82
	%offset_127 = mul %oldVal_125 8
	%elementAddr_128 = add %arrayBase_123 %offset_127
	%elementVal_129 = load %elementAddr_128
	%arrayPtr_130 = load @a
	%arrayBase_131 = add %arrayPtr_130 8
	%idVal_132 = load %varAddr_83
	%oldVal_133 = load %varAddr_83
	%newVal_134 = inc %oldVal_133
	store %newVal_134 %varAddr_83
	%offset_135 = mul %oldVal_133 8
	%elementAddr_136 = add %arrayBase_131 %offset_135
	store %elementVal_129 %elementAddr_136
	br <17>

<17> if_merge
	br <11>

<13> while_end
	br <18>

<18> while_cond
	%idVal_137 = load %varAddr_81
	%idVal_138 = load %varAddr_38
	%res_139 = lt %idVal_137 %idVal_138
	br %res_139 <19> <20>

<19> while_body
	%arrayPtr_140 = load @a_left
	%arrayBase_141 = add %arrayPtr_140 8
	%idVal_142 = load %varAddr_81
	%oldVal_143 = load %varAddr_81
	%newVal_144 = inc %oldVal_143
	store %newVal_144 %varAddr_81
	%offset_145 = mul %oldVal_143 8
	%elementAddr_146 = add %arrayBase_141 %offset_145
	%elementVal_147 = load %elementAddr_146
	%arrayPtr_148 = load @a
	%arrayBase_149 = add %arrayPtr_148 8
	%idVal_150 = load %varAddr_83
	%oldVal_151 = load %varAddr_83
	%newVal_152 = inc %oldVal_151
	store %newVal_152 %varAddr_83
	%offset_153 = mul %oldVal_151 8
	%elementAddr_154 = add %arrayBase_149 %offset_153
	store %elementVal_147 %elementAddr_154
	br <18>

<20> while_end
	br <21>

<21> while_cond
	%idVal_155 = load %varAddr_82
	%idVal_156 = load %varAddr_39
	%res_157 = lt %idVal_155 %idVal_156
	br %res_157 <22> <23>

<22> while_body
	%arrayPtr_158 = load @a_right
	%arrayBase_159 = add %arrayPtr_158 8
	%idVal_160 = load %varAddr_82
	%oldVal_161 = load %varAddr_82
	%newVal_162 = inc %oldVal_161
	store %newVal_162 %varAddr_82
	%offset_163 = mul %oldVal_161 8
	%elementAddr_164 = add %arrayBase_159 %offset_163
	%elementVal_165 = load %elementAddr_164
	%arrayPtr_166 = load @a
	%arrayBase_167 = add %arrayPtr_166 8
	%idVal_168 = load %varAddr_83
	%oldVal_169 = load %varAddr_83
	%newVal_170 = inc %oldVal_169
	store %newVal_170 %varAddr_83
	%offset_171 = mul %oldVal_169 8
	%elementAddr_172 = add %arrayBase_167 %offset_171
	store %elementVal_165 %elementAddr_172
	br <21>

<23> while_end
	%idVal_173 = load %varAddr_27
	ret %idVal_173

}

define heapsort ( ) {
<0> entry
	%varAddr_120 = alloca 8
	%varAddr_117 = alloca 8
	%varAddr_114 = alloca 8
	%varAddr_109 = alloca 8
	%varAddr_82 = alloca 8
	%varAddr_31 = alloca 8
	%varAddr_16 = alloca 8
	%varAddr_15 = alloca 8
	%varAddr_14 = alloca 8
	%varAddr_13 = alloca 8
	%varAddr_12 = alloca 8
	%varAddr_11 = alloca 8
	%varAddr_10 = alloca 8
	%varAddr_9 = alloca 8
	%varAddr_8 = alloca 8
	%varAddr_7 = alloca 8
	%varAddr_6 = alloca 8
	%varAddr_5 = alloca 8
	%varAddr_4 = alloca 8
	%varAddr_3 = alloca 8
	%varAddr_2 = alloca 8
	%varAddr_1 = alloca 8
	%varAddr_0 = alloca 8
	store 0 %varAddr_14
	store 1 %varAddr_15
	br <1>

<1> for_cond
	%idVal_17 = load %varAddr_15
	%idVal_18 = load @n
	%res_19 = le %idVal_17 %idVal_18
	br %res_19 <2> <4>

<2> for_body
	%arrayPtr_20 = load @a
	%arrayBase_21 = add %arrayPtr_20 8
	%idVal_22 = load %varAddr_15
	%offset_23 = mul %idVal_22 8
	%elementAddr_24 = add %arrayBase_21 %offset_23
	%elementVal_25 = load %elementAddr_24
	%arrayPtr_26 = load @heap
	%arrayBase_27 = add %arrayPtr_26 8
	%idVal_28 = load %varAddr_15
	%offset_29 = mul %idVal_28 8
	%elementAddr_30 = add %arrayBase_27 %offset_29
	store %elementVal_25 %elementAddr_30
	%idVal_32 = load %varAddr_15
	store %idVal_32 %varAddr_31
	br <5>

<5> while_cond
	%idVal_33 = load %varAddr_31
	%res_34 = neq %idVal_33 1
	br %res_34 <6> <7>

<6> while_body
	%idVal_35 = load %varAddr_14
	%oldVal_36 = load %varAddr_14
	%newVal_37 = inc %oldVal_36
	store %newVal_37 %varAddr_14
	%arrayPtr_38 = load @heap
	%arrayBase_39 = add %arrayPtr_38 8
	%idVal_40 = load %varAddr_31
	%offset_41 = mul %idVal_40 8
	%elementAddr_42 = add %arrayBase_39 %offset_41
	%elementVal_43 = load %elementAddr_42
	%arrayPtr_44 = load @heap
	%arrayBase_45 = add %arrayPtr_44 8
	%idVal_46 = load %varAddr_31
	%res_47 = rsft %idVal_46 1
	%offset_48 = mul %res_47 8
	%elementAddr_49 = add %arrayBase_45 %offset_48
	%elementVal_50 = load %elementAddr_49
	%res_51 = gt %elementVal_43 %elementVal_50
	br %res_51 <8> <9>

<8> if_true
	br <7>

<9> if_merge
	%arrayPtr_52 = load @heap
	%arrayBase_53 = add %arrayPtr_52 8
	%idVal_54 = load %varAddr_31
	%offset_55 = mul %idVal_54 8
	%elementAddr_56 = add %arrayBase_53 %offset_55
	%elementVal_57 = load %elementAddr_56
	store %elementVal_57 %varAddr_16
	%arrayPtr_58 = load @heap
	%arrayBase_59 = add %arrayPtr_58 8
	%idVal_60 = load %varAddr_31
	%res_61 = rsft %idVal_60 1
	%offset_62 = mul %res_61 8
	%elementAddr_63 = add %arrayBase_59 %offset_62
	%elementVal_64 = load %elementAddr_63
	%arrayPtr_65 = load @heap
	%arrayBase_66 = add %arrayPtr_65 8
	%idVal_67 = load %varAddr_31
	%offset_68 = mul %idVal_67 8
	%elementAddr_69 = add %arrayBase_66 %offset_68
	store %elementVal_64 %elementAddr_69
	%idVal_70 = load %varAddr_16
	%arrayPtr_71 = load @heap
	%arrayBase_72 = add %arrayPtr_71 8
	%idVal_73 = load %varAddr_31
	%res_74 = rsft %idVal_73 1
	%offset_75 = mul %res_74 8
	%elementAddr_76 = add %arrayBase_72 %offset_75
	store %idVal_70 %elementAddr_76
	%idVal_77 = load %varAddr_31
	%res_78 = rsft %idVal_77 1
	store %res_78 %varAddr_31
	br <5>

<7> while_end
	br <3>

<3> for_step
	%idVal_79 = load %varAddr_15
	%oldVal_80 = load %varAddr_15
	%newVal_81 = inc %oldVal_80
	store %newVal_81 %varAddr_15
	br <1>

<4> for_end
	%idVal_83 = load @n
	store %idVal_83 %varAddr_82
	store 1 %varAddr_15
	br <10>

<10> for_cond
	%idVal_84 = load %varAddr_15
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
	%idVal_94 = load %varAddr_15
	%offset_95 = mul %idVal_94 8
	%elementAddr_96 = add %arrayBase_93 %offset_95
	store %elementVal_91 %elementAddr_96
	%arrayPtr_97 = load @heap
	%arrayBase_98 = add %arrayPtr_97 8
	%idVal_99 = load %varAddr_82
	%oldVal_100 = load %varAddr_82
	%newVal_101 = dec %oldVal_100
	store %newVal_101 %varAddr_82
	%offset_102 = mul %oldVal_100 8
	%elementAddr_103 = add %arrayBase_98 %offset_102
	%elementVal_104 = load %elementAddr_103
	%arrayPtr_105 = load @heap
	%arrayBase_106 = add %arrayPtr_105 8
	%offset_107 = mul 1 8
	%elementAddr_108 = add %arrayBase_106 %offset_107
	store %elementVal_104 %elementAddr_108
	store 1 %varAddr_109
	br <14>

<14> while_cond
	%idVal_110 = load %varAddr_109
	%res_111 = lsft %idVal_110 1
	%idVal_112 = load %varAddr_82
	%res_113 = le %res_111 %idVal_112
	br %res_113 <15> <16>

<15> while_body
	%idVal_115 = load %varAddr_109
	%res_116 = lsft %idVal_115 1
	store %res_116 %varAddr_114
	%idVal_118 = load %varAddr_114
	%res_119 = add %idVal_118 1
	store %res_119 %varAddr_117
	%idVal_121 = load %varAddr_114
	store %idVal_121 %varAddr_120
	%idVal_122 = load %varAddr_117
	%idVal_123 = load %varAddr_82
	%res_124 = le %idVal_122 %idVal_123
	br %res_124 <17> <18>

<17> if_true
	%idVal_125 = load %varAddr_14
	%oldVal_126 = load %varAddr_14
	%newVal_127 = inc %oldVal_126
	store %newVal_127 %varAddr_14
	%arrayPtr_128 = load @heap
	%arrayBase_129 = add %arrayPtr_128 8
	%idVal_130 = load %varAddr_117
	%offset_131 = mul %idVal_130 8
	%elementAddr_132 = add %arrayBase_129 %offset_131
	%elementVal_133 = load %elementAddr_132
	%arrayPtr_134 = load @heap
	%arrayBase_135 = add %arrayPtr_134 8
	%idVal_136 = load %varAddr_114
	%offset_137 = mul %idVal_136 8
	%elementAddr_138 = add %arrayBase_135 %offset_137
	%elementVal_139 = load %elementAddr_138
	%res_140 = lt %elementVal_133 %elementVal_139
	br %res_140 <19> <20>

<19> if_true
	%idVal_141 = load %varAddr_117
	store %idVal_141 %varAddr_120
	br <20>

<20> if_merge
	br <18>

<18> if_merge
	%idVal_142 = load %varAddr_14
	%oldVal_143 = load %varAddr_14
	%newVal_144 = inc %oldVal_143
	store %newVal_144 %varAddr_14
	%arrayPtr_145 = load @heap
	%arrayBase_146 = add %arrayPtr_145 8
	%idVal_147 = load %varAddr_109
	%offset_148 = mul %idVal_147 8
	%elementAddr_149 = add %arrayBase_146 %offset_148
	%elementVal_150 = load %elementAddr_149
	%arrayPtr_151 = load @heap
	%arrayBase_152 = add %arrayPtr_151 8
	%idVal_153 = load %varAddr_120
	%offset_154 = mul %idVal_153 8
	%elementAddr_155 = add %arrayBase_152 %offset_154
	%elementVal_156 = load %elementAddr_155
	%res_157 = lt %elementVal_150 %elementVal_156
	br %res_157 <21> <22>

<21> if_true
	br <16>

<22> if_merge
	%arrayPtr_158 = load @heap
	%arrayBase_159 = add %arrayPtr_158 8
	%idVal_160 = load %varAddr_109
	%offset_161 = mul %idVal_160 8
	%elementAddr_162 = add %arrayBase_159 %offset_161
	%elementVal_163 = load %elementAddr_162
	store %elementVal_163 %varAddr_16
	%arrayPtr_164 = load @heap
	%arrayBase_165 = add %arrayPtr_164 8
	%idVal_166 = load %varAddr_120
	%offset_167 = mul %idVal_166 8
	%elementAddr_168 = add %arrayBase_165 %offset_167
	%elementVal_169 = load %elementAddr_168
	%arrayPtr_170 = load @heap
	%arrayBase_171 = add %arrayPtr_170 8
	%idVal_172 = load %varAddr_109
	%offset_173 = mul %idVal_172 8
	%elementAddr_174 = add %arrayBase_171 %offset_173
	store %elementVal_169 %elementAddr_174
	%idVal_175 = load %varAddr_16
	%arrayPtr_176 = load @heap
	%arrayBase_177 = add %arrayPtr_176 8
	%idVal_178 = load %varAddr_120
	%offset_179 = mul %idVal_178 8
	%elementAddr_180 = add %arrayBase_177 %offset_179
	store %idVal_175 %elementAddr_180
	%idVal_181 = load %varAddr_109
	store %idVal_181 %varAddr_16
	%idVal_182 = load %varAddr_120
	store %idVal_182 %varAddr_109
	%idVal_183 = load %varAddr_16
	store %idVal_183 %varAddr_120
	br <14>

<16> while_end
	br <12>

<12> for_step
	%idVal_184 = load %varAddr_15
	%oldVal_185 = load %varAddr_15
	%newVal_186 = inc %oldVal_185
	store %newVal_186 %varAddr_15
	br <10>

<13> for_end
	%idVal_187 = load %varAddr_14
	ret %idVal_187

}

define main ( ) {
<0> entry
	%varAddr_73 = alloca 8
	%varAddr_63 = alloca 8
	%varAddr_59 = alloca 8
	%varAddr_57 = alloca 8
	%varAddr_53 = alloca 8
	%varAddr_17 = alloca 8
	%varAddr_15 = alloca 8
	%varAddr_13 = alloca 8
	%varAddr_12 = alloca 8
	%varAddr_11 = alloca 8
	%varAddr_10 = alloca 8
	%varAddr_9 = alloca 8
	%varAddr_8 = alloca 8
	%varAddr_7 = alloca 8
	%varAddr_6 = alloca 8
	%varAddr_5 = alloca 8
	%varAddr_4 = alloca 8
	%varAddr_3 = alloca 8
	%varAddr_2 = alloca 8
	%varAddr_1 = alloca 8
	%varAddr_0 = alloca 8
	%res_14 = getInt ( )
	store %res_14 @n
	%res_16 = getInt ( )
	store %res_16 %varAddr_15
	store 1 %varAddr_17
	br <1>

<1> for_cond
	%idVal_18 = load %varAddr_17
	%idVal_19 = load @n
	%res_20 = le %idVal_18 %idVal_19
	br %res_20 <2> <4>

<2> for_body
	%idVal_21 = load %varAddr_17
	%arrayPtr_22 = load @a
	%arrayBase_23 = add %arrayPtr_22 8
	%idVal_24 = load %varAddr_17
	%offset_25 = mul %idVal_24 8
	%elementAddr_26 = add %arrayBase_23 %offset_25
	store %idVal_21 %elementAddr_26
	%idVal_27 = load %varAddr_17
	%idVal_28 = load %varAddr_15
	%res_29 = le %idVal_27 %idVal_28
	br %res_29 <5> <6>

<5> if_true
	%idVal_30 = load %varAddr_15
	%res_31 = add %idVal_30 1
	%idVal_32 = load %varAddr_17
	%res_33 = sub %res_31 %idVal_32
	%arrayPtr_34 = load @a
	%arrayBase_35 = add %arrayPtr_34 8
	%idVal_36 = load %varAddr_17
	%offset_37 = mul %idVal_36 8
	%elementAddr_38 = add %arrayBase_35 %offset_37
	store %res_33 %elementAddr_38
	br <6>

<6> if_merge
	%arrayPtr_39 = load @a
	%arrayBase_40 = add %arrayPtr_39 8
	%idVal_41 = load %varAddr_17
	%offset_42 = mul %idVal_41 8
	%elementAddr_43 = add %arrayBase_40 %offset_42
	%elementVal_44 = load %elementAddr_43
	%arrayPtr_45 = load @bak
	%arrayBase_46 = add %arrayPtr_45 8
	%idVal_47 = load %varAddr_17
	%offset_48 = mul %idVal_47 8
	%elementAddr_49 = add %arrayBase_46 %offset_48
	store %elementVal_44 %elementAddr_49
	br <3>

<3> for_step
	%idVal_50 = load %varAddr_17
	%oldVal_51 = load %varAddr_17
	%newVal_52 = inc %oldVal_51
	store %newVal_52 %varAddr_17
	br <1>

<4> for_end
	%idVal_55 = load @n
	%res_56 = add %idVal_55 1
	%res_54 = quicksort ( 1 %res_56 )
	store %res_54 %varAddr_53
	restore ( )
	%res_58 = calc ( )
	store %res_58 %varAddr_57
	restore ( )
	%idVal_61 = load @n
	%res_62 = add %idVal_61 1
	%res_60 = mergesort ( 1 %res_62 )
	store %res_60 %varAddr_59
	restore ( )
	%res_64 = heapsort ( )
	store %res_64 %varAddr_63
	%idVal_66 = load %varAddr_53
	%res_65 = toString ( %idVal_66 )
	println ( %res_65 )
	%idVal_68 = load %varAddr_57
	%res_67 = toString ( %idVal_68 )
	println ( %res_67 )
	%idVal_70 = load %varAddr_59
	%res_69 = toString ( %idVal_70 )
	println ( %res_69 )
	%idVal_72 = load %varAddr_63
	%res_71 = toString ( %idVal_72 )
	println ( %res_71 )
	%classPtr_74 = malloc 8
	_A_A ( %classPtr_74 )
	store %classPtr_74 %varAddr_73
	%classPtr_75 = load %varAddr_73
	_A_Optimizer ( %classPtr_75 )
	ret 0

}

