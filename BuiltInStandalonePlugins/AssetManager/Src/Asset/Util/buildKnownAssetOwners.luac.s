PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R2 1
        5 MOVE                             R3 R0
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETTABLE                         R8 R1 R6
       10 JUMPIFEQKNIL                     R8 ; [+11]
       12 DUPTABLE                         R9 K2 [{"CreatorType", "CreatorId"}]
       13 GETTABLEKS                       R10 R8 K3 ["Type"]
       15 SETTABLEKS                       R10 R9 K0 ["CreatorType"]
       17 GETTABLEKS                       R10 R8 K4 ["Id"]
       19 SETTABLEKS                       R10 R9 K1 ["CreatorId"]
       21 SETTABLE                         R9 R2 R7
       22 FORGLOOP                         R3 2 ; [-14]
       24 RETURN                           R2 1

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
       18 GETTABLEKS                       R3 R3 K8 ["Asset"]
       20 GETTABLEKS                       R3 R3 K9 ["Util"]
       22 GETTABLEKS                       R3 R3 K10 ["publishDraftAssets"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K11 [PROTO_0]
       26 RETURN                           R3 1
