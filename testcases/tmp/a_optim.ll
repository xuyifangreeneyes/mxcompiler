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
	%res_8 = add %argVal_0 %argVal_2
	%res_10 = add %res_8 %argVal_4
	%res_11 = bit_and %res_10 1073741823
	ret %res_11

}

define main ( ) {
<0> entry
	%res_1 = getInt ( )
	%memberLength_6 = mul %res_1 8
	%arrayLength_7 = add %memberLength_6 8
	%arrayPtr_5 = malloc %arrayLength_7
	store %res_1 %arrayPtr_5
	%arrayBase_8 = add %arrayPtr_5 8
	%arrayEndPos_9 = add %arrayBase_8 %memberLength_6
	mov %varDef_171 %arrayBase_8
	br <1>

<1> new_for_cond
	%condition_12 = lt %varDef_171 %arrayEndPos_9
	br %condition_12 <2> <4>

<2> new_for_body
	%memberLength_14 = mul %res_1 8
	%arrayLength_15 = add %memberLength_14 8
	%arrayPtr_13 = malloc %arrayLength_15
	store %res_1 %arrayPtr_13
	%arrayBase_16 = add %arrayPtr_13 8
	store %arrayBase_16 %varDef_171
	%pos_17 = add %varDef_171 8
	mov %varDef_171 %pos_17
	br <1>

<4> new_for_end
	%memberLength_22 = mul %res_1 8
	%arrayLength_23 = add %memberLength_22 8
	%arrayPtr_21 = malloc %arrayLength_23
	store %res_1 %arrayPtr_21
	%arrayBase_24 = add %arrayPtr_21 8
	%arrayEndPos_25 = add %arrayBase_24 %memberLength_22
	mov %varDef_175 %arrayBase_24
	br <5>

<5> new_for_cond
	%condition_28 = lt %varDef_175 %arrayEndPos_25
	br %condition_28 <6> <8>

<6> new_for_body
	%memberLength_30 = mul %res_1 8
	%arrayLength_31 = add %memberLength_30 8
	%arrayPtr_29 = malloc %arrayLength_31
	store %res_1 %arrayPtr_29
	%arrayBase_32 = add %arrayPtr_29 8
	store %arrayBase_32 %varDef_175
	%pos_33 = add %varDef_175 8
	mov %varDef_175 %pos_33
	br <5>

<8> new_for_end
	%memberLength_38 = mul %res_1 8
	%arrayLength_39 = add %memberLength_38 8
	%arrayPtr_37 = malloc %arrayLength_39
	store %res_1 %arrayPtr_37
	%arrayBase_40 = add %arrayPtr_37 8
	%arrayEndPos_41 = add %arrayBase_40 %memberLength_38
	mov %varDef_179 %arrayBase_40
	br <9>

<9> new_for_cond
	%condition_44 = lt %varDef_179 %arrayEndPos_41
	br %condition_44 <10> <12>

<10> new_for_body
	%memberLength_46 = mul %res_1 8
	%arrayLength_47 = add %memberLength_46 8
	%arrayPtr_45 = malloc %arrayLength_47
	store %res_1 %arrayPtr_45
	%arrayBase_48 = add %arrayPtr_45 8
	store %arrayBase_48 %varDef_179
	%pos_49 = add %varDef_179 8
	mov %varDef_179 %pos_49
	br <9>

<12> new_for_end
	mov %varDef_183 0
	br <13>

<13> for_cond
	%res_55 = lt %varDef_183 %res_1
	br %res_55 <14> <16>

<14> for_body
	mov %varDef_186 0
	br <17>

<17> for_cond
	%res_58 = lt %varDef_186 %res_1
	br %res_58 <18> <15>

<18> for_body
	%res_61 = add %varDef_183 %varDef_186
	%offset_64 = mul %varDef_183 8
	%elementAddr_65 = add %arrayBase_8 %offset_64
	%arrayBase_66 = load %elementAddr_65
	%offset_68 = mul %varDef_186 8
	%elementAddr_69 = add %arrayBase_66 %offset_68
	store %res_61 %elementAddr_69
	%newVal_72 = inc %varDef_186
	mov %varDef_186 %newVal_72
	br <17>

<15> for_step
	%newVal_75 = inc %varDef_183
	mov %varDef_183 %newVal_75
	br <13>

<16> for_end
	mov %varDef_190 0
	br <21>

<21> for_cond
	%res_78 = lt %varDef_190 %res_1
	br %res_78 <22> <24>

<22> for_body
	mov %varDef_198 0
	br <25>

<25> for_cond
	%res_81 = lt %varDef_198 %res_1
	br %res_81 <26> <23>

<26> for_body
	%res_84 = ge %varDef_198 %varDef_190
	br %res_84 <29> <45>

<45> parallel_copy
	mov %varDef_216 %varDef_200
	mov %varDef_218 %varDef_202
	mov %varDef_215 %varDef_199
	mov %varDef_217 %varDef_201
	mov %varDef_219 %varDef_203
	br <27>

<29> if_true
	mov %varDef_208 %varDef_202
	mov %varDef_206 %varDef_200
	mov %varDef_207 %varDef_201
	mov %varDef_209 %varDef_203
	mov %varDef_205 0
	br <31>

<31> for_cond
	%res_87 = lt %varDef_205 %res_1
	br %res_87 <32> <46>

<46> parallel_copy
	mov %varDef_216 %varDef_206
	mov %varDef_215 %varDef_205
	mov %varDef_219 %varDef_209
	mov %varDef_217 %varDef_207
	mov %varDef_218 %varDef_208
	br <27>

<32> for_body
	%offset_91 = mul %varDef_190 8
	%elementAddr_92 = add %arrayBase_24 %offset_91
	%arrayBase_93 = load %elementAddr_92
	%offset_95 = mul %varDef_198 8
	%elementAddr_96 = add %arrayBase_93 %offset_95
	%elementVal_97 = load %elementAddr_96
	%elementAddr_101 = add %arrayBase_8 %offset_91
	%arrayBase_102 = load %elementAddr_101
	%offset_104 = mul %varDef_205 8
	%elementAddr_105 = add %arrayBase_102 %offset_104
	%elementVal_106 = load %elementAddr_105
	%elementAddr_110 = add %arrayBase_8 %offset_104
	%arrayBase_111 = load %elementAddr_110
	%elementAddr_114 = add %arrayBase_111 %offset_95
	%elementVal_115 = load %elementAddr_114
	%cres_165 = add %elementVal_97 %elementVal_106
	%cres_167 = add %cres_165 %elementVal_115
	%cres_168 = bit_and %cres_167 1073741823
	%arrayBase_120 = load %elementAddr_92
	%elementAddr_123 = add %arrayBase_120 %offset_95
	store %cres_168 %elementAddr_123
	%newVal_126 = inc %varDef_205
	mov %varDef_208 %elementVal_106
	mov %varDef_207 %elementVal_115
	mov %varDef_205 %newVal_126
	mov %varDef_209 %elementVal_97
	mov %varDef_206 %cres_168
	br <31>

<27> for_step
	%newVal_129 = inc %varDef_198
	mov %varDef_198 %newVal_129
	mov %varDef_203 %varDef_219
	mov %varDef_200 %varDef_216
	mov %varDef_201 %varDef_217
	mov %varDef_199 %varDef_215
	mov %varDef_202 %varDef_218
	br <25>

<23> for_step
	%newVal_132 = inc %varDef_190
	mov %varDef_190 %newVal_132
	br <21>

<24> for_end
	mov %varDef_224 0
	mov %varDef_226 0
	br <35>

<35> for_cond
	%res_136 = lt %varDef_224 %res_1
	br %res_136 <36> <38>

<36> for_body
	mov %varDef_228 0
	mov %varDef_229 %varDef_226
	br <39>

<39> for_cond
	%res_139 = lt %varDef_228 %res_1
	br %res_139 <40> <37>

<40> for_body
	%offset_143 = mul %varDef_224 8
	%elementAddr_144 = add %arrayBase_24 %offset_143
	%arrayBase_145 = load %elementAddr_144
	%offset_147 = mul %varDef_228 8
	%elementAddr_148 = add %arrayBase_145 %offset_147
	%elementVal_149 = load %elementAddr_148
	%res_150 = add %varDef_229 %elementVal_149
	%res_151 = bit_and %res_150 1073741823
	%newVal_154 = inc %varDef_228
	mov %varDef_228 %newVal_154
	mov %varDef_229 %res_151
	br <39>

<37> for_step
	%newVal_157 = inc %varDef_224
	mov %varDef_226 %varDef_229
	mov %varDef_224 %newVal_157
	br <35>

<38> for_end
	__printInt ( %varDef_226 )
	ret 0

}

