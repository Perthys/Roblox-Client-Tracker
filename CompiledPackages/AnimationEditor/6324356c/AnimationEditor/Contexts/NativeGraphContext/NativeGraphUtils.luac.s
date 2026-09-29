PROTO_0:
        0 LOADK                            R5 K0 ["Configuration"]
        1 NAMECALL                         R3 R0 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+1]
        5 RETURN                           R0 1
        6 JUMPIF                           R2 ; [+7]
        7 MOVE                             R5 R1
        8 NAMECALL                         R3 R0 K2 ["FindFirstChild"]
       10 CALL                             R3 2 1
       11 JUMPIFEQKNIL                     R3 ; [+2]
       13 RETURN                           R3 1
       14 GETIMPORT                        R3 K5 [Instance.new]
       16 LOADK                            R4 K0 ["Configuration"]
       17 CALL                             R3 1 1
       18 SETTABLEKS                       R1 R3 K6 ["Name"]
       20 SETTABLEKS                       R0 R3 K7 ["Parent"]
       22 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R3 K0 ["Configuration"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_2:
        0 LOADK                            R4 K0 ["Configuration"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+6]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["of"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1
       11 LOADK                            R4 K0 ["Configuration"]
       12 NAMECALL                         R2 R0 K1 ["IsA"]
       14 CALL                             R2 2 1
       15 JUMPIFNOT                        R2 ; [+1]
       16 JUMP                             ; [+15]
       17 MOVE                             R4 R1
       18 NAMECALL                         R2 R0 K3 ["FindFirstChild"]
       20 CALL                             R2 2 1
       21 JUMPIFEQKNIL                     R2 ; [+2]
       23 JUMP                             ; [+8]
       24 GETIMPORT                        R2 K6 [Instance.new]
       26 LOADK                            R3 K0 ["Configuration"]
       27 CALL                             R2 1 1
       28 SETTABLEKS                       R1 R2 K7 ["Name"]
       30 SETTABLEKS                       R0 R2 K8 ["Parent"]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K9 ["observeFirstNamedChild"]
       35 MOVE                             R3 R0
       36 DUPCLOSURE                       R4 K10 [PROTO_1]
       37 MOVE                             R5 R1
       38 CALL                             R2 3 1
       39 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R4 R2 K0 ["parameterName"]
        2 JUMPIF                           R4 ; [+6]
        3 LOADK                            R4 K1 ["%*Parameter"]
        4 GETTABLEKS                       R6 R2 K2 ["parameterType"]
        6 NAMECALL                         R4 R4 K3 ["format"]
        8 CALL                             R4 2 1
        9 MOVE                             R5 R4
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K4 ["getParameterInstanceName"]
       13 MOVE                             R7 R5
       14 CALL                             R6 1 1
       15 JUMPIF                           R3 ; [+21]
       16 LOADN                            R7 0
       17 MOVE                             R10 R6
       18 NAMECALL                         R8 R1 K5 ["FindFirstChild"]
       20 CALL                             R8 2 1
       21 JUMPIFNOT                        R8 ; [+15]
       22 ADDK                             R7 R7 K6 [1]
       23 GETIMPORT                        R8 K8 [string.format]
       25 LOADK                            R9 K9 ["%s%d"]
       26 MOVE                             R10 R4
       27 MOVE                             R11 R7
       28 CALL                             R8 3 1
       29 MOVE                             R5 R8
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K4 ["getParameterInstanceName"]
       33 MOVE                             R9 R5
       34 CALL                             R8 1 1
       35 MOVE                             R6 R8
       36 JUMPBACK                         ; [-20]
       37 GETIMPORT                        R7 K12 [Instance.new]
       39 LOADK                            R8 K13 ["Folder"]
       40 CALL                             R7 1 1
       41 SETTABLEKS                       R6 R7 K14 ["Name"]
       43 GETUPVAL                         R10 1
       44 GETTABLEKS                       R10 R10 K15 ["NODE_ATTRIBUTES"]
       46 GETTABLEKS                       R10 R10 K16 ["ParameterType"]
       48 NAMECALL                         R8 R7 K17 ["GetAttribute"]
       50 CALL                             R8 2 1
       51 JUMPIF                           R8 ; [+19]
       52 GETUPVAL                         R10 1
       53 GETTABLEKS                       R10 R10 K15 ["NODE_ATTRIBUTES"]
       55 GETTABLEKS                       R10 R10 K16 ["ParameterType"]
       57 GETTABLEKS                       R11 R2 K2 ["parameterType"]
       59 NAMECALL                         R8 R7 K18 ["SetAttribute"]
       61 CALL                             R8 3 0
       62 GETUPVAL                         R10 1
       63 GETTABLEKS                       R10 R10 K15 ["NODE_ATTRIBUTES"]
       65 GETTABLEKS                       R10 R10 K19 ["BindingName"]
       67 MOVE                             R11 R5
       68 NAMECALL                         R8 R7 K18 ["SetAttribute"]
       70 CALL                             R8 3 0
       71 SETTABLEKS                       R1 R7 K20 ["Parent"]
       73 MOVE                             R10 R7
       74 NAMECALL                         R8 R0 K21 ["instanceToId"]
       76 CALL                             R8 2 0
       77 RETURN                           R7 1

PROTO_4:
        0 LOADK                            R3 K0 ["AnimationValueNodeDefinition"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_5:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R1 1
        6 LOADN                            R2 1
        7 LOADK                            R5 K1 ["%*%*"]
        8 MOVE                             R7 R1
        9 MOVE                             R8 R2
       10 NAMECALL                         R5 R5 K2 ["format"]
       12 CALL                             R5 3 1
       13 NAMECALL                         R3 R0 K0 ["FindFirstChild"]
       15 CALL                             R3 2 1
       16 JUMPIFNOT                        R3 ; [+2]
       17 ADDK                             R2 R2 K3 [1]
       18 JUMPBACK                         ; [-12]
       19 LOADK                            R3 K1 ["%*%*"]
       20 MOVE                             R5 R1
       21 MOVE                             R6 R2
       22 NAMECALL                         R3 R3 K2 ["format"]
       24 CALL                             R3 3 1
       25 RETURN                           R3 1

PROTO_6:
        0 LOADK                            R3 K0 ["AnimationValueOutputDefinition"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_7:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["AnimationValueNodeDefinition"]
        3 CALL                             R3 1 1
        4 GETIMPORT                        R4 K7 [Enum.AnimationValueNodeType.Expression]
        6 SETTABLEKS                       R4 R3 K8 ["NodeType"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K9 ["getUniqueValueNodeName"]
       11 MOVE                             R5 R1
       12 GETIMPORT                        R6 K7 [Enum.AnimationValueNodeType.Expression]
       14 GETTABLEKS                       R6 R6 K10 ["Name"]
       16 CALL                             R4 2 1
       17 SETTABLEKS                       R4 R3 K10 ["Name"]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K11 ["NODE_ATTRIBUTES"]
       22 GETTABLEKS                       R6 R6 K6 ["Expression"]
       24 LOADK                            R7 K12 [""]
       25 NAMECALL                         R4 R3 K13 ["SetAttribute"]
       27 CALL                             R4 3 0
       28 SETTABLEKS                       R1 R3 K14 ["Parent"]
       30 MOVE                             R6 R3
       31 NAMECALL                         R4 R0 K15 ["instanceToId"]
       33 CALL                             R4 2 0
       34 RETURN                           R3 1

PROTO_8:
        0 GETTABLEKS                       R3 R2 K0 ["parameterType"]
        2 GETTABLEKS                       R4 R2 K1 ["parameterName"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K2 ["getParameterInstanceName"]
        7 MOVE                             R6 R4
        8 CALL                             R5 1 1
        9 MOVE                             R8 R5
       10 NAMECALL                         R6 R1 K3 ["FindFirstChild"]
       12 CALL                             R6 2 1
       13 JUMPIF                           R6 ; [+2]
       14 LOADNIL                          R7
       15 RETURN                           R7 1
       16 FASTCALL2K                       ASSERT R3 K4 ; [+5]
       18 MOVE                             R8 R3
       19 LOADK                            R9 K4 ["Parameter type must be provided for createExistingParameterInstance"]
       20 GETIMPORT                        R7 K6 [assert]
       22 CALL                             R7 2 0
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K7 ["getOrCreateParameterInstance"]
       26 MOVE                             R8 R0
       27 MOVE                             R9 R1
       28 DUPTABLE                         R10 K8 [{"parameterType", "parameterName"}]
       29 SETTABLEKS                       R3 R10 K0 ["parameterType"]
       31 SETTABLEKS                       R4 R10 K1 ["parameterName"]
       33 LOADB                            R11 1
       34 CALL                             R7 4 1
       35 MOVE                             R10 R7
       36 NAMECALL                         R8 R0 K9 ["instanceToId"]
       38 CALL                             R8 2 0
       39 GETUPVAL                         R10 1
       40 GETTABLEKS                       R10 R10 K10 ["NODE_ATTRIBUTES"]
       42 GETTABLEKS                       R10 R10 K11 ["ParameterType"]
       44 MOVE                             R11 R3
       45 NAMECALL                         R8 R7 K12 ["SetAttribute"]
       47 CALL                             R8 3 0
       48 GETUPVAL                         R10 1
       49 GETTABLEKS                       R10 R10 K10 ["NODE_ATTRIBUTES"]
       51 GETTABLEKS                       R10 R10 K13 ["BindingName"]
       53 MOVE                             R11 R4
       54 NAMECALL                         R8 R7 K12 ["SetAttribute"]
       56 CALL                             R8 3 0
       57 RETURN                           R7 1

PROTO_9:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 MOVE                             R1 R0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R6 R5 K0 ["Name"]
        8 GETUPVAL                         R7 0
        9 JUMPIFNOTEQ                      R6 R7 ; [+14]
       11 GETTABLEKS                       R7 R5 K1 ["Type"]
       13 JUMPIFNOT                        R7 ; [+3]
       14 GETTABLEKS                       R6 R5 K1 ["Type"]
       16 JUMPIF                           R6 ; [+6]
       17 GETTABLEKS                       R7 R5 K2 ["Value"]
       19 FASTCALL1                        TYPE R7 ; [+2]
       20 GETIMPORT                        R6 K4 [type]
       22 CALL                             R6 1 1
       23 RETURN                           R6 1
       24 FORGLOOP                         R1 2 ; [-19]
       26 RETURN                           R0 0

PROTO_10:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 MOVE                             R5 R0
        3 NAMECALL                         R3 R3 K0 ["GetAnimationNodeDefinition"]
        5 CALL                             R3 2 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R1
        8 MOVE                             R5 R4
        9 GETTABLEKS                       R6 R3 K1 ["Properties"]
       11 CALL                             R5 1 1
       12 MOVE                             R2 R5
       13 JUMPIF                           R2 ; [+13]
       14 GETTABLEKS                       R5 R3 K2 ["Inputs"]
       16 LOADNIL                          R6
       17 LOADNIL                          R7
       18 FORGPREP                         R5
       19 MOVE                             R10 R4
       20 GETTABLEKS                       R11 R9 K1 ["Properties"]
       22 CALL                             R10 1 1
       23 MOVE                             R2 R10
       24 JUMPIF                           R2 ; [+2]
       25 FORGLOOP                         R5 2 ; [-7]
       27 JUMPIF                           R2 ; [+2]
       28 LOADNIL                          R5
       29 RETURN                           R5 1
       30 GETIMPORT                        R5 K5 [string.find]
       32 MOVE                             R6 R2
       33 LOADK                            R7 K6 ["Enum"]
       34 CALL                             R5 2 1
       35 JUMPIFNOT                        R5 ; [+5]
       36 GETUPVAL                         R5 1
       37 JUMPIFNOT                        R5 ; [+2]
       38 MOVE                             R2 R1
       39 JUMP                             ; [+1]
       40 LOADK                            R2 K6 ["Enum"]
       41 JUMPIFNOTEQKS                    R2 K7 ["number"] ; [+2]
       43 LOADK                            R2 K8 ["Number"]
       44 RETURN                           R2 1

PROTO_11:
        0 MOVE                             R5 R1
        1 LOADK                            R6 K0 ["param::%*"]
        2 MOVE                             R8 R2
        3 NAMECALL                         R6 R6 K1 ["format"]
        5 CALL                             R6 2 1
        6 NAMECALL                         R3 R0 K2 ["SetAttribute"]
        8 CALL                             R3 3 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["NODE_CONFIGURATION_NAME"]
        3 LOADK                            R5 K1 ["Configuration"]
        4 NAMECALL                         R3 R0 K2 ["IsA"]
        6 CALL                             R3 2 1
        7 JUMPIFNOT                        R3 ; [+2]
        8 MOVE                             R1 R0
        9 JUMP                             ; [+17]
       10 MOVE                             R5 R2
       11 NAMECALL                         R3 R0 K3 ["FindFirstChild"]
       13 CALL                             R3 2 1
       14 JUMPIFEQKNIL                     R3 ; [+3]
       16 MOVE                             R1 R3
       17 JUMP                             ; [+9]
       18 GETIMPORT                        R3 K6 [Instance.new]
       20 LOADK                            R4 K1 ["Configuration"]
       21 CALL                             R3 1 1
       22 SETTABLEKS                       R2 R3 K7 ["Name"]
       24 SETTABLEKS                       R0 R3 K8 ["Parent"]
       26 MOVE                             R1 R3
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K9 ["NODE_ATTRIBUTES"]
       30 GETTABLEKS                       R4 R4 K10 ["Position"]
       32 NAMECALL                         R2 R1 K11 ["GetAttribute"]
       34 CALL                             R2 2 1
       35 FASTCALL1                        TYPEOF R2 ; [+3]
       36 MOVE                             R5 R2
       37 GETIMPORT                        R4 K13 [typeof]
       39 CALL                             R4 1 1
       40 JUMPIFNOTEQKS                    R4 K14 ["Vector2"] ; [+3]
       42 MOVE                             R3 R2
       43 RETURN                           R3 1
       44 LOADNIL                          R3
       45 RETURN                           R3 1

PROTO_13:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K3 ["CHILD_WIDTH"]
        5 MINUS                            R3 R4
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K5 ["WELL_KNOWN_HEADER_HEIGHT"]
        9 DIVK                             R4 R5 K4 [2]
       10 CALL                             R2 2 1
       11 ADD                              R1 R0 R2
       12 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["NODE_CONFIGURATION_NAME"]
        3 LOADK                            R6 K1 ["Configuration"]
        4 NAMECALL                         R4 R0 K2 ["IsA"]
        6 CALL                             R4 2 1
        7 JUMPIFNOT                        R4 ; [+2]
        8 MOVE                             R2 R0
        9 JUMP                             ; [+17]
       10 MOVE                             R6 R3
       11 NAMECALL                         R4 R0 K3 ["FindFirstChild"]
       13 CALL                             R4 2 1
       14 JUMPIFEQKNIL                     R4 ; [+3]
       16 MOVE                             R2 R4
       17 JUMP                             ; [+9]
       18 GETIMPORT                        R4 K6 [Instance.new]
       20 LOADK                            R5 K1 ["Configuration"]
       21 CALL                             R4 1 1
       22 SETTABLEKS                       R3 R4 K7 ["Name"]
       24 SETTABLEKS                       R0 R4 K8 ["Parent"]
       26 MOVE                             R2 R4
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K9 ["NODE_ATTRIBUTES"]
       30 GETTABLEKS                       R5 R5 K10 ["Position"]
       32 MOVE                             R6 R1
       33 NAMECALL                         R3 R2 K11 ["SetAttribute"]
       35 CALL                             R3 3 0
       36 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["NODE_CONFIGURATION_NAME"]
        3 LOADK                            R6 K1 ["Configuration"]
        4 NAMECALL                         R4 R0 K2 ["IsA"]
        6 CALL                             R4 2 1
        7 JUMPIFNOT                        R4 ; [+2]
        8 MOVE                             R2 R0
        9 JUMP                             ; [+17]
       10 MOVE                             R6 R3
       11 NAMECALL                         R4 R0 K3 ["FindFirstChild"]
       13 CALL                             R4 2 1
       14 JUMPIFEQKNIL                     R4 ; [+3]
       16 MOVE                             R2 R4
       17 JUMP                             ; [+9]
       18 GETIMPORT                        R4 K6 [Instance.new]
       20 LOADK                            R5 K1 ["Configuration"]
       21 CALL                             R4 1 1
       22 SETTABLEKS                       R3 R4 K7 ["Name"]
       24 SETTABLEKS                       R0 R4 K8 ["Parent"]
       26 MOVE                             R2 R4
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K9 ["NODE_ATTRIBUTES"]
       30 GETTABLEKS                       R5 R5 K10 ["Size"]
       32 MOVE                             R6 R1
       33 NAMECALL                         R3 R2 K11 ["SetAttribute"]
       35 CALL                             R3 3 0
       36 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["NODE_CONFIGURATION_NAME"]
        3 LOADK                            R6 K1 ["Configuration"]
        4 NAMECALL                         R4 R0 K2 ["IsA"]
        6 CALL                             R4 2 1
        7 JUMPIFNOT                        R4 ; [+2]
        8 MOVE                             R2 R0
        9 JUMP                             ; [+17]
       10 MOVE                             R6 R3
       11 NAMECALL                         R4 R0 K3 ["FindFirstChild"]
       13 CALL                             R4 2 1
       14 JUMPIFEQKNIL                     R4 ; [+3]
       16 MOVE                             R2 R4
       17 JUMP                             ; [+9]
       18 GETIMPORT                        R4 K6 [Instance.new]
       20 LOADK                            R5 K1 ["Configuration"]
       21 CALL                             R4 1 1
       22 SETTABLEKS                       R3 R4 K7 ["Name"]
       24 SETTABLEKS                       R0 R4 K8 ["Parent"]
       26 MOVE                             R2 R4
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K9 ["NODE_ATTRIBUTES"]
       30 GETTABLEKS                       R5 R5 K10 ["Collapsed"]
       32 MOVE                             R6 R1
       33 NAMECALL                         R3 R2 K11 ["SetAttribute"]
       35 CALL                             R3 3 0
       36 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["NODE_CONFIGURATION_NAME"]
        3 LOADK                            R6 K1 ["Configuration"]
        4 NAMECALL                         R4 R0 K2 ["IsA"]
        6 CALL                             R4 2 1
        7 JUMPIFNOT                        R4 ; [+2]
        8 MOVE                             R2 R0
        9 JUMP                             ; [+17]
       10 MOVE                             R6 R3
       11 NAMECALL                         R4 R0 K3 ["FindFirstChild"]
       13 CALL                             R4 2 1
       14 JUMPIFEQKNIL                     R4 ; [+3]
       16 MOVE                             R2 R4
       17 JUMP                             ; [+9]
       18 GETIMPORT                        R4 K6 [Instance.new]
       20 LOADK                            R5 K1 ["Configuration"]
       21 CALL                             R4 1 1
       22 SETTABLEKS                       R3 R4 K7 ["Name"]
       24 SETTABLEKS                       R0 R4 K8 ["Parent"]
       26 MOVE                             R2 R4
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K9 ["NODE_ATTRIBUTES"]
       30 GETTABLEKS                       R5 R5 K10 ["DisplayName"]
       32 MOVE                             R6 R1
       33 NAMECALL                         R3 R2 K11 ["SetAttribute"]
       35 CALL                             R3 3 0
       36 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FFlagAnimGraphUI_DynamicZIndex"]
        3 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        5 LOADK                            R4 K1 ["FFlagAnimGraphUI_DynamicZIndex not enabled"]
        6 GETIMPORT                        R2 K3 [assert]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K4 ["NODE_CONFIGURATION_NAME"]
       12 LOADK                            R6 K5 ["Configuration"]
       13 NAMECALL                         R4 R0 K6 ["IsA"]
       15 CALL                             R4 2 1
       16 JUMPIFNOT                        R4 ; [+2]
       17 MOVE                             R2 R0
       18 JUMP                             ; [+17]
       19 MOVE                             R6 R3
       20 NAMECALL                         R4 R0 K7 ["FindFirstChild"]
       22 CALL                             R4 2 1
       23 JUMPIFEQKNIL                     R4 ; [+3]
       25 MOVE                             R2 R4
       26 JUMP                             ; [+9]
       27 GETIMPORT                        R4 K10 [Instance.new]
       29 LOADK                            R5 K5 ["Configuration"]
       30 CALL                             R4 1 1
       31 SETTABLEKS                       R3 R4 K11 ["Name"]
       33 SETTABLEKS                       R0 R4 K12 ["Parent"]
       35 MOVE                             R2 R4
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K13 ["NODE_ATTRIBUTES"]
       39 GETTABLEKS                       R5 R5 K14 ["ZIndex"]
       41 MOVE                             R6 R1
       42 NAMECALL                         R3 R2 K15 ["SetAttribute"]
       44 CALL                             R3 3 0
       45 RETURN                           R0 0

PROTO_19:
        0 LOADK                            R1 K0 ["Parameter_%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getParameterInstanceName"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 NEWTABLE                         R3 0 0
        7 NAMECALL                         R4 R0 K1 ["GetChildren"]
        9 CALL                             R4 1 3
       10 FORGPREP                         R4
       11 LOADK                            R11 K2 ["Folder"]
       12 NAMECALL                         R9 R8 K3 ["IsA"]
       14 CALL                             R9 2 1
       15 JUMPIFNOT                        R9 ; [+11]
       16 GETTABLEKS                       R9 R8 K4 ["Name"]
       18 JUMPIFNOTEQ                      R9 R2 ; [+8]
       20 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       22 MOVE                             R10 R3
       23 MOVE                             R11 R8
       24 GETIMPORT                        R9 K7 [table.insert]
       26 CALL                             R9 2 0
       27 FORGLOOP                         R4 2 ; [-17]
       29 RETURN                           R3 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Folder"]
        2 NAMECALL                         R1 R1 K1 ["IsA"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 LOADB                            R6 0
       12 GETUPVAL                         R7 2
       13 CALL                             R7 0 1
       14 JUMPIFNOT                        R7 ; [+25]
       15 JUMPIFNOT                        R2 ; [+24]
       16 GETUPVAL                         R7 3
       17 GETTABLEKS                       R7 R7 K2 ["isValueOutputEndpoint"]
       19 MOVE                             R8 R2
       20 CALL                             R7 1 1
       21 JUMPIFNOT                        R7 ; [+18]
       22 LOADB                            R6 1
       23 GETTABLEKS                       R4 R2 K3 ["Parent"]
       25 GETUPVAL                         R7 0
       26 LOADK                            R9 K4 ["ObjectValue"]
       27 NAMECALL                         R7 R7 K1 ["IsA"]
       29 CALL                             R7 2 1
       30 JUMPIFNOT                        R7 ; [+7]
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R3 R7 K3 ["Parent"]
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R5 R7 K5 ["Name"]
       37 JUMP                             ; [+23]
       38 GETUPVAL                         R3 0
       39 JUMP                             ; [+21]
       40 JUMPIFNOT                        R1 ; [+12]
       41 JUMPIFNOT                        R2 ; [+11]
       42 LOADK                            R9 K4 ["ObjectValue"]
       43 NAMECALL                         R7 R2 K1 ["IsA"]
       45 CALL                             R7 2 1
       46 JUMPIFNOT                        R7 ; [+6]
       47 GETTABLEKS                       R3 R2 K3 ["Parent"]
       49 GETUPVAL                         R4 0
       50 GETTABLEKS                       R5 R2 K5 ["Name"]
       52 JUMP                             ; [+8]
       53 JUMPIFNOT                        R1 ; [+2]
       54 MOVE                             R3 R2
       55 JUMP                             ; [+1]
       56 GETUPVAL                         R3 0
       57 JUMPIFNOT                        R1 ; [+2]
       58 GETUPVAL                         R4 0
       59 JUMP                             ; [+1]
       60 MOVE                             R4 R2
       61 JUMPIFNOT                        R4 ; [+6]
       62 GETUPVAL                         R7 4
       63 MOVE                             R9 R4
       64 NAMECALL                         R7 R7 K6 ["instanceToId"]
       66 CALL                             R7 2 1
       67 JUMP                             ; [+1]
       68 LOADNIL                          R7
       69 JUMPIFNOT                        R3 ; [+6]
       70 GETUPVAL                         R8 4
       71 MOVE                             R10 R3
       72 NAMECALL                         R8 R8 K6 ["instanceToId"]
       74 CALL                             R8 2 1
       75 JUMP                             ; [+1]
       76 LOADNIL                          R8
       77 GETUPVAL                         R9 5
       78 MOVE                             R10 R0
       79 CALL                             R9 1 1
       80 GETUPVAL                         R10 3
       81 GETTABLEKS                       R10 R10 K7 ["getParameterWireInputPinId"]
       83 MOVE                             R11 R9
       84 CALL                             R10 1 1
       85 OR                               R11 R10 R9
       86 GETUPVAL                         R12 6
       87 MOVE                             R13 R0
       88 CALL                             R12 1 1
       89 DUPTABLE                         R13 K17 [{["wireId"], ["inputNodeId"], ["inputNodePinId"], ["outputNodeId"], ["outputNodePinId"] = "Output", ["properties"], ["targetWireInputPinId"], ["isValueNodeConnection"]}]
       90 GETUPVAL                         R14 7
       91 SETTABLEKS                       R14 R13 K8 ["wireId"]
       93 SETTABLEKS                       R8 R13 K9 ["inputNodeId"]
       95 SETTABLEKS                       R11 R13 K10 ["inputNodePinId"]
       97 SETTABLEKS                       R7 R13 K11 ["outputNodeId"]
       99 SETTABLEKS                       R12 R13 K14 ["properties"]
      101 SETTABLEKS                       R5 R13 K15 ["targetWireInputPinId"]
      103 SETTABLEKS                       R6 R13 K16 ["isValueNodeConnection"]
      105 RETURN                           R13 1

PROTO_22:
        0 MOVE                             R5 R2
        1 NAMECALL                         R3 R0 K0 ["instanceToId"]
        3 CALL                             R3 2 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["properties"]
        7 GETTABLEKS                       R4 R4 K2 ["observeInstance"]
        9 MOVE                             R5 R2
       10 LOADK                            R6 K3 ["Value"]
       11 CALL                             R4 2 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K1 ["properties"]
       15 GETTABLEKS                       R5 R5 K4 ["observeString"]
       17 MOVE                             R6 R2
       18 LOADK                            R7 K5 ["Name"]
       19 CALL                             R5 2 1
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K6 ["observeAttributes"]
       23 MOVE                             R7 R2
       24 CALL                             R6 1 1
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R7 R7 K7 ["createComputed"]
       28 NEWCLOSURE                       R8 P0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R4
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R3
       37 CALL                             R7 1 -1
       38 RETURN                           R7 -1

PROTO_23:
        0 NEWTABLE                         R1 0 1
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 -1
        5 SETLIST                          R1 R2 -1 [1]
        7 RETURN                           R1 1

PROTO_24:
        0 LOADK                            R4 K0 ["ObjectValue"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        6 LOADK                            R3 K2 ["Bad ObjectValue"]
        7 GETIMPORT                        R1 K4 [assert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K5 ["observeWireInfo"]
       13 GETUPVAL                         R2 1
       14 GETUPVAL                         R3 2
       15 MOVE                             R4 R0
       16 CALL                             R1 3 -1
       17 RETURN                           R1 -1

PROTO_25:
        0 NEWTABLE                         R1 0 1
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 -1
        5 SETLIST                          R1 R2 -1 [1]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 CALL                             R2 1 3
       10 FORGPREP                         R2
       11 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       13 MOVE                             R8 R1
       14 MOVE                             R9 R6
       15 GETIMPORT                        R7 K2 [table.insert]
       17 CALL                             R7 2 0
       18 FORGLOOP                         R2 2 ; [-8]
       20 RETURN                           R1 1

PROTO_26:
        0 LOADK                            R4 K0 ["ObjectValue"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        6 LOADK                            R3 K2 ["Bad ObjectValue"]
        7 GETIMPORT                        R1 K4 [assert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K5 ["observeWireInfo"]
       13 GETUPVAL                         R2 1
       14 GETUPVAL                         R3 2
       15 MOVE                             R4 R0
       16 CALL                             R1 3 1
       17 GETUPVAL                         R2 3
       18 JUMPIF                           R2 ; [+7]
       19 GETUPVAL                         R2 4
       20 GETTABLEKS                       R2 R2 K6 ["createComputed"]
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          VAL R1
       24 CALL                             R2 1 -1
       25 RETURN                           R2 -1
       26 GETUPVAL                         R2 5
       27 GETTABLEKS                       R2 R2 K7 ["observeChildrenWhichIsA"]
       29 MOVE                             R3 R0
       30 LOADK                            R4 K0 ["ObjectValue"]
       31 CALL                             R2 2 1
       32 GETUPVAL                         R3 5
       33 GETTABLEKS                       R3 R3 K8 ["forEach"]
       35 MOVE                             R4 R2
       36 NEWCLOSURE                       R5 P1
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          VAL R0
       40 CALL                             R3 2 1
       41 GETUPVAL                         R4 4
       42 GETTABLEKS                       R4 R4 K6 ["createComputed"]
       44 NEWCLOSURE                       R5 P2
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R3
       47 CALL                             R4 1 -1
       48 RETURN                           R4 -1

PROTO_27:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 MOVE                             R7 R6
        7 LOADNIL                          R8
        8 LOADNIL                          R9
        9 FORGPREP                         R7
       10 FASTCALL2                        TABLE_INSERT R1 R11 ; [+5]
       12 MOVE                             R13 R1
       13 MOVE                             R14 R11
       14 GETIMPORT                        R12 K2 [table.insert]
       16 CALL                             R12 2 0
       17 FORGLOOP                         R7 2 ; [-8]
       19 FORGLOOP                         R2 2 ; [-14]
       21 RETURN                           R1 1

PROTO_28:
        0 LOADK                            R4 K0 ["AnimationNodeDefinition"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+4]
        5 LOADK                            R4 K2 ["Folder"]
        6 NAMECALL                         R2 R0 K1 ["IsA"]
        8 CALL                             R2 2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Bad Node Instance Type"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 CALL                             R1 0 1
       17 JUMPIFNOT                        R1 ; [+4]
       18 LOADK                            R3 K0 ["AnimationNodeDefinition"]
       19 NAMECALL                         R1 R0 K1 ["IsA"]
       21 CALL                             R1 2 1
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K6 ["observeChildrenWhichIsA"]
       25 MOVE                             R3 R0
       26 LOADK                            R4 K7 ["ObjectValue"]
       27 CALL                             R2 2 1
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K8 ["forEach"]
       31 MOVE                             R4 R2
       32 NEWCLOSURE                       R5 P0
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          UPVAL U1
       39 CALL                             R3 2 1
       40 GETUPVAL                         R4 4
       41 GETTABLEKS                       R4 R4 K9 ["createComputed"]
       43 NEWCLOSURE                       R5 P1
       44 CAPTURE                          VAL R3
       45 CALL                             R4 1 -1
       46 RETURN                           R4 -1

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R2 0
        4 GETTABLE                         R1 R2 R0
        5 RETURN                           R1 1
        6 DUPTABLE                         R1 K5 [{"nodeId", "inputNodesByPinName", "outputNodesByPinName", "outgoingWires", "inputLabelNodesByPinName"}]
        7 SETTABLEKS                       R0 R1 K0 ["nodeId"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K1 ["inputNodesByPinName"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K2 ["outputNodesByPinName"]
       17 NEWTABLE                         R2 0 0
       19 SETTABLEKS                       R2 R1 K3 ["outgoingWires"]
       21 NEWTABLE                         R2 0 0
       23 SETTABLEKS                       R2 R1 K4 ["inputLabelNodesByPinName"]
       25 GETUPVAL                         R2 0
       26 SETTABLE                         R1 R2 R0
       27 RETURN                           R1 1

PROTO_30:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 MOVE                             R6 R5
        5 LOADNIL                          R7
        6 LOADNIL                          R8
        7 FORGPREP                         R6
        8 GETTABLEKS                       R11 R10 K0 ["inputNodeId"]
       10 JUMPIFEQKNIL                     R11 ; [+87]
       12 GETUPVAL                         R11 0
       13 GETTABLEKS                       R12 R10 K0 ["inputNodeId"]
       15 CALL                             R11 1 1
       16 GETTABLEKS                       R13 R10 K1 ["outputNodeId"]
       18 JUMPIFNOT                        R13 ; [+5]
       19 GETUPVAL                         R12 0
       20 GETTABLEKS                       R13 R10 K1 ["outputNodeId"]
       22 CALL                             R12 1 1
       23 JUMP                             ; [+1]
       24 LOADNIL                          R12
       25 DUPTABLE                         R13 K7 [{"wireId", "inputNodeId", "inputNodePinId", "outputNodeId", "outputNodePinId", "properties", "isValueNodeConnection"}]
       26 GETTABLEKS                       R14 R10 K2 ["wireId"]
       28 SETTABLEKS                       R14 R13 K2 ["wireId"]
       30 GETTABLEKS                       R14 R10 K0 ["inputNodeId"]
       32 SETTABLEKS                       R14 R13 K0 ["inputNodeId"]
       34 GETTABLEKS                       R14 R10 K3 ["inputNodePinId"]
       36 SETTABLEKS                       R14 R13 K3 ["inputNodePinId"]
       38 GETTABLEKS                       R14 R10 K1 ["outputNodeId"]
       40 SETTABLEKS                       R14 R13 K1 ["outputNodeId"]
       42 GETTABLEKS                       R14 R10 K4 ["outputNodePinId"]
       44 SETTABLEKS                       R14 R13 K4 ["outputNodePinId"]
       46 GETTABLEKS                       R14 R10 K5 ["properties"]
       48 SETTABLEKS                       R14 R13 K5 ["properties"]
       50 GETTABLEKS                       R14 R10 K6 ["isValueNodeConnection"]
       52 SETTABLEKS                       R14 R13 K6 ["isValueNodeConnection"]
       54 GETTABLEKS                       R14 R10 K8 ["targetWireInputPinId"]
       56 JUMPIFEQKNIL                     R14 ; [+19]
       58 GETTABLEKS                       R14 R10 K3 ["inputNodePinId"]
       60 GETTABLEKS                       R16 R11 K9 ["inputLabelNodesByPinName"]
       62 GETTABLE                         R15 R16 R14
       63 JUMPIF                           R15 ; [+5]
       64 GETTABLEKS                       R15 R11 K9 ["inputLabelNodesByPinName"]
       66 NEWTABLE                         R16 0 0
       68 SETTABLE                         R16 R15 R14
       69 GETTABLEKS                       R16 R11 K9 ["inputLabelNodesByPinName"]
       71 GETTABLE                         R15 R16 R14
       72 GETTABLEKS                       R16 R10 K8 ["targetWireInputPinId"]
       74 SETTABLE                         R13 R15 R16
       75 JUMP                             ; [+5]
       76 GETTABLEKS                       R14 R11 K10 ["inputNodesByPinName"]
       78 GETTABLEKS                       R15 R10 K3 ["inputNodePinId"]
       80 SETTABLE                         R13 R14 R15
       81 JUMPIFNOT                        R12 ; [+16]
       82 GETTABLEKS                       R14 R12 K11 ["outputNodesByPinName"]
       84 GETTABLEKS                       R15 R10 K4 ["outputNodePinId"]
       86 SETTABLE                         R13 R14 R15
       87 GETUPVAL                         R14 1
       88 CALL                             R14 0 1
       89 JUMPIFNOT                        R14 ; [+8]
       90 GETTABLEKS                       R15 R12 K12 ["outgoingWires"]
       92 FASTCALL2                        TABLE_INSERT R15 R13 ; [+4]
       94 MOVE                             R16 R13
       95 GETIMPORT                        R14 K15 [table.insert]
       97 CALL                             R14 2 0
       98 FORGLOOP                         R6 2 ; [-91]
      100 FORGLOOP                         R1 2 ; [-97]
      102 RETURN                           R0 0

PROTO_31:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R1
       10 NEWCLOSURE                       R5 P1
       11 CAPTURE                          VAL R4
       12 CAPTURE                          UPVAL U2
       13 MOVE                             R6 R5
       14 MOVE                             R7 R2
       15 CALL                             R6 1 0
       16 MOVE                             R6 R5
       17 MOVE                             R7 R3
       18 CALL                             R6 1 0
       19 MOVE                             R6 R1
       20 LOADNIL                          R7
       21 LOADNIL                          R8
       22 FORGPREP                         R6
       23 GETIMPORT                        R11 K2 [table.freeze]
       25 MOVE                             R12 R10
       26 CALL                             R11 1 0
       27 FORGLOOP                         R6 2 ; [-5]
       29 GETIMPORT                        R6 K2 [table.freeze]
       31 MOVE                             R7 R1
       32 CALL                             R6 1 -1
       33 RETURN                           R6 -1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["observeChildrenWhichIsA"]
        3 MOVE                             R3 R1
        4 LOADK                            R4 K1 ["AnimationNodeDefinition"]
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["observeChildrenWhichIsA"]
        9 MOVE                             R4 R1
       10 LOADK                            R5 K2 ["Folder"]
       11 CALL                             R3 2 1
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U3
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K3 ["forEach"]
       21 MOVE                             R6 R2
       22 MOVE                             R7 R4
       23 CALL                             R5 2 1
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K3 ["forEach"]
       27 MOVE                             R7 R3
       28 MOVE                             R8 R4
       29 CALL                             R6 2 1
       30 GETUPVAL                         R7 3
       31 GETTABLEKS                       R7 R7 K4 ["createComputed"]
       33 NEWCLOSURE                       R8 P1
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R6
       36 CAPTURE                          UPVAL U1
       37 CALL                             R7 1 -1
       38 RETURN                           R7 -1

PROTO_33:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^param::(.+)$"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_34:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["NODE_ATTRIBUTES"]
        3 GETTABLEKS                       R4 R4 K1 ["Expression"]
        5 MOVE                             R5 R1
        6 NAMECALL                         R2 R0 K2 ["SetAttribute"]
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_35:
        0 DUPTABLE                         R1 K4 [{"id", "parameterType", "parameterName", "parameterBindingName"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["id"]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K1 ["parameterType"]
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 SETTABLEKS                       R2 R1 K2 ["parameterName"]
       14 GETUPVAL                         R3 3
       15 MOVE                             R4 R0
       16 CALL                             R3 1 1
       17 ORK                              R2 R3 K5 [""]
       18 SETTABLEKS                       R2 R1 K3 ["parameterBindingName"]
       20 RETURN                           R1 1

PROTO_36:
        0 DUPTABLE                         R1 K3 [{"nodeId", "parameterType", "parameterData"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["nodeId"]
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 ORK                              R2 R3 K4 [""]
        8 SETTABLEKS                       R2 R1 K1 ["parameterType"]
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K2 ["parameterData"]
       15 GETIMPORT                        R2 K7 [table.freeze]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 -1
       19 RETURN                           R2 -1

PROTO_37:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["instanceToId"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["properties"]
        7 GETTABLEKS                       R3 R3 K2 ["observeString"]
        9 MOVE                             R4 R1
       10 LOADK                            R5 K3 ["Name"]
       11 CALL                             R3 2 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K4 ["attributes"]
       15 GETTABLEKS                       R4 R4 K2 ["observeString"]
       17 MOVE                             R5 R1
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K5 ["NODE_ATTRIBUTES"]
       21 GETTABLEKS                       R6 R6 K6 ["ParameterType"]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K4 ["attributes"]
       27 GETTABLEKS                       R5 R5 K2 ["observeString"]
       29 MOVE                             R6 R1
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K5 ["NODE_ATTRIBUTES"]
       33 GETTABLEKS                       R7 R7 K7 ["BindingName"]
       35 CALL                             R5 2 1
       36 GETUPVAL                         R6 2
       37 GETTABLEKS                       R6 R6 K8 ["createComputed"]
       39 NEWCLOSURE                       R7 P0
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R5
       44 CALL                             R6 1 1
       45 GETUPVAL                         R7 2
       46 GETTABLEKS                       R7 R7 K8 ["createComputed"]
       48 NEWCLOSURE                       R8 P1
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R6
       52 CALL                             R7 1 -1
       53 RETURN                           R7 -1

PROTO_38:
        0 DUPTABLE                         R1 K4 [{"id", "parameterType", "parameterName", "parameterBindingName"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["id"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K5 ["EXPRESSION_NODE_CLASSNAME"]
        7 SETTABLEKS                       R2 R1 K1 ["parameterType"]
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 SETTABLEKS                       R2 R1 K2 ["parameterName"]
       14 GETUPVAL                         R2 2
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R1 K3 ["parameterBindingName"]
       19 RETURN                           R1 1

PROTO_39:
        0 DUPTABLE                         R1 K3 [{"nodeId", "parameterType", "parameterData"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["nodeId"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K4 ["EXPRESSION_NODE_CLASSNAME"]
        7 SETTABLEKS                       R2 R1 K1 ["parameterType"]
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 SETTABLEKS                       R2 R1 K2 ["parameterData"]
       14 GETIMPORT                        R2 K7 [table.freeze]
       16 MOVE                             R3 R1
       17 CALL                             R2 1 -1
       18 RETURN                           R2 -1

PROTO_40:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["instanceToId"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["properties"]
        7 GETTABLEKS                       R3 R3 K2 ["observeString"]
        9 MOVE                             R4 R1
       10 LOADK                            R5 K3 ["Name"]
       11 CALL                             R3 2 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K4 ["createComputed"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R3
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K4 ["createComputed"]
       23 NEWCLOSURE                       R6 P1
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R4
       27 CALL                             R5 1 -1
       28 RETURN                           R5 -1

PROTO_41:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R2 K0 ["GetAnimationNodeDefinition"]
        7 CALL                             R2 2 1
        8 JUMPIFNOT                        R2 ; [+3]
        9 GETTABLEKS                       R3 R2 K1 ["Properties"]
       11 JUMPIF                           R3 ; [+2]
       12 NEWTABLE                         R3 0 0
       14 RETURN                           R3 1

PROTO_42:
        0 DUPTABLE                         R1 K2 [{"instance", "name"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["instance"]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K1 ["name"]
        9 RETURN                           R1 1

PROTO_43:
        0 LOADK                            R4 K0 ["ObjectValue"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        6 LOADK                            R3 K2 ["Instance must be an ObjectValue"]
        7 GETIMPORT                        R1 K4 [assert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K5 ["properties"]
       13 GETTABLEKS                       R1 R1 K6 ["observeString"]
       15 MOVE                             R2 R0
       16 LOADK                            R3 K7 ["Name"]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K8 ["createComputed"]
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 CALL                             R2 1 -1
       25 RETURN                           R2 -1

PROTO_44:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R1
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETTABLEKS                       R8 R7 K0 ["name"]
       11 GETTABLEKS                       R9 R7 K1 ["instance"]
       13 SETTABLE                         R9 R2 R8
       14 FORGLOOP                         R3 2 ; [-6]
       16 RETURN                           R2 1

PROTO_45:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["Name"]
        6 GETTABLE                         R2 R1 R3
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R2 1
        9 LOADNIL                          R3
       10 RETURN                           R3 1

PROTO_46:
        0 JUMPIFNOT                        R0 ; [+9]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["properties"]
        4 GETTABLEKS                       R1 R1 K1 ["observeInstance"]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K2 ["Value"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K3 ["of"]
       13 LOADNIL                          R2
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_47:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+14]
        4 DUPTABLE                         R2 K2 [{"key", "value"}]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K3 ["Name"]
        8 SETTABLEKS                       R3 R2 K0 ["key"]
       10 GETUPVAL                         R3 2
       11 MOVE                             R5 R1
       12 NAMECALL                         R3 R3 K4 ["instanceToId"]
       14 CALL                             R3 2 1
       15 SETTABLEKS                       R3 R2 K1 ["value"]
       17 RETURN                           R2 1
       18 LOADNIL                          R2
       19 RETURN                           R2 1

PROTO_48:
        0 GETTABLEKS                       R1 R0 K0 ["Type"]
        2 JUMPIFEQKS                       R1 K1 ["Mask"] ; [+7]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K2 ["of"]
        7 LOADNIL                          R2
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K3 ["createComputed"]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CALL                             R1 1 1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K4 ["switchMap"]
       20 MOVE                             R3 R1
       21 DUPCLOSURE                       R4 K5 [PROTO_46]
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U0
       24 CALL                             R2 2 1
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K3 ["createComputed"]
       28 NEWCLOSURE                       R4 P2
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U4
       32 CALL                             R3 1 -1
       33 RETURN                           R3 -1

PROTO_49:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 NEWTABLE                         R3 0 0
        8 MOVE                             R4 R1
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 FASTCALL1                        TYPEOF R8 ; [+3]
       13 MOVE                             R10 R8
       14 GETIMPORT                        R9 K1 [typeof]
       16 CALL                             R9 1 1
       17 JUMPIFEQKS                       R9 K2 ["Instance"] ; [+4]
       19 JUMPIFEQKS                       R9 K3 ["InstanceHandle"] ; [+2]
       21 SETTABLE                         R8 R3 R7
       22 FORGLOOP                         R4 2 ; [-11]
       24 MOVE                             R4 R2
       25 LOADNIL                          R5
       26 LOADNIL                          R6
       27 FORGPREP                         R4
       28 JUMPIFNOT                        R8 ; [+5]
       29 GETTABLEKS                       R9 R8 K4 ["key"]
       31 GETTABLEKS                       R10 R8 K5 ["value"]
       33 SETTABLE                         R10 R3 R9
       34 FORGLOOP                         R4 2 ; [-7]
       36 GETIMPORT                        R4 K8 [table.freeze]
       38 MOVE                             R5 R3
       39 CALL                             R4 1 -1
       40 RETURN                           R4 -1

PROTO_50:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["observeNodeType"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["observeAttributes"]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K2 ["observeChildrenWhichIsA"]
       13 MOVE                             R5 R0
       14 LOADK                            R6 K3 ["ObjectValue"]
       15 CALL                             R4 2 1
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K4 ["createComputed"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          UPVAL U3
       22 CALL                             R5 1 1
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K5 ["forEach"]
       26 MOVE                             R7 R4
       27 DUPCLOSURE                       R8 K6 [PROTO_43]
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U2
       30 CALL                             R6 2 1
       31 GETUPVAL                         R7 2
       32 GETTABLEKS                       R7 R7 K4 ["createComputed"]
       34 NEWCLOSURE                       R8 P2
       35 CAPTURE                          VAL R6
       36 CALL                             R7 1 1
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R8 R8 K5 ["forEach"]
       40 MOVE                             R9 R5
       41 NEWCLOSURE                       R10 P3
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          VAL R7
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          VAL R1
       47 CALL                             R8 2 1
       48 GETUPVAL                         R9 2
       49 GETTABLEKS                       R9 R9 K4 ["createComputed"]
       51 NEWCLOSURE                       R10 P4
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R8
       54 CALL                             R9 1 1
       55 RETURN                           R9 1

PROTO_51:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFEQKNIL                     R1 ; [+8]
        5 GETTABLEKS                       R2 R1 K0 ["EnumType"]
        7 GETIMPORT                        R3 K3 [Enum.AnimationNodeType]
        9 JUMPIFNOTEQ                      R2 R3 ; [+2]
       11 RETURN                           R1 1
       12 GETIMPORT                        R2 K5 [error]
       14 LOADK                            R3 K6 ["NodeType is not an AnimationNodeType"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["properties"]
        3 GETTABLEKS                       R1 R1 K1 ["observeEnumItem"]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K2 ["NodeType"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["createComputed"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R1
       13 CALL                             R2 1 1
       14 RETURN                           R2 1

PROTO_53:
        0 JUMPIFNOTEQKNIL                  R0 ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["of"]
        5 LOADNIL                          R2
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["attributes"]
       11 GETTABLEKS                       R1 R1 K2 ["observeString"]
       13 MOVE                             R2 R0
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K3 ["NODE_ATTRIBUTES"]
       17 GETTABLEKS                       R3 R3 K4 ["DisplayName"]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

PROTO_54:
        0 DUPTABLE                         R1 K4 [{"nodeId", "inputPinIds", "name", "nodeType"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["nodeId"]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K1 ["inputPinIds"]
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 SETTABLEKS                       R2 R1 K2 ["name"]
       14 GETUPVAL                         R2 3
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R1 K3 ["nodeType"]
       19 GETIMPORT                        R2 K7 [table.freeze]
       21 MOVE                             R3 R1
       22 CALL                             R2 1 -1
       23 RETURN                           R2 -1

PROTO_55:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["instanceToId"]
        3 CALL                             R2 2 1
        4 LOADNIL                          R3
        5 GETUPVAL                         R4 0
        6 CALL                             R4 0 1
        7 JUMPIFNOT                        R4 ; [+82]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K1 ["NODE_ATTRIBUTES"]
       11 GETTABLEKS                       R6 R6 K2 ["DisplayName"]
       13 NAMECALL                         R4 R1 K3 ["GetAttribute"]
       15 CALL                             R4 2 1
       16 JUMPIFEQKNIL                     R4 ; [+56]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K4 ["NODE_CONFIGURATION_NAME"]
       21 LOADK                            R9 K5 ["Configuration"]
       22 NAMECALL                         R7 R1 K6 ["IsA"]
       24 CALL                             R7 2 1
       25 JUMPIFNOT                        R7 ; [+2]
       26 MOVE                             R5 R1
       27 JUMP                             ; [+17]
       28 MOVE                             R9 R6
       29 NAMECALL                         R7 R1 K7 ["FindFirstChild"]
       31 CALL                             R7 2 1
       32 JUMPIFEQKNIL                     R7 ; [+3]
       34 MOVE                             R5 R7
       35 JUMP                             ; [+9]
       36 GETIMPORT                        R7 K10 [Instance.new]
       38 LOADK                            R8 K5 ["Configuration"]
       39 CALL                             R7 1 1
       40 SETTABLEKS                       R6 R7 K11 ["Name"]
       42 SETTABLEKS                       R1 R7 K12 ["Parent"]
       44 MOVE                             R5 R7
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R8 R8 K1 ["NODE_ATTRIBUTES"]
       48 GETTABLEKS                       R8 R8 K2 ["DisplayName"]
       50 NAMECALL                         R6 R5 K3 ["GetAttribute"]
       52 CALL                             R6 2 1
       53 JUMPIFNOTEQKNIL                  R6 ; [+10]
       55 GETUPVAL                         R8 1
       56 GETTABLEKS                       R8 R8 K1 ["NODE_ATTRIBUTES"]
       58 GETTABLEKS                       R8 R8 K2 ["DisplayName"]
       60 MOVE                             R9 R4
       61 NAMECALL                         R6 R5 K13 ["SetAttribute"]
       63 CALL                             R6 3 0
       64 GETUPVAL                         R8 1
       65 GETTABLEKS                       R8 R8 K1 ["NODE_ATTRIBUTES"]
       67 GETTABLEKS                       R8 R8 K2 ["DisplayName"]
       69 LOADNIL                          R9
       70 NAMECALL                         R6 R1 K13 ["SetAttribute"]
       72 CALL                             R6 3 0
       73 GETUPVAL                         R5 2
       74 MOVE                             R6 R1
       75 GETUPVAL                         R7 1
       76 GETTABLEKS                       R7 R7 K4 ["NODE_CONFIGURATION_NAME"]
       78 CALL                             R5 2 1
       79 GETUPVAL                         R6 3
       80 GETTABLEKS                       R6 R6 K14 ["switchMap"]
       82 MOVE                             R7 R5
       83 DUPCLOSURE                       R8 K15 [PROTO_53]
       84 CAPTURE                          UPVAL U3
       85 CAPTURE                          UPVAL U4
       86 CAPTURE                          UPVAL U1
       87 CALL                             R6 2 1
       88 MOVE                             R3 R6
       89 JUMP                             ; [+13]
       90 GETUPVAL                         R4 4
       91 GETTABLEKS                       R4 R4 K16 ["attributes"]
       93 GETTABLEKS                       R4 R4 K17 ["observeString"]
       95 MOVE                             R5 R1
       96 GETUPVAL                         R6 1
       97 GETTABLEKS                       R6 R6 K1 ["NODE_ATTRIBUTES"]
       99 GETTABLEKS                       R6 R6 K2 ["DisplayName"]
      101 CALL                             R4 2 1
      102 MOVE                             R3 R4
      103 GETUPVAL                         R4 5
      104 GETTABLEKS                       R4 R4 K18 ["observeNodeType"]
      106 MOVE                             R5 R1
      107 CALL                             R4 1 1
      108 GETUPVAL                         R5 3
      109 GETTABLEKS                       R5 R5 K19 ["observeInputPins"]
      111 MOVE                             R6 R1
      112 CALL                             R5 1 1
      113 GETUPVAL                         R6 6
      114 GETTABLEKS                       R6 R6 K20 ["createComputed"]
      116 NEWCLOSURE                       R7 P1
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R5
      119 CAPTURE                          REF R3
      120 CAPTURE                          VAL R4
      121 CALL                             R6 1 -1
      122 CLOSEUPVALS                      R3
      123 RETURN                           R6 -1

PROTO_56:
        0 JUMPIF                           R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["of"]
        4 NEWTABLE                         R2 0 0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["observeChildrenWhichIsA"]
       11 MOVE                             R2 R0
       12 LOADK                            R3 K2 ["AnimationNodeDefinition"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_57:
        0 LOADK                            R4 K0 ["AnimationNodeDefinition"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        6 LOADK                            R3 K2 ["Not correct type"]
        7 GETIMPORT                        R1 K4 [assert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K5 ["observeNodeInfo"]
       13 GETUPVAL                         R2 1
       14 MOVE                             R3 R0
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_58:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["switchMap"]
        3 MOVE                             R3 R1
        4 DUPCLOSURE                       R4 K1 [PROTO_56]
        5 CAPTURE                          UPVAL U0
        6 CALL                             R2 2 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["forEach"]
       10 MOVE                             R4 R2
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R0
       14 CALL                             R3 2 1
       15 RETURN                           R3 1

PROTO_59:
        0 JUMPIF                           R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["of"]
        4 NEWTABLE                         R2 0 0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["observeChildrenWhichIsA"]
       11 MOVE                             R2 R0
       12 LOADK                            R3 K2 ["Folder"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_60:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+1]
        3 JUMPIF                           R0 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["of"]
        7 NEWTABLE                         R2 0 0
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K1 ["observeChildrenWhichIsA"]
       14 MOVE                             R2 R0
       15 LOADK                            R3 K2 ["AnimationValueNodeDefinition"]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

PROTO_61:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 NEWTABLE                         R3 0 0
        8 MOVE                             R4 R1
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 LOADK                            R12 K0 ["Folder"]
       13 NAMECALL                         R10 R8 K1 ["IsA"]
       15 CALL                             R10 2 1
       16 FASTCALL2K                       ASSERT R10 K2 ; [+4]
       18 LOADK                            R11 K2 ["non-folder instance observed for parameter node info lookup list"]
       19 GETIMPORT                        R9 K4 [assert]
       21 CALL                             R9 2 0
       22 GETUPVAL                         R11 2
       23 GETTABLEKS                       R11 R11 K5 ["NODE_ATTRIBUTES"]
       25 GETTABLEKS                       R11 R11 K6 ["ParameterType"]
       27 NAMECALL                         R9 R8 K7 ["GetAttribute"]
       29 CALL                             R9 2 1
       30 JUMPIFNOT                        R9 ; [+13]
       31 MOVE                             R10 R3
       32 GETUPVAL                         R11 3
       33 GETTABLEKS                       R11 R11 K8 ["observeParameterNodeInfo"]
       35 GETUPVAL                         R12 4
       36 MOVE                             R13 R8
       37 CALL                             R11 2 1
       38 MOVE                             R12 R0
       39 CALL                             R11 1 -1
       40 FASTCALL                         TABLE_INSERT ; [+2]
       41 GETIMPORT                        R9 K11 [table.insert]
       43 CALL                             R9 -1 0
       44 FORGLOOP                         R4 2 ; [-33]
       46 GETUPVAL                         R4 5
       47 CALL                             R4 0 1
       48 JUMPIFNOT                        R4 ; [+35]
       49 MOVE                             R4 R2
       50 LOADNIL                          R5
       51 LOADNIL                          R6
       52 FORGPREP                         R4
       53 LOADK                            R12 K12 ["AnimationValueNodeDefinition"]
       54 NAMECALL                         R10 R8 K1 ["IsA"]
       56 CALL                             R10 2 1
       57 FASTCALL2K                       ASSERT R10 K13 ; [+4]
       59 LOADK                            R11 K13 ["non-value-node observed for parameter node info lookup list"]
       60 GETIMPORT                        R9 K4 [assert]
       62 CALL                             R9 2 0
       63 GETTABLEKS                       R9 R8 K14 ["NodeType"]
       65 GETIMPORT                        R10 K18 [Enum.AnimationValueNodeType.Expression]
       67 JUMPIFNOTEQ                      R9 R10 ; [+14]
       69 MOVE                             R10 R3
       70 GETUPVAL                         R11 3
       71 GETTABLEKS                       R11 R11 K19 ["observeExpressionValueNodeInfo"]
       73 GETUPVAL                         R12 4
       74 MOVE                             R13 R8
       75 CALL                             R11 2 1
       76 MOVE                             R12 R0
       77 CALL                             R11 1 -1
       78 FASTCALL                         TABLE_INSERT ; [+2]
       79 GETIMPORT                        R9 K11 [table.insert]
       81 CALL                             R9 -1 0
       82 FORGLOOP                         R4 2 ; [-30]
       84 GETIMPORT                        R4 K21 [table.freeze]
       86 MOVE                             R5 R3
       87 CALL                             R4 1 -1
       88 RETURN                           R4 -1

PROTO_62:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["switchMap"]
        3 MOVE                             R3 R1
        4 DUPCLOSURE                       R4 K1 [PROTO_59]
        5 CAPTURE                          UPVAL U0
        6 CALL                             R2 2 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["switchMap"]
       10 MOVE                             R4 R1
       11 DUPCLOSURE                       R5 K2 [PROTO_60]
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U0
       14 CALL                             R3 2 1
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K3 ["createComputed"]
       18 NEWCLOSURE                       R5 P2
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R3
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U5
       25 CALL                             R4 1 1
       26 RETURN                           R4 1

PROTO_63:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+1]
        3 JUMPIF                           R0 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["of"]
        7 NEWTABLE                         R2 0 0
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K1 ["observeChildrenWhichIsA"]
       14 MOVE                             R2 R0
       15 LOADK                            R3 K2 ["AnimationValueNodeDefinition"]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

PROTO_64:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["of"]
        3 DUPTABLE                         R2 K2 [{"nodeId"}]
        4 GETUPVAL                         R3 1
        5 MOVE                             R5 R0
        6 NAMECALL                         R3 R3 K3 ["instanceToId"]
        8 CALL                             R3 2 1
        9 SETTABLEKS                       R3 R2 K1 ["nodeId"]
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1

PROTO_65:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["switchMap"]
        3 MOVE                             R3 R1
        4 DUPCLOSURE                       R4 K1 [PROTO_63]
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U0
        7 CALL                             R2 2 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["forEach"]
       11 MOVE                             R4 R2
       12 NEWCLOSURE                       R5 P1
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R0
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1

PROTO_66:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R2 R0 K0 ["wireId"]
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R3 R0 K0 ["wireId"]
        8 NAMECALL                         R1 R1 K1 ["idToInstance"]
       10 CALL                             R1 2 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R1
       13 JUMPIFNOT                        R1 ; [+5]
       14 LOADK                            R4 K2 ["ObjectValue"]
       15 NAMECALL                         R2 R1 K3 ["IsA"]
       17 CALL                             R2 2 1
       18 JUMPIF                           R2 ; [+1]
       19 RETURN                           R0 0
       20 GETTABLEKS                       R2 R1 K4 ["Value"]
       22 JUMPIFEQKNIL                     R2 ; [+11]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K5 ["isValueOutputEndpoint"]
       27 MOVE                             R4 R2
       28 CALL                             R3 1 1
       29 JUMPIFNOT                        R3 ; [+4]
       30 LOADNIL                          R3
       31 SETTABLEKS                       R3 R2 K6 ["Parent"]
       33 RETURN                           R0 0
       34 GETTABLEKS                       R3 R0 K7 ["outputNodeId"]
       36 JUMPIFEQKNIL                     R3 ; [+13]
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R3 R3 K8 ["isAParameterWire"]
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R5 R0 K7 ["outputNodeId"]
       44 MOVE                             R6 R1
       45 CALL                             R3 3 1
       46 JUMPIFNOT                        R3 ; [+3]
       47 LOADNIL                          R3
       48 SETTABLEKS                       R3 R1 K6 ["Parent"]
       50 RETURN                           R0 0

PROTO_67:
        0 GETTABLEKS                       R4 R1 K0 ["lookup"]
        2 GETTABLE                         R3 R4 R2
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R4 R3 K1 ["outgoingWires"]
        7 JUMPIFNOT                        R4 ; [+53]
        8 MOVE                             R5 R4
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 FORGPREP                         R5
       12 GETTABLEKS                       R11 R9 K2 ["wireId"]
       14 JUMPIFNOT                        R11 ; [+6]
       15 GETTABLEKS                       R12 R9 K2 ["wireId"]
       17 NAMECALL                         R10 R0 K3 ["idToInstance"]
       19 CALL                             R10 2 1
       20 JUMP                             ; [+1]
       21 LOADNIL                          R10
       22 JUMPIFNOT                        R10 ; [+36]
       23 LOADK                            R13 K4 ["ObjectValue"]
       24 NAMECALL                         R11 R10 K5 ["IsA"]
       26 CALL                             R11 2 1
       27 JUMPIFNOT                        R11 ; [+31]
       28 GETUPVAL                         R11 0
       29 GETTABLEKS                       R11 R11 K6 ["removeOrderedInputPin"]
       31 MOVE                             R12 R0
       32 MOVE                             R13 R1
       33 GETTABLEKS                       R14 R9 K7 ["inputNodeId"]
       35 GETTABLEKS                       R15 R9 K8 ["inputNodePinId"]
       37 CALL                             R11 4 0
       38 NAMECALL                         R11 R10 K9 ["GetChildren"]
       40 CALL                             R11 1 3
       41 FORGPREP                         R11
       42 GETUPVAL                         R16 0
       43 GETTABLEKS                       R16 R16 K10 ["isAValueNodeWire"]
       45 MOVE                             R17 R15
       46 CALL                             R16 1 1
       47 JUMPIFNOT                        R16 ; [+6]
       48 GETTABLEKS                       R16 R15 K11 ["Value"]
       50 JUMPIFNOT                        R16 ; [+3]
       51 LOADNIL                          R17
       52 SETTABLEKS                       R17 R16 K12 ["Parent"]
       54 FORGLOOP                         R11 2 ; [-13]
       56 LOADNIL                          R11
       57 SETTABLEKS                       R11 R10 K12 ["Parent"]
       59 FORGLOOP                         R5 2 ; [-48]
       61 NEWCLOSURE                       R5 P0
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U0
       64 GETTABLEKS                       R6 R3 K13 ["inputPinToConnectionMap"]
       66 LOADNIL                          R7
       67 LOADNIL                          R8
       68 FORGPREP                         R6
       69 MOVE                             R11 R5
       70 MOVE                             R12 R10
       71 CALL                             R11 1 0
       72 FORGLOOP                         R6 2 ; [-4]
       74 GETTABLEKS                       R6 R3 K14 ["inputLabelPinToConnectionMap"]
       76 LOADNIL                          R7
       77 LOADNIL                          R8
       78 FORGPREP                         R6
       79 MOVE                             R11 R10
       80 LOADNIL                          R12
       81 LOADNIL                          R13
       82 FORGPREP                         R11
       83 MOVE                             R16 R5
       84 MOVE                             R17 R15
       85 CALL                             R16 1 0
       86 FORGLOOP                         R11 2 ; [-4]
       88 FORGLOOP                         R6 2 ; [-10]
       90 RETURN                           R0 0

PROTO_68:
        0 JUMPIF                           R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["of"]
        4 NEWTABLE                         R2 0 0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["observeChildrenWhichIsA"]
       11 MOVE                             R2 R0
       12 LOADK                            R3 K2 ["AnimationValueNodeDefinition"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_69:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R1
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 LOADK                            R11 K0 ["AnimationValueNodeDefinition"]
       10 NAMECALL                         R9 R7 K1 ["IsA"]
       12 CALL                             R9 2 1
       13 FASTCALL2K                       ASSERT R9 K2 ; [+4]
       15 LOADK                            R10 K2 ["non-value-node observed for expression nodes"]
       16 GETIMPORT                        R8 K4 [assert]
       18 CALL                             R8 2 0
       19 GETTABLEKS                       R8 R7 K5 ["NodeType"]
       21 GETIMPORT                        R9 K9 [Enum.AnimationValueNodeType.Expression]
       23 JUMPIFNOTEQ                      R8 R9 ; [+23]
       25 GETUPVAL                         R9 1
       26 GETTABLEKS                       R9 R9 K11 ["attributes"]
       28 GETTABLEKS                       R9 R9 K12 ["observeString"]
       30 MOVE                             R10 R7
       31 GETUPVAL                         R11 2
       32 GETTABLEKS                       R11 R11 K13 ["NODE_ATTRIBUTES"]
       34 GETTABLEKS                       R11 R11 K8 ["Expression"]
       36 CALL                             R9 2 1
       37 MOVE                             R10 R0
       38 CALL                             R9 1 1
       39 ORK                              R8 R9 K10 [""]
       40 GETUPVAL                         R9 3
       41 MOVE                             R11 R7
       42 NAMECALL                         R9 R9 K14 ["instanceToId"]
       44 CALL                             R9 2 1
       45 JUMPIFNOT                        R9 ; [+1]
       46 SETTABLE                         R8 R2 R9
       47 FORGLOOP                         R3 2 ; [-39]
       49 GETIMPORT                        R3 K17 [table.freeze]
       51 MOVE                             R4 R2
       52 CALL                             R3 1 -1
       53 RETURN                           R3 -1

PROTO_70:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["switchMap"]
        3 MOVE                             R3 R1
        4 DUPCLOSURE                       R4 K1 [PROTO_68]
        5 CAPTURE                          UPVAL U0
        6 CALL                             R2 2 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["createComputed"]
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R0
       15 CALL                             R3 1 -1
       16 RETURN                           R3 -1

PROTO_71:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeRenderInfo"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_72:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R1
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 JUMPIFNOT                        R7 ; [+3]
       10 GETTABLEKS                       R8 R7 K0 ["nodeId"]
       12 SETTABLE                         R7 R2 R8
       13 FORGLOOP                         R3 2 ; [-5]
       15 GETIMPORT                        R3 K3 [table.freeze]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 -1
       19 RETURN                           R3 -1

PROTO_73:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["forEach"]
        3 MOVE                             R4 R2
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CALL                             R3 2 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K1 ["createComputed"]
       12 NEWCLOSURE                       R5 P1
       13 CAPTURE                          VAL R3
       14 CALL                             R4 1 -1
       15 RETURN                           R4 -1

PROTO_74:
        0 JUMPIF                           R0 ; [+6]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["of"]
        4 LOADNIL                          R2
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["attributes"]
       10 GETTABLEKS                       R1 R1 K2 ["observeVector2"]
       12 MOVE                             R2 R0
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K3 ["NODE_ATTRIBUTES"]
       16 GETTABLEKS                       R3 R3 K4 ["Position"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_75:
        0 JUMPIF                           R0 ; [+6]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["of"]
        4 LOADNIL                          R2
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["attributes"]
       10 GETTABLEKS                       R1 R1 K2 ["observeVector2"]
       12 MOVE                             R2 R0
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K3 ["NODE_ATTRIBUTES"]
       16 GETTABLEKS                       R3 R3 K4 ["Size"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_76:
        0 JUMPIF                           R0 ; [+6]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["of"]
        4 LOADNIL                          R2
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["attributes"]
       10 GETTABLEKS                       R1 R1 K2 ["observeBoolean"]
       12 MOVE                             R2 R0
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K3 ["NODE_ATTRIBUTES"]
       16 GETTABLEKS                       R3 R3 K4 ["Collapsed"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_77:
        0 JUMPIF                           R0 ; [+6]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["of"]
        4 LOADNIL                          R2
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["attributes"]
       10 GETTABLEKS                       R1 R1 K2 ["observeNumber"]
       12 MOVE                             R2 R0
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K3 ["NODE_ATTRIBUTES"]
       16 GETTABLEKS                       R3 R3 K4 ["ZIndex"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_78:
        0 GETIMPORT                        R1 K2 [table.freeze]
        2 DUPTABLE                         R2 K9 [{"nodeId", "position", "size", "isCollapsed", "isSelected", "zIndex"}]
        3 GETUPVAL                         R3 0
        4 SETTABLEKS                       R3 R2 K3 ["nodeId"]
        6 GETUPVAL                         R3 1
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 JUMPIF                           R3 ; [+2]
       10 GETIMPORT                        R3 K12 [Vector2.zero]
       12 SETTABLEKS                       R3 R2 K4 ["position"]
       14 GETUPVAL                         R3 2
       15 MOVE                             R4 R0
       16 CALL                             R3 1 1
       17 JUMPIF                           R3 ; [+2]
       18 GETIMPORT                        R3 K12 [Vector2.zero]
       20 SETTABLEKS                       R3 R2 K5 ["size"]
       22 GETUPVAL                         R4 3
       23 MOVE                             R5 R0
       24 CALL                             R4 1 1
       25 ORK                              R3 R4 K13 [False]
       26 SETTABLEKS                       R3 R2 K6 ["isCollapsed"]
       28 GETUPVAL                         R4 4
       29 MOVE                             R5 R0
       30 CALL                             R4 1 1
       31 ORK                              R3 R4 K13 [False]
       32 SETTABLEKS                       R3 R2 K7 ["isSelected"]
       34 GETUPVAL                         R4 5
       35 GETTABLEKS                       R4 R4 K14 ["FFlagAnimGraphUI_DynamicZIndex"]
       37 JUMPIFNOT                        R4 ; [+5]
       38 GETUPVAL                         R4 6
       39 MOVE                             R5 R0
       40 CALL                             R4 1 1
       41 ORK                              R3 R4 K15 [0]
       42 JUMP                             ; [+1]
       43 LOADN                            R3 0
       44 SETTABLEKS                       R3 R2 K8 ["zIndex"]
       46 CALL                             R1 1 -1
       47 RETURN                           R1 -1

PROTO_79:
        0 MOVE                             R5 R2
        1 NAMECALL                         R3 R0 K0 ["idToInstance"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+6]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["of"]
        8 LOADNIL                          R5
        9 CALL                             R4 1 -1
       10 RETURN                           R4 -1
       11 GETUPVAL                         R4 1
       12 MOVE                             R5 R3
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R6 R6 K2 ["NODE_CONFIGURATION_NAME"]
       16 CALL                             R4 2 1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K3 ["switchMap"]
       20 MOVE                             R6 R4
       21 DUPCLOSURE                       R7 K4 [PROTO_74]
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U2
       25 CALL                             R5 2 1
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K3 ["switchMap"]
       29 MOVE                             R7 R4
       30 DUPCLOSURE                       R8 K5 [PROTO_75]
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U2
       34 CALL                             R6 2 1
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K3 ["switchMap"]
       38 MOVE                             R8 R4
       39 DUPCLOSURE                       R9 K6 [PROTO_76]
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          UPVAL U2
       43 CALL                             R7 2 1
       44 GETUPVAL                         R9 4
       45 GETTABLEKS                       R9 R9 K7 ["FFlagAnimGraphUI_DynamicZIndex"]
       47 JUMPIFNOT                        R9 ; [+10]
       48 GETUPVAL                         R8 0
       49 GETTABLEKS                       R8 R8 K3 ["switchMap"]
       51 MOVE                             R9 R4
       52 DUPCLOSURE                       R10 K8 [PROTO_77]
       53 CAPTURE                          UPVAL U0
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          UPVAL U2
       56 CALL                             R8 2 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R8
       59 MOVE                             R11 R3
       60 NAMECALL                         R9 R1 K9 ["observeIsSelected"]
       62 CALL                             R9 2 1
       63 GETUPVAL                         R10 5
       64 GETTABLEKS                       R10 R10 K10 ["createComputed"]
       66 NEWCLOSURE                       R11 P4
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R9
       72 CAPTURE                          UPVAL U4
       73 CAPTURE                          VAL R8
       74 CALL                             R10 1 -1
       75 RETURN                           R10 -1

PROTO_80:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 LOADNIL                          R2
        4 MOVE                             R3 R1
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETIMPORT                        R10 K1 [game]
       10 NAMECALL                         R8 R6 K2 ["IsDescendantOf"]
       12 CALL                             R8 2 1
       13 JUMPIFNOT                        R8 ; [+49]
       14 LOADK                            R10 K3 ["AnimationGraphDefinition"]
       15 NAMECALL                         R8 R6 K4 ["IsA"]
       17 CALL                             R8 2 1
       18 JUMPIF                           R8 ; [+12]
       19 GETIMPORT                        R8 K6 [error]
       21 LOADK                            R9 K7 ["Unexpected key in root animations map: \"%*\" (%*)"]
       22 NAMECALL                         R11 R6 K8 ["GetFullName"]
       24 CALL                             R11 1 1
       25 GETTABLEKS                       R12 R6 K9 ["ClassName"]
       27 NAMECALL                         R9 R9 K10 ["format"]
       29 CALL                             R9 3 1
       30 CALL                             R8 1 0
       31 LOADK                            R10 K3 ["AnimationGraphDefinition"]
       32 NAMECALL                         R8 R7 K4 ["IsA"]
       34 CALL                             R8 2 1
       35 JUMPIFNOT                        R8 ; [+5]
       36 DUPTABLE                         R8 K13 [{["from"] = "graph", ["graph"]}]
       37 SETTABLEKS                       R6 R8 K12 ["graph"]
       39 SETUPVAL                         R8 1
       40 RETURN                           R6 1
       41 GETUPVAL                         R8 1
       42 JUMPIFNOTEQKNIL                  R8 ; [+6]
       44 DUPTABLE                         R8 K15 [{["from"] = "rig", ["graph"]}]
       45 SETTABLEKS                       R6 R8 K12 ["graph"]
       47 MOVE                             R2 R8
       48 JUMP                             ; [+14]
       49 GETUPVAL                         R8 1
       50 GETTABLEKS                       R8 R8 K12 ["graph"]
       52 GETTABLEKS                       R8 R8 K16 ["Parent"]
       54 GETTABLEKS                       R9 R6 K16 ["Parent"]
       56 JUMPIFNOTEQ                      R8 R9 ; [+2]
       58 JUMP                             ; [+4]
       59 DUPTABLE                         R8 K15 [{["from"] = "rig", ["graph"]}]
       60 SETTABLEKS                       R6 R8 K12 ["graph"]
       62 MOVE                             R2 R8
       63 FORGLOOP                         R3 2 ; [-56]
       65 JUMPIFEQKNIL                     R2 ; [+2]
       67 SETUPVAL                         R2 1
       68 GETUPVAL                         R3 1
       69 JUMPIFNOT                        R3 ; [+3]
       70 GETUPVAL                         R3 1
       71 GETTABLEKS                       R3 R3 K12 ["graph"]
       73 RETURN                           R3 1

PROTO_81:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["observeFirstAncestor"]
        4 MOVE                             R2 R0
        5 LOADK                            R3 K1 ["DataModel"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["of"]
       11 LOADNIL                          R2
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1

PROTO_82:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 JUMPIFEQKNIL                     R1 ; [+2]
        8 RETURN                           R2 1
        9 LOADNIL                          R3
       10 RETURN                           R3 1

PROTO_83:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeRootAnimationsMap"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["AnimationGraphDefinition"]
        5 CALL                             R1 2 1
        6 LOADNIL                          R2
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["createComputed"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          REF R2
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K3 ["switchMap"]
       17 MOVE                             R5 R3
       18 DUPCLOSURE                       R6 K4 [PROTO_81]
       19 CAPTURE                          UPVAL U2
       20 CALL                             R4 2 1
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K2 ["createComputed"]
       24 NEWCLOSURE                       R6 P2
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R3
       27 CALL                             R5 1 1
       28 CLOSEUPVALS                      R2
       29 RETURN                           R5 1

PROTO_84:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["observeNodeConnectionMap"]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K1 ["of"]
       11 NEWTABLE                         R2 0 0
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_85:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 3
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 LOADNIL                          R5
       13 NEWTABLE                         R6 0 0
       15 MOVE                             R7 R2
       16 LOADNIL                          R8
       17 LOADNIL                          R9
       18 FORGPREP                         R7
       19 GETTABLEKS                       R13 R11 K0 ["nodeId"]
       21 GETTABLE                         R12 R4 R13
       22 NEWTABLE                         R13 0 0
       24 NEWTABLE                         R14 0 0
       26 NEWTABLE                         R15 0 0
       28 JUMPIFNOT                        R12 ; [+28]
       29 GETTABLEKS                       R16 R12 K1 ["inputNodesByPinName"]
       31 LOADNIL                          R17
       32 LOADNIL                          R18
       33 FORGPREP                         R16
       34 GETTABLEKS                       R21 R20 K2 ["inputNodePinId"]
       36 SETTABLE                         R20 R13 R21
       37 FORGLOOP                         R16 2 ; [-4]
       39 GETTABLEKS                       R16 R12 K3 ["outputNodesByPinName"]
       41 LOADNIL                          R17
       42 LOADNIL                          R18
       43 FORGPREP                         R16
       44 GETTABLEKS                       R21 R20 K4 ["outputNodePinId"]
       46 SETTABLE                         R20 R14 R21
       47 FORGLOOP                         R16 2 ; [-4]
       49 GETTABLEKS                       R16 R12 K5 ["inputLabelNodesByPinName"]
       51 LOADNIL                          R17
       52 LOADNIL                          R18
       53 FORGPREP                         R16
       54 SETTABLE                         R20 R15 R19
       55 FORGLOOP                         R16 2 ; [-2]
       57 GETTABLEKS                       R16 R11 K6 ["nodeType"]
       59 GETIMPORT                        R17 K10 [Enum.AnimationNodeType.GraphOutput]
       61 JUMPIFNOTEQ                      R16 R17 ; [+3]
       63 GETTABLEKS                       R5 R11 K0 ["nodeId"]
       65 GETIMPORT                        R16 K13 [table.freeze]
       67 DUPTABLE                         R17 K26 [{["inputPinIds"], ["outputPinToConnectionMap"], ["outgoingWires"], ["inputPinToConnectionMap"], ["inputLabelPinToConnectionMap"], ["className"], ["id"], ["index"] = , ["name"], ["nodeType"], ["props"] = , ["state"] = }]
       68 GETTABLEKS                       R18 R11 K14 ["inputPinIds"]
       70 SETTABLEKS                       R18 R17 K14 ["inputPinIds"]
       72 SETTABLEKS                       R14 R17 K15 ["outputPinToConnectionMap"]
       74 GETUPVAL                         R19 4
       75 CALL                             R19 0 1
       76 JUMPIFNOT                        R19 ; [+4]
       77 JUMPIFNOT                        R12 ; [+3]
       78 GETTABLEKS                       R18 R12 K16 ["outgoingWires"]
       80 JUMP                             ; [+1]
       81 LOADNIL                          R18
       82 SETTABLEKS                       R18 R17 K16 ["outgoingWires"]
       84 SETTABLEKS                       R13 R17 K17 ["inputPinToConnectionMap"]
       86 SETTABLEKS                       R15 R17 K18 ["inputLabelPinToConnectionMap"]
       88 GETTABLEKS                       R18 R11 K6 ["nodeType"]
       90 GETTABLEKS                       R18 R18 K27 ["Name"]
       92 SETTABLEKS                       R18 R17 K19 ["className"]
       94 GETTABLEKS                       R18 R11 K0 ["nodeId"]
       96 SETTABLEKS                       R18 R17 K20 ["id"]
       98 GETTABLEKS                       R18 R11 K23 ["name"]
      100 SETTABLEKS                       R18 R17 K23 ["name"]
      102 GETTABLEKS                       R19 R11 K6 ["nodeType"]
      104 FASTCALL1                        TOSTRING R19 ; [+2]
      105 GETIMPORT                        R18 K29 [tostring]
      107 CALL                             R18 1 1
      108 SETTABLEKS                       R18 R17 K6 ["nodeType"]
      110 CALL                             R16 1 1
      111 GETTABLEKS                       R17 R11 K0 ["nodeId"]
      113 SETTABLE                         R16 R6 R17
      114 FORGLOOP                         R7 2 ; [-96]
      116 MOVE                             R7 R3
      117 LOADNIL                          R8
      118 LOADNIL                          R9
      119 FORGPREP                         R7
      120 GETTABLEKS                       R13 R11 K0 ["nodeId"]
      122 GETTABLE                         R12 R4 R13
      123 NEWTABLE                         R13 0 0
      125 JUMPIFNOT                        R12 ; [+10]
      126 GETTABLEKS                       R14 R12 K3 ["outputNodesByPinName"]
      128 LOADNIL                          R15
      129 LOADNIL                          R16
      130 FORGPREP                         R14
      131 GETTABLEKS                       R19 R18 K4 ["outputNodePinId"]
      133 SETTABLE                         R18 R13 R19
      134 FORGLOOP                         R14 2 ; [-4]
      136 GETIMPORT                        R14 K13 [table.freeze]
      138 DUPTABLE                         R15 K31 [{["inputPinIds"], ["inputPinToConnectionMap"], ["inputLabelPinToConnectionMap"], ["outputPinToConnectionMap"], ["outgoingWires"], ["className"], ["id"], ["nodeType"], ["name"], ["parentId"] = }]
      139 NEWTABLE                         R16 0 0
      141 SETTABLEKS                       R16 R15 K14 ["inputPinIds"]
      143 NEWTABLE                         R16 0 0
      145 SETTABLEKS                       R16 R15 K17 ["inputPinToConnectionMap"]
      147 NEWTABLE                         R16 0 0
      149 SETTABLEKS                       R16 R15 K18 ["inputLabelPinToConnectionMap"]
      151 SETTABLEKS                       R13 R15 K15 ["outputPinToConnectionMap"]
      153 GETUPVAL                         R17 4
      154 CALL                             R17 0 1
      155 JUMPIFNOT                        R17 ; [+4]
      156 JUMPIFNOT                        R12 ; [+3]
      157 GETTABLEKS                       R16 R12 K16 ["outgoingWires"]
      159 JUMP                             ; [+1]
      160 LOADNIL                          R16
      161 SETTABLEKS                       R16 R15 K16 ["outgoingWires"]
      163 GETUPVAL                         R16 5
      164 GETTABLEKS                       R16 R16 K32 ["PARAMETER_NODE_CLASSNAME"]
      166 SETTABLEKS                       R16 R15 K19 ["className"]
      168 GETTABLEKS                       R16 R11 K0 ["nodeId"]
      170 SETTABLEKS                       R16 R15 K20 ["id"]
      172 GETTABLEKS                       R16 R11 K33 ["parameterType"]
      174 SETTABLEKS                       R16 R15 K6 ["nodeType"]
      176 GETTABLEKS                       R16 R11 K34 ["parameterData"]
      178 GETTABLEKS                       R16 R16 K35 ["parameterBindingName"]
      180 SETTABLEKS                       R16 R15 K23 ["name"]
      182 CALL                             R14 1 1
      183 GETTABLEKS                       R15 R11 K0 ["nodeId"]
      185 SETTABLE                         R14 R6 R15
      186 FORGLOOP                         R7 2 ; [-67]
      188 GETIMPORT                        R7 K13 [table.freeze]
      190 DUPTABLE                         R8 K39 [{"graphInstanceId", "lookup", "output"}]
      191 JUMPIFNOT                        R1 ; [+6]
      192 GETUPVAL                         R9 6
      193 MOVE                             R11 R1
      194 NAMECALL                         R9 R9 K40 ["instanceToId"]
      196 CALL                             R9 2 1
      197 JUMP                             ; [+1]
      198 LOADNIL                          R9
      199 SETTABLEKS                       R9 R8 K36 ["graphInstanceId"]
      201 GETIMPORT                        R9 K13 [table.freeze]
      203 MOVE                             R10 R6
      204 CALL                             R9 1 1
      205 SETTABLEKS                       R9 R8 K37 ["lookup"]
      207 SETTABLEKS                       R5 R8 K38 ["output"]
      209 CALL                             R7 1 -1
      210 RETURN                           R7 -1

PROTO_86:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 GETTABLEKS                       R3 R1 K0 ["lookup"]
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETTABLEKS                       R10 R7 K1 ["id"]
       12 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       14 MOVE                             R9 R2
       15 GETIMPORT                        R8 K4 [table.insert]
       17 CALL                             R8 2 0
       18 FORGLOOP                         R3 2 ; [-9]
       20 GETIMPORT                        R3 K6 [table.freeze]
       22 MOVE                             R4 R2
       23 CALL                             R3 1 -1
       24 RETURN                           R3 -1

PROTO_87:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K2 [{"nodeProps", "nodeId"}]
        4 SETTABLEKS                       R1 R2 K0 ["nodeProps"]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K1 ["nodeId"]
        9 RETURN                           R2 1

PROTO_88:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["idToInstance"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+5]
        6 LOADK                            R4 K1 ["AnimationNodeDefinition"]
        7 NAMECALL                         R2 R1 K2 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIF                           R2 ; [+6]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["of"]
       14 LOADNIL                          R3
       15 CALL                             R2 1 -1
       16 RETURN                           R2 -1
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K4 ["observeNodeProps"]
       20 MOVE                             R3 R1
       21 GETUPVAL                         R4 0
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 3
       24 GETTABLEKS                       R3 R3 K5 ["createComputed"]
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R0
       29 CALL                             R3 1 -1
       30 RETURN                           R3 -1

PROTO_89:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R1
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 JUMPIFEQKNIL                     R7 ; [+10]
       11 GETTABLEKS                       R8 R7 K0 ["nodeProps"]
       13 JUMPIFEQKNIL                     R8 ; [+6]
       15 GETTABLEKS                       R8 R7 K1 ["nodeId"]
       17 GETTABLEKS                       R9 R7 K0 ["nodeProps"]
       19 SETTABLE                         R9 R2 R8
       20 FORGLOOP                         R3 2 ; [-12]
       22 RETURN                           R2 1

PROTO_90:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 3
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 GETIMPORT                        R5 K2 [table.freeze]
       14 DUPTABLE                         R6 K7 [{"graphPayloadMap", "renderInfoMap", "connectionMap", "graphNodeProps"}]
       15 SETTABLEKS                       R2 R6 K3 ["graphPayloadMap"]
       17 SETTABLEKS                       R3 R6 K4 ["renderInfoMap"]
       19 SETTABLEKS                       R1 R6 K5 ["connectionMap"]
       21 SETTABLEKS                       R4 R6 K6 ["graphNodeProps"]
       23 CALL                             R5 1 -1
       24 RETURN                           R5 -1

PROTO_91:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["switchMap"]
        3 MOVE                             R4 R2
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 CALL                             R3 2 1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K1 ["observeNodeInfoLookupList"]
       12 MOVE                             R5 R0
       13 MOVE                             R6 R2
       14 CALL                             R4 2 1
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K2 ["observeParameterNodeInfoLookupList"]
       18 MOVE                             R6 R0
       19 MOVE                             R7 R2
       20 CALL                             R5 2 1
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R6 R6 K3 ["createComputed"]
       24 NEWCLOSURE                       R7 P1
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R3
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          VAL R0
       32 CALL                             R6 1 1
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R7 R7 K3 ["createComputed"]
       36 NEWCLOSURE                       R8 P2
       37 CAPTURE                          VAL R6
       38 CALL                             R7 1 1
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K4 ["observeRenderInfoMap"]
       42 MOVE                             R9 R0
       43 MOVE                             R10 R1
       44 MOVE                             R11 R7
       45 CALL                             R8 3 1
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R9 R9 K5 ["forEach"]
       49 MOVE                             R10 R7
       50 NEWCLOSURE                       R11 P3
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U0
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          UPVAL U2
       55 CALL                             R9 2 1
       56 GETUPVAL                         R10 2
       57 GETTABLEKS                       R10 R10 K3 ["createComputed"]
       59 NEWCLOSURE                       R11 P4
       60 CAPTURE                          VAL R9
       61 CALL                             R10 1 1
       62 GETUPVAL                         R11 2
       63 GETTABLEKS                       R11 R11 K3 ["createComputed"]
       65 NEWCLOSURE                       R12 P5
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R10
       70 CALL                             R11 1 -1
       71 RETURN                           R11 -1

PROTO_92:
        0 LOADK                            R2 K0 [∞]
        1 LOADK                            R3 K0 [∞]
        2 LOADK                            R4 K1 [-∞]
        3 LOADK                            R5 K1 [-∞]
        4 GETTABLEKS                       R6 R1 K2 ["lookup"]
        6 LOADNIL                          R7
        7 LOADNIL                          R8
        8 FORGPREP                         R6
        9 GETTABLEKS                       R12 R10 K3 ["id"]
       11 GETTABLE                         R11 R0 R12
       12 JUMPIFNOT                        R11 ; [+59]
       13 GETTABLEKS                       R12 R11 K4 ["position"]
       15 JUMPIFNOT                        R12 ; [+56]
       16 GETTABLEKS                       R12 R11 K5 ["size"]
       18 JUMPIFNOT                        R12 ; [+53]
       19 GETTABLEKS                       R12 R11 K4 ["position"]
       21 GETTABLEKS                       R14 R11 K4 ["position"]
       23 GETIMPORT                        R15 K8 [Vector2.new]
       25 GETTABLEKS                       R16 R11 K5 ["size"]
       27 GETTABLEKS                       R16 R16 K9 ["X"]
       29 GETTABLEKS                       R18 R11 K5 ["size"]
       31 GETTABLEKS                       R18 R18 K10 ["Y"]
       33 MINUS                            R17 R18
       34 CALL                             R15 2 1
       35 ADD                              R13 R14 R15
       36 GETTABLEKS                       R16 R12 K9 ["X"]
       38 FASTCALL2                        MATH_MIN R2 R16 ; [+4]
       40 MOVE                             R15 R2
       41 GETIMPORT                        R14 K13 [math.min]
       43 CALL                             R14 2 1
       44 MOVE                             R2 R14
       45 GETTABLEKS                       R16 R12 K10 ["Y"]
       47 FASTCALL2                        MATH_MIN R3 R16 ; [+4]
       49 MOVE                             R15 R3
       50 GETIMPORT                        R14 K13 [math.min]
       52 CALL                             R14 2 1
       53 MOVE                             R3 R14
       54 GETTABLEKS                       R16 R13 K9 ["X"]
       56 FASTCALL2                        MATH_MAX R4 R16 ; [+4]
       58 MOVE                             R15 R4
       59 GETIMPORT                        R14 K15 [math.max]
       61 CALL                             R14 2 1
       62 MOVE                             R4 R14
       63 GETTABLEKS                       R16 R13 K10 ["Y"]
       65 FASTCALL2                        MATH_MAX R5 R16 ; [+4]
       67 MOVE                             R15 R5
       68 GETIMPORT                        R14 K15 [math.max]
       70 CALL                             R14 2 1
       71 MOVE                             R5 R14
       72 FORGLOOP                         R6 2 ; [-64]
       74 JUMPIFLT                         R4 R2 ; [+3]
       76 JUMPIFNOTLT                      R5 R3 ; [+9]
       78 GETIMPORT                        R6 K17 [Rect.new]
       80 LOADN                            R7 0
       81 LOADN                            R8 0
       82 LOADN                            R9 0
       83 LOADN                            R10 0
       84 CALL                             R6 4 -1
       85 RETURN                           R6 -1
       86 GETIMPORT                        R6 K17 [Rect.new]
       88 MOVE                             R7 R2
       89 MOVE                             R8 R3
       90 MOVE                             R9 R4
       91 MOVE                             R10 R5
       92 CALL                             R6 4 1
       93 RETURN                           R6 1

PROTO_93:
        0 GETTABLEKS                       R5 R0 K0 ["lookup"]
        2 GETTABLE                         R4 R5 R1
        3 JUMPIF                           R4 ; [+2]
        4 LOADNIL                          R5
        5 RETURN                           R5 1
        6 JUMPIFEQKNIL                     R3 ; [+12]
        8 GETTABLEKS                       R6 R4 K1 ["inputPinIds"]
       10 GETTABLE                         R5 R6 R3
       11 GETTABLEKS                       R7 R4 K2 ["inputLabelPinToConnectionMap"]
       13 GETTABLE                         R6 R7 R2
       14 JUMPIFNOT                        R6 ; [+2]
       15 GETTABLE                         R7 R6 R5
       16 RETURN                           R7 1
       17 LOADNIL                          R7
       18 RETURN                           R7 1
       19 GETTABLEKS                       R6 R4 K3 ["inputPinToConnectionMap"]
       21 GETTABLE                         R5 R6 R2
       22 RETURN                           R5 1

PROTO_94:
        0 GETTABLEKS                       R4 R0 K0 ["lookup"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+2]
        4 LOADNIL                          R4
        5 RETURN                           R4 1
        6 GETTABLEKS                       R5 R3 K1 ["outputPinToConnectionMap"]
        8 GETTABLE                         R4 R5 R2
        9 RETURN                           R4 1

PROTO_95:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["_findNodeInputBinding"]
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 MOVE                             R8 R3
        6 MOVE                             R9 R4
        7 CALL                             R5 4 1
        8 JUMPIF                           R5 ; [+2]
        9 LOADB                            R6 0
       10 RETURN                           R6 1
       11 GETTABLEKS                       R8 R5 K1 ["wireId"]
       13 NAMECALL                         R6 R0 K2 ["idToInstance"]
       15 CALL                             R6 2 1
       16 JUMPIF                           R6 ; [+2]
       17 LOADB                            R7 0
       18 RETURN                           R7 1
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K3 ["removeNodeInputConnection"]
       22 MOVE                             R8 R0
       23 MOVE                             R9 R1
       24 MOVE                             R10 R2
       25 MOVE                             R11 R3
       26 MOVE                             R12 R4
       27 CALL                             R7 5 0
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R7 R7 K4 ["removeOrderedInputPin"]
       31 MOVE                             R8 R0
       32 MOVE                             R9 R1
       33 MOVE                             R10 R2
       34 MOVE                             R11 R3
       35 CALL                             R7 4 0
       36 LOADNIL                          R7
       37 SETTABLEKS                       R7 R6 K5 ["Parent"]
       39 LOADB                            R7 1
       40 RETURN                           R7 1

PROTO_96:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["_findNodeInputBinding"]
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 MOVE                             R8 R3
        6 MOVE                             R9 R4
        7 CALL                             R5 4 1
        8 JUMPIFNOT                        R5 ; [+15]
        9 GETTABLEKS                       R6 R5 K1 ["outputNodeId"]
       11 JUMPIFEQKNIL                     R6 ; [+12]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K2 ["removeNodeOutputConnection"]
       16 MOVE                             R7 R0
       17 MOVE                             R8 R1
       18 GETTABLEKS                       R9 R5 K1 ["outputNodeId"]
       20 GETTABLEKS                       R10 R5 K3 ["outputNodePinId"]
       22 CALL                             R6 4 -1
       23 RETURN                           R6 -1
       24 LOADB                            R6 0
       25 RETURN                           R6 1

PROTO_97:
        0 LOADK                            R5 K0 ["ObjectValue"]
        1 NAMECALL                         R3 R2 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+2]
        5 LOADB                            R3 0
        6 RETURN                           R3 1
        7 MOVE                             R5 R1
        8 NAMECALL                         R3 R0 K2 ["idToInstance"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+5]
       12 LOADK                            R6 K3 ["Folder"]
       13 NAMECALL                         R4 R3 K1 ["IsA"]
       15 CALL                             R4 2 1
       16 JUMPIF                           R4 ; [+2]
       17 LOADB                            R4 0
       18 RETURN                           R4 1
       19 GETTABLEKS                       R5 R2 K4 ["Parent"]
       21 JUMPIFEQ                         R5 R3 ; [+2]
       23 LOADB                            R4 0 +1
       24 LOADB                            R4 1
       25 RETURN                           R4 1

PROTO_98:
        0 LOADK                            R3 K0 ["ObjectValue"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+11]
        5 LOADB                            R1 0
        6 GETTABLEKS                       R2 R0 K2 ["Value"]
        8 JUMPIFEQKNIL                     R2 ; [+7]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K3 ["isValueOutputEndpoint"]
       13 GETTABLEKS                       R2 R0 K2 ["Value"]
       15 CALL                             R1 1 1
       16 RETURN                           R1 1

PROTO_99:
        0 MOVE                             R6 R2
        1 NAMECALL                         R4 R0 K0 ["idToInstance"]
        3 CALL                             R4 2 1
        4 JUMPIFNOT                        R4 ; [+30]
        5 LOADK                            R7 K1 ["AnimationNodeDefinition"]
        6 NAMECALL                         R5 R4 K2 ["IsA"]
        8 CALL                             R5 2 1
        9 JUMPIFNOT                        R5 ; [+25]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K3 ["hasDynamicInputPins"]
       13 MOVE                             R6 R1
       14 MOVE                             R7 R2
       15 CALL                             R5 2 1
       16 JUMPIFNOT                        R5 ; [+18]
       17 NAMECALL                         R5 R4 K4 ["GetOrderedInputPinNames"]
       19 CALL                             R5 1 1
       20 GETIMPORT                        R6 K7 [table.find]
       22 MOVE                             R7 R5
       23 MOVE                             R8 R3
       24 CALL                             R6 2 1
       25 JUMPIFNOT                        R6 ; [+9]
       26 GETIMPORT                        R7 K9 [table.remove]
       28 MOVE                             R8 R5
       29 MOVE                             R9 R6
       30 CALL                             R7 2 0
       31 MOVE                             R9 R5
       32 NAMECALL                         R7 R4 K10 ["SetOrderedInputPinNames"]
       34 CALL                             R7 2 0
       35 RETURN                           R0 0

PROTO_100:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["_findNodeOutputBinding"]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 MOVE                             R7 R3
        6 CALL                             R4 3 1
        7 JUMPIF                           R4 ; [+2]
        8 LOADB                            R5 0
        9 RETURN                           R5 1
       10 GETTABLEKS                       R7 R4 K1 ["wireId"]
       12 NAMECALL                         R5 R0 K2 ["idToInstance"]
       14 CALL                             R5 2 1
       15 JUMPIF                           R5 ; [+2]
       16 LOADB                            R6 0
       17 RETURN                           R6 1
       18 GETTABLEKS                       R8 R4 K3 ["inputNodeId"]
       20 NAMECALL                         R6 R0 K2 ["idToInstance"]
       22 CALL                             R6 2 1
       23 JUMPIFNOT                        R5 ; [+131]
       24 GETTABLEKS                       R7 R5 K4 ["Parent"]
       26 JUMPIFNOT                        R7 ; [+128]
       27 GETUPVAL                         R7 1
       28 CALL                             R7 0 1
       29 JUMPIFNOT                        R7 ; [+27]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K5 ["isAValueNodeWire"]
       33 MOVE                             R8 R5
       34 CALL                             R7 1 1
       35 JUMPIFNOT                        R7 ; [+21]
       36 LOADK                            R10 K6 ["ObjectValue"]
       37 NAMECALL                         R8 R5 K7 ["IsA"]
       39 CALL                             R8 2 1
       40 FASTCALL2K                       ASSERT R8 K8 ; [+4]
       42 LOADK                            R9 K8 ["Expected wire to be an ObjectValue for value node connection"]
       43 GETIMPORT                        R7 K10 [assert]
       45 CALL                             R7 2 0
       46 GETTABLEKS                       R7 R5 K11 ["Value"]
       48 JUMPIFNOT                        R7 ; [+3]
       49 LOADNIL                          R8
       50 SETTABLEKS                       R8 R7 K4 ["Parent"]
       52 LOADNIL                          R8
       53 SETTABLEKS                       R8 R5 K4 ["Parent"]
       55 LOADB                            R8 1
       56 RETURN                           R8 1
       57 GETUPVAL                         R7 0
       58 GETTABLEKS                       R7 R7 K12 ["isAParameterWire"]
       60 MOVE                             R8 R0
       61 MOVE                             R9 R2
       62 MOVE                             R10 R5
       63 CALL                             R7 3 1
       64 LOADK                            R10 K6 ["ObjectValue"]
       65 NAMECALL                         R8 R5 K7 ["IsA"]
       67 CALL                             R8 2 1
       68 JUMPIFNOT                        R8 ; [+23]
       69 JUMPIFNOT                        R7 ; [+22]
       70 GETTABLEKS                       R9 R5 K11 ["Value"]
       72 JUMPIFNOT                        R9 ; [+10]
       73 GETTABLEKS                       R9 R5 K11 ["Value"]
       75 LOADK                            R11 K6 ["ObjectValue"]
       76 NAMECALL                         R9 R9 K7 ["IsA"]
       78 CALL                             R9 2 1
       79 JUMPIFNOT                        R9 ; [+3]
       80 GETTABLEKS                       R8 R5 K11 ["Value"]
       82 JUMP                             ; [+1]
       83 MOVE                             R8 R6
       84 JUMPIFNOT                        R8 ; [+54]
       85 GETTABLEKS                       R11 R4 K13 ["inputNodePinId"]
       87 LOADNIL                          R12
       88 NAMECALL                         R9 R8 K14 ["SetAttribute"]
       90 CALL                             R9 3 0
       91 JUMP                             ; [+47]
       92 GETTABLEKS                       R9 R1 K15 ["lookup"]
       94 GETTABLEKS                       R10 R4 K3 ["inputNodeId"]
       96 GETTABLE                         R8 R9 R10
       97 JUMPIFNOT                        R8 ; [+41]
       98 GETTABLEKS                       R9 R8 K16 ["inputLabelPinToConnectionMap"]
      100 LOADNIL                          R10
      101 LOADNIL                          R11
      102 FORGPREP                         R9
      103 GETTABLEKS                       R15 R4 K13 ["inputNodePinId"]
      105 GETTABLE                         R14 R13 R15
      106 JUMPIFNOT                        R14 ; [+30]
      107 GETTABLEKS                       R17 R14 K1 ["wireId"]
      109 NAMECALL                         R15 R0 K2 ["idToInstance"]
      111 CALL                             R15 2 1
      112 JUMPIFNOT                        R15 ; [+24]
      113 GETTABLEKS                       R18 R14 K13 ["inputNodePinId"]
      115 LOADNIL                          R19
      116 NAMECALL                         R16 R5 K14 ["SetAttribute"]
      118 CALL                             R16 3 0
      119 GETUPVAL                         R16 1
      120 CALL                             R16 0 1
      121 JUMPIFNOT                        R16 ; [+12]
      122 GETUPVAL                         R16 0
      123 GETTABLEKS                       R16 R16 K5 ["isAValueNodeWire"]
      125 MOVE                             R17 R15
      126 CALL                             R16 1 1
      127 JUMPIFNOT                        R16 ; [+6]
      128 GETTABLEKS                       R16 R15 K11 ["Value"]
      130 JUMPIFNOT                        R16 ; [+3]
      131 LOADNIL                          R17
      132 SETTABLEKS                       R17 R16 K4 ["Parent"]
      134 LOADNIL                          R16
      135 SETTABLEKS                       R16 R15 K4 ["Parent"]
      137 FORGLOOP                         R9 2 ; [-35]
      139 LOADK                            R10 K6 ["ObjectValue"]
      140 NAMECALL                         R8 R5 K7 ["IsA"]
      142 CALL                             R8 2 1
      143 JUMPIFNOT                        R8 ; [+8]
      144 GETUPVAL                         R8 2
      145 CALL                             R8 0 1
      146 JUMPIFNOT                        R8 ; [+1]
      147 JUMPIF                           R7 ; [+4]
      148 LOADNIL                          R8
      149 SETTABLEKS                       R8 R5 K11 ["Value"]
      151 JUMP                             ; [+3]
      152 LOADNIL                          R8
      153 SETTABLEKS                       R8 R5 K4 ["Parent"]
      155 LOADB                            R7 1
      156 RETURN                           R7 1

PROTO_101:
        0 LOADK                            R1 K0 ["connectionHint_%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_102:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^connectionHint_(.+)$"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_103:
        0 JUMPIFEQKNIL                     R6 ; [+13]
        2 MOVE                             R11 R1
        3 NAMECALL                         R9 R6 K0 ["IsDescendantOf"]
        5 CALL                             R9 2 1
        6 JUMPIFNOT                        R9 ; [+7]
        7 LOADK                            R11 K1 ["ObjectValue"]
        8 NAMECALL                         R9 R6 K2 ["IsA"]
       10 CALL                             R9 2 1
       11 JUMPIFNOT                        R9 ; [+2]
       12 MOVE                             R8 R6
       13 JUMP                             ; [+4]
       14 GETIMPORT                        R8 K5 [Instance.new]
       16 LOADK                            R9 K1 ["ObjectValue"]
       17 CALL                             R8 1 1
       18 GETTABLEKS                       R9 R8 K6 ["Value"]
       20 GETUPVAL                         R10 0
       21 CALL                             R10 0 1
       22 JUMPIFNOT                        R10 ; [+11]
       23 JUMPIFEQKNIL                     R9 ; [+10]
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R10 R10 K7 ["isValueOutputEndpoint"]
       28 MOVE                             R11 R9
       29 CALL                             R10 1 1
       30 JUMPIFNOT                        R10 ; [+3]
       31 LOADNIL                          R10
       32 SETTABLEKS                       R10 R9 K8 ["Parent"]
       34 GETUPVAL                         R10 1
       35 GETTABLEKS                       R10 R10 K9 ["getParameterWireName"]
       37 MOVE                             R11 R4
       38 CALL                             R10 1 1
       39 SETTABLEKS                       R10 R8 K10 ["Name"]
       41 OR                               R10 R7 R2
       42 SETTABLEKS                       R10 R8 K6 ["Value"]
       44 SETTABLEKS                       R5 R8 K8 ["Parent"]
       46 GETUPVAL                         R10 1
       47 GETTABLEKS                       R10 R10 K11 ["setParameterBindingName"]
       49 OR                               R11 R7 R2
       50 MOVE                             R12 R4
       51 GETUPVAL                         R15 2
       52 GETTABLEKS                       R15 R15 K12 ["NODE_ATTRIBUTES"]
       54 GETTABLEKS                       R15 R15 K13 ["BindingName"]
       56 NAMECALL                         R13 R5 K14 ["GetAttribute"]
       58 CALL                             R13 2 1
       59 CALL                             R10 3 0
       60 MOVE                             R12 R8
       61 NAMECALL                         R10 R0 K15 ["instanceToId"]
       63 CALL                             R10 2 1
       64 MOVE                             R11 R4
       65 RETURN                           R10 2

PROTO_104:
        0 OR                               R7 R6 R2
        1 MOVE                             R10 R3
        2 LOADNIL                          R11
        3 NAMECALL                         R8 R7 K0 ["SetAttribute"]
        5 CALL                             R8 3 0
        6 JUMPIFEQKNIL                     R5 ; [+13]
        8 MOVE                             R11 R1
        9 NAMECALL                         R9 R5 K1 ["IsDescendantOf"]
       11 CALL                             R9 2 1
       12 JUMPIFNOT                        R9 ; [+7]
       13 LOADK                            R11 K2 ["ObjectValue"]
       14 NAMECALL                         R9 R5 K3 ["IsA"]
       16 CALL                             R9 2 1
       17 JUMPIFNOT                        R9 ; [+2]
       18 MOVE                             R8 R5
       19 JUMP                             ; [+4]
       20 GETIMPORT                        R8 K6 [Instance.new]
       22 LOADK                            R9 K2 ["ObjectValue"]
       23 CALL                             R8 1 1
       24 GETTABLEKS                       R9 R8 K7 ["Value"]
       26 LOADNIL                          R10
       27 JUMPIFNOT                        R9 ; [+11]
       28 LOADK                            R13 K8 ["AnimationValueOutputDefinition"]
       29 NAMECALL                         R11 R9 K3 ["IsA"]
       31 CALL                             R11 2 1
       32 JUMPIFNOT                        R11 ; [+6]
       33 GETTABLEKS                       R11 R9 K9 ["Parent"]
       35 JUMPIFNOTEQ                      R11 R4 ; [+3]
       37 MOVE                             R10 R9
       38 JUMP                             ; [+17]
       39 JUMPIFNOT                        R9 ; [+9]
       40 GETUPVAL                         R11 0
       41 GETTABLEKS                       R11 R11 K10 ["isValueOutputEndpoint"]
       43 MOVE                             R12 R9
       44 CALL                             R11 1 1
       45 JUMPIFNOT                        R11 ; [+3]
       46 LOADNIL                          R11
       47 SETTABLEKS                       R11 R9 K9 ["Parent"]
       49 GETIMPORT                        R11 K6 [Instance.new]
       51 LOADK                            R12 K8 ["AnimationValueOutputDefinition"]
       52 CALL                             R11 1 1
       53 MOVE                             R10 R11
       54 SETTABLEKS                       R4 R10 K9 ["Parent"]
       56 SETTABLEKS                       R3 R8 K11 ["Name"]
       58 SETTABLEKS                       R10 R8 K7 ["Value"]
       60 SETTABLEKS                       R7 R8 K9 ["Parent"]
       62 MOVE                             R13 R8
       63 NAMECALL                         R11 R0 K12 ["instanceToId"]
       65 CALL                             R11 2 1
       66 MOVE                             R12 R3
       67 MOVE                             R13 R8
       68 RETURN                           R11 3

PROTO_105:
        0 MOVE                             R9 R2
        1 NAMECALL                         R7 R0 K0 ["idToInstance"]
        3 CALL                             R7 2 1
        4 JUMPIFEQKNIL                     R4 ; [+6]
        6 MOVE                             R10 R4
        7 NAMECALL                         R8 R0 K0 ["idToInstance"]
        9 CALL                             R8 2 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R8
       12 JUMPIFEQKNIL                     R7 ; [+6]
       14 LOADK                            R11 K1 ["AnimationNodeDefinition"]
       15 NAMECALL                         R9 R7 K2 ["IsA"]
       17 CALL                             R9 2 1
       18 JUMPIF                           R9 ; [+1]
       19 RETURN                           R0 0
       20 LOADK                            R11 K3 ["AnimationGraphDefinition"]
       21 NAMECALL                         R9 R7 K4 ["FindFirstAncestorWhichIsA"]
       23 CALL                             R9 2 1
       24 JUMPIF                           R9 ; [+1]
       25 RETURN                           R0 0
       26 LOADNIL                          R10
       27 LOADNIL                          R11
       28 JUMPIFNOT                        R8 ; [+38]
       29 JUMPIFNOT                        R4 ; [+37]
       30 JUMPIFNOT                        R5 ; [+36]
       31 LOADK                            R14 K1 ["AnimationNodeDefinition"]
       32 NAMECALL                         R12 R8 K2 ["IsA"]
       34 CALL                             R12 2 1
       35 JUMPIF                           R12 ; [+14]
       36 LOADK                            R14 K5 ["Folder"]
       37 NAMECALL                         R12 R8 K2 ["IsA"]
       39 CALL                             R12 2 1
       40 JUMPIF                           R12 ; [+9]
       41 GETUPVAL                         R12 0
       42 CALL                             R12 0 1
       43 JUMPIFNOT                        R12 ; [+23]
       44 GETUPVAL                         R12 1
       45 GETTABLEKS                       R12 R12 K6 ["isValueNode"]
       47 MOVE                             R13 R8
       48 CALL                             R12 1 1
       49 JUMPIFNOT                        R12 ; [+17]
       50 GETUPVAL                         R12 1
       51 GETTABLEKS                       R12 R12 K7 ["_findNodeOutputBinding"]
       53 MOVE                             R13 R1
       54 MOVE                             R14 R4
       55 MOVE                             R15 R5
       56 CALL                             R12 3 1
       57 MOVE                             R10 R12
       58 JUMPIFNOT                        R10 ; [+7]
       59 GETTABLEKS                       R14 R10 K8 ["wireId"]
       61 NAMECALL                         R12 R0 K0 ["idToInstance"]
       63 CALL                             R12 2 1
       64 MOVE                             R11 R12
       65 JUMP                             ; [+1]
       66 LOADNIL                          R11
       67 GETUPVAL                         R12 1
       68 GETTABLEKS                       R12 R12 K9 ["_findNodeInputBinding"]
       70 MOVE                             R13 R1
       71 MOVE                             R14 R2
       72 MOVE                             R15 R3
       73 MOVE                             R16 R6
       74 CALL                             R12 4 1
       75 JUMPIFNOT                        R12 ; [+6]
       76 GETTABLEKS                       R15 R12 K8 ["wireId"]
       78 NAMECALL                         R13 R0 K0 ["idToInstance"]
       80 CALL                             R13 2 1
       81 JUMP                             ; [+1]
       82 LOADNIL                          R13
       83 GETUPVAL                         R14 0
       84 CALL                             R14 0 1
       85 JUMPIFNOT                        R14 ; [+39]
       86 JUMPIFNOT                        R8 ; [+38]
       87 GETUPVAL                         R14 1
       88 GETTABLEKS                       R14 R14 K6 ["isValueNode"]
       90 MOVE                             R15 R8
       91 CALL                             R14 1 1
       92 JUMPIFNOT                        R14 ; [+32]
       93 LOADNIL                          R14
       94 JUMPIFEQKNIL                     R6 ; [+18]
       96 NAMECALL                         R15 R7 K10 ["GetOrderedInputPinNames"]
       98 CALL                             R15 1 1
       99 GETTABLE                         R16 R15 R6
      100 JUMPIFNOT                        R16 ; [+12]
      101 MOVE                             R19 R16
      102 NAMECALL                         R17 R7 K11 ["FindFirstChild"]
      104 CALL                             R17 2 1
      105 JUMPIFEQKNIL                     R17 ; [+7]
      107 LOADK                            R20 K12 ["ObjectValue"]
      108 NAMECALL                         R18 R17 K2 ["IsA"]
      110 CALL                             R18 2 1
      111 JUMPIFNOT                        R18 ; [+1]
      112 MOVE                             R14 R17
      113 GETUPVAL                         R15 1
      114 GETTABLEKS                       R15 R15 K13 ["setValueNodeConnection"]
      116 MOVE                             R16 R0
      117 MOVE                             R17 R9
      118 MOVE                             R18 R7
      119 MOVE                             R19 R3
      120 MOVE                             R20 R8
      121 MOVE                             R21 R13
      122 MOVE                             R22 R14
      123 CALL                             R15 7 -1
      124 RETURN                           R15 -1
      125 JUMPIFNOT                        R8 ; [+38]
      126 LOADK                            R16 K5 ["Folder"]
      127 NAMECALL                         R14 R8 K2 ["IsA"]
      129 CALL                             R14 2 1
      130 JUMPIFNOT                        R14 ; [+33]
      131 LOADNIL                          R14
      132 JUMPIFEQKNIL                     R6 ; [+18]
      134 NAMECALL                         R15 R7 K10 ["GetOrderedInputPinNames"]
      136 CALL                             R15 1 1
      137 GETTABLE                         R16 R15 R6
      138 JUMPIFNOT                        R16 ; [+12]
      139 MOVE                             R19 R16
      140 NAMECALL                         R17 R7 K11 ["FindFirstChild"]
      142 CALL                             R17 2 1
      143 JUMPIFEQKNIL                     R17 ; [+7]
      145 LOADK                            R20 K12 ["ObjectValue"]
      146 NAMECALL                         R18 R17 K2 ["IsA"]
      148 CALL                             R18 2 1
      149 JUMPIFNOT                        R18 ; [+1]
      150 MOVE                             R14 R17
      151 GETUPVAL                         R15 1
      152 GETTABLEKS                       R15 R15 K14 ["setParameterConnection"]
      154 MOVE                             R16 R0
      155 MOVE                             R17 R9
      156 MOVE                             R18 R7
      157 MOVE                             R19 R2
      158 MOVE                             R20 R3
      159 MOVE                             R21 R8
      160 MOVE                             R22 R13
      161 MOVE                             R23 R14
      162 CALL                             R15 8 -1
      163 RETURN                           R15 -1
      164 LOADNIL                          R14
      165 GETUPVAL                         R15 1
      166 GETTABLEKS                       R15 R15 K15 ["hasDynamicInputPins"]
      168 MOVE                             R16 R1
      169 MOVE                             R17 R2
      170 CALL                             R15 2 1
      171 JUMPIFNOT                        R15 ; [+136]
      172 NAMECALL                         R15 R7 K10 ["GetOrderedInputPinNames"]
      174 CALL                             R15 1 1
      175 JUMPIFNOT                        R10 ; [+7]
      176 GETIMPORT                        R16 K18 [table.find]
      178 MOVE                             R17 R15
      179 GETTABLEKS                       R18 R10 K19 ["inputNodePinId"]
      181 CALL                             R16 2 1
      182 JUMP                             ; [+1]
      183 LOADNIL                          R16
      184 JUMPIFNOT                        R16 ; [+5]
      185 GETIMPORT                        R17 K21 [table.remove]
      187 MOVE                             R18 R15
      188 MOVE                             R19 R16
      189 CALL                             R17 2 0
      190 JUMPIFNOT                        R12 ; [+7]
      191 GETIMPORT                        R17 K18 [table.find]
      193 MOVE                             R18 R15
      194 GETTABLEKS                       R19 R12 K19 ["inputNodePinId"]
      196 CALL                             R17 2 1
      197 JUMP                             ; [+1]
      198 LOADNIL                          R17
      199 JUMPIFNOT                        R17 ; [+5]
      200 GETIMPORT                        R18 K21 [table.remove]
      202 MOVE                             R19 R15
      203 MOVE                             R20 R17
      204 CALL                             R18 2 0
      205 JUMPIFNOT                        R8 ; [+100]
      206 JUMPIFNOT                        R4 ; [+99]
      207 GETUPVAL                         R19 2
      208 CALL                             R19 0 1
      209 JUMPIFNOT                        R19 ; [+36]
      210 GETUPVAL                         R19 3
      211 GETTABLEKS                       R19 R19 K22 ["NODE_CONFIGURATION_NAME"]
      213 LOADK                            R22 K23 ["Configuration"]
      214 NAMECALL                         R20 R8 K2 ["IsA"]
      216 CALL                             R20 2 1
      217 JUMPIFNOT                        R20 ; [+2]
      218 MOVE                             R18 R8
      219 JUMP                             ; [+17]
      220 MOVE                             R22 R19
      221 NAMECALL                         R20 R8 K11 ["FindFirstChild"]
      223 CALL                             R20 2 1
      224 JUMPIFEQKNIL                     R20 ; [+3]
      226 MOVE                             R18 R20
      227 JUMP                             ; [+9]
      228 GETIMPORT                        R20 K26 [Instance.new]
      230 LOADK                            R21 K23 ["Configuration"]
      231 CALL                             R20 1 1
      232 SETTABLEKS                       R19 R20 K27 ["Name"]
      234 SETTABLEKS                       R8 R20 K28 ["Parent"]
      236 MOVE                             R18 R20
      237 GETUPVAL                         R20 3
      238 GETTABLEKS                       R20 R20 K29 ["NODE_ATTRIBUTES"]
      240 GETTABLEKS                       R20 R20 K30 ["DisplayName"]
      242 NAMECALL                         R18 R18 K31 ["GetAttribute"]
      244 CALL                             R18 2 1
      245 JUMP                             ; [+8]
      246 GETUPVAL                         R20 3
      247 GETTABLEKS                       R20 R20 K29 ["NODE_ATTRIBUTES"]
      249 GETTABLEKS                       R20 R20 K30 ["DisplayName"]
      251 NAMECALL                         R18 R8 K31 ["GetAttribute"]
      253 CALL                             R18 2 1
      254 GETUPVAL                         R19 4
      255 CALL                             R19 0 1
      256 JUMPIFNOT                        R19 ; [+33]
      257 GETTABLEKS                       R21 R1 K32 ["lookup"]
      259 GETTABLE                         R20 R21 R4
      260 JUMPIFNOT                        R20 ; [+6]
      261 GETTABLEKS                       R20 R1 K32 ["lookup"]
      263 GETTABLE                         R19 R20 R4
      264 GETTABLEKS                       R19 R19 K33 ["name"]
      266 JUMPIF                           R19 ; [+2]
      267 GETTABLEKS                       R19 R8 K27 ["Name"]
      269 LOADK                            R22 K34 ["Node%d*$"]
      270 LOADK                            R23 K35 [""]
      271 NAMECALL                         R20 R19 K36 ["gsub"]
      273 CALL                             R20 3 1
      274 MOVE                             R19 R20
      275 GETUPVAL                         R20 1
      276 GETTABLEKS                       R20 R20 K37 ["getDynamicInputPinNameFromInputPinIds"]
      278 MOVE                             R21 R15
      279 JUMPIFNOT                        R18 ; [+6]
      280 FASTCALL1                        TOSTRING R18 ; [+3]
      281 MOVE                             R23 R18
      282 GETIMPORT                        R22 K39 [tostring]
      284 CALL                             R22 1 1
      285 JUMP                             ; [+1]
      286 MOVE                             R22 R19
      287 CALL                             R20 2 1
      288 MOVE                             R14 R20
      289 JUMP                             ; [+19]
      290 GETUPVAL                         R19 1
      291 GETTABLEKS                       R19 R19 K37 ["getDynamicInputPinNameFromInputPinIds"]
      293 MOVE                             R20 R15
      294 JUMPIFNOT                        R18 ; [+6]
      295 FASTCALL1                        TOSTRING R18 ; [+3]
      296 MOVE                             R22 R18
      297 GETIMPORT                        R21 K39 [tostring]
      299 CALL                             R21 1 1
      300 JUMP                             ; [+2]
      301 GETTABLEKS                       R21 R8 K27 ["Name"]
      303 CALL                             R19 2 1
      304 MOVE                             R14 R19
      305 JUMP                             ; [+3]
      306 MOVE                             R14 R3
      307 JUMP                             ; [+1]
      308 MOVE                             R14 R3
      309 JUMPIFEQ                         R14 R3 ; [+9]
      311 GETUPVAL                         R15 1
      312 GETTABLEKS                       R15 R15 K9 ["_findNodeInputBinding"]
      314 MOVE                             R16 R1
      315 MOVE                             R17 R2
      316 MOVE                             R18 R14
      317 CALL                             R15 3 1
      318 JUMP                             ; [+1]
      319 LOADNIL                          R15
      320 JUMPIFNOT                        R15 ; [+6]
      321 GETTABLEKS                       R18 R15 K8 ["wireId"]
      323 NAMECALL                         R16 R0 K0 ["idToInstance"]
      325 CALL                             R16 2 1
      326 JUMP                             ; [+1]
      327 LOADNIL                          R16
      328 JUMPIFEQKNIL                     R13 ; [+13]
      330 MOVE                             R20 R9
      331 NAMECALL                         R18 R13 K40 ["IsDescendantOf"]
      333 CALL                             R18 2 1
      334 JUMPIFNOT                        R18 ; [+7]
      335 LOADK                            R20 K12 ["ObjectValue"]
      336 NAMECALL                         R18 R13 K2 ["IsA"]
      338 CALL                             R18 2 1
      339 JUMPIFNOT                        R18 ; [+2]
      340 MOVE                             R17 R13
      341 JUMP                             ; [+32]
      342 JUMPIFEQKNIL                     R16 ; [+13]
      344 MOVE                             R20 R9
      345 NAMECALL                         R18 R16 K40 ["IsDescendantOf"]
      347 CALL                             R18 2 1
      348 JUMPIFNOT                        R18 ; [+7]
      349 LOADK                            R20 K12 ["ObjectValue"]
      350 NAMECALL                         R18 R16 K2 ["IsA"]
      352 CALL                             R18 2 1
      353 JUMPIFNOT                        R18 ; [+2]
      354 MOVE                             R17 R16
      355 JUMP                             ; [+18]
      356 JUMPIFEQKNIL                     R11 ; [+13]
      358 MOVE                             R20 R9
      359 NAMECALL                         R18 R11 K40 ["IsDescendantOf"]
      361 CALL                             R18 2 1
      362 JUMPIFNOT                        R18 ; [+7]
      363 LOADK                            R20 K12 ["ObjectValue"]
      364 NAMECALL                         R18 R11 K2 ["IsA"]
      366 CALL                             R18 2 1
      367 JUMPIFNOT                        R18 ; [+2]
      368 MOVE                             R17 R11
      369 JUMP                             ; [+4]
      370 GETIMPORT                        R17 K26 [Instance.new]
      372 LOADK                            R18 K12 ["ObjectValue"]
      373 CALL                             R17 1 1
      374 JUMPIFNOT                        R16 ; [+5]
      375 JUMPIFEQ                         R16 R17 ; [+4]
      377 LOADNIL                          R18
      378 SETTABLEKS                       R18 R16 K28 ["Parent"]
      380 JUMPIFNOT                        R11 ; [+5]
      381 JUMPIFEQ                         R11 R17 ; [+4]
      383 LOADNIL                          R18
      384 SETTABLEKS                       R18 R11 K28 ["Parent"]
      386 JUMPIFNOT                        R13 ; [+5]
      387 JUMPIFEQ                         R13 R17 ; [+4]
      389 LOADNIL                          R18
      390 SETTABLEKS                       R18 R13 K28 ["Parent"]
      392 NAMECALL                         R18 R7 K41 ["GetChildren"]
      394 CALL                             R18 1 3
      395 FORGPREP                         R18
      396 LOADK                            R25 K12 ["ObjectValue"]
      397 NAMECALL                         R23 R22 K2 ["IsA"]
      399 CALL                             R23 2 1
      400 JUMPIFNOT                        R23 ; [+9]
      401 GETTABLEKS                       R23 R22 K27 ["Name"]
      403 JUMPIFNOTEQ                      R23 R14 ; [+6]
      405 JUMPIFEQ                         R22 R17 ; [+4]
      407 LOADNIL                          R23
      408 SETTABLEKS                       R23 R22 K28 ["Parent"]
      410 FORGLOOP                         R18 2 ; [-15]
      412 NAMECALL                         R18 R7 K10 ["GetOrderedInputPinNames"]
      414 CALL                             R18 1 1
      415 JUMPIFEQ                         R14 R3 ; [+19]
      417 GETIMPORT                        R19 K18 [table.find]
      419 MOVE                             R20 R18
      420 MOVE                             R21 R3
      421 CALL                             R19 2 1
      422 GETIMPORT                        R20 K18 [table.find]
      424 MOVE                             R21 R18
      425 MOVE                             R22 R14
      426 CALL                             R20 2 1
      427 JUMPIFNOT                        R19 ; [+1]
      428 SETTABLE                         R14 R18 R19
      429 JUMPIFNOT                        R20 ; [+5]
      430 GETIMPORT                        R21 K21 [table.remove]
      432 MOVE                             R22 R18
      433 MOVE                             R23 R20
      434 CALL                             R21 2 0
      435 GETIMPORT                        R19 K18 [table.find]
      437 MOVE                             R20 R18
      438 MOVE                             R21 R14
      439 CALL                             R19 2 1
      440 JUMPIF                           R19 ; [+7]
      441 FASTCALL2                        TABLE_INSERT R18 R14 ; [+5]
      443 MOVE                             R20 R18
      444 MOVE                             R21 R14
      445 GETIMPORT                        R19 K43 [table.insert]
      447 CALL                             R19 2 0
      448 MOVE                             R21 R18
      449 NAMECALL                         R19 R7 K44 ["SetOrderedInputPinNames"]
      451 CALL                             R19 2 0
      452 SETTABLEKS                       R14 R17 K27 ["Name"]
      454 SETTABLEKS                       R8 R17 K45 ["Value"]
      456 SETTABLEKS                       R7 R17 K28 ["Parent"]
      458 GETUPVAL                         R19 5
      459 CALL                             R19 0 1
      460 JUMPIFNOT                        R19 ; [+14]
      461 GETUPVAL                         R19 6
      462 JUMPIFNOT                        R19 ; [+12]
      463 GETTABLEKS                       R19 R7 K46 ["NodeType"]
      465 GETIMPORT                        R20 K50 [Enum.AnimationNodeType.StateMachineNode]
      467 JUMPIFNOTEQ                      R19 R20 ; [+7]
      469 GETUPVAL                         R19 7
      470 GETTABLEKS                       R19 R19 K51 ["refreshTransitionNamesForState"]
      472 MOVE                             R20 R7
      473 MOVE                             R21 R17
      474 CALL                             R19 2 0
      475 MOVE                             R21 R17
      476 NAMECALL                         R19 R0 K52 ["instanceToId"]
      478 CALL                             R19 2 1
      479 MOVE                             R20 R14
      480 MOVE                             R21 R17
      481 RETURN                           R19 3

PROTO_106:
        0 GETTABLEKS                       R3 R0 K0 ["lookup"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+3]
        4 GETTABLEKS                       R3 R2 K1 ["nodeType"]
        6 JUMPIF                           R3 ; [+2]
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R4 R2 K1 ["nodeType"]
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQKNIL                  R3 ; [+3]
       15 LOADB                            R4 0
       16 RETURN                           R4 1
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K2 ["nodeTypeHasDynamicInputPins"]
       20 MOVE                             R5 R3
       21 CALL                             R4 1 -1
       22 RETURN                           R4 -1

PROTO_107:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetAnimationNodeDefinition"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 1
        9 MOVE                             R1 R2
       10 JUMPIF                           R1 ; [+2]
       11 LOADB                            R2 0
       12 RETURN                           R2 1
       13 GETTABLEKS                       R3 R1 K1 ["Inputs"]
       15 GETTABLEN                        R2 R3 1
       16 JUMPIFNOT                        R2 ; [+7]
       17 GETTABLEKS                       R3 R1 K1 ["Inputs"]
       19 GETTABLEN                        R2 R3 1
       20 GETTABLEKS                       R2 R2 K2 ["InputFlags"]
       22 JUMPIFEQKN                       R2 K3 [1] ; [+3]
       24 LOADB                            R2 0
       25 RETURN                           R2 1
       26 LOADB                            R2 1
       27 RETURN                           R2 1

PROTO_108:
        0 MOVE                             R6 R1
        1 NAMECALL                         R4 R0 K0 ["idToInstance"]
        3 CALL                             R4 2 1
        4 JUMPIFNOT                        R4 ; [+5]
        5 LOADK                            R7 K1 ["AnimationNodeDefinition"]
        6 NAMECALL                         R5 R4 K2 ["IsA"]
        8 CALL                             R5 2 1
        9 JUMPIF                           R5 ; [+1]
       10 RETURN                           R0 0
       11 NAMECALL                         R5 R4 K3 ["GetOrderedInputPinNames"]
       13 CALL                             R5 1 1
       14 GETIMPORT                        R6 K6 [table.sort]
       16 MOVE                             R7 R2
       17 CALL                             R6 1 0
       18 NEWTABLE                         R6 0 0
       20 LOADN                            R9 1
       21 LENGTH                           R10 R5
       22 ADDK                             R7 R10 K7 [1]
       23 LOADN                            R8 1
       24 FORNPREP                         R7
       25 GETTABLE                         R10 R5 R9
       26 JUMPIFNOTEQ                      R9 R3 ; [+14]
       28 MOVE                             R11 R2
       29 LOADNIL                          R12
       30 LOADNIL                          R13
       31 FORGPREP                         R11
       32 GETTABLE                         R18 R5 R15
       33 FASTCALL2                        TABLE_INSERT R6 R18 ; [+4]
       35 MOVE                             R17 R6
       36 GETIMPORT                        R16 K9 [table.insert]
       38 CALL                             R16 2 0
       39 FORGLOOP                         R11 2 ; [-8]
       41 GETIMPORT                        R11 K11 [table.find]
       43 MOVE                             R12 R2
       44 MOVE                             R13 R9
       45 CALL                             R11 2 1
       46 JUMPIF                           R11 ; [+7]
       47 FASTCALL2                        TABLE_INSERT R6 R10 ; [+5]
       49 MOVE                             R12 R6
       50 MOVE                             R13 R10
       51 GETIMPORT                        R11 K9 [table.insert]
       53 CALL                             R11 2 0
       54 FORNLOOP                         R7
       55 MOVE                             R9 R6
       56 NAMECALL                         R7 R4 K12 ["SetOrderedInputPinNames"]
       58 CALL                             R7 2 0
       59 RETURN                           R0 0

PROTO_109:
        0 MOVE                             R7 R2
        1 NAMECALL                         R5 R0 K0 ["idToInstance"]
        3 CALL                             R5 2 1
        4 JUMPIFEQKNIL                     R5 ; [+6]
        6 LOADK                            R8 K1 ["AnimationNodeDefinition"]
        7 NAMECALL                         R6 R5 K2 ["IsA"]
        9 CALL                             R6 2 1
       10 JUMPIF                           R6 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K3 ["_findNodeInputBinding"]
       15 MOVE                             R7 R1
       16 MOVE                             R8 R2
       17 MOVE                             R9 R3
       18 CALL                             R6 3 1
       19 JUMPIFNOT                        R6 ; [+6]
       20 GETTABLEKS                       R9 R6 K4 ["wireId"]
       22 NAMECALL                         R7 R0 K0 ["idToInstance"]
       24 CALL                             R7 2 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R7
       27 JUMPIF                           R7 ; [+1]
       28 RETURN                           R0 0
       29 NAMECALL                         R8 R5 K5 ["GetOrderedInputPinNames"]
       31 CALL                             R8 1 1
       32 GETIMPORT                        R9 K8 [table.find]
       34 MOVE                             R10 R8
       35 MOVE                             R11 R3
       36 CALL                             R9 2 1
       37 JUMPIF                           R9 ; [+1]
       38 RETURN                           R0 0
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R10 R10 K9 ["getDynamicInputPinName"]
       42 MOVE                             R11 R0
       43 MOVE                             R12 R2
       44 MOVE                             R13 R4
       45 CALL                             R10 3 1
       46 SETTABLE                         R10 R8 R9
       47 MOVE                             R13 R8
       48 NAMECALL                         R11 R5 K10 ["SetOrderedInputPinNames"]
       50 CALL                             R11 2 0
       51 SETTABLEKS                       R10 R7 K11 ["Name"]
       53 GETUPVAL                         R11 1
       54 CALL                             R11 0 1
       55 JUMPIFNOT                        R11 ; [+14]
       56 GETUPVAL                         R11 2
       57 JUMPIFNOT                        R11 ; [+12]
       58 GETTABLEKS                       R11 R5 K12 ["NodeType"]
       60 GETIMPORT                        R12 K16 [Enum.AnimationNodeType.StateMachineNode]
       62 JUMPIFNOTEQ                      R11 R12 ; [+7]
       64 GETUPVAL                         R11 3
       65 GETTABLEKS                       R11 R11 K17 ["refreshTransitionNamesForState"]
       67 MOVE                             R12 R5
       68 MOVE                             R13 R7
       69 CALL                             R11 2 0
       70 RETURN                           R0 0

PROTO_110:
        0 MOVE                             R6 R1
        1 NAMECALL                         R4 R0 K0 ["idToInstance"]
        3 CALL                             R4 2 1
        4 JUMPIFEQKNIL                     R4 ; [+6]
        6 LOADK                            R7 K1 ["AnimationNodeDefinition"]
        7 NAMECALL                         R5 R4 K2 ["IsA"]
        9 CALL                             R5 2 1
       10 JUMPIF                           R5 ; [+1]
       11 RETURN                           R2 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K3 ["getDynamicInputPinNameFromInputNode"]
       15 MOVE                             R6 R4
       16 MOVE                             R7 R2
       17 MOVE                             R8 R3
       18 CALL                             R5 3 -1
       19 RETURN                           R5 -1

PROTO_111:
        0 NAMECALL                         R3 R0 K0 ["GetOrderedInputPinNames"]
        2 CALL                             R3 1 1
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETIMPORT                        R4 K3 [table.find]
        6 MOVE                             R5 R3
        7 MOVE                             R6 R2
        8 CALL                             R4 2 1
        9 JUMP                             ; [+1]
       10 LOADNIL                          R4
       11 JUMPIFNOT                        R4 ; [+5]
       12 GETIMPORT                        R5 K5 [table.remove]
       14 MOVE                             R6 R3
       15 MOVE                             R7 R4
       16 CALL                             R5 2 0
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K6 ["getDynamicInputPinNameFromInputPinIds"]
       20 MOVE                             R6 R3
       21 MOVE                             R7 R1
       22 CALL                             R5 2 -1
       23 RETURN                           R5 -1

PROTO_112:
        0 LOADN                            R2 1
        1 MOVE                             R3 R1
        2 GETIMPORT                        R4 K2 [table.find]
        4 MOVE                             R5 R0
        5 MOVE                             R6 R3
        6 CALL                             R4 2 1
        7 JUMPIFNOT                        R4 ; [+9]
        8 LOADK                            R4 K3 ["%*%*"]
        9 MOVE                             R6 R1
       10 MOVE                             R7 R2
       11 NAMECALL                         R4 R4 K4 ["format"]
       13 CALL                             R4 3 1
       14 MOVE                             R3 R4
       15 ADDK                             R2 R2 K5 [1]
       16 JUMPBACK                         ; [-15]
       17 RETURN                           R3 1

PROTO_113:
        0 LOADNIL                          R1
        1 LOADK                            R4 K0 ["Model"]
        2 NAMECALL                         R2 R0 K1 ["IsA"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+2]
        6 MOVE                             R1 R0
        7 JUMP                             ; [+5]
        8 LOADK                            R4 K0 ["Model"]
        9 NAMECALL                         R2 R0 K2 ["FindFirstAncestorOfClass"]
       11 CALL                             R2 2 1
       12 MOVE                             R1 R2
       13 JUMPIFNOTEQKNIL                  R1 ; [+3]
       15 LOADNIL                          R2
       16 RETURN                           R2 1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K3 ["getOrCreateAnimSavesFolder"]
       20 MOVE                             R3 R1
       21 CALL                             R2 1 -1
       22 RETURN                           R2 -1

PROTO_114:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+14]
        3 JUMPIFEQKNIL                     R0 ; [+8]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["getAnimSavesFolderForTarget"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 JUMPIFNOT                        R1 ; [+1]
       11 RETURN                           R1 1
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K1 ["getOrCreateAnimSavesFolderWithNoRig"]
       15 CALL                             R1 0 -1
       16 RETURN                           R1 -1
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K0 ["getAnimSavesFolderForTarget"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 1
       22 RETURN                           R1 1

PROTO_115:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getOrCreateParentForNewGraph"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+6]
        6 GETIMPORT                        R3 K2 [warn]
        8 LOADK                            R4 K3 ["No valid parent found to create AnimationGraph in"]
        9 CALL                             R3 1 0
       10 LOADNIL                          R3
       11 RETURN                           R3 1
       12 GETIMPORT                        R3 K6 [Instance.new]
       14 LOADK                            R4 K7 ["AnimationGraphDefinition"]
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 1
       17 MOVE                             R5 R2
       18 MOVE                             R6 R1
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K8 ["Name"]
       22 GETIMPORT                        R4 K6 [Instance.new]
       24 LOADK                            R5 K9 ["AnimationNodeDefinition"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K13 [Enum.AnimationNodeType.GraphOutput]
       28 SETTABLEKS                       R5 R4 K14 ["NodeType"]
       30 LOADK                            R5 K12 ["GraphOutput"]
       31 SETTABLEKS                       R5 R4 K8 ["Name"]
       33 SETTABLEKS                       R3 R4 K15 ["Parent"]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K16 ["setNodePosition"]
       38 MOVE                             R6 R4
       39 GETIMPORT                        R7 K19 [Vector2.zero]
       41 CALL                             R5 2 0
       42 SETTABLEKS                       R2 R3 K15 ["Parent"]
       44 RETURN                           R3 1

PROTO_116:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["AnimationNodeDefinition"]
        3 CALL                             R3 1 1
        4 GETUPVAL                         R4 0
        5 MOVE                             R6 R0
        6 NAMECALL                         R4 R4 K4 ["GetAnimationNodeDefinition"]
        8 CALL                             R4 2 1
        9 GETUPVAL                         R5 1
       10 MOVE                             R6 R0
       11 MOVE                             R7 R4
       12 CALL                             R5 2 1
       13 MOVE                             R4 R5
       14 JUMPIF                           R4 ; [+6]
       15 GETIMPORT                        R5 K6 [warn]
       17 LOADK                            R6 K7 ["No definition found for node id:"]
       18 MOVE                             R7 R0
       19 CALL                             R5 2 0
       20 RETURN                           R3 1
       21 LOADN                            R5 0
       22 GETTABLEKS                       R6 R4 K8 ["Type"]
       24 GETTABLEKS                       R6 R6 K9 ["Name"]
       26 MOVE                             R9 R6
       27 NAMECALL                         R7 R2 K10 ["FindFirstChild"]
       29 CALL                             R7 2 1
       30 JUMPIFNOT                        R7 ; [+12]
       31 ADDK                             R5 R5 K11 [1]
       32 GETIMPORT                        R7 K14 [string.format]
       34 LOADK                            R8 K15 ["%s%d"]
       35 GETTABLEKS                       R9 R4 K8 ["Type"]
       37 GETTABLEKS                       R9 R9 K9 ["Name"]
       39 MOVE                             R10 R5
       40 CALL                             R7 3 1
       41 MOVE                             R6 R7
       42 JUMPBACK                         ; [-17]
       43 SETTABLEKS                       R6 R3 K9 ["Name"]
       45 SETTABLEKS                       R0 R3 K16 ["NodeType"]
       47 SETTABLEKS                       R2 R3 K17 ["Parent"]
       49 GETTABLEKS                       R7 R4 K18 ["Properties"]
       51 JUMPIFNOT                        R7 ; [+14]
       52 GETTABLEKS                       R7 R4 K18 ["Properties"]
       54 LOADNIL                          R8
       55 LOADNIL                          R9
       56 FORGPREP                         R7
       57 GETTABLEKS                       R14 R11 K9 ["Name"]
       59 GETTABLEKS                       R15 R11 K19 ["Default"]
       61 NAMECALL                         R12 R3 K20 ["SetAttribute"]
       63 CALL                             R12 3 0
       64 FORGLOOP                         R7 2 ; [-8]
       66 GETUPVAL                         R7 2
       67 GETTABLEKS                       R7 R7 K21 ["setNodePosition"]
       69 MOVE                             R8 R3
       70 GETUPVAL                         R10 3
       71 CALL                             R10 0 1
       72 JUMPIFNOT                        R10 ; [+6]
       73 GETUPVAL                         R9 2
       74 GETTABLEKS                       R9 R9 K22 ["predictOutputPosition"]
       76 MOVE                             R10 R1
       77 CALL                             R9 1 1
       78 JUMP                             ; [+1]
       79 MOVE                             R9 R1
       80 CALL                             R7 2 0
       81 RETURN                           R3 1

PROTO_117:
        0 MOVE                             R5 R2
        1 NAMECALL                         R3 R0 K0 ["instanceToId"]
        3 CALL                             R3 2 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["setNodeConnection"]
        7 MOVE                             R5 R0
        8 MOVE                             R6 R1
        9 MOVE                             R7 R3
       10 LOADK                            R8 K2 ["A"]
       11 LOADNIL                          R9
       12 LOADNIL                          R10
       13 LOADN                            R11 1
       14 CALL                             R4 7 3
       15 JUMPIFNOT                        R6 ; [+5]
       16 LOADK                            R9 K3 ["Position"]
       17 LOADN                            R10 0
       18 NAMECALL                         R7 R6 K4 ["SetAttribute"]
       20 CALL                             R7 3 0
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R7 R7 K1 ["setNodeConnection"]
       24 MOVE                             R8 R0
       25 MOVE                             R9 R1
       26 MOVE                             R10 R3
       27 LOADK                            R11 K5 ["B"]
       28 LOADNIL                          R12
       29 LOADNIL                          R13
       30 LOADN                            R14 2
       31 CALL                             R7 7 3
       32 MOVE                             R5 R7
       33 MOVE                             R5 R8
       34 MOVE                             R6 R9
       35 JUMPIFNOT                        R6 ; [+5]
       36 LOADK                            R9 K3 ["Position"]
       37 LOADN                            R10 1
       38 NAMECALL                         R7 R6 K4 ["SetAttribute"]
       40 CALL                             R7 3 0
       41 RETURN                           R0 0

PROTO_118:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 LOADK                            R10 K0 ["AnimationNodeDefinition"]
        7 NAMECALL                         R8 R7 K1 ["IsA"]
        9 CALL                             R8 2 1
       10 JUMPIFNOT                        R8 ; [+13]
       11 GETTABLEKS                       R8 R7 K2 ["NodeType"]
       13 GETIMPORT                        R9 K6 [Enum.AnimationNodeType.GraphOutput]
       15 JUMPIFEQ                         R8 R9 ; [+8]
       17 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       19 MOVE                             R9 R2
       20 MOVE                             R10 R7
       21 GETIMPORT                        R8 K9 [table.insert]
       23 CALL                             R8 2 0
       24 FORGLOOP                         R3 2 ; [-19]
       26 NEWTABLE                         R3 0 0
       28 NEWTABLE                         R4 0 0
       30 MOVE                             R5 R2
       31 LOADNIL                          R6
       32 LOADNIL                          R7
       33 FORGPREP                         R5
       34 NAMECALL                         R10 R9 K10 ["Clone"]
       36 CALL                             R10 1 1
       37 SETTABLE                         R10 R3 R9
       38 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       40 MOVE                             R12 R4
       41 MOVE                             R13 R10
       42 GETIMPORT                        R11 K9 [table.insert]
       44 CALL                             R11 2 0
       45 FORGLOOP                         R5 2 ; [-12]
       47 MOVE                             R5 R4
       48 LOADNIL                          R6
       49 LOADNIL                          R7
       50 FORGPREP                         R5
       51 NAMECALL                         R10 R9 K11 ["GetDescendants"]
       53 CALL                             R10 1 3
       54 FORGPREP                         R10
       55 LOADK                            R17 K12 ["ObjectValue"]
       56 NAMECALL                         R15 R14 K1 ["IsA"]
       58 CALL                             R15 2 1
       59 JUMPIFNOT                        R15 ; [+27]
       60 GETTABLEKS                       R15 R14 K13 ["Value"]
       62 JUMPIFNOT                        R15 ; [+24]
       63 GETTABLE                         R16 R3 R15
       64 JUMPIFNOT                        R16 ; [+3]
       65 SETTABLEKS                       R16 R14 K13 ["Value"]
       67 JUMP                             ; [+19]
       68 GETUPVAL                         R17 0
       69 CALL                             R17 0 1
       70 JUMPIFNOT                        R17 ; [+16]
       71 GETUPVAL                         R17 1
       72 GETTABLEKS                       R17 R17 K14 ["isValueOutputEndpoint"]
       74 MOVE                             R18 R15
       75 CALL                             R17 1 1
       76 JUMPIFNOT                        R17 ; [+10]
       77 GETTABLEKS                       R17 R15 K15 ["Parent"]
       79 JUMPIFNOT                        R17 ; [+7]
       80 NAMECALL                         R18 R15 K10 ["Clone"]
       82 CALL                             R18 1 1
       83 SETTABLEKS                       R17 R18 K15 ["Parent"]
       85 SETTABLEKS                       R18 R14 K13 ["Value"]
       87 FORGLOOP                         R10 2 ; [-33]
       89 GETUPVAL                         R10 1
       90 GETTABLEKS                       R10 R10 K16 ["setNodePosition"]
       92 MOVE                             R11 R9
       93 GETUPVAL                         R13 1
       94 GETTABLEKS                       R13 R13 K17 ["getNodePosition"]
       96 MOVE                             R14 R9
       97 CALL                             R13 1 1
       98 JUMPIF                           R13 ; [+2]
       99 GETIMPORT                        R13 K20 [Vector2.zero]
      101 GETIMPORT                        R14 K22 [Vector2.new]
      103 LOADN                            R15 10
      104 LOADN                            R16 10
      105 CALL                             R14 2 1
      106 ADD                              R12 R13 R14
      107 CALL                             R10 2 0
      108 SETTABLEKS                       R0 R9 K15 ["Parent"]
      110 FORGLOOP                         R5 2 ; [-60]
      112 RETURN                           R4 1

PROTO_119:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["AnimationNodeDefinition"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+8]
        9 GETTABLEKS                       R6 R5 K3 ["NodeType"]
       11 GETIMPORT                        R7 K7 [Enum.AnimationNodeType.GraphOutput]
       13 JUMPIFNOTEQ                      R6 R7 ; [+3]
       15 LOADB                            R6 1
       16 RETURN                           R6 1
       17 FORGLOOP                         R1 2 ; [-14]
       19 LOADB                            R1 0
       20 RETURN                           R1 1

PROTO_120:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["ObjectValue"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+3]
        9 LOADNIL                          R6
       10 SETTABLEKS                       R6 R5 K3 ["Parent"]
       12 FORGLOOP                         R1 2 ; [-9]
       14 NAMECALL                         R1 R0 K4 ["GetAttributes"]
       16 CALL                             R1 1 3
       17 FORGPREP                         R1
       18 FASTCALL1                        TYPEOF R5 ; [+3]
       19 MOVE                             R7 R5
       20 GETIMPORT                        R6 K6 [typeof]
       22 CALL                             R6 1 1
       23 JUMPIFNOTEQKS                    R6 K7 ["string"] ; [+13]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K8 ["matchParameterBinding"]
       28 MOVE                             R7 R5
       29 CALL                             R6 1 1
       30 JUMPIFEQKNIL                     R6 ; [+6]
       32 MOVE                             R8 R4
       33 LOADNIL                          R9
       34 NAMECALL                         R6 R0 K9 ["SetAttribute"]
       36 CALL                             R6 3 0
       37 FORGLOOP                         R1 2 ; [-20]
       39 RETURN                           R0 0

PROTO_121:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 LOADK                            R10 K0 ["AnimationNodeDefinition"]
        7 NAMECALL                         R8 R7 K1 ["IsA"]
        9 CALL                             R8 2 1
       10 JUMPIFNOT                        R8 ; [+44]
       11 GETTABLEKS                       R8 R7 K2 ["NodeType"]
       13 GETIMPORT                        R9 K6 [Enum.AnimationNodeType.GraphOutput]
       15 JUMPIFNOTEQ                      R8 R9 ; [+5]
       17 GETUPVAL                         R8 0
       18 MOVE                             R9 R0
       19 CALL                             R8 1 1
       20 JUMPIF                           R8 ; [+34]
       21 GETUPVAL                         R8 1
       22 CALL                             R8 0 1
       23 JUMPIFNOT                        R8 ; [+3]
       24 GETUPVAL                         R8 2
       25 MOVE                             R9 R7
       26 CALL                             R8 1 0
       27 GETUPVAL                         R8 3
       28 GETTABLEKS                       R8 R8 K7 ["setNodePosition"]
       30 MOVE                             R9 R7
       31 GETUPVAL                         R11 3
       32 GETTABLEKS                       R11 R11 K8 ["getNodePosition"]
       34 MOVE                             R12 R7
       35 CALL                             R11 1 1
       36 JUMPIF                           R11 ; [+2]
       37 GETIMPORT                        R11 K11 [Vector2.zero]
       39 GETIMPORT                        R12 K13 [Vector2.new]
       41 LOADN                            R13 10
       42 LOADN                            R14 10
       43 CALL                             R12 2 1
       44 ADD                              R10 R11 R12
       45 CALL                             R8 2 0
       46 SETTABLEKS                       R0 R7 K14 ["Parent"]
       48 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       50 MOVE                             R9 R2
       51 MOVE                             R10 R7
       52 GETIMPORT                        R8 K17 [table.insert]
       54 CALL                             R8 2 0
       55 FORGLOOP                         R3 2 ; [-50]
       57 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AnimationClipProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["Rig"]
       19 GETTABLEKS                       R3 R3 K12 ["AnimationRigDataUtils"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K10 ["Util"]
       26 GETTABLEKS                       R4 R4 K13 ["Constants"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K14 ["Flags"]
       33 GETTABLEKS                       R5 R5 K15 ["FFlagAnimGraphUI_FixEnumPinDragging"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K10 ["Util"]
       40 GETTABLEKS                       R6 R6 K16 ["Instances"]
       42 GETTABLEKS                       R6 R6 K17 ["InstanceRegistry"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R1 K10 ["Util"]
       49 GETTABLEKS                       R7 R7 K16 ["Instances"]
       51 GETTABLEKS                       R7 R7 K18 ["InstanceSelectionRegistry"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R1 K19 ["Parent"]
       58 GETTABLEKS                       R8 R8 K20 ["NodeGraphing"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R9 R1 K21 ["NodeViewTypes"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R10 R1 K10 ["Util"]
       70 GETTABLEKS                       R10 R10 K22 ["Signals"]
       72 GETTABLEKS                       R10 R10 K23 ["Experimental"]
       74 GETTABLEKS                       R10 R10 K24 ["SignalExperimentalUtils"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K9 [require]
       79 GETTABLEKS                       R11 R1 K19 ["Parent"]
       81 GETTABLEKS                       R11 R11 K22 ["Signals"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K9 [require]
       86 GETTABLEKS                       R12 R1 K10 ["Util"]
       88 GETTABLEKS                       R12 R12 K22 ["Signals"]
       90 GETTABLEKS                       R12 R12 K25 ["SignalsAnimationUtils"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K9 [require]
       95 GETTABLEKS                       R13 R1 K10 ["Util"]
       97 GETTABLEKS                       R13 R13 K22 ["Signals"]
       99 GETTABLEKS                       R13 R13 K26 ["SignalsInstanceUtils"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K9 [require]
      104 GETTABLEKS                       R14 R1 K27 ["Components"]
      106 GETTABLEKS                       R14 R14 K28 ["NodeView"]
      108 GETTABLEKS                       R14 R14 K29 ["StateMachine"]
      110 GETTABLEKS                       R14 R14 K30 ["StateMachineTransitionNaming"]
      112 CALL                             R13 1 1
      113 GETIMPORT                        R14 K9 [require]
      115 GETTABLEKS                       R15 R1 K10 ["Util"]
      117 GETTABLEKS                       R15 R15 K22 ["Signals"]
      119 GETTABLEKS                       R15 R15 K31 ["TypedInstanceSignals"]
      121 CALL                             R14 1 1
      122 GETIMPORT                        R15 K9 [require]
      124 GETTABLEKS                       R16 R1 K10 ["Util"]
      126 GETTABLEKS                       R16 R16 K32 ["getDeduplicatedName"]
      128 CALL                             R15 1 1
      129 GETIMPORT                        R16 K9 [require]
      131 GETTABLEKS                       R17 R1 K14 ["Flags"]
      133 GETTABLEKS                       R17 R17 K33 ["getFFlagAnimGraphUIEnableExpressionNodes"]
      135 CALL                             R16 1 1
      136 GETIMPORT                        R17 K9 [require]
      138 GETTABLEKS                       R18 R1 K14 ["Flags"]
      140 GETTABLEKS                       R18 R18 K34 ["getFFlagAnimGraphUIEnableValueNodes"]
      142 CALL                             R17 1 1
      143 GETIMPORT                        R18 K9 [require]
      145 GETTABLEKS                       R19 R1 K14 ["Flags"]
      147 GETTABLEKS                       R19 R19 K35 ["getFFlagAnimGraphUIInputPanelUseUIName"]
      149 CALL                             R18 1 1
      150 GETIMPORT                        R19 K9 [require]
      152 GETTABLEKS                       R20 R1 K14 ["Flags"]
      154 GETTABLEKS                       R20 R20 K36 ["getFFlagAnimGraphUIPasteWithoutConnections"]
      156 CALL                             R19 1 1
      157 GETIMPORT                        R20 K9 [require]
      159 GETTABLEKS                       R21 R1 K14 ["Flags"]
      161 GETTABLEKS                       R21 R21 K37 ["getFFlagAnimGraphUIRemoveOrphanedParameterWires"]
      163 CALL                             R20 1 1
      164 GETIMPORT                        R21 K9 [require]
      166 GETTABLEKS                       R22 R1 K14 ["Flags"]
      168 GETTABLEKS                       R22 R22 K38 ["getFFlagAnimGraphUI_PoseStateMachineNode"]
      170 CALL                             R21 1 1
      171 GETIMPORT                        R22 K9 [require]
      173 GETTABLEKS                       R23 R1 K14 ["Flags"]
      175 GETTABLEKS                       R23 R23 K39 ["getFFlagAnimGraphUI_RunTimeDebug"]
      177 CALL                             R22 1 1
      178 GETIMPORT                        R23 K9 [require]
      180 GETTABLEKS                       R24 R1 K14 ["Flags"]
      182 GETTABLEKS                       R24 R24 K40 ["getFFlagAnimationEditorMoveDisplayNameToConfig"]
      184 CALL                             R23 1 1
      185 GETIMPORT                        R24 K9 [require]
      187 GETTABLEKS                       R25 R1 K10 ["Util"]
      189 GETTABLEKS                       R25 R25 K41 ["parseAnimationNodeType"]
      191 CALL                             R24 1 1
      192 GETIMPORT                        R25 K9 [require]
      194 GETTABLEKS                       R26 R1 K27 ["Components"]
      196 GETTABLEKS                       R26 R26 K28 ["NodeView"]
      198 GETTABLEKS                       R26 R26 K29 ["StateMachine"]
      200 GETTABLEKS                       R26 R26 K42 ["resolveStateMachineNodeDefinition"]
      202 CALL                             R25 1 1
      203 GETIMPORT                        R26 K9 [require]
      205 GETTABLEKS                       R27 R1 K27 ["Components"]
      207 GETTABLEKS                       R27 R27 K28 ["NodeView"]
      209 GETTABLEKS                       R27 R27 K29 ["StateMachine"]
      211 GETTABLEKS                       R27 R27 K43 ["supportsStateMachineNode"]
      213 CALL                             R26 1 1
      214 NEWTABLE                         R27 64 0
      216 DUPCLOSURE                       R28 K44 [PROTO_0]
      217 DUPCLOSURE                       R29 K45 [PROTO_2]
      218 CAPTURE                          VAL R12
      219 DUPCLOSURE                       R30 K46 [PROTO_3]
      220 CAPTURE                          VAL R27
      221 CAPTURE                          VAL R3
      222 SETTABLEKS                       R30 R27 K47 ["getOrCreateParameterInstance"]
      224 DUPCLOSURE                       R30 K48 [PROTO_4]
      225 SETTABLEKS                       R30 R27 K49 ["isValueNode"]
      227 DUPCLOSURE                       R30 K50 [PROTO_5]
      228 SETTABLEKS                       R30 R27 K51 ["getUniqueValueNodeName"]
      230 DUPCLOSURE                       R30 K52 [PROTO_6]
      231 SETTABLEKS                       R30 R27 K53 ["isValueOutputEndpoint"]
      233 DUPCLOSURE                       R30 K54 [PROTO_7]
      234 CAPTURE                          VAL R27
      235 CAPTURE                          VAL R3
      236 SETTABLEKS                       R30 R27 K55 ["getOrCreateExpressionInstance"]
      238 DUPCLOSURE                       R30 K56 [PROTO_8]
      239 CAPTURE                          VAL R27
      240 CAPTURE                          VAL R3
      241 SETTABLEKS                       R30 R27 K57 ["createExistingParameterInstance"]
      243 DUPCLOSURE                       R30 K58 [PROTO_10]
      244 CAPTURE                          VAL R0
      245 CAPTURE                          VAL R4
      246 SETTABLEKS                       R30 R27 K59 ["getParameterType"]
      248 DUPCLOSURE                       R30 K60 [PROTO_11]
      249 SETTABLEKS                       R30 R27 K61 ["setParameterBindingName"]
      251 DUPCLOSURE                       R30 K62 [PROTO_12]
      252 CAPTURE                          VAL R3
      253 SETTABLEKS                       R30 R27 K63 ["getNodePosition"]
      255 DUPCLOSURE                       R30 K64 [PROTO_13]
      256 CAPTURE                          VAL R3
      257 SETTABLEKS                       R30 R27 K65 ["predictOutputPosition"]
      259 DUPCLOSURE                       R30 K66 [PROTO_14]
      260 CAPTURE                          VAL R3
      261 SETTABLEKS                       R30 R27 K67 ["setNodePosition"]
      263 DUPCLOSURE                       R30 K68 [PROTO_15]
      264 CAPTURE                          VAL R3
      265 SETTABLEKS                       R30 R27 K69 ["setNodeSize"]
      267 DUPCLOSURE                       R30 K70 [PROTO_16]
      268 CAPTURE                          VAL R3
      269 SETTABLEKS                       R30 R27 K71 ["setNodeIsCollapsed"]
      271 DUPCLOSURE                       R30 K72 [PROTO_17]
      272 CAPTURE                          VAL R3
      273 SETTABLEKS                       R30 R27 K73 ["setDisplayName"]
      275 DUPCLOSURE                       R30 K74 [PROTO_18]
      276 CAPTURE                          VAL R7
      277 CAPTURE                          VAL R3
      278 SETTABLEKS                       R30 R27 K75 ["setZIndex"]
      280 DUPCLOSURE                       R30 K76 [PROTO_19]
      281 SETTABLEKS                       R30 R27 K77 ["getParameterInstanceName"]
      283 DUPCLOSURE                       R30 K78 [PROTO_20]
      284 CAPTURE                          VAL R27
      285 SETTABLEKS                       R30 R27 K79 ["getAllParameterInstancesFromName"]
      287 DUPCLOSURE                       R30 K80 [PROTO_22]
      288 CAPTURE                          VAL R14
      289 CAPTURE                          VAL R12
      290 CAPTURE                          VAL R9
      291 CAPTURE                          VAL R17
      292 CAPTURE                          VAL R27
      293 SETTABLEKS                       R30 R27 K81 ["observeWireInfo"]
      295 DUPCLOSURE                       R30 K82 [PROTO_32]
      296 CAPTURE                          VAL R12
      297 CAPTURE                          VAL R17
      298 CAPTURE                          VAL R27
      299 CAPTURE                          VAL R9
      300 SETTABLEKS                       R30 R27 K83 ["observeNodeConnectionMap"]
      302 DUPCLOSURE                       R30 K84 [PROTO_33]
      303 SETTABLEKS                       R30 R27 K85 ["matchParameterBinding"]
      305 DUPCLOSURE                       R30 K86 [PROTO_34]
      306 CAPTURE                          VAL R3
      307 SETTABLEKS                       R30 R27 K87 ["setExpressionNodeValue"]
      309 DUPCLOSURE                       R30 K88 [PROTO_37]
      310 CAPTURE                          VAL R14
      311 CAPTURE                          VAL R3
      312 CAPTURE                          VAL R9
      313 SETTABLEKS                       R30 R27 K89 ["observeParameterNodeInfo"]
      315 DUPCLOSURE                       R30 K90 [PROTO_40]
      316 CAPTURE                          VAL R14
      317 CAPTURE                          VAL R9
      318 CAPTURE                          VAL R3
      319 SETTABLEKS                       R30 R27 K91 ["observeExpressionValueNodeInfo"]
      321 DUPCLOSURE                       R30 K92 [PROTO_50]
      322 CAPTURE                          VAL R27
      323 CAPTURE                          VAL R12
      324 CAPTURE                          VAL R9
      325 CAPTURE                          VAL R0
      326 CAPTURE                          VAL R14
      327 SETTABLEKS                       R30 R27 K93 ["observeNodeProps"]
      329 DUPCLOSURE                       R30 K94 [PROTO_52]
      330 CAPTURE                          VAL R14
      331 CAPTURE                          VAL R9
      332 SETTABLEKS                       R30 R27 K95 ["observeNodeType"]
      334 DUPCLOSURE                       R30 K96 [PROTO_55]
      335 CAPTURE                          VAL R23
      336 CAPTURE                          VAL R3
      337 CAPTURE                          VAL R29
      338 CAPTURE                          VAL R12
      339 CAPTURE                          VAL R14
      340 CAPTURE                          VAL R27
      341 CAPTURE                          VAL R9
      342 SETTABLEKS                       R30 R27 K97 ["observeNodeInfo"]
      344 DUPCLOSURE                       R30 K98 [PROTO_58]
      345 CAPTURE                          VAL R12
      346 CAPTURE                          VAL R27
      347 SETTABLEKS                       R30 R27 K99 ["observeNodeInfoLookupList"]
      349 DUPCLOSURE                       R30 K100 [PROTO_62]
      350 CAPTURE                          VAL R12
      351 CAPTURE                          VAL R17
      352 CAPTURE                          VAL R9
      353 CAPTURE                          VAL R3
      354 CAPTURE                          VAL R27
      355 CAPTURE                          VAL R16
      356 SETTABLEKS                       R30 R27 K101 ["observeParameterNodeInfoLookupList"]
      358 DUPCLOSURE                       R30 K102 [PROTO_65]
      359 CAPTURE                          VAL R12
      360 CAPTURE                          VAL R17
      361 SETTABLEKS                       R30 R27 K103 ["observeValueNodeInfoLookupList"]
      363 DUPCLOSURE                       R30 K104 [PROTO_67]
      364 CAPTURE                          VAL R27
      365 SETTABLEKS                       R30 R27 K105 ["cleanUpWiresForDeletedNode"]
      367 DUPCLOSURE                       R30 K106 [PROTO_70]
      368 CAPTURE                          VAL R12
      369 CAPTURE                          VAL R9
      370 CAPTURE                          VAL R14
      371 CAPTURE                          VAL R3
      372 SETTABLEKS                       R30 R27 K107 ["observeExpressionNodes"]
      374 DUPCLOSURE                       R30 K108 [PROTO_73]
      375 CAPTURE                          VAL R12
      376 CAPTURE                          VAL R27
      377 CAPTURE                          VAL R9
      378 SETTABLEKS                       R30 R27 K109 ["observeRenderInfoMap"]
      380 DUPCLOSURE                       R30 K110 [PROTO_79]
      381 CAPTURE                          VAL R12
      382 CAPTURE                          VAL R29
      383 CAPTURE                          VAL R3
      384 CAPTURE                          VAL R14
      385 CAPTURE                          VAL R7
      386 CAPTURE                          VAL R9
      387 SETTABLEKS                       R30 R27 K111 ["observeRenderInfo"]
      389 DUPCLOSURE                       R30 K112 [PROTO_83]
      390 CAPTURE                          VAL R11
      391 CAPTURE                          VAL R9
      392 CAPTURE                          VAL R12
      393 SETTABLEKS                       R30 R27 K113 ["observeEditingAnimationGraphDefinition"]
      395 DUPCLOSURE                       R30 K114 [PROTO_91]
      396 CAPTURE                          VAL R12
      397 CAPTURE                          VAL R27
      398 CAPTURE                          VAL R9
      399 CAPTURE                          VAL R17
      400 CAPTURE                          VAL R3
      401 SETTABLEKS                       R30 R27 K115 ["observeGraphState"]
      403 DUPCLOSURE                       R30 K116 [PROTO_92]
      404 SETTABLEKS                       R30 R27 K117 ["fitGraphRect"]
      406 DUPCLOSURE                       R30 K118 [PROTO_93]
      407 SETTABLEKS                       R30 R27 K119 ["_findNodeInputBinding"]
      409 DUPCLOSURE                       R30 K120 [PROTO_94]
      410 SETTABLEKS                       R30 R27 K121 ["_findNodeOutputBinding"]
      412 DUPCLOSURE                       R30 K122 [PROTO_95]
      413 CAPTURE                          VAL R27
      414 SETTABLEKS                       R30 R27 K123 ["deleteNodeInput"]
      416 DUPCLOSURE                       R30 K124 [PROTO_96]
      417 CAPTURE                          VAL R27
      418 SETTABLEKS                       R30 R27 K125 ["removeNodeInputConnection"]
      420 DUPCLOSURE                       R30 K126 [PROTO_97]
      421 SETTABLEKS                       R30 R27 K127 ["isAParameterWire"]
      423 DUPCLOSURE                       R30 K128 [PROTO_98]
      424 CAPTURE                          VAL R27
      425 SETTABLEKS                       R30 R27 K129 ["isAValueNodeWire"]
      427 DUPCLOSURE                       R30 K130 [PROTO_99]
      428 CAPTURE                          VAL R27
      429 SETTABLEKS                       R30 R27 K131 ["removeOrderedInputPin"]
      431 DUPCLOSURE                       R30 K132 [PROTO_100]
      432 CAPTURE                          VAL R27
      433 CAPTURE                          VAL R17
      434 CAPTURE                          VAL R20
      435 SETTABLEKS                       R30 R27 K133 ["removeNodeOutputConnection"]
      437 DUPCLOSURE                       R30 K134 [PROTO_101]
      438 SETTABLEKS                       R30 R27 K135 ["getParameterWireName"]
      440 DUPCLOSURE                       R30 K136 [PROTO_102]
      441 SETTABLEKS                       R30 R27 K137 ["getParameterWireInputPinId"]
      443 DUPCLOSURE                       R30 K138 [PROTO_103]
      444 CAPTURE                          VAL R17
      445 CAPTURE                          VAL R27
      446 CAPTURE                          VAL R3
      447 SETTABLEKS                       R30 R27 K139 ["setParameterConnection"]
      449 DUPCLOSURE                       R30 K140 [PROTO_104]
      450 CAPTURE                          VAL R27
      451 SETTABLEKS                       R30 R27 K141 ["setValueNodeConnection"]
      453 DUPCLOSURE                       R30 K142 [PROTO_105]
      454 CAPTURE                          VAL R17
      455 CAPTURE                          VAL R27
      456 CAPTURE                          VAL R23
      457 CAPTURE                          VAL R3
      458 CAPTURE                          VAL R18
      459 CAPTURE                          VAL R21
      460 CAPTURE                          VAL R26
      461 CAPTURE                          VAL R13
      462 SETTABLEKS                       R30 R27 K143 ["setNodeConnection"]
      464 DUPCLOSURE                       R30 K144 [PROTO_106]
      465 CAPTURE                          VAL R24
      466 CAPTURE                          VAL R27
      467 SETTABLEKS                       R30 R27 K145 ["hasDynamicInputPins"]
      469 DUPCLOSURE                       R30 K146 [PROTO_107]
      470 CAPTURE                          VAL R0
      471 CAPTURE                          VAL R25
      472 SETTABLEKS                       R30 R27 K147 ["nodeTypeHasDynamicInputPins"]
      474 DUPCLOSURE                       R30 K148 [PROTO_108]
      475 SETTABLEKS                       R30 R27 K149 ["reorderPins"]
      477 DUPCLOSURE                       R30 K150 [PROTO_109]
      478 CAPTURE                          VAL R27
      479 CAPTURE                          VAL R21
      480 CAPTURE                          VAL R26
      481 CAPTURE                          VAL R13
      482 SETTABLEKS                       R30 R27 K151 ["renameDynamicInputPin"]
      484 DUPCLOSURE                       R30 K152 [PROTO_110]
      485 CAPTURE                          VAL R27
      486 SETTABLEKS                       R30 R27 K153 ["getDynamicInputPinName"]
      488 DUPCLOSURE                       R30 K154 [PROTO_111]
      489 CAPTURE                          VAL R27
      490 SETTABLEKS                       R30 R27 K155 ["getDynamicInputPinNameFromInputNode"]
      492 DUPCLOSURE                       R30 K156 [PROTO_112]
      493 SETTABLEKS                       R30 R27 K157 ["getDynamicInputPinNameFromInputPinIds"]
      495 DUPCLOSURE                       R30 K158 [PROTO_113]
      496 CAPTURE                          VAL R2
      497 SETTABLEKS                       R30 R27 K159 ["getAnimSavesFolderForTarget"]
      499 DUPCLOSURE                       R30 K160 [PROTO_114]
      500 CAPTURE                          VAL R22
      501 CAPTURE                          VAL R27
      502 CAPTURE                          VAL R2
      503 SETTABLEKS                       R30 R27 K161 ["getOrCreateParentForNewGraph"]
      505 DUPCLOSURE                       R30 K162 [PROTO_115]
      506 CAPTURE                          VAL R27
      507 CAPTURE                          VAL R15
      508 SETTABLEKS                       R30 R27 K163 ["createNewAnimationGraph"]
      510 DUPCLOSURE                       R30 K164 [PROTO_116]
      511 CAPTURE                          VAL R0
      512 CAPTURE                          VAL R25
      513 CAPTURE                          VAL R27
      514 CAPTURE                          VAL R22
      515 SETTABLEKS                       R30 R27 K165 ["createNodeOfType"]
      517 DUPCLOSURE                       R30 K166 [PROTO_117]
      518 CAPTURE                          VAL R27
      519 SETTABLEKS                       R30 R27 K167 ["seedBlend1dInputs"]
      521 DUPCLOSURE                       R30 K168 [PROTO_118]
      522 CAPTURE                          VAL R17
      523 CAPTURE                          VAL R27
      524 SETTABLEKS                       R30 R27 K169 ["duplicateNodes"]
      526 DUPCLOSURE                       R30 K170 [PROTO_119]
      527 DUPCLOSURE                       R31 K171 [PROTO_120]
      528 CAPTURE                          VAL R27
      529 DUPCLOSURE                       R32 K172 [PROTO_121]
      530 CAPTURE                          VAL R30
      531 CAPTURE                          VAL R19
      532 CAPTURE                          VAL R31
      533 CAPTURE                          VAL R27
      534 SETTABLEKS                       R32 R27 K173 ["pasteInstancesIntoGraph"]
      536 RETURN                           R27 1
