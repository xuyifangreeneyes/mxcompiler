default rel

global _asciiTable
global __globalInit
global hilo
global shift_l
global shift_r
global xorshift
global int2chr
global toStringHex
global getnumber
global main
global print
global println
global getString
global getInt
global toString
global __stringLength
global __stringSubstring
global __stringParseInt
global __stringOrd
global __arraySize
global __stringAdd
global __stringEq
global __stringNeq
global __stringLt
global __stringGt
global __stringLe
global __stringGe
global __printInt
global __printlnInt

extern strcmp
extern __sprintf_chk
extern __stack_chk_fail
extern memcpy
extern malloc
extern __isoc99_scanf
extern puts
extern __printf_chk

SECTION .text

__globalInit:
		mov     %local_r14, r14
		mov     %local_r12, r12
		mov     %local_r15, r15
		mov     %local_rbx, rbx
		mov     %local_r13, r13
		mov     qword [rel _asciiTable], __str_0
		mov     r14, %local_r14
		mov     r12, %local_r12
		mov     r15, %local_r15
		mov     rbx, %local_rbx
		mov     r13, %local_r13
		ret     

hilo:
		mov     %local_r14, r14
		mov     %local_r12, r12
		mov     %local_r15, r15
		mov     %local_rbx, rbx
		mov     %local_r13, r13
		mov     %argVal_0, rdi
		mov     %argVal_2, rsi
		mov     %res_6, %argVal_0
		shl     %res_6, 16
		mov     %res_7, %argVal_2
		or      %res_7, %res_6
		mov     r14, %local_r14
		mov     r12, %local_r12
		mov     r15, %local_r15
		mov     rbx, %local_rbx
		mov     r13, %local_r13
		mov     rax, %res_7
		ret     

shift_l:
		mov     %local_r14, r14
		mov     %local_r12, r12
		mov     %local_r15, r15
		mov     %local_rbx, rbx
		mov     %local_r13, r13
		mov     %argVal_0, rdi
		mov     %argVal_2, rsi
		mov     %res_6, %argVal_0
		mov     rcx, %argVal_2
		shl     %res_6, cl
__L_1:
		mov     %res_8, %res_6
		and     %res_8, 2147483647
		mov     r14, %local_r14
		mov     r12, %local_r12
		mov     r15, %local_r15
		mov     rbx, %local_rbx
		mov     r13, %local_r13
		mov     rax, %res_8
		ret     

shift_r:
		mov     %local_r14, r14
		mov     %local_r12, r12
		mov     %local_r15, r15
		mov     %local_rbx, rbx
		mov     %local_r13, r13
		mov     %argVal_0, rdi
		mov     %argVal_2, rsi
__L_2:
		mov     %res_8, 2147483647
		mov     rcx, %argVal_2
		sar     %res_8, cl
		mov     %res_9, %res_8
		shl     %res_9, 1
		mov     %res_10, %res_9
		add     %res_10, 1
		mov     %res_14, %argVal_0
		mov     rcx, %argVal_2
		sar     %res_14, cl
		mov     %res_15, %res_10
		and     %res_15, %res_14
		mov     %res_18, %res_15
		and     %res_18, 2147483647
		mov     r14, %local_r14
		mov     r12, %local_r12
		mov     r15, %local_r15
		mov     rbx, %local_rbx
		mov     r13, %local_r13
		mov     rax, %res_18
		ret     

xorshift:
		mov     %local_r14, r14
		mov     %local_r12, r12
		mov     %local_r15, r15
		mov     %local_rbx, rbx
		mov     %local_r13, r13
		mov     %argVal_0, rdi
		mov     %argVal_2, rsi
		mov     %res_6, %argVal_0
		add     %res_6, 1
		mov     %alloca_2, %res_6
		mov     %alloca_1, 0
__L_3:
		mov     %varDef_95, %alloca_2
		mov     %varDef_96, %alloca_1
		mov     %res_10, %argVal_2
		imul    %res_10, 10
		cmp     %varDef_96, %res_10
		jge     __L_4
__L_5:
		mov     %cres_34, %varDef_95
		shl     %cres_34, 13
		mov     %cres_36, %cres_34
		and     %cres_36, 2147483647
		mov     %res_15, %varDef_95
		xor     %res_15, %cres_36
		mov     %cres_50, %res_15
		sar     %cres_50, 17
		mov     %cres_51, 32767
		and     %cres_51, %cres_50
		mov     %cres_54, %cres_51
		and     %cres_54, 2147483647
		mov     %res_19, %res_15
		xor     %res_19, %cres_54
		mov     %cres_60, %res_19
		shl     %cres_60, 5
		mov     %cres_62, %cres_60
		and     %cres_62, 2147483647
		mov     %res_23, %res_19
		xor     %res_23, %cres_62
		mov     %newVal_26, %varDef_96
		inc     %newVal_26
		mov     %alloca_2, %res_23
		mov     %alloca_1, %newVal_26
		jmp     __L_3
__L_4:
		mov     %res_28, %varDef_95
		xor     %res_28, 123456789
		mov     r14, %local_r14
		mov     r12, %local_r12
		mov     r15, %local_r15
		mov     rbx, %local_rbx
		mov     r13, %local_r13
		mov     rax, %res_28
		ret     

int2chr:
		mov     %local_r14, r14
		mov     %local_r12, r12
		mov     %local_r15, r15
		mov     %local_rbx, rbx
		mov     %local_r13, r13
		mov     %argVal_0, rdi
		mov     %tmp_13, qword [rel _asciiTable]
		cmp     %argVal_0, 32
		jl      __L_6
__L_7:
		cmp     %argVal_0, 126
		jg      __L_6
__L_8:
		mov     %res_9, %argVal_0
		sub     %res_9, 32
		mov     rdi, %tmp_13
		mov     rsi, %res_9
		mov     rdx, %res_9
		call    __stringSubstring
		mov     %res_6, rax
		mov     r14, %local_r14
		mov     r12, %local_r12
		mov     r15, %local_r15
		mov     rbx, %local_rbx
		mov     r13, %local_r13
		mov     rax, %res_6
		ret     
__L_6:
		mov     r14, %local_r14
		mov     r12, %local_r12
		mov     r15, %local_r15
		mov     rbx, %local_rbx
		mov     r13, %local_r13
		mov     rax, __str_1
		ret     

toStringHex:
		mov     %local_r14, r14
		mov     %local_r12, r12
		mov     %local_r15, r15
		mov     %local_rbx, rbx
		mov     %local_r13, r13
		mov     %argVal_0, rdi
		mov     %tmp_52, qword [rel _asciiTable]
		mov     %alloca_6, __str_1
		mov     %alloca_5, 28
__L_9:
		mov     %varDef_57, %alloca_6
		mov     %varDef_58, %alloca_5
		cmp     %varDef_58, 0
		jl      __L_10
__L_11:
		mov     %res_9, %argVal_0
		mov     rcx, %varDef_58
		sar     %res_9, cl
		mov     %res_10, %res_9
		and     %res_10, 15
		cmp     %res_10, 10
		jge     __L_12
__L_13:
		mov     %res_16, 48
		add     %res_16, %res_10
		cmp     %res_16, 32
		jl      __L_14
__L_15:
		cmp     %res_16, 126
		jg      __L_14
__L_16:
		mov     %cres_35, %res_16
		sub     %cres_35, 32
		mov     rdi, %tmp_52
		mov     rsi, %cres_35
		mov     rdx, %cres_35
		call    __stringSubstring
		mov     %cres_38, rax
		mov     %alloca_3, %cres_38
		jmp     __L_17
