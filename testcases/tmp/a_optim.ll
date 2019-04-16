@n

@h

@now

@a

@A

@M

@Q

@R

@seed

$str_0 " "

$str_1 ""

$str_2 "Sorry, the number n must be a number s.t. there exists i satisfying n=1+2+...+i"

$str_3 "Let's start!"

$str_4 "Total: "

$str_5 " step(s)"

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
	store 48271 @A
	store 2147483647 @M
	store 1 @seed
	ret 

}

define random ( ) {
<0> entry
	%idVal_1 = load @A
	%idVal_2 = load @seed
	%idVal_3 = load @Q
	%res_4 = mod %idVal_2 %idVal_3
	%res_5 = mul %idVal_1 %res_4
	%idVal_6 = load @R
	%idVal_7 = load @seed
	%idVal_8 = load @Q
	%res_9 = div %idVal_7 %idVal_8
	%res_10 = mul %idVal_6 %res_9
	%res_11 = sub %res_5 %res_10
	%res_13 = ge %res_11 0
	br %res_13 <1> <2>

<1> if_true
	store %res_11 @seed
	br <3>

<2> if_false
	%idVal_16 = load @M
	%res_17 = add %res_11 %idVal_16
	store %res_17 @seed
	br <3>

<3> if_merge
	%idVal_18 = load @seed
	ret %idVal_18

}

define initialize ( %argVal_0 ) {
<0> entry
	store %argVal_0 @seed
	ret 

}

define swap ( %argVal_0 %argVal_2 ) {
<0> entry
	%arrayPtr_5 = load @a
	%arrayBase_6 = add %arrayPtr_5 8
	%offset_8 = mul %argVal_0 8
	%elementAddr_9 = add %arrayBase_6 %offset_8
	%elementVal_10 = load %elementAddr_9
	%arrayPtr_11 = load @a
	%arrayBase_12 = add %arrayPtr_11 8
	%offset_14 = mul %argVal_2 8
	%elementAddr_15 = add %arrayBase_12 %offset_14
	%elementVal_16 = load %elementAddr_15
	%arrayPtr_17 = load @a
	%arrayBase_18 = add %arrayPtr_17 8
	%elementAddr_21 = add %arrayBase_18 %offset_8
	store %elementVal_16 %elementAddr_21
	%arrayPtr_23 = load @a
	%arrayBase_24 = add %arrayPtr_23 8
	%elementAddr_27 = add %arrayBase_24 %offset_14
	store %elementVal_10 %elementAddr_27
	ret 

}

define pd ( %argVal_0 ) {
<0> entry
	br <1>

<1> for_cond
	%idVal_2 = load @h
	%res_4 = le %idVal_2 %argVal_0
	br %res_4 <2> <4>

<2> for_body
	%idVal_6 = load @h
	%idVal_7 = load @h
	%res_8 = add %idVal_7 1
	%res_9 = mul %idVal_6 %res_8
	%res_10 = div %res_9 2
	%res_11 = eq %argVal_0 %res_10
	br %res_11 <5> <3>

<5> if_true
	ret 1

<3> for_step
	%oldVal_13 = load @h
	%newVal_14 = inc %oldVal_13
	store %newVal_14 @h
	br <1>

<4> for_end
	ret 0

}

define show ( ) {
<0> entry
	%varAddr_18 = alloca 4
	store 0 %varAddr_18
	br <1>

<1> for_cond
	%varDef_16 = load %varAddr_18
	%idVal_2 = load @now
	%res_3 = lt %varDef_16 %idVal_2
	br %res_3 <2> <4>

<2> for_body
	%arrayPtr_5 = load @a
	%arrayBase_6 = add %arrayPtr_5 8
	%offset_8 = mul %varDef_16 8
	%elementAddr_9 = add %arrayBase_6 %offset_8
	%elementVal_10 = load %elementAddr_9
	%res_4 = toString ( %elementVal_10 )
	%res_11 = _stringAdd ( %res_4 $str_0 )
	print ( %res_11 )
	%newVal_14 = inc %varDef_16
	store %newVal_14 %varAddr_18
	br <1>

<4> for_end
	println ( $str_1 )
	ret 

}

