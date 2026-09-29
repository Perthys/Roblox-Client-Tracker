PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K0 ["CopyToClipboard"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Failed to generate game link: "]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K4 [tostring]
        7 CALL                             R4 1 1
        8 CONCAT                           R2 R3 R4
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 DUPCLOSURE                       R2 K0 [PROTO_4]
        3 CAPTURE                          UPVAL U1
        4 NAMECALL                         R0 R0 K1 ["andThen"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R2 K2 [PROTO_5]
        8 NAMECALL                         R0 R0 K3 ["catch"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["IsTeamCreateEnabled"]
        8 GETTABLEKS                       R5 R1 K4 ["HasUnsavedChanges"]
       10 GETTABLEKS                       R6 R1 K5 ["HasCollaborators"]
       12 MOVE                             R7 R5
       13 JUMPIF                           R7 ; [+2]
       14 NOT                              R8 R4
       15 AND                              R7 R8 R6
       16 GETTABLEKS                       R8 R1 K6 ["OnSavePressed"]
       18 GETTABLEKS                       R9 R1 K7 ["OnCancelPressed"]
       20 GETTABLEKS                       R10 R1 K8 ["OnViewAllPermissionsPressed"]
       22 JUMPIFEQKNIL                     R10 ; [+104]
       24 GETUPVAL                         R12 0
       25 JUMPIFNOT                        R12 ; [+62]
       26 GETUPVAL                         R11 1
       27 GETTABLEKS                       R11 R11 K9 ["createElement"]
       29 LOADK                            R12 K10 ["Frame"]
       30 DUPTABLE                         R13 K19 [{["BackgroundTransparency"] = 1, ["AnchorPoint"], ["Position"], ["AutomaticSize"], ["Size"], ["ZIndex"] = 2}]
       31 GETIMPORT                        R14 K22 [Vector2.new]
       33 LOADN                            R15 0
       34 LOADK                            R16 K23 [0.5]
       35 CALL                             R14 2 1
       36 SETTABLEKS                       R14 R13 K13 ["AnchorPoint"]
       38 GETIMPORT                        R14 K25 [UDim2.new]
       40 LOADN                            R15 0
       41 GETTABLEKS                       R16 R2 K26 ["buttonBar"]
       43 GETTABLEKS                       R16 R16 K27 ["edgePadding"]
       45 LOADK                            R17 K23 [0.5]
       46 LOADN                            R18 0
       47 CALL                             R14 4 1
       48 SETTABLEKS                       R14 R13 K14 ["Position"]
       50 GETIMPORT                        R14 K30 [Enum.AutomaticSize.XY]
       52 SETTABLEKS                       R14 R13 K15 ["AutomaticSize"]
       54 GETIMPORT                        R14 K32 [UDim2.fromOffset]
       56 LOADN                            R15 0
       57 LOADN                            R16 0
       58 CALL                             R14 2 1
       59 SETTABLEKS                       R14 R13 K16 ["Size"]
       61 DUPTABLE                         R14 K34 [{"Link"}]
       62 GETUPVAL                         R15 2
       63 GETTABLEKS                       R15 R15 K9 ["createElement"]
       65 GETUPVAL                         R16 3
       66 GETTABLEKS                       R16 R16 K35 ["Button"]
       68 DUPTABLE                         R17 K41 [{["variant"], ["size"] = "Medium", ["text"], ["onActivated"]}]
       69 GETUPVAL                         R18 4
       70 GETTABLEKS                       R18 R18 K33 ["Link"]
       72 SETTABLEKS                       R18 R17 K36 ["variant"]
       74 LOADK                            R20 K42 ["Buttons"]
       75 LOADK                            R21 K43 ["ViewAllPermissionsInCreatorHub"]
       76 NAMECALL                         R18 R3 K44 ["getText"]
       78 CALL                             R18 3 1
       79 SETTABLEKS                       R18 R17 K39 ["text"]
       81 SETTABLEKS                       R10 R17 K40 ["onActivated"]
       83 CALL                             R15 2 1
       84 SETTABLEKS                       R15 R14 K33 ["Link"]
       86 CALL                             R11 3 1
       87 JUMP                             ; [+40]
       88 GETUPVAL                         R11 1
       89 GETTABLEKS                       R11 R11 K9 ["createElement"]
       91 GETUPVAL                         R12 5
       92 DUPTABLE                         R13 K48 [{["AnchorPoint"], ["Position"], ["Text"], ["OnClick"], ["TextXAlignment"], ["ZIndex"] = 2}]
       93 GETIMPORT                        R14 K22 [Vector2.new]
       95 LOADN                            R15 0
       96 LOADK                            R16 K23 [0.5]
       97 CALL                             R14 2 1
       98 SETTABLEKS                       R14 R13 K13 ["AnchorPoint"]
      100 GETIMPORT                        R14 K25 [UDim2.new]
      102 LOADN                            R15 0
      103 GETTABLEKS                       R16 R2 K26 ["buttonBar"]
      105 GETTABLEKS                       R16 R16 K27 ["edgePadding"]
      107 LOADK                            R17 K23 [0.5]
      108 LOADN                            R18 0
      109 CALL                             R14 4 1
      110 SETTABLEKS                       R14 R13 K14 ["Position"]
      112 LOADK                            R16 K42 ["Buttons"]
      113 LOADK                            R17 K43 ["ViewAllPermissionsInCreatorHub"]
      114 NAMECALL                         R14 R3 K44 ["getText"]
      116 CALL                             R14 3 1
      117 SETTABLEKS                       R14 R13 K45 ["Text"]
      119 SETTABLEKS                       R10 R13 K46 ["OnClick"]
      121 GETIMPORT                        R14 K50 [Enum.TextXAlignment.Left]
      123 SETTABLEKS                       R14 R13 K47 ["TextXAlignment"]
      125 CALL                             R11 2 1
      126 JUMP                             ; [+1]
      127 LOADNIL                          R11
      128 GETUPVAL                         R13 0
      129 JUMPIFNOT                        R13 ; [+14]
      130 DUPTABLE                         R12 K52 [{["text"], ["onActivated"], ["variant"] = "Standard"}]
      131 LOADK                            R15 K42 ["Buttons"]
      132 LOADK                            R16 K53 ["Cancel"]
      133 NAMECALL                         R13 R3 K44 ["getText"]
      135 CALL                             R13 3 1
      136 SETTABLEKS                       R13 R12 K39 ["text"]
      138 NEWCLOSURE                       R13 P0
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R5
      141 SETTABLEKS                       R13 R12 K40 ["onActivated"]
      143 JUMP                             ; [+13]
      144 DUPTABLE                         R12 K57 [{["Name"], ["OnPressed"], ["Style"] = "Cancel"}]
      145 LOADK                            R15 K42 ["Buttons"]
      146 LOADK                            R16 K53 ["Cancel"]
      147 NAMECALL                         R13 R3 K44 ["getText"]
      149 CALL                             R13 3 1
      150 SETTABLEKS                       R13 R12 K54 ["Name"]
      152 NEWCLOSURE                       R13 P1
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R5
      155 SETTABLEKS                       R13 R12 K55 ["OnPressed"]
      157 GETUPVAL                         R14 0
      158 JUMPIFNOT                        R14 ; [+17]
      159 DUPTABLE                         R13 K60 [{["text"], ["isDisabled"], ["onActivated"], ["variant"] = "Emphasis"}]
      160 LOADK                            R16 K42 ["Buttons"]
      161 LOADK                            R17 K61 ["Save"]
      162 NAMECALL                         R14 R3 K44 ["getText"]
      164 CALL                             R14 3 1
      165 SETTABLEKS                       R14 R13 K39 ["text"]
      167 NOT                              R14 R7
      168 SETTABLEKS                       R14 R13 K58 ["isDisabled"]
      170 NEWCLOSURE                       R14 P2
      171 CAPTURE                          VAL R7
      172 CAPTURE                          VAL R8
      173 SETTABLEKS                       R14 R13 K40 ["onActivated"]
      175 JUMP                             ; [+27]
      176 DUPTABLE                         R13 K65 [{["Name"], ["Default"] = True, ["OnPressed"], ["Style"], ["StyleModifier"]}]
      177 LOADK                            R16 K42 ["Buttons"]
      178 LOADK                            R17 K61 ["Save"]
      179 NAMECALL                         R14 R3 K44 ["getText"]
      181 CALL                             R14 3 1
      182 SETTABLEKS                       R14 R13 K54 ["Name"]
      184 NEWCLOSURE                       R14 P3
      185 CAPTURE                          VAL R7
      186 CAPTURE                          VAL R8
      187 SETTABLEKS                       R14 R13 K55 ["OnPressed"]
      189 JUMPIFNOT                        R7 ; [+2]
      190 LOADK                            R14 K66 ["Active"]
      191 JUMP                             ; [+1]
      192 LOADK                            R14 K67 ["Passive"]
      193 SETTABLEKS                       R14 R13 K56 ["Style"]
      195 JUMPIF                           R7 ; [+4]
      196 GETUPVAL                         R14 6
      197 GETTABLEKS                       R14 R14 K68 ["Disabled"]
      199 JUMP                             ; [+1]
      200 LOADNIL                          R14
      201 SETTABLEKS                       R14 R13 K64 ["StyleModifier"]
      203 NEWTABLE                         R14 0 2
      205 MOVE                             R15 R12
      206 MOVE                             R16 R13
      207 SETLIST                          R14 R15 2 [1]
      209 GETTABLEKS                       R15 R1 K69 ["FetchGameLink"]
      211 JUMPIFEQKNIL                     R15 ; [+28]
      213 LOADK                            R18 K42 ["Buttons"]
      214 LOADK                            R19 K70 ["CopyGameLink"]
      215 NAMECALL                         R16 R3 K44 ["getText"]
      217 CALL                             R16 3 1
      218 NEWCLOSURE                       R17 P4
      219 CAPTURE                          VAL R15
      220 CAPTURE                          UPVAL U7
      221 GETUPVAL                         R21 0
      222 JUMPIFNOT                        R21 ; [+6]
      223 DUPTABLE                         R20 K52 [{["text"], ["onActivated"], ["variant"] = "Standard"}]
      224 SETTABLEKS                       R16 R20 K39 ["text"]
      226 SETTABLEKS                       R17 R20 K40 ["onActivated"]
      228 JUMP                             ; [+5]
      229 DUPTABLE                         R20 K57 [{["Name"], ["OnPressed"], ["Style"] = "Cancel"}]
      230 SETTABLEKS                       R16 R20 K54 ["Name"]
      232 SETTABLEKS                       R17 R20 K55 ["OnPressed"]
      234 FASTCALL2                        TABLE_INSERT R14 R20 ; [+4]
      236 MOVE                             R19 R14
      237 GETIMPORT                        R18 K73 [table.insert]
      239 CALL                             R18 2 0
      240 GETUPVAL                         R16 1
      241 GETTABLEKS                       R16 R16 K9 ["createElement"]
      243 LOADK                            R17 K10 ["Frame"]
      244 DUPTABLE                         R18 K77 [{["BackgroundColor3"], ["BorderSizePixel"] = 1, ["Size"], ["ZIndex"] = 2, ["BorderColor3"]}]
      245 GETTABLEKS                       R19 R2 K78 ["backgroundColor"]
      247 SETTABLEKS                       R19 R18 K74 ["BackgroundColor3"]
      249 GETIMPORT                        R19 K80 [UDim2.fromScale]
      251 LOADN                            R20 1
      252 LOADN                            R21 1
      253 CALL                             R19 2 1
      254 SETTABLEKS                       R19 R18 K16 ["Size"]
      256 GETTABLEKS                       R19 R2 K81 ["footer"]
      258 GETTABLEKS                       R19 R19 K82 ["border"]
      260 SETTABLEKS                       R19 R18 K76 ["BorderColor3"]
      262 DUPTABLE                         R19 K86 [{"Gradient", "ButtonBar", "ViewAllPermissionsLink"}]
      263 GETUPVAL                         R20 1
      264 GETTABLEKS                       R20 R20 K9 ["createElement"]
      266 LOADK                            R21 K87 ["ImageLabel"]
      267 DUPTABLE                         R22 K93 [{["Size"], ["AnchorPoint"], ["Image"], ["ImageRectSize"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1, ["ImageColor3"], ["ImageTransparency"], ["ZIndex"] = 1}]
      268 GETIMPORT                        R23 K25 [UDim2.new]
      270 LOADN                            R24 1
      271 LOADN                            R25 0
      272 LOADN                            R26 0
      273 GETTABLEKS                       R27 R2 K81 ["footer"]
      275 GETTABLEKS                       R27 R27 K94 ["gradientSize"]
      277 CALL                             R23 4 1
      278 SETTABLEKS                       R23 R22 K16 ["Size"]
      280 GETIMPORT                        R23 K22 [Vector2.new]
      282 LOADN                            R24 0
      283 LOADN                            R25 1
      284 CALL                             R23 2 1
      285 SETTABLEKS                       R23 R22 K13 ["AnchorPoint"]
      287 GETUPVAL                         R23 8
      288 GETTABLEKS                       R23 R23 K95 ["GRADIENT_IMAGE"]
      290 SETTABLEKS                       R23 R22 K88 ["Image"]
      292 GETUPVAL                         R23 8
      293 GETTABLEKS                       R23 R23 K96 ["GRADIENT_RECT_SIZE"]
      295 SETTABLEKS                       R23 R22 K89 ["ImageRectSize"]
      297 GETTABLEKS                       R23 R2 K81 ["footer"]
      299 GETTABLEKS                       R23 R23 K97 ["gradient"]
      301 SETTABLEKS                       R23 R22 K91 ["ImageColor3"]
      303 GETTABLEKS                       R23 R2 K81 ["footer"]
      305 GETTABLEKS                       R23 R23 K98 ["gradientTransparency"]
      307 SETTABLEKS                       R23 R22 K92 ["ImageTransparency"]
      309 CALL                             R20 2 1
      310 SETTABLEKS                       R20 R19 K83 ["Gradient"]
      312 GETUPVAL                         R20 1
      313 GETTABLEKS                       R20 R20 K9 ["createElement"]
      315 GETUPVAL                         R21 9
      316 DUPTABLE                         R22 K100 [{["ZIndex"] = 2, ["Buttons"], ["HorizontalAlignment"]}]
      317 SETTABLEKS                       R14 R22 K42 ["Buttons"]
      319 GETIMPORT                        R23 K102 [Enum.HorizontalAlignment.Right]
      321 SETTABLEKS                       R23 R22 K99 ["HorizontalAlignment"]
      323 CALL                             R20 2 1
      324 SETTABLEKS                       R20 R19 K84 ["ButtonBar"]
      326 SETTABLEKS                       R11 R19 K85 ["ViewAllPermissionsLink"]
      328 CALL                             R16 3 -1
      329 RETURN                           R16 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 DUPTABLE                         R3 K2 [{"HasUnsavedChanges", "HasCollaborators"}]
        4 SETTABLEKS                       R2 R3 K0 ["HasUnsavedChanges"]
        6 GETUPVAL                         R4 1
        7 MOVE                             R5 R0
        8 CALL                             R4 1 1
        9 SETTABLEKS                       R4 R3 K1 ["HasCollaborators"]
       11 RETURN                           R3 1

PROTO_9:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Collab9031_ManageCollaboratorsEarlyFoundationMigration1"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioService"]
       10 NAMECALL                         R1 R1 K5 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K7 [script]
       15 GETTABLEKS                       R2 R2 K8 ["Parent"]
       17 GETTABLEKS                       R2 R2 K8 ["Parent"]
       19 GETTABLEKS                       R2 R2 K8 ["Parent"]
       21 GETIMPORT                        R3 K10 [require]
       23 GETTABLEKS                       R4 R2 K11 ["Packages"]
       25 GETTABLEKS                       R4 R4 K12 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R5 R2 K11 ["Packages"]
       32 GETTABLEKS                       R5 R5 K13 ["RoactRodux"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R6 R2 K11 ["Packages"]
       39 GETTABLEKS                       R6 R6 K14 ["Framework"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K15 ["Style"]
       44 GETTABLEKS                       R6 R6 K16 ["Stylizer"]
       46 GETTABLEKS                       R7 R5 K17 ["ContextServices"]
       48 GETTABLEKS                       R8 R7 K18 ["withContext"]
       50 GETTABLEKS                       R9 R7 K19 ["Localization"]
       52 GETTABLEKS                       R10 R5 K20 ["Util"]
       54 GETTABLEKS                       R11 R10 K21 ["StyleModifier"]
       56 GETIMPORT                        R12 K10 [require]
       58 GETTABLEKS                       R13 R2 K22 ["Src"]
       60 GETTABLEKS                       R13 R13 K23 ["Components"]
       62 GETTABLEKS                       R13 R13 K24 ["ButtonBar"]
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K10 [require]
       67 GETTABLEKS                       R14 R2 K22 ["Src"]
       69 GETTABLEKS                       R14 R14 K20 ["Util"]
       71 GETTABLEKS                       R14 R14 K25 ["Constants"]
       73 CALL                             R13 1 1
       74 GETTABLEKS                       R14 R5 K26 ["UI"]
       76 GETTABLEKS                       R14 R14 K27 ["LinkText"]
       78 LOADNIL                          R15
       79 LOADNIL                          R16
       80 LOADNIL                          R17
       81 JUMPIFNOT                        R0 ; [+20]
       82 GETIMPORT                        R18 K10 [require]
       84 GETTABLEKS                       R19 R2 K11 ["Packages"]
       86 GETTABLEKS                       R19 R19 K28 ["React"]
       88 CALL                             R18 1 1
       89 MOVE                             R15 R18
       90 GETIMPORT                        R18 K10 [require]
       92 GETTABLEKS                       R19 R2 K11 ["Packages"]
       94 GETTABLEKS                       R19 R19 K29 ["Foundation"]
       96 CALL                             R18 1 1
       97 MOVE                             R16 R18
       98 GETTABLEKS                       R18 R16 K30 ["Enums"]
      100 GETTABLEKS                       R17 R18 K31 ["ButtonVariant"]
      102 GETIMPORT                        R18 K10 [require]
      104 GETTABLEKS                       R19 R2 K22 ["Src"]
      106 GETTABLEKS                       R19 R19 K32 ["Selectors"]
      108 GETTABLEKS                       R19 R19 K33 ["GetHasCollaborators"]
      110 CALL                             R18 1 1
      111 GETIMPORT                        R19 K10 [require]
      113 GETTABLEKS                       R20 R2 K22 ["Src"]
      115 GETTABLEKS                       R20 R20 K32 ["Selectors"]
      117 GETTABLEKS                       R20 R20 K34 ["GetHasUnsavedChanges"]
      119 CALL                             R19 1 1
      120 GETTABLEKS                       R20 R3 K35 ["PureComponent"]
      122 LOADK                            R22 K36 ["Footer"]
      123 NAMECALL                         R20 R20 K37 ["extend"]
      125 CALL                             R20 2 1
      126 NEWCLOSURE                       R21 P0
      127 CAPTURE                          VAL R0
      128 CAPTURE                          VAL R3
      129 CAPTURE                          REF R15
      130 CAPTURE                          REF R16
      131 CAPTURE                          REF R17
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R13
      136 CAPTURE                          VAL R12
      137 SETTABLEKS                       R21 R20 K38 ["render"]
      139 MOVE                             R21 R8
      140 DUPTABLE                         R22 K39 [{"Stylizer", "Localization"}]
      141 SETTABLEKS                       R6 R22 K16 ["Stylizer"]
      143 SETTABLEKS                       R9 R22 K19 ["Localization"]
      145 CALL                             R21 1 1
      146 MOVE                             R22 R20
      147 CALL                             R21 1 1
      148 MOVE                             R20 R21
      149 GETTABLEKS                       R21 R4 K40 ["connect"]
      151 DUPCLOSURE                       R22 K41 [PROTO_8]
      152 CAPTURE                          VAL R19
      153 CAPTURE                          VAL R18
      154 DUPCLOSURE                       R23 K42 [PROTO_9]
      155 CALL                             R21 2 1
      156 MOVE                             R22 R20
      157 CALL                             R21 1 1
      158 MOVE                             R20 R21
      159 CLOSEUPVALS                      R15
      160 RETURN                           R20 1
