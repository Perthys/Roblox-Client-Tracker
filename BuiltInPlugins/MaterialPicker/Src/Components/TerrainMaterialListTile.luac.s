PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["Hooks"]
       10 GETTABLEKS                       R2 R2 K3 ["useTokens"]
       12 CALL                             R2 0 1
       13 GETUPVAL                         R3 3
       14 CALL                             R3 0 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K4 ["createElement"]
       18 GETUPVAL                         R5 4
       19 DUPTABLE                         R6 K15 [{["backgroundStyle"], ["entry"], ["isDisabled"], ["isSelected"], ["layoutOrder"], ["onActivated"], ["onSecondaryActivated"], ["Size"], ["tag"] = "row align-y-center gap-xsmall padding-xxsmall radius-medium clip"}]
       20 GETTABLEKS                       R7 R2 K16 ["Color"]
       22 GETTABLEKS                       R7 R7 K17 ["Surface"]
       24 GETTABLEKS                       R7 R7 K18 ["Surface_200"]
       26 SETTABLEKS                       R7 R6 K5 ["backgroundStyle"]
       28 GETTABLEKS                       R7 R0 K6 ["entry"]
       30 SETTABLEKS                       R7 R6 K6 ["entry"]
       32 GETTABLEKS                       R7 R0 K7 ["isDisabled"]
       34 SETTABLEKS                       R7 R6 K7 ["isDisabled"]
       36 GETTABLEKS                       R7 R0 K8 ["isSelected"]
       38 SETTABLEKS                       R7 R6 K8 ["isSelected"]
       40 GETTABLEKS                       R7 R0 K9 ["layoutOrder"]
       42 SETTABLEKS                       R7 R6 K9 ["layoutOrder"]
       44 GETTABLEKS                       R7 R0 K10 ["onActivated"]
       46 SETTABLEKS                       R7 R6 K10 ["onActivated"]
       48 GETTABLEKS                       R7 R0 K11 ["onSecondaryActivated"]
       50 SETTABLEKS                       R7 R6 K11 ["onSecondaryActivated"]
       52 GETIMPORT                        R7 K21 [UDim2.new]
       54 LOADN                            R8 1
       55 LOADN                            R9 0
       56 LOADN                            R10 0
       57 LOADN                            R11 36
       58 CALL                             R7 4 1
       59 SETTABLEKS                       R7 R6 K12 ["Size"]
       61 DUPTABLE                         R7 K24 [{"Preview", "Labels"}]
       62 GETUPVAL                         R8 0
       63 GETTABLEKS                       R8 R8 K4 ["createElement"]
       65 GETUPVAL                         R9 5
       66 DUPTABLE                         R10 K29 [{["entry"], ["initialDistance"] = 5.5, ["layoutOrder"], ["size"] = 32}]
       67 GETTABLEKS                       R11 R0 K6 ["entry"]
       69 SETTABLEKS                       R11 R10 K6 ["entry"]
       71 MOVE                             R11 R3
       72 CALL                             R11 0 1
       73 SETTABLEKS                       R11 R10 K9 ["layoutOrder"]
       75 CALL                             R8 2 1
       76 SETTABLEKS                       R8 R7 K22 ["Preview"]
       78 GETUPVAL                         R8 0
       79 GETTABLEKS                       R8 R8 K4 ["createElement"]
       81 GETUPVAL                         R9 6
       82 DUPTABLE                         R10 K32 [{["LayoutOrder"], ["tag"] = "col grow gap-xxsmall size-0-full"}]
       83 MOVE                             R11 R3
       84 CALL                             R11 0 1
       85 SETTABLEKS                       R11 R10 K30 ["LayoutOrder"]
       87 DUPTABLE                         R11 K35 [{"Name", "Slot"}]
       88 GETUPVAL                         R12 0
       89 GETTABLEKS                       R12 R12 K4 ["createElement"]
       91 GETUPVAL                         R13 7
       92 DUPTABLE                         R14 K38 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-350 text-body-small text-align-x-left text-truncate-end content-emphasis"}]
       93 MOVE                             R15 R3
       94 CALL                             R15 0 1
       95 SETTABLEKS                       R15 R14 K30 ["LayoutOrder"]
       97 GETTABLEKS                       R15 R0 K6 ["entry"]
       99 GETTABLEKS                       R15 R15 K39 ["displayName"]
      101 SETTABLEKS                       R15 R14 K36 ["Text"]
      103 CALL                             R12 2 1
      104 SETTABLEKS                       R12 R11 K33 ["Name"]
      106 GETUPVAL                         R12 0
      107 GETTABLEKS                       R12 R12 K4 ["createElement"]
      109 GETUPVAL                         R13 7
      110 DUPTABLE                         R14 K41 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-300 text-caption-small text-align-x-left content-muted"}]
      111 MOVE                             R15 R3
      112 CALL                             R15 0 1
      113 SETTABLEKS                       R15 R14 K30 ["LayoutOrder"]
      115 LOADK                            R15 K42 ["%* %*"]
      116 LOADK                            R19 K43 ["Plugin"]
      117 LOADK                            R20 K44 ["SlotLabel"]
      118 NAMECALL                         R17 R1 K45 ["getText"]
      120 CALL                             R17 3 1
      121 GETTABLEKS                       R18 R0 K6 ["entry"]
      123 GETTABLEKS                       R18 R18 K46 ["slotIndex"]
      125 NAMECALL                         R15 R15 K47 ["format"]
      127 CALL                             R15 3 1
      128 SETTABLEKS                       R15 R14 K36 ["Text"]
      130 CALL                             R12 2 1
      131 SETTABLEKS                       R12 R11 K34 ["Slot"]
      133 CALL                             R8 3 1
      134 SETTABLEKS                       R8 R7 K23 ["Labels"]
      136 CALL                             R4 3 -1
      137 RETURN                           R4 -1

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
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["TerrainPalette"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Src"]
       46 GETTABLEKS                       R7 R7 K13 ["Components"]
       48 GETTABLEKS                       R7 R7 K14 ["TerrainMaterialTileBase"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R4 K15 ["Contexts"]
       53 GETTABLEKS                       R7 R7 K16 ["Localization"]
       55 GETTABLEKS                       R8 R1 K17 ["Text"]
       57 GETTABLEKS                       R9 R1 K18 ["View"]
       59 GETTABLEKS                       R10 R3 K19 ["createNextOrder"]
       61 GETTABLEKS                       R11 R6 K20 ["Preview"]
       63 GETTABLEKS                       R12 R6 K21 ["Container"]
       65 DUPCLOSURE                       R13 K22 [PROTO_0]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R12
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R8
       74 GETTABLEKS                       R14 R2 K23 ["memo"]
       76 MOVE                             R15 R13
       77 CALL                             R14 1 -1
       78 RETURN                           R14 -1
