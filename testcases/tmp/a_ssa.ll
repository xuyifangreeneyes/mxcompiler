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

define #gcd ( %argVal_0 %argVal_2 ) {
<0> entry
	move %varDef_53 %argVal_0
	move %varDef_54 %argVal_2
	move %idVal_4 %varDef_53
	move %idVal_5 %varDef_54
	%res_6 = mod %idVal_4 %idVal_5
	%res_7 = eq %res_6 0
	br %res_7 <1> <2>

<1> if_true
	move %idVal_8 %varDef_54
	ret %idVal_8

<2> if_false
	move %idVal_10 %varDef_54
	move %idVal_11 %varDef_53
	move %idVal_12 %varDef_54
	%res_13 = mod %idVal_11 %idVal_12
	move %varDef_55 %idVal_10
	move %varDef_56 %res_13
	move %cidVal_17 %varDef_55
	move %cidVal_18 %varDef_56
	%cres_19 = mod %cidVal_17 %cidVal_18
	%cres_20 = eq %cres_19 0
	br %cres_20 <6> <7>

<6> cif_true
	move %cidVal_21 %varDef_56
	move %varDef_57 %cidVal_21
	br <4>

<7> cif_false
	move %cidVal_22 %varDef_56
	move %cidVal_23 %varDef_55
	move %cidVal_24 %varDef_56
	%cres_25 = mod %cidVal_23 %cidVal_24
	move %varDef_58 %cidVal_22
	move %varDef_59 %cres_25
	move %cidVal_30 %varDef_58
	move %cidVal_31 %varDef_59
	%cres_32 = mod %cidVal_30 %cidVal_31
	%cres_33 = eq %cres_32 0
	br %cres_33 <11> <12>

<11> cif_true
	move %cidVal_34 %varDef_59
	move %varDef_60 %cidVal_34
	br <9>

<12> cif_false
	move %cidVal_35 %varDef_59
	move %cidVal_36 %varDef_58
	move %cidVal_37 %varDef_59
	%cres_38 = mod %cidVal_36 %cidVal_37
	move %varDef_61 %cidVal_35
	move %varDef_62 %cres_38
	move %cidVal_43 %varDef_61
	move %cidVal_44 %varDef_62
	%cres_45 = mod %cidVal_43 %cidVal_44
	%cres_46 = eq %cres_45 0
	br %cres_46 <16> <17>

<16> cif_true
	move %cidVal_47 %varDef_62
	move %varDef_63 %cidVal_47
	br <14>

<17> cif_false
	move %cidVal_48 %varDef_62
	move %cidVal_49 %varDef_61
	move %cidVal_50 %varDef_62
	%cres_51 = mod %cidVal_49 %cidVal_50
	%cres_52 = #gcd ( %cidVal_48 %cres_51 )
	move %varDef_64 %cres_52
	br <14>

<14> after_call
	%varDef_65 = phi <16> %varDef_63 <17> %varDef_64
	move %cres_39 %varDef_65
	move %varDef_66 %cres_39
	br <9>

<9> after_call
	%varDef_67 = phi <11> %varDef_60 <14> %varDef_66
	%varDef_68 = phi <11> 0 <14> %varDef_65
	%varDef_69 = phi <11> 0 <14> %varDef_62
	%varDef_70 = phi <11> 0 <14> %varDef_61
	move %cres_26 %varDef_67
	move %varDef_71 %cres_26
	br <4>

<4> after_call
	%varDef_72 = phi <6> %varDef_57 <9> %varDef_71
	%varDef_73 = phi <6> 0 <9> %varDef_67
	%varDef_74 = phi <6> 0 <9> %varDef_59
	%varDef_75 = phi <6> 0 <9> %varDef_58
	%varDef_76 = phi <6> 0 <9> %varDef_68
	%varDef_77 = phi <6> 0 <9> %varDef_69
	%varDef_78 = phi <6> 0 <9> %varDef_70
	move %res_9 %varDef_72
	ret %res_9

}

define #main ( ) {
<0> entry
	br <2>

<2> centry
	move %varDef_123 10
	move %varDef_124 1
	move %cidVal_9 %varDef_123
	move %cidVal_10 %varDef_124
	%cres_11 = mod %cidVal_9 %cidVal_10
	%cres_12 = eq %cres_11 0
	br %cres_12 <3> <4>

<3> cif_true
	move %cidVal_13 %varDef_124
	move %varDef_125 %cidVal_13
	br <1>

