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
	move %varDef_11 %argVal_0
	move %varDef_12 %argVal_2
	move %idVal_5 %varDef_11
	move %idVal_6 %varDef_12
	%res_7 = lt %idVal_5 %idVal_6
	br %res_7 <4> <2>

<4> lhs_true
	move %idVal_8 %varDef_11
	%res_9 = ge %idVal_8 0
	br %res_9 <1> <2>

<1> bool_true
	move %varDef_13 1
	br <3>

<2> bool_false
	move %varDef_14 0
	br <3>

<3> bool_merge
	%varDef_15 = phi <1> %varDef_13 <2> %varDef_14
	move %boolVal_10 %varDef_15
	ret %boolVal_10

}

define #main ( ) {
<0> entry
	%res_16 = #getInt ( )
	move %varDef_677 %res_16
	move %varDef_678 0
	move %varDef_679 0
	move %varDef_680 0
	move %varDef_681 0
	move %idVal_17 %varDef_677
	%res_18 = sub %idVal_17 1
	move %varDef_682 %res_18
	move %idVal_19 %varDef_677
	%res_20 = sub %idVal_19 1
	move %varDef_683 %res_20
	move %varDef_684 0
	move %varDef_685 0
	move %varDef_686 0
	move %varDef_687 0
	move %idVal_21 %varDef_677
	move %idVal_22 %varDef_677
	%res_23 = mul %idVal_21 %idVal_22
	%memberLength_25 = mul %res_23 4
	%arrayLength_26 = add %memberLength_25 4
	%arrayPtr_24 = malloc %arrayLength_26
	store %res_23 %arrayPtr_24
	move %varDef_688 %arrayPtr_24
	move %varDef_689 0
	br <1>

<1> for_cond
	%varDef_690 = phi <0> %varDef_689 <3> %varDef_691
	move %idVal_27 %varDef_690
	move %idVal_28 %varDef_677
	move %idVal_29 %varDef_677
	%res_30 = mul %idVal_28 %idVal_29
	%res_31 = lt %idVal_27 %res_30
	br %res_31 <2> <4>

<2> for_body
	move %arrayPtr_32 %varDef_688
	%arrayBase_33 = add %arrayPtr_32 4
	move %idVal_34 %varDef_690
	%offset_35 = mul %idVal_34 4
	%elementAddr_36 = add %arrayBase_33 %offset_35
	store 0 %elementAddr_36
	br <3>

<3> for_step
	move %idVal_37 %varDef_690
	move %oldVal_38 %varDef_690
	%newVal_39 = inc %oldVal_38
	move %varDef_691 %newVal_39
	br <1>

<4> for_end
	move %idVal_40 %varDef_677
	move %idVal_41 %varDef_677
	%res_42 = mul %idVal_40 %idVal_41
	%memberLength_44 = mul %res_42 4
	%arrayLength_45 = add %memberLength_44 4
	%arrayPtr_43 = malloc %arrayLength_45
	store %res_42 %arrayPtr_43
	move %varDef_692 %arrayPtr_43
	move %varDef_693 0
	br <5>

<5> for_cond
	%varDef_694 = phi <4> %varDef_693 <7> %varDef_695
	move %idVal_46 %varDef_694
	move %idVal_47 %varDef_677
	move %idVal_48 %varDef_677
	%res_49 = mul %idVal_47 %idVal_48
	%res_50 = lt %idVal_46 %res_49
	br %res_50 <6> <8>

<6> for_body
	move %arrayPtr_51 %varDef_692
	%arrayBase_52 = add %arrayPtr_51 4
	move %idVal_53 %varDef_694
	%offset_54 = mul %idVal_53 4
	%elementAddr_55 = add %arrayBase_52 %offset_54
	store 0 %elementAddr_55
	br <7>

<7> for_step
	move %idVal_56 %varDef_694
	move %oldVal_57 %varDef_694
	%newVal_58 = inc %oldVal_57
	move %varDef_695 %newVal_58
	br <5>

<8> for_end
	move %idVal_59 %varDef_677
	%memberLength_61 = mul %idVal_59 4
	%arrayLength_62 = add %memberLength_61 4
	%arrayPtr_60 = malloc %arrayLength_62
	store %idVal_59 %arrayPtr_60
	move %varDef_696 %arrayPtr_60
	move %varDef_697 0
	br <9>

<9> for_cond
	%varDef_698 = phi <8> %varDef_697 <11> %varDef_703
	%varDef_699 = phi <8> 0 <11> %varDef_701
	move %idVal_63 %varDef_698
	move %idVal_64 %varDef_677
	%res_65 = lt %idVal_63 %idVal_64
	br %res_65 <10> <12>

<10> for_body
	move %idVal_66 %varDef_677
	%memberLength_68 = mul %idVal_66 4
	%arrayLength_69 = add %memberLength_68 4
	%arrayPtr_67 = malloc %arrayLength_69
	store %idVal_66 %arrayPtr_67
	move %arrayPtr_70 %varDef_696
	%arrayBase_71 = add %arrayPtr_70 4
	move %idVal_72 %varDef_698
	%offset_73 = mul %idVal_72 4
	%elementAddr_74 = add %arrayBase_71 %offset_73
	store %arrayPtr_67 %elementAddr_74
	move %varDef_700 0
	br <13>

<13> for_cond
	%varDef_701 = phi <10> %varDef_700 <15> %varDef_702
	move %idVal_75 %varDef_701
	move %idVal_76 %varDef_677
	%res_77 = lt %idVal_75 %idVal_76
	br %res_77 <14> <16>