__L_14:
		mov     %alloca_3, __str_1
__L_17:
		mov     %varDef_68, %alloca_3
		mov     rdi, %varDef_57
		mov     rsi, %varDef_68
		call    __stringAdd
		mov     %res_17, rax
		mov     %alloca_7, %res_17
		jmp     __L_18
__L_12:
		mov     %res_21, 65
		add     %res_21, %res_10
		mov     %res_22, %res_21
		sub     %res_22, 10
		cmp     %res_22, 32
		jl      __L_19
__L_20:
		cmp     %res_22, 126
		jg      __L_19
__L_21:
		mov     %cres_47, %res_22
		sub     %cres_47, 32
		mov     rdi, %tmp_52
		mov     rsi, %cres_47
		mov     rdx, %cres_47
		call    __stringSubstring
		mov     %cres_50, rax
		mov     %alloca_4, %cres_50
		jmp     __L_22
__L_19:
		mov     %alloca_4, __str_1
__L_22:
		mov     %varDef_73, %alloca_4
		mov     rdi, %varDef_57
		mov     rsi, %varDef_73
		call    __stringAdd
		mov     %res_23, rax
		mov     %alloca_7, %res_23
__L_18:
		mov     %varDef_75, %alloca_7
		mov     %res_25, %varDef_58
		sub     %res_25, 4
		mov     %alloca_6, %varDef_75
		mov     %alloca_5, %res_25
		jmp     __L_9
__L_10:
		mov     r14, %local_r14
		mov     r12, %local_r12
		mov     r15, %local_r15
		mov     rbx, %local_rbx
		mov     r13, %local_r13
		mov     rax, %varDef_57
		ret     

getnumber:
		mov     %local_r14, r14
		mov     %local_r12, r12
		mov     %local_r15, r15
		mov     %local_rbx, rbx
		mov     %local_r13, r13
		mov     %argVal_0, rdi
		mov     %argVal_2, rsi
		mov     %argVal_4, rdx
		mov     %res_8, %argVal_4
		and     %res_8, 31
__L_23:
		mov     %cres_27, %argVal_0
		add     %cres_27, 1
		mov     %alloca_9, 0
		mov     %alloca_8, %cres_27
__L_24:
		mov     %varDef_91, %alloca_9
		mov     %varDef_92, %alloca_8
		mov     %cres_30, %argVal_2
		imul    %cres_30, 10
		cmp     %varDef_91, %cres_30
		jge     __L_25
__L_26:
		mov     %cres_80, %varDef_92
		shl     %cres_80, 13
		mov     rdi, 32767
		mov     rsi, 65535
		call    hilo
		mov     %cres_81, rax
		mov     %cres_82, %cres_80
		and     %cres_82, %cres_81
		mov     %cres_35, %varDef_92
		xor     %cres_35, %cres_82
		mov     rdi, %cres_35
		mov     rsi, 17
		call    shift_r
		mov     %cres_38, rax
		mov     %cres_39, %cres_35
		xor     %cres_39, %cres_38
		mov     rdi, %cres_39
		mov     rsi, 5
		call    shift_l
		mov     %cres_42, rax
		mov     %cres_43, %cres_39
		xor     %cres_43, %cres_42
		mov     %cnewVal_46, %varDef_91
		inc     %cnewVal_46
		mov     %alloca_9, %cnewVal_46
		mov     %alloca_8, %cres_43
		jmp     __L_24
__L_25:
		mov     %cres_48, %varDef_92
		xor     %cres_48, 123456789
		mov     %cres_54, %cres_48
		mov     rcx, %res_8
		shl     %cres_54, cl
		mov     rdi, 32767
		mov     rsi, 65535
		call    hilo
		mov     %cres_55, rax
		mov     %cres_56, %cres_54
		and     %cres_56, %cres_55
		mov     %res_19, 32
		sub     %res_19, %res_8
		mov     rdi, 32767
		mov     rsi, 65535
		call    hilo
		mov     %cres_61, rax
		mov     %cres_64, %cres_61
		mov     rcx, %res_19
		sar     %cres_64, cl
		mov     %cres_65, %cres_64
		shl     %cres_65, 1
		mov     %cres_66, %cres_65
		add     %cres_66, 1
		mov     %cres_70, %cres_48
		mov     rcx, %res_19
		sar     %cres_70, cl
		mov     %cres_71, %cres_66
		and     %cres_71, %cres_70
		mov     rdi, 32767
		mov     rsi, 65535
		call    hilo
		mov     %cres_73, rax
		mov     %cres_74, %cres_71
		and     %cres_74, %cres_73
		mov     %res_20, %cres_56
		or      %res_20, %cres_74
		mov     r14, %local_r14
		mov     r12, %local_r12
		mov     r15, %local_r15
		mov     rbx, %local_rbx
		mov     r13, %local_r13
		mov     rax, %res_20
		ret     

main:
		mov     %local_r14, r14
		mov     %local_r12, r12
		mov     %local_r15, r15
		mov     %local_rbx, rbx
		mov     %local_r13, r13
		call    __globalInit
		call    getInt
		mov     %res_9, rax
		call    getInt
		mov     %res_10, rax
		call    getInt
		mov     %res_11, rax
		call    getInt
		mov     %res_12, rax
		call    getInt
		mov     %res_13, rax
		call    getInt
		mov     %res_14, rax
		mov     %alloca_178, %res_9
		mov     %alloca_177, 0
		mov     %alloca_176, 0
		mov     %alloca_175, 0
		mov     %alloca_174, 0
__L_27:
		mov     %varDef_496, %alloca_178
		mov     %varDef_499, %alloca_177
		mov     %varDef_500, %alloca_176
		mov     %varDef_501, %alloca_175
		mov     %varDef_502, %alloca_174
		cmp     %varDef_496, %res_10
		jge     __L_28
