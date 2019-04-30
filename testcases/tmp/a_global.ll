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
	%global2local_0 = alloca 8
	%tmp_1 = load @total
	store %tmp_1 %global2local_0
	store 0 %global2local_0
	%tmp_2 = load %global2local_0
	store %tmp_2 @total
	ret 

}

define main ( ) {
<0> entry
	%global2local_172 = alloca 8
	%global2local_171 = alloca 8
	%varAddr_5 = alloca 8
	%varAddr_4 = alloca 8
	%varAddr_3 = alloca 8
	%varAddr_2 = alloca 8
	%varAddr_1 = alloca 8
	%varAddr_0 = alloca 8
	%tmp_174 = load @N
	store %tmp_174 %global2local_172
	%tmp_173 = load @total
	store %tmp_173 %global2local_171
	%res_6 = getInt ( )
	store %res_6 %global2local_172
	store 1 %varAddr_0
	br <1>

<1> for_cond
	%idVal_7 = load %varAddr_0
	%idVal_8 = load %global2local_172
	%res_9 = le %idVal_7 %idVal_8
	br %res_9 <2> <4>

<2> for_body
	store 1 %varAddr_1
	br <5>

<5> for_cond
	%idVal_10 = load %varAddr_1
	%idVal_11 = load %global2local_172
	%res_12 = le %idVal_10 %idVal_11
	br %res_12 <6> <8>

<6> for_body
	store 1 %varAddr_2
	br <9>

<9> for_cond
	%idVal_13 = load %varAddr_2
	%idVal_14 = load %global2local_172
	%res_15 = le %idVal_13 %idVal_14
	br %res_15 <10> <12>

<10> for_body
	store 1 %varAddr_3
	br <13>

<13> for_cond
	%idVal_16 = load %varAddr_3
	%idVal_17 = load %global2local_172
	%res_18 = le %idVal_16 %idVal_17
	br %res_18 <14> <16>

<14> for_body
	store 1 %varAddr_4
	br <17>

<17> for_cond
	%idVal_19 = load %varAddr_4
	%idVal_20 = load %global2local_172
	%res_21 = le %idVal_19 %idVal_20
	br %res_21 <18> <20>

<18> for_body
	store 1 %varAddr_5
	br <21>

<21> for_cond
	%idVal_22 = load %varAddr_5
	%idVal_23 = load %global2local_172
	%res_24 = le %idVal_22 %idVal_23
	br %res_24 <22> <24>

<22> for_body
	%idVal_25 = load %varAddr_0
	%idVal_26 = load %varAddr_1
	%res_27 = neq %idVal_25 %idVal_26
	br %res_27 <66> <26>

<66> lhs_true
	%idVal_28 = load %varAddr_0
	%idVal_29 = load %varAddr_2
	%res_30 = neq %idVal_28 %idVal_29
	br %res_30 <65> <26>

<65> lhs_true
	%idVal_31 = load %varAddr_0
	%idVal_32 = load %varAddr_3
	%res_33 = neq %idVal_31 %idVal_32
	br %res_33 <64> <26>

<64> lhs_true
	%idVal_34 = load %varAddr_0
	%idVal_35 = load %varAddr_4
	%res_36 = neq %idVal_34 %idVal_35
	br %res_36 <63> <26>

<63> lhs_true
	%idVal_37 = load %varAddr_0
	%idVal_38 = load %varAddr_5
	%res_39 = neq %idVal_37 %idVal_38
	br %res_39 <62> <26>

<62> lhs_true
	%idVal_40 = load %varAddr_0
	mov %idVal_41 99
	%res_42 = neq %idVal_40 %idVal_41
	br %res_42 <61> <26>

<61> lhs_true
	%idVal_43 = load %varAddr_0
	mov %idVal_44 100
	%res_45 = neq %idVal_43 %idVal_44
	br %res_45 <60> <26>

<60> lhs_true
	%idVal_46 = load %varAddr_0
	mov %idVal_47 101
	%res_48 = neq %idVal_46 %idVal_47
	br %res_48 <59> <26>

<59> lhs_true
	%idVal_49 = load %varAddr_0
	mov %idVal_50 102
	%res_51 = neq %idVal_49 %idVal_50
	br %res_51 <58> <26>

<58> lhs_true
	%idVal_52 = load %varAddr_1
	%idVal_53 = load %varAddr_2
	%res_54 = neq %idVal_52 %idVal_53
	br %res_54 <57> <26>

<57> lhs_true
	%idVal_55 = load %varAddr_1
	%idVal_56 = load %varAddr_3
	%res_57 = neq %idVal_55 %idVal_56
	br %res_57 <56> <26>

<56> lhs_true
	%idVal_58 = load %varAddr_1
	%idVal_59 = load %varAddr_4
	%res_60 = neq %idVal_58 %idVal_59
	br %res_60 <55> <26>

<55> lhs_true
	%idVal_61 = load %varAddr_1
	%idVal_62 = load %varAddr_5
	%res_63 = neq %idVal_61 %idVal_62
	br %res_63 <54> <26>

<54> lhs_true
	%idVal_64 = load %varAddr_1
	mov %idVal_65 99
	%res_66 = neq %idVal_64 %idVal_65
	br %res_66 <53> <26>

<53> lhs_true
	%idVal_67 = load %varAddr_1
	mov %idVal_68 100
	%res_69 = neq %idVal_67 %idVal_68
	br %res_69 <52> <26>

<52> lhs_true
	%idVal_70 = load %varAddr_1
	mov %idVal_71 101
	%res_72 = neq %idVal_70 %idVal_71
	br %res_72 <51> <26>

<51> lhs_true
	%idVal_73 = load %varAddr_1
	mov %idVal_74 102
	%res_75 = neq %idVal_73 %idVal_74
	br %res_75 <50> <26>

<50> lhs_true
	%idVal_76 = load %varAddr_2
	%idVal_77 = load %varAddr_3
	%res_78 = neq %idVal_76 %idVal_77
	br %res_78 <49> <26>

<49> lhs_true
	%idVal_79 = load %varAddr_2
	%idVal_80 = load %varAddr_4
	%res_81 = neq %idVal_79 %idVal_80
	br %res_81 <48> <26>

<48> lhs_true
	%idVal_82 = load %varAddr_2
	%idVal_83 = load %varAddr_5
	%res_84 = neq %idVal_82 %idVal_83
	br %res_84 <47> <26>

<47> lhs_true
	%idVal_85 = load %varAddr_2
	mov %idVal_86 99
	%res_87 = neq %idVal_85 %idVal_86
	br %res_87 <46> <26>

<46> lhs_true
	%idVal_88 = load %varAddr_2
	mov %idVal_89 100
	%res_90 = neq %idVal_88 %idVal_89
	br %res_90 <45> <26>

<45> lhs_true
	%idVal_91 = load %varAddr_2
	mov %idVal_92 101
	%res_93 = neq %idVal_91 %idVal_92
	br %res_93 <44> <26>

<44> lhs_true
	%idVal_94 = load %varAddr_2
	mov %idVal_95 102
	%res_96 = neq %idVal_94 %idVal_95
	br %res_96 <43> <26>

<43> lhs_true
	%idVal_97 = load %varAddr_3
	%idVal_98 = load %varAddr_4
	%res_99 = neq %idVal_97 %idVal_98
	br %res_99 <42> <26>

<42> lhs_true
	%idVal_100 = load %varAddr_3
	%idVal_101 = load %varAddr_5
	%res_102 = neq %idVal_100 %idVal_101
	br %res_102 <41> <26>

<41> lhs_true
	%idVal_103 = load %varAddr_3
	mov %idVal_104 99
	%res_105 = neq %idVal_103 %idVal_104
	br %res_105 <40> <26>

<40> lhs_true
	%idVal_106 = load %varAddr_3
	mov %idVal_107 100
	%res_108 = neq %idVal_106 %idVal_107
	br %res_108 <39> <26>

<39> lhs_true
	%idVal_109 = load %varAddr_3
	mov %idVal_110 101
	%res_111 = neq %idVal_109 %idVal_110
	br %res_111 <38> <26>

<38> lhs_true
	%idVal_112 = load %varAddr_3
	mov %idVal_113 102
	%res_114 = neq %idVal_112 %idVal_113
	br %res_114 <37> <26>

<37> lhs_true
	%idVal_115 = load %varAddr_4
	%idVal_116 = load %varAddr_5
	%res_117 = neq %idVal_115 %idVal_116
	br %res_117 <36> <26>

<36> lhs_true
	%idVal_118 = load %varAddr_4
	mov %idVal_119 99
	%res_120 = neq %idVal_118 %idVal_119
	br %res_120 <35> <26>

<35> lhs_true
	%idVal_121 = load %varAddr_4
	mov %idVal_122 100
	%res_123 = neq %idVal_121 %idVal_122
	br %res_123 <34> <26>

<34> lhs_true
	%idVal_124 = load %varAddr_4
	mov %idVal_125 101
	%res_126 = neq %idVal_124 %idVal_125
	br %res_126 <33> <26>

<33> lhs_true
	%idVal_127 = load %varAddr_4
	mov %idVal_128 102
	%res_129 = neq %idVal_127 %idVal_128
	br %res_129 <32> <26>

<32> lhs_true
	%idVal_130 = load %varAddr_5
	mov %idVal_131 99
	%res_132 = neq %idVal_130 %idVal_131
	br %res_132 <31> <26>

<31> lhs_true
	%idVal_133 = load %varAddr_5
	mov %idVal_134 100
	%res_135 = neq %idVal_133 %idVal_134
	br %res_135 <30> <26>

<30> lhs_true
	%idVal_136 = load %varAddr_5
	mov %idVal_137 101
	%res_138 = neq %idVal_136 %idVal_137
	br %res_138 <29> <26>

<29> lhs_true
	%idVal_139 = load %varAddr_5
	mov %idVal_140 102
	%res_141 = neq %idVal_139 %idVal_140
	br %res_141 <28> <26>

<28> lhs_true
	mov %idVal_142 100
	mov %idVal_143 101
	%res_144 = neq %idVal_142 %idVal_143
	br %res_144 <27> <26>

<27> lhs_true
	mov %idVal_145 99
	mov %idVal_146 102
	%res_147 = neq %idVal_145 %idVal_146
	br %res_147 <25> <26>

<25> if_true
	%idVal_148 = load %global2local_171
	%oldVal_149 = load %global2local_171
	%newVal_150 = inc %oldVal_149
	store %newVal_150 %global2local_171
	br <26>

<26> if_merge
	br <23>

<23> for_step
	%idVal_151 = load %varAddr_5
	%oldVal_152 = load %varAddr_5
	%newVal_153 = inc %oldVal_152
	store %newVal_153 %varAddr_5
	br <21>

<24> for_end
	br <19>

<19> for_step
	%idVal_154 = load %varAddr_4
	%oldVal_155 = load %varAddr_4
	%newVal_156 = inc %oldVal_155
	store %newVal_156 %varAddr_4
	br <17>

<20> for_end
	br <15>

<15> for_step
	%idVal_157 = load %varAddr_3
	%oldVal_158 = load %varAddr_3
	%newVal_159 = inc %oldVal_158
	store %newVal_159 %varAddr_3
	br <13>

<16> for_end
	br <11>

<11> for_step
	%idVal_160 = load %varAddr_2
	%oldVal_161 = load %varAddr_2
	%newVal_162 = inc %oldVal_161
	store %newVal_162 %varAddr_2
	br <9>

<12> for_end
	br <7>

<7> for_step
	%idVal_163 = load %varAddr_1
	%oldVal_164 = load %varAddr_1
	%newVal_165 = inc %oldVal_164
	store %newVal_165 %varAddr_1
	br <5>

<8> for_end
	br <3>

<3> for_step
	%idVal_166 = load %varAddr_0
	%oldVal_167 = load %varAddr_0
	%newVal_168 = inc %oldVal_167
	store %newVal_168 %varAddr_0
	br <1>

<4> for_end
	%idVal_170 = load %global2local_171
	%res_169 = toString ( %idVal_170 )
	println ( %res_169 )
	%tmp_175 = load %global2local_171
	store %tmp_175 @total
	%tmp_176 = load %global2local_172
	store %tmp_176 @N
	ret 0

}

