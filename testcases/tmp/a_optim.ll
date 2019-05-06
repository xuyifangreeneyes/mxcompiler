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
	store $str_0 @asciiTable
	ret 

}

define hilo ( %argVal_0 %argVal_2 ) {
<0> entry
	%res_6 = lsft %argVal_0 16
	%res_7 = bit_or %argVal_2 %res_6
	ret %res_7

}

define shift_l ( %argVal_0 %argVal_2 ) {
<0> entry
	%res_6 = lsft %argVal_0 %argVal_2
	br <2>

<2> centry
	%res_8 = bit_and %res_6 2147483647
	ret %res_8

}

define shift_r ( %argVal_0 %argVal_2 ) {
<0> entry
	br <2>

<2> centry
	%res_8 = rsft 2147483647 %argVal_2
	%res_9 = lsft %res_8 1
	%res_10 = add %res_9 1
	%res_14 = rsft %argVal_0 %argVal_2
	%res_15 = bit_and %res_10 %res_14
	%res_18 = bit_and %res_15 2147483647
	ret %res_18

}

define xorshift ( %argVal_0 %argVal_2 ) {
<0> entry
	%varAddr_148 = alloca 4
	%varAddr_147 = alloca 4
	%res_6 = add %argVal_0 1
	store %res_6 %varAddr_147
	store 0 %varAddr_148
	br <1>

<1> for_cond
	%varDef_95 = load %varAddr_147
	%varDef_96 = load %varAddr_148
	%res_10 = mul %argVal_2 10
	%res_11 = lt %varDef_96 %res_10
	br %res_11 <2> <4>

<2> for_body
	%cres_34 = lsft %varDef_95 13
	%cres_36 = bit_and %cres_34 2147483647
	%res_15 = bit_xor %varDef_95 %cres_36
	%cres_50 = rsft %res_15 17
	%cres_51 = bit_and 32767 %cres_50
	%cres_54 = bit_and %cres_51 2147483647
	%res_19 = bit_xor %res_15 %cres_54
	%cres_60 = lsft %res_19 5
	%cres_62 = bit_and %cres_60 2147483647
	%res_23 = bit_xor %res_19 %cres_62
	%newVal_26 = inc %varDef_96
	store %res_23 %varAddr_147
	store %newVal_26 %varAddr_148
	br <1>

<4> for_end
	%res_28 = bit_xor %varDef_95 123456789
	ret %res_28

}

define int2chr ( %argVal_0 ) {
<0> entry
	%tmp_13 = load @asciiTable
	%res_3 = ge %argVal_0 32
	br %res_3 <3> <2>

<3> lhs_true
	%res_5 = le %argVal_0 126
	br %res_5 <1> <2>

<1> if_true
	%res_9 = sub %argVal_0 32
	%res_6 = __stringSubstring ( %tmp_13 %res_9 %res_9 )
	ret %res_6

<2> if_merge
	ret $str_1

}

define toStringHex ( %argVal_0 ) {
<0> entry
	%varAddr_85 = alloca 4
	%varAddr_84 = alloca 4
	%varAddr_83 = alloca 4
	%varAddr_82 = alloca 4
	%varAddr_81 = alloca 4
	%tmp_52 = load @asciiTable
	store $str_1 %varAddr_82
	store 28 %varAddr_83
	br <1>

<1> for_cond
	%varDef_57 = load %varAddr_82
	%varDef_58 = load %varAddr_83
	%res_5 = ge %varDef_58 0
	br %res_5 <2> <4>

<2> for_body
	%res_9 = rsft %argVal_0 %varDef_58
	%res_10 = bit_and %res_9 15
	%res_12 = lt %res_10 10
	br %res_12 <5> <6>

<5> if_true
	%res_16 = add 48 %res_10
	%cres_30 = ge %res_16 32
	br %cres_30 <10> <12>

<10> clhs_true
	%cres_32 = le %res_16 126
	br %cres_32 <11> <12>

<11> cif_true
	%cres_35 = sub %res_16 32
	%cres_38 = __stringSubstring ( %tmp_52 %cres_35 %cres_35 )
	store %cres_38 %varAddr_85
	br <8>

<12> cif_merge
	store $str_1 %varAddr_85
	br <8>

<8> after_call
	%varDef_68 = load %varAddr_85
	%res_17 = __stringAdd ( %varDef_57 %varDef_68 )
	store %res_17 %varAddr_81
	br <3>

<6> if_false
	%res_21 = add 65 %res_10
	%res_22 = sub %res_21 10
	%cres_42 = ge %res_22 32
	br %cres_42 <15> <17>

<15> clhs_true
	%cres_44 = le %res_22 126
	br %cres_44 <16> <17>

<16> cif_true
	%cres_47 = sub %res_22 32
	%cres_50 = __stringSubstring ( %tmp_52 %cres_47 %cres_47 )
	store %cres_50 %varAddr_84
	br <13>

<17> cif_merge
	store $str_1 %varAddr_84
	br <13>

<13> after_call
	%varDef_73 = load %varAddr_84
	%res_23 = __stringAdd ( %varDef_57 %varDef_73 )
	store %res_23 %varAddr_81
	br <3>

<3> for_step
	%varDef_75 = load %varAddr_81
	%res_25 = sub %varDef_58 4
	store %varDef_75 %varAddr_82
	store %res_25 %varAddr_83
	br <1>

<4> for_end
	ret %varDef_57

}