<14> for_body
	%res_78 = neg 1
	move %arrayPtr_79 %varDef_696
	%arrayBase_80 = add %arrayPtr_79 4
	move %idVal_81 %varDef_698
	%offset_82 = mul %idVal_81 4
	%elementAddr_83 = add %arrayBase_80 %offset_82
	%arrayPtr_84 = load %elementAddr_83
	%arrayBase_85 = add %arrayPtr_84 4
	move %idVal_86 %varDef_701
	%offset_87 = mul %idVal_86 4
	%elementAddr_88 = add %arrayBase_85 %offset_87
	store %res_78 %elementAddr_88
	br <15>

<15> for_step
	move %idVal_89 %varDef_701
	move %oldVal_90 %varDef_701
	%newVal_91 = inc %oldVal_90
	move %varDef_702 %newVal_91
	br <13>

<16> for_end
	br <11>

<11> for_step
	move %idVal_92 %varDef_698
	move %oldVal_93 %varDef_698
	%newVal_94 = inc %oldVal_93
	move %varDef_703 %newVal_94
	br <9>

<12> for_end
	move %idVal_95 %varDef_680
	move %arrayPtr_96 %varDef_688
	%arrayBase_97 = add %arrayPtr_96 4
	%offset_98 = mul 0 4
	%elementAddr_99 = add %arrayBase_97 %offset_98
	store %idVal_95 %elementAddr_99
	move %idVal_100 %varDef_681
	move %arrayPtr_101 %varDef_692
	%arrayBase_102 = add %arrayPtr_101 4
	%offset_103 = mul 0 4
	%elementAddr_104 = add %arrayBase_102 %offset_103
	store %idVal_100 %elementAddr_104
	move %arrayPtr_105 %varDef_696
	%arrayBase_106 = add %arrayPtr_105 4
	move %idVal_107 %varDef_680
	%offset_108 = mul %idVal_107 4
	%elementAddr_109 = add %arrayBase_106 %offset_108
	%arrayPtr_110 = load %elementAddr_109
	%arrayBase_111 = add %arrayPtr_110 4
	move %idVal_112 %varDef_681
	%offset_113 = mul %idVal_112 4
	%elementAddr_114 = add %arrayBase_111 %offset_113
	store 0 %elementAddr_114
	br <17>

<17> while_cond
	%varDef_704 = phi <12> %varDef_678 <77> %varDef_767
	%varDef_705 = phi <12> %varDef_679 <77> %varDef_765
	%varDef_706 = phi <12> %varDef_687 <77> %varDef_766
	%varDef_707 = phi <12> %varDef_686 <77> %varDef_710
	%varDef_708 = phi <12> %varDef_684 <77> %varDef_760
	%varDef_709 = phi <12> %varDef_685 <77> %varDef_761
	move %idVal_115 %varDef_704
	move %idVal_116 %varDef_705
	%res_117 = le %idVal_115 %idVal_116
	br %res_117 <18> <19>

<18> while_body
	move %arrayPtr_118 %varDef_696
	%arrayBase_119 = add %arrayPtr_118 4
	move %arrayPtr_120 %varDef_688
	%arrayBase_121 = add %arrayPtr_120 4
	move %idVal_122 %varDef_704
	%offset_123 = mul %idVal_122 4
	%elementAddr_124 = add %arrayBase_121 %offset_123
	%elementVal_125 = load %elementAddr_124
	%offset_126 = mul %elementVal_125 4
	%elementAddr_127 = add %arrayBase_119 %offset_126
	%arrayPtr_128 = load %elementAddr_127
	%arrayBase_129 = add %arrayPtr_128 4
	move %arrayPtr_130 %varDef_692
	%arrayBase_131 = add %arrayPtr_130 4
	move %idVal_132 %varDef_704
	%offset_133 = mul %idVal_132 4
	%elementAddr_134 = add %arrayBase_131 %offset_133
	%elementVal_135 = load %elementAddr_134
	%offset_136 = mul %elementVal_135 4
	%elementAddr_137 = add %arrayBase_129 %offset_136
	%elementVal_138 = load %elementAddr_137
	move %varDef_710 %elementVal_138
	move %arrayPtr_139 %varDef_688
	%arrayBase_140 = add %arrayPtr_139 4
	move %idVal_141 %varDef_704
	%offset_142 = mul %idVal_141 4
	%elementAddr_143 = add %arrayBase_140 %offset_142
	%elementVal_144 = load %elementAddr_143
	%res_145 = sub %elementVal_144 1
	move %varDef_711 %res_145
	move %arrayPtr_146 %varDef_692
	%arrayBase_147 = add %arrayPtr_146 4
	move %idVal_148 %varDef_704
	%offset_149 = mul %idVal_148 4
	%elementAddr_150 = add %arrayBase_147 %offset_149
	%elementVal_151 = load %elementAddr_150
	%res_152 = sub %elementVal_151 2
	move %varDef_712 %res_152
	move %idVal_154 %varDef_711
	move %idVal_155 %varDef_677
	%res_153 = #check ( %idVal_154 %idVal_155 )
	br %res_153 <23> <21>

<23> lhs_true
	move %idVal_157 %varDef_712
	move %idVal_158 %varDef_677
	%res_156 = #check ( %idVal_157 %idVal_158 )
	br %res_156 <22> <21>

