PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["deepFreeze"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Flags"]
       29 GETTABLEKS                       R4 R4 K11 ["getFFlagAmrEnableOmnisearch"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 0 0
       34 MOVE                             R5 R3
       35 CALL                             R5 0 1
       36 JUMPIFNOT                        R5 ; [+17]
       37 GETTABLEKS                       R5 R1 K12 ["IxpVariable"]
       39 GETTABLEKS                       R5 R5 K13 ["Omnisearch"]
       41 NEWTABLE                         R6 0 2
       43 GETTABLEKS                       R7 R1 K14 ["IxpValue"]
       45 GETTABLEKS                       R7 R7 K15 ["Control"]
       47 GETTABLEKS                       R8 R1 K14 ["IxpValue"]
       49 GETTABLEKS                       R8 R8 K16 ["Experiment"]
       51 SETLIST                          R6 R7 2 [1]
       53 SETTABLE                         R6 R4 R5
       54 MOVE                             R5 R2
       55 MOVE                             R6 R4
       56 CALL                             R5 1 0
       57 DUPCLOSURE                       R5 K17 [PROTO_0]
       58 CAPTURE                          VAL R4
       59 DUPTABLE                         R6 K19 [{"getIxpExperimentDefinitions"}]
       60 SETTABLEKS                       R5 R6 K18 ["getIxpExperimentDefinitions"]
       62 RETURN                           R6 1
