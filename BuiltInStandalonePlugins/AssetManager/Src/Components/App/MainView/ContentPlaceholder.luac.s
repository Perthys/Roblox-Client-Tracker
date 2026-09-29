PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["UiZone"]
        4 GETTABLEKS                       R2 R2 K1 ["Browser"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 GETUPVAL                         R5 2
        9 NAMECALL                         R0 R0 K2 ["handleMouse2Click"]
       11 CALL                             R0 5 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearFilters"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 CALL                             R4 0 1
       14 GETTABLEKS                       R5 R4 K1 ["ShowSearchOptions"]
       16 MOVE                             R6 R5
       17 JUMPIFNOT                        R6 ; [+6]
       18 GETTABLEKS                       R7 R4 K2 ["ActiveSearchTerm"]
       20 JUMPIFEQKS                       R7 K3 [""] ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 JUMPIFNOT                        R6 ; [+2]
       25 LOADK                            R7 K3 [""]
       26 JUMP                             ; [+5]
       27 LOADK                            R9 K4 ["Plugin"]
       28 LOADK                            R10 K5 ["NoAssets"]
       29 NAMECALL                         R7 R1 K6 ["getText"]
       31 CALL                             R7 3 1
       32 GETUPVAL                         R8 4
       33 GETUPVAL                         R9 5
       34 GETTABLEKS                       R9 R9 K7 ["MenuContext"]
       36 GETTABLEKS                       R9 R9 K8 ["Asset"]
       38 CALL                             R8 1 1
       39 GETUPVAL                         R9 6
       40 CALL                             R9 0 2
       41 GETTABLEKS                       R12 R0 K9 ["IsLoading"]
       43 NOT                              R11 R12
       44 JUMPIFNOT                        R11 ; [+5]
       45 NOT                              R11 R5
       46 JUMPIFNOT                        R11 ; [+3]
       47 GETUPVAL                         R11 7
       48 MOVE                             R12 R10
       49 CALL                             R11 1 1
       50 GETUPVAL                         R12 8
       51 GETTABLEKS                       R12 R12 K10 ["createElement"]
       53 GETUPVAL                         R13 9
       54 GETTABLEKS                       R13 R13 K11 ["View"]
       56 DUPTABLE                         R14 K17 [{["LayoutOrder"], ["onSecondaryActivated"], ["stateLayer"], ["tag"] = "col align-x-center align-y-center fill gap-xlarge size-full-0"}]
       57 GETTABLEKS                       R15 R0 K12 ["LayoutOrder"]
       59 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
       61 NEWCLOSURE                       R15 P0
       62 CAPTURE                          VAL R2
       63 CAPTURE                          UPVAL U5
       64 CAPTURE                          VAL R8
       65 SETTABLEKS                       R15 R14 K13 ["onSecondaryActivated"]
       67 DUPTABLE                         R15 K19 [{"affordance"}]
       68 GETUPVAL                         R16 9
       69 GETTABLEKS                       R16 R16 K20 ["Enums"]
       71 GETTABLEKS                       R16 R16 K21 ["StateLayerAffordance"]
       73 GETTABLEKS                       R16 R16 K22 ["None"]
       75 SETTABLEKS                       R16 R15 K18 ["affordance"]
       77 SETTABLEKS                       R15 R14 K14 ["stateLayer"]
       79 DUPTABLE                         R15 K25 [{"Content", "ClearFiltersButton"}]
       80 GETTABLEKS                       R17 R0 K9 ["IsLoading"]
       82 JUMPIFNOT                        R17 ; [+18]
       83 GETUPVAL                         R16 8
       84 GETTABLEKS                       R16 R16 K10 ["createElement"]
       86 GETUPVAL                         R17 9
       87 GETTABLEKS                       R17 R17 K26 ["Loading"]
       89 DUPTABLE                         R18 K29 [{["LayoutOrder"] = 1, ["size"]}]
       90 GETUPVAL                         R19 9
       91 GETTABLEKS                       R19 R19 K20 ["Enums"]
       93 GETTABLEKS                       R19 R19 K30 ["IconSize"]
       95 GETTABLEKS                       R19 R19 K31 ["Medium"]
       97 SETTABLEKS                       R19 R18 K28 ["size"]
       99 CALL                             R16 2 1
      100 JUMP                             ; [+10]
      101 GETUPVAL                         R16 8
      102 GETTABLEKS                       R16 R16 K10 ["createElement"]
      104 GETUPVAL                         R17 9
      105 GETTABLEKS                       R17 R17 K32 ["Text"]
      107 DUPTABLE                         R18 K34 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "text-body-medium text-align-x-center content-default"}]
      108 SETTABLEKS                       R7 R18 K32 ["Text"]
      110 CALL                             R16 2 1
      111 SETTABLEKS                       R16 R15 K23 ["Content"]
      113 MOVE                             R16 R11
      114 JUMPIFNOT                        R16 ; [+37]
      115 GETUPVAL                         R16 8
      116 GETTABLEKS                       R16 R16 K10 ["createElement"]
      118 GETUPVAL                         R17 9
      119 GETTABLEKS                       R17 R17 K35 ["Button"]
      121 DUPTABLE                         R18 K42 [{["LayoutOrder"] = 2, ["text"], ["onActivated"], ["variant"], ["size"], ["testId"] = "content-placeholder-clear-filters-button"}]
      122 LOADK                            R21 K43 ["Filters"]
      123 LOADK                            R22 K44 ["ResetFilters"]
      124 NAMECALL                         R19 R1 K6 ["getText"]
      126 CALL                             R19 3 1
      127 SETTABLEKS                       R19 R18 K37 ["text"]
      129 NEWCLOSURE                       R19 P1
      130 CAPTURE                          VAL R3
      131 SETTABLEKS                       R19 R18 K38 ["onActivated"]
      133 GETUPVAL                         R19 9
      134 GETTABLEKS                       R19 R19 K20 ["Enums"]
      136 GETTABLEKS                       R19 R19 K45 ["ButtonVariant"]
      138 GETTABLEKS                       R19 R19 K46 ["Standard"]
      140 SETTABLEKS                       R19 R18 K39 ["variant"]
      142 GETUPVAL                         R19 9
      143 GETTABLEKS                       R19 R19 K20 ["Enums"]
      145 GETTABLEKS                       R19 R19 K47 ["InputSize"]
      147 GETTABLEKS                       R19 R19 K48 ["XSmall"]
      149 SETTABLEKS                       R19 R18 K28 ["size"]
      151 CALL                             R16 2 1
      152 SETTABLEKS                       R16 R15 K24 ["ClearFiltersButton"]
      154 CALL                             R12 3 -1
      155 RETURN                           R12 -1

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
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K11 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K12 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K13 ["Localization"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K9 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Controllers"]
       45 GETTABLEKS                       R8 R8 K15 ["Input"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K9 ["Src"]
       52 GETTABLEKS                       R9 R9 K14 ["Controllers"]
       54 GETTABLEKS                       R9 R9 K16 ["ItemsController"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K9 ["Src"]
       61 GETTABLEKS                       R10 R10 K17 ["Util"]
       63 GETTABLEKS                       R10 R10 K18 ["hasActiveFilters"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K9 ["Src"]
       70 GETTABLEKS                       R11 R11 K19 ["Hooks"]
       72 GETTABLEKS                       R11 R11 K20 ["useContextMenu"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K9 ["Src"]
       79 GETTABLEKS                       R12 R12 K19 ["Hooks"]
       81 GETTABLEKS                       R12 R12 K21 ["useSortFilter"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K9 ["Src"]
       88 GETTABLEKS                       R13 R13 K19 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K22 ["useSearchInfo"]
       92 CALL                             R12 1 1
       93 DUPCLOSURE                       R13 K23 [PROTO_2]
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R2
      104 RETURN                           R13 1
