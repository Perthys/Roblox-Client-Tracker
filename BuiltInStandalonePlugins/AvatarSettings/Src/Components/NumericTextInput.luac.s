PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Text"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 MOVE                             R2 R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+7]
        7 JUMPIFEQKNIL                     R2 ; [+6]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K0 ["OnFocusLost"]
       12 MOVE                             R4 R0
       13 CALL                             R3 1 0
       14 GETUPVAL                         R3 2
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K1 ["Text"]
       18 CALL                             R3 1 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETTABLEKS                       R2 R0 K1 ["Text"]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["useEffect"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R5 0 1
       14 GETTABLEKS                       R6 R0 K1 ["Text"]
       16 SETLIST                          R5 R6 1 [1]
       18 CALL                             R3 2 0
       19 GETIMPORT                        R3 K5 [table.clone]
       21 MOVE                             R4 R0
       22 CALL                             R3 1 1
       23 SETTABLEKS                       R1 R3 K1 ["Text"]
       25 GETIMPORT                        R4 K9 [Enum.AutomaticSize.Y]
       27 SETTABLEKS                       R4 R3 K7 ["AutomaticSize"]
       29 NEWCLOSURE                       R4 P1
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R4 R3 K10 ["OnTextChanged"]
       33 NEWCLOSURE                       R4 P2
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R4 R3 K11 ["OnFocusLost"]
       39 GETUPVAL                         R4 2
       40 GETUPVAL                         R5 3
       41 MOVE                             R6 R3
       42 CALL                             R4 2 -1
       43 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 MOVE                             R3 R0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R2 3
       10 MOVE                             R3 R0
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Flags"]
       27 GETTABLEKS                       R4 R4 K11 ["getFFlagAvatarSettingsRevertInvalidInput"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Util"]
       36 GETTABLEKS                       R5 R5 K13 ["isValidNumberInput"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R1 K14 ["UI"]
       41 GETTABLEKS                       R5 R5 K15 ["TextInput"]
       43 GETTABLEKS                       R6 R2 K16 ["createElement"]
       45 DUPCLOSURE                       R7 K17 [PROTO_3]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R5
       50 DUPCLOSURE                       R8 K18 [PROTO_4]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R5
       55 RETURN                           R8 1