define getnumber ( %argVal_0 %argVal_2 %argVal_4 ) {
<0> entry
	%varAddr_115 = alloca 4
	%varAddr_114 = alloca 4
	%res_8 = bit_and %argVal_4 31
	br <2>

<2> centry
	%cres_27 = add %argVal_0 1
	store 0 %varAddr_114
	store %cres_27 %varAddr_115
	br <3>

<3> cfor_cond
	%varDef_91 = load %varAddr_114
	%varDef_92 = load %varAddr_115
	%cres_30 = mul %argVal_2 10
	%cres_31 = lt %varDef_91 %cres_30
	br %cres_31 <4> <6>

<4> cfor_body
	%cres_80 = lsft %varDef_92 13
	%cres_81 = hilo ( 32767 65535 )
	%cres_82 = bit_and %cres_80 %cres_81
	%cres_35 = bit_xor %varDef_92 %cres_82
	%cres_38 = shift_r ( %cres_35 17 )
	%cres_39 = bit_xor %cres_35 %cres_38
	%cres_42 = shift_l ( %cres_39 5 )
	%cres_43 = bit_xor %cres_39 %cres_42
	%cnewVal_46 = inc %varDef_91
	store %cnewVal_46 %varAddr_114
	store %cres_43 %varAddr_115
	br <3>

<6> cfor_end
	%cres_48 = bit_xor %varDef_92 123456789
	%cres_54 = lsft %cres_48 %res_8
	%cres_55 = hilo ( 32767 65535 )
	%cres_56 = bit_and %cres_54 %cres_55
	%res_19 = sub 32 %res_8
	%cres_61 = hilo ( 32767 65535 )
	%cres_64 = rsft %cres_61 %res_19
	%cres_65 = lsft %cres_64 1
	%cres_66 = add %cres_65 1
	%cres_70 = rsft %cres_48 %res_19
	%cres_71 = bit_and %cres_66 %cres_70
	%cres_73 = hilo ( 32767 65535 )
	%cres_74 = bit_and %cres_71 %cres_73
	%res_20 = bit_or %cres_56 %cres_74
	ret %res_20

}

