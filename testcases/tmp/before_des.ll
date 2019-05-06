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
	%arrayPtr_0 = malloc 96008
	store 12000 %arrayPtr_0
	%arrayBase_3 = add %arrayPtr_0 8
	%arrayPtr_4 = malloc 96008
	store 12000 %arrayPtr_4
	%arrayBase_7 = add %arrayPtr_4 8
	%arrayPtr_8 = malloc 72
	store 8 %arrayPtr_8
	%arrayBase_11 = add %arrayPtr_8 8
	%arrayPtr_12 = malloc 80
	store 9 %arrayPtr_12
	%arrayBase_15 = add %arrayPtr_12 8
	store %arrayBase_11 @dx
	store %arrayBase_3 @xlist
	store %arrayBase_7 @ylist
	store %arrayBase_15 @dy
	ret 

}

define origin ( %argVal_0 ) {
<0> entry
	%tmp_45 = load @j
	%memberLength_4 = mul %argVal_0 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store %argVal_0 %arrayPtr_3
	%arrayBase_6 = add %arrayPtr_3 8
	br <1>

<1> for_cond
	%varDef_61 = phi <0> 0 <3> %newVal_35
	%varDef_62 = phi <0> %tmp_45 <3> %varDef_64
	%res_9 = lt %varDef_61 %argVal_0
	br %res_9 <2> <4>

<2> for_body
	%memberLength_12 = mul %argVal_0 8
	%arrayLength_13 = add %memberLength_12 8
	%arrayPtr_11 = malloc %arrayLength_13
	store %argVal_0 %arrayPtr_11
	%arrayBase_14 = add %arrayPtr_11 8
	%offset_17 = mul %varDef_61 8
	%elementAddr_18 = add %arrayBase_6 %offset_17
	store %arrayBase_14 %elementAddr_18
	br <5>

<5> for_cond
	%varDef_64 = phi <2> 0 <6> %newVal_32
	%res_21 = lt %varDef_64 %argVal_0
	br %res_21 <6> <3>

<6> for_body
	%offset_24 = mul %varDef_61 8
	%elementAddr_25 = add %arrayBase_6 %offset_24
	%arrayBase_26 = load %elementAddr_25
	%offset_28 = mul %varDef_64 8
	%elementAddr_29 = add %arrayBase_26 %offset_28
	store 0 %elementAddr_29
	%newVal_32 = inc %varDef_64
	br <5>

<3> for_step
	%newVal_35 = inc %varDef_61
	br <1>

<4> for_end
	store 0 @tail
	store %varDef_61 @i
	store 0 @head
	store %arrayBase_6 @step
	store %varDef_62 @j
	ret 

}

define check ( %argVal_0 ) {
<0> entry
	%tmp_10 = load @N
	%res_5 = lt %argVal_0 %tmp_10
	br %res_5 <4> <2>

<4> lhs_true
	%res_7 = ge %argVal_0 0
	br %res_7 <1> <2>

<1> bool_true
	br <3>

<2> bool_false
	br <3>

<3> bool_merge
	%varDef_15 = phi <1> 1 <2> 0
	ret %varDef_15

}

