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
	%global2local_15 = alloca 8
	%global2local_14 = alloca 8
	%global2local_13 = alloca 8
	%global2local_12 = alloca 8
	%tmp_19 = load @xlist
	store %tmp_19 %global2local_15
	%tmp_18 = load @ylist
	store %tmp_18 %global2local_14
	%tmp_17 = load @dy
	store %tmp_17 %global2local_13
	%tmp_16 = load @dx
	store %tmp_16 %global2local_12
	%memberLength_1 = mul 12000 8
	%arrayLength_2 = add %memberLength_1 8
	%arrayPtr_0 = malloc %arrayLength_2
	store 12000 %arrayPtr_0
	store %arrayPtr_0 %global2local_15
	%memberLength_4 = mul 12000 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store 12000 %arrayPtr_3
	store %arrayPtr_3 %global2local_14
	%memberLength_7 = mul 8 8
	%arrayLength_8 = add %memberLength_7 8
	%arrayPtr_6 = malloc %arrayLength_8
	store 8 %arrayPtr_6
	store %arrayPtr_6 %global2local_12
	%memberLength_10 = mul 9 8
	%arrayLength_11 = add %memberLength_10 8
	%arrayPtr_9 = malloc %arrayLength_11
	store 9 %arrayPtr_9
	store %arrayPtr_9 %global2local_13
	%tmp_20 = load %global2local_12
	store %tmp_20 @dx
	%tmp_21 = load %global2local_13
	store %tmp_21 @dy
	%tmp_22 = load %global2local_14
	store %tmp_22 @ylist
	%tmp_23 = load %global2local_15
	store %tmp_23 @xlist
	ret 

}

define origin ( %argVal_0 ) {
<0> entry
	%global2local_41 = alloca 8
	%global2local_40 = alloca 8
	%global2local_39 = alloca 8
	%global2local_38 = alloca 8
	%global2local_37 = alloca 8
	%argAddr_1 = alloca 8
	%tmp_46 = load @head
	store %tmp_46 %global2local_41
	%tmp_45 = load @j
	store %tmp_45 %global2local_40
	%tmp_44 = load @i
	store %tmp_44 %global2local_39
	%tmp_43 = load @tail
	store %tmp_43 %global2local_38
	%tmp_42 = load @step
	store %tmp_42 %global2local_37
	store %argVal_0 %argAddr_1
	store 0 %global2local_41
	store 0 %global2local_38
	%idVal_2 = load %argAddr_1
	%memberLength_4 = mul %idVal_2 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store %idVal_2 %arrayPtr_3
	store %arrayPtr_3 %global2local_37
	store 0 %global2local_39
	br <1>

<1> for_cond
	%idVal_6 = load %global2local_39
	%idVal_7 = load %argAddr_1
	%res_8 = lt %idVal_6 %idVal_7
	br %res_8 <2> <4>

<2> for_body
	%idVal_9 = load %argAddr_1
	%memberLength_11 = mul %idVal_9 8
	%arrayLength_12 = add %memberLength_11 8
	%arrayPtr_10 = malloc %arrayLength_12
	store %idVal_9 %arrayPtr_10
	%arrayPtr_13 = load %global2local_37
	%arrayBase_14 = add %arrayPtr_13 8
	%idVal_15 = load %global2local_39
	%offset_16 = mul %idVal_15 8
	%elementAddr_17 = add %arrayBase_14 %offset_16
	store %arrayPtr_10 %elementAddr_17
	store 0 %global2local_40
	br <5>

<5> for_cond
	%idVal_18 = load %global2local_40
	%idVal_19 = load %argAddr_1
	%res_20 = lt %idVal_18 %idVal_19
	br %res_20 <6> <8>

<6> for_body
	%arrayPtr_21 = load %global2local_37
	%arrayBase_22 = add %arrayPtr_21 8
	%idVal_23 = load %global2local_39
	%offset_24 = mul %idVal_23 8
	%elementAddr_25 = add %arrayBase_22 %offset_24
	%arrayPtr_26 = load %elementAddr_25
	%arrayBase_27 = add %arrayPtr_26 8
	%idVal_28 = load %global2local_40
	%offset_29 = mul %idVal_28 8
	%elementAddr_30 = add %arrayBase_27 %offset_29
	store 0 %elementAddr_30
	br <7>

<7> for_step
	%idVal_31 = load %global2local_40
	%oldVal_32 = load %global2local_40
	%newVal_33 = inc %oldVal_32
	store %newVal_33 %global2local_40
	br <5>

<8> for_end
	br <3>

<3> for_step
	%idVal_34 = load %global2local_39
	%oldVal_35 = load %global2local_39
	%newVal_36 = inc %oldVal_35
	store %newVal_36 %global2local_39
	br <1>

<4> for_end
	%tmp_47 = load %global2local_37
	store %tmp_47 @step
	%tmp_48 = load %global2local_38
	store %tmp_48 @tail
	%tmp_49 = load %global2local_39
	store %tmp_49 @i
	%tmp_50 = load %global2local_40
	store %tmp_50 @j
	%tmp_51 = load %global2local_41
	store %tmp_51 @head
	ret 

}

