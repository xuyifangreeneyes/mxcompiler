@age

@eng

$str_0 "Four score and seven years ago"

$str_1 "HongKong"

$str_2 "naive!\n"

$str_3 "fast!\n"

$str_4 "too young\\too simple."

$str_5 "wukefengggao\n"

$str_6 "Four score and seven years ago\n\\\""

$str_7 "too young!\\"

$str_8 "test"

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
	store 1000000 @age
	store $str_0 @eng

}

define #travel ( ) {
<0> entry
	move %varDef_2 10000000
	move %idVal_1 %varDef_2
	ret %idVal_1

}

define #journalists ( %argVal_0 ) {
<0> entry
	move %varDef_4 %argVal_0
	move %idVal_2 %varDef_4
	%res_3 = #string#eq ( %idVal_2 $str_1 )
	br %res_3 <1> <2>

<1> if_true
	#print ( $str_2 )
	#print ( $str_3 )
	#println ( $str_4 )
	br <2>

<2> if_merge

}

define #xu ( %argVal_0 %argVal_2 ) {
<0> entry
	move %varDef_21 %argVal_0
	move %varDef_22 %argVal_2
	move %varDef_23 0
	br <1>

<1> for_cond
	%varDef_24 = phi <0> %varDef_23 <3> %varDef_25
	move %idVal_5 %varDef_24
	move %classPtr_6 %varDef_22
	%memberAddr_7 = add %classPtr_6 0
	%memberVal_8 = load %memberAddr_7
	%res_9 = lt %idVal_5 %memberVal_8
	br %res_9 <2> <4>

<2> for_body
	move %classPtr_10 %varDef_21
	%memberAddr_11 = add %classPtr_10 4
	%memberVal_12 = load %memberAddr_11
	move %classPtr_13 %varDef_21
	%memberAddr_14 = add %classPtr_13 4
	%oldVal_15 = load %memberAddr_14
	%newVal_16 = inc %oldVal_15
	store %newVal_16 %memberAddr_14
	br <3>

<3> for_step
	move %idVal_17 %varDef_24
	move %oldVal_18 %varDef_24
	%newVal_19 = inc %oldVal_18
	move %varDef_25 %newVal_19
	br <1>

<4> for_end
	move %idVal_20 %varDef_21
	ret %idVal_20

}

define #main ( ) {
<0> entry
	move %varDef_186 2016
	move %varDef_187 $str_5
	move %varDef_188 1
	move %varDef_189 0
	%classPtr_8 = malloc 4
	move %varDef_190 %classPtr_8
	%memberLength_11 = mul 3 4
	%arrayLength_12 = add %memberLength_11 4
	%arrayPtr_10 = malloc %arrayLength_12
	store 3 %arrayPtr_10
	move %varDef_191 %arrayPtr_10
	%memberLength_15 = mul 1 4
	%arrayLength_16 = add %memberLength_15 4
	%arrayPtr_14 = malloc %arrayLength_16
	store 1 %arrayPtr_14
	%arrayEndPos_17 = add %arrayPtr_14 %arrayLength_16
	%startPos_18 = add %arrayPtr_14 4
	move %varDef_192 %startPos_18
	br <1>

<1> new_for_cond
	%varDef_193 = phi <0> %varDef_192 <3> %varDef_198
	%varDef_194 = phi <0> 0 <3> %varDef_196
	move %pos_20 %varDef_193
	%condition_21 = lt %pos_20 %arrayEndPos_17
	br %condition_21 <2> <4>

<2> new_for_body
	%memberLength_23 = mul 2 4
	%arrayLength_24 = add %memberLength_23 4
	%arrayPtr_22 = malloc %arrayLength_24
	store 2 %arrayPtr_22
	%arrayEndPos_25 = add %arrayPtr_22 %arrayLength_24
	%startPos_26 = add %arrayPtr_22 4
	move %varDef_195 %startPos_26
	br <5>

<5> new_for_cond
	%varDef_196 = phi <2> %varDef_195 <7> %varDef_197
	move %pos_28 %varDef_196
	%condition_29 = lt %pos_28 %arrayEndPos_25
	br %condition_29 <6> <8>

<6> new_for_body
	%memberLength_31 = mul 3 4
	%arrayLength_32 = add %memberLength_31 4
	%arrayPtr_30 = malloc %arrayLength_32
	store 3 %arrayPtr_30
	store %arrayPtr_30 %pos_28
	br <7>

<7> new_for_step
	%pos_33 = add %pos_28 4
	move %varDef_197 %pos_33
	br <5>

<8> new_for_end
	br <3>

<3> new_for_step
	%pos_34 = add %pos_20 4
	move %varDef_198 %pos_34
	br <1>

