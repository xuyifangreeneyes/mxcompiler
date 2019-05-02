$str_0 "A"

$str_1 "B"

$str_2 "C"

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

define cd ( %argVal_0 %argVal_2 %argVal_4 %argVal_6 %argVal_8 ) {
<0> entry
	%cargAddr_183 = alloca 8
	%cargAddr_182 = alloca 8
	%cargAddr_181 = alloca 8
	%cargAddr_180 = alloca 8
	%cargAddr_179 = alloca 8
	%retValAddr_178 = alloca 8
	%cargAddr_154 = alloca 8
	%cargAddr_153 = alloca 8
	%cargAddr_152 = alloca 8
	%cargAddr_151 = alloca 8
	%cargAddr_150 = alloca 8
	%retValAddr_149 = alloca 8
	%cargAddr_125 = alloca 8
	%cargAddr_124 = alloca 8
	%cargAddr_123 = alloca 8
	%cargAddr_122 = alloca 8
	%cargAddr_121 = alloca 8
	%retValAddr_120 = alloca 8
	%cargAddr_96 = alloca 8
	%cargAddr_95 = alloca 8
	%cargAddr_94 = alloca 8
	%cargAddr_93 = alloca 8
	%cargAddr_92 = alloca 8
	%retValAddr_91 = alloca 8
	%cargAddr_67 = alloca 8
	%cargAddr_66 = alloca 8
	%cargAddr_65 = alloca 8
	%cargAddr_64 = alloca 8
	%cargAddr_63 = alloca 8
	%retValAddr_62 = alloca 8
	%cargAddr_38 = alloca 8
	%cargAddr_37 = alloca 8
	%cargAddr_36 = alloca 8
	%cargAddr_35 = alloca 8
	%cargAddr_34 = alloca 8
	%retValAddr_33 = alloca 8
	%argAddr_9 = alloca 8
	%argAddr_7 = alloca 8
	%argAddr_5 = alloca 8
	%argAddr_3 = alloca 8
	%argAddr_1 = alloca 8
	store %argVal_0 %argAddr_1
	store %argVal_2 %argAddr_3
	store %argVal_4 %argAddr_5
	store %argVal_6 %argAddr_7
	store %argVal_8 %argAddr_9
	%idVal_10 = load %argAddr_1
	%res_11 = eq %idVal_10 1
	br %res_11 <1> <2>

<1> if_true
	%idVal_12 = load %argAddr_9
	%oldVal_13 = load %argAddr_9
	%newVal_14 = inc %oldVal_13
	store %newVal_14 %argAddr_9
	br <3>

<2> if_false
	%idVal_16 = load %argAddr_1
	%res_17 = sub %idVal_16 1
	%idVal_18 = load %argAddr_3
	%idVal_19 = load %argAddr_7
	%idVal_20 = load %argAddr_5
	%idVal_21 = load %argAddr_9
	br <5>

<5> centry
	store %res_17 %cargAddr_38
	store %idVal_18 %cargAddr_37
	store %idVal_19 %cargAddr_36
	store %idVal_20 %cargAddr_35
	store %idVal_21 %cargAddr_34
	%cidVal_39 = load %cargAddr_38
	%cres_40 = eq %cidVal_39 1
	br %cres_40 <6> <7>

<6> cif_true
	%cidVal_41 = load %cargAddr_34
	%coldVal_42 = load %cargAddr_34
	%cnewVal_43 = inc %coldVal_42
	store %cnewVal_43 %cargAddr_34
	br <8>

<7> cif_false
	%cidVal_44 = load %cargAddr_38
	%cres_45 = sub %cidVal_44 1
	%cidVal_46 = load %cargAddr_37
	%cidVal_47 = load %cargAddr_35
	%cidVal_48 = load %cargAddr_36
	%cidVal_49 = load %cargAddr_34
	br <15>

<15> centry
	store %cres_45 %cargAddr_96
	store %cidVal_46 %cargAddr_95
	store %cidVal_47 %cargAddr_94
	store %cidVal_48 %cargAddr_93
	store %cidVal_49 %cargAddr_92
	%cidVal_97 = load %cargAddr_96
	%cres_98 = eq %cidVal_97 1
	br %cres_98 <16> <17>

<16> cif_true
	%cidVal_99 = load %cargAddr_92
	%coldVal_100 = load %cargAddr_92
	%cnewVal_101 = inc %coldVal_100
	store %cnewVal_101 %cargAddr_92
	br <18>

<17> cif_false
	%cidVal_102 = load %cargAddr_96
	%cres_103 = sub %cidVal_102 1
	%cidVal_104 = load %cargAddr_95
	%cidVal_105 = load %cargAddr_93
	%cidVal_106 = load %cargAddr_94
	%cidVal_107 = load %cargAddr_92
	%cres_108 = cd ( %cres_103 %cidVal_104 %cidVal_105 %cidVal_106 %cidVal_107 )
	store %cres_108 %cargAddr_92
	%cidVal_109 = load %cargAddr_96
	%cres_110 = sub %cidVal_109 1
	%cidVal_111 = load %cargAddr_94
	%cidVal_112 = load %cargAddr_95
	%cidVal_113 = load %cargAddr_93
	%cidVal_114 = load %cargAddr_92
	%cres_115 = cd ( %cres_110 %cidVal_111 %cidVal_112 %cidVal_113 %cidVal_114 )
	store %cres_115 %cargAddr_92
	%cidVal_116 = load %cargAddr_92
	%coldVal_117 = load %cargAddr_92
	%cnewVal_118 = inc %coldVal_117
	store %cnewVal_118 %cargAddr_92
	br <18>

<18> cif_merge
	%cidVal_119 = load %cargAddr_92
	store %cidVal_119 %retValAddr_91
	br <14>

<14> after_call
	%cres_50 = load %retValAddr_91
	store %cres_50 %cargAddr_34
	%cidVal_51 = load %cargAddr_38
	%cres_52 = sub %cidVal_51 1
	%cidVal_53 = load %cargAddr_36
	%cidVal_54 = load %cargAddr_37
	%cidVal_55 = load %cargAddr_35
	%cidVal_56 = load %cargAddr_34
	br <20>

<20> centry
	store %cres_52 %cargAddr_125
	store %cidVal_53 %cargAddr_124
	store %cidVal_54 %cargAddr_123
	store %cidVal_55 %cargAddr_122
	store %cidVal_56 %cargAddr_121
	%cidVal_126 = load %cargAddr_125
	%cres_127 = eq %cidVal_126 1
	br %cres_127 <21> <22>

<21> cif_true
	%cidVal_128 = load %cargAddr_121
	%coldVal_129 = load %cargAddr_121
	%cnewVal_130 = inc %coldVal_129
	store %cnewVal_130 %cargAddr_121
	br <23>

<22> cif_false
	%cidVal_131 = load %cargAddr_125
	%cres_132 = sub %cidVal_131 1
	%cidVal_133 = load %cargAddr_124
	%cidVal_134 = load %cargAddr_122
	%cidVal_135 = load %cargAddr_123
	%cidVal_136 = load %cargAddr_121
	%cres_137 = cd ( %cres_132 %cidVal_133 %cidVal_134 %cidVal_135 %cidVal_136 )
	store %cres_137 %cargAddr_121
	%cidVal_138 = load %cargAddr_125
	%cres_139 = sub %cidVal_138 1
	%cidVal_140 = load %cargAddr_123
	%cidVal_141 = load %cargAddr_124
	%cidVal_142 = load %cargAddr_122
	%cidVal_143 = load %cargAddr_121
	%cres_144 = cd ( %cres_139 %cidVal_140 %cidVal_141 %cidVal_142 %cidVal_143 )
	store %cres_144 %cargAddr_121
	%cidVal_145 = load %cargAddr_121
	%coldVal_146 = load %cargAddr_121
	%cnewVal_147 = inc %coldVal_146
	store %cnewVal_147 %cargAddr_121
	br <23>

<23> cif_merge
	%cidVal_148 = load %cargAddr_121
	store %cidVal_148 %retValAddr_120
	br <19>

<19> after_call
	%cres_57 = load %retValAddr_120
	store %cres_57 %cargAddr_34
	%cidVal_58 = load %cargAddr_34
	%coldVal_59 = load %cargAddr_34
	%cnewVal_60 = inc %coldVal_59
	store %cnewVal_60 %cargAddr_34
	br <8>

<8> cif_merge
	%cidVal_61 = load %cargAddr_34
	store %cidVal_61 %retValAddr_33
	br <4>

<4> after_call
	%res_15 = load %retValAddr_33
	store %res_15 %argAddr_9
	%idVal_23 = load %argAddr_1
	%res_24 = sub %idVal_23 1
	%idVal_25 = load %argAddr_5
	%idVal_26 = load %argAddr_3
	%idVal_27 = load %argAddr_7
	%idVal_28 = load %argAddr_9
	br <10>

<10> centry
	store %res_24 %cargAddr_67
	store %idVal_25 %cargAddr_66
	store %idVal_26 %cargAddr_65
	store %idVal_27 %cargAddr_64
	store %idVal_28 %cargAddr_63
	%cidVal_68 = load %cargAddr_67
	%cres_69 = eq %cidVal_68 1
	br %cres_69 <11> <12>

<11> cif_true
	%cidVal_70 = load %cargAddr_63
	%coldVal_71 = load %cargAddr_63
	%cnewVal_72 = inc %coldVal_71
	store %cnewVal_72 %cargAddr_63
	br <13>

<12> cif_false
	%cidVal_73 = load %cargAddr_67
	%cres_74 = sub %cidVal_73 1
	%cidVal_75 = load %cargAddr_66
	%cidVal_76 = load %cargAddr_64
	%cidVal_77 = load %cargAddr_65
	%cidVal_78 = load %cargAddr_63
	br <25>

<25> centry
	store %cres_74 %cargAddr_154
	store %cidVal_75 %cargAddr_153
	store %cidVal_76 %cargAddr_152
	store %cidVal_77 %cargAddr_151
	store %cidVal_78 %cargAddr_150
	%cidVal_155 = load %cargAddr_154
	%cres_156 = eq %cidVal_155 1
	br %cres_156 <26> <27>

<26> cif_true
	%cidVal_157 = load %cargAddr_150
	%coldVal_158 = load %cargAddr_150
	%cnewVal_159 = inc %coldVal_158
	store %cnewVal_159 %cargAddr_150
	br <28>

<27> cif_false
	%cidVal_160 = load %cargAddr_154
	%cres_161 = sub %cidVal_160 1
	%cidVal_162 = load %cargAddr_153
	%cidVal_163 = load %cargAddr_151
	%cidVal_164 = load %cargAddr_152
	%cidVal_165 = load %cargAddr_150
	%cres_166 = cd ( %cres_161 %cidVal_162 %cidVal_163 %cidVal_164 %cidVal_165 )
	store %cres_166 %cargAddr_150
	%cidVal_167 = load %cargAddr_154
	%cres_168 = sub %cidVal_167 1
	%cidVal_169 = load %cargAddr_152
	%cidVal_170 = load %cargAddr_153
	%cidVal_171 = load %cargAddr_151
	%cidVal_172 = load %cargAddr_150
	%cres_173 = cd ( %cres_168 %cidVal_169 %cidVal_170 %cidVal_171 %cidVal_172 )
	store %cres_173 %cargAddr_150
	%cidVal_174 = load %cargAddr_150
	%coldVal_175 = load %cargAddr_150
	%cnewVal_176 = inc %coldVal_175
	store %cnewVal_176 %cargAddr_150
	br <28>

<28> cif_merge
	%cidVal_177 = load %cargAddr_150
	store %cidVal_177 %retValAddr_149
	br <24>

<24> after_call
	%cres_79 = load %retValAddr_149
	store %cres_79 %cargAddr_63
	%cidVal_80 = load %cargAddr_67
	%cres_81 = sub %cidVal_80 1
	%cidVal_82 = load %cargAddr_65
	%cidVal_83 = load %cargAddr_66
	%cidVal_84 = load %cargAddr_64
	%cidVal_85 = load %cargAddr_63
	br <30>

<30> centry
	store %cres_81 %cargAddr_183
	store %cidVal_82 %cargAddr_182
	store %cidVal_83 %cargAddr_181
	store %cidVal_84 %cargAddr_180
	store %cidVal_85 %cargAddr_179
	%cidVal_184 = load %cargAddr_183
	%cres_185 = eq %cidVal_184 1
	br %cres_185 <31> <32>

<31> cif_true
	%cidVal_186 = load %cargAddr_179
	%coldVal_187 = load %cargAddr_179
	%cnewVal_188 = inc %coldVal_187
	store %cnewVal_188 %cargAddr_179
	br <33>

<32> cif_false
	%cidVal_189 = load %cargAddr_183
	%cres_190 = sub %cidVal_189 1
	%cidVal_191 = load %cargAddr_182
	%cidVal_192 = load %cargAddr_180
	%cidVal_193 = load %cargAddr_181
	%cidVal_194 = load %cargAddr_179
	%cres_195 = cd ( %cres_190 %cidVal_191 %cidVal_192 %cidVal_193 %cidVal_194 )
	store %cres_195 %cargAddr_179
	%cidVal_196 = load %cargAddr_183
	%cres_197 = sub %cidVal_196 1
	%cidVal_198 = load %cargAddr_181
	%cidVal_199 = load %cargAddr_182
	%cidVal_200 = load %cargAddr_180
	%cidVal_201 = load %cargAddr_179
	%cres_202 = cd ( %cres_197 %cidVal_198 %cidVal_199 %cidVal_200 %cidVal_201 )
	store %cres_202 %cargAddr_179
	%cidVal_203 = load %cargAddr_179
	%coldVal_204 = load %cargAddr_179
	%cnewVal_205 = inc %coldVal_204
	store %cnewVal_205 %cargAddr_179
	br <33>

<33> cif_merge
	%cidVal_206 = load %cargAddr_179
	store %cidVal_206 %retValAddr_178
	br <29>

<29> after_call
	%cres_86 = load %retValAddr_178
	store %cres_86 %cargAddr_63
	%cidVal_87 = load %cargAddr_63
	%coldVal_88 = load %cargAddr_63
	%cnewVal_89 = inc %coldVal_88
	store %cnewVal_89 %cargAddr_63
	br <13>

<13> cif_merge
	%cidVal_90 = load %cargAddr_63
	store %cidVal_90 %retValAddr_62
	br <9>

<9> after_call
	%res_22 = load %retValAddr_62
	store %res_22 %argAddr_9
	%idVal_29 = load %argAddr_9
	%oldVal_30 = load %argAddr_9
	%newVal_31 = inc %oldVal_30
	store %newVal_31 %argAddr_9
	br <3>

<3> if_merge
	%idVal_32 = load %argAddr_9
	ret %idVal_32

}

