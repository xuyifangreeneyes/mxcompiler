@N

@head

@targetx

@targety

@x

@y

@xlist

@ylist

@tail

@ok

@now

@dx

@dy

@step

@i

@j

$str_0 "no solution!\n"

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
	%memberLength_1 = mul 12000 8
	%arrayLength_2 = add %memberLength_1 8
	%arrayPtr_0 = malloc %arrayLength_2
	store 12000 %arrayPtr_0
	%arrayBase_3 = add %arrayPtr_0 8
	store %arrayBase_3 @xlist
	%memberLength_5 = mul 12000 8
	%arrayLength_6 = add %memberLength_5 8
	%arrayPtr_4 = malloc %arrayLength_6
	store 12000 %arrayPtr_4
	%arrayBase_7 = add %arrayPtr_4 8
	store %arrayBase_7 @ylist
	%memberLength_9 = mul 8 8
	%arrayLength_10 = add %memberLength_9 8
	%arrayPtr_8 = malloc %arrayLength_10
	store 8 %arrayPtr_8
	%arrayBase_11 = add %arrayPtr_8 8
	store %arrayBase_11 @dx
	%memberLength_13 = mul 9 8
	%arrayLength_14 = add %memberLength_13 8
	%arrayPtr_12 = malloc %arrayLength_14
	store 9 %arrayPtr_12
	%arrayBase_15 = add %arrayPtr_12 8
	store %arrayBase_15 @dy
	ret 

}

define origin ( %argVal_0 ) {
<0> entry
	%argAddr_1 = alloca 8
	store %argVal_0 %argAddr_1
	store 0 @head
	store 0 @tail
	%idVal_2 = load %argAddr_1
	%memberLength_4 = mul %idVal_2 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store %idVal_2 %arrayPtr_3
	%arrayBase_6 = add %arrayPtr_3 8
	store %arrayBase_6 @step
	store 0 @i
	br <1>

<1> for_cond
	%idVal_7 = load @i
	%idVal_8 = load %argAddr_1
	%res_9 = lt %idVal_7 %idVal_8
	br %res_9 <2> <4>

<2> for_body
	%idVal_10 = load %argAddr_1
	%memberLength_12 = mul %idVal_10 8
	%arrayLength_13 = add %memberLength_12 8
	%arrayPtr_11 = malloc %arrayLength_13
	store %idVal_10 %arrayPtr_11
	%arrayBase_14 = add %arrayPtr_11 8
	%arrayBase_15 = load @step
	%idVal_16 = load @i
	%offset_17 = mul %idVal_16 8
	%elementAddr_18 = add %arrayBase_15 %offset_17
	store %arrayBase_14 %elementAddr_18
	store 0 @j
	br <5>

<5> for_cond
	%idVal_19 = load @j
	%idVal_20 = load %argAddr_1
	%res_21 = lt %idVal_19 %idVal_20
	br %res_21 <6> <8>

<6> for_body
	%arrayBase_22 = load @step
	%idVal_23 = load @i
	%offset_24 = mul %idVal_23 8
	%elementAddr_25 = add %arrayBase_22 %offset_24
	%arrayBase_26 = load %elementAddr_25
	%idVal_27 = load @j
	%offset_28 = mul %idVal_27 8
	%elementAddr_29 = add %arrayBase_26 %offset_28
	store 0 %elementAddr_29
	br <7>

<7> for_step
	%idVal_30 = load @j
	%oldVal_31 = load @j
	%newVal_32 = inc %oldVal_31
	store %newVal_32 @j
	br <5>

<8> for_end
	br <3>

<3> for_step
	%idVal_33 = load @i
	%oldVal_34 = load @i
	%newVal_35 = inc %oldVal_34
	store %newVal_35 @i
	br <1>

<4> for_end
	ret 

}

define check ( %argVal_0 ) {
<0> entry
	%boolValAddr_2 = alloca 8
	%argAddr_1 = alloca 8
	store %argVal_0 %argAddr_1
	%idVal_3 = load %argAddr_1
	%idVal_4 = load @N
	%res_5 = lt %idVal_3 %idVal_4
	br %res_5 <4> <2>

<4> lhs_true
	%idVal_6 = load %argAddr_1
	%res_7 = ge %idVal_6 0
	br %res_7 <1> <2>

<1> bool_true
	store 1 %boolValAddr_2
	br <3>

<2> bool_false
	store 0 %boolValAddr_2
	br <3>

<3> bool_merge
	%boolVal_8 = load %boolValAddr_2
	ret %boolVal_8

}

