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
	store 5 %varAddr_0
	%idVal_3 = load %varAddr_0
	%oldVal_4 = load %varAddr_0
	%newVal_5 = inc %oldVal_4
	store %newVal_5 %varAddr_0
	store %oldVal_4 %varAddr_2
	%idVal_6 = load %varAddr_2
	store %idVal_6 %varAddr_1
	%idVal_7 = load %varAddr_1
	%idVal_8 = load %varAddr_2
	%res_9 = add %idVal_7 %idVal_8
	%idVal_10 = load %varAddr_0
	%res_11 = add %res_9 %idVal_10
	ret %res_11

}

