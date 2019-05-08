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
	%argAddr_5 = alloca 8
	%argAddr_3 = alloca 8
	%argAddr_1 = alloca 8
	store %argVal_0 %argAddr_1
	store %argVal_2 %argAddr_3
	store %argVal_4 %argAddr_5
	%idVal_6 = load %argAddr_1
	%idVal_7 = load %argAddr_3
	%res_8 = add %idVal_6 %idVal_7
	%idVal_9 = load %argAddr_5
	%res_10 = add %res_8 %idVal_9
	%res_11 = bit_and %res_10 1073741823
	ret %res_11

}

define main ( ) {
<0> entry
	%cargAddr_162 = alloca 8
	%cargAddr_161 = alloca 8
	%cargAddr_160 = alloca 8
	%retValAddr_159 = alloca 8
	%varAddr_133 = alloca 8
	%varAddr_52 = alloca 8
	%varAddr_51 = alloca 8
	%varAddr_50 = alloca 8
	%storageCell_42 = alloca 8
	%varAddr_34 = alloca 8
	%storageCell_26 = alloca 8
	%varAddr_18 = alloca 8
	%storageCell_10 = alloca 8
	%varAddr_2 = alloca 8
	%varAddr_0 = alloca 8
	%res_1 = getInt ( )
	store %res_1 %varAddr_0
	%idVal_3 = load %varAddr_0
	%idVal_4 = load %varAddr_0
	%memberLength_6 = mul %idVal_3 8
	%arrayLength_7 = add %memberLength_6 8
	%arrayPtr_5 = malloc %arrayLength_7
	store %idVal_3 %arrayPtr_5
	%arrayBase_8 = add %arrayPtr_5 8
	%arrayEndPos_9 = add %arrayBase_8 %memberLength_6
	store %arrayBase_8 %storageCell_10
	br <1>

<1> new_for_cond
	%pos_11 = load %storageCell_10
	%condition_12 = lt %pos_11 %arrayEndPos_9
	br %condition_12 <2> <4>

<2> new_for_body
	%memberLength_14 = mul %idVal_4 8
	%arrayLength_15 = add %memberLength_14 8
	%arrayPtr_13 = malloc %arrayLength_15
	store %idVal_4 %arrayPtr_13
	%arrayBase_16 = add %arrayPtr_13 8
	store %arrayBase_16 %pos_11
	br <3>

<3> new_for_step
	%pos_17 = add %pos_11 8
	store %pos_17 %storageCell_10
	br <1>

<4> new_for_end
	store %arrayBase_8 %varAddr_2
	%idVal_19 = load %varAddr_0
	%idVal_20 = load %varAddr_0
	%memberLength_22 = mul %idVal_19 8
	%arrayLength_23 = add %memberLength_22 8
	%arrayPtr_21 = malloc %arrayLength_23
	store %idVal_19 %arrayPtr_21
	%arrayBase_24 = add %arrayPtr_21 8
	%arrayEndPos_25 = add %arrayBase_24 %memberLength_22
	store %arrayBase_24 %storageCell_26
	br <5>

<5> new_for_cond
	%pos_27 = load %storageCell_26
	%condition_28 = lt %pos_27 %arrayEndPos_25
	br %condition_28 <6> <8>

<6> new_for_body
	%memberLength_30 = mul %idVal_20 8
	%arrayLength_31 = add %memberLength_30 8
	%arrayPtr_29 = malloc %arrayLength_31
	store %idVal_20 %arrayPtr_29
	%arrayBase_32 = add %arrayPtr_29 8
	store %arrayBase_32 %pos_27
	br <7>

<7> new_for_step
	%pos_33 = add %pos_27 8
	store %pos_33 %storageCell_26
	br <5>

<8> new_for_end
	store %arrayBase_24 %varAddr_18
	%idVal_35 = load %varAddr_0
	%idVal_36 = load %varAddr_0
	%memberLength_38 = mul %idVal_35 8
	%arrayLength_39 = add %memberLength_38 8
	%arrayPtr_37 = malloc %arrayLength_39
	store %idVal_35 %arrayPtr_37
	%arrayBase_40 = add %arrayPtr_37 8
	%arrayEndPos_41 = add %arrayBase_40 %memberLength_38
	store %arrayBase_40 %storageCell_42
	br <9>

<9> new_for_cond
	%pos_43 = load %storageCell_42
	%condition_44 = lt %pos_43 %arrayEndPos_41
	br %condition_44 <10> <12>

<10> new_for_body
	%memberLength_46 = mul %idVal_36 8
	%arrayLength_47 = add %memberLength_46 8
	%arrayPtr_45 = malloc %arrayLength_47
	store %idVal_36 %arrayPtr_45
	%arrayBase_48 = add %arrayPtr_45 8
	store %arrayBase_48 %pos_43
	br <11>

<11> new_for_step
	%pos_49 = add %pos_43 8
	store %pos_49 %storageCell_42
	br <9>

<12> new_for_end
	store %arrayBase_40 %varAddr_34
	store 0 %varAddr_50
	br <13>

<13> for_cond
	%idVal_53 = load %varAddr_50
	%idVal_54 = load %varAddr_0
	%res_55 = lt %idVal_53 %idVal_54
	br %res_55 <14> <16>

<14> for_body
	store 0 %varAddr_51
	br <17>

<17> for_cond
	%idVal_56 = load %varAddr_51
	%idVal_57 = load %varAddr_0
	%res_58 = lt %idVal_56 %idVal_57
	br %res_58 <18> <20>

<18> for_body
	%idVal_59 = load %varAddr_50
	%idVal_60 = load %varAddr_51
	%res_61 = add %idVal_59 %idVal_60
	%arrayBase_62 = load %varAddr_2
	%idVal_63 = load %varAddr_50
	%offset_64 = mul %idVal_63 8
	%elementAddr_65 = add %arrayBase_62 %offset_64
	%arrayBase_66 = load %elementAddr_65
	%idVal_67 = load %varAddr_51
	%offset_68 = mul %idVal_67 8
	%elementAddr_69 = add %arrayBase_66 %offset_68
	store %res_61 %elementAddr_69
	br <19>

<19> for_step
	%idVal_70 = load %varAddr_51
	%oldVal_71 = load %varAddr_51
	%newVal_72 = inc %oldVal_71
	store %newVal_72 %varAddr_51
	br <17>

<20> for_end
	br <15>

<15> for_step
	%idVal_73 = load %varAddr_50
	%oldVal_74 = load %varAddr_50
	%newVal_75 = inc %oldVal_74
	store %newVal_75 %varAddr_50
	br <13>

<16> for_end
	store 0 %varAddr_50
	br <21>

<21> for_cond
	%idVal_76 = load %varAddr_50
	%idVal_77 = load %varAddr_0
	%res_78 = lt %idVal_76 %idVal_77
	br %res_78 <22> <24>

<22> for_body
	store 0 %varAddr_51
	br <25>

<25> for_cond
	%idVal_79 = load %varAddr_51
	%idVal_80 = load %varAddr_0
	%res_81 = lt %idVal_79 %idVal_80
	br %res_81 <26> <28>

<26> for_body
	%idVal_82 = load %varAddr_51
	%idVal_83 = load %varAddr_50
	%res_84 = ge %idVal_82 %idVal_83
	br %res_84 <29> <30>

<29> if_true
	store 0 %varAddr_52
	br <31>

<31> for_cond
	%idVal_85 = load %varAddr_52
	%idVal_86 = load %varAddr_0
	%res_87 = lt %idVal_85 %idVal_86
	br %res_87 <32> <34>

<32> for_body
	%arrayBase_89 = load %varAddr_18
	%idVal_90 = load %varAddr_50
	%offset_91 = mul %idVal_90 8
	%elementAddr_92 = add %arrayBase_89 %offset_91
	%arrayBase_93 = load %elementAddr_92
	%idVal_94 = load %varAddr_51
	%offset_95 = mul %idVal_94 8
	%elementAddr_96 = add %arrayBase_93 %offset_95
	%elementVal_97 = load %elementAddr_96
	%arrayBase_98 = load %varAddr_2
	%idVal_99 = load %varAddr_50
	%offset_100 = mul %idVal_99 8
	%elementAddr_101 = add %arrayBase_98 %offset_100
	%arrayBase_102 = load %elementAddr_101
	%idVal_103 = load %varAddr_52
	%offset_104 = mul %idVal_103 8
	%elementAddr_105 = add %arrayBase_102 %offset_104
	%elementVal_106 = load %elementAddr_105
	%arrayBase_107 = load %varAddr_2
	%idVal_108 = load %varAddr_52
	%offset_109 = mul %idVal_108 8
	%elementAddr_110 = add %arrayBase_107 %offset_109
	%arrayBase_111 = load %elementAddr_110
	%idVal_112 = load %varAddr_51
	%offset_113 = mul %idVal_112 8
	%elementAddr_114 = add %arrayBase_111 %offset_113
	%elementVal_115 = load %elementAddr_114
	br <44>

<44> centry
	store %elementVal_97 %cargAddr_162
	store %elementVal_106 %cargAddr_161
	store %elementVal_115 %cargAddr_160
	%cidVal_163 = load %cargAddr_162
	%cidVal_164 = load %cargAddr_161
	%cres_165 = add %cidVal_163 %cidVal_164
	%cidVal_166 = load %cargAddr_160
	%cres_167 = add %cres_165 %cidVal_166
	%cres_168 = bit_and %cres_167 1073741823
	store %cres_168 %retValAddr_159
	br <43>

<43> after_call
	%res_88 = load %retValAddr_159
	%arrayBase_116 = load %varAddr_18
	%idVal_117 = load %varAddr_50
	%offset_118 = mul %idVal_117 8
	%elementAddr_119 = add %arrayBase_116 %offset_118
	%arrayBase_120 = load %elementAddr_119
	%idVal_121 = load %varAddr_51
	%offset_122 = mul %idVal_121 8
	%elementAddr_123 = add %arrayBase_120 %offset_122
	store %res_88 %elementAddr_123
	br <33>

<33> for_step
	%idVal_124 = load %varAddr_52
	%oldVal_125 = load %varAddr_52
	%newVal_126 = inc %oldVal_125
	store %newVal_126 %varAddr_52
	br <31>

<34> for_end
	br <30>

<30> if_merge
	br <27>

<27> for_step
	%idVal_127 = load %varAddr_51
	%oldVal_128 = load %varAddr_51
	%newVal_129 = inc %oldVal_128
	store %newVal_129 %varAddr_51
	br <25>

<28> for_end
	br <23>

<23> for_step
	%idVal_130 = load %varAddr_50
	%oldVal_131 = load %varAddr_50
	%newVal_132 = inc %oldVal_131
	store %newVal_132 %varAddr_50
	br <21>

<24> for_end
	store 0 %varAddr_133
	store 0 %varAddr_50
	br <35>

<35> for_cond
	%idVal_134 = load %varAddr_50
	%idVal_135 = load %varAddr_0
	%res_136 = lt %idVal_134 %idVal_135
	br %res_136 <36> <38>

<36> for_body
	store 0 %varAddr_51
	br <39>

<39> for_cond
	%idVal_137 = load %varAddr_51
	%idVal_138 = load %varAddr_0
	%res_139 = lt %idVal_137 %idVal_138
	br %res_139 <40> <42>

<40> for_body
	%idVal_140 = load %varAddr_133
	%arrayBase_141 = load %varAddr_18
	%idVal_142 = load %varAddr_50
	%offset_143 = mul %idVal_142 8
	%elementAddr_144 = add %arrayBase_141 %offset_143
	%arrayBase_145 = load %elementAddr_144
	%idVal_146 = load %varAddr_51
	%offset_147 = mul %idVal_146 8
	%elementAddr_148 = add %arrayBase_145 %offset_147
	%elementVal_149 = load %elementAddr_148
	%res_150 = add %idVal_140 %elementVal_149
	%res_151 = bit_and %res_150 1073741823
	store %res_151 %varAddr_133
	br <41>

<41> for_step
	%idVal_152 = load %varAddr_51
	%oldVal_153 = load %varAddr_51
	%newVal_154 = inc %oldVal_153
	store %newVal_154 %varAddr_51
	br <39>

<42> for_end
	br <37>

<37> for_step
	%idVal_155 = load %varAddr_50
	%oldVal_156 = load %varAddr_50
	%newVal_157 = inc %oldVal_156
	store %newVal_157 %varAddr_50
	br <35>

<38> for_end
	%idVal_158 = load %varAddr_133
	__printInt ( %idVal_158 )
	ret 0

}