define main ( ) {
<0> entry
	%varAddr_1037 = alloca 4
	%varAddr_1036 = alloca 4
	%varAddr_1035 = alloca 4
	%varAddr_1034 = alloca 4
	%varAddr_1033 = alloca 4
	%varAddr_1032 = alloca 4
	%varAddr_1031 = alloca 4
	%varAddr_1030 = alloca 4
	%varAddr_1029 = alloca 4
	%varAddr_1028 = alloca 4
	%varAddr_1027 = alloca 4
	%varAddr_1026 = alloca 4
	%varAddr_1025 = alloca 4
	%varAddr_1024 = alloca 4
	%varAddr_1023 = alloca 4
	%varAddr_1022 = alloca 4
	%varAddr_1021 = alloca 4
	%varAddr_1020 = alloca 4
	%varAddr_1019 = alloca 4
	%varAddr_1018 = alloca 4
	%varAddr_1017 = alloca 4
	%varAddr_1016 = alloca 4
	%varAddr_1015 = alloca 4
	%varAddr_1014 = alloca 4
	%varAddr_1013 = alloca 4
	%varAddr_1012 = alloca 4
	%varAddr_1011 = alloca 4
	%varAddr_1010 = alloca 4
	%varAddr_1009 = alloca 4
	%varAddr_1008 = alloca 4
	%varAddr_1007 = alloca 4
	%varAddr_1006 = alloca 4
	%varAddr_1005 = alloca 4
	%varAddr_1004 = alloca 4
	%varAddr_1003 = alloca 4
	%varAddr_1002 = alloca 4
	%varAddr_1001 = alloca 4
	%varAddr_1000 = alloca 4
	%varAddr_999 = alloca 4
	%varAddr_998 = alloca 4
	%varAddr_997 = alloca 4
	%varAddr_996 = alloca 4
	%varAddr_995 = alloca 4
	%varAddr_994 = alloca 4
	%varAddr_993 = alloca 4
	%varAddr_992 = alloca 4
	%varAddr_991 = alloca 4
	%varAddr_990 = alloca 4
	%varAddr_989 = alloca 4
	%varAddr_988 = alloca 4
	%varAddr_987 = alloca 4
	%varAddr_986 = alloca 4
	%varAddr_985 = alloca 4
	%varAddr_984 = alloca 4
	%varAddr_983 = alloca 4
	%varAddr_982 = alloca 4
	%varAddr_981 = alloca 4
	%varAddr_980 = alloca 4
	%varAddr_979 = alloca 4
	%varAddr_978 = alloca 4
	%varAddr_977 = alloca 4
	%varAddr_976 = alloca 4
	%varAddr_975 = alloca 4
	%varAddr_974 = alloca 4
	%varAddr_973 = alloca 4
	%varAddr_972 = alloca 4
	%varAddr_971 = alloca 4
	%varAddr_970 = alloca 4
	%varAddr_969 = alloca 4
	%varAddr_968 = alloca 4
	%varAddr_967 = alloca 4
	%varAddr_966 = alloca 4
	%varAddr_965 = alloca 4
	%varAddr_964 = alloca 4
	%varAddr_963 = alloca 4
	%varAddr_962 = alloca 4
	%varAddr_961 = alloca 4
	%varAddr_960 = alloca 4
	%varAddr_959 = alloca 4
	%varAddr_958 = alloca 4
	%varAddr_957 = alloca 4
	%varAddr_956 = alloca 4
	%varAddr_955 = alloca 4
	%varAddr_954 = alloca 4
	%varAddr_953 = alloca 4
	%varAddr_952 = alloca 4
	%varAddr_951 = alloca 4
	%varAddr_950 = alloca 4
	%varAddr_949 = alloca 4
	%varAddr_948 = alloca 4
	%varAddr_947 = alloca 4
	%varAddr_946 = alloca 4
	%varAddr_945 = alloca 4
	%varAddr_944 = alloca 4
	%varAddr_943 = alloca 4
	%varAddr_942 = alloca 4
	%varAddr_941 = alloca 4
	%varAddr_940 = alloca 4
	%varAddr_939 = alloca 4
	%varAddr_938 = alloca 4
	%varAddr_937 = alloca 4
	%varAddr_936 = alloca 4
	%varAddr_935 = alloca 4
	%varAddr_934 = alloca 4
	%varAddr_933 = alloca 4
	%varAddr_932 = alloca 4
	%varAddr_931 = alloca 4
	%varAddr_930 = alloca 4
	%varAddr_929 = alloca 4
	%varAddr_928 = alloca 4
	%varAddr_927 = alloca 4
	%varAddr_926 = alloca 4
	%varAddr_925 = alloca 4
	%varAddr_924 = alloca 4
	%varAddr_923 = alloca 4
	%varAddr_922 = alloca 4
	%varAddr_921 = alloca 4
	%varAddr_920 = alloca 4
	%varAddr_919 = alloca 4
	%varAddr_918 = alloca 4
	%varAddr_917 = alloca 4
	%varAddr_916 = alloca 4
	%varAddr_915 = alloca 4
	%varAddr_914 = alloca 4
	%varAddr_913 = alloca 4
	%varAddr_912 = alloca 4
	%varAddr_911 = alloca 4
	%varAddr_910 = alloca 4
	%varAddr_909 = alloca 4
	%varAddr_908 = alloca 4
	%varAddr_907 = alloca 4
	%varAddr_906 = alloca 4
	%varAddr_905 = alloca 4
	%varAddr_904 = alloca 4
	%varAddr_903 = alloca 4
	%varAddr_902 = alloca 4
	%varAddr_901 = alloca 4
	%varAddr_900 = alloca 4
	%varAddr_899 = alloca 4
	%varAddr_898 = alloca 4
	%varAddr_897 = alloca 4
	%varAddr_896 = alloca 4
	%varAddr_895 = alloca 4
	%varAddr_894 = alloca 4
	%varAddr_893 = alloca 4
	%varAddr_892 = alloca 4
	%varAddr_891 = alloca 4
	%varAddr_890 = alloca 4
	%varAddr_889 = alloca 4
	%varAddr_888 = alloca 4
	%varAddr_887 = alloca 4
	%varAddr_886 = alloca 4
	%varAddr_885 = alloca 4
	%varAddr_884 = alloca 4
	%varAddr_883 = alloca 4
	%varAddr_882 = alloca 4
	%varAddr_881 = alloca 4
	%varAddr_880 = alloca 4
	%varAddr_879 = alloca 4
	%varAddr_878 = alloca 4
	%varAddr_877 = alloca 4
	%varAddr_876 = alloca 4
	%varAddr_875 = alloca 4
	%varAddr_874 = alloca 4
	%varAddr_873 = alloca 4
	%varAddr_872 = alloca 4
	%varAddr_871 = alloca 4
	%varAddr_870 = alloca 4
	%varAddr_869 = alloca 4
	%res_9 = getInt ( )
	%res_10 = getInt ( )
	%res_11 = getInt ( )
	%res_12 = getInt ( )
	%res_13 = getInt ( )
	%res_14 = getInt ( )
	store %res_9 %varAddr_869
	store 0 %varAddr_870
	store 0 %varAddr_871
	store 0 %varAddr_872
	store 0 %varAddr_873
	br <1>

<1> for_cond
	%varDef_496 = load %varAddr_869
	%varDef_499 = load %varAddr_870
	%varDef_500 = load %varAddr_871
	%varDef_501 = load %varAddr_872
	%varDef_502 = load %varAddr_873
	%res_23 = lt %varDef_496 %res_10
	br %res_23 <2> <4>

<2> for_body
	store %res_11 %varAddr_960
	store %varDef_499 %varAddr_961
	store %varDef_500 %varAddr_962
	store %varDef_501 %varAddr_963
	store %varDef_502 %varAddr_964
	store %varDef_574 %varAddr_965
	store %varDef_575 %varAddr_966
	store %varDef_576 %varAddr_967
	store %varDef_577 %varAddr_968
	store %varDef_578 %varAddr_969
	store %varDef_579 %varAddr_970
	store %varDef_580 %varAddr_971
	store %varDef_581 %varAddr_972
	store %varDef_582 %varAddr_973
	store %varDef_583 %varAddr_974
	store %varDef_584 %varAddr_975
	store %varDef_585 %varAddr_976
	store %varDef_586 %varAddr_977
	store %varDef_587 %varAddr_978
	store %varDef_588 %varAddr_979
	store %varDef_589 %varAddr_980
	store %varDef_590 %varAddr_981
	store %varDef_591 %varAddr_982
	store %varDef_592 %varAddr_983
	store %varDef_593 %varAddr_984
	store %varDef_594 %varAddr_985
	store %varDef_595 %varAddr_986
	store %varDef_596 %varAddr_987
	store %varDef_597 %varAddr_988
	store %varDef_598 %varAddr_989
	store %varDef_599 %varAddr_990
	store %varDef_600 %varAddr_991
	store %varDef_601 %varAddr_992
	store %varDef_602 %varAddr_993
	store %varDef_603 %varAddr_994
	store %varDef_604 %varAddr_995
	store %varDef_605 %varAddr_996
	store %varDef_606 %varAddr_997
	store %varDef_607 %varAddr_998
	store %varDef_608 %varAddr_999
	store %varDef_609 %varAddr_1000
	store %varDef_610 %varAddr_1001
	store %varDef_611 %varAddr_1002
	store %varDef_612 %varAddr_1003
	store %varDef_613 %varAddr_1004
	store %varDef_614 %varAddr_1005
	store %varDef_615 %varAddr_1006
	store %varDef_616 %varAddr_1007
	store %varDef_617 %varAddr_1008
	store %varDef_618 %varAddr_1009
	store %varDef_619 %varAddr_1010
	store %varDef_620 %varAddr_1011
	store %varDef_621 %varAddr_1012
	store %varDef_622 %varAddr_1013
	store %varDef_623 %varAddr_1014
	store %varDef_624 %varAddr_1015
	store %varDef_625 %varAddr_1016
	store %varDef_626 %varAddr_1017
	store %varDef_627 %varAddr_1018
	store %varDef_628 %varAddr_1019
	store %varDef_629 %varAddr_1020
	store %varDef_630 %varAddr_1021
	store %varDef_631 %varAddr_1022
	store %varDef_632 %varAddr_1023
	store %varDef_633 %varAddr_1024
	store %varDef_634 %varAddr_1025
	store %varDef_635 %varAddr_1026
	store %varDef_636 %varAddr_1027
	store %varDef_637 %varAddr_1028
	br <5>

<5> for_cond
	%varDef_568 = load %varAddr_960
	%varDef_570 = load %varAddr_961
	%varDef_571 = load %varAddr_962
	%varDef_572 = load %varAddr_963
	%varDef_573 = load %varAddr_964
	%varDef_574 = load %varAddr_965
	%varDef_575 = load %varAddr_966
	%varDef_576 = load %varAddr_967
	%varDef_577 = load %varAddr_968
	%varDef_578 = load %varAddr_969
	%varDef_579 = load %varAddr_970
	%varDef_580 = load %varAddr_971
	%varDef_581 = load %varAddr_972
	%varDef_582 = load %varAddr_973
	%varDef_583 = load %varAddr_974
	%varDef_584 = load %varAddr_975
	%varDef_585 = load %varAddr_976
	%varDef_586 = load %varAddr_977
	%varDef_587 = load %varAddr_978
	%varDef_588 = load %varAddr_979
	%varDef_589 = load %varAddr_980
	%varDef_590 = load %varAddr_981
	%varDef_591 = load %varAddr_982
	%varDef_592 = load %varAddr_983
	%varDef_593 = load %varAddr_984
	%varDef_594 = load %varAddr_985
	%varDef_595 = load %varAddr_986
	%varDef_596 = load %varAddr_987
	%varDef_597 = load %varAddr_988
	%varDef_598 = load %varAddr_989
	%varDef_599 = load %varAddr_990
	%varDef_600 = load %varAddr_991
	%varDef_601 = load %varAddr_992
	%varDef_602 = load %varAddr_993
	%varDef_603 = load %varAddr_994
	%varDef_604 = load %varAddr_995
	%varDef_605 = load %varAddr_996
	%varDef_606 = load %varAddr_997
	%varDef_607 = load %varAddr_998
	%varDef_608 = load %varAddr_999
	%varDef_609 = load %varAddr_1000
	%varDef_610 = load %varAddr_1001
	%varDef_611 = load %varAddr_1002
	%varDef_612 = load %varAddr_1003
	%varDef_613 = load %varAddr_1004
	%varDef_614 = load %varAddr_1005
	%varDef_615 = load %varAddr_1006
	%varDef_616 = load %varAddr_1007
	%varDef_617 = load %varAddr_1008
	%varDef_618 = load %varAddr_1009
	%varDef_619 = load %varAddr_1010
	%varDef_620 = load %varAddr_1011
	%varDef_621 = load %varAddr_1012
	%varDef_622 = load %varAddr_1013
	%varDef_623 = load %varAddr_1014
	%varDef_624 = load %varAddr_1015
	%varDef_625 = load %varAddr_1016
	%varDef_626 = load %varAddr_1017
	%varDef_627 = load %varAddr_1018
	%varDef_628 = load %varAddr_1019
	%varDef_629 = load %varAddr_1020
	%varDef_630 = load %varAddr_1021
	%varDef_631 = load %varAddr_1022
	%varDef_632 = load %varAddr_1023
	%varDef_633 = load %varAddr_1024
	%varDef_634 = load %varAddr_1025
	%varDef_635 = load %varAddr_1026
	%varDef_636 = load %varAddr_1027
	%varDef_637 = load %varAddr_1028
	%res_27 = lt %varDef_568 %res_12
	br %res_27 <6> <3>

<6> for_body
	store %res_13 %varAddr_881
	store %varDef_570 %varAddr_882
	store %varDef_571 %varAddr_883
	store %varDef_572 %varAddr_884
	store %varDef_573 %varAddr_885
	store %varDef_574 %varAddr_886
	store %varDef_575 %varAddr_887
	store %varDef_576 %varAddr_888
	store %varDef_577 %varAddr_889
	store %varDef_578 %varAddr_890
	store %varDef_579 %varAddr_891
	store %varDef_580 %varAddr_892
	store %varDef_581 %varAddr_893
	store %varDef_582 %varAddr_894
	store %varDef_583 %varAddr_895
	store %varDef_584 %varAddr_896
	store %varDef_585 %varAddr_897
	store %varDef_586 %varAddr_898
	store %varDef_587 %varAddr_899
	store %varDef_588 %varAddr_900
	store %varDef_589 %varAddr_901
	store %varDef_590 %varAddr_902
	store %varDef_591 %varAddr_903
	store %varDef_592 %varAddr_904
	store %varDef_593 %varAddr_905
	store %varDef_594 %varAddr_906
	store %varDef_595 %varAddr_907
	store %varDef_596 %varAddr_908
	store %varDef_597 %varAddr_909
	store %varDef_598 %varAddr_910
	store %varDef_599 %varAddr_911
	store %varDef_600 %varAddr_912
	store %varDef_601 %varAddr_913
	store %varDef_602 %varAddr_914
	store %varDef_603 %varAddr_915
	store %varDef_604 %varAddr_916
	store %varDef_605 %varAddr_917
	store %varDef_606 %varAddr_918
	store %varDef_607 %varAddr_919
	store %varDef_608 %varAddr_920
	store %varDef_609 %varAddr_921
	store %varDef_610 %varAddr_922
	store %varDef_611 %varAddr_923
	store %varDef_612 %varAddr_924
	store %varDef_613 %varAddr_925
	store %varDef_614 %varAddr_926
	store %varDef_615 %varAddr_927
	store %varDef_616 %varAddr_928
	store %varDef_617 %varAddr_929
	store %varDef_618 %varAddr_930
	store %varDef_619 %varAddr_931
	store %varDef_620 %varAddr_932
	store %varDef_621 %varAddr_933
	store %varDef_622 %varAddr_934
	store %varDef_623 %varAddr_935
	store %varDef_624 %varAddr_936
	store %varDef_625 %varAddr_937
	store %varDef_626 %varAddr_938
	store %varDef_627 %varAddr_939
	store %varDef_628 %varAddr_940
	store %varDef_629 %varAddr_941
	store %varDef_630 %varAddr_942
	store %varDef_631 %varAddr_943
	store %varDef_632 %varAddr_944
	store %varDef_633 %varAddr_945
	store %varDef_634 %varAddr_946
	store %varDef_635 %varAddr_947
	store %varDef_636 %varAddr_948
	store %varDef_637 %varAddr_949
	br <9>

<9> for_cond
	%varDef_639 = load %varAddr_881
	%varDef_640 = load %varAddr_882
	%varDef_641 = load %varAddr_883
	%varDef_642 = load %varAddr_884
	%varDef_643 = load %varAddr_885
	%varDef_644 = load %varAddr_886
	%varDef_645 = load %varAddr_887
	%varDef_646 = load %varAddr_888
	%varDef_647 = load %varAddr_889
	%varDef_648 = load %varAddr_890
	%varDef_649 = load %varAddr_891
	%varDef_650 = load %varAddr_892
	%varDef_651 = load %varAddr_893
	%varDef_652 = load %varAddr_894
	%varDef_653 = load %varAddr_895
	%varDef_654 = load %varAddr_896
	%varDef_655 = load %varAddr_897
	%varDef_656 = load %varAddr_898
	%varDef_657 = load %varAddr_899
	%varDef_658 = load %varAddr_900
	%varDef_659 = load %varAddr_901
	%varDef_660 = load %varAddr_902
	%varDef_661 = load %varAddr_903
	%varDef_662 = load %varAddr_904
	%varDef_663 = load %varAddr_905
	%varDef_664 = load %varAddr_906
	%varDef_665 = load %varAddr_907
	%varDef_666 = load %varAddr_908
	%varDef_667 = load %varAddr_909
	%varDef_668 = load %varAddr_910
	%varDef_669 = load %varAddr_911
	%varDef_670 = load %varAddr_912
	%varDef_671 = load %varAddr_913
	%varDef_672 = load %varAddr_914
	%varDef_673 = load %varAddr_915
	%varDef_674 = load %varAddr_916
	%varDef_675 = load %varAddr_917
	%varDef_676 = load %varAddr_918
	%varDef_677 = load %varAddr_919
	%varDef_678 = load %varAddr_920
	%varDef_679 = load %varAddr_921
	%varDef_680 = load %varAddr_922
	%varDef_681 = load %varAddr_923
	%varDef_682 = load %varAddr_924
	%varDef_683 = load %varAddr_925
	%varDef_684 = load %varAddr_926
	%varDef_685 = load %varAddr_927
	%varDef_686 = load %varAddr_928
	%varDef_687 = load %varAddr_929
	%varDef_688 = load %varAddr_930
	%varDef_689 = load %varAddr_931
	%varDef_690 = load %varAddr_932
	%varDef_691 = load %varAddr_933
	%varDef_692 = load %varAddr_934
	%varDef_693 = load %varAddr_935
	%varDef_694 = load %varAddr_936
	%varDef_695 = load %varAddr_937
	%varDef_696 = load %varAddr_938
	%varDef_697 = load %varAddr_939
	%varDef_698 = load %varAddr_940
	%varDef_699 = load %varAddr_941
	%varDef_700 = load %varAddr_942
	%varDef_701 = load %varAddr_943
	%varDef_702 = load %varAddr_944
	%varDef_703 = load %varAddr_945
	%varDef_704 = load %varAddr_946
	%varDef_705 = load %varAddr_947
	%varDef_706 = load %varAddr_948
	%varDef_707 = load %varAddr_949
	%res_31 = lt %varDef_639 %res_14
	br %res_31 <10> <7>

<10> for_body
	%cres_111 = bit_and %varDef_639 31
	%cres_114 = xorshift ( %res_9 30 )
	%cres_117 = shift_l ( %cres_114 %cres_111 )
	%cres_120 = sub 32 %cres_111
	%cres_121 = shift_r ( %cres_114 %cres_120 )
	%cres_122 = bit_or %cres_117 %cres_121
	%cres_133 = xorshift ( %varDef_496 30 )
	%cres_136 = shift_l ( %cres_133 %cres_111 )
	%cres_140 = shift_r ( %cres_133 %cres_120 )
	%cres_141 = bit_or %cres_136 %cres_140
	%cres_152 = xorshift ( %varDef_568 30 )
	%cres_155 = shift_l ( %cres_152 %cres_111 )
	%cres_159 = shift_r ( %cres_152 %cres_120 )
	%cres_160 = bit_or %cres_155 %cres_159
	%res_51 = bit_xor %varDef_496 %varDef_568
	%cres_171 = xorshift ( %res_51 30 )
	%cres_174 = shift_l ( %cres_171 %cres_111 )
	%cres_178 = shift_r ( %cres_171 %cres_120 )
	%cres_179 = bit_or %cres_174 %cres_178
	%cres_186 = add %varDef_639 1
	store 0 %varAddr_958
	store %cres_186 %varAddr_959
	br <23>

<23> cfor_cond
	%varDef_740 = load %varAddr_958
	%varDef_741 = load %varAddr_959
	%cres_190 = lt %varDef_740 10
	br %cres_190 <24> <26>

<24> cfor_body
	%cres_193 = shift_l ( %varDef_741 13 )
	%cres_194 = bit_xor %varDef_741 %cres_193
	%cres_197 = shift_r ( %cres_194 17 )
	%cres_198 = bit_xor %cres_194 %cres_197
	%cres_201 = shift_l ( %cres_198 5 )
	%cres_202 = bit_xor %cres_198 %cres_201
	%cnewVal_205 = inc %varDef_740
	store %cnewVal_205 %varAddr_958
	store %cres_202 %varAddr_959
	br <23>

<26> cfor_end
	%cres_207 = bit_xor %varDef_741 123456789
	%cres_214 = add %varDef_568 1
	store 0 %varAddr_879
	store %cres_214 %varAddr_880
	br <29>

<29> cfor_cond
	%varDef_751 = load %varAddr_879
	%varDef_752 = load %varAddr_880
	%cres_218 = lt %varDef_751 10
	br %cres_218 <30> <32>

<30> cfor_body
	%cres_221 = shift_l ( %varDef_752 13 )
	%cres_222 = bit_xor %varDef_752 %cres_221
	%cres_225 = shift_r ( %cres_222 17 )
	%cres_226 = bit_xor %cres_222 %cres_225
	%cres_229 = shift_l ( %cres_226 5 )
	%cres_230 = bit_xor %cres_226 %cres_229
	%cnewVal_233 = inc %varDef_751
	store %cnewVal_233 %varAddr_879
	store %cres_230 %varAddr_880
	br <29>

<32> cfor_end
	%cres_235 = bit_xor %varDef_752 123456789
	%res_59 = bit_xor %cres_207 %cres_235
	%cres_242 = add %varDef_496 1
	store 0 %varAddr_1033
	store %cres_242 %varAddr_1034
	br <35>

<35> cfor_cond
	%varDef_762 = load %varAddr_1033
	%varDef_763 = load %varAddr_1034
	%cres_246 = lt %varDef_762 10
	br %cres_246 <36> <38>

<36> cfor_body
	%cres_249 = shift_l ( %varDef_763 13 )
	%cres_250 = bit_xor %varDef_763 %cres_249
	%cres_253 = shift_r ( %cres_250 17 )
	%cres_254 = bit_xor %cres_250 %cres_253
	%cres_257 = shift_l ( %cres_254 5 )
	%cres_258 = bit_xor %cres_254 %cres_257
	%cnewVal_261 = inc %varDef_762
	store %cnewVal_261 %varAddr_1033
	store %cres_258 %varAddr_1034
	br <35>

<38> cfor_end
	%cres_263 = bit_xor %varDef_763 123456789
	%res_62 = bit_xor %res_59 %cres_263
	%res_67 = bit_xor %cres_122 %res_62
	%cres_270 = add %res_67 1
	store 0 %varAddr_1035
	store %cres_270 %varAddr_1036
	br <41>

<41> cfor_cond
	%varDef_774 = load %varAddr_1035
	%varDef_775 = load %varAddr_1036
	%cres_274 = lt %varDef_774 10
	br %cres_274 <42> <44>

<42> cfor_body
	%cres_277 = shift_l ( %varDef_775 13 )
	%cres_278 = bit_xor %varDef_775 %cres_277
	%cres_281 = shift_r ( %cres_278 17 )
	%cres_282 = bit_xor %cres_278 %cres_281
	%cres_285 = shift_l ( %cres_282 5 )
	%cres_286 = bit_xor %cres_282 %cres_285
	%cnewVal_289 = inc %varDef_774
	store %cnewVal_289 %varAddr_1035
	store %cres_286 %varAddr_1036
	br <41>

<44> cfor_end
	%cres_291 = bit_xor %varDef_775 123456789
	%res_68 = add %varDef_640 %cres_291
	%res_73 = bit_xor %cres_141 %res_62
	%cres_298 = add %res_73 1
	store 0 %varAddr_950
	store %cres_298 %varAddr_951
	br <47>

<47> cfor_cond
	%varDef_786 = load %varAddr_950
	%varDef_787 = load %varAddr_951
	%cres_302 = lt %varDef_786 10
	br %cres_302 <48> <50>

<48> cfor_body
	%cres_305 = shift_l ( %varDef_787 13 )
	%cres_306 = bit_xor %varDef_787 %cres_305
	%cres_309 = shift_r ( %cres_306 17 )
	%cres_310 = bit_xor %cres_306 %cres_309
	%cres_313 = shift_l ( %cres_310 5 )
	%cres_314 = bit_xor %cres_310 %cres_313
	%cnewVal_317 = inc %varDef_786
	store %cnewVal_317 %varAddr_950
	store %cres_314 %varAddr_951
	br <47>

<50> cfor_end
	%cres_319 = bit_xor %varDef_787 123456789
	%res_74 = add %varDef_641 %cres_319
	%res_79 = bit_xor %cres_160 %res_62
	%cres_326 = add %res_79 1
	store 0 %varAddr_875
	store %cres_326 %varAddr_876
	br <53>

<53> cfor_cond
	%varDef_798 = load %varAddr_875
	%varDef_799 = load %varAddr_876
	%cres_330 = lt %varDef_798 10
	br %cres_330 <54> <56>

<54> cfor_body
	%cres_333 = shift_l ( %varDef_799 13 )
	%cres_334 = bit_xor %varDef_799 %cres_333
	%cres_337 = shift_r ( %cres_334 17 )
	%cres_338 = bit_xor %cres_334 %cres_337
	%cres_341 = shift_l ( %cres_338 5 )
	%cres_342 = bit_xor %cres_338 %cres_341
	%cnewVal_345 = inc %varDef_798
	store %cnewVal_345 %varAddr_875
	store %cres_342 %varAddr_876
	br <53>

<56> cfor_end
	%cres_347 = bit_xor %varDef_799 123456789
	%res_80 = add %varDef_642 %cres_347
	%res_85 = bit_xor %cres_179 %res_62
	%cres_354 = add %res_85 1
	store 0 %varAddr_956
	store %cres_354 %varAddr_957
	br <59>

<59> cfor_cond
	%varDef_810 = load %varAddr_956
	%varDef_811 = load %varAddr_957
	%cres_358 = lt %varDef_810 10
	br %cres_358 <60> <62>

<60> cfor_body
	%cres_361 = shift_l ( %varDef_811 13 )
	%cres_362 = bit_xor %varDef_811 %cres_361
	%cres_365 = shift_r ( %cres_362 17 )
	%cres_366 = bit_xor %cres_362 %cres_365
	%cres_369 = shift_l ( %cres_366 5 )
	%cres_370 = bit_xor %cres_366 %cres_369
	%cnewVal_373 = inc %varDef_810
	store %cnewVal_373 %varAddr_956
	store %cres_370 %varAddr_957
	br <59>

<62> cfor_end
	%cres_375 = bit_xor %varDef_811 123456789
	%res_86 = add %varDef_643 %cres_375
	%newVal_89 = inc %varDef_639
	store %newVal_89 %varAddr_881
	store %res_68 %varAddr_882
	store %res_74 %varAddr_883
	store %res_80 %varAddr_884
	store %res_86 %varAddr_885
	store %cres_122 %varAddr_886
	store %cres_141 %varAddr_887
	store %cres_160 %varAddr_888
	store %cres_179 %varAddr_889
	store %res_62 %varAddr_890
	store %cres_122 %varAddr_891
	store %cres_114 %varAddr_892
	store %cres_111 %varAddr_893
	store %varDef_639 %varAddr_894
	store 30 %varAddr_895
	store %res_9 %varAddr_896
	store %cres_141 %varAddr_897
	store %cres_133 %varAddr_898
	store %cres_111 %varAddr_899
	store %varDef_639 %varAddr_900
	store 30 %varAddr_901
	store %varDef_496 %varAddr_902
	store %cres_160 %varAddr_903
	store %cres_152 %varAddr_904
	store %cres_111 %varAddr_905
	store %varDef_639 %varAddr_906
	store 30 %varAddr_907
	store %varDef_568 %varAddr_908
	store %cres_179 %varAddr_909
	store %cres_171 %varAddr_910
	store %cres_111 %varAddr_911
	store %varDef_639 %varAddr_912
	store 30 %varAddr_913
	store %res_51 %varAddr_914
	store %cres_207 %varAddr_915
	store %varDef_740 %varAddr_916
	store %varDef_741 %varAddr_917
	store 1 %varAddr_918
	store %varDef_639 %varAddr_919
	store %cres_235 %varAddr_920
	store %varDef_751 %varAddr_921
	store %varDef_752 %varAddr_922
	store 1 %varAddr_923
	store %varDef_568 %varAddr_924
	store %cres_263 %varAddr_925
	store %varDef_762 %varAddr_926
	store %varDef_763 %varAddr_927
	store 1 %varAddr_928
	store %varDef_496 %varAddr_929
	store %cres_291 %varAddr_930
	store %varDef_774 %varAddr_931
	store %varDef_775 %varAddr_932
	store 1 %varAddr_933
	store %res_67 %varAddr_934
	store %cres_319 %varAddr_935
	store %varDef_786 %varAddr_936
	store %varDef_787 %varAddr_937
	store 1 %varAddr_938
	store %res_73 %varAddr_939
	store %cres_347 %varAddr_940
	store %varDef_798 %varAddr_941
	store %varDef_799 %varAddr_942
	store 1 %varAddr_943
	store %res_79 %varAddr_944
	store %cres_375 %varAddr_945
	store %varDef_810 %varAddr_946
	store %varDef_811 %varAddr_947
	store 1 %varAddr_948
	store %res_85 %varAddr_949
	br <9>

<7> for_step
	%newVal_92 = inc %varDef_568
	store %newVal_92 %varAddr_960
	store %varDef_640 %varAddr_961
	store %varDef_641 %varAddr_962
	store %varDef_642 %varAddr_963
	store %varDef_643 %varAddr_964
	store %varDef_644 %varAddr_965
	store %varDef_645 %varAddr_966
	store %varDef_646 %varAddr_967
	store %varDef_647 %varAddr_968
	store %varDef_648 %varAddr_969
	store %varDef_649 %varAddr_970
	store %varDef_650 %varAddr_971
	store %varDef_651 %varAddr_972
	store %varDef_652 %varAddr_973
	store %varDef_653 %varAddr_974
	store %varDef_654 %varAddr_975
	store %varDef_655 %varAddr_976
	store %varDef_656 %varAddr_977
	store %varDef_657 %varAddr_978
	store %varDef_658 %varAddr_979
	store %varDef_659 %varAddr_980
	store %varDef_660 %varAddr_981
	store %varDef_661 %varAddr_982
	store %varDef_662 %varAddr_983
	store %varDef_663 %varAddr_984
	store %varDef_664 %varAddr_985
	store %varDef_665 %varAddr_986
	store %varDef_666 %varAddr_987
	store %varDef_667 %varAddr_988
	store %varDef_668 %varAddr_989
	store %varDef_669 %varAddr_990
	store %varDef_670 %varAddr_991
	store %varDef_671 %varAddr_992
	store %varDef_672 %varAddr_993
	store %varDef_673 %varAddr_994
	store %varDef_674 %varAddr_995
	store %varDef_675 %varAddr_996
	store %varDef_676 %varAddr_997
	store %varDef_677 %varAddr_998
	store %varDef_678 %varAddr_999
	store %varDef_679 %varAddr_1000
	store %varDef_680 %varAddr_1001
	store %varDef_681 %varAddr_1002
	store %varDef_682 %varAddr_1003
	store %varDef_683 %varAddr_1004
	store %varDef_684 %varAddr_1005
	store %varDef_685 %varAddr_1006
	store %varDef_686 %varAddr_1007
	store %varDef_687 %varAddr_1008
	store %varDef_688 %varAddr_1009
	store %varDef_689 %varAddr_1010
	store %varDef_690 %varAddr_1011
	store %varDef_691 %varAddr_1012
	store %varDef_692 %varAddr_1013
	store %varDef_693 %varAddr_1014
	store %varDef_694 %varAddr_1015
	store %varDef_695 %varAddr_1016
	store %varDef_696 %varAddr_1017
	store %varDef_697 %varAddr_1018
	store %varDef_698 %varAddr_1019
	store %varDef_699 %varAddr_1020
	store %varDef_700 %varAddr_1021
	store %varDef_701 %varAddr_1022
	store %varDef_702 %varAddr_1023
	store %varDef_703 %varAddr_1024
	store %varDef_704 %varAddr_1025
	store %varDef_705 %varAddr_1026
	store %varDef_706 %varAddr_1027
	store %varDef_707 %varAddr_1028
	br <5>

<3> for_step
	%newVal_95 = inc %varDef_496
	store %newVal_95 %varAddr_869
	store %varDef_570 %varAddr_870
	store %varDef_571 %varAddr_871
	store %varDef_572 %varAddr_872
	store %varDef_573 %varAddr_873
	br <1>

<4> for_end
	store 28 %varAddr_1031
	store $str_1 %varAddr_1032
	br <65>

<65> cfor_cond
	%varDef_825 = load %varAddr_1031
	%varDef_826 = load %varAddr_1032
	%cres_382 = ge %varDef_825 0
	br %cres_382 <66> <71>

<66> cfor_body
	%cres_385 = rsft %varDef_499 %varDef_825
	%cres_386 = bit_and %cres_385 15
	%cres_388 = lt %cres_386 10
	br %cres_388 <67> <68>

<67> cif_true
	%cres_391 = add 48 %cres_386
	%cres_392 = int2chr ( %cres_391 )
	%cres_393 = __stringAdd ( %varDef_826 %cres_392 )
	store %cres_393 %varAddr_874
	br <70>

<68> cif_false
	%cres_396 = add 65 %cres_386
	%cres_397 = sub %cres_396 10
	%cres_398 = int2chr ( %cres_397 )
	%cres_399 = __stringAdd ( %varDef_826 %cres_398 )
	store %cres_399 %varAddr_874
	br <70>

<70> cfor_step
	%varDef_830 = load %varAddr_874
	%cres_401 = sub %varDef_825 4
	store %cres_401 %varAddr_1031
	store %varDef_830 %varAddr_1032
	br <65>

<71> cfor_end
	print ( %varDef_826 )
	print ( $str_2 )
	store 28 %varAddr_877
	store $str_1 %varAddr_878
	br <74>

<74> cfor_cond
	%varDef_837 = load %varAddr_877
	%varDef_838 = load %varAddr_878
	%cres_409 = ge %varDef_837 0
	br %cres_409 <75> <80>

<75> cfor_body
	%cres_412 = rsft %varDef_500 %varDef_837
	%cres_413 = bit_and %cres_412 15
	%cres_415 = lt %cres_413 10
	br %cres_415 <76> <77>

<76> cif_true
	%cres_418 = add 48 %cres_413
	%cres_419 = int2chr ( %cres_418 )
	%cres_420 = __stringAdd ( %varDef_838 %cres_419 )
	store %cres_420 %varAddr_1037
	br <79>

<77> cif_false
	%cres_423 = add 65 %cres_413
	%cres_424 = sub %cres_423 10
	%cres_425 = int2chr ( %cres_424 )
	%cres_426 = __stringAdd ( %varDef_838 %cres_425 )
	store %cres_426 %varAddr_1037
	br <79>

<79> cfor_step
	%varDef_842 = load %varAddr_1037
	%cres_428 = sub %varDef_837 4
	store %cres_428 %varAddr_877
	store %varDef_842 %varAddr_878
	br <74>

<80> cfor_end
	print ( %varDef_838 )
	print ( $str_2 )
	store 28 %varAddr_953
	store $str_1 %varAddr_954
	br <83>

<83> cfor_cond
	%varDef_849 = load %varAddr_953
	%varDef_850 = load %varAddr_954
	%cres_436 = ge %varDef_849 0
	br %cres_436 <84> <89>

<84> cfor_body
	%cres_439 = rsft %varDef_501 %varDef_849
	%cres_440 = bit_and %cres_439 15
	%cres_442 = lt %cres_440 10
	br %cres_442 <85> <86>

<85> cif_true
	%cres_445 = add 48 %cres_440
	%cres_446 = int2chr ( %cres_445 )
	%cres_447 = __stringAdd ( %varDef_850 %cres_446 )
	store %cres_447 %varAddr_955
	br <88>

<86> cif_false
	%cres_450 = add 65 %cres_440
	%cres_451 = sub %cres_450 10
	%cres_452 = int2chr ( %cres_451 )
	%cres_453 = __stringAdd ( %varDef_850 %cres_452 )
	store %cres_453 %varAddr_955
	br <88>

<88> cfor_step
	%varDef_854 = load %varAddr_955
	%cres_455 = sub %varDef_849 4
	store %cres_455 %varAddr_953
	store %varDef_854 %varAddr_954
	br <83>

<89> cfor_end
	print ( %varDef_850 )
	print ( $str_2 )
	store 28 %varAddr_1029
	store $str_1 %varAddr_1030
	br <92>

<92> cfor_cond
	%varDef_861 = load %varAddr_1029
	%varDef_862 = load %varAddr_1030
	%cres_463 = ge %varDef_861 0
	br %cres_463 <93> <98>

<93> cfor_body
	%cres_466 = rsft %varDef_502 %varDef_861
	%cres_467 = bit_and %cres_466 15
	%cres_469 = lt %cres_467 10
	br %cres_469 <94> <95>

<94> cif_true
	%cres_472 = add 48 %cres_467
	%cres_473 = int2chr ( %cres_472 )
	%cres_474 = __stringAdd ( %varDef_862 %cres_473 )
	store %cres_474 %varAddr_952
	br <97>

<95> cif_false
	%cres_477 = add 65 %cres_467
	%cres_478 = sub %cres_477 10
	%cres_479 = int2chr ( %cres_478 )
	%cres_480 = __stringAdd ( %varDef_862 %cres_479 )
	store %cres_480 %varAddr_952
	br <97>

<97> cfor_step
	%varDef_866 = load %varAddr_952
	%cres_482 = sub %varDef_861 4
	store %cres_482 %varAddr_1029
	store %varDef_866 %varAddr_1030
	br <92>

<98> cfor_end
	print ( %varDef_862 )
	print ( $str_2 )
	println ( $str_1 )
	ret 0

}

