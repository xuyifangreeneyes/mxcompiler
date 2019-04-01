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

$str_4 "step "

$str_5 ":"

$str_6 "Total: "

$str_7 " step(s)"

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
	%arrayPtr_3 = malloc 808
	store 100 %arrayPtr_3
	%idVal_7 = load @now
	%idVal_8 = load @h
	%res_9 = neq %idVal_7 %idVal_8
	br %res_9 <1> <2>

<1> if_true
	ret 0

<2> if_merge
	store 0 %varAddr_113
	br <3>

<3> for_cond
	%varDef_95 = load %varAddr_113
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
	store %newVal_26 %varAddr_113
	br <3>

<6> for_end
	store 0 %varAddr_116
	store 0 %varAddr_117
	br <7>

<7> for_cond
	%varDef_98 = load %varAddr_116
	%varDef_100 = load %varAddr_117
	%idVal_28 = load @now
	%res_29 = sub %idVal_28 1
	%res_30 = lt %varDef_98 %res_29
	br %res_30 <8> <10>

<8> for_body
	%res_32 = add %varDef_98 1
	store %res_32 %varAddr_114
	store %varDef_100 %varAddr_115
	br <11>

<11> for_cond
	%varDef_102 = load %varAddr_114
	%varDef_103 = load %varAddr_115
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
	store %varDef_103 %varAddr_112
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
	store %elementVal_54 %varAddr_112
	br <13>

<13> for_step
	%varDef_105 = load %varAddr_112
	%newVal_74 = inc %varDef_102
	store %newVal_74 %varAddr_114
	store %varDef_105 %varAddr_115
	br <11>

<9> for_step
	%newVal_77 = inc %varDef_98
	store %newVal_77 %varAddr_116
	store %varDef_103 %varAddr_117
	br <7>

<10> for_end
	store 0 %varAddr_111
	br <17>

<17> for_cond
	%varDef_109 = load %varAddr_111
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
	store %newVal_92 %varAddr_111
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
	store 0 %varAddr_60
	store 0 %varAddr_61
	br <1>

<1> for_cond
	%varDef_47 = load %varAddr_60
	%varDef_48 = load %varAddr_61
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
	store %res_13 %varAddr_57
	br <7>

<7> for_cond
	%varDef_50 = load %varAddr_57
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
	store %newVal_28 %varAddr_57
	br <7>

<3> for_step
	%varDef_52 = load %varAddr_58
	%newVal_31 = inc %varDef_47
	store %newVal_31 %varAddr_60
	store %varDef_52 %varAddr_61
	br <1>

<4> for_end
	store 0 %varAddr_59
	br <13>

<13> for_cond
	%varDef_55 = load %varAddr_59
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
	store %newVal_45 %varAddr_59
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
	%varAddr_231 = alloca 4
	%varAddr_230 = alloca 4
	%varAddr_229 = alloca 4
	%varAddr_228 = alloca 4
	%varAddr_227 = alloca 4
	%varAddr_226 = alloca 4
	%varAddr_225 = alloca 4
	%varAddr_224 = alloca 4
	%varAddr_223 = alloca 4
	%varAddr_222 = alloca 4
	store 210 @n
	store 0 @h
	%arrayPtr_5 = malloc 808
	store 100 %arrayPtr_5
	store %arrayPtr_5 @a
	%idVal_8 = load @M
	%idVal_9 = load @A
	%res_10 = div %idVal_8 %idVal_9
	store %res_10 @Q
	%idVal_11 = load @M
	%idVal_12 = load @A
	%res_13 = mod %idVal_11 %idVal_12
	store %res_13 @R
	%idVal_15 = load @n
	br <15>

<15> cfor_cond
	%cidVal_84 = load @h
	%cres_86 = le %cidVal_84 %idVal_15
	br %cres_86 <16> <20>

<16> cfor_body
	%cidVal_88 = load @h
	%cidVal_89 = load @h
	%cres_90 = add %cidVal_89 1
	%cres_91 = mul %cidVal_88 %cres_90
	%cres_92 = div %cres_91 2
	%cres_93 = eq %idVal_15 %cres_92
	br %cres_93 <17> <19>

<17> cif_true
	store 1 %varAddr_230
	br <13>

<19> cfor_step
	%coldVal_95 = load @h
	%cnewVal_96 = inc %coldVal_95
	store %cnewVal_96 @h
	br <15>

