@reed

@n

$str_0 "toInt: "

$str_1 "substr: "

$str_2 " "

$str_3 ""

$str_4 "BY Kipsora"

define _print

define _println

define _getString

define _getInt

define _toString

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

define __globalInit ( ) {
<0> entry
	store 12883127 @reed

}

define _rand ( ) {
<0> entry
	%idVal_0 = load @reed
	%idVal_1 = load @reed
	%res_2 = lsft %idVal_1 5
	%res_3 = add %idVal_0 %res_2
	%res_4 = add %res_3 1727317
	store %res_4 @reed
	%idVal_5 = load @reed
	%res_6 = mod %idVal_5 1772371
	%res_7 = lt %res_6 1000
	br %res_7 <1> <2>

<1> if_true
	%idVal_8 = load @reed
	%idVal_9 = load @reed
	%res_10 = add %idVal_9 818277
	%res_11 = bit_xor %idVal_8 %res_10
	%idVal_12 = load @reed
	%res_13 = sub %idVal_12 18217
	%res_14 = bit_or %res_11 %res_13
	store %res_14 @reed
	br <2>

<2> if_merge
	%idVal_17 = load @reed
	%res_21 = bit_and %idVal_17 -268435457
	ret %res_21

}

define __Test_Test ( %thisVal_0 ) {
<0> entry
	%varAddr_108 = alloca 4
	%varAddr_107 = alloca 4
	%varAddr_106 = alloca 4
	%varAddr_105 = alloca 4
	%varAddr_104 = alloca 4
	%varAddr_103 = alloca 4
	%varAddr_102 = alloca 4
	%idVal_4 = load @n
	%memberLength_6 = mul %idVal_4 4
	%arrayLength_7 = add %memberLength_6 4
	%arrayPtr_5 = malloc %arrayLength_7
	store %idVal_4 %arrayPtr_5
	%memberAddr_9 = add %thisVal_0 0
	store %arrayPtr_5 %memberAddr_9
	store 0 %varAddr_105
	store 0 %varAddr_106
	store 0 %varAddr_107
	store 0 %varAddr_108
	br <1>

<1> for_cond
	%varDef_86 = load %varAddr_105
	%varDef_87 = load %varAddr_106
	%varDef_90 = load %varAddr_107
	%varDef_91 = load %varAddr_108
	%idVal_11 = load @n
	%res_12 = lt %varDef_86 %idVal_11
	br %res_12 <2> <4>

<2> for_body
	%res_17 = mul %varDef_86 %varDef_86
	%res_18 = add %varDef_86 %res_17
	%res_19 = add %res_18 3
	%res_20 = bit_or %res_19 13
	%memberLength_22 = mul %res_20 4
	%arrayLength_23 = add %memberLength_22 4
	%arrayPtr_21 = malloc %arrayLength_23
	store %res_20 %arrayPtr_21
	%memberAddr_25 = add %thisVal_0 0
	%arrayPtr_26 = load %memberAddr_25
	%arrayBase_27 = add %arrayPtr_26 4
	%offset_29 = mul %varDef_87 4
	%elementAddr_30 = add %arrayBase_27 %offset_29
	store %arrayPtr_21 %elementAddr_30
	store 0 %varAddr_102
	store %varDef_90 %varAddr_103
	store %varDef_91 %varAddr_104
	br <5>

<5> for_cond
	%varDef_95 = load %varAddr_102
	%varDef_96 = load %varAddr_103
	%varDef_97 = load %varAddr_104
	%res_36 = mul %varDef_86 %varDef_86
	%res_37 = add %varDef_86 %res_36
	%res_38 = add %res_37 2
	%res_39 = bit_or %res_38 13
	%res_40 = lt %varDef_95 %res_39
	br %res_40 <10> <3>

<10> centry
	%cidVal_63 = load @reed
	%cidVal_64 = load @reed
	%cres_65 = lsft %cidVal_64 5
	%cres_66 = add %cidVal_63 %cres_65
	%cres_67 = add %cres_66 1727317
	store %cres_67 @reed
	%cidVal_68 = load @reed
	%cres_69 = mod %cidVal_68 1772371
	%cres_70 = lt %cres_69 1000
	br %cres_70 <11> <12>

<11> cif_true
	%cidVal_71 = load @reed
	%cidVal_72 = load @reed
	%cres_73 = add %cidVal_72 818277
	%cres_74 = bit_xor %cidVal_71 %cres_73
	%cidVal_75 = load @reed
	%cres_76 = sub %cidVal_75 18217
	%cres_77 = bit_or %cres_74 %cres_76
	store %cres_77 @reed
	br <12>

<12> cif_merge
	%cidVal_79 = load @reed
	%cres_83 = bit_and %cidVal_79 -268435457
	%res_41 = _toString ( %cres_83 )
	%memberAddr_44 = add %thisVal_0 0
	%arrayPtr_45 = load %memberAddr_44
	%arrayBase_46 = add %arrayPtr_45 4
	%offset_48 = mul %varDef_86 4
	%elementAddr_49 = add %arrayBase_46 %offset_48
	%arrayPtr_50 = load %elementAddr_49
	%arrayBase_51 = add %arrayPtr_50 4
	%offset_53 = mul %varDef_95 4
	%elementAddr_54 = add %arrayBase_51 %offset_53
	store %res_41 %elementAddr_54
	%newVal_57 = inc %varDef_95
	store %newVal_57 %varAddr_102
	store %cres_83 %varAddr_103
	store 1073741824 %varAddr_104
	br <5>

<3> for_step
	%newVal_60 = inc %varDef_86
	store %newVal_60 %varAddr_105
	store %varDef_95 %varAddr_106
	store %varDef_96 %varAddr_107
	store %varDef_97 %varAddr_108
	br <1>

<4> for_end
	ret 

}

