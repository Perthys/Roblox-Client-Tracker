PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleRangeProps"]
        3 GETTABLEKS                       R0 R0 K1 ["toggleValue"]
        5 JUMPIFNOT                        R0 ; [+17]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["setNumberRange"]
        9 GETIMPORT                        R1 K5 [NumberRange.new]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K6 ["round"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K7 ["numberRange"]
       17 GETTABLEKS                       R3 R3 K8 ["Max"]
       19 CALL                             R2 1 -1
       20 CALL                             R1 -1 -1
       21 CALL                             R0 -1 0
       22 JUMP                             ; [+23]
       23 GETUPVAL                         R0 0
       24 GETTABLEKS                       R0 R0 K2 ["setNumberRange"]
       26 GETIMPORT                        R1 K5 [NumberRange.new]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K6 ["round"]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K9 ["min"]
       34 CALL                             R2 1 1
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K6 ["round"]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K7 ["numberRange"]
       41 GETTABLEKS                       R4 R4 K8 ["Max"]
       43 CALL                             R3 1 -1
       44 CALL                             R1 -1 -1
       45 CALL                             R0 -1 0
       46 GETUPVAL                         R0 0
       47 GETTABLEKS                       R0 R0 K0 ["toggleRangeProps"]
       49 GETTABLEKS                       R0 R0 K10 ["setToggleValue"]
       51 GETUPVAL                         R2 0
       52 GETTABLEKS                       R2 R2 K0 ["toggleRangeProps"]
       54 GETTABLEKS                       R2 R2 K1 ["toggleValue"]
       56 NOT                              R1 R2
       57 CALL                             R0 1 0
       58 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["toggleRangeProps"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["toggleRangeProps cannot be nil for minMaxToggleCheckbox"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 0
        9 GETUPVAL                         R2 1
       10 NEWTABLE                         R3 8 0
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K4 ["Tag"]
       15 LOADK                            R5 K5 ["X-Fit X-Left X-Middle X-RowS IconOnly Compact"]
       16 SETTABLE                         R5 R3 R4
       17 GETTABLEKS                       R4 R0 K6 ["LayoutOrder"]
       19 SETTABLEKS                       R4 R3 K6 ["LayoutOrder"]
       21 GETTABLEKS                       R4 R0 K0 ["toggleRangeProps"]
       23 GETTABLEKS                       R4 R4 K7 ["toggleValue"]
       25 SETTABLEKS                       R4 R3 K8 ["Checked"]
       27 GETTABLEKS                       R4 R0 K0 ["toggleRangeProps"]
       29 GETTABLEKS                       R4 R4 K9 ["toggleText"]
       31 SETTABLEKS                       R4 R3 K10 ["Text"]
       33 NEWCLOSURE                       R4 P0
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R4 R3 K11 ["OnClick"]
       37 CALL                             R1 2 -1
       38 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["roundToTenths"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 MULK                             R3 R0 K1 [10]
        5 FASTCALL1                        MATH_ROUND R3 ; [+2]
        6 GETIMPORT                        R2 K4 [math.round]
        8 CALL                             R2 1 1
        9 DIVK                             R1 R2 K1 [10]
       10 RETURN                           R1 1
       11 FASTCALL1                        MATH_ROUND R0 ; [+3]
       12 MOVE                             R2 R0
       13 GETIMPORT                        R1 K4 [math.round]
       15 CALL                             R1 1 1
       16 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["numberRange"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K0 ["numberRange"]
       11 GETTABLEKS                       R0 R0 K1 ["Min"]
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K0 ["numberRange"]
       16 GETTABLEKS                       R1 R1 K2 ["Max"]
       18 JUMPIFNOTEQ                      R0 R1 ; [+49]
       20 GETUPVAL                         R0 1
       21 GETIMPORT                        R1 K5 [NumberRange.new]
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R3 R3 K6 ["min"]
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R4 R4 K7 ["roundToTenths"]
       29 JUMPIFNOT                        R4 ; [+7]
       30 MULK                             R5 R3 K8 [10]
       31 FASTCALL1                        MATH_ROUND R5 ; [+2]
       32 GETIMPORT                        R4 K11 [math.round]
       34 CALL                             R4 1 1
       35 DIVK                             R2 R4 K8 [10]
       36 JUMP                             ; [+6]
       37 FASTCALL1                        MATH_ROUND R3 ; [+3]
       38 MOVE                             R5 R3
       39 GETIMPORT                        R4 K11 [math.round]
       41 CALL                             R4 1 1
       42 MOVE                             R2 R4
       43 GETUPVAL                         R4 2
       44 GETTABLEKS                       R4 R4 K0 ["numberRange"]
       46 GETTABLEKS                       R4 R4 K2 ["Max"]
       48 GETUPVAL                         R5 2
       49 GETTABLEKS                       R5 R5 K7 ["roundToTenths"]
       51 JUMPIFNOT                        R5 ; [+7]
       52 MULK                             R6 R4 K8 [10]
       53 FASTCALL1                        MATH_ROUND R6 ; [+2]
       54 GETIMPORT                        R5 K11 [math.round]
       56 CALL                             R5 1 1
       57 DIVK                             R3 R5 K8 [10]
       58 JUMP                             ; [+6]
       59 FASTCALL1                        MATH_ROUND R4 ; [+3]
       60 MOVE                             R6 R4
       61 GETIMPORT                        R5 K11 [math.round]
       63 CALL                             R5 1 1
       64 MOVE                             R3 R5
       65 CALL                             R1 2 -1
       66 CALL                             R0 -1 0
       67 RETURN                           R0 0
       68 GETUPVAL                         R1 2
       69 GETTABLEKS                       R1 R1 K12 ["toggleRangeProps"]
       71 FASTCALL2K                       ASSERT R1 K13 ; [+4]
       73 LOADK                            R2 K13 ["toggleRangeProps cannot be nil if hideLowerRange is true"]
       74 GETIMPORT                        R0 K15 [assert]
       76 CALL                             R0 2 0
       77 GETUPVAL                         R0 2
       78 GETTABLEKS                       R0 R0 K12 ["toggleRangeProps"]
       80 GETTABLEKS                       R0 R0 K16 ["setToggleValue"]
       82 LOADB                            R1 1
       83 CALL                             R0 1 0
       84 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleRangeProps"]
        3 GETTABLEKS                       R0 R0 K1 ["toggleValue"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["numberRange"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 1
       13 GETIMPORT                        R1 K5 [NumberRange.new]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K6 ["min"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K7 ["roundToTenths"]
       21 JUMPIFNOT                        R4 ; [+7]
       22 MULK                             R5 R3 K8 [10]
       23 FASTCALL1                        MATH_ROUND R5 ; [+2]
       24 GETIMPORT                        R4 K11 [math.round]
       26 CALL                             R4 1 1
       27 DIVK                             R2 R4 K8 [10]
       28 JUMP                             ; [+6]
       29 FASTCALL1                        MATH_ROUND R3 ; [+3]
       30 MOVE                             R5 R3
       31 GETIMPORT                        R4 K11 [math.round]
       33 CALL                             R4 1 1
       34 MOVE                             R2 R4
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K2 ["numberRange"]
       38 GETTABLEKS                       R4 R4 K12 ["Max"]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K7 ["roundToTenths"]
       43 JUMPIFNOT                        R5 ; [+7]
       44 MULK                             R6 R4 K8 [10]
       45 FASTCALL1                        MATH_ROUND R6 ; [+2]
       46 GETIMPORT                        R5 K11 [math.round]
       48 CALL                             R5 1 1
       49 DIVK                             R3 R5 K8 [10]
       50 JUMP                             ; [+6]
       51 FASTCALL1                        MATH_ROUND R4 ; [+3]
       52 MOVE                             R6 R4
       53 GETIMPORT                        R5 K11 [math.round]
       55 CALL                             R5 1 1
       56 MOVE                             R3 R5
       57 CALL                             R1 2 -1
       58 CALL                             R0 -1 0
       59 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 JUMPIFNOT                        R1 ; [+4]
        4 JUMPIFNOT                        R2 ; [+3]
        5 LOADB                            R3 1
        6 MOVE                             R4 R2
        7 RETURN                           R3 2
        8 LOADB                            R3 0
        9 LOADN                            R4 0
       10 RETURN                           R3 2

PROTO_6:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 2
        3 JUMPIFNOT                        R3 ; [+4]
        4 JUMPIFNOT                        R4 ; [+3]
        5 LOADB                            R1 1
        6 MOVE                             R2 R4
        7 JUMP                             ; [+2]
        8 LOADB                            R1 0
        9 LOADN                            R2 0
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K0 ["numberRange"]
       15 GETTABLEKS                       R3 R3 K1 ["Max"]
       17 JUMPIFNOTLT                      R3 R2 ; [+25]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K2 ["setNumberRange"]
       22 GETIMPORT                        R4 K5 [NumberRange.new]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K6 ["roundToTenths"]
       27 JUMPIFNOT                        R6 ; [+7]
       28 MULK                             R7 R2 K7 [10]
       29 FASTCALL1                        MATH_ROUND R7 ; [+2]
       30 GETIMPORT                        R6 K10 [math.round]
       32 CALL                             R6 1 1
       33 DIVK                             R5 R6 K7 [10]
       34 JUMP                             ; [+5]
       35 FASTCALL1                        MATH_ROUND R2 ; [+3]
       36 MOVE                             R6 R2
       37 GETIMPORT                        R5 K10 [math.round]
       39 CALL                             R5 1 1
       40 CALL                             R4 1 -1
       41 CALL                             R3 -1 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R3 1
       44 GETTABLEKS                       R3 R3 K2 ["setNumberRange"]
       46 GETIMPORT                        R4 K5 [NumberRange.new]
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R6 R6 K6 ["roundToTenths"]
       51 JUMPIFNOT                        R6 ; [+7]
       52 MULK                             R7 R2 K7 [10]
       53 FASTCALL1                        MATH_ROUND R7 ; [+2]
       54 GETIMPORT                        R6 K10 [math.round]
       56 CALL                             R6 1 1
       57 DIVK                             R5 R6 K7 [10]
       58 JUMP                             ; [+5]
       59 FASTCALL1                        MATH_ROUND R2 ; [+3]
       60 MOVE                             R6 R2
       61 GETIMPORT                        R5 K10 [math.round]
       63 CALL                             R5 1 1
       64 GETUPVAL                         R7 1
       65 GETTABLEKS                       R7 R7 K0 ["numberRange"]
       67 GETTABLEKS                       R7 R7 K1 ["Max"]
       69 GETUPVAL                         R8 1
       70 GETTABLEKS                       R8 R8 K6 ["roundToTenths"]
       72 JUMPIFNOT                        R8 ; [+7]
       73 MULK                             R9 R7 K7 [10]
       74 FASTCALL1                        MATH_ROUND R9 ; [+2]
       75 GETIMPORT                        R8 K10 [math.round]
       77 CALL                             R8 1 1
       78 DIVK                             R6 R8 K7 [10]
       79 JUMP                             ; [+6]
       80 FASTCALL1                        MATH_ROUND R7 ; [+3]
       81 MOVE                             R9 R7
       82 GETIMPORT                        R8 K10 [math.round]
       84 CALL                             R8 1 1
       85 MOVE                             R6 R8
       86 CALL                             R4 2 -1
       87 CALL                             R3 -1 0
       88 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 2
        3 JUMPIFNOT                        R3 ; [+4]
        4 JUMPIFNOT                        R4 ; [+3]
        5 LOADB                            R1 1
        6 MOVE                             R2 R4
        7 JUMP                             ; [+2]
        8 LOADB                            R1 0
        9 LOADN                            R2 0
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R3 1
       13 JUMPIF                           R3 ; [+5]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K0 ["Min"]
       17 JUMPIFNOTLT                      R2 R3 ; [+25]
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K1 ["setNumberRange"]
       22 GETIMPORT                        R4 K4 [NumberRange.new]
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R6 R6 K5 ["roundToTenths"]
       27 JUMPIFNOT                        R6 ; [+7]
       28 MULK                             R7 R2 K6 [10]
       29 FASTCALL1                        MATH_ROUND R7 ; [+2]
       30 GETIMPORT                        R6 K9 [math.round]
       32 CALL                             R6 1 1
       33 DIVK                             R5 R6 K6 [10]
       34 JUMP                             ; [+5]
       35 FASTCALL1                        MATH_ROUND R2 ; [+3]
       36 MOVE                             R6 R2
       37 GETIMPORT                        R5 K9 [math.round]
       39 CALL                             R5 1 1
       40 CALL                             R4 1 -1
       41 CALL                             R3 -1 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R3 3
       44 GETTABLEKS                       R3 R3 K1 ["setNumberRange"]
       46 GETIMPORT                        R4 K4 [NumberRange.new]
       48 GETUPVAL                         R6 2
       49 GETTABLEKS                       R6 R6 K0 ["Min"]
       51 GETUPVAL                         R7 3
       52 GETTABLEKS                       R7 R7 K5 ["roundToTenths"]
       54 JUMPIFNOT                        R7 ; [+7]
       55 MULK                             R8 R6 K6 [10]
       56 FASTCALL1                        MATH_ROUND R8 ; [+2]
       57 GETIMPORT                        R7 K9 [math.round]
       59 CALL                             R7 1 1
       60 DIVK                             R5 R7 K6 [10]
       61 JUMP                             ; [+6]
       62 FASTCALL1                        MATH_ROUND R6 ; [+3]
       63 MOVE                             R8 R6
       64 GETIMPORT                        R7 K9 [math.round]
       66 CALL                             R7 1 1
       67 MOVE                             R5 R7
       68 GETUPVAL                         R7 3
       69 GETTABLEKS                       R7 R7 K5 ["roundToTenths"]
       71 JUMPIFNOT                        R7 ; [+7]
       72 MULK                             R8 R2 K6 [10]
       73 FASTCALL1                        MATH_ROUND R8 ; [+2]
       74 GETIMPORT                        R7 K9 [math.round]
       76 CALL                             R7 1 1
       77 DIVK                             R6 R7 K6 [10]
       78 JUMP                             ; [+5]
       79 FASTCALL1                        MATH_ROUND R2 ; [+3]
       80 MOVE                             R7 R2
       81 GETIMPORT                        R6 K9 [math.round]
       83 CALL                             R6 1 1
       84 CALL                             R4 2 -1
       85 CALL                             R3 -1 0
       86 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R3 K2 [NumberRange.new]
        3 GETUPVAL                         R6 1
        4 JUMPIFNOT                        R6 ; [+2]
        5 LOADN                            R5 0
        6 JUMP                             ; [+1]
        7 MOVE                             R5 R0
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K3 ["roundToTenths"]
       11 JUMPIFNOT                        R6 ; [+7]
       12 MULK                             R7 R5 K4 [10]
       13 FASTCALL1                        MATH_ROUND R7 ; [+2]
       14 GETIMPORT                        R6 K7 [math.round]
       16 CALL                             R6 1 1
       17 DIVK                             R4 R6 K4 [10]
       18 JUMP                             ; [+6]
       19 FASTCALL1                        MATH_ROUND R5 ; [+3]
       20 MOVE                             R7 R5
       21 GETIMPORT                        R6 K7 [math.round]
       23 CALL                             R6 1 1
       24 MOVE                             R4 R6
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K3 ["roundToTenths"]
       28 JUMPIFNOT                        R6 ; [+7]
       29 MULK                             R7 R1 K4 [10]
       30 FASTCALL1                        MATH_ROUND R7 ; [+2]
       31 GETIMPORT                        R6 K7 [math.round]
       33 CALL                             R6 1 1
       34 DIVK                             R5 R6 K4 [10]
       35 JUMP                             ; [+5]
       36 FASTCALL1                        MATH_ROUND R1 ; [+3]
       37 MOVE                             R6 R1
       38 GETIMPORT                        R5 K7 [math.round]
       40 CALL                             R5 1 1
       41 CALL                             R3 2 -1
       42 CALL                             R2 -1 0
       43 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+28]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["setNumberRange"]
        5 GETIMPORT                        R1 K3 [NumberRange.new]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K4 ["Max"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K5 ["roundToTenths"]
       13 JUMPIFNOT                        R4 ; [+7]
       14 MULK                             R5 R3 K6 [10]
       15 FASTCALL1                        MATH_ROUND R5 ; [+2]
       16 GETIMPORT                        R4 K9 [math.round]
       18 CALL                             R4 1 1
       19 DIVK                             R2 R4 K6 [10]
       20 JUMP                             ; [+6]
       21 FASTCALL1                        MATH_ROUND R3 ; [+3]
       22 MOVE                             R5 R3
       23 GETIMPORT                        R4 K9 [math.round]
       25 CALL                             R4 1 1
       26 MOVE                             R2 R4
       27 CALL                             R1 1 -1
       28 CALL                             R0 -1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R0 1
       31 GETTABLEKS                       R0 R0 K0 ["setNumberRange"]
       33 GETIMPORT                        R1 K3 [NumberRange.new]
       35 GETUPVAL                         R3 2
       36 GETTABLEKS                       R3 R3 K10 ["Min"]
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R4 R4 K5 ["roundToTenths"]
       41 JUMPIFNOT                        R4 ; [+7]
       42 MULK                             R5 R3 K6 [10]
       43 FASTCALL1                        MATH_ROUND R5 ; [+2]
       44 GETIMPORT                        R4 K9 [math.round]
       46 CALL                             R4 1 1
       47 DIVK                             R2 R4 K6 [10]
       48 JUMP                             ; [+6]
       49 FASTCALL1                        MATH_ROUND R3 ; [+3]
       50 MOVE                             R5 R3
       51 GETIMPORT                        R4 K9 [math.round]
       53 CALL                             R4 1 1
       54 MOVE                             R2 R4
       55 GETUPVAL                         R4 2
       56 GETTABLEKS                       R4 R4 K4 ["Max"]
       58 GETUPVAL                         R5 1
       59 GETTABLEKS                       R5 R5 K5 ["roundToTenths"]
       61 JUMPIFNOT                        R5 ; [+7]
       62 MULK                             R6 R4 K6 [10]
       63 FASTCALL1                        MATH_ROUND R6 ; [+2]
       64 GETIMPORT                        R5 K9 [math.round]
       66 CALL                             R5 1 1
       67 DIVK                             R3 R5 K6 [10]
       68 JUMP                             ; [+6]
       69 FASTCALL1                        MATH_ROUND R4 ; [+3]
       70 MOVE                             R6 R4
       71 GETIMPORT                        R5 K9 [math.round]
       73 CALL                             R5 1 1
       74 MOVE                             R3 R5
       75 CALL                             R1 2 -1
       76 CALL                             R0 -1 0
       77 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADB                            R1 1
        5 RETURN                           R1 1
        6 LOADB                            R1 0
        7 GETUPVAL                         R2 1
        8 LOADK                            R4 K0 ["General"]
        9 LOADK                            R5 K1 ["InvalidInput"]
       10 NAMECALL                         R2 R2 K2 ["getText"]
       12 CALL                             R2 3 -1
       13 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADB                            R1 1
        5 RETURN                           R1 1
        6 LOADB                            R1 0
        7 GETUPVAL                         R2 1
        8 LOADK                            R4 K0 ["General"]
        9 LOADK                            R5 K1 ["InvalidInput"]
       10 NAMECALL                         R2 R2 K2 ["getText"]
       12 CALL                             R2 3 -1
       13 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleRangeProps"]
        3 GETTABLEKS                       R0 R0 K1 ["toggleValue"]
        5 JUMPIFNOT                        R0 ; [+30]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["setNumberRange"]
        9 GETIMPORT                        R1 K5 [NumberRange.new]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K6 ["numberRange"]
       14 GETTABLEKS                       R3 R3 K7 ["Max"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K8 ["roundToTenths"]
       19 JUMPIFNOT                        R4 ; [+7]
       20 MULK                             R5 R3 K9 [10]
       21 FASTCALL1                        MATH_ROUND R5 ; [+2]
       22 GETIMPORT                        R4 K12 [math.round]
       24 CALL                             R4 1 1
       25 DIVK                             R2 R4 K9 [10]
       26 JUMP                             ; [+6]
       27 FASTCALL1                        MATH_ROUND R3 ; [+3]
       28 MOVE                             R5 R3
       29 GETIMPORT                        R4 K12 [math.round]
       31 CALL                             R4 1 1
       32 MOVE                             R2 R4
       33 CALL                             R1 1 -1
       34 CALL                             R0 -1 0
       35 JUMP                             ; [+49]
       36 GETUPVAL                         R0 0
       37 GETTABLEKS                       R0 R0 K2 ["setNumberRange"]
       39 GETIMPORT                        R1 K5 [NumberRange.new]
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K13 ["min"]
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K8 ["roundToTenths"]
       47 JUMPIFNOT                        R4 ; [+7]
       48 MULK                             R5 R3 K9 [10]
       49 FASTCALL1                        MATH_ROUND R5 ; [+2]
       50 GETIMPORT                        R4 K12 [math.round]
       52 CALL                             R4 1 1
       53 DIVK                             R2 R4 K9 [10]
       54 JUMP                             ; [+6]
       55 FASTCALL1                        MATH_ROUND R3 ; [+3]
       56 MOVE                             R5 R3
       57 GETIMPORT                        R4 K12 [math.round]
       59 CALL                             R4 1 1
       60 MOVE                             R2 R4
       61 GETUPVAL                         R4 0
       62 GETTABLEKS                       R4 R4 K6 ["numberRange"]
       64 GETTABLEKS                       R4 R4 K7 ["Max"]
       66 GETUPVAL                         R5 0
       67 GETTABLEKS                       R5 R5 K8 ["roundToTenths"]
       69 JUMPIFNOT                        R5 ; [+7]
       70 MULK                             R6 R4 K9 [10]
       71 FASTCALL1                        MATH_ROUND R6 ; [+2]
       72 GETIMPORT                        R5 K12 [math.round]
       74 CALL                             R5 1 1
       75 DIVK                             R3 R5 K9 [10]
       76 JUMP                             ; [+6]
       77 FASTCALL1                        MATH_ROUND R4 ; [+3]
       78 MOVE                             R6 R4
       79 GETIMPORT                        R5 K12 [math.round]
       81 CALL                             R5 1 1
       82 MOVE                             R3 R5
       83 CALL                             R1 2 -1
       84 CALL                             R0 -1 0
       85 GETUPVAL                         R0 0
       86 GETTABLEKS                       R0 R0 K0 ["toggleRangeProps"]
       88 GETTABLEKS                       R0 R0 K14 ["setToggleValue"]
       90 GETUPVAL                         R2 0
       91 GETTABLEKS                       R2 R2 K0 ["toggleRangeProps"]
       93 GETTABLEKS                       R2 R2 K1 ["toggleValue"]
       95 NOT                              R1 R2
       96 CALL                             R0 1 0
       97 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R4 R0 K1 ["toggleRangeProps"]
        8 JUMPIFNOT                        R4 ; [+5]
        9 GETTABLEKS                       R3 R0 K1 ["toggleRangeProps"]
       11 GETTABLEKS                       R3 R3 K2 ["toggleValue"]
       13 JUMP                             ; [+1]
       14 LOADB                            R3 0
       15 GETTABLEKS                       R4 R0 K1 ["toggleRangeProps"]
       17 JUMPIFNOT                        R4 ; [+5]
       18 GETTABLEKS                       R5 R0 K1 ["toggleRangeProps"]
       20 GETTABLEKS                       R5 R5 K2 ["toggleValue"]
       22 NOT                              R4 R5
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          VAL R0
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K3 ["useState"]
       28 GETTABLEKS                       R7 R0 K4 ["numberRange"]
       30 CALL                             R6 1 2
       31 GETUPVAL                         R8 2
       32 GETTABLEKS                       R8 R8 K5 ["useEffect"]
       34 NEWCLOSURE                       R9 P1
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R7
       37 CAPTURE                          VAL R0
       38 NEWTABLE                         R10 0 1
       40 GETTABLEKS                       R11 R0 K4 ["numberRange"]
       42 SETLIST                          R10 R11 1 [1]
       44 CALL                             R8 2 0
       45 GETTABLEKS                       R8 R0 K1 ["toggleRangeProps"]
       47 JUMPIFNOT                        R8 ; [+15]
       48 GETUPVAL                         R8 2
       49 GETTABLEKS                       R8 R8 K5 ["useEffect"]
       51 NEWCLOSURE                       R9 P2
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R7
       54 NEWTABLE                         R10 0 1
       56 GETTABLEKS                       R11 R0 K1 ["toggleRangeProps"]
       58 GETTABLEKS                       R11 R11 K2 ["toggleValue"]
       60 SETLIST                          R10 R11 1 [1]
       62 CALL                             R8 2 0
       63 DUPCLOSURE                       R8 K6 [PROTO_5]
       64 CAPTURE                          UPVAL U3
       65 NEWCLOSURE                       R9 P4
       66 CAPTURE                          UPVAL U3
       67 CAPTURE                          VAL R0
       68 NEWCLOSURE                       R10 P5
       69 CAPTURE                          UPVAL U3
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R0
       73 GETUPVAL                         R11 4
       74 GETUPVAL                         R12 5
       75 NEWTABLE                         R13 4 0
       77 GETUPVAL                         R14 2
       78 GETTABLEKS                       R14 R14 K7 ["Tag"]
       80 GETUPVAL                         R15 6
       81 LOADK                            R16 K8 ["X-Column"]
       82 LOADK                            R17 K9 ["X-Left"]
       83 GETUPVAL                         R19 7
       84 CALL                             R19 0 1
       85 JUMPIFNOT                        R19 ; [+2]
       86 LOADK                            R18 K10 ["X-DefaultSize"]
       87 JUMP                             ; [+1]
       88 LOADNIL                          R18
       89 CALL                             R15 3 1
       90 SETTABLE                         R15 R13 R14
       91 GETIMPORT                        R14 K13 [UDim2.new]
       93 CALL                             R14 0 1
       94 SETTABLEKS                       R14 R13 K14 ["Size"]
       96 GETIMPORT                        R14 K18 [Enum.AutomaticSize.XY]
       98 SETTABLEKS                       R14 R13 K16 ["AutomaticSize"]
      100 DUPTABLE                         R14 K21 [{"SliderAndInput", "SetMinMaxToggle"}]
      101 GETUPVAL                         R15 4
      102 GETUPVAL                         R16 5
      103 NEWTABLE                         R17 4 0
      105 GETUPVAL                         R18 2
      106 GETTABLEKS                       R18 R18 K7 ["Tag"]
      108 GETUPVAL                         R19 6
      109 JUMPIFNOT                        R3 ; [+2]
      110 LOADK                            R20 K8 ["X-Column"]
      111 JUMP                             ; [+1]
      112 LOADK                            R20 K22 ["X-Row"]
      113 GETUPVAL                         R22 7
      114 CALL                             R22 0 1
      115 JUMPIFNOT                        R22 ; [+2]
      116 LOADK                            R21 K10 ["X-DefaultSize"]
      117 JUMP                             ; [+1]
      118 LOADNIL                          R21
      119 CALL                             R19 2 1
      120 SETTABLE                         R19 R17 R18
      121 GETIMPORT                        R18 K13 [UDim2.new]
      123 CALL                             R18 0 1
      124 SETTABLEKS                       R18 R17 K14 ["Size"]
      126 GETIMPORT                        R18 K18 [Enum.AutomaticSize.XY]
      128 SETTABLEKS                       R18 R17 K16 ["AutomaticSize"]
      130 MOVE                             R18 R2
      131 CALL                             R18 0 1
      132 SETTABLEKS                       R18 R17 K23 ["LayoutOrder"]
      134 DUPTABLE                         R18 K27 [{"UIListLayout", "Slider", "SetMinMaxToggle", "Input"}]
      135 GETUPVAL                         R20 8
      136 CALL                             R20 0 1
      137 JUMPIFNOT                        R20 ; [+13]
      138 JUMPIFNOT                        R3 ; [+12]
      139 GETUPVAL                         R19 4
      140 LOADK                            R20 K24 ["UIListLayout"]
      141 DUPTABLE                         R21 K29 [{"Padding"}]
      142 GETIMPORT                        R22 K31 [UDim.new]
      144 LOADN                            R23 0
      145 LOADN                            R24 0
      146 CALL                             R22 2 1
      147 SETTABLEKS                       R22 R21 K28 ["Padding"]
      149 CALL                             R19 2 1
      150 JUMP                             ; [+1]
      151 LOADNIL                          R19
      152 SETTABLEKS                       R19 R18 K24 ["UIListLayout"]
      154 GETUPVAL                         R19 4
      155 GETUPVAL                         R20 9
      156 DUPTABLE                         R21 K41 [{["LayoutOrder"], ["VerticalDragTolerance"] = 14, ["Size"], ["LowerRangeValue"], ["UpperRangeValue"], ["Min"], ["Max"], ["OnValuesChanged"], ["OnInputEnded"], ["HideLowerKnob"]}]
      157 MOVE                             R22 R2
      158 CALL                             R22 0 1
      159 SETTABLEKS                       R22 R21 K23 ["LayoutOrder"]
      161 GETIMPORT                        R22 K43 [UDim2.fromOffset]
      163 LOADN                            R23 230
      164 GETUPVAL                         R24 10
      165 GETTABLEKS                       R24 R24 K44 ["STANDARD_HEIGHT"]
      167 CALL                             R22 2 1
      168 SETTABLEKS                       R22 R21 K14 ["Size"]
      170 GETTABLEKS                       R22 R6 K36 ["Min"]
      172 SETTABLEKS                       R22 R21 K34 ["LowerRangeValue"]
      174 GETTABLEKS                       R22 R6 K37 ["Max"]
      176 SETTABLEKS                       R22 R21 K35 ["UpperRangeValue"]
      178 GETTABLEKS                       R22 R0 K45 ["min"]
      180 SETTABLEKS                       R22 R21 K36 ["Min"]
      182 GETTABLEKS                       R22 R0 K46 ["max"]
      184 SETTABLEKS                       R22 R21 K37 ["Max"]
      186 NEWCLOSURE                       R22 P6
      187 CAPTURE                          VAL R7
      188 CAPTURE                          VAL R4
      189 CAPTURE                          VAL R0
      190 SETTABLEKS                       R22 R21 K38 ["OnValuesChanged"]
      192 NEWCLOSURE                       R22 P7
      193 CAPTURE                          VAL R4
      194 CAPTURE                          VAL R0
      195 CAPTURE                          VAL R6
      196 SETTABLEKS                       R22 R21 K39 ["OnInputEnded"]
      198 SETTABLEKS                       R4 R21 K40 ["HideLowerKnob"]
      200 CALL                             R19 2 1
      201 SETTABLEKS                       R19 R18 K25 ["Slider"]
      203 GETUPVAL                         R20 8
      204 CALL                             R20 0 1
      205 JUMPIFNOT                        R20 ; [+41]
      206 GETTABLEKS                       R20 R0 K1 ["toggleRangeProps"]
      208 JUMPIFNOT                        R20 ; [+5]
      209 GETTABLEKS                       R20 R0 K1 ["toggleRangeProps"]
      211 GETTABLEKS                       R20 R20 K2 ["toggleValue"]
      213 JUMPIF                           R20 ; [+2]
      214 LOADNIL                          R19
      215 JUMP                             ; [+32]
      216 GETUPVAL                         R19 4
      217 GETUPVAL                         R20 11
      218 DUPTABLE                         R21 K50 [{"LayoutOrder", "min", "numberRange", "setNumberRange", "toggleRangeProps", "round", "roundToTenths"}]
      219 MOVE                             R22 R2
      220 CALL                             R22 0 1
      221 SETTABLEKS                       R22 R21 K23 ["LayoutOrder"]
      223 GETTABLEKS                       R22 R0 K45 ["min"]
      225 SETTABLEKS                       R22 R21 K45 ["min"]
      227 GETTABLEKS                       R22 R0 K4 ["numberRange"]
      229 SETTABLEKS                       R22 R21 K4 ["numberRange"]
      231 GETTABLEKS                       R22 R0 K47 ["setNumberRange"]
      233 SETTABLEKS                       R22 R21 K47 ["setNumberRange"]
      235 GETTABLEKS                       R22 R0 K1 ["toggleRangeProps"]
      237 SETTABLEKS                       R22 R21 K1 ["toggleRangeProps"]
      239 SETTABLEKS                       R5 R21 K48 ["round"]
      241 GETTABLEKS                       R22 R0 K49 ["roundToTenths"]
      243 SETTABLEKS                       R22 R21 K49 ["roundToTenths"]
      245 CALL                             R19 2 1
      246 JUMP                             ; [+1]
      247 LOADNIL                          R19
      248 SETTABLEKS                       R19 R18 K20 ["SetMinMaxToggle"]
      250 GETUPVAL                         R19 4
      251 GETUPVAL                         R20 5
      252 NEWTABLE                         R21 4 0
      254 GETUPVAL                         R22 2
      255 GETTABLEKS                       R22 R22 K7 ["Tag"]
      257 GETUPVAL                         R23 6
      258 LOADK                            R24 K51 ["X-RowS"]
      259 GETUPVAL                         R26 12
      260 CALL                             R26 0 1
      261 JUMPIF                           R26 ; [+3]
      262 GETUPVAL                         R26 13
      263 CALL                             R26 0 1
      264 JUMPIFNOT                        R26 ; [+2]
      265 LOADK                            R25 K52 ["X-Top"]
      266 JUMP                             ; [+1]
      267 LOADK                            R25 K53 ["X-Middle"]
      268 GETUPVAL                         R27 7
      269 CALL                             R27 0 1
      270 JUMPIFNOT                        R27 ; [+2]
      271 LOADK                            R26 K10 ["X-DefaultSize"]
      272 JUMP                             ; [+1]
      273 LOADNIL                          R26
      274 CALL                             R23 3 1
      275 SETTABLE                         R23 R21 R22
      276 GETIMPORT                        R22 K13 [UDim2.new]
      278 CALL                             R22 0 1
      279 SETTABLEKS                       R22 R21 K14 ["Size"]
      281 GETIMPORT                        R22 K18 [Enum.AutomaticSize.XY]
      283 SETTABLEKS                       R22 R21 K16 ["AutomaticSize"]
      285 MOVE                             R22 R2
      286 CALL                             R22 0 1
      287 SETTABLEKS                       R22 R21 K23 ["LayoutOrder"]
      289 DUPTABLE                         R22 K59 [{"UIPadding", "LowerRangeInput", "Hyphen", "UpperRangeInput", "Text"}]
      290 JUMPIFNOT                        R3 ; [+2]
      291 LOADNIL                          R23
      292 JUMP                             ; [+11]
      293 GETUPVAL                         R23 4
      294 LOADK                            R24 K54 ["UIPadding"]
      295 DUPTABLE                         R25 K61 [{"PaddingLeft"}]
      296 GETIMPORT                        R26 K31 [UDim.new]
      298 LOADN                            R27 0
      299 LOADN                            R28 12
      300 CALL                             R26 2 1
      301 SETTABLEKS                       R26 R25 K60 ["PaddingLeft"]
      303 CALL                             R23 2 1
      304 SETTABLEKS                       R23 R22 K54 ["UIPadding"]
      306 NOT                              R23 R4
      307 JUMPIFNOT                        R23 ; [+59]
      308 GETUPVAL                         R23 4
      309 GETUPVAL                         R24 14
      310 DUPTABLE                         R25 K65 [{"LayoutOrder", "Size", "AutomaticSize", "Text", "OnFocusLost", "OnEnter", "OnValidateText"}]
      311 MOVE                             R26 R2
      312 CALL                             R26 0 1
      313 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      315 GETIMPORT                        R26 K43 [UDim2.fromOffset]
      317 LOADN                            R27 44
      318 GETUPVAL                         R28 10
      319 GETTABLEKS                       R28 R28 K44 ["STANDARD_HEIGHT"]
      321 CALL                             R26 2 1
      322 SETTABLEKS                       R26 R25 K14 ["Size"]
      324 GETUPVAL                         R27 12
      325 CALL                             R27 0 1
      326 JUMPIFNOT                        R27 ; [+3]
      327 GETIMPORT                        R26 K67 [Enum.AutomaticSize.Y]
      329 JUMP                             ; [+1]
      330 LOADNIL                          R26
      331 SETTABLEKS                       R26 R25 K16 ["AutomaticSize"]
      333 GETTABLEKS                       R28 R6 K36 ["Min"]
      335 GETTABLEKS                       R29 R0 K49 ["roundToTenths"]
      337 JUMPIFNOT                        R29 ; [+7]
      338 MULK                             R30 R28 K68 [10]
      339 FASTCALL1                        MATH_ROUND R30 ; [+2]
      340 GETIMPORT                        R29 K70 [math.round]
      342 CALL                             R29 1 1
      343 DIVK                             R27 R29 K68 [10]
      344 JUMP                             ; [+6]
      345 FASTCALL1                        MATH_ROUND R28 ; [+3]
      346 MOVE                             R30 R28
      347 GETIMPORT                        R29 K70 [math.round]
      349 CALL                             R29 1 1
      350 MOVE                             R27 R29
      351 FASTCALL1                        TOSTRING R27 ; [+2]
      352 GETIMPORT                        R26 K72 [tostring]
      354 CALL                             R26 1 1
      355 SETTABLEKS                       R26 R25 K58 ["Text"]
      357 SETTABLEKS                       R9 R25 K62 ["OnFocusLost"]
      359 SETTABLEKS                       R9 R25 K63 ["OnEnter"]
      361 NEWCLOSURE                       R26 P8
      362 CAPTURE                          UPVAL U3
      363 CAPTURE                          VAL R1
      364 SETTABLEKS                       R26 R25 K64 ["OnValidateText"]
      366 CALL                             R23 2 1
      367 SETTABLEKS                       R23 R22 K55 ["LowerRangeInput"]
      369 JUMPIFNOT                        R4 ; [+2]
      370 LOADNIL                          R23
      371 JUMP                             ; [+30]
      372 GETUPVAL                         R23 4
      373 LOADK                            R24 K73 ["TextLabel"]
      374 NEWTABLE                         R25 8 0
      376 GETUPVAL                         R26 2
      377 GETTABLEKS                       R26 R26 K7 ["Tag"]
      379 LOADK                            R27 K74 ["Component-TextLabel"]
      380 SETTABLE                         R27 R25 R26
      381 GETIMPORT                        R26 K43 [UDim2.fromOffset]
      383 LOADN                            R27 7
      384 GETUPVAL                         R28 10
      385 GETTABLEKS                       R28 R28 K44 ["STANDARD_HEIGHT"]
      387 CALL                             R26 2 1
      388 SETTABLEKS                       R26 R25 K14 ["Size"]
      390 LOADK                            R26 K75 ["-"]
      391 SETTABLEKS                       R26 R25 K58 ["Text"]
      393 MOVE                             R26 R2
      394 CALL                             R26 0 1
      395 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      397 GETIMPORT                        R26 K77 [Enum.AutomaticSize.X]
      399 SETTABLEKS                       R26 R25 K16 ["AutomaticSize"]
      401 CALL                             R23 2 1
      402 SETTABLEKS                       R23 R22 K56 ["Hyphen"]
      404 GETUPVAL                         R23 4
      405 GETUPVAL                         R24 14
      406 DUPTABLE                         R25 K65 [{"LayoutOrder", "Size", "AutomaticSize", "Text", "OnFocusLost", "OnEnter", "OnValidateText"}]
      407 MOVE                             R26 R2
      408 CALL                             R26 0 1
      409 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      411 GETIMPORT                        R26 K43 [UDim2.fromOffset]
      413 LOADN                            R27 44
      414 GETUPVAL                         R28 10
      415 GETTABLEKS                       R28 R28 K44 ["STANDARD_HEIGHT"]
      417 CALL                             R26 2 1
      418 SETTABLEKS                       R26 R25 K14 ["Size"]
      420 GETUPVAL                         R27 12
      421 CALL                             R27 0 1
      422 JUMPIFNOT                        R27 ; [+3]
      423 GETIMPORT                        R26 K67 [Enum.AutomaticSize.Y]
      425 JUMP                             ; [+1]
      426 LOADNIL                          R26
      427 SETTABLEKS                       R26 R25 K16 ["AutomaticSize"]
      429 GETTABLEKS                       R28 R6 K37 ["Max"]
      431 GETTABLEKS                       R29 R0 K49 ["roundToTenths"]
      433 JUMPIFNOT                        R29 ; [+7]
      434 MULK                             R30 R28 K68 [10]
      435 FASTCALL1                        MATH_ROUND R30 ; [+2]
      436 GETIMPORT                        R29 K70 [math.round]
      438 CALL                             R29 1 1
      439 DIVK                             R27 R29 K68 [10]
      440 JUMP                             ; [+6]
      441 FASTCALL1                        MATH_ROUND R28 ; [+3]
      442 MOVE                             R30 R28
      443 GETIMPORT                        R29 K70 [math.round]
      445 CALL                             R29 1 1
      446 MOVE                             R27 R29
      447 FASTCALL1                        TOSTRING R27 ; [+2]
      448 GETIMPORT                        R26 K72 [tostring]
      450 CALL                             R26 1 1
      451 SETTABLEKS                       R26 R25 K58 ["Text"]
      453 SETTABLEKS                       R10 R25 K62 ["OnFocusLost"]
      455 SETTABLEKS                       R10 R25 K63 ["OnEnter"]
      457 NEWCLOSURE                       R26 P9
      458 CAPTURE                          UPVAL U3
      459 CAPTURE                          VAL R1
      460 SETTABLEKS                       R26 R25 K64 ["OnValidateText"]
      462 CALL                             R23 2 1
      463 SETTABLEKS                       R23 R22 K57 ["UpperRangeInput"]
      465 GETUPVAL                         R23 4
      466 LOADK                            R24 K73 ["TextLabel"]
      467 NEWTABLE                         R25 8 0
      469 GETUPVAL                         R26 2
      470 GETTABLEKS                       R26 R26 K7 ["Tag"]
      472 LOADK                            R27 K74 ["Component-TextLabel"]
      473 SETTABLE                         R27 R25 R26
      474 GETIMPORT                        R26 K43 [UDim2.fromOffset]
      476 LOADN                            R27 0
      477 LOADN                            R28 28
      478 CALL                             R26 2 1
      479 SETTABLEKS                       R26 R25 K14 ["Size"]
      481 GETTABLEKS                       R26 R0 K78 ["inputFieldText"]
      483 SETTABLEKS                       R26 R25 K58 ["Text"]
      485 MOVE                             R26 R2
      486 CALL                             R26 0 1
      487 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      489 GETIMPORT                        R26 K77 [Enum.AutomaticSize.X]
      491 SETTABLEKS                       R26 R25 K16 ["AutomaticSize"]
      493 CALL                             R23 2 1
      494 SETTABLEKS                       R23 R22 K58 ["Text"]
      496 CALL                             R19 3 1
      497 SETTABLEKS                       R19 R18 K26 ["Input"]
      499 DUPTABLE                         R19 K79 [{"UIPadding"}]
      500 GETUPVAL                         R21 8
      501 CALL                             R21 0 1
      502 JUMPIF                           R21 ; [+12]
      503 GETUPVAL                         R20 4
      504 LOADK                            R21 K54 ["UIPadding"]
      505 DUPTABLE                         R22 K61 [{"PaddingLeft"}]
      506 GETIMPORT                        R23 K31 [UDim.new]
      508 LOADN                            R24 0
      509 LOADN                            R25 5
      510 CALL                             R23 2 1
      511 SETTABLEKS                       R23 R22 K60 ["PaddingLeft"]
      513 CALL                             R20 2 1
      514 JUMP                             ; [+1]
      515 LOADNIL                          R20
      516 SETTABLEKS                       R20 R19 K54 ["UIPadding"]
      518 CALL                             R15 4 1
      519 SETTABLEKS                       R15 R14 K19 ["SliderAndInput"]
      521 GETUPVAL                         R16 8
      522 CALL                             R16 0 1
      523 JUMPIFNOT                        R16 ; [+41]
      524 GETTABLEKS                       R16 R0 K1 ["toggleRangeProps"]
      526 JUMPIFNOT                        R16 ; [+5]
      527 GETTABLEKS                       R16 R0 K1 ["toggleRangeProps"]
      529 GETTABLEKS                       R16 R16 K2 ["toggleValue"]
      531 JUMPIFNOT                        R16 ; [+2]
      532 LOADNIL                          R15
      533 JUMP                             ; [+66]
      534 GETUPVAL                         R15 4
      535 GETUPVAL                         R16 11
      536 DUPTABLE                         R17 K50 [{"LayoutOrder", "min", "numberRange", "setNumberRange", "toggleRangeProps", "round", "roundToTenths"}]
      537 MOVE                             R18 R2
      538 CALL                             R18 0 1
      539 SETTABLEKS                       R18 R17 K23 ["LayoutOrder"]
      541 GETTABLEKS                       R18 R0 K45 ["min"]
      543 SETTABLEKS                       R18 R17 K45 ["min"]
      545 GETTABLEKS                       R18 R0 K4 ["numberRange"]
      547 SETTABLEKS                       R18 R17 K4 ["numberRange"]
      549 GETTABLEKS                       R18 R0 K47 ["setNumberRange"]
      551 SETTABLEKS                       R18 R17 K47 ["setNumberRange"]
      553 GETTABLEKS                       R18 R0 K1 ["toggleRangeProps"]
      555 SETTABLEKS                       R18 R17 K1 ["toggleRangeProps"]
      557 SETTABLEKS                       R5 R17 K48 ["round"]
      559 GETTABLEKS                       R18 R0 K49 ["roundToTenths"]
      561 SETTABLEKS                       R18 R17 K49 ["roundToTenths"]
      563 CALL                             R15 2 1
      564 JUMP                             ; [+35]
      565 GETTABLEKS                       R16 R0 K1 ["toggleRangeProps"]
      567 JUMPIF                           R16 ; [+2]
      568 LOADNIL                          R15
      569 JUMP                             ; [+30]
      570 GETUPVAL                         R15 4
      571 GETUPVAL                         R16 15
      572 NEWTABLE                         R17 8 0
      574 GETUPVAL                         R18 2
      575 GETTABLEKS                       R18 R18 K7 ["Tag"]
      577 LOADK                            R19 K80 ["X-Fit X-Left X-Middle X-RowS IconOnly Compact"]
      578 SETTABLE                         R19 R17 R18
      579 MOVE                             R18 R2
      580 CALL                             R18 0 1
      581 SETTABLEKS                       R18 R17 K23 ["LayoutOrder"]
      583 GETTABLEKS                       R18 R0 K1 ["toggleRangeProps"]
      585 GETTABLEKS                       R18 R18 K2 ["toggleValue"]
      587 SETTABLEKS                       R18 R17 K81 ["Checked"]
      589 GETTABLEKS                       R18 R0 K1 ["toggleRangeProps"]
      591 GETTABLEKS                       R18 R18 K82 ["toggleText"]
      593 SETTABLEKS                       R18 R17 K58 ["Text"]
      595 NEWCLOSURE                       R18 P10
      596 CAPTURE                          VAL R0
      597 SETTABLEKS                       R18 R17 K83 ["OnClick"]
      599 CALL                             R15 2 1
      600 SETTABLEKS                       R15 R14 K20 ["SetMinMaxToggle"]
      602 CALL                             R11 3 -1
      603 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Components"]
       29 GETTABLEKS                       R4 R4 K12 ["NumericTextInput"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Packages"]
       36 GETTABLEKS                       R5 R5 K13 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Packages"]
       43 GETTABLEKS                       R6 R6 K14 ["ReactUtils"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Flags"]
       52 GETTABLEKS                       R7 R7 K16 ["getFFlagAvatarSettingsRevertInvalidInput"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Src"]
       59 GETTABLEKS                       R8 R8 K15 ["Flags"]
       61 GETTABLEKS                       R8 R8 K17 ["getFFlagAvatarSettingsSliderErrorLayout"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K6 ["Src"]
       68 GETTABLEKS                       R9 R9 K15 ["Flags"]
       70 GETTABLEKS                       R9 R9 K18 ["getFFlagFeatureMigrateStylingV2"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K6 ["Src"]
       77 GETTABLEKS                       R10 R10 K7 ["Util"]
       79 GETTABLEKS                       R10 R10 K19 ["isValidNumberInput"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K6 ["Src"]
       86 GETTABLEKS                       R11 R11 K15 ["Flags"]
       88 GETTABLEKS                       R11 R11 K20 ["getFFlagAvatarSettingsReorderCustomScaleComponents"]
       90 CALL                             R10 1 1
       91 GETTABLEKS                       R11 R2 K21 ["ContextServices"]
       93 GETTABLEKS                       R12 R11 K22 ["Localization"]
       95 GETTABLEKS                       R13 R2 K23 ["UI"]
       97 GETTABLEKS                       R14 R13 K24 ["Pane"]
       99 GETTABLEKS                       R15 R13 K25 ["RangeSlider"]
      101 GETTABLEKS                       R16 R13 K26 ["Checkbox"]
      103 GETTABLEKS                       R17 R5 K27 ["createNextOrder"]
      105 GETTABLEKS                       R18 R4 K28 ["createElement"]
      107 GETTABLEKS                       R19 R2 K29 ["Styling"]
      109 GETTABLEKS                       R19 R19 K30 ["joinTags"]
      111 DUPCLOSURE                       R20 K31 [PROTO_1]
      112 CAPTURE                          VAL R18
      113 CAPTURE                          VAL R16
      114 CAPTURE                          VAL R4
      115 DUPCLOSURE                       R21 K32 [PROTO_13]
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R17
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R18
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R19
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R15
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R20
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R16
      132 RETURN                           R21 1