<4> new_for_end
	move %varDef_199 %arrayPtr_14
	%classPtr_36 = malloc 12
	move %varDef_200 %classPtr_36
	move %varDef_201 1
	move %varDef_202 2
	move %idVal_37 %varDef_201
	move %idVal_38 %varDef_202
	%res_39 = add %idVal_37 %idVal_38
	move %idVal_40 %varDef_201
	move %idVal_41 %varDef_202
	%res_42 = sub %idVal_40 %idVal_41
	move %idVal_43 %varDef_201
	move %idVal_44 %varDef_202
	%res_45 = mul %idVal_43 %idVal_44
	move %idVal_46 %varDef_201
	move %idVal_47 %varDef_202
	%res_48 = div %idVal_46 %idVal_47
	move %idVal_49 %varDef_201
	move %idVal_50 %varDef_202
	%res_51 = mod %idVal_49 %idVal_50
	move %idVal_52 %varDef_201
	%res_53 = lt %idVal_52 1
	move %idVal_54 %varDef_201
	%res_55 = gt %idVal_54 2
	move %idVal_56 %varDef_201
	move %idVal_57 %varDef_202
	%res_58 = eq %idVal_56 %idVal_57
	move %idVal_59 %varDef_201
	move %idVal_60 %varDef_202
	%res_61 = neq %idVal_59 %idVal_60
	move %idVal_62 %varDef_201
	move %idVal_63 %varDef_202
	%res_64 = le %idVal_62 %idVal_63
	move %idVal_65 %varDef_201
	move %idVal_66 %varDef_202
	%res_67 = ge %idVal_65 %idVal_66
	move %idVal_70 0
	br %idVal_70 <10> <9>

<10> lhs_true
	move %idVal_71 0
	br %idVal_71 <9> <9>

<9> bool_merge
	move %idVal_72 0
	br %idVal_72 <11> <12>

<12> lhs_false
	move %idVal_73 0
	br %idVal_73 <11> <11>

<11> bool_merge
	move %idVal_74 0
	move %idVal_75 %varDef_201
	%res_76 = lsft %idVal_75 1
	move %idVal_77 %varDef_201
	%res_78 = rsft %idVal_77 2
	move %idVal_79 %varDef_201
	%res_80 = bit_not %idVal_79
	move %idVal_81 %varDef_201
	move %idVal_82 %varDef_202
	%res_83 = bit_or %idVal_81 %idVal_82
	move %idVal_84 %varDef_201
	move %idVal_85 %varDef_202
	%res_86 = bit_xor %idVal_84 %idVal_85
	move %idVal_87 %varDef_201
	move %idVal_88 %varDef_202
	%res_89 = bit_and %idVal_87 %idVal_88
	move %idVal_90 %varDef_201
	move %oldVal_91 %varDef_201
	%newVal_92 = inc %oldVal_91
	move %varDef_203 %newVal_92
	move %idVal_93 %varDef_202
	move %oldVal_94 %varDef_202
	%newVal_95 = inc %oldVal_94
	move %varDef_204 %newVal_95
	move %classPtr_96 %varDef_190
	%memberAddr_97 = add %classPtr_96 0
	%memberVal_98 = load %memberAddr_97
	move %arrayPtr_99 %varDef_191
	%arrayBase_100 = add %arrayPtr_99 4
	%offset_101 = mul 2 4
	%elementAddr_102 = add %arrayBase_100 %offset_101
	%classPtr_103 = load %elementAddr_102
	%memberAddr_104 = add %classPtr_103 0
	%memberVal_105 = load %memberAddr_104
	move %arrayPtr_106 %varDef_199
	%arrayBase_107 = add %arrayPtr_106 4
	%offset_108 = mul 1 4
	%elementAddr_109 = add %arrayBase_107 %offset_108
	%arrayPtr_110 = load %elementAddr_109
	%arrayBase_111 = add %arrayPtr_110 4
	%offset_112 = mul 2 4
	%elementAddr_113 = add %arrayBase_111 %offset_112
	%arrayPtr_114 = load %elementAddr_113
	%arrayBase_115 = add %arrayPtr_114 4
	%offset_116 = mul 3 4
	%elementAddr_117 = add %arrayBase_115 %offset_116
	%classPtr_118 = load %elementAddr_117
	%memberAddr_119 = add %classPtr_118 0
	%memberVal_120 = load %memberAddr_119
	%classPtr_122 = malloc 12
	%res_121 = #xu ( %classPtr_122 0 )
	move %varDef_205 0
	move %varDef_206 0
	br <13>

<13> for_cond
	%varDef_207 = phi <11> %varDef_206 <15> %varDef_208
	move %idVal_124 %varDef_207
	%res_125 = lt %idVal_124 3
	br %res_125 <14> <16>

