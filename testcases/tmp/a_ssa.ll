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
	%tmp_1 = load @total
	mov %varDef_3 %tmp_1
	mov %varDef_4 0
	mov %tmp_2 %varDef_4
	store %tmp_2 @total
	ret 

}

define main ( ) {
<0> entry
	%tmp_174 = load @N
	mov %varDef_177 %tmp_174
	%tmp_173 = load @total
	mov %varDef_178 %tmp_173
	%res_6 = getInt ( )
	mov %varDef_179 %res_6
	mov %varDef_180 1
	br <1>

<1> for_cond
	%varDef_181 = phi <0> %varDef_180 <3> %varDef_220
	%varDef_182 = phi <0> 0 <3> %varDef_189
	%varDef_183 = phi <0> 0 <3> %varDef_190
	%varDef_184 = phi <0> 0 <3> %varDef_191
	%varDef_185 = phi <0> 0 <3> %varDef_192
	%varDef_186 = phi <0> 0 <3> %varDef_193
	%varDef_187 = phi <0> %varDef_178 <3> %varDef_194
	mov %idVal_7 %varDef_181
	mov %idVal_8 %varDef_179
	%res_9 = le %idVal_7 %idVal_8
	br %res_9 <2> <4>

<2> for_body
	mov %varDef_188 1
	br <5>

<5> for_cond
	%varDef_189 = phi <2> %varDef_188 <7> %varDef_219
	%varDef_190 = phi <2> %varDef_183 <7> %varDef_196
	%varDef_191 = phi <2> %varDef_184 <7> %varDef_197
	%varDef_192 = phi <2> %varDef_185 <7> %varDef_198
	%varDef_193 = phi <2> %varDef_186 <7> %varDef_199
	%varDef_194 = phi <2> %varDef_187 <7> %varDef_200
	mov %idVal_10 %varDef_189
	mov %idVal_11 %varDef_179
	%res_12 = le %idVal_10 %idVal_11
	br %res_12 <6> <3>

<6> for_body
	mov %varDef_195 1
	br <9>

<9> for_cond
	%varDef_196 = phi <6> %varDef_195 <11> %varDef_218
	%varDef_197 = phi <6> %varDef_191 <11> %varDef_202
	%varDef_198 = phi <6> %varDef_192 <11> %varDef_203
	%varDef_199 = phi <6> %varDef_193 <11> %varDef_204
	%varDef_200 = phi <6> %varDef_194 <11> %varDef_205
	mov %idVal_13 %varDef_196
	mov %idVal_14 %varDef_179
	%res_15 = le %idVal_13 %idVal_14
	br %res_15 <10> <7>

<10> for_body
	mov %varDef_201 1
	br <13>

<13> for_cond
	%varDef_202 = phi <10> %varDef_201 <15> %varDef_217
	%varDef_203 = phi <10> %varDef_198 <15> %varDef_207
	%varDef_204 = phi <10> %varDef_199 <15> %varDef_208
	%varDef_205 = phi <10> %varDef_200 <15> %varDef_209
	mov %idVal_16 %varDef_202
	mov %idVal_17 %varDef_179
	%res_18 = le %idVal_16 %idVal_17
	br %res_18 <14> <11>

<14> for_body
	mov %varDef_206 1
	br <17>

<17> for_cond
	%varDef_207 = phi <14> %varDef_206 <19> %varDef_216
	%varDef_208 = phi <14> %varDef_204 <19> %varDef_211
	%varDef_209 = phi <14> %varDef_205 <19> %varDef_212
	mov %idVal_19 %varDef_207
	mov %idVal_20 %varDef_179
	%res_21 = le %idVal_19 %idVal_20
	br %res_21 <18> <15>

<18> for_body
	mov %varDef_210 1
	br <21>

<21> for_cond
	%varDef_211 = phi <18> %varDef_210 <23> %varDef_215
	%varDef_212 = phi <18> %varDef_209 <23> %varDef_214
	mov %idVal_22 %varDef_211
	mov %idVal_23 %varDef_179
	%res_24 = le %idVal_22 %idVal_23
	br %res_24 <22> <19>

<22> for_body
	mov %idVal_25 %varDef_181
	mov %idVal_26 %varDef_189
	%res_27 = neq %idVal_25 %idVal_26
	br %res_27 <66> <23>

<66> lhs_true
	mov %idVal_28 %varDef_181
	mov %idVal_29 %varDef_196
	%res_30 = neq %idVal_28 %idVal_29
	br %res_30 <65> <23>

<65> lhs_true
	mov %idVal_31 %varDef_181
	mov %idVal_32 %varDef_202
	%res_33 = neq %idVal_31 %idVal_32
	br %res_33 <64> <23>

<64> lhs_true
	mov %idVal_34 %varDef_181
	mov %idVal_35 %varDef_207
	%res_36 = neq %idVal_34 %idVal_35
	br %res_36 <63> <23>

<63> lhs_true
	mov %idVal_37 %varDef_181
	mov %idVal_38 %varDef_211
	%res_39 = neq %idVal_37 %idVal_38
	br %res_39 <62> <23>

<62> lhs_true
	mov %idVal_40 %varDef_181
	mov %idVal_41 99
	%res_42 = neq %idVal_40 %idVal_41
	br %res_42 <61> <23>

<61> lhs_true
	mov %idVal_43 %varDef_181
	mov %idVal_44 100
	%res_45 = neq %idVal_43 %idVal_44
	br %res_45 <60> <23>

<60> lhs_true
	mov %idVal_46 %varDef_181
	mov %idVal_47 101
	%res_48 = neq %idVal_46 %idVal_47
	br %res_48 <59> <23>

<59> lhs_true
	mov %idVal_49 %varDef_181
	mov %idVal_50 102
	%res_51 = neq %idVal_49 %idVal_50
	br %res_51 <58> <23>

<58> lhs_true
	mov %idVal_52 %varDef_189
	mov %idVal_53 %varDef_196
	%res_54 = neq %idVal_52 %idVal_53
	br %res_54 <57> <23>

<57> lhs_true
	mov %idVal_55 %varDef_189
	mov %idVal_56 %varDef_202
	%res_57 = neq %idVal_55 %idVal_56
	br %res_57 <56> <23>

<56> lhs_true
	mov %idVal_58 %varDef_189
	mov %idVal_59 %varDef_207
	%res_60 = neq %idVal_58 %idVal_59
	br %res_60 <55> <23>

<55> lhs_true
	mov %idVal_61 %varDef_189
	mov %idVal_62 %varDef_211
	%res_63 = neq %idVal_61 %idVal_62
	br %res_63 <54> <23>

<54> lhs_true
	mov %idVal_64 %varDef_189
	mov %idVal_65 99
	%res_66 = neq %idVal_64 %idVal_65
	br %res_66 <53> <23>

<53> lhs_true
	mov %idVal_67 %varDef_189
	mov %idVal_68 100
	%res_69 = neq %idVal_67 %idVal_68
	br %res_69 <52> <23>

<52> lhs_true
	mov %idVal_70 %varDef_189
	mov %idVal_71 101
	%res_72 = neq %idVal_70 %idVal_71
	br %res_72 <51> <23>

<51> lhs_true
	mov %idVal_73 %varDef_189
	mov %idVal_74 102
	%res_75 = neq %idVal_73 %idVal_74
	br %res_75 <50> <23>

<50> lhs_true
	mov %idVal_76 %varDef_196
	mov %idVal_77 %varDef_202
	%res_78 = neq %idVal_76 %idVal_77
	br %res_78 <49> <23>

<49> lhs_true
	mov %idVal_79 %varDef_196
	mov %idVal_80 %varDef_207
	%res_81 = neq %idVal_79 %idVal_80
	br %res_81 <48> <23>

<48> lhs_true
	mov %idVal_82 %varDef_196
	mov %idVal_83 %varDef_211
	%res_84 = neq %idVal_82 %idVal_83
	br %res_84 <47> <23>

<47> lhs_true
	mov %idVal_85 %varDef_196
	mov %idVal_86 99
	%res_87 = neq %idVal_85 %idVal_86
	br %res_87 <46> <23>

<46> lhs_true
	mov %idVal_88 %varDef_196
	mov %idVal_89 100
	%res_90 = neq %idVal_88 %idVal_89
	br %res_90 <45> <23>

<45> lhs_true
	mov %idVal_91 %varDef_196
	mov %idVal_92 101
	%res_93 = neq %idVal_91 %idVal_92
	br %res_93 <44> <23>

<44> lhs_true
	mov %idVal_94 %varDef_196
	mov %idVal_95 102
	%res_96 = neq %idVal_94 %idVal_95
	br %res_96 <43> <23>

<43> lhs_true
	mov %idVal_97 %varDef_202
	mov %idVal_98 %varDef_207
	%res_99 = neq %idVal_97 %idVal_98
	br %res_99 <42> <23>

<42> lhs_true
	mov %idVal_100 %varDef_202
	mov %idVal_101 %varDef_211
	%res_102 = neq %idVal_100 %idVal_101
	br %res_102 <41> <23>

<41> lhs_true
	mov %idVal_103 %varDef_202
	mov %idVal_104 99
	%res_105 = neq %idVal_103 %idVal_104
	br %res_105 <40> <23>

<40> lhs_true
	mov %idVal_106 %varDef_202
	mov %idVal_107 100
	%res_108 = neq %idVal_106 %idVal_107
	br %res_108 <39> <23>

<39> lhs_true
	mov %idVal_109 %varDef_202
	mov %idVal_110 101
	%res_111 = neq %idVal_109 %idVal_110
	br %res_111 <38> <23>

<38> lhs_true
	mov %idVal_112 %varDef_202
	mov %idVal_113 102
	%res_114 = neq %idVal_112 %idVal_113
	br %res_114 <37> <23>

<37> lhs_true
	mov %idVal_115 %varDef_207
	mov %idVal_116 %varDef_211
	%res_117 = neq %idVal_115 %idVal_116
	br %res_117 <36> <23>

<36> lhs_true
	mov %idVal_118 %varDef_207
	mov %idVal_119 99
	%res_120 = neq %idVal_118 %idVal_119
	br %res_120 <35> <23>

<35> lhs_true
	mov %idVal_121 %varDef_207
	mov %idVal_122 100
	%res_123 = neq %idVal_121 %idVal_122
	br %res_123 <34> <23>

<34> lhs_true
	mov %idVal_124 %varDef_207
	mov %idVal_125 101
	%res_126 = neq %idVal_124 %idVal_125
	br %res_126 <33> <23>

<33> lhs_true
	mov %idVal_127 %varDef_207
	mov %idVal_128 102
	%res_129 = neq %idVal_127 %idVal_128
	br %res_129 <32> <23>

<32> lhs_true
	mov %idVal_130 %varDef_211
	mov %idVal_131 99
	%res_132 = neq %idVal_130 %idVal_131
	br %res_132 <31> <23>

<31> lhs_true
	mov %idVal_133 %varDef_211
	mov %idVal_134 100
	%res_135 = neq %idVal_133 %idVal_134
	br %res_135 <30> <23>

<30> lhs_true
	mov %idVal_136 %varDef_211
	mov %idVal_137 101
	%res_138 = neq %idVal_136 %idVal_137
	br %res_138 <29> <23>

<29> lhs_true
	mov %idVal_139 %varDef_211
	mov %idVal_140 102
	%res_141 = neq %idVal_139 %idVal_140
	br %res_141 <28> <23>

<28> lhs_true
	mov %idVal_142 100
	mov %idVal_143 101
	%res_144 = neq %idVal_142 %idVal_143
	br %res_144 <27> <23>

<27> lhs_true
	mov %idVal_145 99
	mov %idVal_146 102
	%res_147 = neq %idVal_145 %idVal_146
	br %res_147 <25> <23>

<25> if_true
	mov %idVal_148 %varDef_212
	mov %oldVal_149 %varDef_212
	%newVal_150 = inc %oldVal_149
	mov %varDef_213 %newVal_150
	br <23>

<23> for_step
	%varDef_214 = phi <22> %varDef_212 <66> %varDef_212 <65> %varDef_212 <64> %varDef_212 <63> %varDef_212 <62> %varDef_212 <61> %varDef_212 <60> %varDef_212 <59> %varDef_212 <58> %varDef_212 <57> %varDef_212 <56> %varDef_212 <55> %varDef_212 <54> %varDef_212 <53> %varDef_212 <52> %varDef_212 <51> %varDef_212 <50> %varDef_212 <49> %varDef_212 <48> %varDef_212 <47> %varDef_212 <46> %varDef_212 <45> %varDef_212 <44> %varDef_212 <43> %varDef_212 <42> %varDef_212 <41> %varDef_212 <40> %varDef_212 <39> %varDef_212 <38> %varDef_212 <37> %varDef_212 <36> %varDef_212 <35> %varDef_212 <34> %varDef_212 <33> %varDef_212 <32> %varDef_212 <31> %varDef_212 <30> %varDef_212 <29> %varDef_212 <28> %varDef_212 <27> %varDef_212 <25> %varDef_213
	mov %idVal_151 %varDef_211
	mov %oldVal_152 %varDef_211
	%newVal_153 = inc %oldVal_152
	mov %varDef_215 %newVal_153
	br <21>

<19> for_step
	mov %idVal_154 %varDef_207
	mov %oldVal_155 %varDef_207
	%newVal_156 = inc %oldVal_155
	mov %varDef_216 %newVal_156
	br <17>

<15> for_step
	mov %idVal_157 %varDef_202
	mov %oldVal_158 %varDef_202
	%newVal_159 = inc %oldVal_158
	mov %varDef_217 %newVal_159
	br <13>

<11> for_step
	mov %idVal_160 %varDef_196
	mov %oldVal_161 %varDef_196
	%newVal_162 = inc %oldVal_161
	mov %varDef_218 %newVal_162
	br <9>

<7> for_step
	mov %idVal_163 %varDef_189
	mov %oldVal_164 %varDef_189
	%newVal_165 = inc %oldVal_164
	mov %varDef_219 %newVal_165
	br <5>

<3> for_step
	mov %idVal_166 %varDef_181
	mov %oldVal_167 %varDef_181
	%newVal_168 = inc %oldVal_167
	mov %varDef_220 %newVal_168
	br <1>

<4> for_end
	mov %idVal_170 %varDef_187
	%res_169 = toString ( %idVal_170 )
	println ( %res_169 )
	mov %tmp_175 %varDef_187
	store %tmp_175 @total
	mov %tmp_176 %varDef_179
	store %tmp_176 @N
	ret 0

}

