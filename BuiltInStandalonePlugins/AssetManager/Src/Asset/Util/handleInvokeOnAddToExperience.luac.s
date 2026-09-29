PROTO_0:
        0 LOADK                            R3 K0 ["ShowToast"]
        1 DUPTABLE                         R4 K5 [{["Key"] = "Toast", ["SubKey"] = "AddToExperienceFailed"}]
        2 NAMECALL                         R1 R0 K6 ["Invoke"]
        4 CALL                             R1 3 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R4 R1 K0 ["assetIds"]
        2 LENGTH                           R3 R4
        3 JUMPIFNOTEQKN                    R3 K1 [0] ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R1 K0 ["assetIds"]
        8 NEWTABLE                         R4 0 0
       10 MOVE                             R5 R3
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 FORGPREP                         R5
       14 MOVE                             R11 R4
       15 GETUPVAL                         R12 0
       16 GETTABLEKS                       R14 R1 K2 ["assetTypes"]
       18 GETTABLE                         R13 R14 R8
       19 CALL                             R12 1 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R10 K5 [table.insert]
       23 CALL                             R10 -1 0
       24 FORGLOOP                         R5 2 ; [-11]
       26 LOADK                            R7 K6 ["AssetAccessController"]
       27 NAMECALL                         R5 R0 K7 ["GetPluginComponent"]
       29 CALL                             R5 2 1
       30 JUMPIF                           R5 ; [+6]
       31 LOADK                            R8 K8 ["ShowToast"]
       32 DUPTABLE                         R9 K13 [{["Key"] = "Toast", ["SubKey"] = "AddToExperienceFailed"}]
       33 NAMECALL                         R6 R0 K14 ["Invoke"]
       35 CALL                             R6 3 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R6 1
       38 CALL                             R6 0 1
       39 JUMPIFNOT                        R6 ; [+6]
       40 GETIMPORT                        R6 K16 [game]
       42 GETTABLEKS                       R6 R6 K17 ["GameId"]
       44 JUMPIFNOTEQKN                    R6 K1 [0] ; [+18]
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R6 R6 K18 ["Utils"]
       49 GETTABLEKS                       R6 R6 K19 ["grantUniversePermissions"]
       51 MOVE                             R7 R3
       52 MOVE                             R8 R4
       53 MOVE                             R9 R5
       54 CALL                             R6 3 1
       55 LOADK                            R9 K20 ["OnAddToExperienceFinished"]
       56 MOVE                             R10 R1
       57 MOVE                             R11 R6
       58 MOVE                             R12 R2
       59 NAMECALL                         R7 R0 K14 ["Invoke"]
       61 CALL                             R7 5 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R6 3
       64 MOVE                             R7 R5
       65 MOVE                             R8 R3
       66 GETIMPORT                        R9 K16 [game]
       68 GETTABLEKS                       R9 R9 K21 ["CreatorType"]
       70 GETIMPORT                        R10 K16 [game]
       72 GETTABLEKS                       R10 R10 K22 ["CreatorId"]
       74 GETUPVAL                         R11 4
       75 MOVE                             R12 R3
       76 GETTABLEKS                       R13 R1 K23 ["creators"]
       78 CALL                             R11 2 -1
       79 CALL                             R6 -1 1
       80 MOVE                             R7 R3
       81 MOVE                             R8 R4
       82 GETIMPORT                        R9 K25 [next]
       84 MOVE                             R10 R6
       85 CALL                             R9 1 1
       86 JUMPIFEQKNIL                     R9 ; [+27]
       88 NEWTABLE                         R7 0 0
       90 NEWTABLE                         R8 0 0
       92 MOVE                             R9 R3
       93 LOADNIL                          R10
       94 LOADNIL                          R11
       95 FORGPREP                         R9
       96 GETTABLE                         R14 R6 R13
       97 JUMPIF                           R14 ; [+14]
       98 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
      100 MOVE                             R15 R7
      101 MOVE                             R16 R13
      102 GETIMPORT                        R14 K5 [table.insert]
      104 CALL                             R14 2 0
      105 GETTABLE                         R16 R4 R12
      106 FASTCALL2                        TABLE_INSERT R8 R16 ; [+4]
      108 MOVE                             R15 R8
      109 GETIMPORT                        R14 K5 [table.insert]
      111 CALL                             R14 2 0
      112 FORGLOOP                         R9 2 ; [-17]
      114 LENGTH                           R10 R7
      115 LOADN                            R11 0
      116 JUMPIFNOTLT                      R11 R10 ; [+11]
      118 GETUPVAL                         R9 2
      119 GETTABLEKS                       R9 R9 K18 ["Utils"]
      121 GETTABLEKS                       R9 R9 K19 ["grantUniversePermissions"]
      123 MOVE                             R10 R7
      124 MOVE                             R11 R8
      125 MOVE                             R12 R5
      126 CALL                             R9 3 1
      127 JUMP                             ; [+2]
      128 NEWTABLE                         R9 0 0
      130 MOVE                             R10 R6
      131 LOADNIL                          R11
      132 LOADNIL                          R12
      133 FORGPREP                         R10
      134 LOADB                            R15 1
      135 SETTABLE                         R15 R9 R13
      136 FORGLOOP                         R10 1 ; [-3]
      138 GETUPVAL                         R10 5
      139 LOADK                            R11 K26 ["addToExperience: granted %* of %* asset(s) after the publish gate"]
      140 LENGTH                           R13 R7
      141 LENGTH                           R14 R3
      142 NAMECALL                         R11 R11 K27 ["format"]
      144 CALL                             R11 3 1
      145 CALL                             R10 1 0
      146 LOADK                            R12 K20 ["OnAddToExperienceFinished"]
      147 MOVE                             R13 R1
      148 MOVE                             R14 R9
      149 MOVE                             R15 R2
      150 NAMECALL                         R10 R0 K14 ["Invoke"]
      152 CALL                             R10 5 0
      153 RETURN                           R0 0

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
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["AssetInsertFramework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["convertToEngineAssetTypeEnum"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Asset"]
       36 GETTABLEKS                       R5 R5 K10 ["Util"]
       38 GETTABLEKS                       R5 R5 K13 ["buildKnownAssetOwners"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K12 ["Asset"]
       47 GETTABLEKS                       R6 R6 K10 ["Util"]
       49 GETTABLEKS                       R6 R6 K14 ["publishDraftAssets"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K6 ["Src"]
       56 GETTABLEKS                       R7 R7 K10 ["Util"]
       58 GETTABLEKS                       R7 R7 K15 ["logIfDebug"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K6 ["Src"]
       65 GETTABLEKS                       R8 R8 K16 ["Flags"]
       67 GETTABLEKS                       R8 R8 K17 ["getFFlagAmrPublishDraftAssetsOnInsert"]
       69 CALL                             R7 1 1
       70 DUPCLOSURE                       R8 K18 [PROTO_0]
       71 DUPCLOSURE                       R9 K19 [PROTO_1]
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R6
       78 RETURN                           R9 1