__L_29:
		mov     %alloca_87, %res_11
		mov     %alloca_86, %varDef_499
		mov     %alloca_85, %varDef_500
		mov     %alloca_84, %varDef_501
		mov     %alloca_83, %varDef_502
		mov     %alloca_82, %varDef_574
		mov     %alloca_81, %varDef_575
		mov     %alloca_80, %varDef_576
		mov     %alloca_79, %varDef_577
		mov     %alloca_78, %varDef_578
		mov     %alloca_77, %varDef_579
		mov     %alloca_76, %varDef_580
		mov     %alloca_75, %varDef_581
		mov     %alloca_74, %varDef_582
		mov     %alloca_73, %varDef_583
		mov     %alloca_72, %varDef_584
		mov     %alloca_71, %varDef_585
		mov     %alloca_70, %varDef_586
		mov     %alloca_69, %varDef_587
		mov     %alloca_68, %varDef_588
		mov     %alloca_67, %varDef_589
		mov     %alloca_66, %varDef_590
		mov     %alloca_65, %varDef_591
		mov     %alloca_64, %varDef_592
		mov     %alloca_63, %varDef_593
		mov     %alloca_62, %varDef_594
		mov     %alloca_61, %varDef_595
		mov     %alloca_60, %varDef_596
		mov     %alloca_59, %varDef_597
		mov     %alloca_58, %varDef_598
		mov     %alloca_57, %varDef_599
		mov     %alloca_56, %varDef_600
		mov     %alloca_55, %varDef_601
		mov     %alloca_54, %varDef_602
		mov     %alloca_53, %varDef_603
		mov     %alloca_52, %varDef_604
		mov     %alloca_51, %varDef_605
		mov     %alloca_50, %varDef_606
		mov     %alloca_49, %varDef_607
		mov     %alloca_48, %varDef_608
		mov     %alloca_47, %varDef_609
		mov     %alloca_46, %varDef_610
		mov     %alloca_45, %varDef_611
		mov     %alloca_44, %varDef_612
		mov     %alloca_43, %varDef_613
		mov     %alloca_42, %varDef_614
		mov     %alloca_41, %varDef_615
		mov     %alloca_40, %varDef_616
		mov     %alloca_39, %varDef_617
		mov     %alloca_38, %varDef_618
		mov     %alloca_37, %varDef_619
		mov     %alloca_36, %varDef_620
		mov     %alloca_35, %varDef_621
		mov     %alloca_34, %varDef_622
		mov     %alloca_33, %varDef_623
		mov     %alloca_32, %varDef_624
		mov     %alloca_31, %varDef_625
		mov     %alloca_30, %varDef_626
		mov     %alloca_29, %varDef_627
		mov     %alloca_28, %varDef_628
		mov     %alloca_27, %varDef_629
		mov     %alloca_26, %varDef_630
		mov     %alloca_25, %varDef_631
		mov     %alloca_24, %varDef_632
		mov     %alloca_23, %varDef_633
		mov     %alloca_22, %varDef_634
		mov     %alloca_21, %varDef_635
		mov     %alloca_20, %varDef_636
		mov     %alloca_19, %varDef_637
__L_30:
		mov     %varDef_568, %alloca_87
		mov     %varDef_570, %alloca_86
		mov     %varDef_571, %alloca_85
		mov     %varDef_572, %alloca_84
		mov     %varDef_573, %alloca_83
		mov     %varDef_574, %alloca_82
		mov     %varDef_575, %alloca_81
		mov     %varDef_576, %alloca_80
		mov     %varDef_577, %alloca_79
		mov     %varDef_578, %alloca_78
		mov     %varDef_579, %alloca_77
		mov     %varDef_580, %alloca_76
		mov     %varDef_581, %alloca_75
		mov     %varDef_582, %alloca_74
		mov     %varDef_583, %alloca_73
		mov     %varDef_584, %alloca_72
		mov     %varDef_585, %alloca_71
		mov     %varDef_586, %alloca_70
		mov     %varDef_587, %alloca_69
		mov     %varDef_588, %alloca_68
		mov     %varDef_589, %alloca_67
		mov     %varDef_590, %alloca_66
		mov     %varDef_591, %alloca_65
		mov     %varDef_592, %alloca_64
		mov     %varDef_593, %alloca_63
		mov     %varDef_594, %alloca_62
		mov     %varDef_595, %alloca_61
		mov     %varDef_596, %alloca_60
		mov     %varDef_597, %alloca_59
		mov     %varDef_598, %alloca_58
		mov     %varDef_599, %alloca_57
		mov     %varDef_600, %alloca_56
		mov     %varDef_601, %alloca_55
		mov     %varDef_602, %alloca_54
		mov     %varDef_603, %alloca_53
		mov     %varDef_604, %alloca_52
		mov     %varDef_605, %alloca_51
		mov     %varDef_606, %alloca_50
		mov     %varDef_607, %alloca_49
		mov     %varDef_608, %alloca_48
		mov     %varDef_609, %alloca_47
		mov     %varDef_610, %alloca_46
		mov     %varDef_611, %alloca_45
		mov     %varDef_612, %alloca_44
		mov     %varDef_613, %alloca_43
		mov     %varDef_614, %alloca_42
		mov     %varDef_615, %alloca_41
		mov     %varDef_616, %alloca_40
		mov     %varDef_617, %alloca_39
		mov     %varDef_618, %alloca_38
		mov     %varDef_619, %alloca_37
		mov     %varDef_620, %alloca_36
		mov     %varDef_621, %alloca_35
		mov     %varDef_622, %alloca_34
		mov     %varDef_623, %alloca_33
		mov     %varDef_624, %alloca_32
		mov     %varDef_625, %alloca_31
		mov     %varDef_626, %alloca_30
		mov     %varDef_627, %alloca_29
		mov     %varDef_628, %alloca_28
		mov     %varDef_629, %alloca_27
		mov     %varDef_630, %alloca_26
		mov     %varDef_631, %alloca_25
		mov     %varDef_632, %alloca_24
		mov     %varDef_633, %alloca_23
		mov     %varDef_634, %alloca_22
		mov     %varDef_635, %alloca_21
		mov     %varDef_636, %alloca_20
		mov     %varDef_637, %alloca_19
		cmp     %varDef_568, %res_12
		jge     __L_31
__L_32:
		mov     %alloca_166, %res_13
		mov     %alloca_165, %varDef_570
		mov     %alloca_164, %varDef_571
		mov     %alloca_163, %varDef_572
		mov     %alloca_162, %varDef_573
		mov     %alloca_161, %varDef_574
		mov     %alloca_160, %varDef_575
		mov     %alloca_159, %varDef_576
		mov     %alloca_158, %varDef_577
		mov     %alloca_157, %varDef_578
		mov     %alloca_156, %varDef_579
		mov     %alloca_155, %varDef_580
		mov     %alloca_154, %varDef_581
		mov     %alloca_153, %varDef_582
		mov     %alloca_152, %varDef_583
		mov     %alloca_151, %varDef_584
		mov     %alloca_150, %varDef_585
		mov     %alloca_149, %varDef_586
		mov     %alloca_148, %varDef_587
		mov     %alloca_147, %varDef_588
		mov     %alloca_146, %varDef_589
		mov     %alloca_145, %varDef_590
		mov     %alloca_144, %varDef_591
		mov     %alloca_143, %varDef_592
		mov     %alloca_142, %varDef_593
		mov     %alloca_141, %varDef_594
		mov     %alloca_140, %varDef_595
		mov     %alloca_139, %varDef_596
		mov     %alloca_138, %varDef_597
		mov     %alloca_137, %varDef_598
		mov     %alloca_136, %varDef_599
		mov     %alloca_135, %varDef_600
		mov     %alloca_134, %varDef_601
		mov     %alloca_133, %varDef_602
		mov     %alloca_132, %varDef_603
		mov     %alloca_131, %varDef_604
		mov     %alloca_130, %varDef_605
		mov     %alloca_129, %varDef_606
		mov     %alloca_128, %varDef_607
		mov     %alloca_127, %varDef_608
		mov     %alloca_126, %varDef_609
		mov     %alloca_125, %varDef_610
		mov     %alloca_124, %varDef_611
		mov     %alloca_123, %varDef_612
		mov     %alloca_122, %varDef_613
		mov     %alloca_121, %varDef_614
		mov     %alloca_120, %varDef_615
		mov     %alloca_119, %varDef_616
		mov     %alloca_118, %varDef_617
		mov     %alloca_117, %varDef_618
		mov     %alloca_116, %varDef_619
		mov     %alloca_115, %varDef_620
		mov     %alloca_114, %varDef_621
		mov     %alloca_113, %varDef_622
		mov     %alloca_112, %varDef_623
		mov     %alloca_111, %varDef_624
		mov     %alloca_110, %varDef_625
		mov     %alloca_109, %varDef_626
		mov     %alloca_108, %varDef_627
		mov     %alloca_107, %varDef_628
		mov     %alloca_106, %varDef_629
		mov     %alloca_105, %varDef_630
		mov     %alloca_104, %varDef_631
		mov     %alloca_103, %varDef_632
		mov     %alloca_102, %varDef_633
		mov     %alloca_101, %varDef_634
		mov     %alloca_100, %varDef_635
		mov     %alloca_99, %varDef_636
		mov     %alloca_98, %varDef_637
