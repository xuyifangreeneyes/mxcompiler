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
	%varAddr_0 = alloca 4
	store 10000000 %varAddr_0
	%idVal_1 = load %varAddr_0
	ret %idVal_1

}

define #journalists ( %argVal_0 ) {
<0> entry
	%argAddr_1 = alloca 4
	store %argVal_0 %argAddr_1
	%idVal_2 = load %argAddr_1
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
	%varAddr_4 = alloca 4
	%argAddr_3 = alloca 4
	%argAddr_1 = alloca 4
	store %argVal_0 %argAddr_1
	store %argVal_2 %argAddr_3
	store 0 %varAddr_4
	br <1>

<1> for_cond
	%idVal_5 = load %varAddr_4
	%classPtr_6 = load %argAddr_3
	%memberAddr_7 = add %classPtr_6 0
	%memberVal_8 = load %memberAddr_7
	%res_9 = lt %idVal_5 %memberVal_8
	br %res_9 <2> <4>

<2> for_body
	%classPtr_10 = load %argAddr_1
	%memberAddr_11 = add %classPtr_10 4
	%memberVal_12 = load %memberAddr_11
	%classPtr_13 = load %argAddr_1
	%memberAddr_14 = add %classPtr_13 4
	%oldVal_15 = load %memberAddr_14
	%newVal_16 = inc %oldVal_15
	store %newVal_16 %memberAddr_14
	br <3>

<3> for_step
	%idVal_17 = load %varAddr_4
	%oldVal_18 = load %varAddr_4
	%newVal_19 = inc %oldVal_18
	store %newVal_19 %varAddr_4
	br <1>

<4> for_end
	%idVal_20 = load %argAddr_1
	ret %idVal_20

}

define #main ( ) {
<0> entry
	%varAddr_180 = alloca 4
	%varAddr_123 = alloca 4
	%varAddr_69 = alloca 4
	%varAddr_68 = alloca 4
	%varAddr_35 = alloca 4
	%storageCell_27 = alloca 4
	%storageCell_19 = alloca 4
	%varAddr_13 = alloca 4
	%varAddr_9 = alloca 4
	%varAddr_7 = alloca 4
	%varAddr_6 = alloca 4
	%varAddr_5 = alloca 4
	%varAddr_4 = alloca 4
	%varAddr_3 = alloca 4
	%varAddr_2 = alloca 4
	%varAddr_1 = alloca 4
	%varAddr_0 = alloca 4
	store 2016 %varAddr_3
	store $str_5 %varAddr_4
	store 1 %varAddr_5
	store 0 %varAddr_6
	%classPtr_8 = malloc 4
	store %classPtr_8 %varAddr_7
	%memberLength_11 = mul 3 4
	%arrayLength_12 = add %memberLength_11 4
	%arrayPtr_10 = malloc %arrayLength_12
	store 3 %arrayPtr_10
	store %arrayPtr_10 %varAddr_9
	%memberLength_15 = mul 1 4
	%arrayLength_16 = add %memberLength_15 4
	%arrayPtr_14 = malloc %arrayLength_16
	store 1 %arrayPtr_14
	%arrayEndPos_17 = add %arrayPtr_14 %arrayLength_16
	%startPos_18 = add %arrayPtr_14 4
	store %startPos_18 %storageCell_19
	br <1>

<1> new_for_cond
	%pos_20 = load %storageCell_19
	%condition_21 = lt %pos_20 %arrayEndPos_17
	br %condition_21 <2> <4>

<2> new_for_body
	%memberLength_23 = mul 2 4
	%arrayLength_24 = add %memberLength_23 4
	%arrayPtr_22 = malloc %arrayLength_24
	store 2 %arrayPtr_22
	%arrayEndPos_25 = add %arrayPtr_22 %arrayLength_24
	%startPos_26 = add %arrayPtr_22 4
	store %startPos_26 %storageCell_27
	br <5>

<5> new_for_cond
	%pos_28 = load %storageCell_27
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
	store %pos_33 %storageCell_27
	br <5>

<8> new_for_end
	br <3>

<3> new_for_step
	%pos_34 = add %pos_20 4
	store %pos_34 %storageCell_19
	br <1>

