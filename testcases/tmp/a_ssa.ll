@asciiTable

$str_0 " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"

$str_1 ""

$str_2 " "

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
	%tmp_1 = load @asciiTable
	mov %varDef_3 %tmp_1
	mov %varDef_4 $str_0
	mov %tmp_2 %varDef_4
	store %tmp_2 @asciiTable
	ret 

}

define hilo ( %argVal_0 %argVal_2 ) {
<0> entry
	mov %varDef_8 %argVal_0
	mov %varDef_9 %argVal_2
	mov %idVal_4 %varDef_9
	mov %idVal_5 %varDef_8
	%res_6 = lsft %idVal_5 16
	%res_7 = bit_or %idVal_4 %res_6
	ret %res_7

}

define shift_l ( %argVal_0 %argVal_2 ) {
<0> entry
	mov %varDef_16 %argVal_0
	mov %varDef_17 %argVal_2
	mov %idVal_4 %varDef_16
	mov %idVal_5 %varDef_17
	%res_6 = lsft %idVal_4 %idVal_5
	br <2>

<2> centry
	mov %varDef_18 32767
	mov %varDef_19 65535
	mov %cidVal_12 %varDef_19
	mov %cidVal_13 %varDef_18
	%cres_14 = lsft %cidVal_13 16
	%cres_15 = bit_or %cidVal_12 %cres_14
	mov %varDef_20 %cres_15
	mov %res_7 %varDef_20
	%res_8 = bit_and %res_6 %res_7
	ret %res_8

}

define shift_r ( %argVal_0 %argVal_2 ) {
<0> entry
	mov %varDef_33 %argVal_0
	mov %varDef_34 %argVal_2
	br <2>

<2> centry
	mov %varDef_35 32767
	mov %varDef_36 65535
	mov %cidVal_22 %varDef_36
	mov %cidVal_23 %varDef_35
	%cres_24 = lsft %cidVal_23 16
	%cres_25 = bit_or %cidVal_22 %cres_24
	mov %varDef_37 %cres_25
	mov %res_5 %varDef_37
	mov %varDef_38 %res_5
	mov %idVal_6 %varDef_38
	mov %idVal_7 %varDef_34
	%res_8 = rsft %idVal_6 %idVal_7
	%res_9 = lsft %res_8 1
	%res_10 = add %res_9 1
	mov %varDef_39 %res_10
	mov %idVal_11 %varDef_39
	mov %idVal_12 %varDef_33
	mov %idVal_13 %varDef_34
	%res_14 = rsft %idVal_12 %idVal_13
	%res_15 = bit_and %idVal_11 %res_14
	mov %varDef_40 %res_15
	mov %idVal_16 %varDef_40
	mov %varDef_41 32767
	mov %varDef_42 65535
	mov %cidVal_29 %varDef_42
	mov %cidVal_30 %varDef_41
	%cres_31 = lsft %cidVal_30 16
	%cres_32 = bit_or %cidVal_29 %cres_31
	mov %varDef_43 %cres_32
	mov %res_17 %varDef_43
	%res_18 = bit_and %idVal_16 %res_17
	ret %res_18

}

define xorshift ( %argVal_0 %argVal_2 ) {
<0> entry
	mov %varDef_91 %argVal_0
	mov %varDef_92 %argVal_2
	mov %idVal_5 %varDef_91
	%res_6 = add %idVal_5 1
	mov %varDef_93 %res_6
	mov %varDef_94 0
	br <1>

<1> for_cond
	%varDef_95 = phi <0> %varDef_93 <2> %varDef_145
	%varDef_96 = phi <0> %varDef_94 <2> %varDef_146
	mov %idVal_8 %varDef_96
	mov %idVal_9 %varDef_92
	%res_10 = mul %idVal_9 10
	%res_11 = lt %idVal_8 %res_10
	br %res_11 <2> <4>

<2> for_body
	mov %idVal_12 %varDef_95
	mov %idVal_14 %varDef_95
	mov %varDef_119 %idVal_14
	mov %varDef_120 13
	mov %cidVal_32 %varDef_119
	mov %cidVal_33 %varDef_120
	%cres_34 = lsft %cidVal_32 %cidVal_33
	mov %varDef_121 32767
	mov %varDef_122 65535
	mov %cidVal_66 %varDef_122
	mov %cidVal_67 %varDef_121
	%cres_68 = lsft %cidVal_67 16
	%cres_69 = bit_or %cidVal_66 %cres_68
	mov %varDef_123 %cres_69
	mov %cres_35 %varDef_123
	%cres_36 = bit_and %cres_34 %cres_35
	mov %varDef_124 %cres_36
	mov %res_13 %varDef_124
	%res_15 = bit_xor %idVal_12 %res_13
	mov %varDef_125 %res_15
	mov %idVal_16 %varDef_125
	mov %idVal_18 %varDef_125
	mov %varDef_126 %idVal_18
	mov %varDef_127 17
	mov %varDef_128 32767
	mov %varDef_129 65535
	mov %cidVal_73 %varDef_129
	mov %cidVal_74 %varDef_128
	%cres_75 = lsft %cidVal_74 16
	%cres_76 = bit_or %cidVal_73 %cres_75
	mov %varDef_130 %cres_76
	mov %cres_41 %varDef_130
	mov %varDef_131 %cres_41
	mov %cidVal_42 %varDef_131
	mov %cidVal_43 %varDef_127
	%cres_44 = rsft %cidVal_42 %cidVal_43
	%cres_45 = lsft %cres_44 1
	%cres_46 = add %cres_45 1
	mov %varDef_132 %cres_46
	mov %cidVal_47 %varDef_132
	mov %cidVal_48 %varDef_126
	mov %cidVal_49 %varDef_127
	%cres_50 = rsft %cidVal_48 %cidVal_49
	%cres_51 = bit_and %cidVal_47 %cres_50
	mov %varDef_133 %cres_51
	mov %cidVal_52 %varDef_133
	mov %varDef_134 32767
	mov %varDef_135 65535
	mov %cidVal_80 %varDef_135
	mov %cidVal_81 %varDef_134
	%cres_82 = lsft %cidVal_81 16
	%cres_83 = bit_or %cidVal_80 %cres_82
	mov %varDef_136 %cres_83
	mov %cres_53 %varDef_136
	%cres_54 = bit_and %cidVal_52 %cres_53
	mov %varDef_137 %cres_54
	mov %res_17 %varDef_137
	%res_19 = bit_xor %idVal_16 %res_17
	mov %varDef_138 %res_19
	mov %idVal_20 %varDef_138
	mov %idVal_22 %varDef_138
	mov %varDef_139 %idVal_22
	mov %varDef_140 5
	mov %cidVal_58 %varDef_139
	mov %cidVal_59 %varDef_140
	%cres_60 = lsft %cidVal_58 %cidVal_59
	mov %varDef_141 32767
	mov %varDef_142 65535
	mov %cidVal_87 %varDef_142
	mov %cidVal_88 %varDef_141
	%cres_89 = lsft %cidVal_88 16
	%cres_90 = bit_or %cidVal_87 %cres_89
	mov %varDef_143 %cres_90
	mov %cres_61 %varDef_143
	%cres_62 = bit_and %cres_60 %cres_61
	mov %varDef_144 %cres_62
	mov %res_21 %varDef_144
	%res_23 = bit_xor %idVal_20 %res_21
	mov %varDef_145 %res_23
	mov %idVal_24 %varDef_96
	mov %oldVal_25 %varDef_96
	%newVal_26 = inc %oldVal_25
	mov %varDef_146 %newVal_26
	br <1>

<4> for_end
	mov %idVal_27 %varDef_95
	%res_28 = bit_xor %idVal_27 123456789
	ret %res_28

}