__L_33:
		mov     %varDef_639, %alloca_166
		mov     %varDef_640, %alloca_165
		mov     %varDef_641, %alloca_164
		mov     %varDef_642, %alloca_163
		mov     %varDef_643, %alloca_162
		mov     %varDef_644, %alloca_161
		mov     %varDef_645, %alloca_160
		mov     %varDef_646, %alloca_159
		mov     %varDef_647, %alloca_158
		mov     %varDef_648, %alloca_157
		mov     %varDef_649, %alloca_156
		mov     %varDef_650, %alloca_155
		mov     %varDef_651, %alloca_154
		mov     %varDef_652, %alloca_153
		mov     %varDef_653, %alloca_152
		mov     %varDef_654, %alloca_151
		mov     %varDef_655, %alloca_150
		mov     %varDef_656, %alloca_149
		mov     %varDef_657, %alloca_148
		mov     %varDef_658, %alloca_147
		mov     %varDef_659, %alloca_146
		mov     %varDef_660, %alloca_145
		mov     %varDef_661, %alloca_144
		mov     %varDef_662, %alloca_143
		mov     %varDef_663, %alloca_142
		mov     %varDef_664, %alloca_141
		mov     %varDef_665, %alloca_140
		mov     %varDef_666, %alloca_139
		mov     %varDef_667, %alloca_138
		mov     %varDef_668, %alloca_137
		mov     %varDef_669, %alloca_136
		mov     %varDef_670, %alloca_135
		mov     %varDef_671, %alloca_134
		mov     %varDef_672, %alloca_133
		mov     %varDef_673, %alloca_132
		mov     %varDef_674, %alloca_131
		mov     %varDef_675, %alloca_130
		mov     %varDef_676, %alloca_129
		mov     %varDef_677, %alloca_128
		mov     %varDef_678, %alloca_127
		mov     %varDef_679, %alloca_126
		mov     %varDef_680, %alloca_125
		mov     %varDef_681, %alloca_124
		mov     %varDef_682, %alloca_123
		mov     %varDef_683, %alloca_122
		mov     %varDef_684, %alloca_121
		mov     %varDef_685, %alloca_120
		mov     %varDef_686, %alloca_119
		mov     %varDef_687, %alloca_118
		mov     %varDef_688, %alloca_117
		mov     %varDef_689, %alloca_116
		mov     %varDef_690, %alloca_115
		mov     %varDef_691, %alloca_114
		mov     %varDef_692, %alloca_113
		mov     %varDef_693, %alloca_112
		mov     %varDef_694, %alloca_111
		mov     %varDef_695, %alloca_110
		mov     %varDef_696, %alloca_109
		mov     %varDef_697, %alloca_108
		mov     %varDef_698, %alloca_107
		mov     %varDef_699, %alloca_106
		mov     %varDef_700, %alloca_105
		mov     %varDef_701, %alloca_104
		mov     %varDef_702, %alloca_103
		mov     %varDef_703, %alloca_102
		mov     %varDef_704, %alloca_101
		mov     %varDef_705, %alloca_100
		mov     %varDef_706, %alloca_99
		mov     %varDef_707, %alloca_98
		cmp     %varDef_639, %res_14
		jge     __L_34
__L_35:
		mov     %cres_111, %varDef_639
		and     %cres_111, 31
		mov     rdi, %res_9
		mov     rsi, 30
		call    xorshift
		mov     %cres_114, rax
		mov     rdi, %cres_114
		mov     rsi, %cres_111
		call    shift_l
		mov     %cres_117, rax
		mov     %cres_120, 32
		sub     %cres_120, %cres_111
		mov     rdi, %cres_114
		mov     rsi, %cres_120
		call    shift_r
		mov     %cres_121, rax
		mov     %cres_122, %cres_117
		or      %cres_122, %cres_121
		mov     rdi, %varDef_496
		mov     rsi, 30
		call    xorshift
		mov     %cres_133, rax
		mov     rdi, %cres_133
		mov     rsi, %cres_111
		call    shift_l
		mov     %cres_136, rax
		mov     rdi, %cres_133
		mov     rsi, %cres_120
		call    shift_r
		mov     %cres_140, rax
		mov     %cres_141, %cres_136
		or      %cres_141, %cres_140
		mov     rdi, %varDef_568
		mov     rsi, 30
		call    xorshift
		mov     %cres_152, rax
		mov     rdi, %cres_152
		mov     rsi, %cres_111
		call    shift_l
		mov     %cres_155, rax
		mov     rdi, %cres_152
		mov     rsi, %cres_120
		call    shift_r
		mov     %cres_159, rax
		mov     %cres_160, %cres_155
		or      %cres_160, %cres_159
		mov     %res_51, %varDef_496
		xor     %res_51, %varDef_568
		mov     rdi, %res_51
		mov     rsi, 30
		call    xorshift
		mov     %cres_171, rax
		mov     rdi, %cres_171
		mov     rsi, %cres_111
		call    shift_l
		mov     %cres_174, rax
		mov     rdi, %cres_171
		mov     rsi, %cres_120
		call    shift_r
		mov     %cres_178, rax
		mov     %cres_179, %cres_174
		or      %cres_179, %cres_178
		mov     %cres_186, %varDef_639
		add     %cres_186, 1
		mov     %alloca_89, 0
		mov     %alloca_88, %cres_186
__L_36:
		mov     %varDef_740, %alloca_89
		mov     %varDef_741, %alloca_88
		cmp     %varDef_740, 10
		jge     __L_37
__L_38:
		mov     rdi, %varDef_741
		mov     rsi, 13
		call    shift_l
		mov     %cres_193, rax
		mov     %cres_194, %varDef_741
		xor     %cres_194, %cres_193
		mov     rdi, %cres_194
		mov     rsi, 17
		call    shift_r
		mov     %cres_197, rax
		mov     %cres_198, %cres_194
		xor     %cres_198, %cres_197
		mov     rdi, %cres_198
		mov     rsi, 5
		call    shift_l
		mov     %cres_201, rax
		mov     %cres_202, %cres_198
		xor     %cres_202, %cres_201
		mov     %cnewVal_205, %varDef_740
		inc     %cnewVal_205
		mov     %alloca_89, %cnewVal_205
		mov     %alloca_88, %cres_202
		jmp     __L_36
__L_37:
		mov     %cres_207, %varDef_741
		xor     %cres_207, 123456789
		mov     %cres_214, %varDef_568
		add     %cres_214, 1
		mov     %alloca_168, 0
		mov     %alloca_167, %cres_214
__L_39:
		mov     %varDef_751, %alloca_168
		mov     %varDef_752, %alloca_167
		cmp     %varDef_751, 10
		jge     __L_40
