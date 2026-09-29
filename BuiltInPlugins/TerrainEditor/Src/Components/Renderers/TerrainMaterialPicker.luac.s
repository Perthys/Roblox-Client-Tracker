PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["baseMaterial"]
        2 GETIMPORT                        R3 K4 [Enum.Material.Air]
        4 JUMPIFNOTEQ                      R2 R3 ; [+8]
        6 GETTABLEKS                       R3 R1 K5 ["AllowAir"]
        8 JUMPIFEQKB                       R3 TRUE ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1
       13 GETTABLEKS                       R2 R0 K0 ["baseMaterial"]
       15 GETIMPORT                        R3 K7 [Enum.Material.Water]
       17 JUMPIFNOTEQ                      R2 R3 ; [+8]
       19 GETTABLEKS                       R3 R1 K8 ["AllowWater"]
       21 JUMPIFNOTEQKB                    R3 FALSE ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 RETURN                           R2 1
       26 LOADB                            R2 1
       27 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 MOVE                             R2 R0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETTABLEKS                       R7 R6 K0 ["slotIndex"]
       10 JUMPIFNOTEQ                      R7 R1 ; [+2]
       12 RETURN                           R6 1
       13 FORGLOOP                         R2 2 ; [-6]
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getMaterialPreviewOverride"]
        3 GETTABLEKS                       R2 R0 K1 ["baseMaterial"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+7]
        7 GETTABLEKS                       R2 R1 K2 ["material"]
        9 GETTABLEKS                       R3 R1 K3 ["color"]
       11 GETTABLEKS                       R4 R1 K4 ["transparency"]
       13 RETURN                           R2 3
       14 GETTABLEKS                       R2 R0 K5 ["resolvedVariant"]
       16 JUMPIF                           R2 ; [+2]
       17 GETTABLEKS                       R2 R0 K1 ["baseMaterial"]
       19 GETTABLEKS                       R3 R0 K3 ["color"]
       21 LOADNIL                          R4
       22 RETURN                           R2 3

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["join"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["GetUri"]
        6 CALL                             R1 1 1
        7 DUPTABLE                         R2 K5 [{["Category"] = "Widgets", ["ItemId"]}]
        8 LOADK                            R3 K6 ["TerrainMaterialPicker/%*"]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K7 ["Schema"]
       12 GETTABLEKS                       R5 R5 K8 ["PickerId"]
       14 NAMECALL                         R3 R3 K9 ["format"]
       16 CALL                             R3 2 1
       17 SETTABLEKS                       R3 R2 K4 ["ItemId"]
       19 CALL                             R0 2 -1
       20 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Schema"]
        3 GETTABLEKS                       R0 R0 K1 ["OnActivated"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+6]
        6 GETUPVAL                         R0 2
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 3
       12 GETTABLEKS                       R0 R0 K1 ["Schema"]
       14 GETTABLEKS                       R0 R0 K2 ["OnClear"]
       16 JUMPIFNOT                        R0 ; [+16]
       17 GETUPVAL                         R0 2
       18 GETTABLEKS                       R0 R0 K0 ["current"]
       20 GETUPVAL                         R1 1
       21 JUMPIFEQ                         R0 R1 ; [+11]
       23 GETUPVAL                         R0 2
       24 GETUPVAL                         R1 1
       25 SETTABLEKS                       R1 R0 K0 ["current"]
       27 GETUPVAL                         R0 3
       28 GETTABLEKS                       R0 R0 K1 ["Schema"]
       30 GETTABLEKS                       R0 R0 K2 ["OnClear"]
       32 CALL                             R0 0 0
       33 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["catalog"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["Plugin"]
       10 NAMECALL                         R2 R2 K3 ["use"]
       12 CALL                             R2 1 1
       13 NAMECALL                         R2 R2 K4 ["get"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K5 ["Hooks"]
       19 GETTABLEKS                       R3 R3 K6 ["useTokens"]
       21 CALL                             R3 0 1
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K7 ["useRef"]
       25 LOADNIL                          R5
       26 CALL                             R4 1 1
       27 GETUPVAL                         R5 4
       28 CALL                             R5 0 1
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K8 ["useMemo"]
       32 NEWCLOSURE                       R7 P0
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R0
       36 NEWTABLE                         R8 0 2
       38 MOVE                             R9 R2
       39 GETTABLEKS                       R10 R0 K9 ["Schema"]
       41 GETTABLEKS                       R10 R10 K10 ["PickerId"]
       43 SETLIST                          R8 R9 2 [1]
       45 CALL                             R6 2 1
       46 GETUPVAL                         R7 6
       47 MOVE                             R8 R6
       48 CALL                             R7 1 1
       49 GETUPVAL                         R8 0
       50 GETTABLEKS                       R8 R8 K11 ["useCallback"]
       52 NEWCLOSURE                       R9 P1
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R6
       55 NEWTABLE                         R10 0 2
       57 GETTABLEKS                       R11 R0 K9 ["Schema"]
       59 GETTABLEKS                       R11 R11 K12 ["OnActivated"]
       61 MOVE                             R12 R6
       62 SETLIST                          R10 R11 2 [1]
       64 CALL                             R8 2 1
       65 GETTABLEKS                       R11 R0 K13 ["Value"]
       67 FASTCALL1                        TYPEOF R11 ; [+2]
       68 GETIMPORT                        R10 K15 [typeof]
       70 CALL                             R10 1 1
       71 JUMPIFNOTEQKS                    R10 K16 ["number"] ; [+4]
       73 GETTABLEKS                       R9 R0 K13 ["Value"]
       75 JUMP                             ; [+1]
       76 LOADNIL                          R9
       77 JUMPIFNOTEQKNIL                  R9 ; [+3]
       79 LOADNIL                          R10
       80 JUMP                             ; [+13]
       81 MOVE                             R11 R1
       82 LOADNIL                          R12
       83 LOADNIL                          R13
       84 FORGPREP                         R11
       85 GETTABLEKS                       R16 R15 K17 ["slotIndex"]
       87 JUMPIFNOTEQ                      R16 R9 ; [+3]
       89 MOVE                             R10 R15
       90 JUMP                             ; [+3]
       91 FORGLOOP                         R11 2 ; [-7]
       93 LOADNIL                          R10
       94 JUMPIFNOT                        R10 ; [+32]
       95 GETTABLEKS                       R13 R0 K9 ["Schema"]
       97 GETTABLEKS                       R14 R10 K18 ["baseMaterial"]
       99 GETIMPORT                        R15 K22 [Enum.Material.Air]
      101 JUMPIFNOTEQ                      R14 R15 ; [+8]
      103 GETTABLEKS                       R14 R13 K23 ["AllowAir"]
      105 JUMPIFEQKB                       R14 TRUE ; [+2]
      107 LOADB                            R12 0 +1
      108 LOADB                            R12 1
      109 JUMP                             ; [+14]
      110 GETTABLEKS                       R14 R10 K18 ["baseMaterial"]
      112 GETIMPORT                        R15 K25 [Enum.Material.Water]
      114 JUMPIFNOTEQ                      R14 R15 ; [+8]
      116 GETTABLEKS                       R14 R13 K26 ["AllowWater"]
      118 JUMPIFNOTEQKB                    R14 FALSE ; [+2]
      120 LOADB                            R12 0 +1
      121 LOADB                            R12 1
      122 JUMP                             ; [+1]
      123 LOADB                            R12 1
      124 JUMPIFNOT                        R12 ; [+2]
      125 MOVE                             R11 R10
      126 JUMP                             ; [+1]
      127 LOADNIL                          R11
      128 GETUPVAL                         R12 0
      129 GETTABLEKS                       R12 R12 K27 ["useEffect"]
      131 NEWCLOSURE                       R13 P2
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R0
      136 NEWTABLE                         R14 0 3
      138 GETTABLEKS                       R15 R0 K9 ["Schema"]
      140 GETTABLEKS                       R15 R15 K28 ["OnClear"]
      142 MOVE                             R16 R10
      143 MOVE                             R17 R9
      144 SETLIST                          R14 R15 3 [1]
      146 CALL                             R12 2 0
      147 LOADNIL                          R12
      148 LOADNIL                          R13
      149 LOADNIL                          R14
      150 JUMPIFNOT                        R11 ; [+25]
      151 GETUPVAL                         R18 7
      152 GETTABLEKS                       R18 R18 K29 ["getMaterialPreviewOverride"]
      154 GETTABLEKS                       R19 R11 K18 ["baseMaterial"]
      156 CALL                             R18 1 1
      157 JUMPIFNOT                        R18 ; [+7]
      158 GETTABLEKS                       R15 R18 K30 ["material"]
      160 GETTABLEKS                       R16 R18 K31 ["color"]
      162 GETTABLEKS                       R17 R18 K32 ["transparency"]
      164 JUMP                             ; [+8]
      165 GETTABLEKS                       R15 R11 K33 ["resolvedVariant"]
      167 JUMPIF                           R15 ; [+2]
      168 GETTABLEKS                       R15 R11 K18 ["baseMaterial"]
      170 GETTABLEKS                       R16 R11 K31 ["color"]
      172 LOADNIL                          R17
      173 MOVE                             R12 R15
      174 MOVE                             R13 R16
      175 MOVE                             R14 R17
      176 GETUPVAL                         R15 0
      177 GETTABLEKS                       R15 R15 K34 ["createElement"]
      179 GETUPVAL                         R16 8
      180 DUPTABLE                         R17 K49 [{["backgroundStyle"], ["cursor"], ["isDisabled"], ["onActivated"], ["padding"], ["ref"], ["selection"], ["stateLayer"], ["stroke"], ["Size"], ["tag"] = "row align-y-center gap-xsmall radius-small clip", ["testId"] = "terrain-material-picker"}]
      181 GETTABLEKS                       R18 R3 K50 ["Color"]
      183 GETTABLEKS                       R18 R18 K51 ["Shift"]
      185 GETTABLEKS                       R18 R18 K52 ["Shift_200"]
      187 SETTABLEKS                       R18 R17 K35 ["backgroundStyle"]
      189 DUPTABLE                         R18 K56 [{"radius", "offset", "borderWidth"}]
      190 GETIMPORT                        R19 K59 [UDim.new]
      192 LOADN                            R20 0
      193 GETTABLEKS                       R21 R3 K60 ["Radius"]
      195 GETTABLEKS                       R21 R21 K61 ["Small"]
      197 CALL                             R19 2 1
      198 SETTABLEKS                       R19 R18 K53 ["radius"]
      200 GETTABLEKS                       R20 R3 K62 ["Stroke"]
      202 GETTABLEKS                       R20 R20 K63 ["Thick"]
      204 MINUS                            R19 R20
      205 SETTABLEKS                       R19 R18 K54 ["offset"]
      207 GETTABLEKS                       R19 R3 K62 ["Stroke"]
      209 GETTABLEKS                       R19 R19 K63 ["Thick"]
      211 SETTABLEKS                       R19 R18 K55 ["borderWidth"]
      213 SETTABLEKS                       R18 R17 K36 ["cursor"]
      215 GETTABLEKS                       R18 R0 K64 ["Disabled"]
      217 SETTABLEKS                       R18 R17 K37 ["isDisabled"]
      219 GETTABLEKS                       R19 R0 K64 ["Disabled"]
      221 JUMPIFNOT                        R19 ; [+2]
      222 LOADNIL                          R18
      223 JUMP                             ; [+1]
      224 MOVE                             R18 R8
      225 SETTABLEKS                       R18 R17 K38 ["onActivated"]
      227 DUPTABLE                         R18 K67 [{"left", "right"}]
      228 GETIMPORT                        R19 K59 [UDim.new]
      230 LOADN                            R20 0
      231 GETTABLEKS                       R21 R3 K44 ["Size"]
      233 GETTABLEKS                       R21 R21 K68 ["Size_150"]
      235 CALL                             R19 2 1
      236 SETTABLEKS                       R19 R18 K65 ["left"]
      238 GETIMPORT                        R19 K59 [UDim.new]
      240 LOADN                            R20 0
      241 GETTABLEKS                       R21 R3 K44 ["Size"]
      243 GETTABLEKS                       R21 R21 K68 ["Size_150"]
      245 CALL                             R19 2 1
      246 SETTABLEKS                       R19 R18 K66 ["right"]
      248 SETTABLEKS                       R18 R17 K39 ["padding"]
      250 SETTABLEKS                       R7 R17 K40 ["ref"]
      252 DUPTABLE                         R18 K70 [{"Selectable"}]
      253 GETTABLEKS                       R20 R0 K64 ["Disabled"]
      255 NOT                              R19 R20
      256 SETTABLEKS                       R19 R18 K69 ["Selectable"]
      258 SETTABLEKS                       R18 R17 K41 ["selection"]
      260 DUPTABLE                         R18 K72 [{"affordance"}]
      261 GETUPVAL                         R19 3
      262 GETTABLEKS                       R19 R19 K73 ["Enums"]
      264 GETTABLEKS                       R19 R19 K74 ["StateLayerAffordance"]
      266 GETTABLEKS                       R19 R19 K75 ["Background"]
      268 SETTABLEKS                       R19 R18 K71 ["affordance"]
      270 SETTABLEKS                       R18 R17 K42 ["stateLayer"]
      272 DUPTABLE                         R18 K78 [{"Color", "Transparency", "Thickness"}]
      273 GETTABLEKS                       R19 R3 K50 ["Color"]
      275 GETTABLEKS                       R19 R19 K62 ["Stroke"]
      277 GETTABLEKS                       R19 R19 K79 ["Emphasis"]
      279 GETTABLEKS                       R19 R19 K80 ["Color3"]
      281 SETTABLEKS                       R19 R18 K50 ["Color"]
      283 GETTABLEKS                       R19 R3 K50 ["Color"]
      285 GETTABLEKS                       R19 R19 K62 ["Stroke"]
      287 GETTABLEKS                       R19 R19 K79 ["Emphasis"]
      289 GETTABLEKS                       R19 R19 K76 ["Transparency"]
      291 SETTABLEKS                       R19 R18 K76 ["Transparency"]
      293 GETTABLEKS                       R19 R3 K62 ["Stroke"]
      295 GETTABLEKS                       R19 R19 K81 ["Standard"]
      297 SETTABLEKS                       R19 R18 K77 ["Thickness"]
      299 SETTABLEKS                       R18 R17 K43 ["stroke"]
      301 GETIMPORT                        R18 K83 [UDim2.new]
      303 LOADN                            R19 1
      304 LOADN                            R20 0
      305 LOADN                            R21 0
      306 GETTABLEKS                       R22 R3 K44 ["Size"]
      308 GETTABLEKS                       R22 R22 K84 ["Size_600"]
      310 CALL                             R18 4 1
      311 SETTABLEKS                       R18 R17 K44 ["Size"]
      313 DUPTABLE                         R18 K88 [{"Preview", "Label", "Chevron"}]
      314 JUMPIFNOT                        R11 ; [+55]
      315 GETUPVAL                         R19 0
      316 GETTABLEKS                       R19 R19 K34 ["createElement"]
      318 GETUPVAL                         R20 8
      319 DUPTABLE                         R21 K92 [{["LayoutOrder"], ["Size"], ["tag"] = "radius-xsmall clip", ["testId"] = "terrain-material-picker-preview"}]
      320 MOVE                             R22 R5
      321 CALL                             R22 0 1
      322 SETTABLEKS                       R22 R21 K89 ["LayoutOrder"]
      324 GETIMPORT                        R22 K94 [UDim2.fromOffset]
      326 LOADN                            R23 18
      327 LOADN                            R24 18
      328 CALL                             R22 2 1
      329 SETTABLEKS                       R22 R21 K44 ["Size"]
      331 DUPTABLE                         R22 K95 [{"Material"}]
      332 GETUPVAL                         R23 0
      333 GETTABLEKS                       R23 R23 K34 ["createElement"]
      335 GETUPVAL                         R24 9
      336 DUPTABLE                         R25 K105 [{["CornerRadius"], ["InitialDistance"] = 4.12, ["Material"], ["MaterialPreviewGeometryType"], ["OverrideColor"], ["OverrideTransparency"], ["Size"], ["Static"] = True, ["Transparent"] = True}]
      337 GETIMPORT                        R26 K59 [UDim.new]
      339 LOADN                            R27 0
      340 GETTABLEKS                       R28 R3 K60 ["Radius"]
      342 GETTABLEKS                       R28 R28 K106 ["XSmall"]
      344 CALL                             R26 2 1
      345 SETTABLEKS                       R26 R25 K96 ["CornerRadius"]
      347 SETTABLEKS                       R12 R25 K20 ["Material"]
      349 GETUPVAL                         R26 10
      350 GETTABLEKS                       R26 R26 K107 ["CubeCornerOn"]
      352 SETTABLEKS                       R26 R25 K99 ["MaterialPreviewGeometryType"]
      354 SETTABLEKS                       R13 R25 K100 ["OverrideColor"]
      356 SETTABLEKS                       R14 R25 K101 ["OverrideTransparency"]
      358 GETIMPORT                        R26 K109 [UDim2.fromScale]
      360 LOADN                            R27 1
      361 LOADN                            R28 1
      362 CALL                             R26 2 1
      363 SETTABLEKS                       R26 R25 K44 ["Size"]
      365 CALL                             R23 2 1
      366 SETTABLEKS                       R23 R22 K20 ["Material"]
      368 CALL                             R19 3 1
      369 JUMP                             ; [+1]
      370 LOADNIL                          R19
      371 SETTABLEKS                       R19 R18 K85 ["Preview"]
      373 GETUPVAL                         R19 0
      374 GETTABLEKS                       R19 R19 K34 ["createElement"]
      376 GETUPVAL                         R20 11
      377 DUPTABLE                         R21 K114 [{["LayoutOrder"], ["Text"], ["TextTruncate"], ["TextXAlignment"], ["tag"], ["testId"] = "terrain-material-picker-label"}]
      378 MOVE                             R22 R5
      379 CALL                             R22 0 1
      380 SETTABLEKS                       R22 R21 K89 ["LayoutOrder"]
      382 JUMPIFNOT                        R11 ; [+3]
      383 GETTABLEKS                       R22 R11 K115 ["displayName"]
      385 JUMP                             ; [+1]
      386 LOADK                            R22 K116 [""]
      387 SETTABLEKS                       R22 R21 K110 ["Text"]
      389 GETIMPORT                        R22 K118 [Enum.TextTruncate.AtEnd]
      391 SETTABLEKS                       R22 R21 K111 ["TextTruncate"]
      393 GETIMPORT                        R22 K120 [Enum.TextXAlignment.Left]
      395 SETTABLEKS                       R22 R21 K112 ["TextXAlignment"]
      397 NEWTABLE                         R22 4 0
      399 LOADB                            R23 1
      400 SETTABLEKS                       R23 R22 K121 ["grow size-0-full text-body-small text-align-x-left text-truncate-end"]
      402 JUMPIFNOTEQKNIL                  R11 ; [+2]
      404 LOADB                            R23 0 +1
      405 LOADB                            R23 1
      406 SETTABLEKS                       R23 R22 K122 ["content-emphasis"]
      408 JUMPIFEQKNIL                     R11 ; [+2]
      410 LOADB                            R23 0 +1
      411 LOADB                            R23 1
      412 SETTABLEKS                       R23 R22 K123 ["content-muted"]
      414 SETTABLEKS                       R22 R21 K45 ["tag"]
      416 CALL                             R19 2 1
      417 SETTABLEKS                       R19 R18 K86 ["Label"]
      419 GETUPVAL                         R19 0
      420 GETTABLEKS                       R19 R19 K34 ["createElement"]
      422 GETUPVAL                         R20 12
      423 DUPTABLE                         R21 K127 [{["LayoutOrder"], ["name"], ["size"], ["testId"] = "terrain-material-picker-chevron"}]
      424 MOVE                             R22 R5
      425 CALL                             R22 0 1
      426 SETTABLEKS                       R22 R21 K89 ["LayoutOrder"]
      428 GETUPVAL                         R22 3
      429 GETTABLEKS                       R22 R22 K73 ["Enums"]
      431 GETTABLEKS                       R22 R22 K128 ["IconName"]
      433 GETTABLEKS                       R22 R22 K129 ["ChevronLargeDown"]
      435 SETTABLEKS                       R22 R21 K124 ["name"]
      437 GETUPVAL                         R22 3
      438 GETTABLEKS                       R22 R22 K73 ["Enums"]
      440 GETTABLEKS                       R22 R22 K130 ["IconSize"]
      442 GETTABLEKS                       R22 R22 K106 ["XSmall"]
      444 SETTABLEKS                       R22 R21 K125 ["size"]
      446 CALL                             R19 2 1
      447 SETTABLEKS                       R19 R18 K87 ["Chevron"]
      449 CALL                             R15 3 -1
      450 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["MaterialFramework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Packages"]
       46 GETTABLEKS                       R7 R7 K12 ["StudioFoundation"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Packages"]
       53 GETTABLEKS                       R8 R8 K13 ["TerrainPalette"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K14 ["Src"]
       60 GETTABLEKS                       R9 R9 K15 ["Contexts"]
       62 GETTABLEKS                       R9 R9 K16 ["TerrainMaterialCatalogContext"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R9 R2 K17 ["ContextServices"]
       67 GETTABLEKS                       R10 R6 K18 ["Util"]
       69 GETTABLEKS                       R10 R10 K19 ["StudioUri"]
       71 GETTABLEKS                       R11 R6 K20 ["Hooks"]
       73 GETTABLEKS                       R11 R11 K21 ["useWidgetRef"]
       75 GETTABLEKS                       R12 R1 K22 ["Icon"]
       77 GETTABLEKS                       R13 R3 K23 ["Components"]
       79 GETTABLEKS                       R13 R13 K24 ["MaterialPreview"]
       81 GETTABLEKS                       R14 R3 K25 ["Enums"]
       83 GETTABLEKS                       R14 R14 K26 ["MaterialPreviewGeometryType"]
       85 GETTABLEKS                       R15 R1 K27 ["Text"]
       87 GETTABLEKS                       R16 R1 K28 ["View"]
       89 GETTABLEKS                       R17 R5 K29 ["createNextOrder"]
       91 DUPCLOSURE                       R18 K30 [PROTO_0]
       92 DUPCLOSURE                       R19 K31 [PROTO_1]
       93 DUPCLOSURE                       R20 K32 [PROTO_2]
       94 CAPTURE                          VAL R7
       95 DUPCLOSURE                       R21 K33 [PROTO_6]
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R17
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R16
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R12
      109 RETURN                           R21 1
