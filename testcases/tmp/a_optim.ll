@N

@head

@startx

@starty

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
	%arrayPtr_0 = malloc 96008
	store 12000 %arrayPtr_0
	store %arrayPtr_0 @xlist
	%arrayPtr_3 = malloc 96008
	store 12000 %arrayPtr_3
	store %arrayPtr_3 @ylist
	%arrayPtr_6 = malloc 72
	store 8 %arrayPtr_6
	store %arrayPtr_6 @dx
	%arrayPtr_9 = malloc 80
	store 9 %arrayPtr_9
	store %arrayPtr_9 @dy
	ret 

}

define origin ( %argVal_0 ) {
<0> entry
	store 0 @head
	store 0 @tail
	%memberLength_4 = mul %argVal_0 8
	%arrayLength_5 = add %memberLength_4 8
	%arrayPtr_3 = malloc %arrayLength_5
	store %argVal_0 %arrayPtr_3
	store %arrayPtr_3 @step
	store 0 @i
	br <1>

<1> for_cond
	%idVal_6 = load @i
	%res_8 = lt %idVal_6 %argVal_0
	br %res_8 <2> <4>

<2> for_body
	%memberLength_11 = mul %argVal_0 8
	%arrayLength_12 = add %memberLength_11 8
	%arrayPtr_10 = malloc %arrayLength_12
	store %argVal_0 %arrayPtr_10
	%arrayPtr_13 = load @step
	%arrayBase_14 = add %arrayPtr_13 8
	%idVal_15 = load @i
	%offset_16 = mul %idVal_15 8
	%elementAddr_17 = add %arrayBase_14 %offset_16
	store %arrayPtr_10 %elementAddr_17
	store 0 @j
	br <5>

<5> for_cond
	%idVal_18 = load @j
	%res_20 = lt %idVal_18 %argVal_0
	br %res_20 <6> <3>

<6> for_body
	%arrayPtr_21 = load @step
	%arrayBase_22 = add %arrayPtr_21 8
	%idVal_23 = load @i
	%offset_24 = mul %idVal_23 8
	%elementAddr_25 = add %arrayBase_22 %offset_24
	%arrayPtr_26 = load %elementAddr_25
	%arrayBase_27 = add %arrayPtr_26 8
	%idVal_28 = load @j
	%offset_29 = mul %idVal_28 8
	%elementAddr_30 = add %arrayBase_27 %offset_29
	store 0 %elementAddr_30
	%oldVal_32 = load @j
	%newVal_33 = inc %oldVal_32
	store %newVal_33 @j
	br <5>

<3> for_step
	%oldVal_35 = load @i
	%newVal_36 = inc %oldVal_35
	store %newVal_36 @i
	br <1>

<4> for_end
	ret 

}

define check ( %argVal_0 ) {
<0> entry
	%varAddr_13 = alloca 4
	%idVal_4 = load @N
	%res_5 = lt %argVal_0 %idVal_4
	br %res_5 <4> <2>

<4> lhs_true
	%res_7 = ge %argVal_0 0
	br %res_7 <1> <2>

<1> bool_true
	store 1 %varAddr_13
	br <3>

<2> bool_false
	store 0 %varAddr_13
	br <3>

<3> bool_merge
	%varDef_12 = load %varAddr_13
	ret %varDef_12

}