__L_41:
		mov     rdi, %varDef_752
		mov     rsi, 13
		call    shift_l
		mov     %cres_221, rax
		mov     %cres_222, %varDef_752
		xor     %cres_222, %cres_221
		mov     rdi, %cres_222
		mov     rsi, 17
		call    shift_r
		mov     %cres_225, rax
		mov     %cres_226, %cres_222
		xor     %cres_226, %cres_225
		mov     rdi, %cres_226
		mov     rsi, 5
		call    shift_l
		mov     %cres_229, rax
		mov     %cres_230, %cres_226
		xor     %cres_230, %cres_229
		mov     %cnewVal_233, %varDef_751
		inc     %cnewVal_233
		mov     %alloca_168, %cnewVal_233
		mov     %alloca_167, %cres_230
		jmp     __L_39
__L_40:
		mov     %cres_235, %varDef_752
		xor     %cres_235, 123456789
		mov     %res_59, %cres_207
		xor     %res_59, %cres_235
		mov     %cres_242, %varDef_496
		add     %cres_242, 1
		mov     %alloca_14, 0
		mov     %alloca_13, %cres_242
__L_42:
		mov     %varDef_762, %alloca_14
		mov     %varDef_763, %alloca_13
		cmp     %varDef_762, 10
		jge     __L_43
__L_44:
		mov     rdi, %varDef_763
		mov     rsi, 13
		call    shift_l
		mov     %cres_249, rax
		mov     %cres_250, %varDef_763
		xor     %cres_250, %cres_249
		mov     rdi, %cres_250
		mov     rsi, 17
		call    shift_r
		mov     %cres_253, rax
		mov     %cres_254, %cres_250
		xor     %cres_254, %cres_253
		mov     rdi, %cres_254
		mov     rsi, 5
		call    shift_l
		mov     %cres_257, rax
		mov     %cres_258, %cres_254
		xor     %cres_258, %cres_257
		mov     %cnewVal_261, %varDef_762
		inc     %cnewVal_261
		mov     %alloca_14, %cnewVal_261
		mov     %alloca_13, %cres_258
		jmp     __L_42
__L_43:
		mov     %cres_263, %varDef_763
		xor     %cres_263, 123456789
		mov     %res_62, %res_59
		xor     %res_62, %cres_263
		mov     %res_67, %cres_122
		xor     %res_67, %res_62
		mov     %cres_270, %res_67
		add     %cres_270, 1
		mov     %alloca_12, 0
		mov     %alloca_11, %cres_270
__L_45:
		mov     %varDef_774, %alloca_12
		mov     %varDef_775, %alloca_11
		cmp     %varDef_774, 10
		jge     __L_46
__L_47:
		mov     rdi, %varDef_775
		mov     rsi, 13
		call    shift_l
		mov     %cres_277, rax
		mov     %cres_278, %varDef_775
		xor     %cres_278, %cres_277
		mov     rdi, %cres_278
		mov     rsi, 17
		call    shift_r
		mov     %cres_281, rax
		mov     %cres_282, %cres_278
		xor     %cres_282, %cres_281
		mov     rdi, %cres_282
		mov     rsi, 5
		call    shift_l
		mov     %cres_285, rax
		mov     %cres_286, %cres_282
		xor     %cres_286, %cres_285
		mov     %cnewVal_289, %varDef_774
		inc     %cnewVal_289
		mov     %alloca_12, %cnewVal_289
		mov     %alloca_11, %cres_286
		jmp     __L_45
__L_46:
		mov     %cres_291, %varDef_775
		xor     %cres_291, 123456789
		mov     %res_68, %varDef_640
		add     %res_68, %cres_291
		mov     %res_73, %cres_141
		xor     %res_73, %res_62
		mov     %cres_298, %res_73
		add     %cres_298, 1
		mov     %alloca_97, 0
		mov     %alloca_96, %cres_298
__L_48:
		mov     %varDef_786, %alloca_97
		mov     %varDef_787, %alloca_96
		cmp     %varDef_786, 10
		jge     __L_49
__L_50:
		mov     rdi, %varDef_787
		mov     rsi, 13
		call    shift_l
		mov     %cres_305, rax
		mov     %cres_306, %varDef_787
		xor     %cres_306, %cres_305
		mov     rdi, %cres_306
		mov     rsi, 17
		call    shift_r
		mov     %cres_309, rax
		mov     %cres_310, %cres_306
		xor     %cres_310, %cres_309
		mov     rdi, %cres_310
		mov     rsi, 5
		call    shift_l
		mov     %cres_313, rax
		mov     %cres_314, %cres_310
		xor     %cres_314, %cres_313
		mov     %cnewVal_317, %varDef_786
		inc     %cnewVal_317
		mov     %alloca_97, %cnewVal_317
		mov     %alloca_96, %cres_314
		jmp     __L_48
__L_49:
		mov     %cres_319, %varDef_787
		xor     %cres_319, 123456789
		mov     %res_74, %varDef_641
		add     %res_74, %cres_319
		mov     %res_79, %cres_160
		xor     %res_79, %res_62
		mov     %cres_326, %res_79
		add     %cres_326, 1
		mov     %alloca_172, 0
		mov     %alloca_171, %cres_326
__L_51:
		mov     %varDef_798, %alloca_172
		mov     %varDef_799, %alloca_171
		cmp     %varDef_798, 10
		jge     __L_52
__L_53:
		mov     rdi, %varDef_799
		mov     rsi, 13
		call    shift_l
		mov     %cres_333, rax
		mov     %cres_334, %varDef_799
		xor     %cres_334, %cres_333
		mov     rdi, %cres_334
		mov     rsi, 17
		call    shift_r
		mov     %cres_337, rax
		mov     %cres_338, %cres_334
		xor     %cres_338, %cres_337
		mov     rdi, %cres_338
		mov     rsi, 5
		call    shift_l
		mov     %cres_341, rax
		mov     %cres_342, %cres_338
		xor     %cres_342, %cres_341
		mov     %cnewVal_345, %varDef_798
		inc     %cnewVal_345
		mov     %alloca_172, %cnewVal_345
		mov     %alloca_171, %cres_342
		jmp     __L_51
__L_52:
		mov     %cres_347, %varDef_799
		xor     %cres_347, 123456789
		mov     %res_80, %varDef_642
		add     %res_80, %cres_347
		mov     %res_85, %cres_179
		xor     %res_85, %res_62
		mov     %cres_354, %res_85
		add     %cres_354, 1
		mov     %alloca_91, 0
		mov     %alloca_90, %cres_354
__L_54:
		mov     %varDef_810, %alloca_91
		mov     %varDef_811, %alloca_90
		cmp     %varDef_810, 10
		jge     __L_55
__L_56:
		mov     rdi, %varDef_811
		mov     rsi, 13
		call    shift_l
		mov     %cres_361, rax
		mov     %cres_362, %varDef_811
		xor     %cres_362, %cres_361
		mov     rdi, %cres_362
		mov     rsi, 17
		call    shift_r
		mov     %cres_365, rax
		mov     %cres_366, %cres_362
		xor     %cres_366, %cres_365
		mov     rdi, %cres_366
		mov     rsi, 5
		call    shift_l
		mov     %cres_369, rax
		mov     %cres_370, %cres_366
		xor     %cres_370, %cres_369
		mov     %cnewVal_373, %varDef_810
		inc     %cnewVal_373
		mov     %alloca_91, %cnewVal_373
		mov     %alloca_90, %cres_370
		jmp     __L_54
