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
	ret 

}

define main ( ) {
<0> entry
	%boolValAddr_142 = alloca 8
	%varAddr_141 = alloca 8
	%boolValAddr_120 = alloca 8
	%varAddr_119 = alloca 8
	%boolValAddr_98 = alloca 8
	%varAddr_97 = alloca 8
	%boolValAddr_76 = alloca 8
	%varAddr_75 = alloca 8
	%boolValAddr_54 = alloca 8
	%varAddr_53 = alloca 8
	%boolValAddr_32 = alloca 8
	%varAddr_31 = alloca 8
	%varAddr_9 = alloca 8
	%varAddr_7 = alloca 8
	%varAddr_6 = alloca 8
	%varAddr_5 = alloca 8
	%varAddr_4 = alloca 8
	%varAddr_3 = alloca 8
	%varAddr_2 = alloca 8
	%varAddr_1 = alloca 8
	%varAddr_0 = alloca 8
	%res_8 = getInt ( )
	store %res_8 %varAddr_7
	store 0 %varAddr_9
	store 0 %varAddr_0
	br <1>

<1> for_cond
	%idVal_10 = load %varAddr_0
	%idVal_11 = load %varAddr_7
	%res_12 = lt %idVal_10 %idVal_11
	br %res_12 <2> <4>

<2> for_body
	store 0 %varAddr_1
	br <5>

<5> for_cond
	%idVal_13 = load %varAddr_1
	%idVal_14 = load %varAddr_7
	%res_15 = lt %idVal_13 %idVal_14
	br %res_15 <6> <8>

<6> for_body
	store 0 %varAddr_2
	br <9>

<9> for_cond
	%idVal_16 = load %varAddr_2
	%idVal_17 = load %varAddr_7
	%res_18 = lt %idVal_16 %idVal_17
	br %res_18 <10> <12>

<10> for_body
	store 0 %varAddr_3
	br <13>

<13> for_cond
	%idVal_19 = load %varAddr_3
	%idVal_20 = load %varAddr_7
	%res_21 = lt %idVal_19 %idVal_20
	br %res_21 <14> <16>

<14> for_body
	store 0 %varAddr_4
	br <17>

<17> for_cond
	%idVal_22 = load %varAddr_4
	%idVal_23 = load %varAddr_7
	%res_24 = lt %idVal_22 %idVal_23
	br %res_24 <18> <20>

<18> for_body
	store 0 %varAddr_5
	br <21>

<21> for_cond
	%idVal_25 = load %varAddr_5
	%idVal_26 = load %varAddr_7
	%res_27 = lt %idVal_25 %idVal_26
	br %res_27 <22> <24>

<22> for_body
	store 0 %varAddr_6
	br <25>

<25> for_cond
	%idVal_28 = load %varAddr_6
	%idVal_29 = load %varAddr_7
	%res_30 = lt %idVal_28 %idVal_29
	br %res_30 <26> <28>

<26> for_body
	%idVal_33 = load %varAddr_0
	%idVal_34 = load %varAddr_1
	%res_35 = eq %idVal_33 %idVal_34
	br %res_35 <35> <34>

<35> lhs_true
	%idVal_36 = load %varAddr_2
	%res_37 = gt %idVal_36 0
	br %res_37 <29> <34>

<34> lhs_false
	%idVal_38 = load %varAddr_3
	%idVal_39 = load %varAddr_4
	%res_40 = eq %idVal_38 %idVal_39
	br %res_40 <37> <33>

<37> lhs_true
	%idVal_41 = load %varAddr_5
	%res_42 = gt %idVal_41 0
	br %res_42 <36> <33>

<36> lhs_true
	%idVal_43 = load %varAddr_6
	%res_44 = gt %idVal_43 0
	br %res_44 <29> <33>

<33> lhs_false
	%idVal_45 = load %varAddr_0
	%idVal_46 = load %varAddr_6
	%res_47 = eq %idVal_45 %idVal_46
	br %res_47 <29> <32>

<32> lhs_false
	%idVal_48 = load %varAddr_3
	%res_49 = gt %idVal_48 0
	br %res_49 <38> <30>

<38> lhs_true
	%idVal_50 = load %varAddr_5
	%res_51 = gt %idVal_50 0
	br %res_51 <29> <30>

<29> bool_true
	store 1 %boolValAddr_32
	br <31>

<30> bool_false
	store 0 %boolValAddr_32
	br <31>

<31> bool_merge
	%boolVal_52 = load %boolValAddr_32
	store %boolVal_52 %varAddr_31
	%idVal_55 = load %varAddr_0
	%idVal_56 = load %varAddr_1
	%res_57 = eq %idVal_55 %idVal_56
	br %res_57 <45> <44>

<45> lhs_true
	%idVal_58 = load %varAddr_2
	%res_59 = gt %idVal_58 0
	br %res_59 <39> <44>

<44> lhs_false
	%idVal_60 = load %varAddr_3
	%idVal_61 = load %varAddr_4
	%res_62 = eq %idVal_60 %idVal_61
	br %res_62 <47> <43>

<47> lhs_true
	%idVal_63 = load %varAddr_5
	%res_64 = gt %idVal_63 0
	br %res_64 <46> <43>

<46> lhs_true
	%idVal_65 = load %varAddr_6
	%res_66 = gt %idVal_65 0
	br %res_66 <39> <43>

<43> lhs_false
	%idVal_67 = load %varAddr_0
	%idVal_68 = load %varAddr_6
	%res_69 = eq %idVal_67 %idVal_68
	br %res_69 <39> <42>

<42> lhs_false
	%idVal_70 = load %varAddr_3
	%res_71 = gt %idVal_70 0
	br %res_71 <48> <40>

<48> lhs_true
	%idVal_72 = load %varAddr_5
	%res_73 = gt %idVal_72 0
	br %res_73 <39> <40>

<39> bool_true
	store 1 %boolValAddr_54
	br <41>

<40> bool_false
	store 0 %boolValAddr_54
	br <41>

<41> bool_merge
	%boolVal_74 = load %boolValAddr_54
	store %boolVal_74 %varAddr_53
	%idVal_77 = load %varAddr_0
	%idVal_78 = load %varAddr_1
	%res_79 = eq %idVal_77 %idVal_78
	br %res_79 <55> <54>

<55> lhs_true
	%idVal_80 = load %varAddr_2
	%res_81 = gt %idVal_80 0
	br %res_81 <49> <54>

<54> lhs_false
	%idVal_82 = load %varAddr_3
	%idVal_83 = load %varAddr_4
	%res_84 = eq %idVal_82 %idVal_83
	br %res_84 <57> <53>

<57> lhs_true
	%idVal_85 = load %varAddr_5
	%res_86 = gt %idVal_85 0
	br %res_86 <56> <53>

<56> lhs_true
	%idVal_87 = load %varAddr_6
	%res_88 = gt %idVal_87 0
	br %res_88 <49> <53>

<53> lhs_false
	%idVal_89 = load %varAddr_0
	%idVal_90 = load %varAddr_6
	%res_91 = eq %idVal_89 %idVal_90
	br %res_91 <49> <52>

<52> lhs_false
	%idVal_92 = load %varAddr_3
	%res_93 = gt %idVal_92 0
	br %res_93 <58> <50>

<58> lhs_true
	%idVal_94 = load %varAddr_5
	%res_95 = gt %idVal_94 0
	br %res_95 <49> <50>

<49> bool_true
	store 1 %boolValAddr_76
	br <51>

<50> bool_false
	store 0 %boolValAddr_76
	br <51>

<51> bool_merge
	%boolVal_96 = load %boolValAddr_76
	store %boolVal_96 %varAddr_75
	%idVal_99 = load %varAddr_0
	%idVal_100 = load %varAddr_1
	%res_101 = eq %idVal_99 %idVal_100
	br %res_101 <65> <64>

<65> lhs_true
	%idVal_102 = load %varAddr_2
	%res_103 = gt %idVal_102 0
	br %res_103 <59> <64>

<64> lhs_false
	%idVal_104 = load %varAddr_3
	%idVal_105 = load %varAddr_4
	%res_106 = eq %idVal_104 %idVal_105
	br %res_106 <67> <63>

<67> lhs_true
	%idVal_107 = load %varAddr_5
	%res_108 = gt %idVal_107 0
	br %res_108 <66> <63>

<66> lhs_true
	%idVal_109 = load %varAddr_6
	%res_110 = gt %idVal_109 0
	br %res_110 <59> <63>

<63> lhs_false
	%idVal_111 = load %varAddr_0
	%idVal_112 = load %varAddr_6
	%res_113 = eq %idVal_111 %idVal_112
	br %res_113 <59> <62>

<62> lhs_false
	%idVal_114 = load %varAddr_3
	%res_115 = gt %idVal_114 0
	br %res_115 <68> <60>

<68> lhs_true
	%idVal_116 = load %varAddr_5
	%res_117 = gt %idVal_116 0
	br %res_117 <59> <60>

<59> bool_true
	store 1 %boolValAddr_98
	br <61>

<60> bool_false
	store 0 %boolValAddr_98
	br <61>

<61> bool_merge
	%boolVal_118 = load %boolValAddr_98
	store %boolVal_118 %varAddr_97
	%idVal_121 = load %varAddr_0
	%idVal_122 = load %varAddr_1
	%res_123 = eq %idVal_121 %idVal_122
	br %res_123 <75> <74>

<75> lhs_true
	%idVal_124 = load %varAddr_2
	%res_125 = gt %idVal_124 0
	br %res_125 <69> <74>

<74> lhs_false
	%idVal_126 = load %varAddr_3
	%idVal_127 = load %varAddr_4
	%res_128 = eq %idVal_126 %idVal_127
	br %res_128 <77> <73>

<77> lhs_true
	%idVal_129 = load %varAddr_5
	%res_130 = gt %idVal_129 0
	br %res_130 <76> <73>

<76> lhs_true
	%idVal_131 = load %varAddr_6
	%res_132 = gt %idVal_131 0
	br %res_132 <69> <73>

<73> lhs_false
	%idVal_133 = load %varAddr_0
	%idVal_134 = load %varAddr_6
	%res_135 = eq %idVal_133 %idVal_134
	br %res_135 <69> <72>

<72> lhs_false
	%idVal_136 = load %varAddr_3
	%res_137 = gt %idVal_136 0
	br %res_137 <78> <70>

<78> lhs_true
	%idVal_138 = load %varAddr_5
	%res_139 = gt %idVal_138 0
	br %res_139 <69> <70>

<69> bool_true
	store 1 %boolValAddr_120
	br <71>

<70> bool_false
	store 0 %boolValAddr_120
	br <71>

<71> bool_merge
	%boolVal_140 = load %boolValAddr_120
	store %boolVal_140 %varAddr_119
	%idVal_143 = load %varAddr_0
	%idVal_144 = load %varAddr_1
	%res_145 = eq %idVal_143 %idVal_144
	br %res_145 <85> <84>

<85> lhs_true
	%idVal_146 = load %varAddr_2
	%res_147 = gt %idVal_146 0
	br %res_147 <79> <84>

<84> lhs_false
	%idVal_148 = load %varAddr_3
	%idVal_149 = load %varAddr_4
	%res_150 = eq %idVal_148 %idVal_149
	br %res_150 <87> <83>

<87> lhs_true
	%idVal_151 = load %varAddr_5
	%res_152 = gt %idVal_151 0
	br %res_152 <86> <83>

<86> lhs_true
	%idVal_153 = load %varAddr_6
	%res_154 = gt %idVal_153 0
	br %res_154 <79> <83>

<83> lhs_false
	%idVal_155 = load %varAddr_0
	%idVal_156 = load %varAddr_6
	%res_157 = eq %idVal_155 %idVal_156
	br %res_157 <79> <82>

<82> lhs_false
	%idVal_158 = load %varAddr_3
	%res_159 = gt %idVal_158 0
	br %res_159 <88> <80>

<88> lhs_true
	%idVal_160 = load %varAddr_5
	%res_161 = gt %idVal_160 0
	br %res_161 <79> <80>

<79> bool_true
	store 1 %boolValAddr_142
	br <81>

<80> bool_false
	store 0 %boolValAddr_142
	br <81>

<81> bool_merge
	%boolVal_162 = load %boolValAddr_142
	store %boolVal_162 %varAddr_141
	%idVal_163 = load %varAddr_31
	br %idVal_163 <89> <90>

<89> if_true
	%idVal_164 = load %varAddr_9
	%oldVal_165 = load %varAddr_9
	%newVal_166 = inc %oldVal_165
	store %newVal_166 %varAddr_9
	br <90>

<90> if_merge
	%idVal_167 = load %varAddr_53
	br %idVal_167 <91> <92>

<91> if_true
	%idVal_168 = load %varAddr_9
	%oldVal_169 = load %varAddr_9
	%newVal_170 = inc %oldVal_169
	store %newVal_170 %varAddr_9
	br <92>

<92> if_merge
	%idVal_171 = load %varAddr_75
	br %idVal_171 <93> <94>

<93> if_true
	%idVal_172 = load %varAddr_9
	%oldVal_173 = load %varAddr_9
	%newVal_174 = inc %oldVal_173
	store %newVal_174 %varAddr_9
	br <94>

<94> if_merge
	%idVal_175 = load %varAddr_97
	br %idVal_175 <95> <96>

<95> if_true
	%idVal_176 = load %varAddr_9
	%oldVal_177 = load %varAddr_9
	%newVal_178 = inc %oldVal_177
	store %newVal_178 %varAddr_9
	br <96>

<96> if_merge
	%idVal_179 = load %varAddr_119
	br %idVal_179 <97> <98>

<97> if_true
	%idVal_180 = load %varAddr_9
	%oldVal_181 = load %varAddr_9
	%newVal_182 = inc %oldVal_181
	store %newVal_182 %varAddr_9
	br <98>

<98> if_merge
	%idVal_183 = load %varAddr_141
	br %idVal_183 <99> <100>

<99> if_true
	%idVal_184 = load %varAddr_9
	%oldVal_185 = load %varAddr_9
	%newVal_186 = inc %oldVal_185
	store %newVal_186 %varAddr_9
	br <100>

<100> if_merge
	br <27>

<27> for_step
	%idVal_187 = load %varAddr_6
	%oldVal_188 = load %varAddr_6
	%newVal_189 = inc %oldVal_188
	store %newVal_189 %varAddr_6
	br <25>

<28> for_end
	br <23>

<23> for_step
	%idVal_190 = load %varAddr_5
	%oldVal_191 = load %varAddr_5
	%newVal_192 = inc %oldVal_191
	store %newVal_192 %varAddr_5
	br <21>

<24> for_end
	br <19>

<19> for_step
	%idVal_193 = load %varAddr_4
	%oldVal_194 = load %varAddr_4
	%newVal_195 = inc %oldVal_194
	store %newVal_195 %varAddr_4
	br <17>

<20> for_end
	br <15>

<15> for_step
	%idVal_196 = load %varAddr_3
	%oldVal_197 = load %varAddr_3
	%newVal_198 = inc %oldVal_197
	store %newVal_198 %varAddr_3
	br <13>

<16> for_end
	br <11>

<11> for_step
	%idVal_199 = load %varAddr_2
	%oldVal_200 = load %varAddr_2
	%newVal_201 = inc %oldVal_200
	store %newVal_201 %varAddr_2
	br <9>

<12> for_end
	br <7>

<7> for_step
	%idVal_202 = load %varAddr_1
	%oldVal_203 = load %varAddr_1
	%newVal_204 = inc %oldVal_203
	store %newVal_204 %varAddr_1
	br <5>

<8> for_end
	br <3>

<3> for_step
	%idVal_205 = load %varAddr_0
	%oldVal_206 = load %varAddr_0
	%newVal_207 = inc %oldVal_206
	store %newVal_207 %varAddr_0
	br <1>

<4> for_end
	%idVal_209 = load %varAddr_9
	%res_208 = toString ( %idVal_209 )
	print ( %res_208 )
	ret 0

}