<20> cfor_end
	store 0 %varAddr_230
	br <13>

<13> after_call
	%varDef_195 = load %varAddr_230
	br %varDef_195 <2> <1>

<1> if_true
	println ( $str_2 )
	ret 1

<2> if_merge
	println ( $str_3 )
	store 3654898 @seed
	%cidVal_101 = load @A
	%cidVal_102 = load @seed
	%cidVal_103 = load @Q
	%cres_104 = mod %cidVal_102 %cidVal_103
	%cres_105 = mul %cidVal_101 %cres_104
	%cidVal_106 = load @R
	%cidVal_107 = load @seed
	%cidVal_108 = load @Q
	%cres_109 = div %cidVal_107 %cidVal_108
	%cres_110 = mul %cidVal_106 %cres_109
	%cres_111 = sub %cres_105 %cres_110
	%cres_113 = ge %cres_111 0
	br %cres_113 <25> <26>

<25> cif_true
	store %cres_111 @seed
	br <27>

<26> cif_false
	%cidVal_116 = load @M
	%cres_117 = add %cres_111 %cidVal_116
	store %cres_117 @seed
	br <27>

<27> cif_merge
	%cidVal_118 = load @seed
	%res_17 = mod %cidVal_118 10
	%res_18 = add %res_17 1
	store %res_18 @now
	%idVal_20 = load @now
	%res_19 = toString ( %idVal_20 )
	println ( %res_19 )
	store 0 %varAddr_224
	store 0 %varAddr_225
	store 0 %varAddr_226
	store 0 %varAddr_227
	br <3>

<3> for_cond
	%varDef_199 = load %varAddr_224
	%varDef_200 = load %varAddr_225
	%varDef_203 = load %varAddr_226
	%varDef_204 = load %varAddr_227
	%idVal_22 = load @now
	%res_23 = sub %idVal_22 1
	%res_24 = lt %varDef_199 %res_23
	br %res_24 <29> <6>

<29> centry
	%cidVal_121 = load @A
	%cidVal_122 = load @seed
	%cidVal_123 = load @Q
	%cres_124 = mod %cidVal_122 %cidVal_123
	%cres_125 = mul %cidVal_121 %cres_124
	%cidVal_126 = load @R
	%cidVal_127 = load @seed
	%cidVal_128 = load @Q
	%cres_129 = div %cidVal_127 %cidVal_128
	%cres_130 = mul %cidVal_126 %cres_129
	%cres_131 = sub %cres_125 %cres_130
	%cres_133 = ge %cres_131 0
	br %cres_133 <30> <31>

<30> cif_true
	store %cres_131 @seed
	br <32>

<31> cif_false
	%cidVal_136 = load @M
	%cres_137 = add %cres_131 %cidVal_136
	store %cres_137 @seed
	br <32>

<32> cif_merge
	%cidVal_138 = load @seed
	%res_26 = mod %cidVal_138 10
	%res_27 = add %res_26 1
	%arrayPtr_28 = load @a
	%arrayBase_29 = add %arrayPtr_28 8
	%offset_31 = mul %varDef_199 8
	%elementAddr_32 = add %arrayBase_29 %offset_31
	store %res_27 %elementAddr_32
	store %varDef_203 %varAddr_228
	store %varDef_204 %varAddr_229
	br <7>

<7> while_cond
	%varDef_207 = load %varAddr_228
	%varDef_208 = load %varAddr_229
	%arrayPtr_33 = load @a
	%arrayBase_34 = add %arrayPtr_33 8
	%offset_36 = mul %varDef_199 8
	%elementAddr_37 = add %arrayBase_34 %offset_36
	%elementVal_38 = load %elementAddr_37
	%res_40 = add %elementVal_38 %varDef_200
	%idVal_41 = load @n
	%res_42 = gt %res_40 %idVal_41
	br %res_42 <34> <9>

<34> centry
	%cidVal_141 = load @A
	%cidVal_142 = load @seed
	%cidVal_143 = load @Q
	%cres_144 = mod %cidVal_142 %cidVal_143
	%cres_145 = mul %cidVal_141 %cres_144
	%cidVal_146 = load @R
	%cidVal_147 = load @seed
	%cidVal_148 = load @Q
	%cres_149 = div %cidVal_147 %cidVal_148
	%cres_150 = mul %cidVal_146 %cres_149
	%cres_151 = sub %cres_145 %cres_150
	%cres_153 = ge %cres_151 0
	br %cres_153 <35> <36>

