@i

@a0

@a1

@a2

@a3

@a4

@a5

@a6

@a7

@a8

@a9

@a10

@b0

@b1

@b2

@b3

@b4

@b5

@b6

@b7

@b8

@b9

@b10

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
	store 0 @b0
	store 0 @i
	store 0 @a8
	store 0 @b7
	store 0 @a4
	store 0 @a9
	store 0 @b8
	store 0 @a1
	store 0 @a6
	store 0 @b1
	store 0 @a10
	store 0 @b3
	store 0 @b10
	store 0 @b4
	store 0 @b6
	store 0 @b2
	store 0 @b9
	store 0 @b5
	store 0 @a3
	store 0 @a0
	store 0 @a7
	store 0 @a5
	store 0 @a2
	ret 

}

define main ( ) {
<0> entry
	%tmp_136 = load @a2
	%tmp_135 = load @a5
	%tmp_134 = load @a7
	%tmp_133 = load @a0
	%tmp_132 = load @a3
	%tmp_131 = load @b5
	%tmp_130 = load @b9
	%tmp_129 = load @b2
	%tmp_128 = load @b6
	%tmp_127 = load @b4
	%tmp_126 = load @b10
	%tmp_125 = load @b3
	%tmp_124 = load @a10
	%tmp_123 = load @b1
	%tmp_122 = load @a6
	%tmp_121 = load @a1
	%tmp_120 = load @b8
	%tmp_119 = load @a9
	%tmp_118 = load @a4
	%tmp_117 = load @b7
	%tmp_116 = load @a8
	%tmp_114 = load @b0
	%res_2 = getInt ( )
	mov %varDef_194 %tmp_121
	mov %varDef_186 0
	mov %varDef_199 %tmp_126
	mov %varDef_205 %tmp_132
	mov %varDef_196 %tmp_123
	mov %varDef_203 %tmp_130
	mov %varDef_191 %tmp_118
	mov %varDef_189 %tmp_116
	mov %varDef_190 %tmp_117
	mov %varDef_208 %tmp_135
	mov %varDef_187 %tmp_114
	mov %varDef_204 %tmp_131
	mov %varDef_207 %tmp_134
	mov %varDef_192 %tmp_119
	mov %varDef_200 %tmp_127
	mov %varDef_197 %tmp_124
	mov %varDef_195 %tmp_122
	mov %varDef_198 %tmp_125
	mov %varDef_202 %tmp_129
	mov %varDef_209 %tmp_136
	mov %varDef_206 %tmp_133
	mov %varDef_193 %tmp_120
	mov %varDef_188 0
	mov %varDef_201 %tmp_128
	br <1>

<1> for_cond
	%res_5 = lt %varDef_188 %res_2
	br %res_5 <2> <4>

<2> for_body
	%res_7 = add %varDef_206 1
	%res_9 = add %varDef_194 1
	%res_11 = add %varDef_209 1
	%res_13 = add %res_7 1
	%res_15 = add %res_9 1
	%res_17 = add %res_11 1
	%res_27 = add %res_9 0
	%res_40 = mod %varDef_188 10000000
	%res_41 = eq %res_40 0
	br %res_41 <5> <7>

<7> parallel_copy
	mov %varDef_233 %varDef_186
	br <3>

<5> if_true
	%res_44 = add %varDef_186 %res_7
	%res_46 = add %res_44 %res_9
	%res_48 = add %res_46 %res_11
	%res_50 = add %res_48 %res_13
	%res_52 = add %res_50 %res_15
	%res_54 = add %res_52 %res_17
	%res_56 = add %res_54 %res_13
	%res_58 = add %res_56 %res_15
	%res_60 = add %res_58 %res_17
	%res_62 = add %res_60 %res_13
	%res_64 = add %res_62 %res_27
	%res_66 = add %res_64 %res_7
	%res_68 = add %res_66 %res_9
	%res_70 = add %res_68 %res_11
	%res_72 = add %res_70 %res_13
	%res_74 = add %res_72 %res_15
	%res_76 = add %res_74 %res_17
	%res_78 = add %res_76 %res_13
	%res_80 = add %res_78 %res_15
	%res_82 = add %res_80 %res_17
	%res_84 = add %res_82 %res_13
	%res_86 = add %res_84 %res_27
	%res_87 = bit_and %res_86 2147450879
	mov %varDef_233 %res_87
	br <3>

<3> for_step
	%res_89 = add %varDef_188 1
	mov %varDef_200 %res_15
	mov %varDef_197 %res_27
	mov %varDef_201 %res_13
	mov %varDef_193 %res_17
	mov %varDef_194 %res_9
	mov %varDef_189 %res_17
	mov %varDef_196 %res_9
	mov %varDef_198 %res_13
	mov %varDef_208 %res_17
	mov %varDef_186 %varDef_233
	mov %varDef_199 %res_27
	mov %varDef_187 %res_7
	mov %varDef_195 %res_13
	mov %varDef_203 %res_13
	mov %varDef_205 %res_13
	mov %varDef_191 %res_15
	mov %varDef_202 %res_11
	mov %varDef_209 %res_11
	mov %varDef_190 %res_15
	mov %varDef_204 %res_17
	mov %varDef_192 %res_13
	mov %varDef_188 %res_89
	mov %varDef_206 %res_7
	mov %varDef_207 %res_15
	br <1>

<4> for_end
	__printlnInt ( %varDef_186 )
	store %varDef_187 @b0
	store %varDef_188 @i
	store %varDef_189 @a8
	store %varDef_190 @b7
	store %varDef_191 @a4
	store %varDef_192 @a9
	store %varDef_193 @b8
	store %varDef_194 @a1
	store %varDef_195 @a6
	store %varDef_196 @b1
	store %varDef_197 @a10
	store %varDef_198 @b3
	store %varDef_199 @b10
	store %varDef_200 @b4
	store %varDef_201 @b6
	store %varDef_202 @b2
	store %varDef_203 @b9
	store %varDef_204 @b5
	store %varDef_205 @a3
	store %varDef_206 @a0
	store %varDef_207 @a7
	store %varDef_208 @a5
	store %varDef_209 @a2
	ret 0

}

