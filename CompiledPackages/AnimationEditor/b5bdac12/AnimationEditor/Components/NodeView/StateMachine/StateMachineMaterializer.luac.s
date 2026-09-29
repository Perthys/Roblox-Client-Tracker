PROTO_0:
        0 SETTABLEKS                       R1 R0 K0 ["Name"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["setStatePosition"]
        5 MOVE                             R6 R0
        6 GETIMPORT                        R7 K4 [Vector2.new]
        8 GETTABLEKS                       R8 R2 K5 ["x"]
       10 GETTABLEKS                       R9 R2 K6 ["y"]
       12 CALL                             R7 2 -1
       13 CALL                             R5 -1 0
       14 LOADK                            R7 K7 ["RBX_IsStart"]
       15 JUMPIFNOT                        R3 ; [+2]
       16 LOADB                            R8 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R8
       19 NAMECALL                         R5 R0 K8 ["SetAttribute"]
       21 CALL                             R5 3 0
       22 LOADK                            R7 K9 ["RBX_IsAny"]
       23 JUMPIFNOT                        R4 ; [+2]
       24 LOADB                            R8 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R8
       27 NAMECALL                         R5 R0 K8 ["SetAttribute"]
       29 CALL                             R5 3 0
       30 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["transitionInstanceName"]
        3 MOVE                             R5 R2
        4 MOVE                             R6 R3
        5 CALL                             R4 2 1
        6 SETTABLEKS                       R4 R0 K1 ["Name"]
        8 GETTABLEKS                       R4 R1 K2 ["id"]
       10 SETTABLEKS                       R4 R0 K3 ["TransitionId"]
       12 SETTABLEKS                       R2 R0 K4 ["From"]
       14 SETTABLEKS                       R3 R0 K5 ["To"]
       16 GETTABLEKS                       R4 R1 K6 ["Priority"]
       18 SETTABLEKS                       R4 R0 K6 ["Priority"]
       20 LOADK                            R6 K7 ["Expression"]
       21 GETTABLEKS                       R7 R1 K8 ["TriggerExpression"]
       23 NAMECALL                         R4 R0 K9 ["SetAttribute"]
       25 CALL                             R4 3 0
       26 LOADK                            R6 K10 ["Duration"]
       27 GETTABLEKS                       R7 R1 K11 ["Length"]
       29 NAMECALL                         R4 R0 K9 ["SetAttribute"]
       31 CALL                             R4 3 0
       32 LOADK                            R6 K12 ["Curve"]
       33 GETTABLEKS                       R7 R1 K12 ["Curve"]
       35 NAMECALL                         R4 R0 K9 ["SetAttribute"]
       37 CALL                             R4 3 0
       38 LOADK                            R6 K13 ["WaitFor"]
       39 GETTABLEKS                       R7 R1 K13 ["WaitFor"]
       41 NAMECALL                         R4 R0 K9 ["SetAttribute"]
       43 CALL                             R4 3 0
       44 LOADK                            R6 K14 ["When"]
       45 GETTABLEKS                       R7 R1 K14 ["When"]
       47 NAMECALL                         R4 R0 K9 ["SetAttribute"]
       49 CALL                             R4 3 0
       50 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R2 K0 ["idToInstance"]
        3 CALL                             R3 2 1
        4 JUMPIFEQKNIL                     R3 ; [+11]
        6 GETTABLEKS                       R4 R3 K1 ["Parent"]
        8 JUMPIFNOTEQ                      R4 R0 ; [+7]
       10 LOADK                            R6 K2 ["ObjectValue"]
       11 NAMECALL                         R4 R3 K3 ["IsA"]
       13 CALL                             R4 2 1
       14 JUMPIFNOT                        R4 ; [+1]
       15 RETURN                           R3 1
       16 LOADNIL                          R4
       17 RETURN                           R4 1

PROTO_3:
        0 NAMECALL                         R2 R0 K0 ["GetChildren"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADK                            R9 K1 ["StateMachineTransitionDefinition"]
        5 NAMECALL                         R7 R6 K2 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+5]
        9 GETTABLEKS                       R7 R6 K3 ["TransitionId"]
       11 JUMPIFNOTEQ                      R7 R1 ; [+2]
       13 RETURN                           R6 1
       14 FORGLOOP                         R2 2 ; [-11]
       16 LOADNIL                          R2
       17 RETURN                           R2 1

PROTO_4:
        0 MOVE                             R5 R1
        1 JUMPIF                           R3 ; [+22]
        2 JUMPIF                           R4 ; [+21]
        3 NAMECALL                         R6 R0 K0 ["GetOrderedInputPinNames"]
        5 CALL                             R6 1 1
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R7 R7 K1 ["getDynamicInputPinNameFromInputPinIds"]
        9 MOVE                             R8 R6
       10 MOVE                             R9 R1
       11 CALL                             R7 2 1
       12 MOVE                             R5 R7
       13 FASTCALL2                        TABLE_INSERT R6 R5 ; [+5]
       15 MOVE                             R8 R6
       16 MOVE                             R9 R5
       17 GETIMPORT                        R7 K4 [table.insert]
       19 CALL                             R7 2 0
       20 MOVE                             R9 R6
       21 NAMECALL                         R7 R0 K5 ["SetOrderedInputPinNames"]
       23 CALL                             R7 2 0
       24 GETIMPORT                        R6 K8 [Instance.new]
       26 LOADK                            R7 K9 ["ObjectValue"]
       27 CALL                             R6 1 1
       28 MOVE                             R7 R5
       29 SETTABLEKS                       R7 R6 K10 ["Name"]
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R8 R8 K11 ["setStatePosition"]
       34 MOVE                             R9 R6
       35 GETIMPORT                        R10 K13 [Vector2.new]
       37 GETTABLEKS                       R11 R2 K14 ["x"]
       39 GETTABLEKS                       R12 R2 K15 ["y"]
       41 CALL                             R10 2 -1
       42 CALL                             R8 -1 0
       43 LOADK                            R10 K16 ["RBX_IsStart"]
       44 JUMPIFNOT                        R3 ; [+2]
       45 LOADB                            R11 1
       46 JUMP                             ; [+1]
       47 LOADNIL                          R11
       48 NAMECALL                         R8 R6 K17 ["SetAttribute"]
       50 CALL                             R8 3 0
       51 LOADK                            R10 K18 ["RBX_IsAny"]
       52 JUMPIFNOT                        R4 ; [+2]
       53 LOADB                            R11 1
       54 JUMP                             ; [+1]
       55 LOADNIL                          R11
       56 NAMECALL                         R8 R6 K17 ["SetAttribute"]
       58 CALL                             R8 3 0
       59 SETTABLEKS                       R0 R6 K19 ["Parent"]
       61 RETURN                           R6 1

PROTO_5:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["StateMachineTransitionDefinition"]
        3 CALL                             R3 1 1
        4 GETUPVAL                         R4 0
        5 MOVE                             R5 R3
        6 DUPTABLE                         R6 K16 [{["id"], ["fromStateId"] = "", ["toStateId"] = "", ["Length"] = 0.2, ["Curve"], ["Priority"] = 1, ["TriggerExpression"] = "", ["WaitFor"], ["When"]}]
        7 GETUPVAL                         R7 1
        8 LOADB                            R9 0
        9 NAMECALL                         R7 R7 K17 ["GenerateGUID"]
       11 CALL                             R7 2 1
       12 SETTABLEKS                       R7 R6 K4 ["id"]
       14 GETIMPORT                        R7 K21 [Enum.PoseEasingStyle.Linear]
       16 SETTABLEKS                       R7 R6 K10 ["Curve"]
       18 GETIMPORT                        R7 K24 [Enum.AnimationNodeWaitFor.Trigger]
       20 SETTABLEKS                       R7 R6 K14 ["WaitFor"]
       22 GETIMPORT                        R7 K27 [Enum.AnimationNodeTransitionWhen.Finished]
       24 SETTABLEKS                       R7 R6 K15 ["When"]
       26 MOVE                             R7 R1
       27 MOVE                             R8 R2
       28 CALL                             R4 4 0
       29 SETTABLEKS                       R0 R3 K28 ["Parent"]
       31 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R5 K0 ["RBX_IsStart"]
        1 NAMECALL                         R3 R2 K1 ["GetAttribute"]
        3 CALL                             R3 2 1
        4 JUMPIFEQKB                       R3 TRUE ; [+7]
        6 LOADK                            R5 K2 ["RBX_IsAny"]
        7 NAMECALL                         R3 R2 K1 ["GetAttribute"]
        9 CALL                             R3 2 1
       10 JUMPIFNOTEQKB                    R3 TRUE ; [+2]
       12 RETURN                           R0 0
       13 LOADK                            R5 K0 ["RBX_IsStart"]
       14 NAMECALL                         R3 R1 K1 ["GetAttribute"]
       16 CALL                             R3 2 1
       17 JUMPIFNOTEQKB                    R3 TRUE ; [+10]
       19 GETUPVAL                         R3 0
       20 CALL                             R3 0 1
       21 JUMPIFNOT                        R3 ; [+5]
       22 LOADK                            R5 K3 ["EntryState"]
       23 MOVE                             R6 R2
       24 NAMECALL                         R3 R0 K4 ["SetAttribute"]
       26 CALL                             R3 3 0
       27 RETURN                           R0 0
       28 LOADK                            R6 K2 ["RBX_IsAny"]
       29 NAMECALL                         R4 R1 K1 ["GetAttribute"]
       31 CALL                             R4 2 1
       32 JUMPIFNOTEQKB                    R4 TRUE ; [+3]
       34 LOADNIL                          R3
       35 JUMP                             ; [+1]
       36 MOVE                             R3 R1
       37 NAMECALL                         R4 R0 K5 ["GetChildren"]
       39 CALL                             R4 1 3
       40 FORGPREP                         R4
       41 LOADK                            R11 K6 ["StateMachineTransitionDefinition"]
       42 NAMECALL                         R9 R8 K7 ["IsA"]
       44 CALL                             R9 2 1
       45 JUMPIFNOT                        R9 ; [+9]
       46 GETTABLEKS                       R9 R8 K8 ["From"]
       48 JUMPIFNOTEQ                      R9 R3 ; [+6]
       50 GETTABLEKS                       R9 R8 K9 ["To"]
       52 JUMPIFNOTEQ                      R9 R2 ; [+2]
       54 RETURN                           R0 0
       55 FORGLOOP                         R4 2 ; [-15]
       57 GETUPVAL                         R4 1
       58 MOVE                             R5 R0
       59 MOVE                             R6 R3
       60 MOVE                             R7 R2
       61 CALL                             R4 3 0
       62 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["supportsInstances"]
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 LOADB                            R7 0
       10 LOADB                            R8 0
       11 CALL                             R3 5 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getDefault"]
        3 CALL                             R4 0 1
        4 MOVE                             R1 R4
        5 GETTABLEKS                       R1 R1 K1 ["states"]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 GETUPVAL                         R6 1
       11 MOVE                             R7 R0
       12 GETTABLEKS                       R8 R5 K2 ["name"]
       14 GETTABLEKS                       R9 R5 K3 ["position"]
       16 GETTABLEKS                       R10 R5 K4 ["isStart"]
       18 GETTABLEKS                       R11 R5 K5 ["isAny"]
       20 CALL                             R6 5 0
       21 FORGLOOP                         R1 2 ; [-12]
       23 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["supportsInstances"]
        3 JUMPIF                           R4 ; [+1]
        4 RETURN                           R0 0
        5 MOVE                             R7 R1
        6 NAMECALL                         R5 R3 K1 ["idToInstance"]
        8 CALL                             R5 2 1
        9 JUMPIFEQKNIL                     R5 ; [+12]
       11 GETTABLEKS                       R6 R5 K2 ["Parent"]
       13 JUMPIFNOTEQ                      R6 R0 ; [+8]
       15 LOADK                            R8 K3 ["ObjectValue"]
       16 NAMECALL                         R6 R5 K4 ["IsA"]
       18 CALL                             R6 2 1
       19 JUMPIFNOT                        R6 ; [+2]
       20 MOVE                             R4 R5
       21 JUMP                             ; [+1]
       22 LOADNIL                          R4
       23 JUMPIFNOTEQKNIL                  R4 ; [+2]
       25 RETURN                           R0 0
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K5 ["setStatePosition"]
       29 MOVE                             R6 R4
       30 GETIMPORT                        R7 K8 [Vector2.new]
       32 GETTABLEKS                       R8 R2 K9 ["x"]
       34 GETTABLEKS                       R9 R2 K10 ["y"]
       36 CALL                             R7 2 -1
       37 CALL                             R5 -1 0
       38 RETURN                           R0 0

PROTO_10:
        0 NAMECALL                         R2 R0 K0 ["GetChildren"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADK                            R9 K1 ["StateMachineTransitionDefinition"]
        5 NAMECALL                         R7 R6 K2 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+11]
        9 GETTABLEKS                       R7 R6 K3 ["From"]
       11 JUMPIFEQ                         R7 R1 ; [+5]
       13 GETTABLEKS                       R7 R6 K4 ["To"]
       15 JUMPIFNOTEQ                      R7 R1 ; [+4]
       17 LOADNIL                          R7
       18 SETTABLEKS                       R7 R6 K5 ["Parent"]
       20 FORGLOOP                         R2 2 ; [-17]
       22 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["supportsInstances"]
        3 JUMPIF                           R4 ; [+1]
        4 RETURN                           R0 0
        5 MOVE                             R7 R1
        6 NAMECALL                         R5 R3 K1 ["idToInstance"]
        8 CALL                             R5 2 1
        9 JUMPIFEQKNIL                     R5 ; [+12]
       11 GETTABLEKS                       R6 R5 K2 ["Parent"]
       13 JUMPIFNOTEQ                      R6 R0 ; [+8]
       15 LOADK                            R8 K3 ["ObjectValue"]
       16 NAMECALL                         R6 R5 K4 ["IsA"]
       18 CALL                             R6 2 1
       19 JUMPIFNOT                        R6 ; [+2]
       20 MOVE                             R4 R5
       21 JUMP                             ; [+1]
       22 LOADNIL                          R4
       23 JUMPIFNOTEQKNIL                  R4 ; [+2]
       25 RETURN                           R0 0
       26 GETTABLEKS                       R5 R4 K5 ["Name"]
       28 JUMPIFEQ                         R2 R5 ; [+24]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K6 ["getDynamicInputPinNameFromInputNode"]
       33 MOVE                             R7 R0
       34 MOVE                             R8 R2
       35 MOVE                             R9 R5
       36 CALL                             R6 3 1
       37 NAMECALL                         R7 R0 K7 ["GetOrderedInputPinNames"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K10 [table.find]
       42 MOVE                             R9 R7
       43 MOVE                             R10 R5
       44 CALL                             R8 2 1
       45 JUMPIFNOT                        R8 ; [+5]
       46 SETTABLE                         R6 R7 R8
       47 MOVE                             R11 R7
       48 NAMECALL                         R9 R0 K11 ["SetOrderedInputPinNames"]
       50 CALL                             R9 2 0
       51 SETTABLEKS                       R6 R4 K5 ["Name"]
       53 GETUPVAL                         R6 2
       54 GETTABLEKS                       R6 R6 K12 ["refreshTransitionNamesForState"]
       56 MOVE                             R7 R0
       57 MOVE                             R8 R4
       58 CALL                             R6 2 0
       59 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["supportsInstances"]
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 MOVE                             R6 R1
        6 NAMECALL                         R4 R2 K1 ["idToInstance"]
        8 CALL                             R4 2 1
        9 JUMPIFEQKNIL                     R4 ; [+12]
       11 GETTABLEKS                       R5 R4 K2 ["Parent"]
       13 JUMPIFNOTEQ                      R5 R0 ; [+8]
       15 LOADK                            R7 K3 ["ObjectValue"]
       16 NAMECALL                         R5 R4 K4 ["IsA"]
       18 CALL                             R5 2 1
       19 JUMPIFNOT                        R5 ; [+2]
       20 MOVE                             R3 R4
       21 JUMP                             ; [+1]
       22 LOADNIL                          R3
       23 JUMPIFNOTEQKNIL                  R3 ; [+2]
       25 RETURN                           R0 0
       26 NAMECALL                         R4 R0 K5 ["GetOrderedInputPinNames"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K8 [table.find]
       31 MOVE                             R6 R4
       32 GETTABLEKS                       R7 R3 K9 ["Name"]
       34 CALL                             R5 2 1
       35 JUMPIFNOT                        R5 ; [+9]
       36 GETIMPORT                        R6 K11 [table.remove]
       38 MOVE                             R7 R4
       39 MOVE                             R8 R5
       40 CALL                             R6 2 0
       41 MOVE                             R8 R4
       42 NAMECALL                         R6 R0 K12 ["SetOrderedInputPinNames"]
       44 CALL                             R6 2 0
       45 GETUPVAL                         R6 1
       46 MOVE                             R7 R0
       47 MOVE                             R8 R3
       48 CALL                             R6 2 0
       49 GETUPVAL                         R6 2
       50 CALL                             R6 0 1
       51 JUMPIFNOT                        R6 ; [+15]
       52 GETUPVAL                         R6 3
       53 GETTABLEKS                       R6 R6 K13 ["resolveInstanceAttribute"]
       55 LOADK                            R9 K14 ["EntryState"]
       56 NAMECALL                         R7 R0 K15 ["GetAttribute"]
       58 CALL                             R7 2 -1
       59 CALL                             R6 -1 1
       60 JUMPIFNOTEQ                      R6 R3 ; [+6]
       62 LOADK                            R9 K14 ["EntryState"]
       63 LOADNIL                          R10
       64 NAMECALL                         R7 R0 K16 ["SetAttribute"]
       66 CALL                             R7 3 0
       67 LOADNIL                          R6
       68 SETTABLEKS                       R6 R3 K2 ["Parent"]
       70 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["supportsInstances"]
        3 JUMPIF                           R4 ; [+1]
        4 RETURN                           R0 0
        5 MOVE                             R7 R1
        6 NAMECALL                         R5 R3 K1 ["idToInstance"]
        8 CALL                             R5 2 1
        9 JUMPIFEQKNIL                     R5 ; [+12]
       11 GETTABLEKS                       R6 R5 K2 ["Parent"]
       13 JUMPIFNOTEQ                      R6 R0 ; [+8]
       15 LOADK                            R8 K3 ["ObjectValue"]
       16 NAMECALL                         R6 R5 K4 ["IsA"]
       18 CALL                             R6 2 1
       19 JUMPIFNOT                        R6 ; [+2]
       20 MOVE                             R4 R5
       21 JUMP                             ; [+1]
       22 LOADNIL                          R4
       23 MOVE                             R8 R2
       24 NAMECALL                         R6 R3 K1 ["idToInstance"]
       26 CALL                             R6 2 1
       27 JUMPIFEQKNIL                     R6 ; [+12]
       29 GETTABLEKS                       R7 R6 K2 ["Parent"]
       31 JUMPIFNOTEQ                      R7 R0 ; [+8]
       33 LOADK                            R9 K3 ["ObjectValue"]
       34 NAMECALL                         R7 R6 K4 ["IsA"]
       36 CALL                             R7 2 1
       37 JUMPIFNOT                        R7 ; [+2]
       38 MOVE                             R5 R6
       39 JUMP                             ; [+1]
       40 LOADNIL                          R5
       41 JUMPIFEQKNIL                     R4 ; [+3]
       43 JUMPIFNOTEQKNIL                  R5 ; [+2]
       45 RETURN                           R0 0
       46 GETUPVAL                         R6 1
       47 MOVE                             R7 R0
       48 MOVE                             R8 R4
       49 MOVE                             R9 R5
       50 CALL                             R6 3 0
       51 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["supportsInstances"]
        3 JUMPIF                           R5 ; [+1]
        4 RETURN                           R0 0
        5 MOVE                             R8 R1
        6 NAMECALL                         R6 R4 K1 ["idToInstance"]
        8 CALL                             R6 2 1
        9 JUMPIFEQKNIL                     R6 ; [+12]
       11 GETTABLEKS                       R7 R6 K2 ["Parent"]
       13 JUMPIFNOTEQ                      R7 R0 ; [+8]
       15 LOADK                            R9 K3 ["ObjectValue"]
       16 NAMECALL                         R7 R6 K4 ["IsA"]
       18 CALL                             R7 2 1
       19 JUMPIFNOT                        R7 ; [+2]
       20 MOVE                             R5 R6
       21 JUMP                             ; [+1]
       22 LOADNIL                          R5
       23 JUMPIFNOTEQKNIL                  R5 ; [+2]
       25 RETURN                           R0 0
       26 GETUPVAL                         R6 1
       27 MOVE                             R7 R0
       28 MOVE                             R8 R2
       29 MOVE                             R9 R3
       30 LOADB                            R10 0
       31 LOADB                            R11 0
       32 CALL                             R6 5 1
       33 GETUPVAL                         R7 2
       34 MOVE                             R8 R0
       35 MOVE                             R9 R5
       36 MOVE                             R10 R6
       37 CALL                             R7 3 0
       38 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["supportsInstances"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 JUMPIFNOTEQKS                    R1 K1 ["entry"] ; [+7]
        7 LOADK                            R4 K2 ["EntryState"]
        8 LOADNIL                          R5
        9 NAMECALL                         R2 R0 K3 ["SetAttribute"]
       11 CALL                             R2 3 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 1
       14 MOVE                             R3 R0
       15 MOVE                             R4 R1
       16 CALL                             R2 2 1
       17 JUMPIFNOTEQKNIL                  R2 ; [+2]
       19 RETURN                           R0 0
       20 LOADNIL                          R3
       21 SETTABLEKS                       R3 R2 K4 ["Parent"]
       23 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["supportsInstances"]
        3 JUMPIF                           R4 ; [+1]
        4 RETURN                           R0 0
        5 JUMPIFNOTEQKS                    R1 K1 ["entry"] ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R4 1
        9 MOVE                             R5 R0
       10 MOVE                             R6 R1
       11 CALL                             R4 2 1
       12 JUMPIFNOTEQKNIL                  R4 ; [+2]
       14 RETURN                           R0 0
       15 JUMPIFNOTEQKS                    R2 K2 ["Priority"] ; [+4]
       17 SETTABLEKS                       R3 R4 K2 ["Priority"]
       19 RETURN                           R0 0
       20 GETUPVAL                         R6 2
       21 GETTABLE                         R5 R6 R2
       22 JUMPIFEQKNIL                     R5 ; [+6]
       24 MOVE                             R8 R5
       25 MOVE                             R9 R3
       26 NAMECALL                         R6 R4 K3 ["SetAttribute"]
       28 CALL                             R6 3 0
       29 RETURN                           R0 0

PROTO_17:
        0 NEWTABLE                         R3 0 0
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 NEWTABLE                         R6 0 0
        6 MOVE                             R7 R0
        7 LOADNIL                          R8
        8 LOADNIL                          R9
        9 FORGPREP                         R7
       10 GETTABLEKS                       R12 R11 K0 ["instance"]
       12 GETTABLEKS                       R13 R11 K1 ["id"]
       14 SETTABLE                         R13 R6 R12
       15 GETTABLEKS                       R12 R11 K2 ["isStart"]
       17 JUMPIFNOT                        R12 ; [+2]
       18 GETTABLEKS                       R4 R11 K1 ["id"]
       20 GETTABLEKS                       R12 R11 K3 ["isAny"]
       22 JUMPIFNOT                        R12 ; [+2]
       23 GETTABLEKS                       R5 R11 K1 ["id"]
       25 DUPTABLE                         R14 K6 [{"id", "name", "position", "isStart", "isAny"}]
       26 GETTABLEKS                       R15 R11 K1 ["id"]
       28 SETTABLEKS                       R15 R14 K1 ["id"]
       30 GETTABLEKS                       R15 R11 K4 ["name"]
       32 SETTABLEKS                       R15 R14 K4 ["name"]
       34 GETTABLEKS                       R15 R11 K5 ["position"]
       36 SETTABLEKS                       R15 R14 K5 ["position"]
       38 GETTABLEKS                       R15 R11 K2 ["isStart"]
       40 SETTABLEKS                       R15 R14 K2 ["isStart"]
       42 GETTABLEKS                       R15 R11 K3 ["isAny"]
       44 SETTABLEKS                       R15 R14 K3 ["isAny"]
       46 FASTCALL2                        TABLE_INSERT R3 R14 ; [+4]
       48 MOVE                             R13 R3
       49 GETIMPORT                        R12 K9 [table.insert]
       51 CALL                             R12 2 0
       52 FORGLOOP                         R7 2 ; [-43]
       54 NEWTABLE                         R7 0 0
       56 MOVE                             R8 R1
       57 LOADNIL                          R9
       58 LOADNIL                          R10
       59 FORGPREP                         R8
       60 GETTABLEKS                       R15 R12 K10 ["to"]
       62 FASTCALL1                        TYPEOF R15 ; [+2]
       63 GETIMPORT                        R14 K12 [typeof]
       65 CALL                             R14 1 1
       66 JUMPIFNOTEQKS                    R14 K13 ["Instance"] ; [+5]
       68 GETTABLEKS                       R14 R12 K10 ["to"]
       70 GETTABLE                         R13 R6 R14
       71 JUMP                             ; [+1]
       72 LOADNIL                          R13
       73 JUMPIFEQKNIL                     R13 ; [+55]
       75 GETTABLEKS                       R16 R12 K14 ["from"]
       77 FASTCALL1                        TYPEOF R16 ; [+2]
       78 GETIMPORT                        R15 K12 [typeof]
       80 CALL                             R15 1 1
       81 JUMPIFNOTEQKS                    R15 K13 ["Instance"] ; [+5]
       83 GETTABLEKS                       R15 R12 K14 ["from"]
       85 GETTABLE                         R14 R6 R15
       86 JUMP                             ; [+1]
       87 MOVE                             R14 R5
       88 JUMPIFEQKNIL                     R14 ; [+40]
       90 DUPTABLE                         R17 K23 [{"id", "fromStateId", "toStateId", "Length", "Curve", "Priority", "TriggerExpression", "WaitFor", "When"}]
       91 GETTABLEKS                       R18 R12 K1 ["id"]
       93 SETTABLEKS                       R18 R17 K1 ["id"]
       95 SETTABLEKS                       R14 R17 K15 ["fromStateId"]
       97 SETTABLEKS                       R13 R17 K16 ["toStateId"]
       99 GETTABLEKS                       R18 R12 K17 ["Length"]
      101 SETTABLEKS                       R18 R17 K17 ["Length"]
      103 GETTABLEKS                       R18 R12 K18 ["Curve"]
      105 SETTABLEKS                       R18 R17 K18 ["Curve"]
      107 GETTABLEKS                       R18 R12 K19 ["Priority"]
      109 SETTABLEKS                       R18 R17 K19 ["Priority"]
      111 GETTABLEKS                       R18 R12 K20 ["TriggerExpression"]
      113 SETTABLEKS                       R18 R17 K20 ["TriggerExpression"]
      115 GETTABLEKS                       R18 R12 K21 ["WaitFor"]
      117 SETTABLEKS                       R18 R17 K21 ["WaitFor"]
      119 GETTABLEKS                       R18 R12 K22 ["When"]
      121 SETTABLEKS                       R18 R17 K22 ["When"]
      123 FASTCALL2                        TABLE_INSERT R7 R17 ; [+4]
      125 MOVE                             R16 R7
      126 GETIMPORT                        R15 K9 [table.insert]
      128 CALL                             R15 2 0
      129 FORGLOOP                         R8 2 ; [-70]
      131 JUMPIFEQKNIL                     R4 ; [+29]
      133 JUMPIFEQKNIL                     R2 ; [+27]
      135 GETTABLE                         R8 R6 R2
      136 JUMPIFEQKNIL                     R8 ; [+24]
      138 DUPTABLE                         R11 K28 [{["id"] = "entry", ["fromStateId"], ["toStateId"], ["Length"] = 0.2, ["Curve"], ["Priority"] = 1, ["TriggerExpression"] = "", ["WaitFor"], ["When"]}]
      139 SETTABLEKS                       R4 R11 K15 ["fromStateId"]
      141 SETTABLEKS                       R8 R11 K16 ["toStateId"]
      143 GETIMPORT                        R12 K32 [Enum.PoseEasingStyle.Linear]
      145 SETTABLEKS                       R12 R11 K18 ["Curve"]
      147 GETIMPORT                        R12 K35 [Enum.AnimationNodeWaitFor.Trigger]
      149 SETTABLEKS                       R12 R11 K21 ["WaitFor"]
      151 GETIMPORT                        R12 K38 [Enum.AnimationNodeTransitionWhen.Finished]
      153 SETTABLEKS                       R12 R11 K22 ["When"]
      155 FASTCALL2                        TABLE_INSERT R7 R11 ; [+4]
      157 MOVE                             R10 R7
      158 GETIMPORT                        R9 K9 [table.insert]
      160 CALL                             R9 2 0
      161 DUPTABLE                         R8 K45 [{["version"], ["startStateId"], ["currentState"] = , ["states"], ["transitions"]}]
      162 GETUPVAL                         R9 0
      163 GETTABLEKS                       R9 R9 K46 ["CURRENT_VERSION"]
      165 SETTABLEKS                       R9 R8 K39 ["version"]
      167 SETTABLEKS                       R4 R8 K40 ["startStateId"]
      169 SETTABLEKS                       R3 R8 K43 ["states"]
      171 SETTABLEKS                       R7 R8 K44 ["transitions"]
      173 RETURN                           R8 1

PROTO_18:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_19:
        0 JUMPIFNOTEQKNIL                  R0 ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["of"]
        5 LOADNIL                          R2
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["attributes"]
       11 GETTABLEKS                       R1 R1 K2 ["observeVector2"]
       13 MOVE                             R2 R0
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K3 ["NODE_ATTRIBUTES"]
       17 GETTABLEKS                       R3 R3 K4 ["Position"]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 DUPTABLE                         R3 K6 [{"instance", "id", "name", "position", "isStart", "isAny"}]
        7 GETUPVAL                         R4 2
        8 SETTABLEKS                       R4 R3 K0 ["instance"]
       10 GETUPVAL                         R4 3
       11 SETTABLEKS                       R4 R3 K1 ["id"]
       13 GETUPVAL                         R4 4
       14 MOVE                             R5 R0
       15 CALL                             R4 1 1
       16 SETTABLEKS                       R4 R3 K2 ["name"]
       18 JUMPIFNOT                        R2 ; [+10]
       19 DUPTABLE                         R4 K9 [{"x", "y"}]
       20 GETTABLEKS                       R5 R2 K10 ["X"]
       22 SETTABLEKS                       R5 R4 K7 ["x"]
       24 GETTABLEKS                       R5 R2 K11 ["Y"]
       26 SETTABLEKS                       R5 R4 K8 ["y"]
       28 JUMP                             ; [+1]
       29 DUPTABLE                         R4 K13 [{["x"] = 0, ["y"] = 0}]
       30 SETTABLEKS                       R4 R3 K3 ["position"]
       32 GETTABLEKS                       R5 R1 K14 ["RBX_IsStart"]
       34 JUMPIFEQKB                       R5 TRUE ; [+2]
       36 LOADB                            R4 0 +1
       37 LOADB                            R4 1
       38 SETTABLEKS                       R4 R3 K4 ["isStart"]
       40 GETTABLEKS                       R5 R1 K15 ["RBX_IsAny"]
       42 JUMPIFEQKB                       R5 TRUE ; [+2]
       44 LOADB                            R4 0 +1
       45 LOADB                            R4 1
       46 SETTABLEKS                       R4 R3 K5 ["isAny"]
       48 RETURN                           R3 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["instanceToId"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["properties"]
        8 GETTABLEKS                       R2 R2 K2 ["observeString"]
       10 MOVE                             R3 R0
       11 LOADK                            R4 K3 ["Name"]
       12 CALL                             R2 2 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K4 ["observeAttributes"]
       16 MOVE                             R4 R0
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K5 ["switchMap"]
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K6 ["observeFirstNamedChild"]
       24 MOVE                             R6 R0
       25 DUPCLOSURE                       R7 K7 [PROTO_18]
       26 GETUPVAL                         R8 3
       27 GETTABLEKS                       R8 R8 K8 ["NODE_CONFIGURATION_NAME"]
       29 CALL                             R5 3 1
       30 DUPCLOSURE                       R6 K9 [PROTO_19]
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          UPVAL U3
       34 CALL                             R4 2 1
       35 GETUPVAL                         R5 4
       36 GETTABLEKS                       R5 R5 K10 ["createComputed"]
       38 NEWCLOSURE                       R6 P2
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 CALL                             R5 1 -1
       45 RETURN                           R5 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K9 [{"id", "from", "to", "Length", "Curve", "Priority", "TriggerExpression", "WaitFor", "When"}]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K0 ["id"]
        7 GETUPVAL                         R3 2
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 SETTABLEKS                       R3 R2 K1 ["from"]
       12 GETUPVAL                         R3 3
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 SETTABLEKS                       R3 R2 K2 ["to"]
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R3 R3 K10 ["coerceNumber"]
       20 GETTABLEKS                       R4 R1 K11 ["Duration"]
       22 LOADK                            R5 K12 [0.2]
       23 CALL                             R3 2 1
       24 SETTABLEKS                       R3 R2 K3 ["Length"]
       26 GETUPVAL                         R3 4
       27 GETTABLEKS                       R3 R3 K13 ["coerceCurve"]
       29 GETTABLEKS                       R4 R1 K4 ["Curve"]
       31 CALL                             R3 1 1
       32 SETTABLEKS                       R3 R2 K4 ["Curve"]
       34 GETUPVAL                         R3 5
       35 MOVE                             R4 R0
       36 CALL                             R3 1 1
       37 SETTABLEKS                       R3 R2 K5 ["Priority"]
       39 GETUPVAL                         R3 4
       40 GETTABLEKS                       R3 R3 K14 ["coerceString"]
       42 GETTABLEKS                       R4 R1 K15 ["Expression"]
       44 LOADK                            R5 K16 [""]
       45 CALL                             R3 2 1
       46 SETTABLEKS                       R3 R2 K6 ["TriggerExpression"]
       48 GETUPVAL                         R3 6
       49 GETTABLEKS                       R3 R3 K17 ["enum"]
       51 GETTABLEKS                       R4 R1 K7 ["WaitFor"]
       53 GETIMPORT                        R5 K21 [Enum.AnimationNodeWaitFor.Trigger]
       55 CALL                             R3 2 1
       56 SETTABLEKS                       R3 R2 K7 ["WaitFor"]
       58 GETUPVAL                         R3 6
       59 GETTABLEKS                       R3 R3 K17 ["enum"]
       61 GETTABLEKS                       R4 R1 K8 ["When"]
       63 GETIMPORT                        R5 K24 [Enum.AnimationNodeTransitionWhen.Finished]
       65 CALL                             R3 2 1
       66 SETTABLEKS                       R3 R2 K8 ["When"]
       68 RETURN                           R2 1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["instanceToId"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["properties"]
        8 GETTABLEKS                       R2 R2 K2 ["observeInstance"]
       10 MOVE                             R3 R0
       11 LOADK                            R4 K3 ["From"]
       12 CALL                             R2 2 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K1 ["properties"]
       16 GETTABLEKS                       R3 R3 K2 ["observeInstance"]
       18 MOVE                             R4 R0
       19 LOADK                            R5 K4 ["To"]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K1 ["properties"]
       24 GETTABLEKS                       R4 R4 K5 ["observeNumber"]
       26 MOVE                             R5 R0
       27 LOADK                            R6 K6 ["Priority"]
       28 CALL                             R4 2 1
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K7 ["observeAttributes"]
       32 MOVE                             R6 R0
       33 CALL                             R5 1 1
       34 GETUPVAL                         R6 3
       35 GETTABLEKS                       R6 R6 K8 ["createComputed"]
       37 NEWCLOSURE                       R7 P0
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          VAL R4
       44 CAPTURE                          UPVAL U5
       45 CALL                             R6 1 -1
       46 RETURN                           R6 -1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assembleStateMachineData"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 3
       10 MOVE                             R5 R0
       11 CALL                             R4 1 -1
       12 CALL                             R1 -1 -1
       13 RETURN                           R1 -1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["forEach"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["observeChildrenWhichIsA"]
        6 MOVE                             R4 R0
        7 LOADK                            R5 K2 ["ObjectValue"]
        8 CALL                             R3 2 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["forEach"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K1 ["observeChildrenWhichIsA"]
       22 MOVE                             R5 R0
       23 LOADK                            R6 K3 ["StateMachineTransitionDefinition"]
       24 CALL                             R4 2 1
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          VAL R1
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U5
       32 CALL                             R3 2 1
       33 GETUPVAL                         R5 6
       34 CALL                             R5 0 1
       35 JUMPIFNOT                        R5 ; [+9]
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K4 ["attributes"]
       39 GETTABLEKS                       R4 R4 K5 ["observeInstance"]
       41 MOVE                             R5 R0
       42 LOADK                            R6 K6 ["EntryState"]
       43 CALL                             R4 2 1
       44 JUMP                             ; [+5]
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K7 ["of"]
       48 LOADNIL                          R5
       49 CALL                             R4 1 1
       50 GETUPVAL                         R5 3
       51 GETTABLEKS                       R5 R5 K8 ["createComputed"]
       53 NEWCLOSURE                       R6 P2
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R4
       58 CALL                             R5 1 -1
       59 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["Constants"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Util"]
       24 GETTABLEKS                       R4 R4 K12 ["ExpectType"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Util"]
       31 GETTABLEKS                       R5 R5 K13 ["Instances"]
       33 GETTABLEKS                       R5 R5 K14 ["InstanceRegistry"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K15 ["Contexts"]
       40 GETTABLEKS                       R6 R6 K16 ["NativeGraphContext"]
       42 GETTABLEKS                       R6 R6 K17 ["NativeGraphUtils"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R1 K10 ["Util"]
       49 GETTABLEKS                       R7 R7 K18 ["Signals"]
       51 GETTABLEKS                       R7 R7 K19 ["Experimental"]
       53 GETTABLEKS                       R7 R7 K20 ["SignalExperimentalUtils"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K9 [require]
       58 GETTABLEKS                       R8 R1 K21 ["Parent"]
       60 GETTABLEKS                       R8 R8 K18 ["Signals"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K9 [require]
       65 GETTABLEKS                       R9 R1 K10 ["Util"]
       67 GETTABLEKS                       R9 R9 K18 ["Signals"]
       69 GETTABLEKS                       R9 R9 K22 ["SignalsInstanceUtils"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K9 [require]
       74 GETTABLEKS                       R10 R1 K21 ["Parent"]
       76 GETTABLEKS                       R10 R10 K23 ["StateMachineGraphing"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K9 [require]
       81 GETTABLEKS                       R11 R1 K24 ["Components"]
       83 GETTABLEKS                       R11 R11 K25 ["NodeView"]
       85 GETTABLEKS                       R11 R11 K26 ["StateMachine"]
       87 GETTABLEKS                       R11 R11 K27 ["StateMachineTransitionNaming"]
       89 CALL                             R10 1 1
       90 GETIMPORT                        R11 K9 [require]
       92 GETTABLEKS                       R12 R1 K24 ["Components"]
       94 GETTABLEKS                       R12 R12 K25 ["NodeView"]
       96 GETTABLEKS                       R12 R12 K26 ["StateMachine"]
       98 GETTABLEKS                       R12 R12 K28 ["StateMachineUtils"]
      100 CALL                             R11 1 1
      101 GETIMPORT                        R12 K9 [require]
      103 GETTABLEKS                       R13 R1 K10 ["Util"]
      105 GETTABLEKS                       R13 R13 K18 ["Signals"]
      107 GETTABLEKS                       R13 R13 K29 ["TypedInstanceSignals"]
      109 CALL                             R12 1 1
      110 GETIMPORT                        R13 K9 [require]
      112 GETTABLEKS                       R14 R1 K30 ["Flags"]
      114 GETTABLEKS                       R14 R14 K31 ["getFFlagInstanceAttributes"]
      116 CALL                             R13 1 1
      117 GETTABLEKS                       R14 R9 K32 ["Data"]
      119 NEWTABLE                         R15 16 0
      121 DUPCLOSURE                       R16 K33 [PROTO_0]
      122 CAPTURE                          VAL R11
      123 DUPCLOSURE                       R17 K34 [PROTO_1]
      124 CAPTURE                          VAL R10
      125 DUPCLOSURE                       R18 K35 [PROTO_2]
      126 DUPCLOSURE                       R19 K36 [PROTO_3]
      127 DUPCLOSURE                       R20 K37 [PROTO_4]
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R11
      130 DUPCLOSURE                       R21 K38 [PROTO_5]
      131 CAPTURE                          VAL R17
      132 CAPTURE                          VAL R0
      133 DUPCLOSURE                       R22 K39 [PROTO_6]
      134 CAPTURE                          VAL R13
      135 CAPTURE                          VAL R21
      136 DUPCLOSURE                       R23 K40 [PROTO_7]
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R20
      139 SETTABLEKS                       R23 R15 K41 ["createState"]
      141 DUPCLOSURE                       R23 K42 [PROTO_8]
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R20
      144 SETTABLEKS                       R23 R15 K43 ["seedPoseDefaults"]
      146 DUPCLOSURE                       R23 K44 [PROTO_9]
      147 CAPTURE                          VAL R11
      148 SETTABLEKS                       R23 R15 K45 ["moveState"]
      150 DUPCLOSURE                       R23 K46 [PROTO_10]
      151 DUPCLOSURE                       R24 K47 [PROTO_11]
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R5
      154 CAPTURE                          VAL R10
      155 SETTABLEKS                       R24 R15 K48 ["renameState"]
      157 DUPCLOSURE                       R24 K49 [PROTO_12]
      158 CAPTURE                          VAL R11
      159 CAPTURE                          VAL R23
      160 CAPTURE                          VAL R13
      161 CAPTURE                          VAL R12
      162 SETTABLEKS                       R24 R15 K50 ["deleteState"]
      164 DUPCLOSURE                       R24 K51 [PROTO_13]
      165 CAPTURE                          VAL R11
      166 CAPTURE                          VAL R22
      167 SETTABLEKS                       R24 R15 K52 ["createTransition"]
      169 DUPCLOSURE                       R24 K53 [PROTO_14]
      170 CAPTURE                          VAL R11
      171 CAPTURE                          VAL R20
      172 CAPTURE                          VAL R22
      173 SETTABLEKS                       R24 R15 K54 ["createStateAndTransition"]
      175 DUPCLOSURE                       R24 K55 [PROTO_15]
      176 CAPTURE                          VAL R11
      177 CAPTURE                          VAL R19
      178 SETTABLEKS                       R24 R15 K56 ["deleteTransition"]
      180 DUPTABLE                         R24 K64 [{["Length"] = "Duration", ["Curve"] = "Curve", ["TriggerExpression"] = "Expression", ["WaitFor"] = "WaitFor", ["When"] = "When"}]
      181 DUPCLOSURE                       R25 K65 [PROTO_16]
      182 CAPTURE                          VAL R11
      183 CAPTURE                          VAL R19
      184 CAPTURE                          VAL R24
      185 SETTABLEKS                       R25 R15 K66 ["setTransitionField"]
      187 DUPCLOSURE                       R25 K67 [PROTO_17]
      188 CAPTURE                          VAL R14
      189 SETTABLEKS                       R25 R15 K68 ["assembleStateMachineData"]
      191 DUPCLOSURE                       R25 K69 [PROTO_25]
      192 CAPTURE                          VAL R8
      193 CAPTURE                          VAL R12
      194 CAPTURE                          VAL R2
      195 CAPTURE                          VAL R6
      196 CAPTURE                          VAL R11
      197 CAPTURE                          VAL R3
      198 CAPTURE                          VAL R13
      199 CAPTURE                          VAL R15
      200 SETTABLEKS                       R25 R15 K70 ["observeFromDefinition"]
      202 RETURN                           R15 1