<22> lhs_true
	move %arrayPtr_159 %varDef_696
	%arrayBase_160 = add %arrayPtr_159 4
	move %idVal_161 %varDef_711
	%offset_162 = mul %idVal_161 4
	%elementAddr_163 = add %arrayBase_160 %offset_162
	%arrayPtr_164 = load %elementAddr_163
	%arrayBase_165 = add %arrayPtr_164 4
	move %idVal_166 %varDef_712
	%offset_167 = mul %idVal_166 4
	%elementAddr_168 = add %arrayBase_165 %offset_167
	%elementVal_169 = load %elementAddr_168
	%res_170 = neg 1
	%res_171 = eq %elementVal_169 %res_170
	br %res_171 <20> <21>

<20> if_true
	move %idVal_172 %varDef_705
	%res_173 = add %idVal_172 1
	move %varDef_713 %res_173
	move %idVal_174 %varDef_711
	move %arrayPtr_175 %varDef_688
	%arrayBase_176 = add %arrayPtr_175 4
	move %idVal_177 %varDef_713
	%offset_178 = mul %idVal_177 4
	%elementAddr_179 = add %arrayBase_176 %offset_178
	store %idVal_174 %elementAddr_179
	move %idVal_180 %varDef_712
	move %arrayPtr_181 %varDef_692
	%arrayBase_182 = add %arrayPtr_181 4
	move %idVal_183 %varDef_713
	%offset_184 = mul %idVal_183 4
	%elementAddr_185 = add %arrayBase_182 %offset_184
	store %idVal_180 %elementAddr_185
	move %idVal_186 %varDef_710
	%res_187 = add %idVal_186 1
	move %arrayPtr_188 %varDef_696
	%arrayBase_189 = add %arrayPtr_188 4
	move %idVal_190 %varDef_711
	%offset_191 = mul %idVal_190 4
	%elementAddr_192 = add %arrayBase_189 %offset_191
	%arrayPtr_193 = load %elementAddr_192
	%arrayBase_194 = add %arrayPtr_193 4
	move %idVal_195 %varDef_712
	%offset_196 = mul %idVal_195 4
	%elementAddr_197 = add %arrayBase_194 %offset_196
	store %res_187 %elementAddr_197
	move %idVal_198 %varDef_711
	move %idVal_199 %varDef_682
	%res_200 = eq %idVal_198 %idVal_199
	br %res_200 <26> <25>

<26> lhs_true
	move %idVal_201 %varDef_712
	move %idVal_202 %varDef_683
	%res_203 = eq %idVal_201 %idVal_202
	br %res_203 <24> <25>

<24> if_true
	move %varDef_714 1
	br <25>

<25> if_merge
	%varDef_715 = phi <20> %varDef_706 <26> %varDef_706 <24> %varDef_714
	br <21>

<21> if_merge
	%varDef_716 = phi <18> %varDef_705 <23> %varDef_705 <22> %varDef_705 <25> %varDef_713
	%varDef_717 = phi <18> %varDef_706 <23> %varDef_706 <22> %varDef_706 <25> %varDef_715
	move %arrayPtr_204 %varDef_688
	%arrayBase_205 = add %arrayPtr_204 4
	move %idVal_206 %varDef_704
	%offset_207 = mul %idVal_206 4
	%elementAddr_208 = add %arrayBase_205 %offset_207
	%elementVal_209 = load %elementAddr_208
	%res_210 = sub %elementVal_209 1
	move %varDef_718 %res_210
	move %arrayPtr_211 %varDef_692
	%arrayBase_212 = add %arrayPtr_211 4
	move %idVal_213 %varDef_704
	%offset_214 = mul %idVal_213 4
	%elementAddr_215 = add %arrayBase_212 %offset_214
	%elementVal_216 = load %elementAddr_215
	%res_217 = add %elementVal_216 2
	move %varDef_719 %res_217
	move %idVal_219 %varDef_718
	move %idVal_220 %varDef_677
	%res_218 = #check ( %idVal_219 %idVal_220 )
	br %res_218 <30> <28>

<30> lhs_true
	move %idVal_222 %varDef_719
	move %idVal_223 %varDef_677
	%res_221 = #check ( %idVal_222 %idVal_223 )
	br %res_221 <29> <28>

<29> lhs_true
	move %arrayPtr_224 %varDef_696
	%arrayBase_225 = add %arrayPtr_224 4
	move %idVal_226 %varDef_718
	%offset_227 = mul %idVal_226 4
	%elementAddr_228 = add %arrayBase_225 %offset_227
	%arrayPtr_229 = load %elementAddr_228
	%arrayBase_230 = add %arrayPtr_229 4
	move %idVal_231 %varDef_719
	%offset_232 = mul %idVal_231 4
	%elementAddr_233 = add %arrayBase_230 %offset_232
	%elementVal_234 = load %elementAddr_233
	%res_235 = neg 1
	%res_236 = eq %elementVal_234 %res_235
	br %res_236 <27> <28>

<27> if_true
	move %idVal_237 %varDef_716
	%res_238 = add %idVal_237 1
	move %varDef_720 %res_238
	move %idVal_239 %varDef_718
	move %arrayPtr_240 %varDef_688
	%arrayBase_241 = add %arrayPtr_240 4
	move %idVal_242 %varDef_720
	%offset_243 = mul %idVal_242 4
	%elementAddr_244 = add %arrayBase_241 %offset_243
	store %idVal_239 %elementAddr_244
	move %idVal_245 %varDef_719
	move %arrayPtr_246 %varDef_692
	%arrayBase_247 = add %arrayPtr_246 4
	move %idVal_248 %varDef_720
	%offset_249 = mul %idVal_248 4
	%elementAddr_250 = add %arrayBase_247 %offset_249
	store %idVal_245 %elementAddr_250
	move %idVal_251 %varDef_710
	%res_252 = add %idVal_251 1
	move %arrayPtr_253 %varDef_696
	%arrayBase_254 = add %arrayPtr_253 4
	move %idVal_255 %varDef_718
	%offset_256 = mul %idVal_255 4
	%elementAddr_257 = add %arrayBase_254 %offset_256
	%arrayPtr_258 = load %elementAddr_257
	%arrayBase_259 = add %arrayPtr_258 4
	move %idVal_260 %varDef_719
	%offset_261 = mul %idVal_260 4
	%elementAddr_262 = add %arrayBase_259 %offset_261
	store %res_252 %elementAddr_262
	move %idVal_263 %varDef_718
	move %idVal_264 %varDef_682
	%res_265 = eq %idVal_263 %idVal_264
	br %res_265 <33> <32>