define win ( ) {
<0> entry
	%varAddr_117 = alloca 4
	%varAddr_116 = alloca 4
	%varAddr_115 = alloca 4
	%varAddr_114 = alloca 4
	%varAddr_113 = alloca 4
	%varAddr_112 = alloca 4
	%varAddr_111 = alloca 4
	%arrayPtr_3 = malloc 816
	store 101 %arrayPtr_3
	%idVal_7 = load @now
	%idVal_8 = load @h
	%res_9 = neq %idVal_7 %idVal_8
	br %res_9 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	store 0 %varAddr_117
	br <3>

<3> for_cond
	%varDef_95 = load %varAddr_117
	%idVal_11 = load @now
	%res_12 = lt %varDef_95 %idVal_11
	br %res_12 <4> <6>

<4> for_body
	%arrayPtr_13 = load @a
	%arrayBase_14 = add %arrayPtr_13 8
	%offset_16 = mul %varDef_95 8
	%elementAddr_17 = add %arrayBase_14 %offset_16
	%elementVal_18 = load %elementAddr_17
	%arrayBase_20 = add %arrayPtr_3 8
	%elementAddr_23 = add %arrayBase_20 %offset_16
	store %elementVal_18 %elementAddr_23
	%newVal_26 = inc %varDef_95
	store %newVal_26 %varAddr_117
	br <3>

<6> for_end
	store 0 %varAddr_115
	store 0 %varAddr_116
	br <7>

<7> for_cond
	%varDef_98 = load %varAddr_115
	%varDef_100 = load %varAddr_116
	%idVal_28 = load @now
	%res_29 = sub %idVal_28 1
	%res_30 = lt %varDef_98 %res_29
	br %res_30 <8> <10>

<8> for_body
	%res_32 = add %varDef_98 1
	store %res_32 %varAddr_112
	store %varDef_100 %varAddr_113
	br <11>

<11> for_cond
	%varDef_102 = load %varAddr_112
	%varDef_103 = load %varAddr_113
	%idVal_34 = load @now
	%res_35 = lt %varDef_102 %idVal_34
	br %res_35 <12> <9>

<12> for_body
	%arrayBase_37 = add %arrayPtr_3 8
	%offset_39 = mul %varDef_98 8
	%elementAddr_40 = add %arrayBase_37 %offset_39
	%elementVal_41 = load %elementAddr_40
	%offset_45 = mul %varDef_102 8
	%elementAddr_46 = add %arrayBase_37 %offset_45
	%elementVal_47 = load %elementAddr_46
	%res_48 = gt %elementVal_41 %elementVal_47
	br %res_48 <15> <23>

<23> parallel_copy
	store %varDef_103 %varAddr_111
	br <13>

<15> if_true
	%arrayBase_50 = add %arrayPtr_3 8
	%offset_52 = mul %varDef_98 8
	%elementAddr_53 = add %arrayBase_50 %offset_52
	%elementVal_54 = load %elementAddr_53
	%offset_58 = mul %varDef_102 8
	%elementAddr_59 = add %arrayBase_50 %offset_58
	%elementVal_60 = load %elementAddr_59
	store %elementVal_60 %elementAddr_53
	store %elementVal_54 %elementAddr_59
	store %elementVal_54 %varAddr_111
	br <13>

<13> for_step
	%varDef_105 = load %varAddr_111
	%newVal_74 = inc %varDef_102
	store %newVal_74 %varAddr_112
	store %varDef_105 %varAddr_113
	br <11>

<9> for_step
	%newVal_77 = inc %varDef_98
	store %newVal_77 %varAddr_115
	store %varDef_103 %varAddr_116
	br <7>

<10> for_end
	store 0 %varAddr_114
	br <17>

<17> for_cond
	%varDef_109 = load %varAddr_114
	%idVal_79 = load @now
	%res_80 = lt %varDef_109 %idVal_79
	br %res_80 <18> <20>

<18> for_body
	%arrayBase_82 = add %arrayPtr_3 8
	%offset_84 = mul %varDef_109 8
	%elementAddr_85 = add %arrayBase_82 %offset_84
	%elementVal_86 = load %elementAddr_85
	%res_88 = add %varDef_109 1
	%res_89 = neq %elementVal_86 %res_88
	br %res_89 <21> <19>

<21> if_true
	ret 0

<19> for_step
	%newVal_92 = inc %varDef_109
	store %newVal_92 %varAddr_114
	br <17>

<20> for_end
	ret 1

}

