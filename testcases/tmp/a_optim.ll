@N

@total

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
	store 0 @total
	ret 

}

define main ( ) {
<0> entry
	%varAddr_247 = alloca 4
	%varAddr_246 = alloca 4
	%varAddr_245 = alloca 4
	%varAddr_244 = alloca 4
	%varAddr_243 = alloca 4
	%varAddr_242 = alloca 4
	%varAddr_241 = alloca 4
	%varAddr_240 = alloca 4
	%varAddr_239 = alloca 4
	%varAddr_238 = alloca 4
	%varAddr_237 = alloca 4
	%varAddr_236 = alloca 4
	%varAddr_235 = alloca 4
	%varAddr_234 = alloca 4
	%varAddr_233 = alloca 4
	%varAddr_232 = alloca 4
	%varAddr_231 = alloca 4
	%varAddr_230 = alloca 4
	%varAddr_229 = alloca 4
	%varAddr_228 = alloca 4
	%varAddr_227 = alloca 4
	%varAddr_226 = alloca 4
	%varAddr_225 = alloca 4
	%varAddr_224 = alloca 4
	%varAddr_223 = alloca 4
	%varAddr_222 = alloca 4
	%varAddr_221 = alloca 4
	%tmp_173 = load @total
	%res_6 = getInt ( )
	store 1 %varAddr_242
	store 0 %varAddr_243
	store 0 %varAddr_244
	store 0 %varAddr_245
	store 0 %varAddr_246
	store %tmp_173 %varAddr_247
	br <1>

<1> for_cond
	%varDef_181 = load %varAddr_242
	%varDef_183 = load %varAddr_243
	%varDef_184 = load %varAddr_244
	%varDef_185 = load %varAddr_245
	%varDef_186 = load %varAddr_246
	%varDef_187 = load %varAddr_247
	%res_9 = le %varDef_181 %res_6
	br %res_9 <2> <4>

<2> for_body
	store 1 %varAddr_230
	store %varDef_183 %varAddr_231
	store %varDef_184 %varAddr_232
	store %varDef_185 %varAddr_233
	store %varDef_186 %varAddr_234
	store %varDef_187 %varAddr_235
	br <5>

<5> for_cond
	%varDef_189 = load %varAddr_230
	%varDef_190 = load %varAddr_231
	%varDef_191 = load %varAddr_232
	%varDef_192 = load %varAddr_233
	%varDef_193 = load %varAddr_234
	%varDef_194 = load %varAddr_235
	%res_12 = le %varDef_189 %res_6
	br %res_12 <6> <3>

<6> for_body
	store 1 %varAddr_236
	store %varDef_191 %varAddr_237
	store %varDef_192 %varAddr_238
	store %varDef_193 %varAddr_239
	store %varDef_194 %varAddr_240
	br <9>

<9> for_cond
	%varDef_196 = load %varAddr_236
	%varDef_197 = load %varAddr_237
	%varDef_198 = load %varAddr_238
	%varDef_199 = load %varAddr_239
	%varDef_200 = load %varAddr_240
	%res_15 = le %varDef_196 %res_6
	br %res_15 <10> <7>

<10> for_body
	store 1 %varAddr_226
	store %varDef_198 %varAddr_227
	store %varDef_199 %varAddr_228
	store %varDef_200 %varAddr_229
	br <13>

<13> for_cond
	%varDef_202 = load %varAddr_226
	%varDef_203 = load %varAddr_227
	%varDef_204 = load %varAddr_228
	%varDef_205 = load %varAddr_229
	%res_18 = le %varDef_202 %res_6
	br %res_18 <14> <11>

<14> for_body
	store 1 %varAddr_221
	store %varDef_204 %varAddr_222
	store %varDef_205 %varAddr_223
	br <17>

<17> for_cond
	%varDef_207 = load %varAddr_221
	%varDef_208 = load %varAddr_222
	%varDef_209 = load %varAddr_223
	%res_21 = le %varDef_207 %res_6
	br %res_21 <18> <15>

<18> for_body
	store 1 %varAddr_224
	store %varDef_209 %varAddr_225
	br <21>

<21> for_cond
	%varDef_211 = load %varAddr_224
	%varDef_212 = load %varAddr_225
	%res_24 = le %varDef_211 %res_6
	br %res_24 <22> <19>

<22> for_body
	%res_27 = neq %varDef_181 %varDef_189
	br %res_27 <66> <93>

<93> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<66> lhs_true
	%res_30 = neq %varDef_181 %varDef_196
	br %res_30 <65> <104>

<104> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<65> lhs_true
	%res_33 = neq %varDef_181 %varDef_202
	br %res_33 <64> <72>

<72> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<64> lhs_true
	%res_36 = neq %varDef_181 %varDef_207
	br %res_36 <63> <82>

<82> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<63> lhs_true
	%res_39 = neq %varDef_181 %varDef_211
	br %res_39 <62> <98>

<98> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<62> lhs_true
	%res_42 = neq %varDef_181 99
	br %res_42 <61> <92>

<92> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<61> lhs_true
	%res_45 = neq %varDef_181 100
	br %res_45 <60> <73>

<73> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<60> lhs_true
	%res_48 = neq %varDef_181 101
	br %res_48 <59> <68>

<68> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<59> lhs_true
	%res_51 = neq %varDef_181 102
	br %res_51 <58> <83>

<83> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<58> lhs_true
	%res_54 = neq %varDef_189 %varDef_196
	br %res_54 <57> <85>

<85> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<57> lhs_true
	%res_57 = neq %varDef_189 %varDef_202
	br %res_57 <56> <86>

<86> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<56> lhs_true
	%res_60 = neq %varDef_189 %varDef_207
	br %res_60 <55> <88>

<88> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<55> lhs_true
	%res_63 = neq %varDef_189 %varDef_211
	br %res_63 <54> <95>

<95> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<54> lhs_true
	%res_66 = neq %varDef_189 99
	br %res_66 <53> <74>

<74> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<53> lhs_true
	%res_69 = neq %varDef_189 100
	br %res_69 <52> <100>

<100> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<52> lhs_true
	%res_72 = neq %varDef_189 101
	br %res_72 <51> <94>

<94> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<51> lhs_true
	%res_75 = neq %varDef_189 102
	br %res_75 <50> <102>

<102> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<50> lhs_true
	%res_78 = neq %varDef_196 %varDef_202
	br %res_78 <49> <90>

<90> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<49> lhs_true
	%res_81 = neq %varDef_196 %varDef_207
	br %res_81 <48> <87>

<87> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<48> lhs_true
	%res_84 = neq %varDef_196 %varDef_211
	br %res_84 <47> <89>

<89> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<47> lhs_true
	%res_87 = neq %varDef_196 99
	br %res_87 <46> <78>

<78> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<46> lhs_true
	%res_90 = neq %varDef_196 100
	br %res_90 <45> <77>

<77> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<45> lhs_true
	%res_93 = neq %varDef_196 101
	br %res_93 <44> <71>

<71> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<44> lhs_true
	%res_96 = neq %varDef_196 102
	br %res_96 <43> <76>

<76> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<43> lhs_true
	%res_99 = neq %varDef_202 %varDef_207
	br %res_99 <42> <96>

<96> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<42> lhs_true
	%res_102 = neq %varDef_202 %varDef_211
	br %res_102 <41> <99>

<99> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<41> lhs_true
	%res_105 = neq %varDef_202 99
	br %res_105 <40> <79>

<79> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<40> lhs_true
	%res_108 = neq %varDef_202 100
	br %res_108 <39> <80>

<80> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<39> lhs_true
	%res_111 = neq %varDef_202 101
	br %res_111 <38> <103>

<103> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<38> lhs_true
	%res_114 = neq %varDef_202 102
	br %res_114 <37> <67>

<67> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<37> lhs_true
	%res_117 = neq %varDef_207 %varDef_211
	br %res_117 <36> <69>

<69> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<36> lhs_true
	%res_120 = neq %varDef_207 99
	br %res_120 <35> <105>

<105> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<35> lhs_true
	%res_123 = neq %varDef_207 100
	br %res_123 <34> <91>

<91> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<34> lhs_true
	%res_126 = neq %varDef_207 101
	br %res_126 <33> <84>

<84> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<33> lhs_true
	%res_129 = neq %varDef_207 102
	br %res_129 <32> <70>

<70> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<32> lhs_true
	%res_132 = neq %varDef_211 99
	br %res_132 <31> <101>

<101> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<31> lhs_true
	%res_135 = neq %varDef_211 100
	br %res_135 <30> <97>

<97> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<30> lhs_true
	%res_138 = neq %varDef_211 101
	br %res_138 <29> <75>

<75> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<29> lhs_true
	%res_141 = neq %varDef_211 102
	br %res_141 <28> <81>

<81> parallel_copy
	store %varDef_212 %varAddr_241
	br <23>

<28> lhs_true
	%newVal_150 = inc %varDef_212
	store %newVal_150 %varAddr_241
	br <23>

<23> for_step
	%varDef_214 = load %varAddr_241
	%newVal_153 = inc %varDef_211
	store %newVal_153 %varAddr_224
	store %varDef_214 %varAddr_225
	br <21>

<19> for_step
	%newVal_156 = inc %varDef_207
	store %newVal_156 %varAddr_221
	store %varDef_211 %varAddr_222
	store %varDef_212 %varAddr_223
	br <17>

<15> for_step
	%newVal_159 = inc %varDef_202
	store %newVal_159 %varAddr_226
	store %varDef_207 %varAddr_227
	store %varDef_208 %varAddr_228
	store %varDef_209 %varAddr_229
	br <13>

<11> for_step
	%newVal_162 = inc %varDef_196
	store %newVal_162 %varAddr_236
	store %varDef_202 %varAddr_237
	store %varDef_203 %varAddr_238
	store %varDef_204 %varAddr_239
	store %varDef_205 %varAddr_240
	br <9>

<7> for_step
	%newVal_165 = inc %varDef_189
	store %newVal_165 %varAddr_230
	store %varDef_196 %varAddr_231
	store %varDef_197 %varAddr_232
	store %varDef_198 %varAddr_233
	store %varDef_199 %varAddr_234
	store %varDef_200 %varAddr_235
	br <5>

<3> for_step
	%newVal_168 = inc %varDef_181
	store %newVal_168 %varAddr_242
	store %varDef_190 %varAddr_243
	store %varDef_191 %varAddr_244
	store %varDef_192 %varAddr_245
	store %varDef_193 %varAddr_246
	store %varDef_194 %varAddr_247
	br <1>

<4> for_end
	%res_169 = toString ( %varDef_187 )
	println ( %res_169 )
	store %varDef_187 @total
	store %res_6 @N
	ret 0

}