<33> lhs_true
	move %idVal_266 %varDef_719
	move %idVal_267 %varDef_683
	%res_268 = eq %idVal_266 %idVal_267
	br %res_268 <31> <32>

<31> if_true
	move %varDef_721 1
	br <32>

<32> if_merge
	%varDef_722 = phi <27> %varDef_717 <33> %varDef_717 <31> %varDef_721
	br <28>

<28> if_merge
	%varDef_723 = phi <21> %varDef_716 <30> %varDef_716 <29> %varDef_716 <32> %varDef_720
	%varDef_724 = phi <21> %varDef_717 <30> %varDef_717 <29> %varDef_717 <32> %varDef_722
	move %arrayPtr_269 %varDef_688
	%arrayBase_270 = add %arrayPtr_269 4
	move %idVal_271 %varDef_704
	%offset_272 = mul %idVal_271 4
	%elementAddr_273 = add %arrayBase_270 %offset_272
	%elementVal_274 = load %elementAddr_273
	%res_275 = add %elementVal_274 1
	move %varDef_725 %res_275
	move %arrayPtr_276 %varDef_692
	%arrayBase_277 = add %arrayPtr_276 4
	move %idVal_278 %varDef_704
	%offset_279 = mul %idVal_278 4
	%elementAddr_280 = add %arrayBase_277 %offset_279
	%elementVal_281 = load %elementAddr_280
	%res_282 = sub %elementVal_281 2
	move %varDef_726 %res_282
	move %idVal_284 %varDef_725
	move %idVal_285 %varDef_677
	%res_283 = #check ( %idVal_284 %idVal_285 )
	br %res_283 <37> <35>

<37> lhs_true
	move %idVal_287 %varDef_726
	move %idVal_288 %varDef_677
	%res_286 = #check ( %idVal_287 %idVal_288 )
	br %res_286 <36> <35>

<36> lhs_true
	move %arrayPtr_289 %varDef_696
	%arrayBase_290 = add %arrayPtr_289 4
	move %idVal_291 %varDef_725
	%offset_292 = mul %idVal_291 4
	%elementAddr_293 = add %arrayBase_290 %offset_292
	%arrayPtr_294 = load %elementAddr_293
	%arrayBase_295 = add %arrayPtr_294 4
	move %idVal_296 %varDef_726
	%offset_297 = mul %idVal_296 4
	%elementAddr_298 = add %arrayBase_295 %offset_297
	%elementVal_299 = load %elementAddr_298
	%res_300 = neg 1
	%res_301 = eq %elementVal_299 %res_300
	br %res_301 <34> <35>

<34> if_true
	move %idVal_302 %varDef_723
	%res_303 = add %idVal_302 1
	move %varDef_727 %res_303
	move %idVal_304 %varDef_725
	move %arrayPtr_305 %varDef_688
	%arrayBase_306 = add %arrayPtr_305 4
	move %idVal_307 %varDef_727
	%offset_308 = mul %idVal_307 4
	%elementAddr_309 = add %arrayBase_306 %offset_308
	store %idVal_304 %elementAddr_309
	move %idVal_310 %varDef_726
	move %arrayPtr_311 %varDef_692
	%arrayBase_312 = add %arrayPtr_311 4
	move %idVal_313 %varDef_727
	%offset_314 = mul %idVal_313 4
	%elementAddr_315 = add %arrayBase_312 %offset_314
	store %idVal_310 %elementAddr_315
	move %idVal_316 %varDef_710
	%res_317 = add %idVal_316 1
	move %arrayPtr_318 %varDef_696
	%arrayBase_319 = add %arrayPtr_318 4
	move %idVal_320 %varDef_725
	%offset_321 = mul %idVal_320 4
	%elementAddr_322 = add %arrayBase_319 %offset_321
	%arrayPtr_323 = load %elementAddr_322
	%arrayBase_324 = add %arrayPtr_323 4
	move %idVal_325 %varDef_726
	%offset_326 = mul %idVal_325 4
	%elementAddr_327 = add %arrayBase_324 %offset_326
	store %res_317 %elementAddr_327
	move %idVal_328 %varDef_725
	move %idVal_329 %varDef_682
	%res_330 = eq %idVal_328 %idVal_329
	br %res_330 <40> <39>

<40> lhs_true
	move %idVal_331 %varDef_726
	move %idVal_332 %varDef_683
	%res_333 = eq %idVal_331 %idVal_332
	br %res_333 <38> <39>

<38> if_true
	move %varDef_728 1
	br <39>

<39> if_merge
	%varDef_729 = phi <34> %varDef_724 <40> %varDef_724 <38> %varDef_728
	br <35>

