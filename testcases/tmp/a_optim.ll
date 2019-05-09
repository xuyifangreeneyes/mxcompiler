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
	store 0 @a7
	store 0 @b1
	store 0 @a1
	store 0 @a0
	store 0 @b3
	store 0 @b6
	store 0 @b4
	store 0 @i
	store 0 @a8
	store 0 @b2
	store 0 @b8
	store 0 @b10
	store 0 @a10
	store 0 @b5
	store 0 @a3
	store 0 @a9
	store 0 @a5
	store 0 @b0
	store 0 @b9
	store 0 @a4
	store 0 @a2
	store 0 @a6
	store 0 @b7
	ret 

}

define main ( ) {
<0> entry
	br <8>

<8> centry
	%res_2 = getInt ( )
	mov %varDef_221 0
	mov %varDef_217 0
	mov %varDef_213 0
	mov %varDef_219 0
	mov %varDef_209 0
	mov %varDef_218 0
	mov %varDef_214 0
	mov %varDef_211 0
	mov %varDef_210 0
	br <1>

<1> for_cond
	%res_5 = lt %varDef_217 %res_2
	br %res_5 <2> <4>

<2> for_body
	%res_7 = add %varDef_213 1
	%res_9 = add %varDef_211 1
	%res_11 = add %varDef_219 1
	%res_13 = add %res_7 1
	%res_15 = add %res_9 1
	%res_17 = add %res_11 1
	%res_27 = add %res_9 0
	%res_40 = mod %varDef_217 10000000
	%res_41 = eq %res_40 0
	br %res_41 <5> <9>

<9> parallel_copy
	mov %varDef_256 %varDef_209
	br <3>

<5> if_true
	%res_44 = add %varDef_209 %res_7
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
	mov %varDef_256 %res_87
	br <3>

<3> for_step
	%res_89 = add %varDef_217 1
	mov %varDef_214 %res_13
	mov %varDef_218 %res_17
	mov %varDef_213 %res_7
	mov %varDef_211 %res_9
	mov %varDef_217 %res_89
	mov %varDef_219 %res_11
	mov %varDef_221 %res_27
	mov %varDef_209 %varDef_256
	mov %varDef_210 %res_15
	br <1>

<4> for_end
	__printlnInt ( %varDef_209 )
	store %varDef_210 @a7
	store %varDef_211 @b1
	store %varDef_211 @a1
	store %varDef_213 @a0
	store %varDef_214 @b3
	store %varDef_214 @b6
	store %varDef_210 @b4
	store %varDef_217 @i
	store %varDef_218 @a8
	store %varDef_219 @b2
	store %varDef_218 @b8
	store %varDef_221 @b10
	store %varDef_221 @a10
	store %varDef_218 @b5
	store %varDef_214 @a3
	store %varDef_214 @a9
	store %varDef_218 @a5
	store %varDef_213 @b0
	store %varDef_214 @b9
	store %varDef_210 @a4
	store %varDef_219 @a2
	store %varDef_214 @a6
	store %varDef_210 @b7
	ret 0

}