__L_55:
		mov     %cres_375, %varDef_811
		xor     %cres_375, 123456789
		mov     %res_86, %varDef_643
		add     %res_86, %cres_375
		mov     %newVal_89, %varDef_639
		inc     %newVal_89
		mov     %alloca_166, %newVal_89
		mov     %alloca_165, %res_68
		mov     %alloca_164, %res_74
		mov     %alloca_163, %res_80
		mov     %alloca_162, %res_86
		mov     %alloca_161, %cres_122
		mov     %alloca_160, %cres_141
		mov     %alloca_159, %cres_160
		mov     %alloca_158, %cres_179
		mov     %alloca_157, %res_62
		mov     %alloca_156, %cres_122
		mov     %alloca_155, %cres_114
		mov     %alloca_154, %cres_111
		mov     %alloca_153, %varDef_639
		mov     %alloca_152, 30
		mov     %alloca_151, %res_9
		mov     %alloca_150, %cres_141
		mov     %alloca_149, %cres_133
		mov     %alloca_148, %cres_111
		mov     %alloca_147, %varDef_639
		mov     %alloca_146, 30
		mov     %alloca_145, %varDef_496
		mov     %alloca_144, %cres_160
		mov     %alloca_143, %cres_152
		mov     %alloca_142, %cres_111
		mov     %alloca_141, %varDef_639
		mov     %alloca_140, 30
		mov     %alloca_139, %varDef_568
		mov     %alloca_138, %cres_179
		mov     %alloca_137, %cres_171
		mov     %alloca_136, %cres_111
		mov     %alloca_135, %varDef_639
		mov     %alloca_134, 30
		mov     %alloca_133, %res_51
		mov     %alloca_132, %cres_207
		mov     %alloca_131, %varDef_740
		mov     %alloca_130, %varDef_741
		mov     %alloca_129, 1
		mov     %alloca_128, %varDef_639
		mov     %alloca_127, %cres_235
		mov     %alloca_126, %varDef_751
		mov     %alloca_125, %varDef_752
		mov     %alloca_124, 1
		mov     %alloca_123, %varDef_568
		mov     %alloca_122, %cres_263
		mov     %alloca_121, %varDef_762
		mov     %alloca_120, %varDef_763
		mov     %alloca_119, 1
		mov     %alloca_118, %varDef_496
		mov     %alloca_117, %cres_291
		mov     %alloca_116, %varDef_774
		mov     %alloca_115, %varDef_775
		mov     %alloca_114, 1
		mov     %alloca_113, %res_67
		mov     %alloca_112, %cres_319
		mov     %alloca_111, %varDef_786
		mov     %alloca_110, %varDef_787
		mov     %alloca_109, 1
		mov     %alloca_108, %res_73
		mov     %alloca_107, %cres_347
		mov     %alloca_106, %varDef_798
		mov     %alloca_105, %varDef_799
		mov     %alloca_104, 1
		mov     %alloca_103, %res_79
		mov     %alloca_102, %cres_375
		mov     %alloca_101, %varDef_810
		mov     %alloca_100, %varDef_811
		mov     %alloca_99, 1
		mov     %alloca_98, %res_85
		jmp     __L_33
__L_34:
		mov     %newVal_92, %varDef_568
		inc     %newVal_92
		mov     %alloca_87, %newVal_92
		mov     %alloca_86, %varDef_640
		mov     %alloca_85, %varDef_641
		mov     %alloca_84, %varDef_642
		mov     %alloca_83, %varDef_643
		mov     %alloca_82, %varDef_644
		mov     %alloca_81, %varDef_645
		mov     %alloca_80, %varDef_646
		mov     %alloca_79, %varDef_647
		mov     %alloca_78, %varDef_648
		mov     %alloca_77, %varDef_649
		mov     %alloca_76, %varDef_650
		mov     %alloca_75, %varDef_651
		mov     %alloca_74, %varDef_652
		mov     %alloca_73, %varDef_653
		mov     %alloca_72, %varDef_654
		mov     %alloca_71, %varDef_655
		mov     %alloca_70, %varDef_656
		mov     %alloca_69, %varDef_657
		mov     %alloca_68, %varDef_658
		mov     %alloca_67, %varDef_659
		mov     %alloca_66, %varDef_660
		mov     %alloca_65, %varDef_661
		mov     %alloca_64, %varDef_662
		mov     %alloca_63, %varDef_663
		mov     %alloca_62, %varDef_664
		mov     %alloca_61, %varDef_665
		mov     %alloca_60, %varDef_666
		mov     %alloca_59, %varDef_667
		mov     %alloca_58, %varDef_668
		mov     %alloca_57, %varDef_669
		mov     %alloca_56, %varDef_670
		mov     %alloca_55, %varDef_671
		mov     %alloca_54, %varDef_672
		mov     %alloca_53, %varDef_673
		mov     %alloca_52, %varDef_674
		mov     %alloca_51, %varDef_675
		mov     %alloca_50, %varDef_676
		mov     %alloca_49, %varDef_677
		mov     %alloca_48, %varDef_678
		mov     %alloca_47, %varDef_679
		mov     %alloca_46, %varDef_680
		mov     %alloca_45, %varDef_681
		mov     %alloca_44, %varDef_682
		mov     %alloca_43, %varDef_683
		mov     %alloca_42, %varDef_684
		mov     %alloca_41, %varDef_685
		mov     %alloca_40, %varDef_686
		mov     %alloca_39, %varDef_687
		mov     %alloca_38, %varDef_688
		mov     %alloca_37, %varDef_689
		mov     %alloca_36, %varDef_690
		mov     %alloca_35, %varDef_691
		mov     %alloca_34, %varDef_692
		mov     %alloca_33, %varDef_693
		mov     %alloca_32, %varDef_694
		mov     %alloca_31, %varDef_695
		mov     %alloca_30, %varDef_696
		mov     %alloca_29, %varDef_697
		mov     %alloca_28, %varDef_698
		mov     %alloca_27, %varDef_699
		mov     %alloca_26, %varDef_700
		mov     %alloca_25, %varDef_701
		mov     %alloca_24, %varDef_702
		mov     %alloca_23, %varDef_703
		mov     %alloca_22, %varDef_704
		mov     %alloca_21, %varDef_705
		mov     %alloca_20, %varDef_706
		mov     %alloca_19, %varDef_707
		jmp     __L_30
__L_31:
		mov     %newVal_95, %varDef_496
		inc     %newVal_95
		mov     %alloca_178, %newVal_95
		mov     %alloca_177, %varDef_570
		mov     %alloca_176, %varDef_571
		mov     %alloca_175, %varDef_572
		mov     %alloca_174, %varDef_573
		jmp     __L_27
__L_28:
		mov     %alloca_16, 28
		mov     %alloca_15, __str_1
__L_57:
		mov     %varDef_825, %alloca_16
		mov     %varDef_826, %alloca_15
		cmp     %varDef_825, 0
		jl      __L_58
__L_59:
		mov     %cres_385, %varDef_499
		mov     rcx, %varDef_825
		sar     %cres_385, cl
		mov     %cres_386, %cres_385
		and     %cres_386, 15
		cmp     %cres_386, 10
		jge     __L_60
__L_61:
		mov     %cres_391, 48
		add     %cres_391, %cres_386
		mov     rdi, %cres_391
		call    int2chr
		mov     %cres_392, rax
		mov     rdi, %varDef_826
		mov     rsi, %cres_392
		call    __stringAdd
		mov     %cres_393, rax
		mov     %alloca_173, %cres_393
		jmp     __L_62