<35> if_merge
	%varDef_730 = phi <28> %varDef_723 <37> %varDef_723 <36> %varDef_723 <39> %varDef_727
	%varDef_731 = phi <28> %varDef_724 <37> %varDef_724 <36> %varDef_724 <39> %varDef_729
	move %arrayPtr_334 %varDef_688
	%arrayBase_335 = add %arrayPtr_334 4
	move %idVal_336 %varDef_704
	%offset_337 = mul %idVal_336 4
	%elementAddr_338 = add %arrayBase_335 %offset_337
	%elementVal_339 = load %elementAddr_338
	%res_340 = add %elementVal_339 1
	move %varDef_732 %res_340
	move %arrayPtr_341 %varDef_692
	%arrayBase_342 = add %arrayPtr_341 4
	move %idVal_343 %varDef_704
	%offset_344 = mul %idVal_343 4
	%elementAddr_345 = add %arrayBase_342 %offset_344
	%elementVal_346 = load %elementAddr_345
	%res_347 = add %elementVal_346 2
	move %varDef_733 %res_347
	move %idVal_349 %varDef_732
	move %idVal_350 %varDef_677
	%res_348 = #check ( %idVal_349 %idVal_350 )
	br %res_348 <44> <42>

<44> lhs_true
	move %idVal_352 %varDef_733
	move %idVal_353 %varDef_677
	%res_351 = #check ( %idVal_352 %idVal_353 )
	br %res_351 <43> <42>

<43> lhs_true
	move %arrayPtr_354 %varDef_696
	%arrayBase_355 = add %arrayPtr_354 4
	move %idVal_356 %varDef_732
	%offset_357 = mul %idVal_356 4
	%elementAddr_358 = add %arrayBase_355 %offset_357
	%arrayPtr_359 = load %elementAddr_358
	%arrayBase_360 = add %arrayPtr_359 4
	move %idVal_361 %varDef_733
	%offset_362 = mul %idVal_361 4
	%elementAddr_363 = add %arrayBase_360 %offset_362
	%elementVal_364 = load %elementAddr_363
	%res_365 = neg 1
	%res_366 = eq %elementVal_364 %res_365
	br %res_366 <41> <42>

<41> if_true
	move %idVal_367 %varDef_730
	%res_368 = add %idVal_367 1
	move %varDef_734 %res_368
	move %idVal_369 %varDef_732
	move %arrayPtr_370 %varDef_688
	%arrayBase_371 = add %arrayPtr_370 4
	move %idVal_372 %varDef_734
	%offset_373 = mul %idVal_372 4
	%elementAddr_374 = add %arrayBase_371 %offset_373
	store %idVal_369 %elementAddr_374
	move %idVal_375 %varDef_733
	move %arrayPtr_376 %varDef_692
	%arrayBase_377 = add %arrayPtr_376 4
	move %idVal_378 %varDef_734
	%offset_379 = mul %idVal_378 4
	%elementAddr_380 = add %arrayBase_377 %offset_379
	store %idVal_375 %elementAddr_380
	move %idVal_381 %varDef_710
	%res_382 = add %idVal_381 1
	move %arrayPtr_383 %varDef_696
	%arrayBase_384 = add %arrayPtr_383 4
	move %idVal_385 %varDef_732
	%offset_386 = mul %idVal_385 4
	%elementAddr_387 = add %arrayBase_384 %offset_386
	%arrayPtr_388 = load %elementAddr_387
	%arrayBase_389 = add %arrayPtr_388 4
	move %idVal_390 %varDef_733
	%offset_391 = mul %idVal_390 4
	%elementAddr_392 = add %arrayBase_389 %offset_391
	store %res_382 %elementAddr_392
	move %idVal_393 %varDef_732
	move %idVal_394 %varDef_682
	%res_395 = eq %idVal_393 %idVal_394
	br %res_395 <47> <46>

<47> lhs_true
	move %idVal_396 %varDef_733
	move %idVal_397 %varDef_683
	%res_398 = eq %idVal_396 %idVal_397
	br %res_398 <45> <46>

<45> if_true
	move %varDef_735 1
	br <46>

<46> if_merge
	%varDef_736 = phi <41> %varDef_731 <47> %varDef_731 <45> %varDef_735
	br <42>

<42> if_merge
	%varDef_737 = phi <35> %varDef_730 <44> %varDef_730 <43> %varDef_730 <46> %varDef_734
	%varDef_738 = phi <35> %varDef_731 <44> %varDef_731 <43> %varDef_731 <46> %varDef_736
	move %arrayPtr_399 %varDef_688
	%arrayBase_400 = add %arrayPtr_399 4
	move %idVal_401 %varDef_704
	%offset_402 = mul %idVal_401 4
	%elementAddr_403 = add %arrayBase_400 %offset_402
	%elementVal_404 = load %elementAddr_403
	%res_405 = sub %elementVal_404 2
	move %varDef_739 %res_405
	move %arrayPtr_406 %varDef_692
	%arrayBase_407 = add %arrayPtr_406 4
	move %idVal_408 %varDef_704
	%offset_409 = mul %idVal_408 4
	%elementAddr_410 = add %arrayBase_407 %offset_409
	%elementVal_411 = load %elementAddr_410
	%res_412 = sub %elementVal_411 1
	move %varDef_740 %res_412
	move %idVal_414 %varDef_739
	move %idVal_415 %varDef_677
	%res_413 = #check ( %idVal_414 %idVal_415 )
	br %res_413 <51> <49>

<51> lhs_true
	move %idVal_417 %varDef_740
	move %idVal_418 %varDef_677
	%res_416 = #check ( %idVal_417 %idVal_418 )
	br %res_416 <50> <49>