<4> cif_false
	move %cidVal_14 %varDef_124
	move %cidVal_15 %varDef_123
	move %cidVal_16 %varDef_124
	%cres_17 = mod %cidVal_15 %cidVal_16
	move %varDef_126 %cidVal_14
	move %varDef_127 %cres_17
	move %cidVal_48 %varDef_126
	move %cidVal_49 %varDef_127
	%cres_50 = mod %cidVal_48 %cidVal_49
	%cres_51 = eq %cres_50 0
	br %cres_51 <18> <19>

<18> cif_true
	move %cidVal_52 %varDef_127
	move %varDef_128 %cidVal_52
	br <16>

<19> cif_false
	move %cidVal_53 %varDef_127
	move %cidVal_54 %varDef_126
	move %cidVal_55 %varDef_127
	%cres_56 = mod %cidVal_54 %cidVal_55
	move %varDef_129 %cidVal_53
	move %varDef_130 %cres_56
	move %cidVal_87 %varDef_129
	move %cidVal_88 %varDef_130
	%cres_89 = mod %cidVal_87 %cidVal_88
	%cres_90 = eq %cres_89 0
	br %cres_90 <33> <34>

<33> cif_true
	move %cidVal_91 %varDef_130
	move %varDef_131 %cidVal_91
	br <31>

<34> cif_false
	move %cidVal_92 %varDef_130
	move %cidVal_93 %varDef_129
	move %cidVal_94 %varDef_130
	%cres_95 = mod %cidVal_93 %cidVal_94
	%cres_96 = #gcd ( %cidVal_92 %cres_95 )
	move %varDef_132 %cres_96
	br <31>

<31> after_call
	%varDef_133 = phi <33> %varDef_131 <34> %varDef_132
	move %cres_57 %varDef_133
	move %varDef_134 %cres_57
	br <16>

<16> after_call
	%varDef_135 = phi <18> %varDef_128 <31> %varDef_134
	%varDef_136 = phi <18> 0 <31> %varDef_133
	%varDef_137 = phi <18> 0 <31> %varDef_130
	%varDef_138 = phi <18> 0 <31> %varDef_129
	move %cres_18 %varDef_135
	move %varDef_139 %cres_18
	br <1>

<1> after_call
	%varDef_140 = phi <3> %varDef_125 <16> %varDef_139
	%varDef_141 = phi <3> 0 <16> %varDef_135
	%varDef_142 = phi <3> 0 <16> %varDef_127
	%varDef_143 = phi <3> 0 <16> %varDef_126
	%varDef_144 = phi <3> 0 <16> %varDef_136
	%varDef_145 = phi <3> 0 <16> %varDef_137
	%varDef_146 = phi <3> 0 <16> %varDef_138
	move %res_1 %varDef_140
	%res_0 = #toString ( %res_1 )
	#println ( %res_0 )
	move %varDef_147 34986
	move %varDef_148 3087
	move %cidVal_22 %varDef_147
	move %cidVal_23 %varDef_148
	%cres_24 = mod %cidVal_22 %cidVal_23
	%cres_25 = eq %cres_24 0
	br %cres_25 <8> <9>

<8> cif_true
	move %cidVal_26 %varDef_148
	move %varDef_149 %cidVal_26
	br <6>

<9> cif_false
	move %cidVal_27 %varDef_148
	move %cidVal_28 %varDef_147
	move %cidVal_29 %varDef_148
	%cres_30 = mod %cidVal_28 %cidVal_29
	move %varDef_150 %cidVal_27
	move %varDef_151 %cres_30
	move %cidVal_61 %varDef_150
	move %cidVal_62 %varDef_151
	%cres_63 = mod %cidVal_61 %cidVal_62
	%cres_64 = eq %cres_63 0
	br %cres_64 <23> <24>

<23> cif_true
	move %cidVal_65 %varDef_151
	move %varDef_152 %cidVal_65
	br <21>

<24> cif_false
	move %cidVal_66 %varDef_151
	move %cidVal_67 %varDef_150
	move %cidVal_68 %varDef_151
	%cres_69 = mod %cidVal_67 %cidVal_68
	move %varDef_153 %cidVal_66
	move %varDef_154 %cres_69
	move %cidVal_100 %varDef_153
	move %cidVal_101 %varDef_154
	%cres_102 = mod %cidVal_100 %cidVal_101
	%cres_103 = eq %cres_102 0
	br %cres_103 <38> <39>

<38> cif_true
	move %cidVal_104 %varDef_154
	move %varDef_155 %cidVal_104
	br <36>

<39> cif_false
	move %cidVal_105 %varDef_154
	move %cidVal_106 %varDef_153
	move %cidVal_107 %varDef_154
	%cres_108 = mod %cidVal_106 %cidVal_107
	%cres_109 = #gcd ( %cidVal_105 %cres_108 )
	move %varDef_156 %cres_109
	br <36>