__L_60:
		mov     %cres_396, 65
		add     %cres_396, %cres_386
		mov     %cres_397, %cres_396
		sub     %cres_397, 10
		mov     rdi, %cres_397
		call    int2chr
		mov     %cres_398, rax
		mov     rdi, %varDef_826
		mov     rsi, %cres_398
		call    __stringAdd
		mov     %cres_399, rax
		mov     %alloca_173, %cres_399
__L_62:
		mov     %varDef_830, %alloca_173
		mov     %cres_401, %varDef_825
		sub     %cres_401, 4
		mov     %alloca_16, %cres_401
		mov     %alloca_15, %varDef_830
		jmp     __L_57
__L_58:
		mov     rdi, %varDef_826
		call    print
		mov     rdi, __str_2
		call    print
		mov     %alloca_170, 28
		mov     %alloca_169, __str_1
__L_63:
		mov     %varDef_837, %alloca_170
		mov     %varDef_838, %alloca_169
		cmp     %varDef_837, 0
		jl      __L_64
__L_65:
		mov     %cres_412, %varDef_500
		mov     rcx, %varDef_837
		sar     %cres_412, cl
		mov     %cres_413, %cres_412
		and     %cres_413, 15
		cmp     %cres_413, 10
		jge     __L_66
__L_67:
		mov     %cres_418, 48
		add     %cres_418, %cres_413
		mov     rdi, %cres_418
		call    int2chr
		mov     %cres_419, rax
		mov     rdi, %varDef_838
		mov     rsi, %cres_419
		call    __stringAdd
		mov     %cres_420, rax
		mov     %alloca_10, %cres_420
		jmp     __L_68
__L_66:
		mov     %cres_423, 65
		add     %cres_423, %cres_413
		mov     %cres_424, %cres_423
		sub     %cres_424, 10
		mov     rdi, %cres_424
		call    int2chr
		mov     %cres_425, rax
		mov     rdi, %varDef_838
		mov     rsi, %cres_425
		call    __stringAdd
		mov     %cres_426, rax
		mov     %alloca_10, %cres_426
__L_68:
		mov     %varDef_842, %alloca_10
		mov     %cres_428, %varDef_837
		sub     %cres_428, 4
		mov     %alloca_170, %cres_428
		mov     %alloca_169, %varDef_842
		jmp     __L_63
__L_64:
		mov     rdi, %varDef_838
		call    print
		mov     rdi, __str_2
		call    print
		mov     %alloca_94, 28
		mov     %alloca_93, __str_1
__L_69:
		mov     %varDef_849, %alloca_94
		mov     %varDef_850, %alloca_93
		cmp     %varDef_849, 0
		jl      __L_70
__L_71:
		mov     %cres_439, %varDef_501
		mov     rcx, %varDef_849
		sar     %cres_439, cl
		mov     %cres_440, %cres_439
		and     %cres_440, 15
		cmp     %cres_440, 10
		jge     __L_72
__L_73:
		mov     %cres_445, 48
		add     %cres_445, %cres_440
		mov     rdi, %cres_445
		call    int2chr
		mov     %cres_446, rax
		mov     rdi, %varDef_850
		mov     rsi, %cres_446
		call    __stringAdd
		mov     %cres_447, rax
		mov     %alloca_92, %cres_447
		jmp     __L_74
__L_72:
		mov     %cres_450, 65
		add     %cres_450, %cres_440
		mov     %cres_451, %cres_450
		sub     %cres_451, 10
		mov     rdi, %cres_451
		call    int2chr
		mov     %cres_452, rax
		mov     rdi, %varDef_850
		mov     rsi, %cres_452
		call    __stringAdd
		mov     %cres_453, rax
		mov     %alloca_92, %cres_453
__L_74:
		mov     %varDef_854, %alloca_92
		mov     %cres_455, %varDef_849
		sub     %cres_455, 4
		mov     %alloca_94, %cres_455
		mov     %alloca_93, %varDef_854
		jmp     __L_69
__L_70:
		mov     rdi, %varDef_850
		call    print
		mov     rdi, __str_2
		call    print
		mov     %alloca_18, 28
		mov     %alloca_17, __str_1
__L_75:
		mov     %varDef_861, %alloca_18
		mov     %varDef_862, %alloca_17
		cmp     %varDef_861, 0
		jl      __L_76
__L_77:
		mov     %cres_466, %varDef_502
		mov     rcx, %varDef_861
		sar     %cres_466, cl
		mov     %cres_467, %cres_466
		and     %cres_467, 15
		cmp     %cres_467, 10
		jge     __L_78
__L_79:
		mov     %cres_472, 48
		add     %cres_472, %cres_467
		mov     rdi, %cres_472
		call    int2chr
		mov     %cres_473, rax
		mov     rdi, %varDef_862
		mov     rsi, %cres_473
		call    __stringAdd
		mov     %cres_474, rax
		mov     %alloca_95, %cres_474
		jmp     __L_80
__L_78:
		mov     %cres_477, 65
		add     %cres_477, %cres_467
		mov     %cres_478, %cres_477
		sub     %cres_478, 10
		mov     rdi, %cres_478
		call    int2chr
		mov     %cres_479, rax
		mov     rdi, %varDef_862
		mov     rsi, %cres_479
		call    __stringAdd
		mov     %cres_480, rax
		mov     %alloca_95, %cres_480
__L_80:
		mov     %varDef_866, %alloca_95
		mov     %cres_482, %varDef_861
		sub     %cres_482, 4
		mov     %alloca_18, %cres_482
		mov     %alloca_17, %varDef_866
		jmp     __L_75
__L_76:
		mov     rdi, %varDef_862
		call    print
		mov     rdi, __str_2
		call    print
		mov     rdi, __str_1
		call    println
		mov     r14, %local_r14
		mov     r12, %local_r12
		mov     r15, %local_r15
		mov     rbx, %local_rbx
		mov     r13, %local_r13
		mov     rax, 0
		ret     

SECTION .data

__str_0:
		dq      95
		db      20H, 21H, 22H, 23H, 24H, 25H, 26H, 27H, 28H, 29H, 2AH, 2BH, 2CH, 2DH, 2EH, 2FH, 30H, 31H, 32H, 33H, 34H, 35H, 36H, 37H, 38H, 39H, 3AH, 3BH, 3CH, 3DH, 3EH, 3FH, 40H, 41H, 42H, 43H, 44H, 45H, 46H, 47H, 48H, 49H, 4AH, 4BH, 4CH, 4DH, 4EH, 4FH, 50H, 51H, 52H, 53H, 54H, 55H, 56H, 57H, 58H, 59H, 5AH, 5BH, 5CH, 5DH, 5EH, 5FH, 60H, 61H, 62H, 63H, 64H, 65H, 66H, 67H, 68H, 69H, 6AH, 6BH, 6CH, 6DH, 6EH, 6FH, 70H, 71H, 72H, 73H, 74H, 75H, 76H, 77H, 78H, 79H, 7AH, 7BH, 7CH, 7DH, 7EH, 00H

__str_1:
		dq      0
		db      00H

__str_2:
		dq      1
		db      20H, 00H

SECTION .bss

_asciiTable:
		resb    8


SECTION .text   6

print:
        lea     rdx, [rdi+8H]
        mov     esi, L_011
        mov     edi, 1
        xor     eax, eax
        jmp     __printf_chk


        nop





ALIGN   16

println:
        add     rdi, 8
        jmp     puts






ALIGN   8

__printInt:
        mov     rdx, rdi
        mov     esi, L_012
        mov     edi, 1
        xor     eax, eax
        jmp     __printf_chk