define merge ( ) {
<0> entry
	%varAddr_61 = alloca 4
	%varAddr_60 = alloca 4
	%varAddr_59 = alloca 4
	%varAddr_58 = alloca 4
	%varAddr_57 = alloca 4
	store 0 %varAddr_59
	store 0 %varAddr_60
	br <1>

<1> for_cond
	%varDef_47 = load %varAddr_59
	%varDef_48 = load %varAddr_60
	%idVal_2 = load @now
	%res_3 = lt %varDef_47 %idVal_2
	br %res_3 <2> <4>

<2> for_body
	%arrayPtr_4 = load @a
	%arrayBase_5 = add %arrayPtr_4 8
	%offset_7 = mul %varDef_47 8
	%elementAddr_8 = add %arrayBase_5 %offset_7
	%elementVal_9 = load %elementAddr_8
	%res_10 = eq %elementVal_9 0
	br %res_10 <5> <20>

<20> parallel_copy
	store %varDef_48 %varAddr_58
	br <3>

<5> if_true
	%res_13 = add %varDef_47 1
	store %res_13 %varAddr_61
	br <7>

<7> for_cond
	%varDef_50 = load %varAddr_61
	%idVal_15 = load @now
	%res_16 = lt %varDef_50 %idVal_15
	br %res_16 <8> <19>

<19> parallel_copy
	store %varDef_50 %varAddr_58
	br <3>

<8> for_body
	%arrayPtr_17 = load @a
	%arrayBase_18 = add %arrayPtr_17 8
	%offset_20 = mul %varDef_50 8
	%elementAddr_21 = add %arrayBase_18 %offset_20
	%elementVal_22 = load %elementAddr_21
	%res_23 = neq %elementVal_22 0
	br %res_23 <11> <9>

<11> if_true
	swap ( %varDef_47 %varDef_50 )
	store %varDef_50 %varAddr_58
	br <3>

<9> for_step
	%newVal_28 = inc %varDef_50
	store %newVal_28 %varAddr_61
	br <7>

<3> for_step
	%varDef_52 = load %varAddr_58
	%newVal_31 = inc %varDef_47
	store %newVal_31 %varAddr_59
	store %varDef_52 %varAddr_60
	br <1>

<4> for_end
	store 0 %varAddr_57
	br <13>

<13> for_cond
	%varDef_55 = load %varAddr_57
	%idVal_33 = load @now
	%res_34 = lt %varDef_55 %idVal_33
	br %res_34 <14> <16>

<14> for_body
	%arrayPtr_35 = load @a
	%arrayBase_36 = add %arrayPtr_35 8
	%offset_38 = mul %varDef_55 8
	%elementAddr_39 = add %arrayBase_36 %offset_38
	%elementVal_40 = load %elementAddr_39
	%res_41 = eq %elementVal_40 0
	br %res_41 <17> <15>

<17> if_true
	store %varDef_55 @now
	br <16>

<15> for_step
	%newVal_45 = inc %varDef_55
	store %newVal_45 %varAddr_57
	br <13>

<16> for_end
	ret 

}