<50> lhs_true
	move %arrayPtr_419 %varDef_696
	%arrayBase_420 = add %arrayPtr_419 4
	move %idVal_421 %varDef_739
	%offset_422 = mul %idVal_421 4
	%elementAddr_423 = add %arrayBase_420 %offset_422
	%arrayPtr_424 = load %elementAddr_423
	%arrayBase_425 = add %arrayPtr_424 4
	move %idVal_426 %varDef_740
	%offset_427 = mul %idVal_426 4
	%elementAddr_428 = add %arrayBase_425 %offset_427
	%elementVal_429 = load %elementAddr_428
	%res_430 = neg 1
	%res_431 = eq %elementVal_429 %res_430
	br %res_431 <48> <49>

<48> if_true
	move %idVal_432 %varDef_737
	%res_433 = add %idVal_432 1
	move %varDef_741 %res_433
	move %idVal_434 %varDef_739
	move %arrayPtr_435 %varDef_688
	%arrayBase_436 = add %arrayPtr_435 4
	move %idVal_437 %varDef_741
	%offset_438 = mul %idVal_437 4
	%elementAddr_439 = add %arrayBase_436 %offset_438
	store %idVal_434 %elementAddr_439
	move %idVal_440 %varDef_740
	move %arrayPtr_441 %varDef_692
	%arrayBase_442 = add %arrayPtr_441 4
	move %idVal_443 %varDef_741
	%offset_444 = mul %idVal_443 4
	%elementAddr_445 = add %arrayBase_442 %offset_444
	store %idVal_440 %elementAddr_445
	move %idVal_446 %varDef_710
	%res_447 = add %idVal_446 1
	move %arrayPtr_448 %varDef_696
	%arrayBase_449 = add %arrayPtr_448 4
	move %idVal_450 %varDef_739
	%offset_451 = mul %idVal_450 4
	%elementAddr_452 = add %arrayBase_449 %offset_451
	%arrayPtr_453 = load %elementAddr_452
	%arrayBase_454 = add %arrayPtr_453 4
	move %idVal_455 %varDef_740
	%offset_456 = mul %idVal_455 4
	%elementAddr_457 = add %arrayBase_454 %offset_456
	store %res_447 %elementAddr_457
	move %idVal_458 %varDef_739
	move %idVal_459 %varDef_682
	%res_460 = eq %idVal_458 %idVal_459
	br %res_460 <54> <53>

<54> lhs_true
	move %idVal_461 %varDef_740
	move %idVal_462 %varDef_683
	%res_463 = eq %idVal_461 %idVal_462
	br %res_463 <52> <53>

<52> if_true
	move %varDef_742 1
	br <53>

<53> if_merge
	%varDef_743 = phi <48> %varDef_738 <54> %varDef_738 <52> %varDef_742
	br <49>

<49> if_merge
	%varDef_744 = phi <42> %varDef_737 <51> %varDef_737 <50> %varDef_737 <53> %varDef_741
	%varDef_745 = phi <42> %varDef_738 <51> %varDef_738 <50> %varDef_738 <53> %varDef_743
	move %arrayPtr_464 %varDef_688
	%arrayBase_465 = add %arrayPtr_464 4
	move %idVal_466 %varDef_704
	%offset_467 = mul %idVal_466 4
	%elementAddr_468 = add %arrayBase_465 %offset_467
	%elementVal_469 = load %elementAddr_468
	%res_470 = sub %elementVal_469 2
	move %varDef_746 %res_470
	move %arrayPtr_471 %varDef_692
	%arrayBase_472 = add %arrayPtr_471 4
	move %idVal_473 %varDef_704
	%offset_474 = mul %idVal_473 4
	%elementAddr_475 = add %arrayBase_472 %offset_474
	%elementVal_476 = load %elementAddr_475
	%res_477 = add %elementVal_476 1
	move %varDef_747 %res_477
	move %idVal_479 %varDef_746
	move %idVal_480 %varDef_677
	%res_478 = #check ( %idVal_479 %idVal_480 )
	br %res_478 <58> <56>

<58> lhs_true
	move %idVal_482 %varDef_747
	move %idVal_483 %varDef_677
	%res_481 = #check ( %idVal_482 %idVal_483 )
	br %res_481 <57> <56>

<57> lhs_true
	move %arrayPtr_484 %varDef_696
	%arrayBase_485 = add %arrayPtr_484 4
	move %idVal_486 %varDef_746
	%offset_487 = mul %idVal_486 4
	%elementAddr_488 = add %arrayBase_485 %offset_487
	%arrayPtr_489 = load %elementAddr_488
	%arrayBase_490 = add %arrayPtr_489 4
	move %idVal_491 %varDef_747
	%offset_492 = mul %idVal_491 4
	%elementAddr_493 = add %arrayBase_490 %offset_492
	%elementVal_494 = load %elementAddr_493
	%res_495 = neg 1
	%res_496 = eq %elementVal_494 %res_495
	br %res_496 <55> <56>

<55> if_true
	move %idVal_497 %varDef_744
	%res_498 = add %idVal_497 1
	move %varDef_748 %res_498
	move %idVal_499 %varDef_746
	move %arrayPtr_500 %varDef_688
	%arrayBase_501 = add %arrayPtr_500 4
	move %idVal_502 %varDef_748
	%offset_503 = mul %idVal_502 4
	%elementAddr_504 = add %arrayBase_501 %offset_503
	store %idVal_499 %elementAddr_504
	move %idVal_505 %varDef_747
	move %arrayPtr_506 %varDef_692
	%arrayBase_507 = add %arrayPtr_506 4
	move %idVal_508 %varDef_748
	%offset_509 = mul %idVal_508 4
	%elementAddr_510 = add %arrayBase_507 %offset_509
	store %idVal_505 %elementAddr_510
	move %idVal_511 %varDef_710
	%res_512 = add %idVal_511 1
	move %arrayPtr_513 %varDef_696
	%arrayBase_514 = add %arrayPtr_513 4
	move %idVal_515 %varDef_746
	%offset_516 = mul %idVal_515 4
	%elementAddr_517 = add %arrayBase_514 %offset_516
	%arrayPtr_518 = load %elementAddr_517
	%arrayBase_519 = add %arrayPtr_518 4
	move %idVal_520 %varDef_747
	%offset_521 = mul %idVal_520 4
	%elementAddr_522 = add %arrayBase_519 %offset_521
	store %res_512 %elementAddr_522
	move %idVal_523 %varDef_746
	move %idVal_524 %varDef_682
	%res_525 = eq %idVal_523 %idVal_524
	br %res_525 <61> <60>

