PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+6]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["current"]
        5 JUMPIFNOTEQKNIL                  R1 ; [+5]
        7 GETUPVAL                         R1 1
        8 LOADB                            R2 0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 2
       12 CALL                             R1 0 1
       13 JUMPIFNOT                        R1 ; [+15]
       14 GETUPVAL                         R1 3
       15 NAMECALL                         R1 R1 K1 ["getDetailsDrawerFrame"]
       17 CALL                             R1 1 1
       18 JUMPIFEQKNIL                     R1 ; [+10]
       20 GETUPVAL                         R2 4
       21 MOVE                             R3 R0
       22 MOVE                             R4 R1
       23 CALL                             R2 2 1
       24 JUMPIFNOT                        R2 ; [+4]
       25 GETUPVAL                         R2 1
       26 LOADB                            R3 0
       27 CALL                             R2 1 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R1 3
       30 NAMECALL                         R1 R1 K2 ["getContentFrame"]
       32 CALL                             R1 1 1
       33 LOADB                            R2 1
       34 JUMPIFEQKNIL                     R1 ; [+5]
       36 GETUPVAL                         R2 4
       37 MOVE                             R3 R0
       38 MOVE                             R4 R1
       39 CALL                             R2 2 1
       40 GETUPVAL                         R3 1
       41 GETUPVAL                         R5 5
       42 JUMPIF                           R5 ; [+2]
       43 MOVE                             R4 R2
       44 JUMPIFNOT                        R4 ; [+7]
       45 GETUPVAL                         R4 4
       46 MOVE                             R5 R0
       47 GETUPVAL                         R6 0
       48 GETTABLEKS                       R6 R6 K0 ["current"]
       50 GETUPVAL                         R7 6
       51 CALL                             R4 3 1
       52 CALL                             R3 1 0
       53 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["getMousePosition"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 2 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["OnMouseMove"]
        5 GETUPVAL                         R3 1
        6 NAMECALL                         R1 R1 K1 ["Connect"]
        8 CALL                             R1 2 1
        9 SETTABLEKS                       R1 R0 K2 ["MouseMoveConnection"]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K3 ["OnContentScrollChanged"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U0
       17 NAMECALL                         R1 R1 K1 ["Connect"]
       19 CALL                             R1 2 1
       20 SETTABLEKS                       R1 R0 K4 ["ScrollConnection"]
       22 NEWCLOSURE                       R1 P1
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R0
       25 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["use"]
        3 CALL                             R3 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K0 ["use"]
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K1 ["useState"]
       11 LOADB                            R6 0
       12 CALL                             R5 1 2
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       16 NEWCLOSURE                       R8 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R6
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R4
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 NEWTABLE                         R9 0 3
       26 GETTABLEKS                       R10 R0 K3 ["current"]
       28 MOVE                             R11 R1
       29 MOVE                             R12 R2
       30 SETLIST                          R9 R10 3 [1]
       32 CALL                             R7 2 1
       33 GETUPVAL                         R8 2
       34 GETTABLEKS                       R8 R8 K4 ["useEffect"]
       36 NEWCLOSURE                       R9 P1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R7
       39 CAPTURE                          VAL R4
       40 CAPTURE                          UPVAL U5
       41 NEWTABLE                         R10 0 1
       43 MOVE                             R11 R7
       44 SETLIST                          R10 R11 1 [1]
       46 CALL                             R8 2 0
       47 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["cleanConnections"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["isPositionInFrame"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K12 ["Controllers"]
       38 GETTABLEKS                       R5 R5 K13 ["Input"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K12 ["Controllers"]
       47 GETTABLEKS                       R6 R6 K14 ["LayoutController"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K15 ["Flags"]
       56 GETTABLEKS                       R7 R7 K16 ["getFFlagAmrAssetDetailView"]
       58 CALL                             R6 1 1
       59 DUPCLOSURE                       R7 K17 [PROTO_4]
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R2
       66 RETURN                           R7 1
