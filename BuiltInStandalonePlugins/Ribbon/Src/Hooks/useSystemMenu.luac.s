PROTO_0:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 NAMECALL                         R2 R2 K0 ["GetUserId"]
        4 CALL                             R2 1 1
        5 LOADN                            R3 0
        6 JUMPIFNOTLT                      R3 R2 ; [+5]
        8 GETUPVAL                         R1 0
        9 NAMECALL                         R1 R1 K1 ["HasInternalPermission"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 2
       14 MOVE                             R4 R0
       15 MOVE                             R5 R1
       16 CALL                             R3 2 -1
       17 CALL                             R2 -1 0
       18 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 LOADB                            R1 0
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R2 R2 K0 ["GetUserId"]
        6 CALL                             R2 1 1
        7 LOADN                            R3 0
        8 JUMPIFNOTLT                      R3 R2 ; [+5]
       10 GETUPVAL                         R1 1
       11 NAMECALL                         R1 R1 K1 ["HasInternalPermission"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 2
       15 GETUPVAL                         R3 3
       16 MOVE                             R4 R0
       17 MOVE                             R5 R1
       18 CALL                             R3 2 -1
       19 CALL                             R2 -1 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetSystemMenuAsync"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+20]
        6 GETUPVAL                         R1 2
        7 JUMPIF                           R1 ; [+18]
        8 LOADB                            R1 0
        9 GETUPVAL                         R2 3
       10 NAMECALL                         R2 R2 K1 ["GetUserId"]
       12 CALL                             R2 1 1
       13 LOADN                            R3 0
       14 JUMPIFNOTLT                      R3 R2 ; [+5]
       16 GETUPVAL                         R1 3
       17 NAMECALL                         R1 R1 K2 ["HasInternalPermission"]
       19 CALL                             R1 1 1
       20 GETUPVAL                         R2 4
       21 GETUPVAL                         R3 5
       22 MOVE                             R4 R0
       23 MOVE                             R5 R1
       24 CALL                             R3 2 -1
       25 CALL                             R2 -1 0
       26 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SystemMenuController"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 LOADB                            R1 1
        6 LOADB                            R2 0
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 GETTABLEKS                       R4 R0 K2 ["OnSystemMenuChanged"]
       13 NEWCLOSURE                       R6 P1
       14 CAPTURE                          REF R2
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 NAMECALL                         R4 R4 K3 ["Connect"]
       20 CALL                             R4 2 1
       21 GETIMPORT                        R5 K6 [task.spawn]
       23 NEWCLOSURE                       R6 P2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          REF R1
       26 CAPTURE                          REF R2
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U3
       30 CALL                             R5 1 0
       31 NEWCLOSURE                       R5 P3
       32 CAPTURE                          REF R1
       33 CAPTURE                          VAL R4
       34 CLOSEUPVALS                      R1
       35 RETURN                           R5 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["useEffect"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R2
       13 CAPTURE                          UPVAL U2
       14 NEWTABLE                         R5 0 1
       16 MOVE                             R6 R0
       17 SETLIST                          R5 R6 1 [1]
       19 CALL                             R3 2 0
       20 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["StudioService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["Util"]
       26 GETTABLEKS                       R4 R4 K14 ["filterSystemMenuDefinitions"]
       28 CALL                             R3 1 1
       29 DUPCLOSURE                       R4 K15 [PROTO_5]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R3
       33 RETURN                           R4 1
