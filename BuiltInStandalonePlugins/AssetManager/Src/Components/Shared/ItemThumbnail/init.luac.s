PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Color"]
        2 GETTABLEKS                       R1 R1 K1 ["Extended"]
        4 GETTABLEKS                       R1 R1 K2 ["Yellow"]
        6 GETTABLEKS                       R1 R1 K3 ["Yellow_300"]
        8 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Color"]
        2 GETTABLEKS                       R1 R1 K1 ["Content"]
        4 GETTABLEKS                       R1 R1 K2 ["Default"]
        6 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 2
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["Hooks"]
        5 GETTABLEKS                       R3 R3 K1 ["useTokens"]
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K2 ["createElement"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K3 ["View"]
       14 DUPTABLE                         R6 K8 [{["Size"], ["tag"] = "position-center-center anchor-center-center", ["testId"]}]
       15 GETIMPORT                        R7 K11 [UDim2.fromOffset]
       17 MOVE                             R8 R2
       18 MOVE                             R9 R2
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R6 K4 ["Size"]
       22 GETTABLEKS                       R7 R0 K12 ["TestId"]
       24 SETTABLEKS                       R7 R6 K7 ["testId"]
       26 NEWTABLE                         R7 0 1
       28 GETUPVAL                         R8 2
       29 GETTABLEKS                       R8 R8 K2 ["createElement"]
       31 GETUPVAL                         R9 1
       32 GETTABLEKS                       R9 R9 K13 ["Icon"]
       34 DUPTABLE                         R10 K18 [{"name", "variant", "style", "size"}]
       35 GETTABLEKS                       R11 R0 K13 ["Icon"]
       37 SETTABLEKS                       R11 R10 K14 ["name"]
       39 GETUPVAL                         R11 1
       40 GETTABLEKS                       R11 R11 K19 ["Enums"]
       42 GETTABLEKS                       R11 R11 K20 ["IconVariant"]
       44 GETTABLEKS                       R11 R11 K21 ["Filled"]
       46 SETTABLEKS                       R11 R10 K15 ["variant"]
       48 GETTABLEKS                       R11 R0 K22 ["getStyle"]
       50 MOVE                             R12 R3
       51 CALL                             R11 1 1
       52 SETTABLEKS                       R11 R10 K16 ["style"]
       54 SETTABLEKS                       R2 R10 K17 ["size"]
       56 CALL                             R8 2 -1
       57 SETLIST                          R7 R8 -1 [1]
       59 CALL                             R4 3 -1
       60 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["AssetId"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["AssetType"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U2
        9 NAMECALL                         R0 R0 K2 ["getThumbnailForItemAsync"]
       11 CALL                             R0 4 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["AssetType"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIFNOT                        R1 ; [+7]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["createElement"]
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R1
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K2 ["use"]
       15 CALL                             R2 0 1
       16 GETTABLEKS                       R5 R0 K3 ["AssetId"]
       18 GETTABLEKS                       R6 R0 K0 ["AssetType"]
       20 NAMECALL                         R3 R2 K4 ["getThumbnailForItem"]
       22 CALL                             R3 3 1
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K5 ["useState"]
       26 GETIMPORT                        R5 K9 [Enum.AssetFetchStatus.None]
       28 CALL                             R4 1 2
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K10 ["useEffect"]
       32 NEWCLOSURE                       R7 P0
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R5
       36 NEWTABLE                         R8 0 1
       38 GETTABLEKS                       R9 R0 K3 ["AssetId"]
       40 SETLIST                          R8 R9 1 [1]
       42 CALL                             R6 2 0
       43 GETIMPORT                        R6 K12 [Enum.AssetFetchStatus.Success]
       45 JUMPIFNOTEQ                      R4 R6 ; [+42]
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K1 ["createElement"]
       50 GETUPVAL                         R7 4
       51 GETTABLEKS                       R7 R7 K13 ["Image"]
       53 DUPTABLE                         R8 K18 [{["Image"], ["tag"] = "position-center-center anchor-center-center size-full", ["testId"] = "item-thumbnail-content"}]
       54 SETTABLEKS                       R3 R8 K13 ["Image"]
       56 CALL                             R6 2 1
       57 GETTABLEKS                       R7 R0 K0 ["AssetType"]
       59 GETUPVAL                         R8 5
       60 GETTABLEKS                       R8 R8 K0 ["AssetType"]
       62 GETTABLEKS                       R8 R8 K13 ["Image"]
       64 JUMPIFEQ                         R7 R8 ; [+10]
       66 GETTABLEKS                       R7 R0 K0 ["AssetType"]
       68 GETUPVAL                         R8 5
       69 GETTABLEKS                       R8 R8 K0 ["AssetType"]
       71 GETTABLEKS                       R8 R8 K19 ["Decal"]
       73 JUMPIFNOTEQ                      R7 R8 ; [+13]
       75 GETUPVAL                         R7 1
       76 GETTABLEKS                       R7 R7 K1 ["createElement"]
       78 GETUPVAL                         R8 4
       79 GETTABLEKS                       R8 R8 K20 ["View"]
       81 DUPTABLE                         R9 K22 [{["tag"] = "size-full padding-xsmall"}]
       82 DUPTABLE                         R10 K24 [{"Content"}]
       83 SETTABLEKS                       R6 R10 K23 ["Content"]
       85 CALL                             R7 3 -1
       86 RETURN                           R7 -1
       87 RETURN                           R6 1
       88 GETIMPORT                        R6 K26 [Enum.AssetFetchStatus.Failure]
       90 JUMPIFEQ                         R4 R6 ; [+5]
       92 GETIMPORT                        R6 K28 [Enum.AssetFetchStatus.TimedOut]
       94 JUMPIFNOTEQ                      R4 R6 ; [+33]
       96 GETUPVAL                         R6 1
       97 GETTABLEKS                       R6 R6 K1 ["createElement"]
       99 GETUPVAL                         R7 4
      100 GETTABLEKS                       R7 R7 K20 ["View"]
      102 DUPTABLE                         R8 K22 [{["tag"] = "size-full padding-xsmall"}]
      103 NEWTABLE                         R9 0 1
      105 GETUPVAL                         R10 1
      106 GETTABLEKS                       R10 R10 K1 ["createElement"]
      108 GETUPVAL                         R11 4
      109 GETTABLEKS                       R11 R11 K13 ["Image"]
      111 DUPTABLE                         R12 K30 [{["Image"], ["tag"] = "position-center-center anchor-center-center size-full", ["testId"] = "default-thumbnail"}]
      112 GETUPVAL                         R13 6
      113 GETTABLEKS                       R13 R13 K31 ["get"]
      115 GETUPVAL                         R14 6
      116 GETTABLEKS                       R14 R14 K32 ["AvailableImages"]
      118 GETTABLEKS                       R14 R14 K33 ["DefaultThumbnail"]
      120 CALL                             R13 1 1
      121 SETTABLEKS                       R13 R12 K13 ["Image"]
      123 CALL                             R10 2 -1
      124 SETLIST                          R9 R10 -1 [1]
      126 CALL                             R6 3 -1
      127 RETURN                           R6 -1
      128 GETUPVAL                         R6 1
      129 GETTABLEKS                       R6 R6 K1 ["createElement"]
      131 GETUPVAL                         R7 7
      132 GETTABLEKS                       R7 R7 K34 ["Component"]
      134 DUPTABLE                         R8 K37 [{"Rotation", "Transparency"}]
      135 GETUPVAL                         R9 8
      136 LOADK                            R11 K35 ["Rotation"]
      137 NAMECALL                         R9 R9 K38 ["GetAttribute"]
      139 CALL                             R9 2 1
      140 SETTABLEKS                       R9 R8 K35 ["Rotation"]
      142 GETUPVAL                         R9 8
      143 LOADK                            R11 K36 ["Transparency"]
      144 NAMECALL                         R9 R9 K38 ["GetAttribute"]
      146 CALL                             R9 2 1
      147 SETTABLEKS                       R9 R8 K36 ["Transparency"]
      149 CALL                             R6 2 -1
      150 RETURN                           R6 -1

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
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Networking"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K9 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Hooks"]
       41 GETTABLEKS                       R6 R6 K13 ["useLayoutInfo"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K9 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Resources"]
       50 GETTABLEKS                       R7 R7 K15 ["PluginStyles"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETIMPORT                        R8 K1 [script]
       57 GETTABLEKS                       R8 R8 K16 ["Shimmer"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K9 ["Src"]
       64 GETTABLEKS                       R9 R9 K17 ["Util"]
       66 GETTABLEKS                       R9 R9 K18 ["Images"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K9 ["Src"]
       73 GETTABLEKS                       R10 R10 K19 ["Flags"]
       75 GETTABLEKS                       R10 R10 K20 ["getFFlagAmrEnableTextDocuments"]
       77 CALL                             R9 1 1
       78 NEWTABLE                         R10 1 0
       80 GETTABLEKS                       R11 R3 K21 ["AssetType"]
       82 GETTABLEKS                       R11 R11 K22 ["Folder"]
       84 DUPTABLE                         R12 K27 [{["Icon"], ["TestId"] = "folder-thumbnail-content", ["getStyle"]}]
       85 GETTABLEKS                       R13 R2 K28 ["Enums"]
       87 GETTABLEKS                       R13 R13 K29 ["IconName"]
       89 GETTABLEKS                       R13 R13 K22 ["Folder"]
       91 SETTABLEKS                       R13 R12 K23 ["Icon"]
       93 DUPCLOSURE                       R13 K30 [PROTO_0]
       94 SETTABLEKS                       R13 R12 K26 ["getStyle"]
       96 SETTABLE                         R12 R10 R11
       97 MOVE                             R11 R9
       98 CALL                             R11 0 1
       99 JUMPIFNOT                        R11 ; [+17]
      100 GETTABLEKS                       R11 R3 K21 ["AssetType"]
      102 GETTABLEKS                       R11 R11 K31 ["TextDocument"]
      104 DUPTABLE                         R12 K33 [{["Icon"], ["TestId"] = "text-document-thumbnail-content", ["getStyle"]}]
      105 GETTABLEKS                       R13 R2 K28 ["Enums"]
      107 GETTABLEKS                       R13 R13 K29 ["IconName"]
      109 GETTABLEKS                       R13 R13 K34 ["Page"]
      111 SETTABLEKS                       R13 R12 K23 ["Icon"]
      113 DUPCLOSURE                       R13 K35 [PROTO_1]
      114 SETTABLEKS                       R13 R12 K26 ["getStyle"]
      116 SETTABLE                         R12 R10 R11
      117 DUPCLOSURE                       R11 K36 [PROTO_2]
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R1
      121 DUPCLOSURE                       R12 K37 [PROTO_5]
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R6
      131 RETURN                           R12 1
