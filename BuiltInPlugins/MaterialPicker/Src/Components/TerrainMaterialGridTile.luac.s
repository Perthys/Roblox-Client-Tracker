PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["createElement"]
        9 GETUPVAL                         R3 2
       10 DUPTABLE                         R4 K12 [{["backgroundStyle"], ["entry"], ["isDisabled"], ["isSelected"], ["layoutOrder"], ["onActivated"], ["onSecondaryActivated"], ["tag"] = "size-full radius-small clip"}]
       11 GETTABLEKS                       R5 R1 K13 ["Color"]
       13 GETTABLEKS                       R5 R5 K14 ["Shift"]
       15 GETTABLEKS                       R5 R5 K15 ["Shift_100"]
       17 SETTABLEKS                       R5 R4 K3 ["backgroundStyle"]
       19 GETTABLEKS                       R5 R0 K4 ["entry"]
       21 SETTABLEKS                       R5 R4 K4 ["entry"]
       23 GETTABLEKS                       R5 R0 K5 ["isDisabled"]
       25 SETTABLEKS                       R5 R4 K5 ["isDisabled"]
       27 GETTABLEKS                       R5 R0 K6 ["isSelected"]
       29 SETTABLEKS                       R5 R4 K6 ["isSelected"]
       31 GETTABLEKS                       R5 R0 K7 ["layoutOrder"]
       33 SETTABLEKS                       R5 R4 K7 ["layoutOrder"]
       35 GETTABLEKS                       R5 R0 K8 ["onActivated"]
       37 SETTABLEKS                       R5 R4 K8 ["onActivated"]
       39 GETTABLEKS                       R5 R0 K9 ["onSecondaryActivated"]
       41 SETTABLEKS                       R5 R4 K9 ["onSecondaryActivated"]
       43 DUPTABLE                         R5 K18 [{"Preview", "Labels"}]
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K2 ["createElement"]
       47 GETUPVAL                         R7 3
       48 DUPTABLE                         R8 K25 [{["entry"], ["initialDistance"] = 5.5, ["position"], ["size"] = 40, ["tag"] = "anchor-top-center radius-xsmall clip"}]
       49 GETTABLEKS                       R9 R0 K4 ["entry"]
       51 SETTABLEKS                       R9 R8 K4 ["entry"]
       53 GETIMPORT                        R9 K28 [UDim2.new]
       55 LOADK                            R10 K29 [0.5]
       56 LOADN                            R11 0
       57 LOADN                            R12 0
       58 GETTABLEKS                       R13 R1 K30 ["Padding"]
       60 GETTABLEKS                       R13 R13 K31 ["XSmall"]
       62 CALL                             R9 4 1
       63 SETTABLEKS                       R9 R8 K21 ["position"]
       65 CALL                             R6 2 1
       66 SETTABLEKS                       R6 R5 K16 ["Preview"]
       68 GETUPVAL                         R6 1
       69 GETTABLEKS                       R6 R6 K2 ["createElement"]
       71 GETUPVAL                         R7 4
       72 DUPTABLE                         R8 K35 [{["ZIndex"] = 2, ["tag"] = "position-bottom-left anchor-bottom-left size-full-600"}]
       73 DUPTABLE                         R9 K38 [{"Gradient", "Name"}]
       74 GETUPVAL                         R10 1
       75 GETTABLEKS                       R10 R10 K2 ["createElement"]
       77 GETUPVAL                         R11 5
       78 DUPTABLE                         R12 K42 [{["Image"], ["Size"], ["ZIndex"] = 1}]
       79 GETTABLEKS                       R14 R1 K43 ["Config"]
       81 GETTABLEKS                       R14 R14 K44 ["ColorMode"]
       83 GETTABLEKS                       R14 R14 K37 ["Name"]
       85 GETUPVAL                         R15 6
       86 GETTABLEKS                       R15 R15 K45 ["Light"]
       88 JUMPIFNOTEQ                      R14 R15 ; [+3]
       90 LOADK                            R13 K46 ["rbxasset://textures/MaterialManager/Gradient_LT.png"]
       91 JUMP                             ; [+1]
       92 LOADK                            R13 K47 ["rbxasset://textures/MaterialManager/Gradient_DT.png"]
       93 SETTABLEKS                       R13 R12 K39 ["Image"]
       95 GETIMPORT                        R13 K49 [UDim2.fromScale]
       97 LOADN                            R14 1
       98 LOADN                            R15 1
       99 CALL                             R13 2 1
      100 SETTABLEKS                       R13 R12 K40 ["Size"]
      102 CALL                             R10 2 1
      103 SETTABLEKS                       R10 R9 K36 ["Gradient"]
      105 GETUPVAL                         R10 1
      106 GETTABLEKS                       R10 R10 K2 ["createElement"]
      108 GETUPVAL                         R11 7
      109 DUPTABLE                         R12 K53 [{["Text"], ["textStyle"], ["ZIndex"] = 2, ["tag"] = "size-full padding-top-small padding-x-xsmall padding-bottom-xxsmall text-caption-small text-align-x-left text-align-y-center text-truncate-end"}]
      110 GETTABLEKS                       R13 R0 K4 ["entry"]
      112 GETTABLEKS                       R13 R13 K54 ["displayName"]
      114 SETTABLEKS                       R13 R12 K50 ["Text"]
      116 GETTABLEKS                       R14 R1 K43 ["Config"]
      118 GETTABLEKS                       R14 R14 K44 ["ColorMode"]
      120 GETTABLEKS                       R14 R14 K37 ["Name"]
      122 GETUPVAL                         R15 6
      123 GETTABLEKS                       R15 R15 K45 ["Light"]
      125 JUMPIFNOTEQ                      R14 R15 ; [+10]
      127 GETTABLEKS                       R13 R1 K13 ["Color"]
      129 GETTABLEKS                       R13 R13 K55 ["Extended"]
      131 GETTABLEKS                       R13 R13 K56 ["Black"]
      133 GETTABLEKS                       R13 R13 K57 ["Black_100"]
      135 JUMP                             ; [+8]
      136 GETTABLEKS                       R13 R1 K13 ["Color"]
      138 GETTABLEKS                       R13 R13 K55 ["Extended"]
      140 GETTABLEKS                       R13 R13 K58 ["White"]
      142 GETTABLEKS                       R13 R13 K59 ["White_100"]
      144 SETTABLEKS                       R13 R12 K51 ["textStyle"]
      146 CALL                             R10 2 1
      147 SETTABLEKS                       R10 R9 K37 ["Name"]
      149 CALL                             R6 3 1
      150 SETTABLEKS                       R6 R5 K17 ["Labels"]
      152 CALL                             R2 3 -1
      153 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["TerrainPalette"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Components"]
       34 GETTABLEKS                       R5 R5 K12 ["TerrainMaterialTileBase"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["Enums"]
       39 GETTABLEKS                       R5 R5 K14 ["ColorMode"]
       41 GETTABLEKS                       R6 R1 K15 ["Image"]
       43 GETTABLEKS                       R7 R1 K16 ["Text"]
       45 GETTABLEKS                       R8 R1 K17 ["View"]
       47 GETTABLEKS                       R9 R4 K18 ["Preview"]
       49 GETTABLEKS                       R10 R4 K19 ["Container"]
       51 DUPCLOSURE                       R11 K20 [PROTO_0]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R10
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R7
       60 GETTABLEKS                       R12 R2 K21 ["memo"]
       62 MOVE                             R13 R11
       63 CALL                             R12 1 -1
       64 RETURN                           R12 -1