define addList ( %argVal_0 %argVal_2 ) {
<0> entry
	%tmp_63 = load @step
	%tmp_62 = load @targetx
	%tmp_61 = load @ylist
	%tmp_60 = load @xlist
	%tmp_59 = load @ok
	%tmp_58 = load @targety
	%tmp_57 = load @tail
	%tmp_56 = load @now
	%res_4 = check ( %argVal_0 )
	br %res_4 <4> <2>

<4> lhs_true
	%res_6 = check ( %argVal_2 )
	br %res_6 <3> <2>

<3> lhs_true
	%offset_10 = mul %argVal_0 8
	%elementAddr_11 = add %tmp_63 %offset_10
	%arrayBase_12 = load %elementAddr_11
	%offset_14 = mul %argVal_2 8
	%elementAddr_15 = add %arrayBase_12 %offset_14
	%elementVal_16 = load %elementAddr_15
	%res_18 = eq %elementVal_16 -1
	br %res_18 <1> <2>

<1> if_true
	%newVal_21 = inc %tmp_57
	%offset_25 = mul %newVal_21 8
	%elementAddr_26 = add %tmp_60 %offset_25
	store %argVal_0 %elementAddr_26
	%elementAddr_31 = add %tmp_61 %offset_25
	store %argVal_2 %elementAddr_31
	%res_33 = add %tmp_56 1
	%offset_36 = mul %argVal_0 8
	%elementAddr_37 = add %tmp_63 %offset_36
	%arrayBase_38 = load %elementAddr_37
	%offset_40 = mul %argVal_2 8
	%elementAddr_41 = add %arrayBase_38 %offset_40
	store %res_33 %elementAddr_41
	%res_44 = eq %argVal_0 %tmp_62
	br %res_44 <7> <2>

<7> lhs_true
	%res_47 = eq %argVal_2 %tmp_58
	br %res_47 <5> <2>

<5> if_true
	br <2>

<2> if_merge
	%varDef_78 = phi <0> %tmp_57 <4> %tmp_57 <3> %tmp_57 <1> %newVal_21 <7> %newVal_21 <5> %newVal_21
	%varDef_79 = phi <0> %tmp_59 <4> %tmp_59 <3> %tmp_59 <1> %tmp_59 <7> %tmp_59 <5> 1
	store %varDef_78 @tail
	store %varDef_79 @ok
	ret 

}

