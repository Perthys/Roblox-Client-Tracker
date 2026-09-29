PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Items"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["child"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["WidgetUri"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["Id"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R1 R1 K0 ["ActivateAsync"]
        5 CALL                             R1 3 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["OnClose"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Items"]
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["Id"]
        9 CALL                             R0 4 -1
       10 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnToggle"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Id"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hover"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+8]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["OnHover"]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K2 ["Id"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Definition"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 NEWTABLE                         R4 0 1
       10 GETTABLEKS                       R5 R1 K2 ["Items"]
       12 SETLIST                          R4 R5 1 [1]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 2
       16 MOVE                             R4 R2
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K3 ["use"]
       21 CALL                             R4 0 1
       22 NAMECALL                         R4 R4 K4 ["get"]
       24 CALL                             R4 1 1
       25 LOADK                            R7 K5 ["Actions"]
       26 NAMECALL                         R5 R4 K6 ["GetPluginComponent"]
       28 CALL                             R5 2 1
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K1 ["useMemo"]
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R1
       36 NEWTABLE                         R8 0 2
       38 GETTABLEKS                       R9 R0 K7 ["WidgetUri"]
       40 GETTABLEKS                       R10 R1 K8 ["Id"]
       42 SETLIST                          R8 R9 2 [1]
       44 CALL                             R6 2 1
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R7 R7 K9 ["useCallback"]
       48 NEWCLOSURE                       R8 P2
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R0
       52 NEWTABLE                         R9 0 3
       54 MOVE                             R10 R5
       55 MOVE                             R11 R6
       56 GETTABLEKS                       R12 R0 K10 ["OnClose"]
       58 SETLIST                          R9 R10 3 [1]
       60 CALL                             R7 2 1
       61 GETUPVAL                         R8 0
       62 GETTABLEKS                       R8 R8 K1 ["useMemo"]
       64 NEWCLOSURE                       R9 P3
       65 CAPTURE                          UPVAL U5
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R7
       69 NEWTABLE                         R10 0 4
       71 GETTABLEKS                       R11 R1 K2 ["Items"]
       73 MOVE                             R12 R3
       74 MOVE                             R13 R7
       75 GETTABLEKS                       R14 R1 K8 ["Id"]
       77 SETLIST                          R10 R11 4 [1]
       79 CALL                             R8 2 1
       80 GETUPVAL                         R9 0
       81 GETTABLEKS                       R9 R9 K9 ["useCallback"]
       83 NEWCLOSURE                       R10 P4
       84 CAPTURE                          VAL R0
       85 CAPTURE                          VAL R1
       86 NEWTABLE                         R11 0 2
       88 GETTABLEKS                       R12 R0 K11 ["OnToggle"]
       90 GETTABLEKS                       R13 R1 K8 ["Id"]
       92 SETLIST                          R11 R12 2 [1]
       94 CALL                             R9 2 1
       95 GETUPVAL                         R10 0
       96 GETTABLEKS                       R10 R10 K9 ["useCallback"]
       98 NEWCLOSURE                       R11 P5
       99 CAPTURE                          UPVAL U6
      100 CAPTURE                          VAL R0
      101 CAPTURE                          VAL R1
      102 NEWTABLE                         R12 0 2
      104 GETTABLEKS                       R13 R0 K12 ["OnHover"]
      106 GETTABLEKS                       R14 R1 K8 ["Id"]
      108 SETLIST                          R12 R13 2 [1]
      110 CALL                             R10 2 1
      111 LENGTH                           R11 R8
      112 JUMPIFNOTEQKN                    R11 K13 [0] ; [+3]
      114 LOADNIL                          R11
      115 RETURN                           R11 1
      116 GETTABLEKS                       R12 R1 K8 ["Id"]
      118 JUMPIFNOTEQKS                    R12 K14 ["AppMenu"] ; [+25]
      120 GETUPVAL                         R11 0
      121 GETTABLEKS                       R11 R11 K15 ["createElement"]
      123 GETUPVAL                         R12 7
      124 DUPTABLE                         R13 K20 [{"icon", "size", "variant", "onActivated"}]
      125 GETUPVAL                         R14 8
      126 GETTABLEKS                       R14 R14 K21 ["Studio"]
      128 SETTABLEKS                       R14 R13 K16 ["icon"]
      130 GETUPVAL                         R14 9
      131 GETTABLEKS                       R14 R14 K22 ["XSmall"]
      133 SETTABLEKS                       R14 R13 K17 ["size"]
      135 GETUPVAL                         R14 10
      136 GETTABLEKS                       R14 R14 K23 ["Utility"]
      138 SETTABLEKS                       R14 R13 K18 ["variant"]
      140 SETTABLEKS                       R9 R13 K19 ["onActivated"]
      142 CALL                             R11 2 1
      143 JUMP                             ; [+22]
      144 GETUPVAL                         R11 0
      145 GETTABLEKS                       R11 R11 K15 ["createElement"]
      147 GETUPVAL                         R12 11
      148 DUPTABLE                         R13 K25 [{"text", "size", "variant", "onActivated"}]
      149 GETTABLEKS                       R14 R1 K26 ["Title"]
      151 SETTABLEKS                       R14 R13 K24 ["text"]
      153 GETUPVAL                         R14 9
      154 GETTABLEKS                       R14 R14 K22 ["XSmall"]
      156 SETTABLEKS                       R14 R13 K17 ["size"]
      158 GETUPVAL                         R14 10
      159 GETTABLEKS                       R14 R14 K23 ["Utility"]
      161 SETTABLEKS                       R14 R13 K18 ["variant"]
      163 SETTABLEKS                       R9 R13 K19 ["onActivated"]
      165 CALL                             R11 2 1
      166 GETUPVAL                         R12 0
      167 GETTABLEKS                       R12 R12 K15 ["createElement"]
      169 GETUPVAL                         R13 12
      170 DUPTABLE                         R14 K33 [{"isOpen", "items", "size", "side", "align", "LayoutOrder", "onPressedOutside", "onActivated"}]
      171 GETTABLEKS                       R15 R0 K34 ["IsOpen"]
      173 SETTABLEKS                       R15 R14 K27 ["isOpen"]
      175 SETTABLEKS                       R8 R14 K28 ["items"]
      177 GETUPVAL                         R15 9
      178 GETTABLEKS                       R15 R15 K22 ["XSmall"]
      180 SETTABLEKS                       R15 R14 K17 ["size"]
      182 GETUPVAL                         R15 13
      183 GETTABLEKS                       R15 R15 K35 ["Bottom"]
      185 SETTABLEKS                       R15 R14 K29 ["side"]
      187 GETUPVAL                         R15 14
      188 GETTABLEKS                       R15 R15 K36 ["Start"]
      190 SETTABLEKS                       R15 R14 K30 ["align"]
      192 GETTABLEKS                       R15 R0 K31 ["LayoutOrder"]
      194 SETTABLEKS                       R15 R14 K31 ["LayoutOrder"]
      196 GETTABLEKS                       R15 R0 K10 ["OnClose"]
      198 SETTABLEKS                       R15 R14 K32 ["onPressedOutside"]
      200 GETTABLEKS                       R15 R0 K10 ["OnClose"]
      202 SETTABLEKS                       R15 R14 K19 ["onActivated"]
      204 DUPTABLE                         R15 K38 [{"Trigger"}]
      205 GETUPVAL                         R16 0
      206 GETTABLEKS                       R16 R16 K15 ["createElement"]
      208 GETUPVAL                         R17 15
      209 DUPTABLE                         R18 K42 [{["tag"] = "auto-xy", ["onStateChanged"]}]
      210 SETTABLEKS                       R10 R18 K41 ["onStateChanged"]
      212 DUPTABLE                         R19 K44 [{"Button"}]
      213 SETTABLEKS                       R11 R19 K43 ["Button"]
      215 CALL                             R16 3 1
      216 SETTABLEKS                       R16 R15 K37 ["Trigger"]
      218 CALL                             R12 3 -1
      219 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
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
       21 GETTABLEKS                       R3 R2 K9 ["Button"]
       23 GETTABLEKS                       R4 R2 K10 ["IconButton"]
       25 GETTABLEKS                       R5 R2 K11 ["Menu"]
       27 GETTABLEKS                       R6 R2 K12 ["View"]
       29 GETTABLEKS                       R7 R2 K13 ["Enums"]
       31 GETTABLEKS                       R7 R7 K14 ["ButtonVariant"]
       33 GETTABLEKS                       R8 R2 K13 ["Enums"]
       35 GETTABLEKS                       R8 R8 K15 ["ControlState"]
       37 GETTABLEKS                       R9 R2 K13 ["Enums"]
       39 GETTABLEKS                       R9 R9 K16 ["IconName"]
       41 GETTABLEKS                       R10 R2 K13 ["Enums"]
       43 GETTABLEKS                       R10 R10 K17 ["InputSize"]
       45 GETTABLEKS                       R11 R2 K13 ["Enums"]
       47 GETTABLEKS                       R11 R11 K18 ["PopoverAlign"]
       49 GETTABLEKS                       R12 R2 K13 ["Enums"]
       51 GETTABLEKS                       R12 R12 K19 ["PopoverSide"]
       53 GETIMPORT                        R13 K5 [require]
       55 GETTABLEKS                       R14 R0 K6 ["Packages"]
       57 GETTABLEKS                       R14 R14 K20 ["Framework"]
       59 CALL                             R13 1 1
       60 GETTABLEKS                       R14 R13 K21 ["ContextServices"]
       62 GETTABLEKS                       R14 R14 K22 ["Plugin"]
       64 GETIMPORT                        R15 K5 [require]
       66 GETTABLEKS                       R16 R0 K6 ["Packages"]
       68 GETTABLEKS                       R16 R16 K23 ["StudioFoundation"]
       70 CALL                             R15 1 1
       71 GETTABLEKS                       R16 R15 K24 ["Util"]
       73 GETTABLEKS                       R16 R16 K25 ["StudioUri"]
       75 GETIMPORT                        R17 K5 [require]
       77 GETTABLEKS                       R18 R0 K26 ["Src"]
       79 GETTABLEKS                       R18 R18 K27 ["Hooks"]
       81 GETTABLEKS                       R18 R18 K28 ["useControls"]
       83 CALL                             R17 1 1
       84 GETIMPORT                        R18 K5 [require]
       86 GETTABLEKS                       R19 R0 K26 ["Src"]
       88 GETTABLEKS                       R19 R19 K24 ["Util"]
       90 GETTABLEKS                       R19 R19 K29 ["systemMenuEntriesToControls"]
       92 CALL                             R18 1 1
       93 GETIMPORT                        R19 K5 [require]
       95 GETTABLEKS                       R20 R0 K26 ["Src"]
       97 GETTABLEKS                       R20 R20 K24 ["Util"]
       99 GETTABLEKS                       R20 R20 K30 ["systemMenuEntriesToMenuItems"]
      101 CALL                             R19 1 1
      102 DUPCLOSURE                       R20 K31 [PROTO_6]
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R18
      105 CAPTURE                          VAL R17
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R16
      108 CAPTURE                          VAL R19
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R6
      119 RETURN                           R20 1
