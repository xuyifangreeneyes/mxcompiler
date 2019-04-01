$str_0 "\"\nbda\\\"\ndbd\\c\"\\\"c\\c\""

$str_1 "\\ab\nac\"\"add\n\"\nac\ndb\""

$str_2 "\nabbdbdd\\\\\"d\"c\\adc\"c"

define _print

define _println

define _getString

define _getInt

define _toString

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

define __globalInit ( ) {
<0> entry
	ret 

}

define _main ( ) {
<0> entry
	%varAddr_2 = alloca 8
	%varAddr_1 = alloca 8
	%varAddr_0 = alloca 8
	store $str_0 %varAddr_0
	store $str_1 %varAddr_1
	store $str_2 %varAddr_2
	%idVal_3 = load %varAddr_2
	%idVal_4 = load %varAddr_1
	%res_5 = __stringAdd ( %idVal_3 %idVal_4 )
	%idVal_6 = load %varAddr_1
	%res_7 = __stringAdd ( %res_5 %idVal_6 )
	%idVal_8 = load %varAddr_2
	%res_9 = __stringAdd ( %res_7 %idVal_8 )
	%idVal_10 = load %varAddr_2
	%res_11 = __stringAdd ( %res_9 %idVal_10 )
	%idVal_12 = load %varAddr_0
	%res_13 = __stringAdd ( %res_11 %idVal_12 )
	%idVal_14 = load %varAddr_2
	%res_15 = __stringAdd ( %res_13 %idVal_14 )
	%idVal_16 = load %varAddr_1
	%res_17 = __stringAdd ( %res_15 %idVal_16 )
	%idVal_18 = load %varAddr_2
	%res_19 = __stringAdd ( %res_17 %idVal_18 )
	%idVal_20 = load %varAddr_1
	%res_21 = __stringAdd ( %res_19 %idVal_20 )
	_print ( %res_21 )
	%idVal_22 = load %varAddr_2
	%idVal_23 = load %varAddr_2
	%res_24 = __stringAdd ( %idVal_22 %idVal_23 )
	%idVal_25 = load %varAddr_0
	%res_26 = __stringAdd ( %res_24 %idVal_25 )
	%idVal_27 = load %varAddr_0
	%res_28 = __stringAdd ( %res_26 %idVal_27 )
	%idVal_29 = load %varAddr_0
	%res_30 = __stringAdd ( %res_28 %idVal_29 )
	%idVal_31 = load %varAddr_2
	%res_32 = __stringAdd ( %res_30 %idVal_31 )
	%idVal_33 = load %varAddr_2
	%res_34 = __stringAdd ( %res_32 %idVal_33 )
	%idVal_35 = load %varAddr_1
	%res_36 = __stringAdd ( %res_34 %idVal_35 )
	%idVal_37 = load %varAddr_1
	%res_38 = __stringAdd ( %res_36 %idVal_37 )
	%idVal_39 = load %varAddr_1
	%res_40 = __stringAdd ( %res_38 %idVal_39 )
	_print ( %res_40 )
	%idVal_41 = load %varAddr_1
	%idVal_42 = load %varAddr_0
	%res_43 = __stringAdd ( %idVal_41 %idVal_42 )
	%idVal_44 = load %varAddr_2
	%res_45 = __stringAdd ( %res_43 %idVal_44 )
	%idVal_46 = load %varAddr_1
	%res_47 = __stringAdd ( %res_45 %idVal_46 )
	%idVal_48 = load %varAddr_2
	%res_49 = __stringAdd ( %res_47 %idVal_48 )
	%idVal_50 = load %varAddr_2
	%res_51 = __stringAdd ( %res_49 %idVal_50 )
	%idVal_52 = load %varAddr_1
	%res_53 = __stringAdd ( %res_51 %idVal_52 )
	%idVal_54 = load %varAddr_1
	%res_55 = __stringAdd ( %res_53 %idVal_54 )
	%idVal_56 = load %varAddr_0
	%res_57 = __stringAdd ( %res_55 %idVal_56 )
	%idVal_58 = load %varAddr_2
	%res_59 = __stringAdd ( %res_57 %idVal_58 )
	_print ( %res_59 )
	%idVal_60 = load %varAddr_1
	%idVal_61 = load %varAddr_0
	%res_62 = __stringAdd ( %idVal_60 %idVal_61 )
	%idVal_63 = load %varAddr_2
	%res_64 = __stringAdd ( %res_62 %idVal_63 )
	%idVal_65 = load %varAddr_0
	%res_66 = __stringAdd ( %res_64 %idVal_65 )
	%idVal_67 = load %varAddr_0
	%res_68 = __stringAdd ( %res_66 %idVal_67 )
	%idVal_69 = load %varAddr_0
	%res_70 = __stringAdd ( %res_68 %idVal_69 )
	%idVal_71 = load %varAddr_1
	%res_72 = __stringAdd ( %res_70 %idVal_71 )
	%idVal_73 = load %varAddr_1
	%res_74 = __stringAdd ( %res_72 %idVal_73 )
	%idVal_75 = load %varAddr_1
	%res_76 = __stringAdd ( %res_74 %idVal_75 )
	%idVal_77 = load %varAddr_2
	%res_78 = __stringAdd ( %res_76 %idVal_77 )
	_print ( %res_78 )
	%idVal_79 = load %varAddr_1
	%idVal_80 = load %varAddr_0
	%res_81 = __stringAdd ( %idVal_79 %idVal_80 )
	%idVal_82 = load %varAddr_1
	%res_83 = __stringAdd ( %res_81 %idVal_82 )
	%idVal_84 = load %varAddr_0
	%res_85 = __stringAdd ( %res_83 %idVal_84 )
	%idVal_86 = load %varAddr_2
	%res_87 = __stringAdd ( %res_85 %idVal_86 )
	%idVal_88 = load %varAddr_2
	%res_89 = __stringAdd ( %res_87 %idVal_88 )
	%idVal_90 = load %varAddr_2
	%res_91 = __stringAdd ( %res_89 %idVal_90 )
	%idVal_92 = load %varAddr_1
	%res_93 = __stringAdd ( %res_91 %idVal_92 )
	%idVal_94 = load %varAddr_2
	%res_95 = __stringAdd ( %res_93 %idVal_94 )
	%idVal_96 = load %varAddr_0
	%res_97 = __stringAdd ( %res_95 %idVal_96 )
	_print ( %res_97 )
	%idVal_98 = load %varAddr_0
	%idVal_99 = load %varAddr_0
	%res_100 = __stringAdd ( %idVal_98 %idVal_99 )
	%idVal_101 = load %varAddr_2
	%res_102 = __stringAdd ( %res_100 %idVal_101 )
	%idVal_103 = load %varAddr_2
	%res_104 = __stringAdd ( %res_102 %idVal_103 )
	%idVal_105 = load %varAddr_0
	%res_106 = __stringAdd ( %res_104 %idVal_105 )
	%idVal_107 = load %varAddr_2
	%res_108 = __stringAdd ( %res_106 %idVal_107 )
	%idVal_109 = load %varAddr_1
	%res_110 = __stringAdd ( %res_108 %idVal_109 )
	%idVal_111 = load %varAddr_2
	%res_112 = __stringAdd ( %res_110 %idVal_111 )
	%idVal_113 = load %varAddr_2
	%res_114 = __stringAdd ( %res_112 %idVal_113 )
	%idVal_115 = load %varAddr_0
	%res_116 = __stringAdd ( %res_114 %idVal_115 )
	_print ( %res_116 )
	%idVal_117 = load %varAddr_1
	%idVal_118 = load %varAddr_1
	%res_119 = __stringAdd ( %idVal_117 %idVal_118 )
	%idVal_120 = load %varAddr_1
	%res_121 = __stringAdd ( %res_119 %idVal_120 )
	%idVal_122 = load %varAddr_1
	%res_123 = __stringAdd ( %res_121 %idVal_122 )
	%idVal_124 = load %varAddr_2
	%res_125 = __stringAdd ( %res_123 %idVal_124 )
	%idVal_126 = load %varAddr_0
	%res_127 = __stringAdd ( %res_125 %idVal_126 )
	%idVal_128 = load %varAddr_2
	%res_129 = __stringAdd ( %res_127 %idVal_128 )
	%idVal_130 = load %varAddr_1
	%res_131 = __stringAdd ( %res_129 %idVal_130 )
	%idVal_132 = load %varAddr_0
	%res_133 = __stringAdd ( %res_131 %idVal_132 )
	%idVal_134 = load %varAddr_0
	%res_135 = __stringAdd ( %res_133 %idVal_134 )
	_print ( %res_135 )
	%idVal_136 = load %varAddr_0
	%idVal_137 = load %varAddr_0
	%res_138 = __stringAdd ( %idVal_136 %idVal_137 )
	%idVal_139 = load %varAddr_2
	%res_140 = __stringAdd ( %res_138 %idVal_139 )
	%idVal_141 = load %varAddr_1
	%res_142 = __stringAdd ( %res_140 %idVal_141 )
	%idVal_143 = load %varAddr_0
	%res_144 = __stringAdd ( %res_142 %idVal_143 )
	%idVal_145 = load %varAddr_1
	%res_146 = __stringAdd ( %res_144 %idVal_145 )
	%idVal_147 = load %varAddr_2
	%res_148 = __stringAdd ( %res_146 %idVal_147 )
	%idVal_149 = load %varAddr_2
	%res_150 = __stringAdd ( %res_148 %idVal_149 )
	%idVal_151 = load %varAddr_1
	%res_152 = __stringAdd ( %res_150 %idVal_151 )
	%idVal_153 = load %varAddr_1
	%res_154 = __stringAdd ( %res_152 %idVal_153 )
	_print ( %res_154 )
	%idVal_155 = load %varAddr_2
	%idVal_156 = load %varAddr_1
	%res_157 = __stringAdd ( %idVal_155 %idVal_156 )
	%idVal_158 = load %varAddr_0
	%res_159 = __stringAdd ( %res_157 %idVal_158 )
	%idVal_160 = load %varAddr_0
	%res_161 = __stringAdd ( %res_159 %idVal_160 )
	%idVal_162 = load %varAddr_2
	%res_163 = __stringAdd ( %res_161 %idVal_162 )
	%idVal_164 = load %varAddr_1
	%res_165 = __stringAdd ( %res_163 %idVal_164 )
	%idVal_166 = load %varAddr_0
	%res_167 = __stringAdd ( %res_165 %idVal_166 )
	%idVal_168 = load %varAddr_0
	%res_169 = __stringAdd ( %res_167 %idVal_168 )
	%idVal_170 = load %varAddr_2
	%res_171 = __stringAdd ( %res_169 %idVal_170 )
	%idVal_172 = load %varAddr_1
	%res_173 = __stringAdd ( %res_171 %idVal_172 )
	_print ( %res_173 )
	%idVal_174 = load %varAddr_0
	%idVal_175 = load %varAddr_2
	%res_176 = __stringAdd ( %idVal_174 %idVal_175 )
	%idVal_177 = load %varAddr_1
	%res_178 = __stringAdd ( %res_176 %idVal_177 )
	%idVal_179 = load %varAddr_1
	%res_180 = __stringAdd ( %res_178 %idVal_179 )
	%idVal_181 = load %varAddr_1
	%res_182 = __stringAdd ( %res_180 %idVal_181 )
	%idVal_183 = load %varAddr_2
	%res_184 = __stringAdd ( %res_182 %idVal_183 )
	%idVal_185 = load %varAddr_2
	%res_186 = __stringAdd ( %res_184 %idVal_185 )
	%idVal_187 = load %varAddr_2
	%res_188 = __stringAdd ( %res_186 %idVal_187 )
	%idVal_189 = load %varAddr_1
	%res_190 = __stringAdd ( %res_188 %idVal_189 )
	%idVal_191 = load %varAddr_2
	%res_192 = __stringAdd ( %res_190 %idVal_191 )
	_print ( %res_192 )
	ret 0

}