<14> for_body
	move %idVal_127 %varDef_200
	move %arrayPtr_128 %varDef_191
	%arrayBase_129 = add %arrayPtr_128 4
	move %idVal_130 %varDef_207
	%offset_131 = mul %idVal_130 4
	%elementAddr_132 = add %arrayBase_129 %offset_131
	%elementVal_133 = load %elementAddr_132
	%res_126 = #xu ( %idVal_127 %elementVal_133 )
	br <15>

<15> for_step
	move %idVal_134 %varDef_207
	move %oldVal_135 %varDef_207
	%newVal_136 = inc %oldVal_135
	move %varDef_208 %newVal_136
	br <13>

<16> for_end
	move %varDef_209 0
	br <17>

<17> for_cond
	%varDef_210 = phi <16> %varDef_209 <19> %varDef_211
	move %idVal_137 %varDef_210
	%res_138 = lt %idVal_137 3
	br %res_138 <18> <20>

<18> for_body
	move %idVal_140 %varDef_200
	move %arrayPtr_141 %varDef_191
	%arrayBase_142 = add %arrayPtr_141 4
	move %idVal_143 %varDef_210
	%offset_144 = mul %idVal_143 4
	%elementAddr_145 = add %arrayBase_142 %offset_144
	%elementVal_146 = load %elementAddr_145
	%res_139 = #xu ( %idVal_140 %elementVal_146 )
	br <19>

<19> for_step
	move %idVal_147 %varDef_210
	move %oldVal_148 %varDef_210
	%newVal_149 = inc %oldVal_148
	move %varDef_211 %newVal_149
	br <17>

<20> for_end
	br <21>

<21> for_cond
	br <22>

<22> for_body
	br <23>

<23> for_step
	br <21>

<24> for_end
	store 0 %varAddr_123
	br <25>

<25> while_cond
	%idVal_150 = load %varAddr_123
	%idVal_151 = load %varAddr_3
	%res_152 = lt %idVal_150 %idVal_151
	br %res_152 <26> <27>

<26> while_body
	%idVal_154 = load %varAddr_123
	%res_153 = #toString ( %idVal_154 )
	#print ( %res_153 )
	br <25>

<27> while_end
	br <28>

<28> while_cond
	br 1 <29> <30>

<29> while_body
	br <28>

<30> while_end
	%idVal_155 = load %varAddr_123
	%idVal_156 = load %varAddr_3
	%res_157 = lt %idVal_155 %idVal_156
	br %res_157 <31> <32>

<31> if_true
	%res_159 = #travel ( )
	%res_158 = #toString ( %res_159 )
	#print ( %res_158 )
	br <33>

<32> if_false
	#print ( $str_2 )
	br <33>

<33> if_merge
	%idVal_160 = load %varAddr_123
	%idVal_161 = load %varAddr_3
	%res_162 = lt %idVal_160 %idVal_161
	br %res_162 <34> <35>

<34> if_true
	%res_164 = #travel ( )
	%res_163 = #toString ( %res_164 )
	#print ( %res_163 )
	br <36>

<35> if_false
	%idVal_165 = load %varAddr_123
	%idVal_166 = load %varAddr_3
	%res_167 = eq %idVal_165 %idVal_166
	br %res_167 <37> <38>

<37> if_true
	#print ( $str_2 )
	br <39>

<38> if_false
	#print ( $str_7 )
	br <39>

<39> if_merge
	br <36>

<36> if_merge
	store 0 %varAddr_123
	br <40>

<40> while_cond
	br 1 <41> <42>

<41> while_body
	%idVal_168 = load %varAddr_123
	%idVal_169 = load %varAddr_3
	%res_170 = eq %idVal_168 %idVal_169
	br %res_170 <43> <44>

<43> if_true
	br <42>

<44> if_merge
	%idVal_171 = load %varAddr_123
	%oldVal_172 = load %varAddr_123
	%newVal_173 = inc %oldVal_172
	store %newVal_173 %varAddr_123
	br <40>

<42> while_end
	store 0 %varAddr_123
	br <45>

<45> while_cond
	br 1 <46> <47>

<46> while_body
	%idVal_174 = load %varAddr_123
	%idVal_175 = load %varAddr_3
	%res_176 = lt %idVal_174 %idVal_175
	br %res_176 <48> <49>

<48> if_true
	%idVal_177 = load %varAddr_123
	%oldVal_178 = load %varAddr_123
	%newVal_179 = inc %oldVal_178
	store %newVal_179 %varAddr_123
	br <45>

<49> if_merge
	br <47>

<47> while_end
	store $str_8 %varAddr_180
	%classPtr_183 = load %varAddr_180
	%res_182 = #string#length ( %classPtr_183 )
	%res_181 = #toString ( %res_182 )
	#print ( %res_181 )
	%classPtr_185 = load %varAddr_180
	%res_184 = #string#substring ( %classPtr_185 1 2 )
	#print ( %res_184 )
	ret 0

}