define int2chr ( %argVal_0 ) {
<0> entry
	%tmp_13 = load @asciiTable
	mov %varDef_14 %tmp_13
	mov %varDef_15 %argVal_0
	mov %idVal_2 %varDef_15
	%res_3 = ge %idVal_2 32
	br %res_3 <3> <2>

<3> lhs_true
	mov %idVal_4 %varDef_15
	%res_5 = le %idVal_4 126
	br %res_5 <1> <2>

<1> if_true
	mov %classPtr_7 %varDef_14
	mov %idVal_8 %varDef_15
	%res_9 = sub %idVal_8 32
	mov %idVal_10 %varDef_15
	%res_11 = sub %idVal_10 32
	%res_6 = __stringSubstring ( %classPtr_7 %res_9 %res_11 )
	ret %res_6

<2> if_merge
	ret $str_1

}

define toStringHex ( %argVal_0 ) {
<0> entry
	%tmp_52 = load @asciiTable
	mov %varDef_53 %tmp_52
	mov %varDef_54 %argVal_0
	mov %varDef_55 $str_1
	mov %varDef_56 28
	br <1>

<1> for_cond
	%varDef_57 = phi <0> %varDef_55 <3> %varDef_75
	%varDef_58 = phi <0> %varDef_56 <3> %varDef_80
	mov %idVal_4 %varDef_58
	%res_5 = ge %idVal_4 0
	br %res_5 <2> <4>

<2> for_body
	mov %idVal_7 %varDef_54
	mov %idVal_8 %varDef_58
	%res_9 = rsft %idVal_7 %idVal_8
	%res_10 = bit_and %res_9 15
	mov %varDef_64 %res_10
	mov %idVal_11 %varDef_64
	%res_12 = lt %idVal_11 10
	br %res_12 <5> <6>

<5> if_true
	mov %idVal_13 %varDef_57
	mov %idVal_15 %varDef_64
	%res_16 = add 48 %idVal_15
	mov %varDef_65 %res_16
	mov %cidVal_29 %varDef_65
	%cres_30 = ge %cidVal_29 32
	br %cres_30 <10> <12>

<10> clhs_true
	mov %cidVal_31 %varDef_65
	%cres_32 = le %cidVal_31 126
	br %cres_32 <11> <12>

<11> cif_true
	mov %cclassPtr_33 %varDef_53
	mov %cidVal_34 %varDef_65
	%cres_35 = sub %cidVal_34 32
	mov %cidVal_36 %varDef_65
	%cres_37 = sub %cidVal_36 32
	%cres_38 = __stringSubstring ( %cclassPtr_33 %cres_35 %cres_37 )
	mov %varDef_66 %cres_38
	br <8>

<12> cif_merge
	mov %varDef_67 $str_1
	br <8>

<8> after_call
	%varDef_68 = phi <11> %varDef_66 <12> %varDef_67
	mov %res_14 %varDef_68
	%res_17 = __stringAdd ( %idVal_13 %res_14 )
	mov %varDef_69 %res_17
	br <3>

<6> if_false
	mov %idVal_18 %varDef_57
	mov %idVal_20 %varDef_64
	%res_21 = add 65 %idVal_20
	%res_22 = sub %res_21 10
	mov %varDef_70 %res_22
	mov %cidVal_41 %varDef_70
	%cres_42 = ge %cidVal_41 32
	br %cres_42 <15> <17>

<15> clhs_true
	mov %cidVal_43 %varDef_70
	%cres_44 = le %cidVal_43 126
	br %cres_44 <16> <17>

<16> cif_true
	mov %cclassPtr_45 %varDef_53
	mov %cidVal_46 %varDef_70
	%cres_47 = sub %cidVal_46 32
	mov %cidVal_48 %varDef_70
	%cres_49 = sub %cidVal_48 32
	%cres_50 = __stringSubstring ( %cclassPtr_45 %cres_47 %cres_49 )
	mov %varDef_71 %cres_50
	br <13>

<17> cif_merge
	mov %varDef_72 $str_1
	br <13>

<13> after_call
	%varDef_73 = phi <16> %varDef_71 <17> %varDef_72
	mov %res_19 %varDef_73
	%res_23 = __stringAdd ( %idVal_18 %res_19 )
	mov %varDef_74 %res_23
	br <3>

<3> for_step
	%varDef_75 = phi <8> %varDef_69 <13> %varDef_74
	mov %idVal_24 %varDef_58
	%res_25 = sub %idVal_24 4
	mov %varDef_80 %res_25
	br <1>

<4> for_end
	mov %idVal_26 %varDef_57
	ret %idVal_26

}

