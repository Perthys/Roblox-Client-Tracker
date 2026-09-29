PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setDetailsDrawerFrame"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["closeDetailsDrawer"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["adjustCompactDrawerHeight"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["UiZone"]
        4 GETTABLEKS                       R2 R2 K1 ["DetailsDrawer"]
        6 NAMECALL                         R0 R0 K2 ["handleMouse1Down"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K0 ["UiZone"]
       13 GETTABLEKS                       R2 R2 K1 ["DetailsDrawer"]
       15 NAMECALL                         R0 R0 K3 ["handleMouse1Up"]
       17 CALL                             R0 2 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETTABLEKS                       R4 R0 K1 ["isCompactOverlay"]
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R1
       17 NEWTABLE                         R7 0 0
       19 CALL                             R5 2 1
       20 GETUPVAL                         R6 3
       21 GETTABLEKS                       R6 R6 K2 ["useCallback"]
       23 NEWCLOSURE                       R7 P1
       24 CAPTURE                          VAL R1
       25 NEWTABLE                         R8 0 0
       27 CALL                             R6 2 1
       28 GETUPVAL                         R7 3
       29 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       31 NEWCLOSURE                       R8 P2
       32 CAPTURE                          VAL R1
       33 NEWTABLE                         R9 0 0
       35 CALL                             R7 2 1
       36 GETUPVAL                         R8 3
       37 GETTABLEKS                       R8 R8 K2 ["useCallback"]
       39 NEWCLOSURE                       R9 P3
       40 CAPTURE                          VAL R2
       41 CAPTURE                          UPVAL U4
       42 NEWTABLE                         R10 0 0
       44 CALL                             R8 2 1
       45 DUPTABLE                         R9 K5 [{"Header", "HeaderDivider"}]
       46 GETUPVAL                         R10 3
       47 GETTABLEKS                       R10 R10 K6 ["createElement"]
       49 GETUPVAL                         R11 5
       50 GETTABLEKS                       R11 R11 K7 ["View"]
       52 DUPTABLE                         R12 K13 [{["LayoutOrder"] = 2, ["Size"], ["tag"] = "row align-y-center gap-small padding-medium"}]
       53 GETIMPORT                        R13 K16 [UDim2.new]
       55 LOADN                            R14 1
       56 LOADN                            R15 0
       57 LOADN                            R16 0
       58 GETUPVAL                         R17 6
       59 GETTABLEKS                       R17 R17 K17 ["TopBarHeight"]
       61 CALL                             R13 4 1
       62 SETTABLEKS                       R13 R12 K10 ["Size"]
       64 DUPTABLE                         R13 K20 [{"Spacer", "CloseButton"}]
       65 GETUPVAL                         R14 3
       66 GETTABLEKS                       R14 R14 K6 ["createElement"]
       68 GETUPVAL                         R15 5
       69 GETTABLEKS                       R15 R15 K7 ["View"]
       71 DUPTABLE                         R16 K23 [{["LayoutOrder"] = 1, ["tag"] = "fill"}]
       72 CALL                             R14 2 1
       73 SETTABLEKS                       R14 R13 K18 ["Spacer"]
       75 GETUPVAL                         R14 3
       76 GETTABLEKS                       R14 R14 K6 ["createElement"]
       78 GETUPVAL                         R15 5
       79 GETTABLEKS                       R15 R15 K24 ["IconButton"]
       81 DUPTABLE                         R16 K31 [{["LayoutOrder"] = 2, ["onActivated"], ["icon"], ["variant"], ["size"], ["testId"] = "details-drawer-close-button"}]
       82 SETTABLEKS                       R6 R16 K25 ["onActivated"]
       84 GETUPVAL                         R17 5
       85 GETTABLEKS                       R17 R17 K32 ["Enums"]
       87 GETTABLEKS                       R17 R17 K33 ["IconName"]
       89 GETTABLEKS                       R17 R17 K34 ["XSmall"]
       91 SETTABLEKS                       R17 R16 K26 ["icon"]
       93 GETUPVAL                         R17 5
       94 GETTABLEKS                       R17 R17 K32 ["Enums"]
       96 GETTABLEKS                       R17 R17 K35 ["ButtonVariant"]
       98 GETTABLEKS                       R17 R17 K36 ["Utility"]
      100 SETTABLEKS                       R17 R16 K27 ["variant"]
      102 GETUPVAL                         R17 5
      103 GETTABLEKS                       R17 R17 K32 ["Enums"]
      105 GETTABLEKS                       R17 R17 K37 ["InputSize"]
      107 GETTABLEKS                       R17 R17 K34 ["XSmall"]
      109 SETTABLEKS                       R17 R16 K28 ["size"]
      111 CALL                             R14 2 1
      112 SETTABLEKS                       R14 R13 K19 ["CloseButton"]
      114 CALL                             R10 3 1
      115 SETTABLEKS                       R10 R9 K3 ["Header"]
      117 GETUPVAL                         R10 3
      118 GETTABLEKS                       R10 R10 K6 ["createElement"]
      120 GETUPVAL                         R11 5
      121 GETTABLEKS                       R11 R11 K38 ["Divider"]
      123 DUPTABLE                         R12 K41 [{["LayoutOrder"] = 3, ["orientation"]}]
      124 GETUPVAL                         R13 5
      125 GETTABLEKS                       R13 R13 K32 ["Enums"]
      127 GETTABLEKS                       R13 R13 K42 ["Orientation"]
      129 GETTABLEKS                       R13 R13 K43 ["Horizontal"]
      131 SETTABLEKS                       R13 R12 K40 ["orientation"]
      133 CALL                             R10 2 1
      134 SETTABLEKS                       R10 R9 K4 ["HeaderDivider"]
      136 JUMPIFNOT                        R4 ; [+19]
      137 GETUPVAL                         R10 3
      138 GETTABLEKS                       R10 R10 K6 ["createElement"]
      140 GETUPVAL                         R11 7
      141 DUPTABLE                         R12 K45 [{["LayoutOrder"] = 1, ["orientation"], ["OnResize"]}]
      142 GETUPVAL                         R13 5
      143 GETTABLEKS                       R13 R13 K32 ["Enums"]
      145 GETTABLEKS                       R13 R13 K42 ["Orientation"]
      147 GETTABLEKS                       R13 R13 K43 ["Horizontal"]
      149 SETTABLEKS                       R13 R12 K40 ["orientation"]
      151 SETTABLEKS                       R7 R12 K44 ["OnResize"]
      153 CALL                             R10 2 1
      154 SETTABLEKS                       R10 R9 K46 ["ResizeHandle"]
      156 GETUPVAL                         R10 3
      157 GETTABLEKS                       R10 R10 K6 ["createElement"]
      159 GETUPVAL                         R11 5
      160 GETTABLEKS                       R11 R11 K7 ["View"]
      162 DUPTABLE                         R12 K49 [{["tag"] = "col size-full bg-surface-100", ["testId"] = "details-drawer"}]
      163 MOVE                             R13 R9
      164 CALL                             R10 3 1
      165 JUMPIF                           R4 ; [+1]
      166 RETURN                           R10 1
      167 GETUPVAL                         R11 3
      168 GETTABLEKS                       R11 R11 K6 ["createElement"]
      170 GETUPVAL                         R12 5
      171 GETTABLEKS                       R12 R12 K7 ["View"]
      173 DUPTABLE                         R13 K55 [{["ref"], ["Size"], ["Position"], ["ZIndex"] = 10, ["testId"] = "details-drawer-overlay"}]
      174 SETTABLEKS                       R5 R13 K50 ["ref"]
      176 GETIMPORT                        R14 K57 [UDim2.fromScale]
      178 LOADN                            R15 1
      179 MOVE                             R16 R3
      180 CALL                             R14 2 1
      181 SETTABLEKS                       R14 R13 K10 ["Size"]
      183 GETIMPORT                        R14 K57 [UDim2.fromScale]
      185 LOADN                            R15 0
      186 SUBRK                            R16 K21 [1] R3
      187 CALL                             R14 2 1
      188 SETTABLEKS                       R14 R13 K51 ["Position"]
      190 DUPTABLE                         R14 K59 [{"Hit"}]
      191 GETUPVAL                         R15 3
      192 GETTABLEKS                       R15 R15 K6 ["createElement"]
      194 GETUPVAL                         R16 5
      195 GETTABLEKS                       R16 R16 K60 ["Image"]
      197 DUPTABLE                         R17 K63 [{["tag"] = "size-full", ["onActivated"], ["stateLayer"]}]
      198 SETTABLEKS                       R8 R17 K25 ["onActivated"]
      200 DUPTABLE                         R18 K65 [{"affordance"}]
      201 GETUPVAL                         R19 5
      202 GETTABLEKS                       R19 R19 K32 ["Enums"]
      204 GETTABLEKS                       R19 R19 K66 ["StateLayerAffordance"]
      206 GETTABLEKS                       R19 R19 K67 ["None"]
      208 SETTABLEKS                       R19 R18 K64 ["affordance"]
      210 SETTABLEKS                       R18 R17 K62 ["stateLayer"]
      212 DUPTABLE                         R18 K69 [{"Drawer"}]
      213 SETTABLEKS                       R10 R18 K68 ["Drawer"]
      215 CALL                             R15 3 1
      216 SETTABLEKS                       R15 R14 K58 ["Hit"]
      218 CALL                             R11 3 -1
      219 RETURN                           R11 -1

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
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["ResizeDivider"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Controllers"]
       36 GETTABLEKS                       R5 R5 K13 ["Input"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K11 ["Src"]
       43 GETTABLEKS                       R6 R6 K12 ["Controllers"]
       45 GETTABLEKS                       R6 R6 K14 ["LayoutController"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K11 ["Src"]
       52 GETTABLEKS                       R7 R7 K15 ["Resources"]
       54 GETTABLEKS                       R7 R7 K16 ["StyleConstants"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K11 ["Src"]
       61 GETTABLEKS                       R8 R8 K17 ["Types"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K11 ["Src"]
       68 GETTABLEKS                       R9 R9 K18 ["Hooks"]
       70 GETTABLEKS                       R9 R9 K19 ["useCompactDrawerHeight"]
       72 CALL                             R8 1 1
       73 DUPCLOSURE                       R9 K20 [PROTO_4]
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R3
       82 RETURN                           R9 1
