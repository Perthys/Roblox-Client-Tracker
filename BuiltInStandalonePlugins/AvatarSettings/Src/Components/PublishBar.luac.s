PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["CreatePlaceSettingsPressed"]
        2 NAMECALL                         R0 R0 K1 ["logCounter"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["createPlaceAvatarRules"]
        9 GETTABLEKS                       R2 R2 K3 ["fromPlugin"]
       11 LOADB                            R3 0
       12 NAMECALL                         R0 R0 K4 ["Invoke"]
       14 CALL                             R0 3 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["RevertChangesPressed"]
        2 NAMECALL                         R0 R0 K1 ["logCounter"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K2 ["discardUnpublishedSettings"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SaveChangesPressed"]
        2 NAMECALL                         R0 R0 K1 ["logCounter"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K2 ["saveUnpublishedSettings"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 NAMECALL                         R4 R4 K0 ["use"]
       13 CALL                             R4 1 1
       14 NAMECALL                         R4 R4 K1 ["get"]
       16 CALL                             R4 1 1
       17 GETUPVAL                         R5 4
       18 GETTABLEKS                       R5 R5 K2 ["useContext"]
       20 GETUPVAL                         R6 5
       21 CALL                             R5 1 1
       22 GETTABLEKS                       R8 R5 K3 ["content"]
       24 JUMPIFNOTEQKNIL                  R8 ; [+2]
       26 LOADB                            R7 0 +1
       27 LOADB                            R7 1
       28 FASTCALL2K                       ASSERT R7 K4 ; [+4]
       30 LOADK                            R8 K4 ["Content must not be nil in PublishContext"]
       31 GETIMPORT                        R6 K6 [assert]
       33 CALL                             R6 2 0
       34 GETTABLEKS                       R6 R5 K3 ["content"]
       36 GETUPVAL                         R7 4
       37 GETTABLEKS                       R7 R7 K2 ["useContext"]
       39 GETUPVAL                         R8 6
       40 CALL                             R7 1 1
       41 GETUPVAL                         R8 7
       42 GETTABLEKS                       R9 R7 K7 ["currentGameId"]
       44 GETTABLEKS                       R10 R6 K8 ["canCreatePlaceSettings"]
       46 CALL                             R8 2 1
       47 GETUPVAL                         R9 8
       48 GETUPVAL                         R10 9
       49 NEWTABLE                         R11 4 0
       51 GETUPVAL                         R12 4
       52 GETTABLEKS                       R12 R12 K9 ["Tag"]
       54 LOADK                            R13 K10 ["PublishBar X-Row X-Middle X-Right"]
       55 SETTABLE                         R13 R11 R12
       56 GETIMPORT                        R12 K13 [UDim2.new]
       58 LOADN                            R13 1
       59 LOADN                            R14 0
       60 LOADN                            R15 0
       61 GETUPVAL                         R16 10
       62 GETTABLEKS                       R16 R16 K14 ["MENU_BAR_HEIGHT"]
       64 CALL                             R12 4 1
       65 SETTABLEKS                       R12 R11 K15 ["Size"]
       67 GETTABLEKS                       R12 R0 K16 ["layoutOrder"]
       69 SETTABLEKS                       R12 R11 K17 ["LayoutOrder"]
       71 DUPTABLE                         R12 K21 [{"CreatePlaceSettingsButton", "RevertChangesButton", "SaveChangesButton"}]
       72 GETUPVAL                         R13 11
       73 CALL                             R13 0 1
       74 JUMPIFNOT                        R13 ; [+52]
       75 GETUPVAL                         R13 8
       76 GETUPVAL                         R14 12
       77 NEWTABLE                         R15 8 0
       79 GETUPVAL                         R16 4
       80 GETTABLEKS                       R16 R16 K9 ["Tag"]
       82 LOADK                            R17 K22 ["Compact"]
       83 SETTABLE                         R17 R15 R16
       84 GETIMPORT                        R16 K24 [UDim2.fromOffset]
       86 LOADN                            R17 0
       87 GETUPVAL                         R18 10
       88 GETTABLEKS                       R18 R18 K25 ["STANDARD_HEIGHT"]
       90 CALL                             R16 2 1
       91 SETTABLEKS                       R16 R15 K15 ["Size"]
       93 GETIMPORT                        R16 K29 [Enum.AutomaticSize.X]
       95 SETTABLEKS                       R16 R15 K27 ["AutomaticSize"]
       97 LOADK                            R18 K30 ["Publish"]
       98 LOADK                            R19 K31 ["CreatePlaceSettings"]
       99 NAMECALL                         R16 R1 K32 ["getText"]
      101 CALL                             R16 3 1
      102 SETTABLEKS                       R16 R15 K33 ["Text"]
      104 LOADK                            R18 K30 ["Publish"]
      105 MOVE                             R19 R8
      106 NAMECALL                         R16 R1 K32 ["getText"]
      108 CALL                             R16 3 1
      109 SETTABLEKS                       R16 R15 K34 ["TooltipText"]
      111 MOVE                             R16 R3
      112 CALL                             R16 0 1
      113 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
      115 GETTABLEKS                       R17 R6 K8 ["canCreatePlaceSettings"]
      117 NOT                              R16 R17
      118 SETTABLEKS                       R16 R15 K35 ["Disabled"]
      120 NEWCLOSURE                       R16 P0
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R4
      123 CAPTURE                          UPVAL U13
      124 SETTABLEKS                       R16 R15 K36 ["OnClick"]
      126 CALL                             R13 2 1
      127 SETTABLEKS                       R13 R12 K18 ["CreatePlaceSettingsButton"]
      129 GETUPVAL                         R13 8
      130 GETUPVAL                         R14 12
      131 NEWTABLE                         R15 8 0
      133 GETUPVAL                         R16 4
      134 GETTABLEKS                       R16 R16 K9 ["Tag"]
      136 LOADK                            R17 K22 ["Compact"]
      137 SETTABLE                         R17 R15 R16
      138 GETIMPORT                        R16 K24 [UDim2.fromOffset]
      140 LOADN                            R17 0
      141 GETUPVAL                         R18 10
      142 GETTABLEKS                       R18 R18 K25 ["STANDARD_HEIGHT"]
      144 CALL                             R16 2 1
      145 SETTABLEKS                       R16 R15 K15 ["Size"]
      147 GETIMPORT                        R16 K29 [Enum.AutomaticSize.X]
      149 SETTABLEKS                       R16 R15 K27 ["AutomaticSize"]
      151 LOADK                            R18 K30 ["Publish"]
      152 LOADK                            R19 K37 ["RevertChanges"]
      153 NAMECALL                         R16 R1 K32 ["getText"]
      155 CALL                             R16 3 1
      156 SETTABLEKS                       R16 R15 K33 ["Text"]
      158 MOVE                             R16 R3
      159 CALL                             R16 0 1
      160 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
      162 GETTABLEKS                       R17 R6 K38 ["canPublish"]
      164 NOT                              R16 R17
      165 SETTABLEKS                       R16 R15 K35 ["Disabled"]
      167 NEWCLOSURE                       R16 P1
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R6
      170 SETTABLEKS                       R16 R15 K36 ["OnClick"]
      172 CALL                             R13 2 1
      173 SETTABLEKS                       R13 R12 K19 ["RevertChangesButton"]
      175 GETUPVAL                         R13 8
      176 GETUPVAL                         R14 12
      177 NEWTABLE                         R15 8 0
      179 GETUPVAL                         R16 4
      180 GETTABLEKS                       R16 R16 K9 ["Tag"]
      182 LOADK                            R17 K39 ["PrimaryBrand Compact"]
      183 SETTABLE                         R17 R15 R16
      184 GETIMPORT                        R16 K24 [UDim2.fromOffset]
      186 LOADN                            R17 0
      187 GETUPVAL                         R18 10
      188 GETTABLEKS                       R18 R18 K25 ["STANDARD_HEIGHT"]
      190 CALL                             R16 2 1
      191 SETTABLEKS                       R16 R15 K15 ["Size"]
      193 GETIMPORT                        R16 K29 [Enum.AutomaticSize.X]
      195 SETTABLEKS                       R16 R15 K27 ["AutomaticSize"]
      197 LOADK                            R18 K30 ["Publish"]
      198 LOADK                            R19 K40 ["SaveChanges"]
      199 NAMECALL                         R16 R1 K32 ["getText"]
      201 CALL                             R16 3 1
      202 SETTABLEKS                       R16 R15 K33 ["Text"]
      204 MOVE                             R16 R3
      205 CALL                             R16 0 1
      206 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
      208 GETTABLEKS                       R17 R6 K38 ["canPublish"]
      210 NOT                              R16 R17
      211 SETTABLEKS                       R16 R15 K35 ["Disabled"]
      213 NEWCLOSURE                       R16 P2
      214 CAPTURE                          VAL R2
      215 CAPTURE                          VAL R6
      216 SETTABLEKS                       R16 R15 K36 ["OnClick"]
      218 CALL                             R13 2 1
      219 SETTABLEKS                       R13 R12 K20 ["SaveChangesButton"]
      221 CALL                             R9 3 -1
      222 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Components"]
       22 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       24 GETTABLEKS                       R3 R3 K11 ["EnableAvatarSettingsContext"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K12 ["Packages"]
       31 GETTABLEKS                       R4 R4 K13 ["Framework"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K9 ["Components"]
       40 GETTABLEKS                       R5 R5 K10 ["Contexts"]
       42 GETTABLEKS                       R5 R5 K14 ["PublishProvider"]
       44 GETTABLEKS                       R5 R5 K15 ["PublishContext"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R6 R0 K12 ["Packages"]
       51 GETTABLEKS                       R6 R6 K16 ["React"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K12 ["Packages"]
       58 GETTABLEKS                       R7 R7 K17 ["ReactUtils"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K6 ["Src"]
       65 GETTABLEKS                       R8 R8 K7 ["Util"]
       67 GETTABLEKS                       R8 R8 K18 ["getCreatePlaceSettingsTooltipKey"]
       69 CALL                             R7 1 1
       70 GETTABLEKS                       R8 R6 K19 ["createNextOrder"]
       72 GETTABLEKS                       R9 R3 K20 ["ContextServices"]
       74 GETTABLEKS                       R10 R9 K21 ["Localization"]
       76 GETTABLEKS                       R11 R9 K22 ["Plugin"]
       78 GETIMPORT                        R12 K5 [require]
       80 GETTABLEKS                       R13 R0 K6 ["Src"]
       82 GETTABLEKS                       R13 R13 K7 ["Util"]
       84 GETTABLEKS                       R13 R13 K23 ["Telemetry"]
       86 GETTABLEKS                       R13 R13 K24 ["TelemetryContext"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R14 R0 K6 ["Src"]
       93 GETTABLEKS                       R14 R14 K7 ["Util"]
       95 GETTABLEKS                       R14 R14 K25 ["InvokeKeys"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R15 R0 K6 ["Src"]
      102 GETTABLEKS                       R15 R15 K26 ["Flags"]
      104 GETTABLEKS                       R15 R15 K27 ["getEngineFeatureAvatarSettingsPlaceAvatarRules"]
      106 CALL                             R14 1 1
      107 GETTABLEKS                       R15 R3 K28 ["UI"]
      109 GETTABLEKS                       R16 R15 K29 ["Pane"]
      111 GETTABLEKS                       R17 R15 K30 ["IconButton"]
      113 GETTABLEKS                       R18 R5 K31 ["createElement"]
      115 DUPCLOSURE                       R19 K32 [PROTO_3]
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R18
      125 CAPTURE                          VAL R16
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R17
      129 CAPTURE                          VAL R13
      130 RETURN                           R19 1