define addList ( %argVal_0 %argVal_2 ) {
<0> entry
	%varAddr_88 = alloca 4
	%varAddr_87 = alloca 4
	br <9>

<9> centry
	%cidVal_58 = load @N
	%cres_59 = lt %argVal_0 %cidVal_58
	br %cres_59 <10> <12>

<10> clhs_true
	%cres_61 = ge %argVal_0 0
	br %cres_61 <11> <12>

<11> cbool_true
	store 1 %varAddr_87
	br <13>

<12> cbool_false
	store 0 %varAddr_87
	br <13>

<13> cbool_merge
	%varDef_77 = load %varAddr_87
	br %varDef_77 <4> <2>

<4> lhs_true
	%cidVal_67 = load @N
	%cres_68 = lt %argVal_2 %cidVal_67
	br %cres_68 <16> <18>

<16> clhs_true
	%cres_70 = ge %argVal_2 0
	br %cres_70 <17> <18>

<17> cbool_true
	store 1 %varAddr_88
	br <19>

<18> cbool_false
	store 0 %varAddr_88
	br <19>

<19> cbool_merge
	%varDef_82 = load %varAddr_88
	br %varDef_82 <3> <2>

<3> lhs_true
	%arrayPtr_8 = load @step
	%arrayBase_9 = add %arrayPtr_8 8
	%offset_11 = mul %argVal_0 8
	%elementAddr_12 = add %arrayBase_9 %offset_11
	%arrayPtr_13 = load %elementAddr_12
	%arrayBase_14 = add %arrayPtr_13 8
	%offset_16 = mul %argVal_2 8
	%elementAddr_17 = add %arrayBase_14 %offset_16
	%elementVal_18 = load %elementAddr_17
	%res_20 = eq %elementVal_18 -1
	br %res_20 <1> <2>

<1> if_true
	%oldVal_22 = load @tail
	%newVal_23 = inc %oldVal_22
	store %newVal_23 @tail
	%arrayPtr_25 = load @xlist
	%arrayBase_26 = add %arrayPtr_25 8
	%idVal_27 = load @tail
	%offset_28 = mul %idVal_27 8
	%elementAddr_29 = add %arrayBase_26 %offset_28
	store %argVal_0 %elementAddr_29
	%arrayPtr_31 = load @ylist
	%arrayBase_32 = add %arrayPtr_31 8
	%idVal_33 = load @tail
	%offset_34 = mul %idVal_33 8
	%elementAddr_35 = add %arrayBase_32 %offset_34
	store %argVal_2 %elementAddr_35
	%idVal_36 = load @now
	%res_37 = add %idVal_36 1
	%arrayPtr_38 = load @step
	%arrayBase_39 = add %arrayPtr_38 8
	%offset_41 = mul %argVal_0 8
	%elementAddr_42 = add %arrayBase_39 %offset_41
	%arrayPtr_43 = load %elementAddr_42
	%arrayBase_44 = add %arrayPtr_43 8
	%offset_46 = mul %argVal_2 8
	%elementAddr_47 = add %arrayBase_44 %offset_46
	store %res_37 %elementAddr_47
	%idVal_49 = load @targetx
	%res_50 = eq %argVal_0 %idVal_49
	br %res_50 <7> <2>

<7> lhs_true
	%idVal_52 = load @targety
	%res_53 = eq %argVal_2 %idVal_52
	br %res_53 <5> <2>

<5> if_true
	store 1 @ok
	br <2>

<2> if_merge
	ret 

}