define __Test_printme ( %thisVal_0 ) {
<0> entry
	%varAddr_252 = alloca 4
	%varAddr_251 = alloca 4
	%varAddr_250 = alloca 4
	%varAddr_249 = alloca 4
	%varAddr_248 = alloca 4
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
	store 0 %varAddr_234
	store 0 %varAddr_235
	store 0 %varAddr_236
	store 0 %varAddr_237
	store 0 %varAddr_238
	store 0 %varAddr_239
	store 0 %varAddr_240
	store 0 %varAddr_241
	store 0 %varAddr_242
	br <1>

<1> for_cond
	%varDef_194 = load %varAddr_234
	%varDef_196 = load %varAddr_235
	%varDef_197 = load %varAddr_236
	%varDef_198 = load %varAddr_237
	%varDef_199 = load %varAddr_238
	%varDef_200 = load %varAddr_239
	%varDef_201 = load %varAddr_240
	%varDef_202 = load %varAddr_241
	%varDef_203 = load %varAddr_242
	%idVal_6 = load @n
	%res_7 = lt %varDef_194 %idVal_6
	br %res_7 <2> <4>

<2> for_body
	store 0 %varAddr_243
	store %varDef_196 %varAddr_244
	store %varDef_197 %varAddr_245
	store %varDef_198 %varAddr_246
	store %varDef_199 %varAddr_247
	store %varDef_200 %varAddr_248
	store %varDef_201 %varAddr_249
	store %varDef_202 %varAddr_250
	store %varDef_203 %varAddr_251
	br <5>

<5> for_cond
	%varDef_205 = load %varAddr_243
	%varDef_206 = load %varAddr_244
	%varDef_207 = load %varAddr_245
	%varDef_208 = load %varAddr_246
	%varDef_209 = load %varAddr_247
	%varDef_210 = load %varAddr_248
	%varDef_211 = load %varAddr_249
	%varDef_212 = load %varAddr_250
	%varDef_213 = load %varAddr_251
	%res_11 = mul %varDef_194 %varDef_194
	%res_12 = sub %varDef_205 %res_11
	%res_14 = add %varDef_194 3
	%res_15 = lt %res_12 %res_14
	br %res_15 <6> <3>

<6> for_body
	%memberAddr_17 = add %thisVal_0 0
	%arrayPtr_18 = load %memberAddr_17
	%arrayBase_19 = add %arrayPtr_18 4
	%offset_21 = mul %varDef_194 4
	%elementAddr_22 = add %arrayBase_19 %offset_21
	%arrayPtr_23 = load %elementAddr_22
	%arrayBase_24 = add %arrayPtr_23 4
	%offset_26 = mul %varDef_205 4
	%elementAddr_27 = add %arrayBase_24 %offset_26
	%elementVal_28 = load %elementAddr_27
	_println ( %elementVal_28 )
	%arrayPtr_33 = load %memberAddr_17
	%arrayBase_34 = add %arrayPtr_33 4
	%elementAddr_37 = add %arrayBase_34 %offset_21
	%arrayPtr_38 = load %elementAddr_37
	%arrayBase_39 = add %arrayPtr_38 4
	%elementAddr_42 = add %arrayBase_39 %offset_26
	%classPtr_43 = load %elementAddr_42
	%res_30 = __stringParseInt ( %classPtr_43 )
	%res_29 = _toString ( %res_30 )
	%res_44 = __stringAdd ( $str_0 %res_29 )
	_println ( %res_44 )
	%cidVal_148 = load @reed
	%cidVal_149 = load @reed
	%cres_150 = lsft %cidVal_149 5
	%cres_151 = add %cidVal_148 %cres_150
	%cres_152 = add %cres_151 1727317
	store %cres_152 @reed
	%cidVal_153 = load @reed
	%cres_154 = mod %cidVal_153 1772371
	%cres_155 = lt %cres_154 1000
	br %cres_155 <17> <18>

<17> cif_true
	%cidVal_156 = load @reed
	%cidVal_157 = load @reed
	%cres_158 = add %cidVal_157 818277
	%cres_159 = bit_xor %cidVal_156 %cres_158
	%cidVal_160 = load @reed
	%cres_161 = sub %cidVal_160 18217
	%cres_162 = bit_or %cres_159 %cres_161
	store %cres_162 @reed
	br <18>

<18> cif_merge
	%cidVal_164 = load @reed
	%cres_168 = bit_and %cidVal_164 -268435457
	%memberAddr_50 = add %thisVal_0 0
	%arrayPtr_51 = load %memberAddr_50
	%arrayBase_52 = add %arrayPtr_51 4
	%offset_54 = mul %varDef_194 4
	%elementAddr_55 = add %arrayBase_52 %offset_54
	%arrayPtr_56 = load %elementAddr_55
	%arrayBase_57 = add %arrayPtr_56 4
	%offset_59 = mul %varDef_205 4
	%elementAddr_60 = add %arrayBase_57 %offset_59
	%classPtr_61 = load %elementAddr_60
	%res_48 = __stringLength ( %classPtr_61 )
	%res_62 = mod %cres_168 %res_48
	%cidVal_171 = load @reed
	%cidVal_172 = load @reed
	%cres_173 = lsft %cidVal_172 5
	%cres_174 = add %cidVal_171 %cres_173
	%cres_175 = add %cres_174 1727317
	store %cres_175 @reed
	%cidVal_176 = load @reed
	%cres_177 = mod %cidVal_176 1772371
	%cres_178 = lt %cres_177 1000
	br %cres_178 <21> <22>

<21> cif_true
	%cidVal_179 = load @reed
	%cidVal_180 = load @reed
	%cres_181 = add %cidVal_180 818277
	%cres_182 = bit_xor %cidVal_179 %cres_181
	%cidVal_183 = load @reed
	%cres_184 = sub %cidVal_183 18217
	%cres_185 = bit_or %cres_182 %cres_184
	store %cres_185 @reed
	br <22>

<22> cif_merge
	%cidVal_187 = load @reed
	%cres_191 = bit_and %cidVal_187 -268435457
	%memberAddr_66 = add %thisVal_0 0
	%arrayPtr_67 = load %memberAddr_66
	%arrayBase_68 = add %arrayPtr_67 4
	%offset_70 = mul %varDef_194 4
	%elementAddr_71 = add %arrayBase_68 %offset_70
	%arrayPtr_72 = load %elementAddr_71
	%arrayBase_73 = add %arrayPtr_72 4
	%offset_75 = mul %varDef_205 4
	%elementAddr_76 = add %arrayBase_73 %offset_75
	%classPtr_77 = load %elementAddr_76
	%res_64 = __stringLength ( %classPtr_77 )
	%res_78 = mod %cres_191 %res_64
	%res_81 = gt %res_62 %res_78
	br %res_81 <9> <23>

<23> parallel_copy
	store %res_62 %varAddr_231
	store %res_78 %varAddr_232
	store %varDef_209 %varAddr_233
	br <10>

<9> if_true
	store %res_78 %varAddr_231
	store %res_62 %varAddr_232
	store %res_62 %varAddr_233
	br <10>

<10> if_merge
	%varDef_223 = load %varAddr_231
	%varDef_224 = load %varAddr_232
	%varDef_225 = load %varAddr_233
	%memberAddr_88 = add %thisVal_0 0
	%arrayPtr_89 = load %memberAddr_88
	%arrayBase_90 = add %arrayPtr_89 4
	%offset_92 = mul %varDef_194 4
	%elementAddr_93 = add %arrayBase_90 %offset_92
	%arrayPtr_94 = load %elementAddr_93
	%arrayBase_95 = add %arrayPtr_94 4
	%offset_97 = mul %varDef_205 4
	%elementAddr_98 = add %arrayBase_95 %offset_97
	%classPtr_99 = load %elementAddr_98
	%res_86 = __stringSubstring ( %classPtr_99 %varDef_223 %varDef_224 )
	%res_102 = __stringAdd ( $str_1 %res_86 )
	_println ( %res_102 )
	store 0 %varAddr_252
	br <11>

<11> for_cond
	%varDef_227 = load %varAddr_252
	%res_104 = add %varDef_227 1
	%memberAddr_107 = add %thisVal_0 0
	%arrayPtr_108 = load %memberAddr_107
	%arrayBase_109 = add %arrayPtr_108 4
	%offset_111 = mul %varDef_194 4
	%elementAddr_112 = add %arrayBase_109 %offset_111
	%arrayPtr_113 = load %elementAddr_112
	%arrayBase_114 = add %arrayPtr_113 4
	%offset_116 = mul %varDef_205 4
	%elementAddr_117 = add %arrayBase_114 %offset_116
	%classPtr_118 = load %elementAddr_117
	%res_105 = __stringLength ( %classPtr_118 )
	%res_119 = add %res_105 1
	%res_120 = lt %res_104 %res_119
	br %res_120 <12> <14>

<12> for_body
	%memberAddr_124 = add %thisVal_0 0
	%arrayPtr_125 = load %memberAddr_124
	%arrayBase_126 = add %arrayPtr_125 4
	%offset_128 = mul %varDef_194 4
	%elementAddr_129 = add %arrayBase_126 %offset_128
	%arrayPtr_130 = load %elementAddr_129
	%arrayBase_131 = add %arrayPtr_130 4
	%offset_133 = mul %varDef_205 4
	%elementAddr_134 = add %arrayBase_131 %offset_133
	%classPtr_135 = load %elementAddr_134
	%res_122 = __stringOrd ( %classPtr_135 %varDef_227 )
	%res_121 = _toString ( %res_122 )
	%res_137 = __stringAdd ( %res_121 $str_2 )
	_print ( %res_137 )
	%res_139 = add %varDef_227 2
	store %res_139 %varAddr_252
	br <11>

<14> for_end
	_println ( $str_3 )
	%newVal_142 = inc %varDef_205
	store %newVal_142 %varAddr_243
	store %varDef_227 %varAddr_244
	store %varDef_223 %varAddr_245
	store %varDef_224 %varAddr_246
	store %varDef_225 %varAddr_247
	store %cres_168 %varAddr_248
	store 1073741824 %varAddr_249
	store %cres_191 %varAddr_250
	store 1073741824 %varAddr_251
	br <5>

<3> for_step
	%newVal_145 = inc %varDef_194
	store %newVal_145 %varAddr_234
	store %varDef_206 %varAddr_235
	store %varDef_207 %varAddr_236
	store %varDef_208 %varAddr_237
	store %varDef_209 %varAddr_238
	store %varDef_210 %varAddr_239
	store %varDef_211 %varAddr_240
	store %varDef_212 %varAddr_241
	store %varDef_213 %varAddr_242
	br <1>

<4> for_end
	ret 

}

define _main ( ) {
<0> entry
	%varAddr_26 = alloca 4
	%res_0 = _getInt ( )
	store %res_0 @n
	_println ( $str_4 )
	%classPtr_2 = malloc 4
	__Test_Test ( %classPtr_2 )
	__Test_printme ( %classPtr_2 )
	%arrayPtr_4 = malloc 16
	store 3 %arrayPtr_4
	%arrayEndPos_7 = add %arrayPtr_4 16
	%startPos_8 = add %arrayPtr_4 4
	store %startPos_8 %varAddr_26
	br <1>

<1> new_for_cond
	%varDef_24 = load %varAddr_26
	%condition_11 = lt %varDef_24 %arrayEndPos_7
	br %condition_11 <2> <4>

<2> new_for_body
	%arrayPtr_12 = malloc 16
	store 3 %arrayPtr_12
	store %arrayPtr_12 %varDef_24
	%pos_15 = add %varDef_24 4
	store %pos_15 %varAddr_26
	br <1>

<4> new_for_end
	%memberAddr_17 = add %classPtr_2 0
	store %arrayPtr_4 %memberAddr_17
	br <10>

<10> for_step
	br <10>

}

