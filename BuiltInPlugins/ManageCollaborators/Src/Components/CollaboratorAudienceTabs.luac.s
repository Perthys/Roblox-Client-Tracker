PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnActivated"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["Tabs"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["id"]
        9 LOADK                            R9 K2 ["Tab_"]
       10 MOVE                             R10 R7
       11 CONCAT                           R8 R9 R10
       12 GETUPVAL                         R9 0
       13 GETTABLEKS                       R9 R9 K3 ["createElement"]
       15 GETUPVAL                         R10 1
       16 DUPTABLE                         R11 K9 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
       17 SETTABLEKS                       R5 R11 K4 ["LayoutOrder"]
       19 GETTABLEKS                       R12 R6 K5 ["text"]
       21 SETTABLEKS                       R12 R11 K5 ["text"]
       23 GETUPVAL                         R12 2
       24 GETTABLEKS                       R12 R12 K10 ["Small"]
       26 SETTABLEKS                       R12 R11 K6 ["size"]
       28 GETTABLEKS                       R13 R0 K11 ["ActiveTabId"]
       30 JUMPIFNOTEQ                      R7 R13 ; [+5]
       32 GETUPVAL                         R12 3
       33 GETTABLEKS                       R12 R12 K12 ["Standard"]
       35 JUMP                             ; [+3]
       36 GETUPVAL                         R12 3
       37 GETTABLEKS                       R12 R12 K13 ["Utility"]
       39 SETTABLEKS                       R12 R11 K7 ["variant"]
       41 NEWCLOSURE                       R12 P0
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R7
       44 SETTABLEKS                       R12 R11 K8 ["onActivated"]
       46 CALL                             R9 2 1
       47 SETTABLE                         R9 R1 R8
       48 FORGLOOP                         R2 2 ; [-42]
       50 GETUPVAL                         R2 0
       51 GETTABLEKS                       R2 R2 K3 ["createElement"]
       53 GETUPVAL                         R3 4
       54 DUPTABLE                         R4 K16 [{["LayoutOrder"], ["tag"] = "row auto-xy align-y-center gap-medium padding-x-large padding-y-small padding-top-xlarge"}]
       55 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       57 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       59 MOVE                             R5 R1
       60 CALL                             R2 3 -1
       61 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["Button"]
       25 GETTABLEKS                       R4 R2 K9 ["View"]
       27 GETTABLEKS                       R5 R2 K10 ["Enums"]
       29 GETTABLEKS                       R5 R5 K11 ["InputSize"]
       31 GETTABLEKS                       R6 R2 K10 ["Enums"]
       33 GETTABLEKS                       R6 R6 K12 ["ButtonVariant"]
       35 DUPCLOSURE                       R7 K13 [PROTO_1]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R4
       41 RETURN                           R7 1