define check ( %argVal_0 ) {
<0> entry
	%global2local_9 = alloca 8
	%boolValAddr_2 = alloca 8
	%argAddr_1 = alloca 8
	%tmp_10 = load @N
	store %tmp_10 %global2local_9
	store %argVal_0 %argAddr_1
	%idVal_3 = load %argAddr_1
	%idVal_4 = load %global2local_9
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
	%tmp_11 = load %global2local_9
	store %tmp_11 @N
	ret %boolVal_8

}

define addList ( %argVal_0 %argVal_2 ) {
<0> entry
	%global2local_80 = alloca 8
	%global2local_79 = alloca 8
	%global2local_78 = alloca 8
	%global2local_77 = alloca 8
	%global2local_76 = alloca 8
	%global2local_75 = alloca 8
	%global2local_74 = alloca 8
	%global2local_73 = alloca 8
	%global2local_72 = alloca 8
	%cargAddr_65 = alloca 8
	%cboolValAddr_64 = alloca 8
	%retValAddr_63 = alloca 8
	%cargAddr_56 = alloca 8
	%cboolValAddr_55 = alloca 8
	%retValAddr_54 = alloca 8
	%argAddr_3 = alloca 8
	%argAddr_1 = alloca 8
	%tmp_89 = load @now
	store %tmp_89 %global2local_80
	%tmp_88 = load @targetx
	store %tmp_88 %global2local_79
	%tmp_87 = load @xlist
	store %tmp_87 %global2local_78
	%tmp_86 = load @targety
	store %tmp_86 %global2local_77
	%tmp_85 = load @N
	store %tmp_85 %global2local_76
	%tmp_84 = load @ylist
	store %tmp_84 %global2local_75
	%tmp_83 = load @tail
	store %tmp_83 %global2local_74
	%tmp_82 = load @ok
	store %tmp_82 %global2local_73
	%tmp_81 = load @step
	store %tmp_81 %global2local_72
	store %argVal_0 %argAddr_1
	store %argVal_2 %argAddr_3
	%idVal_5 = load %argAddr_1
	br <9>

<9> centry
	store %idVal_5 %cargAddr_56
	%cidVal_57 = load %cargAddr_56
	%cidVal_58 = load %global2local_76
	%cres_59 = lt %cidVal_57 %cidVal_58
	br %cres_59 <10> <12>

<10> clhs_true
	%cidVal_60 = load %cargAddr_56
	%cres_61 = ge %cidVal_60 0
	br %cres_61 <11> <12>

<11> cbool_true
	store 1 %cboolValAddr_55
	br <13>

<12> cbool_false
	store 0 %cboolValAddr_55
	br <13>

<13> cbool_merge
	%cboolVal_62 = load %cboolValAddr_55
	store %cboolVal_62 %retValAddr_54
	br <8>

<8> after_call
	%res_4 = load %retValAddr_54
	br %res_4 <4> <2>

<4> lhs_true
	%idVal_7 = load %argAddr_3
	br <15>

<15> centry
	store %idVal_7 %cargAddr_65
	%cidVal_66 = load %cargAddr_65
	%cidVal_67 = load %global2local_76
	%cres_68 = lt %cidVal_66 %cidVal_67
	br %cres_68 <16> <18>

<16> clhs_true
	%cidVal_69 = load %cargAddr_65
	%cres_70 = ge %cidVal_69 0
	br %cres_70 <17> <18>

<17> cbool_true
	store 1 %cboolValAddr_64
	br <19>

<18> cbool_false
	store 0 %cboolValAddr_64
	br <19>

<19> cbool_merge
	%cboolVal_71 = load %cboolValAddr_64
	store %cboolVal_71 %retValAddr_63
	br <14>

<14> after_call
	%res_6 = load %retValAddr_63
	br %res_6 <3> <2>

<3> lhs_true
	%arrayPtr_8 = load %global2local_72
	%arrayBase_9 = add %arrayPtr_8 8
	%idVal_10 = load %argAddr_1
	%offset_11 = mul %idVal_10 8
	%elementAddr_12 = add %arrayBase_9 %offset_11
	%arrayPtr_13 = load %elementAddr_12
	%arrayBase_14 = add %arrayPtr_13 8
	%idVal_15 = load %argAddr_3
	%offset_16 = mul %idVal_15 8
	%elementAddr_17 = add %arrayBase_14 %offset_16
	%elementVal_18 = load %elementAddr_17
	%res_19 = neg 1
	%res_20 = eq %elementVal_18 %res_19
	br %res_20 <1> <2>

<1> if_true
	%idVal_21 = load %global2local_74
	%oldVal_22 = load %global2local_74
	%newVal_23 = inc %oldVal_22
	store %newVal_23 %global2local_74
	%idVal_24 = load %argAddr_1
	%arrayPtr_25 = load %global2local_78
	%arrayBase_26 = add %arrayPtr_25 8
	%idVal_27 = load %global2local_74
	%offset_28 = mul %idVal_27 8
	%elementAddr_29 = add %arrayBase_26 %offset_28
	store %idVal_24 %elementAddr_29
	%idVal_30 = load %argAddr_3
	%arrayPtr_31 = load %global2local_75
	%arrayBase_32 = add %arrayPtr_31 8
	%idVal_33 = load %global2local_74
	%offset_34 = mul %idVal_33 8
	%elementAddr_35 = add %arrayBase_32 %offset_34
	store %idVal_30 %elementAddr_35
	%idVal_36 = load %global2local_80
	%res_37 = add %idVal_36 1
	%arrayPtr_38 = load %global2local_72
	%arrayBase_39 = add %arrayPtr_38 8
	%idVal_40 = load %argAddr_1
	%offset_41 = mul %idVal_40 8
	%elementAddr_42 = add %arrayBase_39 %offset_41
	%arrayPtr_43 = load %elementAddr_42
	%arrayBase_44 = add %arrayPtr_43 8
	%idVal_45 = load %argAddr_3
	%offset_46 = mul %idVal_45 8
	%elementAddr_47 = add %arrayBase_44 %offset_46
	store %res_37 %elementAddr_47
	%idVal_48 = load %argAddr_1
	%idVal_49 = load %global2local_79
	%res_50 = eq %idVal_48 %idVal_49
	br %res_50 <7> <6>

<7> lhs_true
	%idVal_51 = load %argAddr_3
	%idVal_52 = load %global2local_77
	%res_53 = eq %idVal_51 %idVal_52
	br %res_53 <5> <6>

<5> if_true
	store 1 %global2local_73
	br <6>

<6> if_merge
	br <2>

<2> if_merge
	%tmp_90 = load %global2local_72
	store %tmp_90 @step
	%tmp_91 = load %global2local_73
	store %tmp_91 @ok
	%tmp_92 = load %global2local_74
	store %tmp_92 @tail
	%tmp_93 = load %global2local_75
	store %tmp_93 @ylist
	%tmp_94 = load %global2local_76
	store %tmp_94 @N
	%tmp_95 = load %global2local_77
	store %tmp_95 @targety
	%tmp_96 = load %global2local_78
	store %tmp_96 @xlist
	%tmp_97 = load %global2local_79
	store %tmp_97 @targetx
	%tmp_98 = load %global2local_80
	store %tmp_98 @now
	ret 

}

