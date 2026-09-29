PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["use"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
        7 GETTABLEKS                       R3 R3 K2 ["Creator"]
        9 JUMPIFNOTEQ                      R1 R3 ; [+11]
       11 GETTABLEKS                       R4 R0 K3 ["Name"]
       13 JUMPIFEQKS                       R4 K4 [""] ; [+4]
       15 GETTABLEKS                       R3 R0 K3 ["Name"]
       17 RETURN                           R3 1
       18 GETTABLEKS                       R3 R0 K5 ["Id"]
       20 RETURN                           R3 1
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       24 GETTABLEKS                       R3 R3 K6 ["Modified"]
       26 JUMPIFEQ                         R1 R3 ; [+8]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       31 GETTABLEKS                       R3 R3 K7 ["Created"]
       33 JUMPIFNOTEQ                      R1 R3 ; [+15]
       35 JUMPIFNOTEQKN                    R0 K8 [0] ; [+3]
       37 LOADK                            R3 K9 ["--"]
       38 RETURN                           R3 1
       39 GETIMPORT                        R3 K12 [DateTime.fromUnixTimestampMillis]
       41 MOVE                             R4 R0
       42 CALL                             R3 1 1
       43 LOADK                            R6 K13 ["lll"]
       44 LOADK                            R7 K14 ["en-us"]
       45 NAMECALL                         R4 R3 K15 ["FormatLocalTime"]
       47 CALL                             R4 3 -1
       48 RETURN                           R4 -1
       49 GETUPVAL                         R3 1
       50 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       52 GETTABLEKS                       R3 R3 K16 ["AssetType"]
       54 JUMPIFNOTEQ                      R1 R3 ; [+7]
       56 LOADK                            R5 K16 ["AssetType"]
       57 MOVE                             R6 R0
       58 NAMECALL                         R3 R2 K17 ["getText"]
       60 CALL                             R3 3 -1
       61 RETURN                           R3 -1
       62 GETUPVAL                         R3 1
       63 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       65 GETTABLEKS                       R3 R3 K18 ["Source"]
       67 JUMPIFNOTEQ                      R1 R3 ; [+7]
       69 LOADK                            R5 K19 ["AssetSource"]
       70 MOVE                             R6 R0
       71 NAMECALL                         R3 R2 K17 ["getText"]
       73 CALL                             R3 3 -1
       74 RETURN                           R3 -1
       75 GETUPVAL                         R3 1
       76 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       78 GETTABLEKS                       R3 R3 K20 ["AssetId"]
       80 JUMPIFNOTEQ                      R1 R3 ; [+7]
       82 JUMPIFNOTEQKN                    R0 K8 [0] ; [+5]
       84 GETUPVAL                         R3 2
       85 GETTABLEKS                       R3 R3 K21 ["PlaceholderText"]
       87 RETURN                           R3 1
       88 FASTCALL1                        TOSTRING R0 ; [+3]
       89 MOVE                             R4 R0
       90 GETIMPORT                        R3 K23 [tostring]
       92 CALL                             R3 1 1
       93 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 1
        3 GETUPVAL                         R2 1
        4 SETLIST                          R1 R2 1 [1]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K0 ["sendItemInteractionEvent"]
       10 DUPTABLE                         R1 K4 [{"itemId", "itemType", "interaction"}]
       11 GETUPVAL                         R2 3
       12 SETTABLEKS                       R2 R1 K1 ["itemId"]
       14 GETUPVAL                         R2 4
       15 SETTABLEKS                       R2 R1 K2 ["itemType"]
       17 GETUPVAL                         R2 5
       18 GETTABLEKS                       R2 R2 K5 ["ItemInteraction"]
       20 GETTABLEKS                       R2 R2 K6 ["CopyAssetId"]
       22 SETTABLEKS                       R2 R1 K3 ["interaction"]
       24 GETUPVAL                         R2 6
       25 CALL                             R0 2 0
       26 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R6 0 0
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R7 R7 K0 ["use"]
        5 CALL                             R7 0 1
        6 GETUPVAL                         R8 1
        7 CALL                             R8 0 2
        8 GETUPVAL                         R10 2
        9 CALL                             R10 0 1
       10 GETUPVAL                         R11 3
       11 GETTABLEKS                       R11 R11 K1 ["useRef"]
       13 LOADNIL                          R12
       14 CALL                             R11 1 1
       15 GETUPVAL                         R12 4
       16 MOVE                             R13 R11
       17 CALL                             R12 1 1
       18 GETUPVAL                         R13 3
       19 GETTABLEKS                       R13 R13 K1 ["useRef"]
       21 LOADNIL                          R14
       22 CALL                             R13 1 1
       23 GETUPVAL                         R14 4
       24 MOVE                             R15 R13
       25 CALL                             R14 1 1
       26 GETTABLEKS                       R15 R0 K2 ["ParentScope"]
       28 GETTABLEKS                       R15 R15 K3 ["Uid"]
       30 GETTABLEKS                       R16 R0 K4 ["ItemPath"]
       32 GETTABLEKS                       R19 R10 K5 ["ListRowHeight"]
       34 GETUPVAL                         R20 5
       35 GETTABLEKS                       R20 R20 K6 ["ListThumbnailContainerScale"]
       37 MUL                              R18 R19 R20
       38 FASTCALL1                        MATH_FLOOR R18 ; [+2]
       39 GETIMPORT                        R17 K9 [math.floor]
       41 CALL                             R17 1 1
       42 MOVE                             R18 R8
       43 LOADNIL                          R19
       44 LOADNIL                          R20
       45 FORGPREP                         R18
       46 MOVE                             R25 R15
       47 MOVE                             R26 R16
       48 MOVE                             R27 R22
       49 NAMECALL                         R23 R1 K10 ["getItemField"]
       51 CALL                             R23 4 1
       52 JUMPIFNOT                        R23 ; [+5]
       53 GETUPVAL                         R24 6
       54 MOVE                             R25 R23
       55 MOVE                             R26 R22
       56 CALL                             R24 2 1
       57 JUMP                             ; [+3]
       58 GETUPVAL                         R24 7
       59 GETTABLEKS                       R24 R24 K11 ["PlaceholderText"]
       61 GETTABLE                         R25 R9 R21
       62 GETTABLEKS                       R25 R25 K12 ["Offset"]
       64 GETUPVAL                         R27 8
       65 MOVE                             R28 R24
       66 CALL                             R27 1 1
       67 GETTABLEKS                       R27 R27 K13 ["X"]
       69 GETUPVAL                         R30 9
       70 LOADK                            R32 K15 ["CellContentPadding"]
       71 NAMECALL                         R30 R30 K16 ["GetAttribute"]
       73 CALL                             R30 2 1
       74 MULK                             R29 R30 K14 [2]
       75 SUB                              R28 R25 R29
       76 JUMPIFLT                         R28 R27 ; [+2]
       78 LOADB                            R26 0 +1
       79 LOADB                            R26 1
       80 MOVE                             R29 R15
       81 MOVE                             R30 R16
       82 GETUPVAL                         R31 10
       83 GETTABLEKS                       R31 R31 K17 ["AssetInfoField"]
       85 GETTABLEKS                       R31 R31 K18 ["AssetType"]
       87 NAMECALL                         R27 R1 K10 ["getItemField"]
       89 CALL                             R27 4 1
       90 MOVE                             R30 R15
       91 MOVE                             R31 R16
       92 GETUPVAL                         R32 10
       93 GETTABLEKS                       R32 R32 K17 ["AssetInfoField"]
       95 GETTABLEKS                       R32 R32 K19 ["AssetId"]
       97 NAMECALL                         R28 R1 K10 ["getItemField"]
       99 CALL                             R28 4 1
      100 JUMPIFNOTEQKN                    R21 K20 [1] ; [+239]
      102 MOVE                             R31 R15
      103 MOVE                             R32 R16
      104 GETUPVAL                         R33 10
      105 GETTABLEKS                       R33 R33 K17 ["AssetInfoField"]
      107 GETTABLEKS                       R33 R33 K21 ["IsPackage"]
      109 NAMECALL                         R29 R1 K10 ["getItemField"]
      111 CALL                             R29 4 1
      112 MOVE                             R32 R15
      113 MOVE                             R33 R16
      114 GETUPVAL                         R34 10
      115 GETTABLEKS                       R34 R34 K17 ["AssetInfoField"]
      117 GETTABLEKS                       R34 R34 K22 ["ModerationStatus"]
      119 NAMECALL                         R30 R1 K10 ["getItemField"]
      121 CALL                             R30 4 1
      122 SUB                              R32 R25 R17
      123 GETUPVAL                         R33 9
      124 LOADK                            R35 K15 ["CellContentPadding"]
      125 NAMECALL                         R33 R33 K16 ["GetAttribute"]
      127 CALL                             R33 2 1
      128 SUB                              R31 R32 R33
      129 GETUPVAL                         R33 10
      130 GETTABLEKS                       R33 R33 K22 ["ModerationStatus"]
      132 GETTABLEKS                       R33 R33 K23 ["Rejected"]
      134 JUMPIFEQ                         R30 R33 ; [+2]
      136 LOADB                            R32 0 +1
      137 LOADB                            R32 1
      138 LOADNIL                          R33
      139 MOVE                             R34 R31
      140 JUMPIFNOT                        R32 ; [+15]
      141 GETUPVAL                         R35 3
      142 GETTABLEKS                       R35 R35 K24 ["createElement"]
      144 GETUPVAL                         R36 11
      145 DUPTABLE                         R37 K27 [{["LayoutOrder"] = 2, ["AssetId"], ["AssetPath"]}]
      146 SETTABLEKS                       R28 R37 K19 ["AssetId"]
      148 SETTABLEKS                       R16 R37 K26 ["AssetPath"]
      150 CALL                             R35 2 1
      151 MOVE                             R33 R35
      152 GETUPVAL                         R35 5
      153 GETTABLEKS                       R35 R35 K28 ["IconWidth"]
      155 SUB                              R34 R34 R35
      156 GETUPVAL                         R35 3
      157 GETTABLEKS                       R35 R35 K24 ["createElement"]
      159 GETUPVAL                         R36 12
      160 GETTABLEKS                       R36 R36 K29 ["Text"]
      162 DUPTABLE                         R37 K34 [{["LayoutOrder"] = 1, ["Text"], ["Size"], ["ref"], ["tag"] = "auto-y padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      163 SETTABLEKS                       R24 R37 K29 ["Text"]
      165 GETIMPORT                        R38 K37 [UDim2.fromOffset]
      167 MOVE                             R39 R34
      168 LOADN                            R40 0
      169 CALL                             R38 2 1
      170 SETTABLEKS                       R38 R37 K30 ["Size"]
      172 SETTABLEKS                       R4 R37 K31 ["ref"]
      174 CALL                             R35 2 1
      175 GETUPVAL                         R36 3
      176 GETTABLEKS                       R36 R36 K24 ["createElement"]
      178 GETUPVAL                         R37 12
      179 GETTABLEKS                       R37 R37 K38 ["View"]
      181 DUPTABLE                         R38 K40 [{["LayoutOrder"], ["Size"], ["tag"] = "row align-x-left align-y-center padding-left-small"}]
      182 SETTABLEKS                       R21 R38 K25 ["LayoutOrder"]
      184 GETIMPORT                        R39 K42 [UDim2.new]
      186 LOADN                            R40 0
      187 MOVE                             R41 R25
      188 LOADN                            R42 1
      189 LOADN                            R43 0
      190 CALL                             R39 4 1
      191 SETTABLEKS                       R39 R38 K30 ["Size"]
      193 DUPTABLE                         R39 K45 [{"ThumbnailContainer", "AssetName"}]
      194 GETUPVAL                         R40 3
      195 GETTABLEKS                       R40 R40 K24 ["createElement"]
      197 GETUPVAL                         R41 12
      198 GETTABLEKS                       R41 R41 K38 ["View"]
      200 DUPTABLE                         R42 K46 [{["LayoutOrder"] = 1, ["Size"], ["ref"], ["tag"]}]
      201 GETIMPORT                        R43 K37 [UDim2.fromOffset]
      203 MOVE                             R44 R17
      204 MOVE                             R45 R17
      205 CALL                             R43 2 1
      206 SETTABLEKS                       R43 R42 K30 ["Size"]
      208 SETTABLEKS                       R11 R42 K31 ["ref"]
      210 NEWTABLE                         R43 1 0
      212 LOADB                            R44 1
      213 SETTABLEKS                       R44 R43 K47 ["bg-foreground-contrast radius-small"]
      215 SETTABLEKS                       R43 R42 K32 ["tag"]
      217 DUPTABLE                         R43 K51 [{"Thumbnail", "AudioOverlay", "PackageLinkIcon"}]
      218 GETUPVAL                         R44 3
      219 GETTABLEKS                       R44 R44 K24 ["createElement"]
      221 GETUPVAL                         R45 13
      222 DUPTABLE                         R46 K52 [{"AssetId", "AssetType"}]
      223 SETTABLEKS                       R28 R46 K19 ["AssetId"]
      225 SETTABLEKS                       R27 R46 K18 ["AssetType"]
      227 CALL                             R44 2 1
      228 SETTABLEKS                       R44 R43 K48 ["Thumbnail"]
      230 GETUPVAL                         R45 10
      231 GETTABLEKS                       R45 R45 K18 ["AssetType"]
      233 GETTABLEKS                       R45 R45 K53 ["Audio"]
      235 JUMPIFNOTEQ                      R27 R45 ; [+15]
      237 JUMPIF                           R32 ; [+13]
      238 GETUPVAL                         R44 3
      239 GETTABLEKS                       R44 R44 K24 ["createElement"]
      241 GETUPVAL                         R45 14
      242 DUPTABLE                         R46 K56 [{"AssetId", "IsHovered", "OnRightClick"}]
      243 SETTABLEKS                       R28 R46 K19 ["AssetId"]
      245 SETTABLEKS                       R12 R46 K54 ["IsHovered"]
      247 SETTABLEKS                       R3 R46 K55 ["OnRightClick"]
      249 CALL                             R44 2 1
      250 JUMP                             ; [+1]
      251 LOADNIL                          R44
      252 SETTABLEKS                       R44 R43 K49 ["AudioOverlay"]
      254 JUMPIFNOT                        R29 ; [+6]
      255 GETUPVAL                         R44 3
      256 GETTABLEKS                       R44 R44 K24 ["createElement"]
      258 GETUPVAL                         R45 15
      259 CALL                             R44 1 1
      260 JUMP                             ; [+1]
      261 LOADNIL                          R44
      262 SETTABLEKS                       R44 R43 K50 ["PackageLinkIcon"]
      264 CALL                             R40 3 1
      265 SETTABLEKS                       R40 R39 K43 ["ThumbnailContainer"]
      267 GETUPVAL                         R40 3
      268 GETTABLEKS                       R40 R40 K24 ["createElement"]
      270 GETUPVAL                         R41 12
      271 GETTABLEKS                       R41 R41 K38 ["View"]
      273 DUPTABLE                         R42 K58 [{["LayoutOrder"] = 2, ["tag"] = "row align-x-left align-y-center", ["Size"]}]
      274 GETIMPORT                        R43 K42 [UDim2.new]
      276 LOADN                            R44 0
      277 MOVE                             R45 R31
      278 LOADN                            R46 1
      279 LOADN                            R47 0
      280 CALL                             R43 4 1
      281 SETTABLEKS                       R43 R42 K30 ["Size"]
      283 DUPTABLE                         R43 K61 [{"Name", "State"}]
      284 JUMPIFNOT                        R2 ; [+22]
      285 GETUPVAL                         R44 3
      286 GETTABLEKS                       R44 R44 K24 ["createElement"]
      288 GETUPVAL                         R45 16
      289 DUPTABLE                         R46 K64 [{["LayoutOrder"] = 1, ["InitialText"], ["ItemType"], ["ItemPath"], ["Size"]}]
      290 SETTABLEKS                       R24 R46 K62 ["InitialText"]
      292 SETTABLEKS                       R27 R46 K63 ["ItemType"]
      294 SETTABLEKS                       R16 R46 K4 ["ItemPath"]
      296 GETIMPORT                        R47 K42 [UDim2.new]
      298 LOADN                            R48 0
      299 MOVE                             R49 R34
      300 LOADN                            R50 1
      301 LOADN                            R51 0
      302 CALL                             R47 4 1
      303 SETTABLEKS                       R47 R46 K30 ["Size"]
      305 CALL                             R44 2 1
      306 JUMP                             ; [+23]
      307 JUMPIFNOT                        R26 ; [+21]
      308 GETUPVAL                         R44 3
      309 GETTABLEKS                       R44 R44 K24 ["createElement"]
      311 GETUPVAL                         R45 12
      312 GETTABLEKS                       R45 R45 K65 ["Tooltip"]
      314 DUPTABLE                         R46 K68 [{["LayoutOrder"] = 1, ["title"], ["side"]}]
      315 SETTABLEKS                       R24 R46 K66 ["title"]
      317 GETUPVAL                         R47 12
      318 GETTABLEKS                       R47 R47 K69 ["Enums"]
      320 GETTABLEKS                       R47 R47 K70 ["PopoverSide"]
      322 GETTABLEKS                       R47 R47 K71 ["Bottom"]
      324 SETTABLEKS                       R47 R46 K67 ["side"]
      326 MOVE                             R47 R35
      327 CALL                             R44 3 1
      328 JUMP                             ; [+1]
      329 MOVE                             R44 R35
      330 SETTABLEKS                       R44 R43 K59 ["Name"]
      332 SETTABLEKS                       R33 R43 K60 ["State"]
      334 CALL                             R40 3 1
      335 SETTABLEKS                       R40 R39 K44 ["AssetName"]
      337 CALL                             R36 3 1
      338 SETTABLE                         R36 R6 R21
      339 JUMP                             ; [+195]
      340 GETUPVAL                         R29 17
      341 CALL                             R29 0 1
      342 JUMPIFNOT                        R29 ; [+126]
      343 GETUPVAL                         R29 10
      344 GETTABLEKS                       R29 R29 K17 ["AssetInfoField"]
      346 GETTABLEKS                       R29 R29 K19 ["AssetId"]
      348 JUMPIFNOTEQ                      R22 R29 ; [+120]
      350 MOVE                             R29 R14
      351 JUMPIFNOT                        R29 ; [+7]
      352 LOADB                            R29 0
      353 JUMPIFEQKNIL                     R23 ; [+5]
      355 JUMPIFNOTEQKN                    R23 K72 [0] ; [+2]
      357 LOADB                            R29 0 +1
      358 LOADB                            R29 1
      359 GETUPVAL                         R30 3
      360 GETTABLEKS                       R30 R30 K24 ["createElement"]
      362 GETUPVAL                         R31 12
      363 GETTABLEKS                       R31 R31 K38 ["View"]
      365 DUPTABLE                         R32 K74 [{["LayoutOrder"], ["Size"], ["ref"], ["tag"] = "row align-x-left align-y-center gap-xsmall"}]
      366 SETTABLEKS                       R21 R32 K25 ["LayoutOrder"]
      368 GETIMPORT                        R33 K42 [UDim2.new]
      370 LOADN                            R34 0
      371 MOVE                             R35 R25
      372 LOADN                            R36 1
      373 LOADN                            R37 0
      374 CALL                             R33 4 1
      375 SETTABLEKS                       R33 R32 K30 ["Size"]
      377 SETTABLEKS                       R13 R32 K31 ["ref"]
      379 DUPTABLE                         R33 K76 [{"Text", "CopyIdButton"}]
      380 GETUPVAL                         R34 3
      381 GETTABLEKS                       R34 R34 K24 ["createElement"]
      383 GETUPVAL                         R35 12
      384 GETTABLEKS                       R35 R35 K29 ["Text"]
      386 DUPTABLE                         R36 K78 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-x size-0-full shrink padding-left-small text-body-small text-align-x-left text-truncate-end"}]
      387 SETTABLEKS                       R24 R36 K29 ["Text"]
      389 CALL                             R34 2 1
      390 SETTABLEKS                       R34 R33 K29 ["Text"]
      392 JUMPIFNOT                        R29 ; [+70]
      393 GETUPVAL                         R34 3
      394 GETTABLEKS                       R34 R34 K24 ["createElement"]
      396 GETUPVAL                         R35 12
      397 GETTABLEKS                       R35 R35 K65 ["Tooltip"]
      399 DUPTABLE                         R36 K79 [{["LayoutOrder"] = 2, ["title"], ["side"]}]
      400 LOADK                            R39 K80 ["ContextMenu"]
      401 LOADK                            R40 K81 ["CopyIdToClipboard"]
      402 NAMECALL                         R37 R7 K82 ["getText"]
      404 CALL                             R37 3 1
      405 SETTABLEKS                       R37 R36 K66 ["title"]
      407 GETUPVAL                         R37 12
      408 GETTABLEKS                       R37 R37 K69 ["Enums"]
      410 GETTABLEKS                       R37 R37 K70 ["PopoverSide"]
      412 GETTABLEKS                       R37 R37 K71 ["Bottom"]
      414 SETTABLEKS                       R37 R36 K67 ["side"]
      416 GETUPVAL                         R37 3
      417 GETTABLEKS                       R37 R37 K24 ["createElement"]
      419 GETUPVAL                         R38 12
      420 GETTABLEKS                       R38 R38 K83 ["IconButton"]
      422 DUPTABLE                         R39 K90 [{["icon"], ["size"], ["variant"], ["onActivated"], ["testId"] = "copy-asset-id-button"}]
      423 GETUPVAL                         R40 12
      424 GETTABLEKS                       R40 R40 K69 ["Enums"]
      426 GETTABLEKS                       R40 R40 K91 ["IconName"]
      428 GETTABLEKS                       R40 R40 K92 ["TwoStackedSquares"]
      430 SETTABLEKS                       R40 R39 K84 ["icon"]
      432 GETUPVAL                         R40 12
      433 GETTABLEKS                       R40 R40 K69 ["Enums"]
      435 GETTABLEKS                       R40 R40 K93 ["InputSize"]
      437 GETTABLEKS                       R40 R40 K94 ["XSmall"]
      439 SETTABLEKS                       R40 R39 K85 ["size"]
      441 GETUPVAL                         R40 12
      442 GETTABLEKS                       R40 R40 K69 ["Enums"]
      444 GETTABLEKS                       R40 R40 K95 ["ButtonVariant"]
      446 GETTABLEKS                       R40 R40 K96 ["Utility"]
      448 SETTABLEKS                       R40 R39 K86 ["variant"]
      450 NEWCLOSURE                       R40 P0
      451 CAPTURE                          UPVAL U18
      452 CAPTURE                          VAL R23
      453 CAPTURE                          UPVAL U19
      454 CAPTURE                          VAL R28
      455 CAPTURE                          VAL R27
      456 CAPTURE                          UPVAL U20
      457 CAPTURE                          VAL R5
      458 SETTABLEKS                       R40 R39 K87 ["onActivated"]
      460 CALL                             R37 2 -1
      461 CALL                             R34 -1 1
      462 JUMP                             ; [+1]
      463 LOADNIL                          R34
      464 SETTABLEKS                       R34 R33 K75 ["CopyIdButton"]
      466 CALL                             R30 3 1
      467 SETTABLE                         R30 R6 R21
      468 JUMP                             ; [+66]
      469 JUMPIFNOT                        R26 ; [+43]
      470 GETUPVAL                         R29 3
      471 GETTABLEKS                       R29 R29 K24 ["createElement"]
      473 GETUPVAL                         R30 12
      474 GETTABLEKS                       R30 R30 K65 ["Tooltip"]
      476 DUPTABLE                         R31 K97 [{"LayoutOrder", "title", "side"}]
      477 SETTABLEKS                       R21 R31 K25 ["LayoutOrder"]
      479 SETTABLEKS                       R24 R31 K66 ["title"]
      481 GETUPVAL                         R32 12
      482 GETTABLEKS                       R32 R32 K69 ["Enums"]
      484 GETTABLEKS                       R32 R32 K70 ["PopoverSide"]
      486 GETTABLEKS                       R32 R32 K71 ["Bottom"]
      488 SETTABLEKS                       R32 R31 K67 ["side"]
      490 GETUPVAL                         R32 3
      491 GETTABLEKS                       R32 R32 K24 ["createElement"]
      493 GETUPVAL                         R33 12
      494 GETTABLEKS                       R33 R33 K29 ["Text"]
      496 DUPTABLE                         R34 K99 [{["LayoutOrder"], ["Text"], ["Size"], ["tag"] = "padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      497 SETTABLEKS                       R21 R34 K25 ["LayoutOrder"]
      499 SETTABLEKS                       R24 R34 K29 ["Text"]
      501 GETIMPORT                        R35 K42 [UDim2.new]
      503 LOADN                            R36 0
      504 MOVE                             R37 R25
      505 LOADN                            R38 1
      506 LOADN                            R39 0
      507 CALL                             R35 4 1
      508 SETTABLEKS                       R35 R34 K30 ["Size"]
      510 CALL                             R32 2 -1
      511 CALL                             R29 -1 1
      512 JUMP                             ; [+21]
      513 GETUPVAL                         R29 3
      514 GETTABLEKS                       R29 R29 K24 ["createElement"]
      516 GETUPVAL                         R30 12
      517 GETTABLEKS                       R30 R30 K29 ["Text"]
      519 DUPTABLE                         R31 K99 [{["LayoutOrder"], ["Text"], ["Size"], ["tag"] = "padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      520 SETTABLEKS                       R21 R31 K25 ["LayoutOrder"]
      522 SETTABLEKS                       R24 R31 K29 ["Text"]
      524 GETIMPORT                        R32 K42 [UDim2.new]
      526 LOADN                            R33 0
      527 MOVE                             R34 R25
      528 LOADN                            R35 1
      529 LOADN                            R36 0
      530 CALL                             R32 4 1
      531 SETTABLEKS                       R32 R31 K30 ["Size"]
      533 CALL                             R29 2 1
      534 SETTABLE                         R29 R6 R21
      535 FORGLOOP                         R18 2 ; [-490]
      537 RETURN                           R6 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ItemPath"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["UiZone"]
        7 GETTABLEKS                       R3 R3 K2 ["Browser"]
        9 MOVE                             R4 R0
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K3 ["Key"]
       13 GETUPVAL                         R6 3
       14 NAMECALL                         R1 R1 K4 ["handleMouse2Click"]
       16 CALL                             R1 5 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Browser"]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R6 R6 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Down"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Browser"]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R6 R6 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Up"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_6:
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
       13 GETTABLEKS                       R4 R4 K0 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K0 ["use"]
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 5
       21 CALL                             R6 0 1
       22 GETUPVAL                         R7 6
       23 GETTABLEKS                       R8 R0 K1 ["ItemPath"]
       25 CALL                             R7 1 1
       26 GETUPVAL                         R8 7
       27 CALL                             R8 0 1
       28 GETUPVAL                         R9 8
       29 GETTABLEKS                       R9 R9 K2 ["useRef"]
       31 LOADNIL                          R10
       32 CALL                             R9 1 1
       33 GETUPVAL                         R10 8
       34 GETTABLEKS                       R10 R10 K3 ["useState"]
       36 LOADNIL                          R11
       37 CALL                             R10 1 2
       38 GETUPVAL                         R12 9
       39 MOVE                             R13 R9
       40 CALL                             R12 1 1
       41 GETUPVAL                         R13 10
       42 MOVE                             R14 R12
       43 GETTABLEKS                       R15 R0 K1 ["ItemPath"]
       45 CALL                             R13 2 1
       46 GETUPVAL                         R14 11
       47 LOADK                            R15 K4 ["gui-object-defaults row align-x-left align-y-center"]
       48 CALL                             R14 1 1
       49 GETUPVAL                         R15 12
       50 GETUPVAL                         R16 13
       51 GETTABLEKS                       R16 R16 K5 ["MenuContext"]
       53 GETTABLEKS                       R16 R16 K6 ["Asset"]
       55 DUPTABLE                         R17 K9 [{"Path", "Index"}]
       56 GETTABLEKS                       R18 R0 K1 ["ItemPath"]
       58 SETTABLEKS                       R18 R17 K7 ["Path"]
       60 GETTABLEKS                       R18 R0 K10 ["Key"]
       62 SETTABLEKS                       R18 R17 K8 ["Index"]
       64 CALL                             R15 2 1
       65 NEWCLOSURE                       R16 P0
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R1
       68 CAPTURE                          UPVAL U13
       69 CAPTURE                          VAL R15
       70 GETUPVAL                         R17 14
       71 MOVE                             R18 R0
       72 NAMECALL                         R19 R2 K11 ["getItemsCache"]
       74 CALL                             R19 1 1
       75 MOVE                             R20 R7
       76 MOVE                             R21 R16
       77 MOVE                             R22 R11
       78 DUPTABLE                         R23 K16 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
       79 SETTABLEKS                       R3 R23 K12 ["ExplorerController"]
       81 SETTABLEKS                       R4 R23 K13 ["LayoutController"]
       83 SETTABLEKS                       R2 R23 K14 ["ItemsController"]
       85 SETTABLEKS                       R5 R23 K15 ["SearchController"]
       87 CALL                             R17 6 1
       88 GETTABLEKS                       R19 R0 K1 ["ItemPath"]
       90 GETTABLE                         R18 R6 R19
       91 GETUPVAL                         R19 8
       92 GETTABLEKS                       R19 R19 K17 ["createElement"]
       94 GETUPVAL                         R20 15
       95 GETTABLEKS                       R20 R20 K18 ["View"]
       97 DUPTABLE                         R21 K24 [{"LayoutOrder", "Position", "Size", "ref", "tag"}]
       98 GETTABLEKS                       R22 R0 K10 ["Key"]
      100 SETTABLEKS                       R22 R21 K19 ["LayoutOrder"]
      102 GETTABLEKS                       R22 R0 K20 ["Position"]
      104 SETTABLEKS                       R22 R21 K20 ["Position"]
      106 GETIMPORT                        R22 K27 [UDim2.new]
      108 LOADN                            R23 1
      109 LOADN                            R24 0
      110 LOADN                            R25 0
      111 GETTABLEKS                       R26 R8 K28 ["ListRowHeight"]
      113 CALL                             R22 4 1
      114 SETTABLEKS                       R22 R21 K21 ["Size"]
      116 SETTABLEKS                       R9 R21 K22 ["ref"]
      118 NEWTABLE                         R22 8 0
      120 LOADB                            R23 1
      121 SETTABLEKS                       R23 R22 K29 ["auto-x"]
      123 SETTABLEKS                       R18 R22 K30 ["bg-action-soft-emphasis"]
      125 NOT                              R24 R18
      126 AND                              R23 R24 R12
      127 SETTABLEKS                       R23 R22 K31 ["bg-shift-200"]
      129 NOT                              R23 R13
      130 SETTABLEKS                       R23 R22 K32 ["stroke-thin stroke-default"]
      132 SETTABLEKS                       R13 R22 K33 ["stroke-standard stroke-position-inner stroke-system-emphasis"]
      134 SETTABLEKS                       R22 R21 K23 ["tag"]
      136 DUPTABLE                         R22 K36 [{"InputHandler", "InsertOrImportTutorialTooltip"}]
      137 GETUPVAL                         R23 8
      138 GETTABLEKS                       R23 R23 K17 ["createElement"]
      140 LOADK                            R24 K37 ["ImageButton"]
      141 NEWTABLE                         R25 8 0
      143 GETUPVAL                         R26 8
      144 GETTABLEKS                       R26 R26 K38 ["Event"]
      146 GETTABLEKS                       R26 R26 K39 ["MouseButton2Click"]
      148 SETTABLE                         R16 R25 R26
      149 GETUPVAL                         R26 8
      150 GETTABLEKS                       R26 R26 K38 ["Event"]
      152 GETTABLEKS                       R26 R26 K40 ["MouseButton1Down"]
      154 NEWCLOSURE                       R27 P1
      155 CAPTURE                          VAL R1
      156 CAPTURE                          UPVAL U13
      157 CAPTURE                          VAL R0
      158 SETTABLE                         R27 R25 R26
      159 GETUPVAL                         R26 8
      160 GETTABLEKS                       R26 R26 K38 ["Event"]
      162 GETTABLEKS                       R26 R26 K41 ["MouseButton1Up"]
      164 NEWCLOSURE                       R27 P2
      165 CAPTURE                          VAL R1
      166 CAPTURE                          UPVAL U13
      167 CAPTURE                          VAL R0
      168 SETTABLE                         R27 R25 R26
      169 GETIMPORT                        R26 K27 [UDim2.new]
      171 LOADN                            R27 1
      172 LOADN                            R28 0
      173 LOADN                            R29 0
      174 GETTABLEKS                       R30 R8 K28 ["ListRowHeight"]
      176 CALL                             R26 4 1
      177 SETTABLEKS                       R26 R25 K21 ["Size"]
      179 GETUPVAL                         R26 8
      180 GETTABLEKS                       R26 R26 K42 ["Tag"]
      182 SETTABLE                         R14 R25 R26
      183 MOVE                             R26 R17
      184 CALL                             R23 3 1
      185 SETTABLEKS                       R23 R22 K34 ["InputHandler"]
      187 GETTABLEKS                       R24 R0 K10 ["Key"]
      189 JUMPIFNOTEQKN                    R24 K43 [1] ; [+42]
      191 GETUPVAL                         R23 8
      192 GETTABLEKS                       R23 R23 K17 ["createElement"]
      194 GETUPVAL                         R24 16
      195 DUPTABLE                         R25 K49 [{"tutorialId", "stepId", "anchorInstance", "side", "align"}]
      196 GETUPVAL                         R26 13
      197 GETTABLEKS                       R26 R26 K50 ["TutorialId"]
      199 GETTABLEKS                       R26 R26 K51 ["Intro"]
      201 SETTABLEKS                       R26 R25 K44 ["tutorialId"]
      203 GETUPVAL                         R26 13
      204 GETTABLEKS                       R26 R26 K52 ["TutorialStepId"]
      206 GETTABLEKS                       R26 R26 K53 ["InsertOrImport"]
      208 SETTABLEKS                       R26 R25 K45 ["stepId"]
      210 SETTABLEKS                       R10 R25 K46 ["anchorInstance"]
      212 GETUPVAL                         R26 15
      213 GETTABLEKS                       R26 R26 K54 ["Enums"]
      215 GETTABLEKS                       R26 R26 K55 ["PopoverSide"]
      217 GETTABLEKS                       R26 R26 K56 ["Bottom"]
      219 SETTABLEKS                       R26 R25 K47 ["side"]
      221 GETUPVAL                         R26 15
      222 GETTABLEKS                       R26 R26 K54 ["Enums"]
      224 GETTABLEKS                       R26 R26 K57 ["PopoverAlign"]
      226 GETTABLEKS                       R26 R26 K58 ["Center"]
      228 SETTABLEKS                       R26 R25 K48 ["align"]
      230 CALL                             R23 2 1
      231 JUMP                             ; [+1]
      232 LOADNIL                          R23
      233 SETTABLEKS                       R23 R22 K35 ["InsertOrImportTutorialTooltip"]
      235 CALL                             R19 3 -1
      236 RETURN                           R19 -1

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
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Components"]
       38 GETTABLEKS                       R7 R7 K14 ["Shared"]
       40 GETTABLEKS                       R7 R7 K15 ["AudioPreviewOverlay"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K12 ["Src"]
       47 GETTABLEKS                       R8 R8 K13 ["Components"]
       49 GETTABLEKS                       R8 R8 K14 ["Shared"]
       51 GETTABLEKS                       R8 R8 K16 ["EditNameInput"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K12 ["Src"]
       58 GETTABLEKS                       R9 R9 K13 ["Components"]
       60 GETTABLEKS                       R9 R9 K14 ["Shared"]
       62 GETTABLEKS                       R9 R9 K17 ["ItemThumbnail"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K12 ["Src"]
       69 GETTABLEKS                       R10 R10 K13 ["Components"]
       71 GETTABLEKS                       R10 R10 K14 ["Shared"]
       73 GETTABLEKS                       R10 R10 K18 ["PackageLinkIcon"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K12 ["Src"]
       80 GETTABLEKS                       R11 R11 K13 ["Components"]
       82 GETTABLEKS                       R11 R11 K14 ["Shared"]
       84 GETTABLEKS                       R11 R11 K19 ["AssetState"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K12 ["Src"]
       91 GETTABLEKS                       R12 R12 K13 ["Components"]
       93 GETTABLEKS                       R12 R12 K14 ["Shared"]
       95 GETTABLEKS                       R12 R12 K20 ["TutorialTooltip"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K12 ["Src"]
      102 GETTABLEKS                       R13 R13 K21 ["Controllers"]
      104 GETTABLEKS                       R13 R13 K22 ["Input"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K12 ["Src"]
      111 GETTABLEKS                       R14 R14 K21 ["Controllers"]
      113 GETTABLEKS                       R14 R14 K23 ["ItemsController"]
      115 CALL                             R13 1 1
      116 GETIMPORT                        R14 K5 [require]
      118 GETTABLEKS                       R15 R0 K12 ["Src"]
      120 GETTABLEKS                       R15 R15 K21 ["Controllers"]
      122 GETTABLEKS                       R15 R15 K24 ["ExplorerController"]
      124 CALL                             R14 1 1
      125 GETIMPORT                        R15 K5 [require]
      127 GETTABLEKS                       R16 R0 K12 ["Src"]
      129 GETTABLEKS                       R16 R16 K21 ["Controllers"]
      131 GETTABLEKS                       R16 R16 K25 ["LayoutController"]
      133 CALL                             R15 1 1
      134 GETIMPORT                        R16 K5 [require]
      136 GETTABLEKS                       R17 R0 K12 ["Src"]
      138 GETTABLEKS                       R17 R17 K21 ["Controllers"]
      140 GETTABLEKS                       R17 R17 K26 ["SearchController"]
      142 CALL                             R16 1 1
      143 GETTABLEKS                       R17 R2 K27 ["Hooks"]
      145 GETTABLEKS                       R17 R17 K28 ["useStyleTags"]
      147 GETIMPORT                        R18 K5 [require]
      149 GETTABLEKS                       R19 R0 K12 ["Src"]
      151 GETTABLEKS                       R19 R19 K27 ["Hooks"]
      153 GETTABLEKS                       R19 R19 K29 ["useColumns"]
      155 CALL                             R18 1 1
      156 GETIMPORT                        R19 K5 [require]
      158 GETTABLEKS                       R20 R0 K12 ["Src"]
      160 GETTABLEKS                       R20 R20 K27 ["Hooks"]
      162 GETTABLEKS                       R20 R20 K30 ["useContextMenu"]
      164 CALL                             R19 1 1
      165 GETIMPORT                        R20 K5 [require]
      167 GETTABLEKS                       R21 R0 K12 ["Src"]
      169 GETTABLEKS                       R21 R21 K27 ["Hooks"]
      171 GETTABLEKS                       R21 R21 K31 ["useIsEditItem"]
      173 CALL                             R20 1 1
      174 GETIMPORT                        R21 K5 [require]
      176 GETTABLEKS                       R22 R0 K12 ["Src"]
      178 GETTABLEKS                       R22 R22 K27 ["Hooks"]
      180 GETTABLEKS                       R22 R22 K32 ["useItemHovered"]
      182 CALL                             R21 1 1
      183 GETIMPORT                        R22 K5 [require]
      185 GETTABLEKS                       R23 R0 K12 ["Src"]
      187 GETTABLEKS                       R23 R23 K27 ["Hooks"]
      189 GETTABLEKS                       R23 R23 K33 ["useItemDragHovered"]
      191 CALL                             R22 1 1
      192 GETIMPORT                        R23 K5 [require]
      194 GETTABLEKS                       R24 R0 K12 ["Src"]
      196 GETTABLEKS                       R24 R24 K27 ["Hooks"]
      198 GETTABLEKS                       R24 R24 K34 ["useItemSelection"]
      200 CALL                             R23 1 1
      201 GETIMPORT                        R24 K5 [require]
      203 GETTABLEKS                       R25 R0 K12 ["Src"]
      205 GETTABLEKS                       R25 R25 K27 ["Hooks"]
      207 GETTABLEKS                       R25 R25 K35 ["useLayoutInfo"]
      209 CALL                             R24 1 1
      210 GETIMPORT                        R25 K5 [require]
      212 GETTABLEKS                       R26 R0 K12 ["Src"]
      214 GETTABLEKS                       R26 R26 K36 ["Util"]
      216 GETTABLEKS                       R26 R26 K37 ["copyAssetId"]
      218 CALL                             R25 1 1
      219 GETIMPORT                        R26 K5 [require]
      221 GETTABLEKS                       R27 R0 K12 ["Src"]
      223 GETTABLEKS                       R27 R27 K38 ["Types"]
      225 CALL                             R26 1 1
      226 GETIMPORT                        R27 K5 [require]
      228 GETTABLEKS                       R28 R0 K12 ["Src"]
      230 GETTABLEKS                       R28 R28 K39 ["Resources"]
      232 GETTABLEKS                       R28 R28 K40 ["Constants"]
      234 CALL                             R27 1 1
      235 GETIMPORT                        R28 K5 [require]
      237 GETTABLEKS                       R29 R0 K12 ["Src"]
      239 GETTABLEKS                       R29 R29 K41 ["Analytics"]
      241 CALL                             R28 1 1
      242 GETIMPORT                        R29 K5 [require]
      244 GETTABLEKS                       R30 R0 K12 ["Src"]
      246 GETTABLEKS                       R30 R30 K41 ["Analytics"]
      248 GETTABLEKS                       R30 R30 K38 ["Types"]
      250 CALL                             R29 1 1
      251 GETIMPORT                        R30 K5 [require]
      253 GETTABLEKS                       R31 R0 K12 ["Src"]
      255 GETTABLEKS                       R31 R31 K39 ["Resources"]
      257 GETTABLEKS                       R31 R31 K42 ["StyleConstants"]
      259 CALL                             R30 1 1
      260 GETTABLEKS                       R31 R3 K36 ["Util"]
      262 GETTABLEKS                       R31 R31 K43 ["GetTextSize"]
      264 GETIMPORT                        R32 K5 [require]
      266 GETTABLEKS                       R33 R0 K12 ["Src"]
      268 GETTABLEKS                       R33 R33 K39 ["Resources"]
      270 GETTABLEKS                       R33 R33 K44 ["PluginStyles"]
      272 CALL                             R32 1 1
      273 GETIMPORT                        R33 K5 [require]
      275 GETTABLEKS                       R34 R0 K12 ["Src"]
      277 GETTABLEKS                       R34 R34 K45 ["Flags"]
      279 GETTABLEKS                       R34 R34 K46 ["getFFlagAmrCopyAssetIdHoverButton"]
      281 CALL                             R33 1 1
      282 DUPCLOSURE                       R34 K47 [PROTO_0]
      283 CAPTURE                          VAL R5
      284 CAPTURE                          VAL R26
      285 CAPTURE                          VAL R27
      286 DUPCLOSURE                       R35 K48 [PROTO_2]
      287 CAPTURE                          VAL R5
      288 CAPTURE                          VAL R18
      289 CAPTURE                          VAL R24
      290 CAPTURE                          VAL R1
      291 CAPTURE                          VAL R21
      292 CAPTURE                          VAL R30
      293 CAPTURE                          VAL R34
      294 CAPTURE                          VAL R27
      295 CAPTURE                          VAL R31
      296 CAPTURE                          VAL R32
      297 CAPTURE                          VAL R26
      298 CAPTURE                          VAL R10
      299 CAPTURE                          VAL R2
      300 CAPTURE                          VAL R8
      301 CAPTURE                          VAL R6
      302 CAPTURE                          VAL R9
      303 CAPTURE                          VAL R7
      304 CAPTURE                          VAL R33
      305 CAPTURE                          VAL R25
      306 CAPTURE                          VAL R28
      307 CAPTURE                          VAL R29
      308 DUPCLOSURE                       R36 K49 [PROTO_6]
      309 CAPTURE                          VAL R12
      310 CAPTURE                          VAL R13
      311 CAPTURE                          VAL R14
      312 CAPTURE                          VAL R15
      313 CAPTURE                          VAL R16
      314 CAPTURE                          VAL R23
      315 CAPTURE                          VAL R20
      316 CAPTURE                          VAL R24
      317 CAPTURE                          VAL R1
      318 CAPTURE                          VAL R21
      319 CAPTURE                          VAL R22
      320 CAPTURE                          VAL R17
      321 CAPTURE                          VAL R19
      322 CAPTURE                          VAL R26
      323 CAPTURE                          VAL R35
      324 CAPTURE                          VAL R2
      325 CAPTURE                          VAL R11
      326 RETURN                           R36 1