define main ( ) {
<0> entry
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
	br %res_9 <6> <3>

<6> for_body
	%arrayPtr_11 = load @step
	%arrayBase_12 = add %arrayPtr_11 8
	%idVal_13 = load @i
	%offset_14 = mul %idVal_13 8
	%elementAddr_15 = add %arrayBase_12 %offset_14
	%arrayPtr_16 = load %elementAddr_15
	%arrayBase_17 = add %arrayPtr_16 8
	%idVal_18 = load @j
	%offset_19 = mul %idVal_18 8
	%elementAddr_20 = add %arrayBase_17 %offset_19
	store -1 %elementAddr_20
	%oldVal_22 = load @j
	%newVal_23 = inc %oldVal_22
	store %newVal_23 @j
	br <5>

<3> for_step
	%oldVal_25 = load @i
	%newVal_26 = inc %oldVal_25
	store %newVal_26 @i
	br <1>

<4> for_end
	%arrayPtr_28 = load @dx
	%arrayBase_29 = add %arrayPtr_28 8
	%elementAddr_31 = add %arrayBase_29 0
	store -2 %elementAddr_31
	%arrayPtr_33 = load @dy
	%arrayBase_34 = add %arrayPtr_33 8
	%elementAddr_36 = add %arrayBase_34 0
	store -1 %elementAddr_36
	%arrayPtr_38 = load @dx
	%arrayBase_39 = add %arrayPtr_38 8
	%elementAddr_41 = add %arrayBase_39 8
	store -2 %elementAddr_41
	%arrayPtr_42 = load @dy
	%arrayBase_43 = add %arrayPtr_42 8
	%elementAddr_45 = add %arrayBase_43 8
	store 1 %elementAddr_45
	%arrayPtr_46 = load @dx
	%arrayBase_47 = add %arrayPtr_46 8
	%elementAddr_49 = add %arrayBase_47 16
	store 2 %elementAddr_49
	%arrayPtr_51 = load @dy
	%arrayBase_52 = add %arrayPtr_51 8
	%elementAddr_54 = add %arrayBase_52 16
	store -1 %elementAddr_54
	%arrayPtr_55 = load @dx
	%arrayBase_56 = add %arrayPtr_55 8
	%elementAddr_58 = add %arrayBase_56 24
	store 2 %elementAddr_58
	%arrayPtr_59 = load @dy
	%arrayBase_60 = add %arrayPtr_59 8
	%elementAddr_62 = add %arrayBase_60 24
	store 1 %elementAddr_62
	%arrayPtr_64 = load @dx
	%arrayBase_65 = add %arrayPtr_64 8
	%elementAddr_67 = add %arrayBase_65 32
	store -1 %elementAddr_67
	%arrayPtr_69 = load @dy
	%arrayBase_70 = add %arrayPtr_69 8
	%elementAddr_72 = add %arrayBase_70 32
	store -2 %elementAddr_72
	%arrayPtr_74 = load @dx
	%arrayBase_75 = add %arrayPtr_74 8
	%elementAddr_77 = add %arrayBase_75 40
	store -1 %elementAddr_77
	%arrayPtr_78 = load @dy
	%arrayBase_79 = add %arrayPtr_78 8
	%elementAddr_81 = add %arrayBase_79 40
	store 2 %elementAddr_81
	%arrayPtr_82 = load @dx
	%arrayBase_83 = add %arrayPtr_82 8
	%elementAddr_85 = add %arrayBase_83 48
	store 1 %elementAddr_85
	%arrayPtr_87 = load @dy
	%arrayBase_88 = add %arrayPtr_87 8
	%elementAddr_90 = add %arrayBase_88 48
	store -2 %elementAddr_90
	%arrayPtr_91 = load @dx
	%arrayBase_92 = add %arrayPtr_91 8
	%elementAddr_94 = add %arrayBase_92 56
	store 1 %elementAddr_94
	%arrayPtr_95 = load @dy
	%arrayBase_96 = add %arrayPtr_95 8
	%elementAddr_98 = add %arrayBase_96 56
	store 2 %elementAddr_98
	br <9>

<9> while_cond
	%idVal_99 = load @head
	%idVal_100 = load @tail
	%res_101 = le %idVal_99 %idVal_100
	br %res_101 <10> <11>

<10> while_body
	%arrayPtr_102 = load @xlist
	%arrayBase_103 = add %arrayPtr_102 8
	%idVal_104 = load @head
	%offset_105 = mul %idVal_104 8
	%elementAddr_106 = add %arrayBase_103 %offset_105
	%elementVal_107 = load %elementAddr_106
	store %elementVal_107 @x
	%arrayPtr_108 = load @ylist
	%arrayBase_109 = add %arrayPtr_108 8
	%idVal_110 = load @head
	%offset_111 = mul %idVal_110 8
	%elementAddr_112 = add %arrayBase_109 %offset_111
	%elementVal_113 = load %elementAddr_112
	store %elementVal_113 @y
	%arrayPtr_114 = load @step
	%arrayBase_115 = add %arrayPtr_114 8
	%idVal_116 = load @x
	%offset_117 = mul %idVal_116 8
	%elementAddr_118 = add %arrayBase_115 %offset_117
	%arrayPtr_119 = load %elementAddr_118
	%arrayBase_120 = add %arrayPtr_119 8
	%idVal_121 = load @y
	%offset_122 = mul %idVal_121 8
	%elementAddr_123 = add %arrayBase_120 %offset_122
	%elementVal_124 = load %elementAddr_123
	store %elementVal_124 @now
	store 0 @j
	br <12>

<12> for_cond
	%idVal_125 = load @j
	%res_126 = lt %idVal_125 8
	br %res_126 <13> <15>

<13> for_body
	%idVal_127 = load @x
	%arrayPtr_128 = load @dx
	%arrayBase_129 = add %arrayPtr_128 8
	%idVal_130 = load @j
	%offset_131 = mul %idVal_130 8
	%elementAddr_132 = add %arrayBase_129 %offset_131
	%elementVal_133 = load %elementAddr_132
	%res_134 = add %idVal_127 %elementVal_133
	%idVal_135 = load @y
	%arrayPtr_136 = load @dy
	%arrayBase_137 = add %arrayPtr_136 8
	%idVal_138 = load @j
	%offset_139 = mul %idVal_138 8
	%elementAddr_140 = add %arrayBase_137 %offset_139
	%elementVal_141 = load %elementAddr_140
	%res_142 = add %idVal_135 %elementVal_141
	addList ( %res_134 %res_142 )
	%oldVal_144 = load @j
	%newVal_145 = inc %oldVal_144
	store %newVal_145 @j
	br <12>

<15> for_end
	%idVal_146 = load @ok
	%res_147 = eq %idVal_146 1
	br %res_147 <11> <17>

<17> if_merge
	%oldVal_149 = load @head
	%newVal_150 = inc %oldVal_149
	store %newVal_150 @head
	br <9>

<11> while_end
	%idVal_151 = load @ok
	%res_152 = eq %idVal_151 1
	br %res_152 <18> <19>

<18> if_true
	%arrayPtr_154 = load @step
	%arrayBase_155 = add %arrayPtr_154 8
	%idVal_156 = load @targetx
	%offset_157 = mul %idVal_156 8
	%elementAddr_158 = add %arrayBase_155 %offset_157
	%arrayPtr_159 = load %elementAddr_158
	%arrayBase_160 = add %arrayPtr_159 8
	%idVal_161 = load @targety
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
	ret 0

}

