PROTO_0:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isExperimentEnabled"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+2]
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 1
        7 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isForcedOn"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+2]
        5 LOADB                            R0 1
        6 RETURN                           R0 1
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K1 ["isExperimentEnabled"]
       10 CALL                             R0 0 1
       11 JUMPIF                           R0 ; [+2]
       12 GETUPVAL                         R0 1
       13 CALL                             R0 0 1
       14 JUMPIF                           R0 ; [+2]
       15 LOADB                            R0 0
       16 RETURN                           R0 1
       17 GETUPVAL                         R1 2
       18 JUMPIFEQKB                       R1 TRUE ; [+2]
       20 LOADB                            R0 0 +1
       21 LOADB                            R0 1
       22 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+11]
        2 GETIMPORT                        R0 K1 [require]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K2 ["Guest"]
        7 GETTABLEKS                       R1 R1 K3 ["Environment"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R0 R0 K4 ["get"]
       12 CALL                             R0 0 1
       13 GETUPVAL                         R1 2
       14 CALL                             R1 0 1
       15 JUMPIFNOT                        R1 ; [+6]
       16 GETTABLEKS                       R1 R0 K5 ["hasInternalPermission"]
       18 CALL                             R1 0 1
       19 JUMPIFNOT                        R1 ; [+2]
       20 LOADB                            R1 1
       21 RETURN                           R1 1
       22 GETUPVAL                         R1 3
       23 GETTABLEKS                       R1 R1 K6 ["isExperimentEnabled"]
       25 CALL                             R1 0 1
       26 JUMPIF                           R1 ; [+2]
       27 LOADB                            R1 0
       28 RETURN                           R1 1
       29 GETTABLEKS                       R2 R0 K7 ["getExperimentFeatureEnabled"]
       31 GETUPVAL                         R3 3
       32 GETTABLEKS                       R3 R3 K8 ["featureName"]
       34 CALL                             R2 1 1
       35 JUMPIFEQKB                       R2 TRUE ; [+2]
       37 LOADB                            R1 0 +1
       38 LOADB                            R1 1
       39 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isForcedOn"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADB                            R1 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["isExperimentEnabled"]
       10 CALL                             R1 0 1
       11 JUMPIF                           R1 ; [+2]
       12 GETUPVAL                         R1 1
       13 CALL                             R1 0 1
       14 JUMPIF                           R1 ; [+2]
       15 LOADB                            R1 0
       16 RETURN                           R1 1
       17 GETUPVAL                         R1 2
       18 JUMPIFEQKNIL                     R1 ; [+3]
       20 GETUPVAL                         R1 2
       21 RETURN                           R1 1
       22 GETIMPORT                        R1 K3 [pcall]
       24 NEWCLOSURE                       R2 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          UPVAL U0
       29 CALL                             R1 1 2
       30 JUMPIF                           R1 ; [+4]
       31 LOADB                            R3 0
       32 SETUPVAL                         R3 2
       33 LOADB                            R3 0
       34 RETURN                           R3 1
       35 JUMPIFEQKB                       R2 TRUE ; [+2]
       37 LOADB                            R3 0 +1
       38 LOADB                            R3 1
       39 SETUPVAL                         R3 2
       40 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isForcedOn"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADB                            R1 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["isExperimentEnabled"]
       10 CALL                             R1 0 1
       11 JUMPIF                           R1 ; [+2]
       12 GETUPVAL                         R1 1
       13 CALL                             R1 0 1
       14 JUMPIF                           R1 ; [+2]
       15 LOADB                            R1 0
       16 RETURN                           R1 1
       17 GETUPVAL                         R1 2
       18 JUMPIFNOTEQKNIL                  R1 ; [+2]
       20 SETUPVAL                         R0 2
       21 GETUPVAL                         R1 2
       22 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isForcedOn"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADB                            R0 1
        6 RETURN                           R0 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["isExperimentEnabled"]
       10 CALL                             R1 0 1
       11 JUMPIF                           R1 ; [+2]
       12 GETUPVAL                         R1 1
       13 CALL                             R1 0 1
       14 JUMPIF                           R1 ; [+2]
       15 LOADB                            R0 0
       16 RETURN                           R0 1
       17 GETUPVAL                         R1 2
       18 JUMPIFEQKB                       R1 TRUE ; [+2]
       20 LOADB                            R0 0 +1
       21 LOADB                            R0 1
       22 RETURN                           R0 1

PROTO_7:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 NAMECALL                         R3 R0 K0 ["IsGuest"]
        6 CALL                             R3 1 1
        7 JUMPIFNOT                        R3 ; [+11]
        8 GETUPVAL                         R3 3
        9 MOVE                             R4 R1
       10 CALL                             R3 1 1
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K1 ["gateInvokeKey"]
       14 MOVE                             R7 R2
       15 NAMECALL                         R4 R0 K2 ["OnGuestInvokeAsync"]
       17 CALL                             R4 3 0
       18 RETURN                           R3 1
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K1 ["gateInvokeKey"]
       22 MOVE                             R6 R2
       23 NAMECALL                         R3 R0 K2 ["OnGuestInvokeAsync"]
       25 CALL                             R3 3 1
       26 GETIMPORT                        R4 K4 [pcall]
       28 MOVE                             R5 R3
       29 GETUPVAL                         R6 4
       30 GETTABLEKS                       R6 R6 K5 ["Types"]
       32 GETTABLEKS                       R6 R6 K6 ["Standalone"]
       34 CALL                             R4 2 2
       35 JUMPIFNOT                        R4 ; [+30]
       36 FASTCALL1                        TYPEOF R5 ; [+3]
       37 MOVE                             R7 R5
       38 GETIMPORT                        R6 K8 [typeof]
       40 CALL                             R6 1 1
       41 JUMPIFNOTEQKS                    R6 K9 ["boolean"] ; [+24]
       43 GETUPVAL                         R7 0
       44 GETTABLEKS                       R7 R7 K10 ["isForcedOn"]
       46 CALL                             R7 0 1
       47 JUMPIFNOT                        R7 ; [+2]
       48 LOADB                            R6 1
       49 RETURN                           R6 1
       50 GETUPVAL                         R7 0
       51 GETTABLEKS                       R7 R7 K11 ["isExperimentEnabled"]
       53 CALL                             R7 0 1
       54 JUMPIF                           R7 ; [+2]
       55 GETUPVAL                         R7 1
       56 CALL                             R7 0 1
       57 JUMPIF                           R7 ; [+2]
       58 LOADB                            R6 0
       59 RETURN                           R6 1
       60 GETUPVAL                         R7 2
       61 JUMPIFNOTEQKNIL                  R7 ; [+2]
       63 SETUPVAL                         R5 2
       64 GETUPVAL                         R6 2
       65 RETURN                           R6 1
       66 GETIMPORT                        R6 K13 [warn]
       68 LOADK                            R7 K14 ["[Assistant] Could not read the %* gate from the Standalone DM (%*); resolving locally."]
       69 GETUPVAL                         R9 0
       70 GETTABLEKS                       R9 R9 K15 ["label"]
       72 FASTCALL1                        TOSTRING R5 ; [+3]
       73 MOVE                             R11 R5
       74 GETIMPORT                        R10 K17 [tostring]
       76 CALL                             R10 1 1
       77 NAMECALL                         R7 R7 K18 ["format"]
       79 CALL                             R7 3 1
       80 CALL                             R6 1 0
       81 GETUPVAL                         R6 3
       82 MOVE                             R7 R1
       83 CALL                             R6 1 1
       84 RETURN                           R6 1

PROTO_8:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["isForcedOnForInternal"]
        2 JUMPIF                           R1 ; [+1]
        3 DUPCLOSURE                       R1 K1 [PROTO_0]
        4 LOADNIL                          R2
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 NEWCLOSURE                       R4 P2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          REF R2
       12 NEWCLOSURE                       R5 P3
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          REF R2
       16 CAPTURE                          UPVAL U0
       17 NEWCLOSURE                       R6 P4
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          REF R2
       21 NEWCLOSURE                       R7 P5
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          REF R2
       25 CAPTURE                          VAL R5
       26 CAPTURE                          UPVAL U1
       27 NEWCLOSURE                       R8 P6
       28 CAPTURE                          REF R2
       29 DUPTABLE                         R9 K8 [{"FEATURE_NAME", "get", "resolve", "resolveAcrossDataModels", "adopt", "reset"}]
       30 GETTABLEKS                       R10 R0 K9 ["featureName"]
       32 SETTABLEKS                       R10 R9 K2 ["FEATURE_NAME"]
       34 SETTABLEKS                       R4 R9 K3 ["get"]
       36 SETTABLEKS                       R5 R9 K4 ["resolve"]
       38 SETTABLEKS                       R7 R9 K5 ["resolveAcrossDataModels"]
       40 SETTABLEKS                       R6 R9 K6 ["adopt"]
       42 SETTABLEKS                       R8 R9 K7 ["reset"]
       44 CLOSEUPVALS                      R2
       45 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["DMNetworking"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["DataModelType"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_9]
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
