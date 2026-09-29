PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioAssetService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 1
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K0 ["UploadAndInsertAssetForJobAsync"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1
        8 GETIMPORT                        R1 K2 [error]
       10 LOADK                            R2 K3 ["Calling uploadAndInsertAssetForJobAsync on unmocked StudioAssetService"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 JUMPIFNOT                        R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETVARARGS                       R2 -1
        5 NAMECALL                         R0 R0 K0 ["ShowSaveToRoblox"]
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0
        9 GETIMPORT                        R0 K2 [error]
       11 LOADK                            R1 K3 ["Calling showSaveToRoblox on unmocked StudioAssetService"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [pcall]
       16 DUPCLOSURE                       R3 K10 [PROTO_0]
       17 CALL                             R2 1 2
       18 DUPTABLE                         R4 K14 [{"uploadAndInsertAssetForJobAsync", "showSaveToRoblox", "onUGCSubmitCompleted"}]
       19 DUPCLOSURE                       R5 K15 [PROTO_1]
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R3
       22 SETTABLEKS                       R5 R4 K11 ["uploadAndInsertAssetForJobAsync"]
       24 DUPCLOSURE                       R5 K16 [PROTO_2]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 SETTABLEKS                       R5 R4 K12 ["showSaveToRoblox"]
       29 JUMPIFNOT                        R2 ; [+3]
       30 GETTABLEKS                       R5 R3 K17 ["OnUGCSubmitCompleted"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R5
       34 SETTABLEKS                       R5 R4 K13 ["onUGCSubmitCompleted"]
       36 GETTABLEKS                       R5 R1 K18 ["createContext"]
       38 MOVE                             R6 R4
       39 CALL                             R5 1 1
       40 RETURN                           R5 1