define getnumber ( %argVal_0 %argVal_2 %argVal_4 ) {
<0> entry
	mov %varDef_83 %argVal_0
	mov %varDef_84 %argVal_2
	mov %varDef_85 %argVal_4
	mov %idVal_7 %varDef_85
	%res_8 = bit_and %idVal_7 31
	mov %varDef_86 %res_8
	mov %idVal_11 %varDef_83
	mov %idVal_12 %varDef_84
	br <2>

<2> centry
	mov %varDef_87 %idVal_11
	mov %varDef_88 %idVal_12
	mov %cidVal_26 %varDef_87
	%cres_27 = add %cidVal_26 1
	mov %varDef_89 %cres_27
	mov %varDef_90 0
	br <3>

<3> cfor_cond
	%varDef_91 = phi <2> %varDef_90 <4> %varDef_102
	%varDef_92 = phi <2> %varDef_89 <4> %varDef_101
	mov %cidVal_28 %varDef_91
	mov %cidVal_29 %varDef_88
	%cres_30 = mul %cidVal_29 10
	%cres_31 = lt %cidVal_28 %cres_30
	br %cres_31 <4> <6>

<4> cfor_body
	mov %cidVal_32 %varDef_92
	mov %cidVal_33 %varDef_92
	mov %varDef_96 %cidVal_33
	mov %varDef_97 13
	mov %cidVal_78 %varDef_96
	mov %cidVal_79 %varDef_97
	%cres_80 = lsft %cidVal_78 %cidVal_79
	%cres_81 = hilo ( 32767 65535 )
	%cres_82 = bit_and %cres_80 %cres_81
	mov %varDef_98 %cres_82
	mov %cres_34 %varDef_98
	%cres_35 = bit_xor %cidVal_32 %cres_34
	mov %varDef_99 %cres_35
	mov %cidVal_36 %varDef_99
	mov %cidVal_37 %varDef_99
	%cres_38 = shift_r ( %cidVal_37 17 )
	%cres_39 = bit_xor %cidVal_36 %cres_38
	mov %varDef_100 %cres_39
	mov %cidVal_40 %varDef_100
	mov %cidVal_41 %varDef_100
	%cres_42 = shift_l ( %cidVal_41 5 )
	%cres_43 = bit_xor %cidVal_40 %cres_42
	mov %varDef_101 %cres_43
	mov %cidVal_44 %varDef_91
	mov %coldVal_45 %varDef_91
	%cnewVal_46 = inc %coldVal_45
	mov %varDef_102 %cnewVal_46
	br <3>

<6> cfor_end
	mov %cidVal_47 %varDef_92
	%cres_48 = bit_xor %cidVal_47 123456789
	mov %varDef_103 %cres_48
	mov %res_10 %varDef_103
	mov %varDef_104 %res_10
	mov %idVal_14 %varDef_104
	mov %idVal_15 %varDef_86
	mov %varDef_105 %idVal_14
	mov %varDef_106 %idVal_15
	mov %cidVal_52 %varDef_105
	mov %cidVal_53 %varDef_106
	%cres_54 = lsft %cidVal_52 %cidVal_53
	%cres_55 = hilo ( 32767 65535 )
	%cres_56 = bit_and %cres_54 %cres_55
	mov %varDef_107 %cres_56
	mov %res_13 %varDef_107
	mov %idVal_17 %varDef_104
	mov %idVal_18 %varDef_86
	%res_19 = sub 32 %idVal_18
	mov %varDef_108 %idVal_17
	mov %varDef_109 %res_19
	%cres_61 = hilo ( 32767 65535 )
	mov %varDef_110 %cres_61
	mov %cidVal_62 %varDef_110
	mov %cidVal_63 %varDef_109
	%cres_64 = rsft %cidVal_62 %cidVal_63
	%cres_65 = lsft %cres_64 1
	%cres_66 = add %cres_65 1
	mov %varDef_111 %cres_66
	mov %cidVal_67 %varDef_111
	mov %cidVal_68 %varDef_108
	mov %cidVal_69 %varDef_109
	%cres_70 = rsft %cidVal_68 %cidVal_69
	%cres_71 = bit_and %cidVal_67 %cres_70
	mov %varDef_112 %cres_71
	mov %cidVal_72 %varDef_112
	%cres_73 = hilo ( 32767 65535 )
	%cres_74 = bit_and %cidVal_72 %cres_73
	mov %varDef_113 %cres_74
	mov %res_16 %varDef_113
	%res_20 = bit_or %res_13 %res_16
	ret %res_20

}