define addList ( %argVal_0 %argVal_2 ) {
<0> entry
	%cargAddr_59 = alloca 8
	%cboolValAddr_58 = alloca 8
	%retValAddr_57 = alloca 8
	%cargAddr_50 = alloca 8
	%cboolValAddr_49 = alloca 8
	%retValAddr_48 = alloca 8
	%argAddr_3 = alloca 8
	%argAddr_1 = alloca 8
	store %argVal_0 %argAddr_1
	store %argVal_2 %argAddr_3
	%idVal_5 = load %argAddr_1
	br <9>

<9> centry
	store %idVal_5 %cargAddr_50
	%cidVal_51 = load %cargAddr_50
	%cidVal_52 = load @N
	%cres_53 = lt %cidVal_51 %cidVal_52
	br %cres_53 <10> <12>

<10> clhs_true
	%cidVal_54 = load %cargAddr_50
	%cres_55 = ge %cidVal_54 0
	br %cres_55 <11> <12>

<11> cbool_true
	store 1 %cboolValAddr_49
	br <13>

<12> cbool_false
	store 0 %cboolValAddr_49
	br <13>

<13> cbool_merge
	%cboolVal_56 = load %cboolValAddr_49
	store %cboolVal_56 %retValAddr_48
	br <8>

<8> after_call
	%res_4 = load %retValAddr_48
	br %res_4 <4> <2>

<4> lhs_true
	%idVal_7 = load %argAddr_3
	br <15>

<15> centry
	store %idVal_7 %cargAddr_59
	%cidVal_60 = load %cargAddr_59
	%cidVal_61 = load @N
	%cres_62 = lt %cidVal_60 %cidVal_61
	br %cres_62 <16> <18>

<16> clhs_true
	%cidVal_63 = load %cargAddr_59
	%cres_64 = ge %cidVal_63 0
	br %cres_64 <17> <18>

<17> cbool_true
	store 1 %cboolValAddr_58
	br <19>

<18> cbool_false
	store 0 %cboolValAddr_58
	br <19>

<19> cbool_merge
	%cboolVal_65 = load %cboolValAddr_58
	store %cboolVal_65 %retValAddr_57
	br <14>

<14> after_call
	%res_6 = load %retValAddr_57
	br %res_6 <3> <2>

<3> lhs_true
	%arrayBase_8 = load @step
	%idVal_9 = load %argAddr_1
	%offset_10 = mul %idVal_9 8
	%elementAddr_11 = add %arrayBase_8 %offset_10
	%arrayBase_12 = load %elementAddr_11
	%idVal_13 = load %argAddr_3
	%offset_14 = mul %idVal_13 8
	%elementAddr_15 = add %arrayBase_12 %offset_14
	%elementVal_16 = load %elementAddr_15
	%res_17 = neg 1
	%res_18 = eq %elementVal_16 %res_17
	br %res_18 <1> <2>

<1> if_true
	%idVal_19 = load @tail
	%oldVal_20 = load @tail
	%newVal_21 = inc %oldVal_20
	store %newVal_21 @tail
	%idVal_22 = load %argAddr_1
	%arrayBase_23 = load @xlist
	%idVal_24 = load @tail
	%offset_25 = mul %idVal_24 8
	%elementAddr_26 = add %arrayBase_23 %offset_25
	store %idVal_22 %elementAddr_26
	%idVal_27 = load %argAddr_3
	%arrayBase_28 = load @ylist
	%idVal_29 = load @tail
	%offset_30 = mul %idVal_29 8
	%elementAddr_31 = add %arrayBase_28 %offset_30
	store %idVal_27 %elementAddr_31
	%idVal_32 = load @now
	%res_33 = add %idVal_32 1
	%arrayBase_34 = load @step
	%idVal_35 = load %argAddr_1
	%offset_36 = mul %idVal_35 8
	%elementAddr_37 = add %arrayBase_34 %offset_36
	%arrayBase_38 = load %elementAddr_37
	%idVal_39 = load %argAddr_3
	%offset_40 = mul %idVal_39 8
	%elementAddr_41 = add %arrayBase_38 %offset_40
	store %res_33 %elementAddr_41
	%idVal_42 = load %argAddr_1
	%idVal_43 = load @targetx
	%res_44 = eq %idVal_42 %idVal_43
	br %res_44 <7> <6>

<7> lhs_true
	%idVal_45 = load %argAddr_3
	%idVal_46 = load @targety
	%res_47 = eq %idVal_45 %idVal_46
	br %res_47 <5> <6>

<5> if_true
	store 1 @ok
	br <6>

<6> if_merge
	br <2>

<2> if_merge
	ret 

}