ALIGN   16

__printlnInt:
        mov     rdx, rdi
        mov     esi, L_013
        mov     edi, 1
        xor     eax, eax
        jmp     __printf_chk







ALIGN   16

getString:
        push    r12
        push    rbp
        mov     edi, L_011
        push    rbx
        sub     rsp, 32784


        mov     rax, qword [fs:abs 28H]
        mov     qword [rsp+8008H], rax
        xor     eax, eax
        mov     rsi, rsp
        mov     rbp, rsp
        mov     rbx, rsp
        call    __isoc99_scanf
L_001:  mov     edx, dword [rbx]
        add     rbx, 4
        lea     eax, [rdx-1010101H]
        not     edx
        and     eax, edx
        and     eax, 80808080H
        jz      L_001
        mov     edx, eax
        shr     edx, 16
        test    eax, 8080H
        cmove   eax, edx
        lea     rdx, [rbx+2H]
        mov     ecx, eax
        cmove   rbx, rdx
        add     cl, al
        sbb     rbx, 3
        sub     rbx, rbp
        lea     rdi, [rbx+8H]
        call    malloc
        lea     rdx, [rbx+1H]
        lea     rdi, [rax+8H]
        mov     qword [rax], rbx
        mov     rsi, rbp
        mov     r12, rax
        call    memcpy
        mov     rcx, qword [rsp+8008H]


        xor     rcx, qword [fs:abs 28H]
        mov     rax, r12
        jnz     L_002
        add     rsp, 32784
        pop     rbx
        pop     rbp
        pop     r12
        ret

L_002:  call    __stack_chk_fail




ALIGN   8

getInt:
        sub     rsp, 24
        mov     edi, L_012


        mov     rax, qword [fs:abs 28H]
        mov     qword [rsp+8H], rax
        xor     eax, eax
        mov     rsi, rsp
        call    __isoc99_scanf
        mov     rdx, qword [rsp+8H]


        xor     rdx, qword [fs:abs 28H]
        mov     rax, qword [rsp]
        jnz     L_003
        add     rsp, 24
        ret

L_003:  call    __stack_chk_fail
        nop
ALIGN   16

toString:
        push    rbp
        push    rbx
        mov     rbp, rdi
        mov     edi, 32
        sub     rsp, 8
        call    malloc
        lea     rdi, [rax+8H]
        mov     rbx, rax
        mov     r8, rbp
        mov     ecx, L_012
        mov     edx, 24
        mov     esi, 1
        xor     eax, eax
        call    __sprintf_chk
        cdqe
        mov     qword [rbx], rax
        add     rsp, 8
        mov     rax, rbx
        pop     rbx
        pop     rbp
        ret







ALIGN   16

__stringLength:
        mov     rax, qword [rdi]
        ret







ALIGN   16

__stringSubstring:
        sub     rdx, rsi
        push    r14
        mov     r14, rdi
        push    r13
        lea     rdi, [rdx+0AH]
        push    r12
        lea     r12, [rdx+1H]
        push    rbp
        push    rbx
        mov     r13, rsi
        mov     rbx, rdx
        call    malloc
        test    r12, r12
        mov     rbp, rax
        mov     qword [rax], r12
        jle     L_004
        lea     rdi, [rax+8H]
        lea     rsi, [r14+r13+8H]
        mov     rdx, r12
        call    memcpy
L_004:  mov     byte [rbp+rbx+9H], 0
        mov     rax, rbp
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        ret






ALIGN   8

__stringParseInt:
        movsx   edx, byte [rdi+8H]
        cmp     dl, 45
        jz      L_007
        lea     eax, [rdx-30H]
        cmp     al, 9
        ja      L_008
        lea     rcx, [rdi+8H]
        xor     edi, edi
L_005:  xor     eax, eax




ALIGN   16
L_006:  sub     edx, 48
        lea     rax, [rax+rax*4]
        add     rcx, 1
        movsxd  rdx, edx
        lea     rax, [rdx+rax*2]
        movsx   edx, byte [rcx]
        lea     esi, [rdx-30H]
        cmp     sil, 9
        jbe     L_006
        mov     rdx, rax
        neg     rdx
        test    edi, edi
        cmovne  rax, rdx
        ret





ALIGN   8
L_007:  movsx   edx, byte [rdi+9H]
        lea     rcx, [rdi+9H]
        lea     eax, [rdx-30H]
        cmp     al, 9
        ja      L_008
        mov     edi, 1
        jmp     L_005

L_008:  xor     eax, eax
        ret






ALIGN   8

__stringOrd:
        movsx   rax, byte [rdi+rsi+8H]
        ret







ALIGN   16

__stringAdd:
        push    r15
        push    r14
        mov     r14, rsi
        push    r13
        push    r12
        push    rbp
        push    rbx
        sub     rsp, 24
        mov     r12, qword [rdi]
        mov     rbp, qword [rsi]
        mov     qword [rsp+8H], rdi
        lea     r13, [r12+8H]
        lea     r15, [r13+rbp]
        lea     rdi, [r15+1H]
        call    malloc
        mov     rbx, rax
        lea     rax, [r12+rbp]
        test    r12, r12
        mov     rdx, qword [rsp+8H]
        mov     qword [rbx], rax
        jle     L_009
        lea     rsi, [rdx+8H]
        lea     rdi, [rbx+8H]
        mov     rdx, r12
        call    memcpy
L_009:  test    rbp, rbp
        jle     L_010
        lea     rdi, [rbx+r13]
        lea     rsi, [r14+8H]
        mov     rdx, rbp
        call    memcpy
L_010:  mov     byte [rbx+r15], 0
        add     rsp, 24
        mov     rax, rbx
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        ret


        nop

ALIGN   16
__stringEq:
        sub     rsp, 8
        add     rsi, 8
        add     rdi, 8
        call    strcmp
        test    eax, eax
        sete    al
        add     rsp, 8
        movzx   eax, al
        ret






ALIGN   8

__stringNeq:
        sub     rsp, 8
        add     rsi, 8
        add     rdi, 8
        call    strcmp
        test    eax, eax
        setne   al
        add     rsp, 8
        movzx   eax, al
        ret






ALIGN   8

__stringLt:
        sub     rsp, 8
        add     rsi, 8
        add     rdi, 8
        call    strcmp
        cdqe
        add     rsp, 8
        shr     rax, 63
        ret






ALIGN   8

__stringGt:
        sub     rsp, 8
        add     rsi, 8
        add     rdi, 8
        call    strcmp
        test    eax, eax
        setg    al
        add     rsp, 8
        movzx   eax, al
        ret






ALIGN   8

__stringLe:
        sub     rsp, 8
        add     rsi, 8
        add     rdi, 8
        call    strcmp
        test    eax, eax
        setle   al
        add     rsp, 8
        movzx   eax, al
        ret






ALIGN   8

__stringGe:
        sub     rsp, 8
        add     rsi, 8
        add     rdi, 8
        call    strcmp
        cdqe
        add     rsp, 8
        not     rax
        shr     rax, 63
        ret


        nop

ALIGN   16
__arraySize:
        mov     rax, qword [rdi-8H]
        ret



SECTION .data


SECTION .bss


SECTION .rodata.str1.1

L_011:
        db 25H, 73H, 00H

L_012:
        db 25H, 6CH, 64H, 00H

L_013:
        db 25H, 6CH, 64H, 0AH, 00H


SECTION .text.unlikely