define main ( ) {
<0> entry
	%cargAddr_75 = alloca 8
	%cargAddr_74 = alloca 8
	%cargAddr_73 = alloca 8
	%cargAddr_72 = alloca 8
	%cargAddr_71 = alloca 8
	%retValAddr_70 = alloca 8
	%cargAddr_46 = alloca 8
	%cargAddr_45 = alloca 8
	%cargAddr_44 = alloca 8
	%cargAddr_43 = alloca 8
	%cargAddr_42 = alloca 8
	%retValAddr_41 = alloca 8
	%cargAddr_17 = alloca 8
	%cargAddr_16 = alloca 8
	%cargAddr_15 = alloca 8
	%cargAddr_14 = alloca 8
	%cargAddr_13 = alloca 8
	%retValAddr_12 = alloca 8
	%varAddr_5 = alloca 8
	%varAddr_3 = alloca 8
	%varAddr_2 = alloca 8
	%varAddr_1 = alloca 8
	%varAddr_0 = alloca 8
	store $str_0 %varAddr_0
	store $str_1 %varAddr_1
	store $str_2 %varAddr_2
	%res_4 = getInt ( )
	store %res_4 %varAddr_3
	%idVal_7 = load %varAddr_3
	%idVal_8 = load %varAddr_0
	%idVal_9 = load %varAddr_1
	%idVal_10 = load %varAddr_2
	br <2>

<2> centry
	store %idVal_7 %cargAddr_17
	store %idVal_8 %cargAddr_16
	store %idVal_9 %cargAddr_15
	store %idVal_10 %cargAddr_14
	store 0 %cargAddr_13
	%cidVal_18 = load %cargAddr_17
	%cres_19 = eq %cidVal_18 1
	br %cres_19 <3> <4>

<3> cif_true
	%cidVal_20 = load %cargAddr_13
	%coldVal_21 = load %cargAddr_13
	%cnewVal_22 = inc %coldVal_21
	store %cnewVal_22 %cargAddr_13
	br <5>

<4> cif_false
	%cidVal_23 = load %cargAddr_17
	%cres_24 = sub %cidVal_23 1
	%cidVal_25 = load %cargAddr_16
	%cidVal_26 = load %cargAddr_14
	%cidVal_27 = load %cargAddr_15
	%cidVal_28 = load %cargAddr_13
	br <7>

<7> centry
	store %cres_24 %cargAddr_46
	store %cidVal_25 %cargAddr_45
	store %cidVal_26 %cargAddr_44
	store %cidVal_27 %cargAddr_43
	store %cidVal_28 %cargAddr_42
	%cidVal_47 = load %cargAddr_46
	%cres_48 = eq %cidVal_47 1
	br %cres_48 <8> <9>

<8> cif_true
	%cidVal_49 = load %cargAddr_42
	%coldVal_50 = load %cargAddr_42
	%cnewVal_51 = inc %coldVal_50
	store %cnewVal_51 %cargAddr_42
	br <10>

<9> cif_false
	%cidVal_52 = load %cargAddr_46
	%cres_53 = sub %cidVal_52 1
	%cidVal_54 = load %cargAddr_45
	%cidVal_55 = load %cargAddr_43
	%cidVal_56 = load %cargAddr_44
	%cidVal_57 = load %cargAddr_42
	%cres_58 = cd ( %cres_53 %cidVal_54 %cidVal_55 %cidVal_56 %cidVal_57 )
	store %cres_58 %cargAddr_42
	%cidVal_59 = load %cargAddr_46
	%cres_60 = sub %cidVal_59 1
	%cidVal_61 = load %cargAddr_44
	%cidVal_62 = load %cargAddr_45
	%cidVal_63 = load %cargAddr_43
	%cidVal_64 = load %cargAddr_42
	%cres_65 = cd ( %cres_60 %cidVal_61 %cidVal_62 %cidVal_63 %cidVal_64 )
	store %cres_65 %cargAddr_42
	%cidVal_66 = load %cargAddr_42
	%coldVal_67 = load %cargAddr_42
	%cnewVal_68 = inc %coldVal_67
	store %cnewVal_68 %cargAddr_42
	br <10>

<10> cif_merge
	%cidVal_69 = load %cargAddr_42
	store %cidVal_69 %retValAddr_41
	br <6>

<6> after_call
	%cres_29 = load %retValAddr_41
	store %cres_29 %cargAddr_13
	%cidVal_30 = load %cargAddr_17
	%cres_31 = sub %cidVal_30 1
	%cidVal_32 = load %cargAddr_15
	%cidVal_33 = load %cargAddr_16
	%cidVal_34 = load %cargAddr_14
	%cidVal_35 = load %cargAddr_13
	br <12>

<12> centry
	store %cres_31 %cargAddr_75
	store %cidVal_32 %cargAddr_74
	store %cidVal_33 %cargAddr_73
	store %cidVal_34 %cargAddr_72
	store %cidVal_35 %cargAddr_71
	%cidVal_76 = load %cargAddr_75
	%cres_77 = eq %cidVal_76 1
	br %cres_77 <13> <14>

<13> cif_true
	%cidVal_78 = load %cargAddr_71
	%coldVal_79 = load %cargAddr_71
	%cnewVal_80 = inc %coldVal_79
	store %cnewVal_80 %cargAddr_71
	br <15>

<14> cif_false
	%cidVal_81 = load %cargAddr_75
	%cres_82 = sub %cidVal_81 1
	%cidVal_83 = load %cargAddr_74
	%cidVal_84 = load %cargAddr_72
	%cidVal_85 = load %cargAddr_73
	%cidVal_86 = load %cargAddr_71
	%cres_87 = cd ( %cres_82 %cidVal_83 %cidVal_84 %cidVal_85 %cidVal_86 )
	store %cres_87 %cargAddr_71
	%cidVal_88 = load %cargAddr_75
	%cres_89 = sub %cidVal_88 1
	%cidVal_90 = load %cargAddr_73
	%cidVal_91 = load %cargAddr_74
	%cidVal_92 = load %cargAddr_72
	%cidVal_93 = load %cargAddr_71
	%cres_94 = cd ( %cres_89 %cidVal_90 %cidVal_91 %cidVal_92 %cidVal_93 )
	store %cres_94 %cargAddr_71
	%cidVal_95 = load %cargAddr_71
	%coldVal_96 = load %cargAddr_71
	%cnewVal_97 = inc %coldVal_96
	store %cnewVal_97 %cargAddr_71
	br <15>

<15> cif_merge
	%cidVal_98 = load %cargAddr_71
	store %cidVal_98 %retValAddr_70
	br <11>

<11> after_call
	%cres_36 = load %retValAddr_70
	store %cres_36 %cargAddr_13
	%cidVal_37 = load %cargAddr_13
	%coldVal_38 = load %cargAddr_13
	%cnewVal_39 = inc %coldVal_38
	store %cnewVal_39 %cargAddr_13
	br <5>

<5> cif_merge
	%cidVal_40 = load %cargAddr_13
	store %cidVal_40 %retValAddr_12
	br <1>

<1> after_call
	%res_6 = load %retValAddr_12
	store %res_6 %varAddr_5
	%idVal_11 = load %varAddr_5
	__printlnInt ( %idVal_11 )
	ret 0

}