define main ( ) {
<0> entry
	%global2local_180 = alloca 8
	%global2local_179 = alloca 8
	%global2local_178 = alloca 8
	%global2local_177 = alloca 8
	%global2local_176 = alloca 8
	%global2local_175 = alloca 8
	%global2local_174 = alloca 8
	%global2local_173 = alloca 8
	%global2local_172 = alloca 8
	%global2local_171 = alloca 8
	%global2local_170 = alloca 8
	%global2local_169 = alloca 8
	%global2local_168 = alloca 8
	%global2local_167 = alloca 8
	%global2local_166 = alloca 8
	%global2local_165 = alloca 8
	%tmp_196 = load @targetx
	store %tmp_196 %global2local_180
	%tmp_195 = load @x
	store %tmp_195 %global2local_179
	%tmp_194 = load @j
	store %tmp_194 %global2local_178
	%tmp_193 = load @targety
	store %tmp_193 %global2local_177
	%tmp_192 = load @N
	store %tmp_192 %global2local_176
	%tmp_191 = load @y
	store %tmp_191 %global2local_175
	%tmp_190 = load @ylist
	store %tmp_190 %global2local_174
	%tmp_189 = load @tail
	store %tmp_189 %global2local_173
	%tmp_188 = load @ok
	store %tmp_188 %global2local_172
	%tmp_187 = load @dx
	store %tmp_187 %global2local_171
	%tmp_186 = load @now
	store %tmp_186 %global2local_170
	%tmp_185 = load @xlist
	store %tmp_185 %global2local_169
	%tmp_184 = load @head
	store %tmp_184 %global2local_168
	%tmp_183 = load @i
	store %tmp_183 %global2local_167
	%tmp_182 = load @dy
	store %tmp_182 %global2local_166
	%tmp_181 = load @step
	store %tmp_181 %global2local_165
	%tmp_197 = load %global2local_165
	store %tmp_197 @step
	%tmp_199 = load %global2local_167
	store %tmp_199 @i
	%tmp_201 = load %global2local_168
	store %tmp_201 @head
	%tmp_203 = load %global2local_173
	store %tmp_203 @tail
	%tmp_205 = load %global2local_178
	store %tmp_205 @j
	origin ( 106 )
	%tmp_206 = load @j
	store %tmp_206 %global2local_178
	%tmp_204 = load @tail
	store %tmp_204 %global2local_173
	%tmp_202 = load @head
	store %tmp_202 %global2local_168
	%tmp_200 = load @i
	store %tmp_200 %global2local_167
	%tmp_198 = load @step
	store %tmp_198 %global2local_165
	%res_0 = getInt ( )
	store %res_0 %global2local_176
	%idVal_1 = load %global2local_176
	%res_2 = sub %idVal_1 1
	store %res_2 %global2local_177
	%idVal_3 = load %global2local_177
	store %idVal_3 %global2local_180
	store 0 %global2local_167
	br <1>

<1> for_cond
	%idVal_4 = load %global2local_167
	%idVal_5 = load %global2local_176
	%res_6 = lt %idVal_4 %idVal_5
	br %res_6 <2> <4>

<2> for_body
	store 0 %global2local_178
	br <5>

<5> for_cond
	%idVal_7 = load %global2local_178
	%idVal_8 = load %global2local_176
	%res_9 = lt %idVal_7 %idVal_8
	br %res_9 <6> <8>

<6> for_body
	%res_10 = neg 1
	%arrayPtr_11 = load %global2local_165
	%arrayBase_12 = add %arrayPtr_11 8
	%idVal_13 = load %global2local_167
	%offset_14 = mul %idVal_13 8
	%elementAddr_15 = add %arrayBase_12 %offset_14
	%arrayPtr_16 = load %elementAddr_15
	%arrayBase_17 = add %arrayPtr_16 8
	%idVal_18 = load %global2local_178
	%offset_19 = mul %idVal_18 8
	%elementAddr_20 = add %arrayBase_17 %offset_19
	store %res_10 %elementAddr_20
	br <7>

<7> for_step
	%idVal_21 = load %global2local_178
	%oldVal_22 = load %global2local_178
	%newVal_23 = inc %oldVal_22
	store %newVal_23 %global2local_178
	br <5>

<8> for_end
	br <3>

<3> for_step
	%idVal_24 = load %global2local_167
	%oldVal_25 = load %global2local_167
	%newVal_26 = inc %oldVal_25
	store %newVal_26 %global2local_167
	br <1>

<4> for_end
	%res_27 = neg 2
	%arrayPtr_28 = load %global2local_171
	%arrayBase_29 = add %arrayPtr_28 8
	%offset_30 = mul 0 8
	%elementAddr_31 = add %arrayBase_29 %offset_30
	store %res_27 %elementAddr_31
	%res_32 = neg 1
	%arrayPtr_33 = load %global2local_166
	%arrayBase_34 = add %arrayPtr_33 8
	%offset_35 = mul 0 8
	%elementAddr_36 = add %arrayBase_34 %offset_35
	store %res_32 %elementAddr_36
	%res_37 = neg 2
	%arrayPtr_38 = load %global2local_171
	%arrayBase_39 = add %arrayPtr_38 8
	%offset_40 = mul 1 8
	%elementAddr_41 = add %arrayBase_39 %offset_40
	store %res_37 %elementAddr_41
	%arrayPtr_42 = load %global2local_166
	%arrayBase_43 = add %arrayPtr_42 8
	%offset_44 = mul 1 8
	%elementAddr_45 = add %arrayBase_43 %offset_44
	store 1 %elementAddr_45
	%arrayPtr_46 = load %global2local_171
	%arrayBase_47 = add %arrayPtr_46 8
	%offset_48 = mul 2 8
	%elementAddr_49 = add %arrayBase_47 %offset_48
	store 2 %elementAddr_49
	%res_50 = neg 1
	%arrayPtr_51 = load %global2local_166
	%arrayBase_52 = add %arrayPtr_51 8
	%offset_53 = mul 2 8
	%elementAddr_54 = add %arrayBase_52 %offset_53
	store %res_50 %elementAddr_54
	%arrayPtr_55 = load %global2local_171
	%arrayBase_56 = add %arrayPtr_55 8
	%offset_57 = mul 3 8
	%elementAddr_58 = add %arrayBase_56 %offset_57
	store 2 %elementAddr_58
	%arrayPtr_59 = load %global2local_166
	%arrayBase_60 = add %arrayPtr_59 8
	%offset_61 = mul 3 8
	%elementAddr_62 = add %arrayBase_60 %offset_61
	store 1 %elementAddr_62
	%res_63 = neg 1
	%arrayPtr_64 = load %global2local_171
	%arrayBase_65 = add %arrayPtr_64 8
	%offset_66 = mul 4 8
	%elementAddr_67 = add %arrayBase_65 %offset_66
	store %res_63 %elementAddr_67
	%res_68 = neg 2
	%arrayPtr_69 = load %global2local_166
	%arrayBase_70 = add %arrayPtr_69 8
	%offset_71 = mul 4 8
	%elementAddr_72 = add %arrayBase_70 %offset_71
	store %res_68 %elementAddr_72
	%res_73 = neg 1
	%arrayPtr_74 = load %global2local_171
	%arrayBase_75 = add %arrayPtr_74 8
	%offset_76 = mul 5 8
	%elementAddr_77 = add %arrayBase_75 %offset_76
	store %res_73 %elementAddr_77
	%arrayPtr_78 = load %global2local_166
	%arrayBase_79 = add %arrayPtr_78 8
	%offset_80 = mul 5 8
	%elementAddr_81 = add %arrayBase_79 %offset_80
	store 2 %elementAddr_81
	%arrayPtr_82 = load %global2local_171
	%arrayBase_83 = add %arrayPtr_82 8
	%offset_84 = mul 6 8
	%elementAddr_85 = add %arrayBase_83 %offset_84
	store 1 %elementAddr_85
	%res_86 = neg 2
	%arrayPtr_87 = load %global2local_166
	%arrayBase_88 = add %arrayPtr_87 8
	%offset_89 = mul 6 8
	%elementAddr_90 = add %arrayBase_88 %offset_89
	store %res_86 %elementAddr_90
	%arrayPtr_91 = load %global2local_171
	%arrayBase_92 = add %arrayPtr_91 8
	%offset_93 = mul 7 8
	%elementAddr_94 = add %arrayBase_92 %offset_93
	store 1 %elementAddr_94
	%arrayPtr_95 = load %global2local_166
	%arrayBase_96 = add %arrayPtr_95 8
	%offset_97 = mul 7 8
	%elementAddr_98 = add %arrayBase_96 %offset_97
	store 2 %elementAddr_98
	br <9>

<9> while_cond
	%idVal_99 = load %global2local_168
	%idVal_100 = load %global2local_173
	%res_101 = le %idVal_99 %idVal_100
	br %res_101 <10> <11>

<10> while_body
	%arrayPtr_102 = load %global2local_169
	%arrayBase_103 = add %arrayPtr_102 8
	%idVal_104 = load %global2local_168
	%offset_105 = mul %idVal_104 8
	%elementAddr_106 = add %arrayBase_103 %offset_105
	%elementVal_107 = load %elementAddr_106
	store %elementVal_107 %global2local_179
	%arrayPtr_108 = load %global2local_174
	%arrayBase_109 = add %arrayPtr_108 8
	%idVal_110 = load %global2local_168
	%offset_111 = mul %idVal_110 8
	%elementAddr_112 = add %arrayBase_109 %offset_111
	%elementVal_113 = load %elementAddr_112
	store %elementVal_113 %global2local_175
	%arrayPtr_114 = load %global2local_165
	%arrayBase_115 = add %arrayPtr_114 8
	%idVal_116 = load %global2local_179
	%offset_117 = mul %idVal_116 8
	%elementAddr_118 = add %arrayBase_115 %offset_117
	%arrayPtr_119 = load %elementAddr_118
	%arrayBase_120 = add %arrayPtr_119 8
	%idVal_121 = load %global2local_175
	%offset_122 = mul %idVal_121 8
	%elementAddr_123 = add %arrayBase_120 %offset_122
	%elementVal_124 = load %elementAddr_123
	store %elementVal_124 %global2local_170
	store 0 %global2local_178
	br <12>

<12> for_cond
	%idVal_125 = load %global2local_178
	%res_126 = lt %idVal_125 8
	br %res_126 <13> <15>

<13> for_body
	%idVal_127 = load %global2local_179
	%arrayPtr_128 = load %global2local_171
	%arrayBase_129 = add %arrayPtr_128 8
	%idVal_130 = load %global2local_178
	%offset_131 = mul %idVal_130 8
	%elementAddr_132 = add %arrayBase_129 %offset_131
	%elementVal_133 = load %elementAddr_132
	%res_134 = add %idVal_127 %elementVal_133
	%idVal_135 = load %global2local_175
	%arrayPtr_136 = load %global2local_166
	%arrayBase_137 = add %arrayPtr_136 8
	%idVal_138 = load %global2local_178
	%offset_139 = mul %idVal_138 8
	%elementAddr_140 = add %arrayBase_137 %offset_139
	%elementVal_141 = load %elementAddr_140
	%res_142 = add %idVal_135 %elementVal_141
	%tmp_207 = load %global2local_165
	store %tmp_207 @step
	%tmp_209 = load %global2local_169
	store %tmp_209 @xlist
	%tmp_211 = load %global2local_170
	store %tmp_211 @now
	%tmp_213 = load %global2local_172
	store %tmp_213 @ok
	%tmp_215 = load %global2local_173
	store %tmp_215 @tail
	%tmp_217 = load %global2local_174
	store %tmp_217 @ylist
	%tmp_219 = load %global2local_176
	store %tmp_219 @N
	%tmp_221 = load %global2local_177
	store %tmp_221 @targety
	%tmp_223 = load %global2local_180
	store %tmp_223 @targetx
	addList ( %res_134 %res_142 )
	%tmp_224 = load @targetx
	store %tmp_224 %global2local_180
	%tmp_222 = load @targety
	store %tmp_222 %global2local_177
	%tmp_220 = load @N
	store %tmp_220 %global2local_176
	%tmp_218 = load @ylist
	store %tmp_218 %global2local_174
	%tmp_216 = load @tail
	store %tmp_216 %global2local_173
	%tmp_214 = load @ok
	store %tmp_214 %global2local_172
	%tmp_212 = load @now
	store %tmp_212 %global2local_170
	%tmp_210 = load @xlist
	store %tmp_210 %global2local_169
	%tmp_208 = load @step
	store %tmp_208 %global2local_165
	br <14>

<14> for_step
	%idVal_143 = load %global2local_178
	%oldVal_144 = load %global2local_178
	%newVal_145 = inc %oldVal_144
	store %newVal_145 %global2local_178
	br <12>

<15> for_end
	%idVal_146 = load %global2local_172
	%res_147 = eq %idVal_146 1
	br %res_147 <16> <17>

<16> if_true
	br <11>

<17> if_merge
	%idVal_148 = load %global2local_168
	%oldVal_149 = load %global2local_168
	%newVal_150 = inc %oldVal_149
	store %newVal_150 %global2local_168
	br <9>

<11> while_end
	%idVal_151 = load %global2local_172
	%res_152 = eq %idVal_151 1
	br %res_152 <18> <19>

<18> if_true
	%arrayPtr_154 = load %global2local_165
	%arrayBase_155 = add %arrayPtr_154 8
	%idVal_156 = load %global2local_180
	%offset_157 = mul %idVal_156 8
	%elementAddr_158 = add %arrayBase_155 %offset_157
	%arrayPtr_159 = load %elementAddr_158
	%arrayBase_160 = add %arrayPtr_159 8
	%idVal_161 = load %global2local_177
	%offset_162 = mul %idVal_161 8
	%elementAddr_163 = add %arrayBase_160 %offset_162
	%elementVal_164 = load %elementAddr_163
	%res_153 = toString ( %elementVal_164 )
	println ( %res_153 )
	br <20>

<19> if_false
	print ( $str_0 )
	br <20>

<20> if_merge
	%tmp_225 = load %global2local_165
	store %tmp_225 @step
	%tmp_226 = load %global2local_166
	store %tmp_226 @dy
	%tmp_227 = load %global2local_167
	store %tmp_227 @i
	%tmp_228 = load %global2local_168
	store %tmp_228 @head
	%tmp_229 = load %global2local_169
	store %tmp_229 @xlist
	%tmp_230 = load %global2local_170
	store %tmp_230 @now
	%tmp_231 = load %global2local_171
	store %tmp_231 @dx
	%tmp_232 = load %global2local_172
	store %tmp_232 @ok
	%tmp_233 = load %global2local_173
	store %tmp_233 @tail
	%tmp_234 = load %global2local_174
	store %tmp_234 @ylist
	%tmp_235 = load %global2local_175
	store %tmp_235 @y
	%tmp_236 = load %global2local_176
	store %tmp_236 @N
	%tmp_237 = load %global2local_177
	store %tmp_237 @targety
	%tmp_238 = load %global2local_178
	store %tmp_238 @j
	%tmp_239 = load %global2local_179
	store %tmp_239 @x
	%tmp_240 = load %global2local_180
	store %tmp_240 @targetx
	ret 0

}