<36> after_call
	%varDef_157 = phi <38> %varDef_155 <39> %varDef_156
	move %cres_70 %varDef_157
	move %varDef_158 %cres_70
	br <21>

<21> after_call
	%varDef_159 = phi <23> %varDef_152 <36> %varDef_158
	%varDef_160 = phi <23> 0 <36> %varDef_157
	%varDef_161 = phi <23> 0 <36> %varDef_154
	%varDef_162 = phi <23> 0 <36> %varDef_153
	move %cres_31 %varDef_159
	move %varDef_163 %cres_31
	br <6>

<6> after_call
	%varDef_164 = phi <8> %varDef_149 <21> %varDef_163
	%varDef_165 = phi <8> 0 <21> %varDef_159
	%varDef_166 = phi <8> 0 <21> %varDef_151
	%varDef_167 = phi <8> 0 <21> %varDef_150
	%varDef_168 = phi <8> 0 <21> %varDef_160
	%varDef_169 = phi <8> 0 <21> %varDef_161
	%varDef_170 = phi <8> 0 <21> %varDef_162
	move %res_3 %varDef_164
	%res_2 = #toString ( %res_3 )
	#println ( %res_2 )
	move %varDef_171 2907
	move %varDef_172 1539
	move %cidVal_35 %varDef_171
	move %cidVal_36 %varDef_172
	%cres_37 = mod %cidVal_35 %cidVal_36
	%cres_38 = eq %cres_37 0
	br %cres_38 <13> <14>

<13> cif_true
	move %cidVal_39 %varDef_172
	move %varDef_173 %cidVal_39
	br <11>

<14> cif_false
	move %cidVal_40 %varDef_172
	move %cidVal_41 %varDef_171
	move %cidVal_42 %varDef_172
	%cres_43 = mod %cidVal_41 %cidVal_42
	move %varDef_174 %cidVal_40
	move %varDef_175 %cres_43
	move %cidVal_74 %varDef_174
	move %cidVal_75 %varDef_175
	%cres_76 = mod %cidVal_74 %cidVal_75
	%cres_77 = eq %cres_76 0
	br %cres_77 <28> <29>

<28> cif_true
	move %cidVal_78 %varDef_175
	move %varDef_176 %cidVal_78
	br <26>

<29> cif_false
	move %cidVal_79 %varDef_175
	move %cidVal_80 %varDef_174
	move %cidVal_81 %varDef_175
	%cres_82 = mod %cidVal_80 %cidVal_81
	move %varDef_177 %cidVal_79
	move %varDef_178 %cres_82
	move %cidVal_113 %varDef_177
	move %cidVal_114 %varDef_178
	%cres_115 = mod %cidVal_113 %cidVal_114
	%cres_116 = eq %cres_115 0
	br %cres_116 <43> <44>

<43> cif_true
	move %cidVal_117 %varDef_178
	move %varDef_179 %cidVal_117
	br <41>

<44> cif_false
	move %cidVal_118 %varDef_178
	move %cidVal_119 %varDef_177
	move %cidVal_120 %varDef_178
	%cres_121 = mod %cidVal_119 %cidVal_120
	%cres_122 = #gcd ( %cidVal_118 %cres_121 )
	move %varDef_180 %cres_122
	br <41>

<41> after_call
	%varDef_181 = phi <43> %varDef_179 <44> %varDef_180
	move %cres_83 %varDef_181
	move %varDef_182 %cres_83
	br <26>

<26> after_call
	%varDef_183 = phi <28> %varDef_176 <41> %varDef_182
	%varDef_184 = phi <28> 0 <41> %varDef_181
	%varDef_185 = phi <28> 0 <41> %varDef_178
	%varDef_186 = phi <28> 0 <41> %varDef_177
	move %cres_44 %varDef_183
	move %varDef_187 %cres_44
	br <11>

<11> after_call
	%varDef_188 = phi <13> %varDef_173 <26> %varDef_187
	%varDef_189 = phi <13> 0 <26> %varDef_183
	%varDef_190 = phi <13> 0 <26> %varDef_175
	%varDef_191 = phi <13> 0 <26> %varDef_174
	%varDef_192 = phi <13> 0 <26> %varDef_184
	%varDef_193 = phi <13> 0 <26> %varDef_185
	%varDef_194 = phi <13> 0 <26> %varDef_186
	move %res_5 %varDef_188
	%res_4 = #toString ( %res_5 )
	#println ( %res_4 )
	ret 0

}

