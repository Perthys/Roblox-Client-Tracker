PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETTABLEKS                       R1 R0 K0 ["Success"]
        5 JUMPIFNOT                        R1 ; [+9]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["eventEnd"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K2 ["BenchmarkingEvent"]
       12 GETTABLEKS                       R2 R2 K3 ["Insert"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+11]
        3 GETIMPORT                        R1 K1 [warn]
        5 LOADK                            R2 K2 ["Failed to insert assets: %*"]
        6 MOVE                             R4 R0
        7 JUMPIFNOT                        R4 ; [+2]
        8 GETTABLEKS                       R4 R0 K3 ["Errors"]
       10 NAMECALL                         R2 R2 K4 ["format"]
       12 CALL                             R2 2 1
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R4 R1 K0 ["Ids"]
        2 LENGTH                           R3 R4
        3 JUMPIFNOTEQKN                    R3 K1 [0] ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 CALL                             R3 0 1
        8 JUMPIFNOT                        R3 ; [+9]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["eventStart"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K3 ["BenchmarkingEvent"]
       15 GETTABLEKS                       R4 R4 K4 ["Insert"]
       17 CALL                             R3 1 0
       18 JUMPIFNOT                        R2 ; [+11]
       19 GETTABLEKS                       R4 R2 K5 ["UseAssetPosition"]
       21 JUMPIFNOT                        R4 ; [+8]
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R3 R3 K6 ["Types"]
       25 GETTABLEKS                       R3 R3 K7 ["InsertPositionMode"]
       27 GETTABLEKS                       R3 R3 K8 ["AssetPosition"]
       29 JUMP                             ; [+7]
       30 GETUPVAL                         R3 3
       31 GETTABLEKS                       R3 R3 K6 ["Types"]
       33 GETTABLEKS                       R3 R3 K7 ["InsertPositionMode"]
       35 GETTABLEKS                       R3 R3 K9 ["Camera"]
       37 GETTABLEKS                       R4 R1 K0 ["Ids"]
       39 GETTABLEKS                       R5 R1 K6 ["Types"]
       41 GETTABLEKS                       R6 R1 K10 ["Names"]
       43 GETTABLEKS                       R7 R1 K11 ["IsPackage"]
       45 GETUPVAL                         R8 4
       46 CALL                             R8 0 1
       47 JUMPIFNOT                        R8 ; [+62]
       48 LOADK                            R10 K12 ["GameId"]
       49 NAMECALL                         R8 R0 K13 ["GetItem"]
       51 CALL                             R8 2 1
       52 JUMPIF                           R8 ; [+4]
       53 GETIMPORT                        R8 K15 [game]
       55 GETTABLEKS                       R8 R8 K12 ["GameId"]
       57 JUMPIFEQKN                       R8 K1 [0] ; [+52]
       59 GETUPVAL                         R9 5
       60 LOADK                            R12 K16 ["AssetAccessController"]
       61 NAMECALL                         R10 R0 K17 ["GetPluginComponent"]
       63 CALL                             R10 2 1
       64 MOVE                             R11 R4
       65 GETIMPORT                        R12 K15 [game]
       67 GETTABLEKS                       R12 R12 K18 ["CreatorType"]
       69 GETIMPORT                        R13 K15 [game]
       71 GETTABLEKS                       R13 R13 K19 ["CreatorId"]
       73 GETUPVAL                         R14 6
       74 MOVE                             R15 R4
       75 GETTABLEKS                       R16 R1 K20 ["Creators"]
       77 CALL                             R14 2 -1
       78 CALL                             R9 -1 1
       79 GETIMPORT                        R10 K22 [next]
       81 MOVE                             R11 R9
       82 CALL                             R10 1 1
       83 JUMPIFEQKNIL                     R10 ; [+26]
       85 GETUPVAL                         R10 7
       86 MOVE                             R11 R9
       87 MOVE                             R12 R4
       88 MOVE                             R13 R5
       89 MOVE                             R14 R6
       90 MOVE                             R15 R7
       91 CALL                             R10 5 4
       92 MOVE                             R4 R10
       93 MOVE                             R5 R11
       94 MOVE                             R6 R12
       95 MOVE                             R7 R13
       96 GETUPVAL                         R10 8
       97 LOADK                            R11 K23 ["insert: %* of %* asset(s) survived the publish gate"]
       98 LENGTH                           R13 R4
       99 GETTABLEKS                       R15 R1 K0 ["Ids"]
      101 LENGTH                           R14 R15
      102 NAMECALL                         R11 R11 K24 ["format"]
      104 CALL                             R11 3 1
      105 CALL                             R10 1 0
      106 LENGTH                           R10 R4
      107 JUMPIFNOTEQKN                    R10 K1 [0] ; [+2]
      109 RETURN                           R0 0
      110 DUPTABLE                         R8 K30 [{["GameId"], ["PositionMode"], ["SkipCameraMove"] = False, ["StudioComponents"], ["UseAnimationInstance"]}]
      111 LOADK                            R11 K12 ["GameId"]
      112 NAMECALL                         R9 R0 K13 ["GetItem"]
      114 CALL                             R9 2 1
      115 JUMPIF                           R9 ; [+4]
      116 GETIMPORT                        R9 K15 [game]
      118 GETTABLEKS                       R9 R9 K12 ["GameId"]
      120 SETTABLEKS                       R9 R8 K12 ["GameId"]
      122 SETTABLEKS                       R3 R8 K25 ["PositionMode"]
      124 DUPTABLE                         R9 K31 [{"AssetAccessController"}]
      125 LOADK                            R12 K16 ["AssetAccessController"]
      126 NAMECALL                         R10 R0 K17 ["GetPluginComponent"]
      128 CALL                             R10 2 1
      129 SETTABLEKS                       R10 R9 K16 ["AssetAccessController"]
      131 SETTABLEKS                       R9 R8 K28 ["StudioComponents"]
      133 JUMPIFEQKNIL                     R2 ; [+4]
      135 GETTABLEKS                       R9 R2 K29 ["UseAnimationInstance"]
      137 JUMPIF                           R9 ; [+1]
      138 LOADB                            R9 0
      139 SETTABLEKS                       R9 R8 K29 ["UseAnimationInstance"]
      141 GETUPVAL                         R9 3
      142 GETTABLEKS                       R9 R9 K32 ["Utils"]
      144 GETTABLEKS                       R9 R9 K33 ["createInsertAssetsPromise"]
      146 MOVE                             R10 R4
      147 MOVE                             R11 R5
      148 MOVE                             R12 R6
      149 MOVE                             R13 R7
      150 MOVE                             R14 R8
      151 CALL                             R9 5 1
      152 DUPCLOSURE                       R11 K34 [PROTO_0]
      153 CAPTURE                          UPVAL U0
      154 CAPTURE                          UPVAL U1
      155 CAPTURE                          UPVAL U2
      156 NAMECALL                         R9 R9 K35 ["andThen"]
      158 CALL                             R9 2 1
      159 DUPCLOSURE                       R11 K36 [PROTO_1]
      160 CAPTURE                          UPVAL U9
      161 NAMECALL                         R9 R9 K37 ["catch"]
      163 CALL                             R9 2 0
      164 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetInsertFramework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Analytics"]
       27 GETTABLEKS                       R4 R4 K9 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Analytics"]
       36 GETTABLEKS                       R5 R5 K11 ["Benchmarking"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R6 K12 ["Asset"]
       45 GETTABLEKS                       R6 R6 K13 ["Util"]
       47 GETTABLEKS                       R6 R6 K14 ["buildKnownAssetOwners"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K12 ["Asset"]
       56 GETTABLEKS                       R7 R7 K13 ["Util"]
       58 GETTABLEKS                       R7 R7 K15 ["filterAssetInsertData"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K8 ["Src"]
       65 GETTABLEKS                       R8 R8 K12 ["Asset"]
       67 GETTABLEKS                       R8 R8 K13 ["Util"]
       69 GETTABLEKS                       R8 R8 K16 ["publishDraftAssets"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R9 R0 K8 ["Src"]
       76 GETTABLEKS                       R9 R9 K13 ["Util"]
       78 GETTABLEKS                       R9 R9 K17 ["logIfDebug"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K5 [require]
       83 GETTABLEKS                       R10 R0 K8 ["Src"]
       85 GETTABLEKS                       R10 R10 K18 ["Flags"]
       87 GETTABLEKS                       R10 R10 K19 ["getFFlagAmrEnableBenchmarking"]
       89 CALL                             R9 1 1
       90 GETIMPORT                        R10 K5 [require]
       92 GETTABLEKS                       R11 R0 K8 ["Src"]
       94 GETTABLEKS                       R11 R11 K18 ["Flags"]
       96 GETTABLEKS                       R11 R11 K20 ["getFFlagAmrPublishDraftAssetsOnInsert"]
       98 CALL                             R10 1 1
       99 GETIMPORT                        R11 K5 [require]
      101 GETTABLEKS                       R12 R0 K8 ["Src"]
      103 GETTABLEKS                       R12 R12 K18 ["Flags"]
      105 GETTABLEKS                       R12 R12 K21 ["getFFlagDebugAmrOutput"]
      107 CALL                             R11 1 1
      108 DUPCLOSURE                       R12 K22 [PROTO_2]
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R11
      119 RETURN                           R12 1