define main ( ) {
<0> entry
	%cargAddr_195 = alloca 8
	%cboolValAddr_194 = alloca 8
	%retValAddr_193 = alloca 8
	%cargAddr_186 = alloca 8
	%cboolValAddr_185 = alloca 8
	%retValAddr_184 = alloca 8
	%cargAddr_139 = alloca 8
	%cargAddr_138 = alloca 8
	origin ( 106 )
	%res_0 = getInt ( )
	store %res_0 @N
	%idVal_1 = load @N
	%res_2 = sub %idVal_1 1
	store %res_2 @targety
	%idVal_3 = load @targety
	store %idVal_3 @targetx
	store 0 @i
	br <1>

<1> for_cond
	%idVal_4 = load @i
	%idVal_5 = load @N
	%res_6 = lt %idVal_4 %idVal_5
	br %res_6 <2> <4>

<2> for_body
	store 0 @j
	br <5>

<5> for_cond
	%idVal_7 = load @j
	%idVal_8 = load @N
	%res_9 = lt %idVal_7 %idVal_8
	br %res_9 <6> <8>

<6> for_body
	%res_10 = neg 1
	%arrayBase_11 = load @step
	%idVal_12 = load @i
	%offset_13 = mul %idVal_12 8
	%elementAddr_14 = add %arrayBase_11 %offset_13
	%arrayBase_15 = load %elementAddr_14
	%idVal_16 = load @j
	%offset_17 = mul %idVal_16 8
	%elementAddr_18 = add %arrayBase_15 %offset_17
	store %res_10 %elementAddr_18
	br <7>

<7> for_step
	%idVal_19 = load @j
	%oldVal_20 = load @j
	%newVal_21 = inc %oldVal_20
	store %newVal_21 @j
	br <5>

<8> for_end
	br <3>

<3> for_step
	%idVal_22 = load @i
	%oldVal_23 = load @i
	%newVal_24 = inc %oldVal_23
	store %newVal_24 @i
	br <1>

<4> for_end
	%res_25 = neg 2
	%arrayBase_26 = load @dx
	%offset_27 = mul 0 8
	%elementAddr_28 = add %arrayBase_26 %offset_27
	store %res_25 %elementAddr_28
	%res_29 = neg 1
	%arrayBase_30 = load @dy
	%offset_31 = mul 0 8
	%elementAddr_32 = add %arrayBase_30 %offset_31
	store %res_29 %elementAddr_32
	%res_33 = neg 2
	%arrayBase_34 = load @dx
	%offset_35 = mul 1 8
	%elementAddr_36 = add %arrayBase_34 %offset_35
	store %res_33 %elementAddr_36
	%arrayBase_37 = load @dy
	%offset_38 = mul 1 8
	%elementAddr_39 = add %arrayBase_37 %offset_38
	store 1 %elementAddr_39
	%arrayBase_40 = load @dx
	%offset_41 = mul 2 8
	%elementAddr_42 = add %arrayBase_40 %offset_41
	store 2 %elementAddr_42
	%res_43 = neg 1
	%arrayBase_44 = load @dy
	%offset_45 = mul 2 8
	%elementAddr_46 = add %arrayBase_44 %offset_45
	store %res_43 %elementAddr_46
	%arrayBase_47 = load @dx
	%offset_48 = mul 3 8
	%elementAddr_49 = add %arrayBase_47 %offset_48
	store 2 %elementAddr_49
	%arrayBase_50 = load @dy
	%offset_51 = mul 3 8
	%elementAddr_52 = add %arrayBase_50 %offset_51
	store 1 %elementAddr_52
	%res_53 = neg 1
	%arrayBase_54 = load @dx
	%offset_55 = mul 4 8
	%elementAddr_56 = add %arrayBase_54 %offset_55
	store %res_53 %elementAddr_56
	%res_57 = neg 2
	%arrayBase_58 = load @dy
	%offset_59 = mul 4 8
	%elementAddr_60 = add %arrayBase_58 %offset_59
	store %res_57 %elementAddr_60
	%res_61 = neg 1
	%arrayBase_62 = load @dx
	%offset_63 = mul 5 8
	%elementAddr_64 = add %arrayBase_62 %offset_63
	store %res_61 %elementAddr_64
	%arrayBase_65 = load @dy
	%offset_66 = mul 5 8
	%elementAddr_67 = add %arrayBase_65 %offset_66
	store 2 %elementAddr_67
	%arrayBase_68 = load @dx
	%offset_69 = mul 6 8
	%elementAddr_70 = add %arrayBase_68 %offset_69
	store 1 %elementAddr_70
	%res_71 = neg 2
	%arrayBase_72 = load @dy
	%offset_73 = mul 6 8
	%elementAddr_74 = add %arrayBase_72 %offset_73
	store %res_71 %elementAddr_74
	%arrayBase_75 = load @dx
	%offset_76 = mul 7 8
	%elementAddr_77 = add %arrayBase_75 %offset_76
	store 1 %elementAddr_77
	%arrayBase_78 = load @dy
	%offset_79 = mul 7 8
	%elementAddr_80 = add %arrayBase_78 %offset_79
	store 2 %elementAddr_80
	br <9>

<9> while_cond
	%idVal_81 = load @head
	%idVal_82 = load @tail
	%res_83 = le %idVal_81 %idVal_82
	br %res_83 <10> <11>

<10> while_body
	%arrayBase_84 = load @xlist
	%idVal_85 = load @head
	%offset_86 = mul %idVal_85 8
	%elementAddr_87 = add %arrayBase_84 %offset_86
	%elementVal_88 = load %elementAddr_87
	store %elementVal_88 @x
	%arrayBase_89 = load @ylist
	%idVal_90 = load @head
	%offset_91 = mul %idVal_90 8
	%elementAddr_92 = add %arrayBase_89 %offset_91
	%elementVal_93 = load %elementAddr_92
	store %elementVal_93 @y
	%arrayBase_94 = load @step
	%idVal_95 = load @x
	%offset_96 = mul %idVal_95 8
	%elementAddr_97 = add %arrayBase_94 %offset_96
	%arrayBase_98 = load %elementAddr_97
	%idVal_99 = load @y
	%offset_100 = mul %idVal_99 8
	%elementAddr_101 = add %arrayBase_98 %offset_100
	%elementVal_102 = load %elementAddr_101
	store %elementVal_102 @now
	store 0 @j
	br <12>

<12> for_cond
	%idVal_103 = load @j
	%res_104 = lt %idVal_103 8
	br %res_104 <13> <15>

<13> for_body
	%idVal_105 = load @x
	%arrayBase_106 = load @dx
	%idVal_107 = load @j
	%offset_108 = mul %idVal_107 8
	%elementAddr_109 = add %arrayBase_106 %offset_108
	%elementVal_110 = load %elementAddr_109
	%res_111 = add %idVal_105 %elementVal_110
	%idVal_112 = load @y
	%arrayBase_113 = load @dy
	%idVal_114 = load @j
	%offset_115 = mul %idVal_114 8
	%elementAddr_116 = add %arrayBase_113 %offset_115
	%elementVal_117 = load %elementAddr_116
	%res_118 = add %idVal_112 %elementVal_117
	br <22>

<22> centry
	store %res_111 %cargAddr_139
	store %res_118 %cargAddr_138
	%cidVal_140 = load %cargAddr_139
	br <31>

<31> centry
	store %cidVal_140 %cargAddr_186
	%cidVal_187 = load %cargAddr_186
	%cidVal_188 = load @N
	%cres_189 = lt %cidVal_187 %cidVal_188
	br %cres_189 <32> <34>

<32> clhs_true
	%cidVal_190 = load %cargAddr_186
	%cres_191 = ge %cidVal_190 0
	br %cres_191 <33> <34>

<33> cbool_true
	store 1 %cboolValAddr_185
	br <35>

<34> cbool_false
	store 0 %cboolValAddr_185
	br <35>

<35> cbool_merge
	%cboolVal_192 = load %cboolValAddr_185
	store %cboolVal_192 %retValAddr_184
	br <30>

<30> after_call
	%cres_141 = load %retValAddr_184
	br %cres_141 <23> <29>

<23> clhs_true
	%cidVal_142 = load %cargAddr_138
	br <37>

<37> centry
	store %cidVal_142 %cargAddr_195
	%cidVal_196 = load %cargAddr_195
	%cidVal_197 = load @N
	%cres_198 = lt %cidVal_196 %cidVal_197
	br %cres_198 <38> <40>

<38> clhs_true
	%cidVal_199 = load %cargAddr_195
	%cres_200 = ge %cidVal_199 0
	br %cres_200 <39> <40>

<39> cbool_true
	store 1 %cboolValAddr_194
	br <41>

<40> cbool_false
	store 0 %cboolValAddr_194
	br <41>

<41> cbool_merge
	%cboolVal_201 = load %cboolValAddr_194
	store %cboolVal_201 %retValAddr_193
	br <36>

<36> after_call
	%cres_143 = load %retValAddr_193
	br %cres_143 <24> <29>

<24> clhs_true
	%carrayBase_144 = load @step
	%cidVal_145 = load %cargAddr_139
	%coffset_146 = mul %cidVal_145 8
	%celementAddr_147 = add %carrayBase_144 %coffset_146
	%carrayBase_148 = load %celementAddr_147
	%cidVal_149 = load %cargAddr_138
	%coffset_150 = mul %cidVal_149 8
	%celementAddr_151 = add %carrayBase_148 %coffset_150
	%celementVal_152 = load %celementAddr_151
	%cres_153 = neg 1
	%cres_154 = eq %celementVal_152 %cres_153
	br %cres_154 <25> <29>

<25> cif_true
	%cidVal_155 = load @tail
	%coldVal_156 = load @tail
	%cnewVal_157 = inc %coldVal_156
	store %cnewVal_157 @tail
	%cidVal_158 = load %cargAddr_139
	%carrayBase_159 = load @xlist
	%cidVal_160 = load @tail
	%coffset_161 = mul %cidVal_160 8
	%celementAddr_162 = add %carrayBase_159 %coffset_161
	store %cidVal_158 %celementAddr_162
	%cidVal_163 = load %cargAddr_138
	%carrayBase_164 = load @ylist
	%cidVal_165 = load @tail
	%coffset_166 = mul %cidVal_165 8
	%celementAddr_167 = add %carrayBase_164 %coffset_166
	store %cidVal_163 %celementAddr_167
	%cidVal_168 = load @now
	%cres_169 = add %cidVal_168 1
	%carrayBase_170 = load @step
	%cidVal_171 = load %cargAddr_139
	%coffset_172 = mul %cidVal_171 8
	%celementAddr_173 = add %carrayBase_170 %coffset_172
	%carrayBase_174 = load %celementAddr_173
	%cidVal_175 = load %cargAddr_138
	%coffset_176 = mul %cidVal_175 8
	%celementAddr_177 = add %carrayBase_174 %coffset_176
	store %cres_169 %celementAddr_177
	%cidVal_178 = load %cargAddr_139
	%cidVal_179 = load @targetx
	%cres_180 = eq %cidVal_178 %cidVal_179
	br %cres_180 <26> <28>

<26> clhs_true
	%cidVal_181 = load %cargAddr_138
	%cidVal_182 = load @targety
	%cres_183 = eq %cidVal_181 %cidVal_182
	br %cres_183 <27> <28>

<27> cif_true
	store 1 @ok
	br <28>

<28> cif_merge
	br <29>

<29> cif_merge
	br <21>

<21> after_call
	br <14>

<14> for_step
	%idVal_119 = load @j
	%oldVal_120 = load @j
	%newVal_121 = inc %oldVal_120
	store %newVal_121 @j
	br <12>

<15> for_end
	%idVal_122 = load @ok
	%res_123 = eq %idVal_122 1
	br %res_123 <16> <17>

<16> if_true
	br <11>

<17> if_merge
	%idVal_124 = load @head
	%oldVal_125 = load @head
	%newVal_126 = inc %oldVal_125
	store %newVal_126 @head
	br <9>

<11> while_end
	%idVal_127 = load @ok
	%res_128 = eq %idVal_127 1
	br %res_128 <18> <19>

<18> if_true
	%arrayBase_129 = load @step
	%idVal_130 = load @targetx
	%offset_131 = mul %idVal_130 8
	%elementAddr_132 = add %arrayBase_129 %offset_131
	%arrayBase_133 = load %elementAddr_132
	%idVal_134 = load @targety
	%offset_135 = mul %idVal_134 8
	%elementAddr_136 = add %arrayBase_133 %offset_135
	%elementVal_137 = load %elementAddr_136
	__printlnInt ( %elementVal_137 )
	br <20>

<19> if_false
	print ( $str_0 )
	br <20>

<20> if_merge
	ret 0

}