<4> new_for_end
	store %arrayPtr_14 %varAddr_13
	%classPtr_36 = malloc 12
	store %classPtr_36 %varAddr_35
	store 1 %varAddr_0
	store 2 %varAddr_1
	%idVal_37 = load %varAddr_0
	%idVal_38 = load %varAddr_1
	%res_39 = add %idVal_37 %idVal_38
	%idVal_40 = load %varAddr_0
	%idVal_41 = load %varAddr_1
	%res_42 = sub %idVal_40 %idVal_41
	%idVal_43 = load %varAddr_0
	%idVal_44 = load %varAddr_1
	%res_45 = mul %idVal_43 %idVal_44
	%idVal_46 = load %varAddr_0
	%idVal_47 = load %varAddr_1
	%res_48 = div %idVal_46 %idVal_47
	%idVal_49 = load %varAddr_0
	%idVal_50 = load %varAddr_1
	%res_51 = mod %idVal_49 %idVal_50
	%idVal_52 = load %varAddr_0
	%res_53 = lt %idVal_52 1
	%idVal_54 = load %varAddr_0
	%res_55 = gt %idVal_54 2
	%idVal_56 = load %varAddr_0
	%idVal_57 = load %varAddr_1
	%res_58 = eq %idVal_56 %idVal_57
	%idVal_59 = load %varAddr_0
	%idVal_60 = load %varAddr_1
	%res_61 = neq %idVal_59 %idVal_60
	%idVal_62 = load %varAddr_0
	%idVal_63 = load %varAddr_1
	%res_64 = le %idVal_62 %idVal_63
	%idVal_65 = load %varAddr_0
	%idVal_66 = load %varAddr_1
	%res_67 = ge %idVal_65 %idVal_66
	%idVal_70 = load %varAddr_68
	br %idVal_70 <10> <9>

<10> lhs_true
	%idVal_71 = load %varAddr_69
	br %idVal_71 <9> <9>

<9> bool_merge
	%idVal_72 = load %varAddr_68
	br %idVal_72 <11> <12>

<12> lhs_false
	%idVal_73 = load %varAddr_69
	br %idVal_73 <11> <11>

<11> bool_merge
	%idVal_74 = load %varAddr_68
	%idVal_75 = load %varAddr_0
	%res_76 = lsft %idVal_75 1
	%idVal_77 = load %varAddr_0
	%res_78 = rsft %idVal_77 2
	%idVal_79 = load %varAddr_0
	%res_80 = bit_not %idVal_79
	%idVal_81 = load %varAddr_0
	%idVal_82 = load %varAddr_1
	%res_83 = bit_or %idVal_81 %idVal_82
	%idVal_84 = load %varAddr_0
	%idVal_85 = load %varAddr_1
	%res_86 = bit_xor %idVal_84 %idVal_85
	%idVal_87 = load %varAddr_0
	%idVal_88 = load %varAddr_1
	%res_89 = bit_and %idVal_87 %idVal_88
	%idVal_90 = load %varAddr_0
	%oldVal_91 = load %varAddr_0
	%newVal_92 = inc %oldVal_91
	store %newVal_92 %varAddr_0
	%idVal_93 = load %varAddr_1
	%oldVal_94 = load %varAddr_1
	%newVal_95 = inc %oldVal_94
	store %newVal_95 %varAddr_1
	%classPtr_96 = load %varAddr_7
	%memberAddr_97 = add %classPtr_96 0
	%memberVal_98 = load %memberAddr_97
	%arrayPtr_99 = load %varAddr_9
	%arrayBase_100 = add %arrayPtr_99 4
	%offset_101 = mul 2 4
	%elementAddr_102 = add %arrayBase_100 %offset_101
	%classPtr_103 = load %elementAddr_102
	%memberAddr_104 = add %classPtr_103 0
	%memberVal_105 = load %memberAddr_104
	%arrayPtr_106 = load %varAddr_13
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
	store 0 %varAddr_123
	store 0 %varAddr_123
	br <13>

<13> for_cond
	%idVal_124 = load %varAddr_123
	%res_125 = lt %idVal_124 3
	br %res_125 <14> <16>

<14> for_body
	%idVal_127 = load %varAddr_35
	%arrayPtr_128 = load %varAddr_9
	%arrayBase_129 = add %arrayPtr_128 4
	%idVal_130 = load %varAddr_123
	%offset_131 = mul %idVal_130 4
	%elementAddr_132 = add %arrayBase_129 %offset_131
	%elementVal_133 = load %elementAddr_132
	%res_126 = #xu ( %idVal_127 %elementVal_133 )
	br <15>

<15> for_step
	%idVal_134 = load %varAddr_123
	%oldVal_135 = load %varAddr_123
	%newVal_136 = inc %oldVal_135
	store %newVal_136 %varAddr_123
	br <13>

<16> for_end
	store 0 %varAddr_123
	br <17>

<17> for_cond
	%idVal_137 = load %varAddr_123
	%res_138 = lt %idVal_137 3
	br %res_138 <18> <20>

<18> for_body
	%idVal_140 = load %varAddr_35
	%arrayPtr_141 = load %varAddr_9
	%arrayBase_142 = add %arrayPtr_141 4
	%idVal_143 = load %varAddr_123
	%offset_144 = mul %idVal_143 4
	%elementAddr_145 = add %arrayBase_142 %offset_144
	%elementVal_146 = load %elementAddr_145
	%res_139 = #xu ( %idVal_140 %elementVal_146 )
	br <19>

<19> for_step
	%idVal_147 = load %varAddr_123
	%oldVal_148 = load %varAddr_123
	%newVal_149 = inc %oldVal_148
	store %newVal_149 %varAddr_123
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