<35> cif_true
	store %cres_151 @seed
	br <37>

<36> cif_false
	%cidVal_156 = load @M
	%cres_157 = add %cres_151 %cidVal_156
	store %cres_157 @seed
	br <37>

<37> cif_merge
	%cidVal_158 = load @seed
	%res_44 = mod %cidVal_158 10
	%res_45 = add %res_44 1
	%arrayPtr_46 = load @a
	%arrayBase_47 = add %arrayPtr_46 8
	%offset_49 = mul %varDef_199 8
	%elementAddr_50 = add %arrayBase_47 %offset_49
	store %res_45 %elementAddr_50
	store %cidVal_158 %varAddr_228
	store %cres_151 %varAddr_229
	br <7>

<9> while_end
	%arrayPtr_52 = load @a
	%arrayBase_53 = add %arrayPtr_52 8
	%offset_55 = mul %varDef_199 8
	%elementAddr_56 = add %arrayBase_53 %offset_55
	%elementVal_57 = load %elementAddr_56
	%res_58 = add %varDef_200 %elementVal_57
	%newVal_61 = inc %varDef_199
	store %newVal_61 %varAddr_224
	store %res_58 %varAddr_225
	store %varDef_207 %varAddr_226
	store %varDef_208 %varAddr_227
	br <3>

<6> for_end
	%idVal_62 = load @n
	%res_64 = sub %idVal_62 %varDef_200
	%arrayPtr_65 = load @a
	%arrayBase_66 = add %arrayPtr_65 8
	%idVal_67 = load @now
	%res_68 = sub %idVal_67 1
	%offset_69 = mul %res_68 8
	%elementAddr_70 = add %arrayBase_66 %offset_69
	store %res_64 %elementAddr_70
	store 0 %varAddr_222
	br <40>

<40> cfor_cond
	%varDef_214 = load %varAddr_222
	%cidVal_161 = load @now
	%cres_162 = lt %varDef_214 %cidVal_161
	br %cres_162 <41> <43>

<41> cfor_body
	%carrayPtr_163 = load @a
	%carrayBase_164 = add %carrayPtr_163 8
	%coffset_166 = mul %varDef_214 8
	%celementAddr_167 = add %carrayBase_164 %coffset_166
	%celementVal_168 = load %celementAddr_167
	%cres_169 = toString ( %celementVal_168 )
	%cres_170 = _stringAdd ( %cres_169 $str_0 )
	print ( %cres_170 )
	%cnewVal_173 = inc %varDef_214
	store %cnewVal_173 %varAddr_222
	br <40>

<43> cfor_end
	println ( $str_1 )
	merge ( )
	store 0 %varAddr_223
	br <10>

<10> while_cond
	%varDef_216 = load %varAddr_223
	%res_71 = win ( )
	br %res_71 <12> <11>

<11> while_body
	%newVal_75 = inc %varDef_216
	%res_72 = toString ( %newVal_75 )
	%res_76 = _stringAdd ( $str_4 %res_72 )
	%res_77 = _stringAdd ( %res_76 $str_5 )
	println ( %res_77 )
	move ( )
	merge ( )
	store 0 %varAddr_231
	br <46>

<46> cfor_cond
	%varDef_220 = load %varAddr_231
	%cidVal_176 = load @now
	%cres_177 = lt %varDef_220 %cidVal_176
	br %cres_177 <47> <49>

<47> cfor_body
	%carrayPtr_178 = load @a
	%carrayBase_179 = add %carrayPtr_178 8
	%coffset_181 = mul %varDef_220 8
	%celementAddr_182 = add %carrayBase_179 %coffset_181
	%celementVal_183 = load %celementAddr_182
	%cres_184 = toString ( %celementVal_183 )
	%cres_185 = _stringAdd ( %cres_184 $str_0 )
	print ( %cres_185 )
	%cnewVal_188 = inc %varDef_220
	store %cnewVal_188 %varAddr_231
	br <46>

<49> cfor_end
	println ( $str_1 )
	store %newVal_75 %varAddr_223
	br <10>

<12> while_end
	%res_78 = toString ( %varDef_216 )
	%res_80 = _stringAdd ( $str_6 %res_78 )
	%res_81 = _stringAdd ( %res_80 $str_7 )
	println ( %res_81 )
	ret 0

}