<61> lhs_true
	move %idVal_526 %varDef_747
	move %idVal_527 %varDef_683
	%res_528 = eq %idVal_526 %idVal_527
	br %res_528 <59> <60>

<59> if_true
	move %varDef_749 1
	br <60>

<60> if_merge
	%varDef_750 = phi <55> %varDef_745 <61> %varDef_745 <59> %varDef_749
	br <56>

<56> if_merge
	%varDef_751 = phi <49> %varDef_744 <58> %varDef_744 <57> %varDef_744 <60> %varDef_748
	%varDef_752 = phi <49> %varDef_745 <58> %varDef_745 <57> %varDef_745 <60> %varDef_750
	move %arrayPtr_529 %varDef_688
	%arrayBase_530 = add %arrayPtr_529 4
	move %idVal_531 %varDef_704
	%offset_532 = mul %idVal_531 4
	%elementAddr_533 = add %arrayBase_530 %offset_532
	%elementVal_534 = load %elementAddr_533
	%res_535 = add %elementVal_534 2
	move %varDef_753 %res_535
	move %arrayPtr_536 %varDef_692
	%arrayBase_537 = add %arrayPtr_536 4
	move %idVal_538 %varDef_704
	%offset_539 = mul %idVal_538 4
	%elementAddr_540 = add %arrayBase_537 %offset_539
	%elementVal_541 = load %elementAddr_540
	%res_542 = sub %elementVal_541 1
	move %varDef_754 %res_542
	move %idVal_544 %varDef_753
	move %idVal_545 %varDef_677
	%res_543 = #check ( %idVal_544 %idVal_545 )
	br %res_543 <65> <63>

<65> lhs_true
	move %idVal_547 %varDef_754
	move %idVal_548 %varDef_677
	%res_546 = #check ( %idVal_547 %idVal_548 )
	br %res_546 <64> <63>

<64> lhs_true
	move %arrayPtr_549 %varDef_696
	%arrayBase_550 = add %arrayPtr_549 4
	move %idVal_551 %varDef_753
	%offset_552 = mul %idVal_551 4
	%elementAddr_553 = add %arrayBase_550 %offset_552
	%arrayPtr_554 = load %elementAddr_553
	%arrayBase_555 = add %arrayPtr_554 4
	move %idVal_556 %varDef_754
	%offset_557 = mul %idVal_556 4
	%elementAddr_558 = add %arrayBase_555 %offset_557
	%elementVal_559 = load %elementAddr_558
	%res_560 = neg 1
	%res_561 = eq %elementVal_559 %res_560
	br %res_561 <62> <63>

<62> if_true
	move %idVal_562 %varDef_751
	%res_563 = add %idVal_562 1
	move %varDef_755 %res_563
	move %idVal_564 %varDef_753
	move %arrayPtr_565 %varDef_688
	%arrayBase_566 = add %arrayPtr_565 4
	move %idVal_567 %varDef_755
	%offset_568 = mul %idVal_567 4
	%elementAddr_569 = add %arrayBase_566 %offset_568
	store %idVal_564 %elementAddr_569
	move %idVal_570 %varDef_754
	move %arrayPtr_571 %varDef_692
	%arrayBase_572 = add %arrayPtr_571 4
	move %idVal_573 %varDef_755
	%offset_574 = mul %idVal_573 4
	%elementAddr_575 = add %arrayBase_572 %offset_574
	store %idVal_570 %elementAddr_575
	move %idVal_576 %varDef_710
	%res_577 = add %idVal_576 1
	move %arrayPtr_578 %varDef_696
	%arrayBase_579 = add %arrayPtr_578 4
	move %idVal_580 %varDef_753
	%offset_581 = mul %idVal_580 4
	%elementAddr_582 = add %arrayBase_579 %offset_581
	%arrayPtr_583 = load %elementAddr_582
	%arrayBase_584 = add %arrayPtr_583 4
	move %idVal_585 %varDef_754
	%offset_586 = mul %idVal_585 4
	%elementAddr_587 = add %arrayBase_584 %offset_586
	store %res_577 %elementAddr_587
	move %idVal_588 %varDef_753
	move %idVal_589 %varDef_682
	%res_590 = eq %idVal_588 %idVal_589
	br %res_590 <68> <67>

<68> lhs_true
	move %idVal_591 %varDef_754
	move %idVal_592 %varDef_683
	%res_593 = eq %idVal_591 %idVal_592
	br %res_593 <66> <67>

<66> if_true
	move %varDef_756 1
	br <67>

<67> if_merge
	%varDef_757 = phi <62> %varDef_752 <68> %varDef_752 <66> %varDef_756
	br <63>