define main ( ) {
<0> entry
	%res_9 = getInt ( )
	mov %varDef_484 %res_9
	%res_10 = getInt ( )
	mov %varDef_485 %res_10
	%res_11 = getInt ( )
	mov %varDef_486 %res_11
	%res_12 = getInt ( )
	mov %varDef_487 %res_12
	%res_13 = getInt ( )
	mov %varDef_488 %res_13
	%res_14 = getInt ( )
	mov %varDef_489 %res_14
	mov %varDef_490 30
	mov %varDef_491 0
	mov %varDef_492 0
	mov %varDef_493 0
	mov %varDef_494 0
	mov %idVal_20 %varDef_484
	mov %varDef_495 %idVal_20
	br <1>

<1> for_cond
	%varDef_496 = phi <0> %varDef_495 <3> %varDef_820
	%varDef_499 = phi <0> %varDef_491 <3> %varDef_570
	%varDef_500 = phi <0> %varDef_492 <3> %varDef_571
	%varDef_501 = phi <0> %varDef_493 <3> %varDef_572
	%varDef_502 = phi <0> %varDef_494 <3> %varDef_573
	mov %idVal_21 %varDef_496
	mov %idVal_22 %varDef_485
	%res_23 = lt %idVal_21 %idVal_22
	br %res_23 <2> <4>

<2> for_body
	mov %idVal_24 %varDef_486
	mov %varDef_567 %idVal_24
	br <5>

<5> for_cond
	%varDef_568 = phi <2> %varDef_567 <7> %varDef_819
	%varDef_570 = phi <2> %varDef_499 <7> %varDef_640
	%varDef_571 = phi <2> %varDef_500 <7> %varDef_641
	%varDef_572 = phi <2> %varDef_501 <7> %varDef_642
	%varDef_573 = phi <2> %varDef_502 <7> %varDef_643
	%varDef_574 = phi <2> %varDef_574 <7> %varDef_644
	%varDef_575 = phi <2> %varDef_575 <7> %varDef_645
	%varDef_576 = phi <2> %varDef_576 <7> %varDef_646
	%varDef_577 = phi <2> %varDef_577 <7> %varDef_647
	%varDef_578 = phi <2> %varDef_578 <7> %varDef_648
	%varDef_579 = phi <2> %varDef_579 <7> %varDef_649
	%varDef_580 = phi <2> %varDef_580 <7> %varDef_650
	%varDef_581 = phi <2> %varDef_581 <7> %varDef_651
	%varDef_582 = phi <2> %varDef_582 <7> %varDef_652
	%varDef_583 = phi <2> %varDef_583 <7> %varDef_653
	%varDef_584 = phi <2> %varDef_584 <7> %varDef_654
	%varDef_585 = phi <2> %varDef_585 <7> %varDef_655
	%varDef_586 = phi <2> %varDef_586 <7> %varDef_656
	%varDef_587 = phi <2> %varDef_587 <7> %varDef_657
	%varDef_588 = phi <2> %varDef_588 <7> %varDef_658
	%varDef_589 = phi <2> %varDef_589 <7> %varDef_659
	%varDef_590 = phi <2> %varDef_590 <7> %varDef_660
	%varDef_591 = phi <2> %varDef_591 <7> %varDef_661
	%varDef_592 = phi <2> %varDef_592 <7> %varDef_662
	%varDef_593 = phi <2> %varDef_593 <7> %varDef_663
	%varDef_594 = phi <2> %varDef_594 <7> %varDef_664
	%varDef_595 = phi <2> %varDef_595 <7> %varDef_665
	%varDef_596 = phi <2> %varDef_596 <7> %varDef_666
	%varDef_597 = phi <2> %varDef_597 <7> %varDef_667
	%varDef_598 = phi <2> %varDef_598 <7> %varDef_668
	%varDef_599 = phi <2> %varDef_599 <7> %varDef_669
	%varDef_600 = phi <2> %varDef_600 <7> %varDef_670
	%varDef_601 = phi <2> %varDef_601 <7> %varDef_671
	%varDef_602 = phi <2> %varDef_602 <7> %varDef_672
	%varDef_603 = phi <2> %varDef_603 <7> %varDef_673
	%varDef_604 = phi <2> %varDef_604 <7> %varDef_674
	%varDef_605 = phi <2> %varDef_605 <7> %varDef_675
	%varDef_606 = phi <2> %varDef_606 <7> %varDef_676
	%varDef_607 = phi <2> %varDef_607 <7> %varDef_677
	%varDef_608 = phi <2> %varDef_608 <7> %varDef_678
	%varDef_609 = phi <2> %varDef_609 <7> %varDef_679
	%varDef_610 = phi <2> %varDef_610 <7> %varDef_680
	%varDef_611 = phi <2> %varDef_611 <7> %varDef_681
	%varDef_612 = phi <2> %varDef_612 <7> %varDef_682
	%varDef_613 = phi <2> %varDef_613 <7> %varDef_683
	%varDef_614 = phi <2> %varDef_614 <7> %varDef_684
	%varDef_615 = phi <2> %varDef_615 <7> %varDef_685
	%varDef_616 = phi <2> %varDef_616 <7> %varDef_686
	%varDef_617 = phi <2> %varDef_617 <7> %varDef_687
	%varDef_618 = phi <2> %varDef_618 <7> %varDef_688
	%varDef_619 = phi <2> %varDef_619 <7> %varDef_689
	%varDef_620 = phi <2> %varDef_620 <7> %varDef_690
	%varDef_621 = phi <2> %varDef_621 <7> %varDef_691
	%varDef_622 = phi <2> %varDef_622 <7> %varDef_692
	%varDef_623 = phi <2> %varDef_623 <7> %varDef_693
	%varDef_624 = phi <2> %varDef_624 <7> %varDef_694
	%varDef_625 = phi <2> %varDef_625 <7> %varDef_695
	%varDef_626 = phi <2> %varDef_626 <7> %varDef_696
	%varDef_627 = phi <2> %varDef_627 <7> %varDef_697
	%varDef_628 = phi <2> %varDef_628 <7> %varDef_698
	%varDef_629 = phi <2> %varDef_629 <7> %varDef_699
	%varDef_630 = phi <2> %varDef_630 <7> %varDef_700
	%varDef_631 = phi <2> %varDef_631 <7> %varDef_701
	%varDef_632 = phi <2> %varDef_632 <7> %varDef_702
	%varDef_633 = phi <2> %varDef_633 <7> %varDef_703
	%varDef_634 = phi <2> %varDef_634 <7> %varDef_704
	%varDef_635 = phi <2> %varDef_635 <7> %varDef_705
	%varDef_636 = phi <2> %varDef_636 <7> %varDef_706
	%varDef_637 = phi <2> %varDef_637 <7> %varDef_707
	mov %idVal_25 %varDef_568
	mov %idVal_26 %varDef_487
	%res_27 = lt %idVal_25 %idVal_26
	br %res_27 <6> <3>

<6> for_body
	mov %idVal_28 %varDef_488
	mov %varDef_638 %idVal_28
	br <9>

<9> for_cond
	%varDef_639 = phi <6> %varDef_638 <62> %varDef_818
	%varDef_640 = phi <6> %varDef_570 <62> %varDef_781
	%varDef_641 = phi <6> %varDef_571 <62> %varDef_793
	%varDef_642 = phi <6> %varDef_572 <62> %varDef_805
	%varDef_643 = phi <6> %varDef_573 <62> %varDef_817
	%varDef_644 = phi <6> %varDef_574 <62> %varDef_714
	%varDef_645 = phi <6> %varDef_575 <62> %varDef_721
	%varDef_646 = phi <6> %varDef_576 <62> %varDef_728
	%varDef_647 = phi <6> %varDef_577 <62> %varDef_735
	%varDef_648 = phi <6> %varDef_578 <62> %varDef_769
	%varDef_649 = phi <6> %varDef_579 <62> %varDef_713
	%varDef_650 = phi <6> %varDef_580 <62> %varDef_712
	%varDef_651 = phi <6> %varDef_581 <62> %varDef_711
	%varDef_652 = phi <6> %varDef_582 <62> %varDef_710
	%varDef_653 = phi <6> %varDef_583 <62> %varDef_709
	%varDef_654 = phi <6> %varDef_584 <62> %varDef_708
	%varDef_655 = phi <6> %varDef_585 <62> %varDef_720
	%varDef_656 = phi <6> %varDef_586 <62> %varDef_719
	%varDef_657 = phi <6> %varDef_587 <62> %varDef_718
	%varDef_658 = phi <6> %varDef_588 <62> %varDef_717
	%varDef_659 = phi <6> %varDef_589 <62> %varDef_716
	%varDef_660 = phi <6> %varDef_590 <62> %varDef_715
	%varDef_661 = phi <6> %varDef_591 <62> %varDef_727
	%varDef_662 = phi <6> %varDef_592 <62> %varDef_726
	%varDef_663 = phi <6> %varDef_593 <62> %varDef_725
	%varDef_664 = phi <6> %varDef_594 <62> %varDef_724
	%varDef_665 = phi <6> %varDef_595 <62> %varDef_723
	%varDef_666 = phi <6> %varDef_596 <62> %varDef_722
	%varDef_667 = phi <6> %varDef_597 <62> %varDef_734
	%varDef_668 = phi <6> %varDef_598 <62> %varDef_733
	%varDef_669 = phi <6> %varDef_599 <62> %varDef_732
	%varDef_670 = phi <6> %varDef_600 <62> %varDef_731
	%varDef_671 = phi <6> %varDef_601 <62> %varDef_730
	%varDef_672 = phi <6> %varDef_602 <62> %varDef_729
	%varDef_673 = phi <6> %varDef_603 <62> %varDef_746
	%varDef_674 = phi <6> %varDef_604 <62> %varDef_740
	%varDef_675 = phi <6> %varDef_605 <62> %varDef_741
	%varDef_676 = phi <6> %varDef_606 <62> %varDef_737
	%varDef_677 = phi <6> %varDef_607 <62> %varDef_736
	%varDef_678 = phi <6> %varDef_608 <62> %varDef_757
	%varDef_679 = phi <6> %varDef_609 <62> %varDef_751
	%varDef_680 = phi <6> %varDef_610 <62> %varDef_752
	%varDef_681 = phi <6> %varDef_611 <62> %varDef_748
	%varDef_682 = phi <6> %varDef_612 <62> %varDef_747
	%varDef_683 = phi <6> %varDef_613 <62> %varDef_768
	%varDef_684 = phi <6> %varDef_614 <62> %varDef_762
	%varDef_685 = phi <6> %varDef_615 <62> %varDef_763
	%varDef_686 = phi <6> %varDef_616 <62> %varDef_759
	%varDef_687 = phi <6> %varDef_617 <62> %varDef_758
	%varDef_688 = phi <6> %varDef_618 <62> %varDef_780
	%varDef_689 = phi <6> %varDef_619 <62> %varDef_774
	%varDef_690 = phi <6> %varDef_620 <62> %varDef_775
	%varDef_691 = phi <6> %varDef_621 <62> %varDef_771
	%varDef_692 = phi <6> %varDef_622 <62> %varDef_770
	%varDef_693 = phi <6> %varDef_623 <62> %varDef_792
	%varDef_694 = phi <6> %varDef_624 <62> %varDef_786
	%varDef_695 = phi <6> %varDef_625 <62> %varDef_787
	%varDef_696 = phi <6> %varDef_626 <62> %varDef_783
	%varDef_697 = phi <6> %varDef_627 <62> %varDef_782
	%varDef_698 = phi <6> %varDef_628 <62> %varDef_804
	%varDef_699 = phi <6> %varDef_629 <62> %varDef_798
	%varDef_700 = phi <6> %varDef_630 <62> %varDef_799
	%varDef_701 = phi <6> %varDef_631 <62> %varDef_795
	%varDef_702 = phi <6> %varDef_632 <62> %varDef_794
	%varDef_703 = phi <6> %varDef_633 <62> %varDef_816
	%varDef_704 = phi <6> %varDef_634 <62> %varDef_810
	%varDef_705 = phi <6> %varDef_635 <62> %varDef_811
	%varDef_706 = phi <6> %varDef_636 <62> %varDef_807
	%varDef_707 = phi <6> %varDef_637 <62> %varDef_806
	mov %idVal_29 %varDef_639
	mov %idVal_30 %varDef_489
	%res_31 = lt %idVal_29 %idVal_30
	br %res_31 <10> <7>

<10> for_body
	mov %idVal_34 %varDef_484
	mov %idVal_35 %varDef_490
	mov %idVal_36 %varDef_639
	mov %varDef_708 %idVal_34
	mov %varDef_709 %idVal_35
	mov %varDef_710 %idVal_36
	mov %cidVal_110 %varDef_710
	%cres_111 = bit_and %cidVal_110 31
	mov %varDef_711 %cres_111
	mov %cidVal_112 %varDef_708
	mov %cidVal_113 %varDef_709
	%cres_114 = xorshift ( %cidVal_112 %cidVal_113 )
	mov %varDef_712 %cres_114
	mov %cidVal_115 %varDef_712
	mov %cidVal_116 %varDef_711
	%cres_117 = shift_l ( %cidVal_115 %cidVal_116 )
	mov %cidVal_118 %varDef_712
	mov %cidVal_119 %varDef_711
	%cres_120 = sub 32 %cidVal_119
	%cres_121 = shift_r ( %cidVal_118 %cres_120 )
	%cres_122 = bit_or %cres_117 %cres_121
	mov %varDef_713 %cres_122
	mov %res_33 %varDef_713
	mov %varDef_714 %res_33
	mov %idVal_39 %varDef_496
	mov %idVal_40 %varDef_490
	mov %idVal_41 %varDef_639
	mov %varDef_715 %idVal_39
	mov %varDef_716 %idVal_40
	mov %varDef_717 %idVal_41
	mov %cidVal_129 %varDef_717
	%cres_130 = bit_and %cidVal_129 31
	mov %varDef_718 %cres_130
	mov %cidVal_131 %varDef_715
	mov %cidVal_132 %varDef_716
	%cres_133 = xorshift ( %cidVal_131 %cidVal_132 )
	mov %varDef_719 %cres_133
	mov %cidVal_134 %varDef_719
	mov %cidVal_135 %varDef_718
	%cres_136 = shift_l ( %cidVal_134 %cidVal_135 )
	mov %cidVal_137 %varDef_719
	mov %cidVal_138 %varDef_718
	%cres_139 = sub 32 %cidVal_138
	%cres_140 = shift_r ( %cidVal_137 %cres_139 )
	%cres_141 = bit_or %cres_136 %cres_140
	mov %varDef_720 %cres_141
	mov %res_38 %varDef_720
	mov %varDef_721 %res_38
	mov %idVal_44 %varDef_568
	mov %idVal_45 %varDef_490
	mov %idVal_46 %varDef_639
	mov %varDef_722 %idVal_44
	mov %varDef_723 %idVal_45
	mov %varDef_724 %idVal_46
	mov %cidVal_148 %varDef_724
	%cres_149 = bit_and %cidVal_148 31
	mov %varDef_725 %cres_149
	mov %cidVal_150 %varDef_722
	mov %cidVal_151 %varDef_723
	%cres_152 = xorshift ( %cidVal_150 %cidVal_151 )
	mov %varDef_726 %cres_152
	mov %cidVal_153 %varDef_726
	mov %cidVal_154 %varDef_725
	%cres_155 = shift_l ( %cidVal_153 %cidVal_154 )
	mov %cidVal_156 %varDef_726
	mov %cidVal_157 %varDef_725
	%cres_158 = sub 32 %cidVal_157
	%cres_159 = shift_r ( %cidVal_156 %cres_158 )
	%cres_160 = bit_or %cres_155 %cres_159
	mov %varDef_727 %cres_160
	mov %res_43 %varDef_727
	mov %varDef_728 %res_43
	mov %idVal_49 %varDef_496
	mov %idVal_50 %varDef_568
	%res_51 = bit_xor %idVal_49 %idVal_50
	mov %idVal_52 %varDef_490
	mov %idVal_53 %varDef_639
	mov %varDef_729 %res_51
	mov %varDef_730 %idVal_52
	mov %varDef_731 %idVal_53
	mov %cidVal_167 %varDef_731
	%cres_168 = bit_and %cidVal_167 31
	mov %varDef_732 %cres_168
	mov %cidVal_169 %varDef_729
	mov %cidVal_170 %varDef_730
	%cres_171 = xorshift ( %cidVal_169 %cidVal_170 )
	mov %varDef_733 %cres_171
	mov %cidVal_172 %varDef_733
	mov %cidVal_173 %varDef_732
	%cres_174 = shift_l ( %cidVal_172 %cidVal_173 )
	mov %cidVal_175 %varDef_733
	mov %cidVal_176 %varDef_732
	%cres_177 = sub 32 %cidVal_176
	%cres_178 = shift_r ( %cidVal_175 %cres_177 )
	%cres_179 = bit_or %cres_174 %cres_178
	mov %varDef_734 %cres_179
	mov %res_48 %varDef_734
	mov %varDef_735 %res_48
	mov %idVal_56 %varDef_639
	mov %varDef_736 %idVal_56
	mov %varDef_737 1
	mov %cidVal_185 %varDef_736
	%cres_186 = add %cidVal_185 1
	mov %varDef_738 %cres_186
	mov %varDef_739 0
	br <23>

<23> cfor_cond
	%varDef_740 = phi <10> %varDef_739 <24> %varDef_745
	%varDef_741 = phi <10> %varDef_738 <24> %varDef_744
	mov %cidVal_187 %varDef_740
	mov %cidVal_188 %varDef_737
	%cres_189 = mul %cidVal_188 10
	%cres_190 = lt %cidVal_187 %cres_189
	br %cres_190 <24> <26>

<24> cfor_body
	mov %cidVal_191 %varDef_741
	mov %cidVal_192 %varDef_741
	%cres_193 = shift_l ( %cidVal_192 13 )
	%cres_194 = bit_xor %cidVal_191 %cres_193
	mov %varDef_742 %cres_194
	mov %cidVal_195 %varDef_742
	mov %cidVal_196 %varDef_742
	%cres_197 = shift_r ( %cidVal_196 17 )
	%cres_198 = bit_xor %cidVal_195 %cres_197
	mov %varDef_743 %cres_198
	mov %cidVal_199 %varDef_743
	mov %cidVal_200 %varDef_743
	%cres_201 = shift_l ( %cidVal_200 5 )
	%cres_202 = bit_xor %cidVal_199 %cres_201
	mov %varDef_744 %cres_202
	mov %cidVal_203 %varDef_740
	mov %coldVal_204 %varDef_740
	%cnewVal_205 = inc %coldVal_204
	mov %varDef_745 %cnewVal_205
	br <23>

<26> cfor_end
	mov %cidVal_206 %varDef_741
	%cres_207 = bit_xor %cidVal_206 123456789
	mov %varDef_746 %cres_207
	mov %res_55 %varDef_746
	mov %idVal_58 %varDef_568
	mov %varDef_747 %idVal_58
	mov %varDef_748 1
	mov %cidVal_213 %varDef_747
	%cres_214 = add %cidVal_213 1
	mov %varDef_749 %cres_214
	mov %varDef_750 0
	br <29>

<29> cfor_cond
	%varDef_751 = phi <26> %varDef_750 <30> %varDef_756
	%varDef_752 = phi <26> %varDef_749 <30> %varDef_755
	mov %cidVal_215 %varDef_751
	mov %cidVal_216 %varDef_748
	%cres_217 = mul %cidVal_216 10
	%cres_218 = lt %cidVal_215 %cres_217
	br %cres_218 <30> <32>

<30> cfor_body
	mov %cidVal_219 %varDef_752
	mov %cidVal_220 %varDef_752
	%cres_221 = shift_l ( %cidVal_220 13 )
	%cres_222 = bit_xor %cidVal_219 %cres_221
	mov %varDef_753 %cres_222
	mov %cidVal_223 %varDef_753
	mov %cidVal_224 %varDef_753
	%cres_225 = shift_r ( %cidVal_224 17 )
	%cres_226 = bit_xor %cidVal_223 %cres_225
	mov %varDef_754 %cres_226
	mov %cidVal_227 %varDef_754
	mov %cidVal_228 %varDef_754
	%cres_229 = shift_l ( %cidVal_228 5 )
	%cres_230 = bit_xor %cidVal_227 %cres_229
	mov %varDef_755 %cres_230
	mov %cidVal_231 %varDef_751
	mov %coldVal_232 %varDef_751
	%cnewVal_233 = inc %coldVal_232
	mov %varDef_756 %cnewVal_233
	br <29>

<32> cfor_end
	mov %cidVal_234 %varDef_752
	%cres_235 = bit_xor %cidVal_234 123456789
	mov %varDef_757 %cres_235
	mov %res_57 %varDef_757
	%res_59 = bit_xor %res_55 %res_57
	mov %idVal_61 %varDef_496
	mov %varDef_758 %idVal_61
	mov %varDef_759 1
	mov %cidVal_241 %varDef_758
	%cres_242 = add %cidVal_241 1
	mov %varDef_760 %cres_242
	mov %varDef_761 0
	br <35>

<35> cfor_cond
	%varDef_762 = phi <32> %varDef_761 <36> %varDef_767
	%varDef_763 = phi <32> %varDef_760 <36> %varDef_766
	mov %cidVal_243 %varDef_762
	mov %cidVal_244 %varDef_759
	%cres_245 = mul %cidVal_244 10
	%cres_246 = lt %cidVal_243 %cres_245
	br %cres_246 <36> <38>

<36> cfor_body
	mov %cidVal_247 %varDef_763
	mov %cidVal_248 %varDef_763
	%cres_249 = shift_l ( %cidVal_248 13 )
	%cres_250 = bit_xor %cidVal_247 %cres_249
	mov %varDef_764 %cres_250
	mov %cidVal_251 %varDef_764
	mov %cidVal_252 %varDef_764
	%cres_253 = shift_r ( %cidVal_252 17 )
	%cres_254 = bit_xor %cidVal_251 %cres_253
	mov %varDef_765 %cres_254
	mov %cidVal_255 %varDef_765
	mov %cidVal_256 %varDef_765
	%cres_257 = shift_l ( %cidVal_256 5 )
	%cres_258 = bit_xor %cidVal_255 %cres_257
	mov %varDef_766 %cres_258
	mov %cidVal_259 %varDef_762
	mov %coldVal_260 %varDef_762
	%cnewVal_261 = inc %coldVal_260
	mov %varDef_767 %cnewVal_261
	br <35>

<38> cfor_end
	mov %cidVal_262 %varDef_763
	%cres_263 = bit_xor %cidVal_262 123456789
	mov %varDef_768 %cres_263
	mov %res_60 %varDef_768
	%res_62 = bit_xor %res_59 %res_60
	mov %varDef_769 %res_62
	mov %idVal_63 %varDef_640
	mov %idVal_65 %varDef_714
	mov %idVal_66 %varDef_769
	%res_67 = bit_xor %idVal_65 %idVal_66
	mov %varDef_770 %res_67
	mov %varDef_771 1
	mov %cidVal_269 %varDef_770
	%cres_270 = add %cidVal_269 1
	mov %varDef_772 %cres_270
	mov %varDef_773 0
	br <41>

<41> cfor_cond
	%varDef_774 = phi <38> %varDef_773 <42> %varDef_779
	%varDef_775 = phi <38> %varDef_772 <42> %varDef_778
	mov %cidVal_271 %varDef_774
	mov %cidVal_272 %varDef_771
	%cres_273 = mul %cidVal_272 10
	%cres_274 = lt %cidVal_271 %cres_273
	br %cres_274 <42> <44>

<42> cfor_body
	mov %cidVal_275 %varDef_775
	mov %cidVal_276 %varDef_775
	%cres_277 = shift_l ( %cidVal_276 13 )
	%cres_278 = bit_xor %cidVal_275 %cres_277
	mov %varDef_776 %cres_278
	mov %cidVal_279 %varDef_776
	mov %cidVal_280 %varDef_776
	%cres_281 = shift_r ( %cidVal_280 17 )
	%cres_282 = bit_xor %cidVal_279 %cres_281
	mov %varDef_777 %cres_282
	mov %cidVal_283 %varDef_777
	mov %cidVal_284 %varDef_777
	%cres_285 = shift_l ( %cidVal_284 5 )
	%cres_286 = bit_xor %cidVal_283 %cres_285
	mov %varDef_778 %cres_286
	mov %cidVal_287 %varDef_774
	mov %coldVal_288 %varDef_774
	%cnewVal_289 = inc %coldVal_288
	mov %varDef_779 %cnewVal_289
	br <41>

<44> cfor_end
	mov %cidVal_290 %varDef_775
	%cres_291 = bit_xor %cidVal_290 123456789
	mov %varDef_780 %cres_291
	mov %res_64 %varDef_780
	%res_68 = add %idVal_63 %res_64
	mov %varDef_781 %res_68
	mov %idVal_69 %varDef_641
	mov %idVal_71 %varDef_721
	mov %idVal_72 %varDef_769
	%res_73 = bit_xor %idVal_71 %idVal_72
	mov %varDef_782 %res_73
	mov %varDef_783 1
	mov %cidVal_297 %varDef_782
	%cres_298 = add %cidVal_297 1
	mov %varDef_784 %cres_298
	mov %varDef_785 0
	br <47>

<47> cfor_cond
	%varDef_786 = phi <44> %varDef_785 <48> %varDef_791
	%varDef_787 = phi <44> %varDef_784 <48> %varDef_790
	mov %cidVal_299 %varDef_786
	mov %cidVal_300 %varDef_783
	%cres_301 = mul %cidVal_300 10
	%cres_302 = lt %cidVal_299 %cres_301
	br %cres_302 <48> <50>

<48> cfor_body
	mov %cidVal_303 %varDef_787
	mov %cidVal_304 %varDef_787
	%cres_305 = shift_l ( %cidVal_304 13 )
	%cres_306 = bit_xor %cidVal_303 %cres_305
	mov %varDef_788 %cres_306
	mov %cidVal_307 %varDef_788
	mov %cidVal_308 %varDef_788
	%cres_309 = shift_r ( %cidVal_308 17 )
	%cres_310 = bit_xor %cidVal_307 %cres_309
	mov %varDef_789 %cres_310
	mov %cidVal_311 %varDef_789
	mov %cidVal_312 %varDef_789
	%cres_313 = shift_l ( %cidVal_312 5 )
	%cres_314 = bit_xor %cidVal_311 %cres_313
	mov %varDef_790 %cres_314
	mov %cidVal_315 %varDef_786
	mov %coldVal_316 %varDef_786
	%cnewVal_317 = inc %coldVal_316
	mov %varDef_791 %cnewVal_317
	br <47>

<50> cfor_end
	mov %cidVal_318 %varDef_787
	%cres_319 = bit_xor %cidVal_318 123456789
	mov %varDef_792 %cres_319
	mov %res_70 %varDef_792
	%res_74 = add %idVal_69 %res_70
	mov %varDef_793 %res_74
	mov %idVal_75 %varDef_642
	mov %idVal_77 %varDef_728
	mov %idVal_78 %varDef_769
	%res_79 = bit_xor %idVal_77 %idVal_78
	mov %varDef_794 %res_79
	mov %varDef_795 1
	mov %cidVal_325 %varDef_794
	%cres_326 = add %cidVal_325 1
	mov %varDef_796 %cres_326
	mov %varDef_797 0
	br <53>

<53> cfor_cond
	%varDef_798 = phi <50> %varDef_797 <54> %varDef_803
	%varDef_799 = phi <50> %varDef_796 <54> %varDef_802
	mov %cidVal_327 %varDef_798
	mov %cidVal_328 %varDef_795
	%cres_329 = mul %cidVal_328 10
	%cres_330 = lt %cidVal_327 %cres_329
	br %cres_330 <54> <56>

<54> cfor_body
	mov %cidVal_331 %varDef_799
	mov %cidVal_332 %varDef_799
	%cres_333 = shift_l ( %cidVal_332 13 )
	%cres_334 = bit_xor %cidVal_331 %cres_333
	mov %varDef_800 %cres_334
	mov %cidVal_335 %varDef_800
	mov %cidVal_336 %varDef_800
	%cres_337 = shift_r ( %cidVal_336 17 )
	%cres_338 = bit_xor %cidVal_335 %cres_337
	mov %varDef_801 %cres_338
	mov %cidVal_339 %varDef_801
	mov %cidVal_340 %varDef_801
	%cres_341 = shift_l ( %cidVal_340 5 )
	%cres_342 = bit_xor %cidVal_339 %cres_341
	mov %varDef_802 %cres_342
	mov %cidVal_343 %varDef_798
	mov %coldVal_344 %varDef_798
	%cnewVal_345 = inc %coldVal_344
	mov %varDef_803 %cnewVal_345
	br <53>

<56> cfor_end
	mov %cidVal_346 %varDef_799
	%cres_347 = bit_xor %cidVal_346 123456789
	mov %varDef_804 %cres_347
	mov %res_76 %varDef_804
	%res_80 = add %idVal_75 %res_76
	mov %varDef_805 %res_80
	mov %idVal_81 %varDef_643
	mov %idVal_83 %varDef_735
	mov %idVal_84 %varDef_769
	%res_85 = bit_xor %idVal_83 %idVal_84
	mov %varDef_806 %res_85
	mov %varDef_807 1
	mov %cidVal_353 %varDef_806
	%cres_354 = add %cidVal_353 1
	mov %varDef_808 %cres_354
	mov %varDef_809 0
	br <59>

<59> cfor_cond
	%varDef_810 = phi <56> %varDef_809 <60> %varDef_815
	%varDef_811 = phi <56> %varDef_808 <60> %varDef_814
	mov %cidVal_355 %varDef_810
	mov %cidVal_356 %varDef_807
	%cres_357 = mul %cidVal_356 10
	%cres_358 = lt %cidVal_355 %cres_357
	br %cres_358 <60> <62>

<60> cfor_body
	mov %cidVal_359 %varDef_811
	mov %cidVal_360 %varDef_811
	%cres_361 = shift_l ( %cidVal_360 13 )
	%cres_362 = bit_xor %cidVal_359 %cres_361
	mov %varDef_812 %cres_362
	mov %cidVal_363 %varDef_812
	mov %cidVal_364 %varDef_812
	%cres_365 = shift_r ( %cidVal_364 17 )
	%cres_366 = bit_xor %cidVal_363 %cres_365
	mov %varDef_813 %cres_366
	mov %cidVal_367 %varDef_813
	mov %cidVal_368 %varDef_813
	%cres_369 = shift_l ( %cidVal_368 5 )
	%cres_370 = bit_xor %cidVal_367 %cres_369
	mov %varDef_814 %cres_370
	mov %cidVal_371 %varDef_810
	mov %coldVal_372 %varDef_810
	%cnewVal_373 = inc %coldVal_372
	mov %varDef_815 %cnewVal_373
	br <59>

<62> cfor_end
	mov %cidVal_374 %varDef_811
	%cres_375 = bit_xor %cidVal_374 123456789
	mov %varDef_816 %cres_375
	mov %res_82 %varDef_816
	%res_86 = add %idVal_81 %res_82
	mov %varDef_817 %res_86
	mov %idVal_87 %varDef_639
	mov %oldVal_88 %varDef_639
	%newVal_89 = inc %oldVal_88
	mov %varDef_818 %newVal_89
	br <9>

<7> for_step
	mov %idVal_90 %varDef_568
	mov %oldVal_91 %varDef_568
	%newVal_92 = inc %oldVal_91
	mov %varDef_819 %newVal_92
	br <5>

<3> for_step
	mov %idVal_93 %varDef_496
	mov %oldVal_94 %varDef_496
	%newVal_95 = inc %oldVal_94
	mov %varDef_820 %newVal_95
	br <1>

<4> for_end
	mov %idVal_97 %varDef_499
	mov %varDef_821 %idVal_97
	mov %varDef_822 $str_1
	mov %varDef_823 28
	br <65>

<65> cfor_cond
	%varDef_825 = phi <4> %varDef_823 <70> %varDef_831
	%varDef_826 = phi <4> %varDef_822 <70> %varDef_830
	mov %cidVal_381 %varDef_825
	%cres_382 = ge %cidVal_381 0
	br %cres_382 <66> <71>

<66> cfor_body
	mov %cidVal_383 %varDef_821
	mov %cidVal_384 %varDef_825
	%cres_385 = rsft %cidVal_383 %cidVal_384
	%cres_386 = bit_and %cres_385 15
	mov %varDef_827 %cres_386
	mov %cidVal_387 %varDef_827
	%cres_388 = lt %cidVal_387 10
	br %cres_388 <67> <68>

<67> cif_true
	mov %cidVal_389 %varDef_826
	mov %cidVal_390 %varDef_827
	%cres_391 = add 48 %cidVal_390
	%cres_392 = int2chr ( %cres_391 )
	%cres_393 = __stringAdd ( %cidVal_389 %cres_392 )
	mov %varDef_828 %cres_393
	br <70>

<68> cif_false
	mov %cidVal_394 %varDef_826
	mov %cidVal_395 %varDef_827
	%cres_396 = add 65 %cidVal_395
	%cres_397 = sub %cres_396 10
	%cres_398 = int2chr ( %cres_397 )
	%cres_399 = __stringAdd ( %cidVal_394 %cres_398 )
	mov %varDef_829 %cres_399
	br <70>

<70> cfor_step
	%varDef_830 = phi <67> %varDef_828 <68> %varDef_829
	mov %cidVal_400 %varDef_825
	%cres_401 = sub %cidVal_400 4
	mov %varDef_831 %cres_401
	br <65>

<71> cfor_end
	mov %cidVal_402 %varDef_826
	mov %varDef_832 %cidVal_402
	mov %res_96 %varDef_832
	print ( %res_96 )
	print ( $str_2 )
	mov %idVal_99 %varDef_500
	mov %varDef_833 %idVal_99
	mov %varDef_834 $str_1
	mov %varDef_835 28
	br <74>

<74> cfor_cond
	%varDef_837 = phi <71> %varDef_835 <79> %varDef_843
	%varDef_838 = phi <71> %varDef_834 <79> %varDef_842
	mov %cidVal_408 %varDef_837
	%cres_409 = ge %cidVal_408 0
	br %cres_409 <75> <80>

<75> cfor_body
	mov %cidVal_410 %varDef_833
	mov %cidVal_411 %varDef_837
	%cres_412 = rsft %cidVal_410 %cidVal_411
	%cres_413 = bit_and %cres_412 15
	mov %varDef_839 %cres_413
	mov %cidVal_414 %varDef_839
	%cres_415 = lt %cidVal_414 10
	br %cres_415 <76> <77>

<76> cif_true
	mov %cidVal_416 %varDef_838
	mov %cidVal_417 %varDef_839
	%cres_418 = add 48 %cidVal_417
	%cres_419 = int2chr ( %cres_418 )
	%cres_420 = __stringAdd ( %cidVal_416 %cres_419 )
	mov %varDef_840 %cres_420
	br <79>

<77> cif_false
	mov %cidVal_421 %varDef_838
	mov %cidVal_422 %varDef_839
	%cres_423 = add 65 %cidVal_422
	%cres_424 = sub %cres_423 10
	%cres_425 = int2chr ( %cres_424 )
	%cres_426 = __stringAdd ( %cidVal_421 %cres_425 )
	mov %varDef_841 %cres_426
	br <79>

<79> cfor_step
	%varDef_842 = phi <76> %varDef_840 <77> %varDef_841
	mov %cidVal_427 %varDef_837
	%cres_428 = sub %cidVal_427 4
	mov %varDef_843 %cres_428
	br <74>

<80> cfor_end
	mov %cidVal_429 %varDef_838
	mov %varDef_844 %cidVal_429
	mov %res_98 %varDef_844
	print ( %res_98 )
	print ( $str_2 )
	mov %idVal_101 %varDef_501
	mov %varDef_845 %idVal_101
	mov %varDef_846 $str_1
	mov %varDef_847 28
	br <83>

<83> cfor_cond
	%varDef_849 = phi <80> %varDef_847 <88> %varDef_855
	%varDef_850 = phi <80> %varDef_846 <88> %varDef_854
	mov %cidVal_435 %varDef_849
	%cres_436 = ge %cidVal_435 0
	br %cres_436 <84> <89>

<84> cfor_body
	mov %cidVal_437 %varDef_845
	mov %cidVal_438 %varDef_849
	%cres_439 = rsft %cidVal_437 %cidVal_438
	%cres_440 = bit_and %cres_439 15
	mov %varDef_851 %cres_440
	mov %cidVal_441 %varDef_851
	%cres_442 = lt %cidVal_441 10
	br %cres_442 <85> <86>

<85> cif_true
	mov %cidVal_443 %varDef_850
	mov %cidVal_444 %varDef_851
	%cres_445 = add 48 %cidVal_444
	%cres_446 = int2chr ( %cres_445 )
	%cres_447 = __stringAdd ( %cidVal_443 %cres_446 )
	mov %varDef_852 %cres_447
	br <88>

<86> cif_false
	mov %cidVal_448 %varDef_850
	mov %cidVal_449 %varDef_851
	%cres_450 = add 65 %cidVal_449
	%cres_451 = sub %cres_450 10
	%cres_452 = int2chr ( %cres_451 )
	%cres_453 = __stringAdd ( %cidVal_448 %cres_452 )
	mov %varDef_853 %cres_453
	br <88>

<88> cfor_step
	%varDef_854 = phi <85> %varDef_852 <86> %varDef_853
	mov %cidVal_454 %varDef_849
	%cres_455 = sub %cidVal_454 4
	mov %varDef_855 %cres_455
	br <83>

<89> cfor_end
	mov %cidVal_456 %varDef_850
	mov %varDef_856 %cidVal_456
	mov %res_100 %varDef_856
	print ( %res_100 )
	print ( $str_2 )
	mov %idVal_103 %varDef_502
	mov %varDef_857 %idVal_103
	mov %varDef_858 $str_1
	mov %varDef_859 28
	br <92>

<92> cfor_cond
	%varDef_861 = phi <89> %varDef_859 <97> %varDef_867
	%varDef_862 = phi <89> %varDef_858 <97> %varDef_866
	mov %cidVal_462 %varDef_861
	%cres_463 = ge %cidVal_462 0
	br %cres_463 <93> <98>

<93> cfor_body
	mov %cidVal_464 %varDef_857
	mov %cidVal_465 %varDef_861
	%cres_466 = rsft %cidVal_464 %cidVal_465
	%cres_467 = bit_and %cres_466 15
	mov %varDef_863 %cres_467
	mov %cidVal_468 %varDef_863
	%cres_469 = lt %cidVal_468 10
	br %cres_469 <94> <95>

<94> cif_true
	mov %cidVal_470 %varDef_862
	mov %cidVal_471 %varDef_863
	%cres_472 = add 48 %cidVal_471
	%cres_473 = int2chr ( %cres_472 )
	%cres_474 = __stringAdd ( %cidVal_470 %cres_473 )
	mov %varDef_864 %cres_474
	br <97>

<95> cif_false
	mov %cidVal_475 %varDef_862
	mov %cidVal_476 %varDef_863
	%cres_477 = add 65 %cidVal_476
	%cres_478 = sub %cres_477 10
	%cres_479 = int2chr ( %cres_478 )
	%cres_480 = __stringAdd ( %cidVal_475 %cres_479 )
	mov %varDef_865 %cres_480
	br <97>

<97> cfor_step
	%varDef_866 = phi <94> %varDef_864 <95> %varDef_865
	mov %cidVal_481 %varDef_861
	%cres_482 = sub %cidVal_481 4
	mov %varDef_867 %cres_482
	br <92>

<98> cfor_end
	mov %cidVal_483 %varDef_862
	mov %varDef_868 %cidVal_483
	mov %res_102 %varDef_868
	print ( %res_102 )
	print ( $str_2 )
	println ( $str_1 )
	ret 0

}