define main ( ) {
<0> entry
	%tmp_169 = load @dy
	%tmp_168 = load @y
	%tmp_167 = load @x
	%tmp_166 = load @i
	%tmp_163 = load @now
	%tmp_162 = load @j
	%tmp_160 = load @head
	%tmp_159 = load @ylist
	%tmp_158 = load @xlist
	%tmp_157 = load @ok
	%tmp_155 = load @dx
	store %tmp_160 @head
	store %tmp_162 @j
	store %tmp_166 @i
	origin ( 106 )
	%tmp_175 = load @j
	%tmp_173 = load @step
	%tmp_172 = load @head
	%tmp_170 = load @tail
	%res_0 = getInt ( )
	%res_2 = sub %res_0 1
	br <1>

<1> for_cond
	%varDef_218 = phi <0> %tmp_175 <3> %varDef_221
	%varDef_219 = phi <0> 0 <3> %newVal_24
	%res_6 = lt %varDef_219 %res_0
	br %res_6 <2> <4>

<2> for_body
	br <5>

<5> for_cond
	%varDef_221 = phi <2> 0 <6> %newVal_21
	%res_9 = lt %varDef_221 %res_0
	br %res_9 <6> <3>

<6> for_body
	%offset_13 = mul %varDef_219 8
	%elementAddr_14 = add %tmp_173 %offset_13
	%arrayBase_15 = load %elementAddr_14
	%offset_17 = mul %varDef_221 8
	%elementAddr_18 = add %arrayBase_15 %offset_17
	store -1 %elementAddr_18
	%newVal_21 = inc %varDef_221
	br <5>

<3> for_step
	%newVal_24 = inc %varDef_219
	br <1>

<4> for_end
	%elementAddr_28 = add %tmp_155 0
	store -2 %elementAddr_28
	%elementAddr_32 = add %tmp_169 0
	store -1 %elementAddr_32
	%elementAddr_36 = add %tmp_155 8
	store -2 %elementAddr_36
	%elementAddr_39 = add %tmp_169 8
	store 1 %elementAddr_39
	%elementAddr_42 = add %tmp_155 16
	store 2 %elementAddr_42
	%elementAddr_46 = add %tmp_169 16
	store -1 %elementAddr_46
	%elementAddr_49 = add %tmp_155 24
	store 2 %elementAddr_49
	%elementAddr_52 = add %tmp_169 24
	store 1 %elementAddr_52
	%elementAddr_56 = add %tmp_155 32
	store -1 %elementAddr_56
	%elementAddr_60 = add %tmp_169 32
	store -2 %elementAddr_60
	%elementAddr_64 = add %tmp_155 40
	store -1 %elementAddr_64
	%elementAddr_67 = add %tmp_169 40
	store 2 %elementAddr_67
	%elementAddr_70 = add %tmp_155 48
	store 1 %elementAddr_70
	%elementAddr_74 = add %tmp_169 48
	store -2 %elementAddr_74
	%elementAddr_77 = add %tmp_155 56
	store 1 %elementAddr_77
	%elementAddr_80 = add %tmp_169 56
	store 2 %elementAddr_80
	br <9>

<9> while_cond
	%varDef_224 = phi <4> %tmp_170 <17> %varDef_235
	%varDef_225 = phi <4> %tmp_157 <17> %varDef_236
	%varDef_226 = phi <4> %tmp_172 <17> %newVal_126
	%varDef_227 = phi <4> %varDef_218 <17> %varDef_237
	%varDef_228 = phi <4> %tmp_163 <17> %elementVal_102
	%varDef_229 = phi <4> %tmp_167 <17> %elementVal_88
	%varDef_230 = phi <4> %tmp_168 <17> %elementVal_93
	%res_83 = le %varDef_226 %varDef_224
	br %res_83 <10> <11>

<10> while_body
	%offset_86 = mul %varDef_226 8
	%elementAddr_87 = add %tmp_158 %offset_86
	%elementVal_88 = load %elementAddr_87
	%elementAddr_92 = add %tmp_159 %offset_86
	%elementVal_93 = load %elementAddr_92
	%offset_96 = mul %elementVal_88 8
	%elementAddr_97 = add %tmp_173 %offset_96
	%arrayBase_98 = load %elementAddr_97
	%offset_100 = mul %elementVal_93 8
	%elementAddr_101 = add %arrayBase_98 %offset_100
	%elementVal_102 = load %elementAddr_101
	br <12>

<12> for_cond
	%varDef_235 = phi <10> %varDef_224 <13> %tmp_179
	%varDef_236 = phi <10> %varDef_225 <13> %tmp_180
	%varDef_237 = phi <10> 0 <13> %newVal_121
	%res_104 = lt %varDef_237 8
	br %res_104 <13> <15>

<13> for_body
	%offset_108 = mul %varDef_237 8
	%elementAddr_109 = add %tmp_155 %offset_108
	%elementVal_110 = load %elementAddr_109
	%res_111 = add %elementVal_88 %elementVal_110
	%elementAddr_116 = add %tmp_169 %offset_108
	%elementVal_117 = load %elementAddr_116
	%res_118 = add %elementVal_93 %elementVal_117
	store %res_2 @targety
	store %elementVal_102 @now
	store %res_0 @N
	store %res_2 @targetx
	addList ( %res_111 %res_118 )
	%tmp_180 = load @ok
	%tmp_179 = load @tail
	%newVal_121 = inc %varDef_237
	br <12>

<15> for_end
	%res_123 = eq %varDef_236 1
	br %res_123 <11> <17>

<17> if_merge
	%newVal_126 = inc %varDef_226
	br <9>

<11> while_end
	%varDef_243 = phi <9> %varDef_225 <15> %varDef_236
	%varDef_244 = phi <9> %varDef_227 <15> %varDef_237
	%varDef_245 = phi <9> %varDef_228 <15> %elementVal_102
	%varDef_246 = phi <9> %varDef_229 <15> %elementVal_88
	%varDef_247 = phi <9> %varDef_230 <15> %elementVal_93
	%res_128 = eq %varDef_243 1
	br %res_128 <18> <19>

<18> if_true
	%offset_131 = mul %res_2 8
	%elementAddr_132 = add %tmp_173 %offset_131
	%arrayBase_133 = load %elementAddr_132
	%elementAddr_136 = add %arrayBase_133 %offset_131
	%elementVal_137 = load %elementAddr_136
	__printlnInt ( %elementVal_137 )
	br <20>

<19> if_false
	print ( $str_0 )
	br <20>

<20> if_merge
	store %res_2 @targety
	store %varDef_226 @head
	store %varDef_244 @j
	store %varDef_245 @now
	store %res_0 @N
	store %res_2 @targetx
	store %varDef_219 @i
	store %varDef_246 @x
	store %varDef_247 @y
	ret 0

}