define move ( ) {
<0> entry
	%varAddr_31 = alloca 4
	store 0 %varAddr_31
	br <1>

<1> for_cond
	%varDef_29 = load %varAddr_31
	%idVal_2 = load @now
	%res_3 = lt %varDef_29 %idVal_2
	br %res_3 <2> <4>

<2> for_body
	%arrayPtr_10 = load @a
	%arrayBase_11 = add %arrayPtr_10 8
	%offset_13 = mul %varDef_29 8
	%elementAddr_14 = add %arrayBase_11 %offset_13
	%oldVal_15 = load %elementAddr_14
	%newVal_16 = dec %oldVal_15
	store %newVal_16 %elementAddr_14
	%res_18 = add %varDef_29 1
	store %res_18 %varAddr_31
	br <1>

<4> for_end
	%idVal_19 = load @now
	%arrayPtr_20 = load @a
	%arrayBase_21 = add %arrayPtr_20 8
	%idVal_22 = load @now
	%offset_23 = mul %idVal_22 8
	%elementAddr_24 = add %arrayBase_21 %offset_23
	store %idVal_19 %elementAddr_24
	%oldVal_26 = load @now
	%newVal_27 = inc %oldVal_26
	store %newVal_27 @now
	ret 

}

define main ( ) {
<0> entry
	%varAddr_264 = alloca 4
	%varAddr_263 = alloca 4
	%varAddr_262 = alloca 4
	%varAddr_261 = alloca 4
	%varAddr_260 = alloca 4
	%varAddr_259 = alloca 4
	%varAddr_258 = alloca 4
	%varAddr_257 = alloca 4
	%varAddr_256 = alloca 4
	%varAddr_255 = alloca 4
	%varAddr_254 = alloca 4
	%varAddr_253 = alloca 4
	%varAddr_252 = alloca 4
	%varAddr_251 = alloca 4
	%varAddr_250 = alloca 4
	%varAddr_249 = alloca 4
	%res_2 = getInt ( )
	store 0 %varAddr_258
	store 0 %varAddr_259
	store 0 %varAddr_260
	store 0 %varAddr_261
	store 0 %varAddr_262
	br <1>

<1> for_cond
	%varDef_201 = load %varAddr_258
	%varDef_212 = load %varAddr_259
	%varDef_213 = load %varAddr_260
	%varDef_214 = load %varAddr_261
	%varDef_215 = load %varAddr_262
	%res_5 = lt %varDef_201 %res_2
	br %res_5 <2> <4>

<2> for_body
	store 5050 @n
	store 0 @h
	%arrayPtr_9 = malloc 816
	store 101 %arrayPtr_9
	store %arrayPtr_9 @a
	%idVal_12 = load @M
	%idVal_13 = load @A
	%res_14 = div %idVal_12 %idVal_13
	store %res_14 @Q
	%idVal_15 = load @M
	%idVal_16 = load @A
	%res_17 = mod %idVal_15 %idVal_16
	store %res_17 @R
	%idVal_19 = load @n
	br <19>

<19> cfor_cond
	%cidVal_89 = load @h
	%cres_91 = le %cidVal_89 %idVal_19
	br %cres_91 <20> <24>

<20> cfor_body
	%cidVal_93 = load @h
	%cidVal_94 = load @h
	%cres_95 = add %cidVal_94 1
	%cres_96 = mul %cidVal_93 %cres_95
	%cres_97 = div %cres_96 2
	%cres_98 = eq %idVal_19 %cres_97
	br %cres_98 <21> <23>

<21> cif_true
	store 1 %varAddr_256
	br <17>

<23> cfor_step
	%coldVal_100 = load @h
	%cnewVal_101 = inc %coldVal_100
	store %cnewVal_101 @h
	br <19>

<24> cfor_end
	store 0 %varAddr_256
	br <17>

<17> after_call
	%varDef_223 = load %varAddr_256
	br %varDef_223 <6> <5>

<5> if_true
	println ( $str_2 )
	ret 1

<6> if_merge
	println ( $str_3 )
	%cidVal_104 = load @A
	%cidVal_105 = load @seed
	%cidVal_106 = load @Q
	%cres_107 = mod %cidVal_105 %cidVal_106
	%cres_108 = mul %cidVal_104 %cres_107
	%cidVal_109 = load @R
	%cidVal_110 = load @seed
	%cidVal_111 = load @Q
	%cres_112 = div %cidVal_110 %cidVal_111
	%cres_113 = mul %cidVal_109 %cres_112
	%cres_114 = sub %cres_108 %cres_113
	%cres_116 = ge %cres_114 0
	br %cres_116 <27> <28>

<27> cif_true
	store %cres_114 @seed
	br <29>

<28> cif_false
	%cidVal_119 = load @M
	%cres_120 = add %cres_114 %cidVal_119
	store %cres_120 @seed
	br <29>

<29> cif_merge
	%cidVal_121 = load @seed
	store %cidVal_121 @seed
	%cidVal_126 = load @A
	%cidVal_127 = load @seed
	%cidVal_128 = load @Q
	%cres_129 = mod %cidVal_127 %cidVal_128
	%cres_130 = mul %cidVal_126 %cres_129
	%cidVal_131 = load @R
	%cidVal_132 = load @seed
	%cidVal_133 = load @Q
	%cres_134 = div %cidVal_132 %cidVal_133
	%cres_135 = mul %cidVal_131 %cres_134
	%cres_136 = sub %cres_130 %cres_135
	%cres_138 = ge %cres_136 0
	br %cres_138 <34> <35>

<34> cif_true
	store %cres_136 @seed
	br <36>

<35> cif_false
	%cidVal_141 = load @M
	%cres_142 = add %cres_136 %cidVal_141
	store %cres_142 @seed
	br <36>

<36> cif_merge
	%cidVal_143 = load @seed
	%res_22 = mod %cidVal_143 10
	%res_23 = add %res_22 1
	store %res_23 @now
	%idVal_25 = load @now
	%res_24 = toString ( %idVal_25 )
	println ( %res_24 )
	store 0 %varAddr_249
	store 0 %varAddr_250
	store %varDef_212 %varAddr_251
	store %varDef_213 %varAddr_252
	store %varDef_214 %varAddr_253
	store %varDef_215 %varAddr_254
	br <7>

<7> for_cond
	%varDef_229 = load %varAddr_249
	%varDef_230 = load %varAddr_250
	%varDef_231 = load %varAddr_251
	%varDef_232 = load %varAddr_252
	%varDef_233 = load %varAddr_253
	%varDef_234 = load %varAddr_254
	%idVal_27 = load @now
	%res_28 = sub %idVal_27 1
	%res_29 = lt %varDef_229 %res_28
	br %res_29 <38> <10>

<38> centry
	%cidVal_146 = load @A
	%cidVal_147 = load @seed
	%cidVal_148 = load @Q
	%cres_149 = mod %cidVal_147 %cidVal_148
	%cres_150 = mul %cidVal_146 %cres_149
	%cidVal_151 = load @R
	%cidVal_152 = load @seed
	%cidVal_153 = load @Q
	%cres_154 = div %cidVal_152 %cidVal_153
	%cres_155 = mul %cidVal_151 %cres_154
	%cres_156 = sub %cres_150 %cres_155
	%cres_158 = ge %cres_156 0
	br %cres_158 <39> <40>

<39> cif_true
	store %cres_156 @seed
	br <41>

<40> cif_false
	%cidVal_161 = load @M
	%cres_162 = add %cres_156 %cidVal_161
	store %cres_162 @seed
	br <41>

<41> cif_merge
	%cidVal_163 = load @seed
	%res_31 = mod %cidVal_163 10
	%res_32 = add %res_31 1
	%arrayPtr_33 = load @a
	%arrayBase_34 = add %arrayPtr_33 8
	%offset_36 = mul %varDef_229 8
	%elementAddr_37 = add %arrayBase_34 %offset_36
	store %res_32 %elementAddr_37
	store %varDef_233 %varAddr_263
	store %varDef_234 %varAddr_264
	br <11>

<11> while_cond
	%varDef_237 = load %varAddr_263
	%varDef_238 = load %varAddr_264
	%arrayPtr_38 = load @a
	%arrayBase_39 = add %arrayPtr_38 8
	%offset_41 = mul %varDef_229 8
	%elementAddr_42 = add %arrayBase_39 %offset_41
	%elementVal_43 = load %elementAddr_42
	%res_45 = add %elementVal_43 %varDef_230
	%idVal_46 = load @n
	%res_47 = gt %res_45 %idVal_46
	br %res_47 <43> <13>

<43> centry
	%cidVal_166 = load @A
	%cidVal_167 = load @seed
	%cidVal_168 = load @Q
	%cres_169 = mod %cidVal_167 %cidVal_168
	%cres_170 = mul %cidVal_166 %cres_169
	%cidVal_171 = load @R
	%cidVal_172 = load @seed
	%cidVal_173 = load @Q
	%cres_174 = div %cidVal_172 %cidVal_173
	%cres_175 = mul %cidVal_171 %cres_174
	%cres_176 = sub %cres_170 %cres_175
	%cres_178 = ge %cres_176 0
	br %cres_178 <44> <45>

<44> cif_true
	store %cres_176 @seed
	br <46>

<45> cif_false
	%cidVal_181 = load @M
	%cres_182 = add %cres_176 %cidVal_181
	store %cres_182 @seed
	br <46>

<46> cif_merge
	%cidVal_183 = load @seed
	%res_49 = mod %cidVal_183 10
	%res_50 = add %res_49 1
	%arrayPtr_51 = load @a
	%arrayBase_52 = add %arrayPtr_51 8
	%offset_54 = mul %varDef_229 8
	%elementAddr_55 = add %arrayBase_52 %offset_54
	store %res_50 %elementAddr_55
	store %cidVal_183 %varAddr_263
	store %cres_176 %varAddr_264
	br <11>

<13> while_end
	%arrayPtr_57 = load @a
	%arrayBase_58 = add %arrayPtr_57 8
	%offset_60 = mul %varDef_229 8
	%elementAddr_61 = add %arrayBase_58 %offset_60
	%elementVal_62 = load %elementAddr_61
	%res_63 = add %varDef_230 %elementVal_62
	%newVal_66 = inc %varDef_229
	store %newVal_66 %varAddr_249
	store %res_63 %varAddr_250
	store %cidVal_163 %varAddr_251
	store %cres_156 %varAddr_252
	store %varDef_237 %varAddr_253
	store %varDef_238 %varAddr_254
	br <7>

<10> for_end
	%idVal_67 = load @n
	%res_69 = sub %idVal_67 %varDef_230
	%arrayPtr_70 = load @a
	%arrayBase_71 = add %arrayPtr_70 8
	%idVal_72 = load @now
	%res_73 = sub %idVal_72 1
	%offset_74 = mul %res_73 8
	%elementAddr_75 = add %arrayBase_71 %offset_74
	store %res_69 %elementAddr_75
	store 0 %varAddr_255
	br <49>

<49> cfor_cond
	%varDef_244 = load %varAddr_255
	%cidVal_186 = load @now
	%cres_187 = lt %varDef_244 %cidVal_186
	br %cres_187 <50> <52>

<50> cfor_body
	%carrayPtr_188 = load @a
	%carrayBase_189 = add %carrayPtr_188 8
	%coffset_191 = mul %varDef_244 8
	%celementAddr_192 = add %carrayBase_189 %coffset_191
	%celementVal_193 = load %celementAddr_192
	%cres_194 = toString ( %celementVal_193 )
	%cres_195 = _stringAdd ( %cres_194 $str_0 )
	print ( %cres_195 )
	%cnewVal_198 = inc %varDef_244
	store %cnewVal_198 %varAddr_255
	br <49>

<52> cfor_end
	println ( $str_1 )
	merge ( )
	store 0 %varAddr_257
	br <14>

<14> while_cond
	%varDef_246 = load %varAddr_257
	%res_76 = win ( )
	br %res_76 <16> <15>

<15> while_body
	%newVal_79 = inc %varDef_246
	move ( )
	merge ( )
	store %newVal_79 %varAddr_257
	br <14>

<16> while_end
	%res_80 = toString ( %varDef_246 )
	%res_82 = _stringAdd ( $str_4 %res_80 )
	%res_83 = _stringAdd ( %res_82 $str_5 )
	println ( %res_83 )
	%newVal_86 = inc %varDef_201
	store %newVal_86 %varAddr_258
	store %varDef_231 %varAddr_259
	store %varDef_232 %varAddr_260
	store %varDef_233 %varAddr_261
	store %varDef_234 %varAddr_262
	br <1>

<4> for_end
	ret 0

}