<63> if_merge
	%varDef_758 = phi <56> %varDef_751 <65> %varDef_751 <64> %varDef_751 <67> %varDef_755
	%varDef_759 = phi <56> %varDef_752 <65> %varDef_752 <64> %varDef_752 <67> %varDef_757
	move %arrayPtr_594 %varDef_688
	%arrayBase_595 = add %arrayPtr_594 4
	move %idVal_596 %varDef_704
	%offset_597 = mul %idVal_596 4
	%elementAddr_598 = add %arrayBase_595 %offset_597
	%elementVal_599 = load %elementAddr_598
	%res_600 = add %elementVal_599 2
	move %varDef_760 %res_600
	move %arrayPtr_601 %varDef_692
	%arrayBase_602 = add %arrayPtr_601 4
	move %idVal_603 %varDef_704
	%offset_604 = mul %idVal_603 4
	%elementAddr_605 = add %arrayBase_602 %offset_604
	%elementVal_606 = load %elementAddr_605
	%res_607 = add %elementVal_606 1
	move %varDef_761 %res_607
	move %idVal_609 %varDef_760
	move %idVal_610 %varDef_677
	%res_608 = #check ( %idVal_609 %idVal_610 )
	br %res_608 <72> <70>

<72> lhs_true
	move %idVal_612 %varDef_761
	move %idVal_613 %varDef_677
	%res_611 = #check ( %idVal_612 %idVal_613 )
	br %res_611 <71> <70>

<71> lhs_true
	move %arrayPtr_614 %varDef_696
	%arrayBase_615 = add %arrayPtr_614 4
	move %idVal_616 %varDef_760
	%offset_617 = mul %idVal_616 4
	%elementAddr_618 = add %arrayBase_615 %offset_617
	%arrayPtr_619 = load %elementAddr_618
	%arrayBase_620 = add %arrayPtr_619 4
	move %idVal_621 %varDef_761
	%offset_622 = mul %idVal_621 4
	%elementAddr_623 = add %arrayBase_620 %offset_622
	%elementVal_624 = load %elementAddr_623
	%res_625 = neg 1
	%res_626 = eq %elementVal_624 %res_625
	br %res_626 <69> <70>

<69> if_true
	move %idVal_627 %varDef_758
	%res_628 = add %idVal_627 1
	move %varDef_762 %res_628
	move %idVal_629 %varDef_760
	move %arrayPtr_630 %varDef_688
	%arrayBase_631 = add %arrayPtr_630 4
	move %idVal_632 %varDef_762
	%offset_633 = mul %idVal_632 4
	%elementAddr_634 = add %arrayBase_631 %offset_633
	store %idVal_629 %elementAddr_634
	move %idVal_635 %varDef_761
	move %arrayPtr_636 %varDef_692
	%arrayBase_637 = add %arrayPtr_636 4
	move %idVal_638 %varDef_762
	%offset_639 = mul %idVal_638 4
	%elementAddr_640 = add %arrayBase_637 %offset_639
	store %idVal_635 %elementAddr_640
	move %idVal_641 %varDef_710
	%res_642 = add %idVal_641 1
	move %arrayPtr_643 %varDef_696
	%arrayBase_644 = add %arrayPtr_643 4
	move %idVal_645 %varDef_760
	%offset_646 = mul %idVal_645 4
	%elementAddr_647 = add %arrayBase_644 %offset_646
	%arrayPtr_648 = load %elementAddr_647
	%arrayBase_649 = add %arrayPtr_648 4
	move %idVal_650 %varDef_761
	%offset_651 = mul %idVal_650 4
	%elementAddr_652 = add %arrayBase_649 %offset_651
	store %res_642 %elementAddr_652
	move %idVal_653 %varDef_760
	move %idVal_654 %varDef_682
	%res_655 = eq %idVal_653 %idVal_654
	br %res_655 <75> <74>

<75> lhs_true
	move %idVal_656 %varDef_761
	move %idVal_657 %varDef_683
	%res_658 = eq %idVal_656 %idVal_657
	br %res_658 <73> <74>

<73> if_true
	move %varDef_763 1
	br <74>

<74> if_merge
	%varDef_764 = phi <69> %varDef_759 <75> %varDef_759 <73> %varDef_763
	br <70>

<70> if_merge
	%varDef_765 = phi <63> %varDef_758 <72> %varDef_758 <71> %varDef_758 <74> %varDef_762
	%varDef_766 = phi <63> %varDef_759 <72> %varDef_759 <71> %varDef_759 <74> %varDef_764
	move %idVal_659 %varDef_766
	%res_660 = eq %idVal_659 1
	br %res_660 <76> <77>

<76> if_true
	br <19>

<77> if_merge
	move %idVal_661 %varDef_704
	%res_662 = add %idVal_661 1
	move %varDef_767 %res_662
	br <17>

<19> while_end
	%varDef_768 = phi <17> %varDef_705 <76> %varDef_765
	%varDef_769 = phi <17> %varDef_706 <76> %varDef_766
	%varDef_770 = phi <17> %varDef_707 <76> %varDef_710
	%varDef_771 = phi <17> %varDef_708 <76> %varDef_760
	%varDef_772 = phi <17> %varDef_709 <76> %varDef_761
	move %idVal_663 %varDef_769
	%res_664 = eq %idVal_663 1
	br %res_664 <78> <79>

<78> if_true
	move %arrayPtr_666 %varDef_696
	%arrayBase_667 = add %arrayPtr_666 4
	move %idVal_668 %varDef_682
	%offset_669 = mul %idVal_668 4
	%elementAddr_670 = add %arrayBase_667 %offset_669
	%arrayPtr_671 = load %elementAddr_670
	%arrayBase_672 = add %arrayPtr_671 4
	move %idVal_673 %varDef_683
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

