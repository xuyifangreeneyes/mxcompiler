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
	ret 

}

define func ( %argVal_0 %argVal_2 %argVal_4 ) {
<0> entry
	mov %varDef_12 %argVal_0
	mov %varDef_13 %argVal_2
	mov %varDef_14 %argVal_4
	mov %idVal_6 %varDef_12
	mov %idVal_7 %varDef_13
	%res_8 = add %idVal_6 %idVal_7
	mov %idVal_9 %varDef_14
	%res_10 = add %res_8 %idVal_9
	%res_11 = bit_and %res_10 1073741823
	ret %res_11

}

define main ( ) {
<0> entry
	%res_1 = getInt ( )
	mov %varDef_169 %res_1
	mov %idVal_3 %varDef_169
	mov %idVal_4 %varDef_169
	%memberLength_6 = mul %idVal_3 8
	%arrayLength_7 = add %memberLength_6 8
	%arrayPtr_5 = malloc %arrayLength_7
	store %idVal_3 %arrayPtr_5
	%arrayBase_8 = add %arrayPtr_5 8
	%arrayEndPos_9 = add %arrayBase_8 %memberLength_6
	mov %varDef_170 %arrayBase_8
	br <1>

<1> new_for_cond
	%varDef_171 = phi <0> %varDef_170 <2> %varDef_172
	mov %pos_11 %varDef_171
	%condition_12 = lt %pos_11 %arrayEndPos_9
	br %condition_12 <2> <4>

<2> new_for_body
	%memberLength_14 = mul %idVal_4 8
	%arrayLength_15 = add %memberLength_14 8
	%arrayPtr_13 = malloc %arrayLength_15
	store %idVal_4 %arrayPtr_13
	%arrayBase_16 = add %arrayPtr_13 8
	store %arrayBase_16 %pos_11
	%pos_17 = add %pos_11 8
	mov %varDef_172 %pos_17
	br <1>

<4> new_for_end
	mov %varDef_173 %arrayBase_8
	mov %idVal_19 %varDef_169
	mov %idVal_20 %varDef_169
	%memberLength_22 = mul %idVal_19 8
	%arrayLength_23 = add %memberLength_22 8
	%arrayPtr_21 = malloc %arrayLength_23
	store %idVal_19 %arrayPtr_21
	%arrayBase_24 = add %arrayPtr_21 8
	%arrayEndPos_25 = add %arrayBase_24 %memberLength_22
	mov %varDef_174 %arrayBase_24
	br <5>

<5> new_for_cond
	%varDef_175 = phi <4> %varDef_174 <6> %varDef_176
	mov %pos_27 %varDef_175
	%condition_28 = lt %pos_27 %arrayEndPos_25
	br %condition_28 <6> <8>

<6> new_for_body
	%memberLength_30 = mul %idVal_20 8
	%arrayLength_31 = add %memberLength_30 8
	%arrayPtr_29 = malloc %arrayLength_31
	store %idVal_20 %arrayPtr_29
	%arrayBase_32 = add %arrayPtr_29 8
	store %arrayBase_32 %pos_27
	%pos_33 = add %pos_27 8
	mov %varDef_176 %pos_33
	br <5>

<8> new_for_end
	mov %varDef_177 %arrayBase_24
	mov %idVal_35 %varDef_169
	mov %idVal_36 %varDef_169
	%memberLength_38 = mul %idVal_35 8
	%arrayLength_39 = add %memberLength_38 8
	%arrayPtr_37 = malloc %arrayLength_39
	store %idVal_35 %arrayPtr_37
	%arrayBase_40 = add %arrayPtr_37 8
	%arrayEndPos_41 = add %arrayBase_40 %memberLength_38
	mov %varDef_178 %arrayBase_40
	br <9>

<9> new_for_cond
	%varDef_179 = phi <8> %varDef_178 <10> %varDef_180
	mov %pos_43 %varDef_179
	%condition_44 = lt %pos_43 %arrayEndPos_41
	br %condition_44 <10> <12>

<10> new_for_body
	%memberLength_46 = mul %idVal_36 8
	%arrayLength_47 = add %memberLength_46 8
	%arrayPtr_45 = malloc %arrayLength_47
	store %idVal_36 %arrayPtr_45
	%arrayBase_48 = add %arrayPtr_45 8
	store %arrayBase_48 %pos_43
	%pos_49 = add %pos_43 8
	mov %varDef_180 %pos_49
	br <9>

<12> new_for_end
	mov %varDef_181 %arrayBase_40
	mov %varDef_182 0
	br <13>

<13> for_cond
	%varDef_183 = phi <12> %varDef_182 <15> %varDef_188
	mov %idVal_53 %varDef_183
	mov %idVal_54 %varDef_169
	%res_55 = lt %idVal_53 %idVal_54
	br %res_55 <14> <16>

<14> for_body
	mov %varDef_185 0
	br <17>

<17> for_cond
	%varDef_186 = phi <14> %varDef_185 <18> %varDef_187
	mov %idVal_56 %varDef_186
	mov %idVal_57 %varDef_169
	%res_58 = lt %idVal_56 %idVal_57
	br %res_58 <18> <15>

<18> for_body
	mov %idVal_59 %varDef_183
	mov %idVal_60 %varDef_186
	%res_61 = add %idVal_59 %idVal_60
	mov %arrayBase_62 %varDef_173
	mov %idVal_63 %varDef_183
	%offset_64 = mul %idVal_63 8
	%elementAddr_65 = add %arrayBase_62 %offset_64
	%arrayBase_66 = load %elementAddr_65
	mov %idVal_67 %varDef_186
	%offset_68 = mul %idVal_67 8
	%elementAddr_69 = add %arrayBase_66 %offset_68
	store %res_61 %elementAddr_69
	mov %idVal_70 %varDef_186
	mov %oldVal_71 %varDef_186
	%newVal_72 = inc %oldVal_71
	mov %varDef_187 %newVal_72
	br <17>

<15> for_step
	mov %idVal_73 %varDef_183
	mov %oldVal_74 %varDef_183
	%newVal_75 = inc %oldVal_74
	mov %varDef_188 %newVal_75
	br <13>

<16> for_end
	mov %varDef_189 0
	br <21>

<21> for_cond
	%varDef_190 = phi <16> %varDef_189 <23> %varDef_221
	%varDef_191 = phi <16> %varDef_186 <23> %varDef_198
	mov %idVal_76 %varDef_190
	mov %idVal_77 %varDef_169
	%res_78 = lt %idVal_76 %idVal_77
	br %res_78 <22> <24>

<22> for_body
	mov %varDef_197 0
	br <25>

<25> for_cond
	%varDef_198 = phi <22> %varDef_197 <27> %varDef_220
	%varDef_199 = phi <22> %varDef_199 <27> %varDef_215
	%varDef_200 = phi <22> %varDef_200 <27> %varDef_216
	%varDef_201 = phi <22> %varDef_201 <27> %varDef_217
	%varDef_202 = phi <22> %varDef_202 <27> %varDef_218
	%varDef_203 = phi <22> %varDef_203 <27> %varDef_219
	mov %idVal_79 %varDef_198
	mov %idVal_80 %varDef_169
	%res_81 = lt %idVal_79 %idVal_80
	br %res_81 <26> <23>

<26> for_body
	mov %idVal_82 %varDef_198
	mov %idVal_83 %varDef_190
	%res_84 = ge %idVal_82 %idVal_83
	br %res_84 <29> <27>

<29> if_true
	mov %varDef_204 0
	br <31>

<31> for_cond
	%varDef_205 = phi <29> %varDef_204 <32> %varDef_214
	%varDef_206 = phi <29> %varDef_200 <32> %varDef_213
	%varDef_207 = phi <29> %varDef_201 <32> %varDef_212
	%varDef_208 = phi <29> %varDef_202 <32> %varDef_211
	%varDef_209 = phi <29> %varDef_203 <32> %varDef_210
	mov %idVal_85 %varDef_205
	mov %idVal_86 %varDef_169
	%res_87 = lt %idVal_85 %idVal_86
	br %res_87 <32> <27>

<32> for_body
	mov %arrayBase_89 %varDef_177
	mov %idVal_90 %varDef_190
	%offset_91 = mul %idVal_90 8
	%elementAddr_92 = add %arrayBase_89 %offset_91
	%arrayBase_93 = load %elementAddr_92
	mov %idVal_94 %varDef_198
	%offset_95 = mul %idVal_94 8
	%elementAddr_96 = add %arrayBase_93 %offset_95
	%elementVal_97 = load %elementAddr_96
	mov %arrayBase_98 %varDef_173
	mov %idVal_99 %varDef_190
	%offset_100 = mul %idVal_99 8
	%elementAddr_101 = add %arrayBase_98 %offset_100
	%arrayBase_102 = load %elementAddr_101
	mov %idVal_103 %varDef_205
	%offset_104 = mul %idVal_103 8
	%elementAddr_105 = add %arrayBase_102 %offset_104
	%elementVal_106 = load %elementAddr_105
	mov %arrayBase_107 %varDef_173
	mov %idVal_108 %varDef_205
	%offset_109 = mul %idVal_108 8
	%elementAddr_110 = add %arrayBase_107 %offset_109
	%arrayBase_111 = load %elementAddr_110
	mov %idVal_112 %varDef_198
	%offset_113 = mul %idVal_112 8
	%elementAddr_114 = add %arrayBase_111 %offset_113
	%elementVal_115 = load %elementAddr_114
	mov %varDef_210 %elementVal_97
	mov %varDef_211 %elementVal_106
	mov %varDef_212 %elementVal_115
	mov %cidVal_163 %varDef_210
	mov %cidVal_164 %varDef_211
	%cres_165 = add %cidVal_163 %cidVal_164
	mov %cidVal_166 %varDef_212
	%cres_167 = add %cres_165 %cidVal_166
	%cres_168 = bit_and %cres_167 1073741823
	mov %varDef_213 %cres_168
	mov %res_88 %varDef_213
	mov %arrayBase_116 %varDef_177
	mov %idVal_117 %varDef_190
	%offset_118 = mul %idVal_117 8
	%elementAddr_119 = add %arrayBase_116 %offset_118
	%arrayBase_120 = load %elementAddr_119
	mov %idVal_121 %varDef_198
	%offset_122 = mul %idVal_121 8
	%elementAddr_123 = add %arrayBase_120 %offset_122
	store %res_88 %elementAddr_123
	mov %idVal_124 %varDef_205
	mov %oldVal_125 %varDef_205
	%newVal_126 = inc %oldVal_125
	mov %varDef_214 %newVal_126
	br <31>

<27> for_step
	%varDef_215 = phi <26> %varDef_199 <31> %varDef_205
	%varDef_216 = phi <26> %varDef_200 <31> %varDef_206
	%varDef_217 = phi <26> %varDef_201 <31> %varDef_207
	%varDef_218 = phi <26> %varDef_202 <31> %varDef_208
	%varDef_219 = phi <26> %varDef_203 <31> %varDef_209
	mov %idVal_127 %varDef_198
	mov %oldVal_128 %varDef_198
	%newVal_129 = inc %oldVal_128
	mov %varDef_220 %newVal_129
	br <25>

<23> for_step
	mov %idVal_130 %varDef_190
	mov %oldVal_131 %varDef_190
	%newVal_132 = inc %oldVal_131
	mov %varDef_221 %newVal_132
	br <21>

<24> for_end
	mov %varDef_222 0
	mov %varDef_223 0
	br <35>

<35> for_cond
	%varDef_224 = phi <24> %varDef_223 <37> %varDef_232
	%varDef_225 = phi <24> %varDef_191 <37> %varDef_228
	%varDef_226 = phi <24> %varDef_222 <37> %varDef_229
	mov %idVal_134 %varDef_224
	mov %idVal_135 %varDef_169
	%res_136 = lt %idVal_134 %idVal_135
	br %res_136 <36> <38>

<36> for_body
	mov %varDef_227 0
	br <39>

<39> for_cond
	%varDef_228 = phi <36> %varDef_227 <40> %varDef_231
	%varDef_229 = phi <36> %varDef_226 <40> %varDef_230
	mov %idVal_137 %varDef_228
	mov %idVal_138 %varDef_169
	%res_139 = lt %idVal_137 %idVal_138
	br %res_139 <40> <37>

<40> for_body
	mov %idVal_140 %varDef_229
	mov %arrayBase_141 %varDef_177
	mov %idVal_142 %varDef_224
	%offset_143 = mul %idVal_142 8
	%elementAddr_144 = add %arrayBase_141 %offset_143
	%arrayBase_145 = load %elementAddr_144
	mov %idVal_146 %varDef_228
	%offset_147 = mul %idVal_146 8
	%elementAddr_148 = add %arrayBase_145 %offset_147
	%elementVal_149 = load %elementAddr_148
	%res_150 = add %idVal_140 %elementVal_149
	%res_151 = bit_and %res_150 1073741823
	mov %varDef_230 %res_151
	mov %idVal_152 %varDef_228
	mov %oldVal_153 %varDef_228
	%newVal_154 = inc %oldVal_153
	mov %varDef_231 %newVal_154
	br <39>

<37> for_step
	mov %idVal_155 %varDef_224
	mov %oldVal_156 %varDef_224
	%newVal_157 = inc %oldVal_156
	mov %varDef_232 %newVal_157
	br <35>

<38> for_end
	mov %idVal_158 %varDef_226
	__printInt ( %idVal_158 )
	ret 0

}

