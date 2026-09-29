PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["UiZone"]
        4 GETTABLEKS                       R2 R2 K1 ["Browser"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K2 ["Cell"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K3 ["Key"]
       12 GETUPVAL                         R5 3
       13 NAMECALL                         R0 R0 K4 ["handleMouse2Click"]
       15 CALL                             R0 5 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Text"]
        6 DUPTABLE                         R3 K6 [{["LayoutOrder"], ["Text"], ["ref"], ["tag"] = "size-0 auto-xy text-body-small text-truncate-end content-emphasis"}]
        7 SETTABLEKS                       R0 R3 K2 ["LayoutOrder"]
        9 GETUPVAL                         R4 2
       10 SETTABLEKS                       R4 R3 K1 ["Text"]
       12 GETUPVAL                         R4 3
       13 SETTABLEKS                       R4 R3 K3 ["ref"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Browser"]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R6 R6 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Down"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Browser"]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R6 R6 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Up"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K1 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R6 R0 K2 ["Cell"]
       19 CALL                             R5 1 1
       20 LOADN                            R6 0
       21 GETUPVAL                         R7 5
       22 GETTABLEKS                       R7 R7 K3 ["AssetType"]
       24 GETTABLEKS                       R7 R7 K4 ["Model"]
       26 LOADK                            R8 K5 [""]
       27 LOADNIL                          R9
       28 GETUPVAL                         R10 5
       29 GETTABLEKS                       R10 R10 K6 ["ModerationStatus"]
       31 GETTABLEKS                       R10 R10 K7 ["Placeholder"]
       33 NAMECALL                         R11 R4 K8 ["getItemsCache"]
       35 CALL                             R11 1 1
       36 GETTABLEKS                       R12 R0 K2 ["Cell"]
       38 GETUPVAL                         R13 6
       39 CALL                             R13 0 1
       40 LOADK                            R14 K5 [""]
       41 GETTABLEKS                       R16 R0 K2 ["Cell"]
       43 GETTABLE                         R15 R13 R16
       44 JUMPIFNOT                        R15 ; [+2]
       45 LOADK                            R14 K9 ["bg-shift-200"]
       46 JUMP                             ; [+1]
       47 LOADK                            R14 K10 ["bg-paper"]
       48 GETTABLEKS                       R16 R0 K11 ["Size"]
       50 GETTABLEKS                       R16 R16 K12 ["X"]
       52 GETTABLEKS                       R16 R16 K13 ["Offset"]
       54 GETUPVAL                         R18 7
       55 LOADK                            R20 K15 ["CellTagPadding"]
       56 NAMECALL                         R18 R18 K16 ["GetAttribute"]
       58 CALL                             R18 2 1
       59 MULK                             R17 R18 K14 [2]
       60 SUB                              R15 R16 R17
       61 GETUPVAL                         R16 8
       62 GETTABLEKS                       R16 R16 K17 ["useRef"]
       64 LOADNIL                          R17
       65 CALL                             R16 1 1
       66 GETUPVAL                         R17 8
       67 GETTABLEKS                       R17 R17 K17 ["useRef"]
       69 LOADNIL                          R18
       70 CALL                             R17 1 1
       71 GETUPVAL                         R18 8
       72 GETTABLEKS                       R18 R18 K18 ["useState"]
       74 LOADNIL                          R19
       75 CALL                             R18 1 2
       76 GETUPVAL                         R20 9
       77 MOVE                             R21 R16
       78 CALL                             R20 1 1
       79 GETUPVAL                         R21 9
       80 MOVE                             R22 R17
       81 CALL                             R21 1 1
       82 GETUPVAL                         R22 10
       83 MOVE                             R23 R20
       84 GETTABLEKS                       R24 R0 K2 ["Cell"]
       86 CALL                             R22 2 1
       87 GETUPVAL                         R23 11
       88 GETUPVAL                         R24 5
       89 GETTABLEKS                       R24 R24 K19 ["MenuContext"]
       91 GETTABLEKS                       R24 R24 K20 ["Asset"]
       93 DUPTABLE                         R25 K23 [{"Path", "Index"}]
       94 GETTABLEKS                       R26 R0 K2 ["Cell"]
       96 SETTABLEKS                       R26 R25 K21 ["Path"]
       98 GETTABLEKS                       R26 R0 K24 ["Key"]
      100 SETTABLEKS                       R26 R25 K22 ["Index"]
      102 CALL                             R23 2 1
      103 GETTABLEKS                       R24 R0 K25 ["ParentScope"]
      105 GETTABLEKS                       R27 R24 K26 ["Uid"]
      107 MOVE                             R28 R12
      108 GETUPVAL                         R29 5
      109 GETTABLEKS                       R29 R29 K27 ["AssetInfoField"]
      111 GETTABLEKS                       R29 R29 K3 ["AssetType"]
      113 NAMECALL                         R25 R11 K28 ["getItemField"]
      115 CALL                             R25 4 1
      116 MOVE                             R7 R25
      117 GETTABLEKS                       R27 R24 K26 ["Uid"]
      119 MOVE                             R28 R12
      120 GETUPVAL                         R29 5
      121 GETTABLEKS                       R29 R29 K27 ["AssetInfoField"]
      123 GETTABLEKS                       R29 R29 K29 ["DisplayName"]
      125 NAMECALL                         R25 R11 K28 ["getItemField"]
      127 CALL                             R25 4 1
      128 MOVE                             R8 R25
      129 GETTABLEKS                       R27 R24 K26 ["Uid"]
      131 MOVE                             R28 R12
      132 GETUPVAL                         R29 5
      133 GETTABLEKS                       R29 R29 K27 ["AssetInfoField"]
      135 GETTABLEKS                       R29 R29 K30 ["AssetId"]
      137 NAMECALL                         R25 R11 K28 ["getItemField"]
      139 CALL                             R25 4 1
      140 MOVE                             R6 R25
      141 JUMPIFNOT                        R6 ; [+2]
      142 JUMPIFNOT                        R7 ; [+1]
      143 JUMPIF                           R8 ; [+3]
      144 LOADNIL                          R25
      145 CLOSEUPVALS                      R8
      146 RETURN                           R25 1
      147 GETTABLEKS                       R27 R24 K26 ["Uid"]
      149 MOVE                             R28 R12
      150 GETUPVAL                         R29 5
      151 GETTABLEKS                       R29 R29 K27 ["AssetInfoField"]
      153 GETTABLEKS                       R29 R29 K31 ["IsPackage"]
      155 NAMECALL                         R25 R11 K28 ["getItemField"]
      157 CALL                             R25 4 1
      158 MOVE                             R9 R25
      159 GETTABLEKS                       R27 R24 K26 ["Uid"]
      161 MOVE                             R28 R12
      162 GETUPVAL                         R29 5
      163 GETTABLEKS                       R29 R29 K27 ["AssetInfoField"]
      165 GETTABLEKS                       R29 R29 K6 ["ModerationStatus"]
      167 NAMECALL                         R25 R11 K28 ["getItemField"]
      169 CALL                             R25 4 1
      170 MOVE                             R10 R25
      171 GETUPVAL                         R26 5
      172 GETTABLEKS                       R26 R26 K6 ["ModerationStatus"]
      174 GETTABLEKS                       R26 R26 K32 ["Rejected"]
      176 JUMPIFEQ                         R10 R26 ; [+2]
      178 LOADB                            R25 0 +1
      179 LOADB                            R25 1
      180 GETUPVAL                         R27 12
      181 MOVE                             R28 R8
      182 CALL                             R27 1 1
      183 GETTABLEKS                       R27 R27 K12 ["X"]
      185 JUMPIFLT                         R15 R27 ; [+2]
      187 LOADB                            R26 0 +1
      188 LOADB                            R26 1
      189 GETTABLEKS                       R28 R0 K2 ["Cell"]
      191 GETTABLE                         R27 R13 R28
      192 NEWCLOSURE                       R28 P0
      193 CAPTURE                          VAL R3
      194 CAPTURE                          UPVAL U5
      195 CAPTURE                          VAL R0
      196 CAPTURE                          VAL R23
      197 NEWCLOSURE                       R29 P1
      198 CAPTURE                          UPVAL U8
      199 CAPTURE                          UPVAL U13
      200 CAPTURE                          REF R8
      201 CAPTURE                          VAL R19
      202 GETUPVAL                         R30 8
      203 GETTABLEKS                       R30 R30 K33 ["createElement"]
      205 GETUPVAL                         R31 13
      206 GETTABLEKS                       R31 R31 K34 ["View"]
      208 DUPTABLE                         R32 K39 [{"LayoutOrder", "Size", "Position", "ref", "tag"}]
      209 GETTABLEKS                       R33 R0 K24 ["Key"]
      211 SETTABLEKS                       R33 R32 K35 ["LayoutOrder"]
      213 GETTABLEKS                       R33 R0 K11 ["Size"]
      215 SETTABLEKS                       R33 R32 K11 ["Size"]
      217 GETTABLEKS                       R33 R0 K36 ["Position"]
      219 SETTABLEKS                       R33 R32 K36 ["Position"]
      221 SETTABLEKS                       R16 R32 K37 ["ref"]
      223 NEWTABLE                         R33 4 0
      225 LOADB                            R34 1
      226 SETTABLEKS                       R34 R33 K40 ["align-x-center align-y-top padding-xsmall radius-medium"]
      228 SETTABLEKS                       R27 R33 K41 ["bg-action-soft-emphasis"]
      230 NOT                              R35 R27
      231 AND                              R34 R35 R20
      232 SETTABLEKS                       R34 R33 K9 ["bg-shift-200"]
      234 SETTABLEKS                       R22 R33 K42 ["stroke-standard stroke-position-inner stroke-system-emphasis"]
      236 SETTABLEKS                       R33 R32 K38 ["tag"]
      238 DUPTABLE                         R33 K45 [{"InputHandler", "InsertOrImportTutorialTooltip"}]
      239 GETUPVAL                         R34 8
      240 GETTABLEKS                       R34 R34 K33 ["createElement"]
      242 LOADK                            R35 K46 ["ImageButton"]
      243 NEWTABLE                         R36 4 0
      245 GETUPVAL                         R37 8
      246 GETTABLEKS                       R37 R37 K47 ["Event"]
      248 GETTABLEKS                       R37 R37 K48 ["MouseButton2Click"]
      250 SETTABLE                         R28 R36 R37
      251 GETUPVAL                         R37 8
      252 GETTABLEKS                       R37 R37 K47 ["Event"]
      254 GETTABLEKS                       R37 R37 K49 ["MouseButton1Down"]
      256 NEWCLOSURE                       R38 P2
      257 CAPTURE                          VAL R3
      258 CAPTURE                          UPVAL U5
      259 CAPTURE                          VAL R0
      260 SETTABLE                         R38 R36 R37
      261 GETUPVAL                         R37 8
      262 GETTABLEKS                       R37 R37 K47 ["Event"]
      264 GETTABLEKS                       R37 R37 K50 ["MouseButton1Up"]
      266 NEWCLOSURE                       R38 P3
      267 CAPTURE                          VAL R3
      268 CAPTURE                          UPVAL U5
      269 CAPTURE                          VAL R0
      270 SETTABLE                         R38 R36 R37
      271 GETUPVAL                         R37 8
      272 GETTABLEKS                       R37 R37 K51 ["Tag"]
      274 LOADK                            R38 K52 ["gui-object-defaults size-full col gap-xsmall data-testid=item-cell-input"]
      275 SETTABLE                         R38 R36 R37
      276 DUPTABLE                         R37 K55 [{"ThumbnailContainer", "CellData"}]
      277 GETUPVAL                         R38 8
      278 GETTABLEKS                       R38 R38 K33 ["createElement"]
      280 GETUPVAL                         R39 13
      281 GETTABLEKS                       R39 R39 K34 ["View"]
      283 DUPTABLE                         R40 K56 [{"LayoutOrder", "ref", "tag"}]
      284 NAMECALL                         R41 R1 K57 ["getNextOrder"]
      286 CALL                             R41 1 1
      287 SETTABLEKS                       R41 R40 K35 ["LayoutOrder"]
      289 SETTABLEKS                       R17 R40 K37 ["ref"]
      291 LOADK                            R41 K58 ["fill size-full radius-small %*"]
      292 MOVE                             R43 R14
      293 NAMECALL                         R41 R41 K59 ["format"]
      295 CALL                             R41 2 1
      296 SETTABLEKS                       R41 R40 K38 ["tag"]
      298 DUPTABLE                         R41 K64 [{"Thumbnail", "PackageLinkIcon", "AssetState", "AudioOverlay"}]
      299 GETUPVAL                         R42 8
      300 GETTABLEKS                       R42 R42 K33 ["createElement"]
      302 GETUPVAL                         R43 14
      303 DUPTABLE                         R44 K65 [{"AssetId", "AssetType"}]
      304 SETTABLEKS                       R6 R44 K30 ["AssetId"]
      306 SETTABLEKS                       R7 R44 K3 ["AssetType"]
      308 CALL                             R42 2 1
      309 SETTABLEKS                       R42 R41 K60 ["Thumbnail"]
      311 JUMPIFNOT                        R9 ; [+7]
      312 GETUPVAL                         R42 8
      313 GETTABLEKS                       R42 R42 K33 ["createElement"]
      315 GETUPVAL                         R43 15
      316 DUPTABLE                         R44 K68 [{["IsGrid"] = True}]
      317 CALL                             R42 2 1
      318 JUMP                             ; [+1]
      319 LOADNIL                          R42
      320 SETTABLEKS                       R42 R41 K61 ["PackageLinkIcon"]
      322 JUMPIFNOT                        R25 ; [+11]
      323 GETUPVAL                         R42 8
      324 GETTABLEKS                       R42 R42 K33 ["createElement"]
      326 GETUPVAL                         R43 16
      327 DUPTABLE                         R44 K70 [{["AssetId"], ["AssetPath"], ["IsGrid"] = True}]
      328 SETTABLEKS                       R6 R44 K30 ["AssetId"]
      330 SETTABLEKS                       R12 R44 K69 ["AssetPath"]
      332 CALL                             R42 2 1
      333 JUMP                             ; [+1]
      334 LOADNIL                          R42
      335 SETTABLEKS                       R42 R41 K62 ["AssetState"]
      337 GETUPVAL                         R43 5
      338 GETTABLEKS                       R43 R43 K3 ["AssetType"]
      340 GETTABLEKS                       R43 R43 K71 ["Audio"]
      342 JUMPIFNOTEQ                      R7 R43 ; [+15]
      344 JUMPIF                           R25 ; [+13]
      345 GETUPVAL                         R42 8
      346 GETTABLEKS                       R42 R42 K33 ["createElement"]
      348 GETUPVAL                         R43 17
      349 DUPTABLE                         R44 K74 [{"AssetId", "IsHovered", "OnRightClick"}]
      350 SETTABLEKS                       R6 R44 K30 ["AssetId"]
      352 SETTABLEKS                       R21 R44 K72 ["IsHovered"]
      354 SETTABLEKS                       R28 R44 K73 ["OnRightClick"]
      356 CALL                             R42 2 1
      357 JUMP                             ; [+1]
      358 LOADNIL                          R42
      359 SETTABLEKS                       R42 R41 K63 ["AudioOverlay"]
      361 CALL                             R38 3 1
      362 SETTABLEKS                       R38 R37 K53 ["ThumbnailContainer"]
      364 GETUPVAL                         R38 8
      365 GETTABLEKS                       R38 R38 K33 ["createElement"]
      367 GETUPVAL                         R39 13
      368 GETTABLEKS                       R39 R39 K34 ["View"]
      370 DUPTABLE                         R40 K76 [{["LayoutOrder"], ["tag"] = "am-size-full-celldata col align-x-left"}]
      371 NAMECALL                         R41 R1 K57 ["getNextOrder"]
      373 CALL                             R41 1 1
      374 SETTABLEKS                       R41 R40 K35 ["LayoutOrder"]
      376 DUPTABLE                         R41 K79 [{"NameTag", "TypeTag"}]
      377 JUMPIFNOT                        R5 ; [+24]
      378 GETUPVAL                         R42 8
      379 GETTABLEKS                       R42 R42 K33 ["createElement"]
      381 GETUPVAL                         R43 18
      382 DUPTABLE                         R44 K83 [{"LayoutOrder", "InitialText", "ItemType", "ItemPath", "Size"}]
      383 NAMECALL                         R45 R1 K57 ["getNextOrder"]
      385 CALL                             R45 1 1
      386 SETTABLEKS                       R45 R44 K35 ["LayoutOrder"]
      388 SETTABLEKS                       R8 R44 K80 ["InitialText"]
      390 SETTABLEKS                       R7 R44 K81 ["ItemType"]
      392 GETTABLEKS                       R45 R0 K2 ["Cell"]
      394 SETTABLEKS                       R45 R44 K82 ["ItemPath"]
      396 GETTABLEKS                       R45 R0 K11 ["Size"]
      398 SETTABLEKS                       R45 R44 K11 ["Size"]
      400 CALL                             R42 2 1
      401 JUMP                             ; [+50]
      402 JUMPIFNOT                        R26 ; [+31]
      403 GETUPVAL                         R42 8
      404 GETTABLEKS                       R42 R42 K33 ["createElement"]
      406 GETUPVAL                         R43 13
      407 GETTABLEKS                       R43 R43 K84 ["Tooltip"]
      409 DUPTABLE                         R44 K87 [{"LayoutOrder", "title", "side"}]
      410 NAMECALL                         R45 R1 K57 ["getNextOrder"]
      412 CALL                             R45 1 1
      413 SETTABLEKS                       R45 R44 K35 ["LayoutOrder"]
      415 SETTABLEKS                       R8 R44 K85 ["title"]
      417 GETUPVAL                         R45 13
      418 GETTABLEKS                       R45 R45 K88 ["Enums"]
      420 GETTABLEKS                       R45 R45 K89 ["PopoverSide"]
      422 GETTABLEKS                       R45 R45 K90 ["Bottom"]
      424 SETTABLEKS                       R45 R44 K86 ["side"]
      426 NEWTABLE                         R45 0 1
      428 MOVE                             R46 R29
      429 CALL                             R46 0 -1
      430 SETLIST                          R45 R46 -1 [1]
      432 CALL                             R42 3 1
      433 JUMP                             ; [+18]
      434 NAMECALL                         R43 R1 K57 ["getNextOrder"]
      436 CALL                             R43 1 1
      437 GETUPVAL                         R44 8
      438 GETTABLEKS                       R44 R44 K33 ["createElement"]
      440 GETUPVAL                         R45 13
      441 GETTABLEKS                       R45 R45 K91 ["Text"]
      443 DUPTABLE                         R46 K93 [{["LayoutOrder"], ["Text"], ["ref"], ["tag"] = "size-0 auto-xy text-body-small text-truncate-end content-emphasis"}]
      444 SETTABLEKS                       R43 R46 K35 ["LayoutOrder"]
      446 SETTABLEKS                       R8 R46 K91 ["Text"]
      448 SETTABLEKS                       R19 R46 K37 ["ref"]
      450 CALL                             R44 2 1
      451 MOVE                             R42 R44
      452 SETTABLEKS                       R42 R41 K77 ["NameTag"]
      454 GETUPVAL                         R42 8
      455 GETTABLEKS                       R42 R42 K33 ["createElement"]
      457 GETUPVAL                         R43 13
      458 GETTABLEKS                       R43 R43 K91 ["Text"]
      460 DUPTABLE                         R44 K95 [{["LayoutOrder"], ["Text"], ["tag"] = "size-0 auto-xy text-caption-small text-truncate-end content-default"}]
      461 NAMECALL                         R45 R1 K57 ["getNextOrder"]
      463 CALL                             R45 1 1
      464 SETTABLEKS                       R45 R44 K35 ["LayoutOrder"]
      466 LOADK                            R47 K3 ["AssetType"]
      467 MOVE                             R48 R7
      468 NAMECALL                         R45 R2 K96 ["getText"]
      470 CALL                             R45 3 1
      471 SETTABLEKS                       R45 R44 K91 ["Text"]
      473 CALL                             R42 2 1
      474 SETTABLEKS                       R42 R41 K78 ["TypeTag"]
      476 CALL                             R38 3 1
      477 SETTABLEKS                       R38 R37 K54 ["CellData"]
      479 CALL                             R34 3 1
      480 SETTABLEKS                       R34 R33 K43 ["InputHandler"]
      482 GETTABLEKS                       R35 R0 K24 ["Key"]
      484 JUMPIFNOTEQKN                    R35 K97 [1] ; [+42]
      486 GETUPVAL                         R34 8
      487 GETTABLEKS                       R34 R34 K33 ["createElement"]
      489 GETUPVAL                         R35 19
      490 DUPTABLE                         R36 K102 [{"tutorialId", "stepId", "anchorInstance", "side", "align"}]
      491 GETUPVAL                         R37 5
      492 GETTABLEKS                       R37 R37 K103 ["TutorialId"]
      494 GETTABLEKS                       R37 R37 K104 ["Intro"]
      496 SETTABLEKS                       R37 R36 K98 ["tutorialId"]
      498 GETUPVAL                         R37 5
      499 GETTABLEKS                       R37 R37 K105 ["TutorialStepId"]
      501 GETTABLEKS                       R37 R37 K106 ["InsertOrImport"]
      503 SETTABLEKS                       R37 R36 K99 ["stepId"]
      505 SETTABLEKS                       R18 R36 K100 ["anchorInstance"]
      507 GETUPVAL                         R37 13
      508 GETTABLEKS                       R37 R37 K88 ["Enums"]
      510 GETTABLEKS                       R37 R37 K89 ["PopoverSide"]
      512 GETTABLEKS                       R37 R37 K90 ["Bottom"]
      514 SETTABLEKS                       R37 R36 K86 ["side"]
      516 GETUPVAL                         R37 13
      517 GETTABLEKS                       R37 R37 K88 ["Enums"]
      519 GETTABLEKS                       R37 R37 K107 ["PopoverAlign"]
      521 GETTABLEKS                       R37 R37 K108 ["Center"]
      523 SETTABLEKS                       R37 R36 K101 ["align"]
      525 CALL                             R34 2 1
      526 JUMP                             ; [+1]
      527 LOADNIL                          R34
      528 SETTABLEKS                       R34 R33 K44 ["InsertOrImportTutorialTooltip"]
      530 CALL                             R30 3 -1
      531 CLOSEUPVALS                      R8
      532 RETURN                           R30 -1

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
      120 GETTABLEKS                       R15 R15 K24 ["Hooks"]
      122 GETTABLEKS                       R15 R15 K25 ["useContextMenu"]
      124 CALL                             R14 1 1
      125 GETIMPORT                        R15 K5 [require]
      127 GETTABLEKS                       R16 R0 K12 ["Src"]
      129 GETTABLEKS                       R16 R16 K24 ["Hooks"]
      131 GETTABLEKS                       R16 R16 K26 ["useIsEditItem"]
      133 CALL                             R15 1 1
      134 GETIMPORT                        R16 K5 [require]
      136 GETTABLEKS                       R17 R0 K12 ["Src"]
      138 GETTABLEKS                       R17 R17 K24 ["Hooks"]
      140 GETTABLEKS                       R17 R17 K27 ["useItemHovered"]
      142 CALL                             R16 1 1
      143 GETIMPORT                        R17 K5 [require]
      145 GETTABLEKS                       R18 R0 K12 ["Src"]
      147 GETTABLEKS                       R18 R18 K24 ["Hooks"]
      149 GETTABLEKS                       R18 R18 K28 ["useItemDragHovered"]
      151 CALL                             R17 1 1
      152 GETIMPORT                        R18 K5 [require]
      154 GETTABLEKS                       R19 R0 K12 ["Src"]
      156 GETTABLEKS                       R19 R19 K24 ["Hooks"]
      158 GETTABLEKS                       R19 R19 K29 ["useItemSelection"]
      160 CALL                             R18 1 1
      161 GETIMPORT                        R19 K5 [require]
      163 GETTABLEKS                       R20 R0 K12 ["Src"]
      165 GETTABLEKS                       R20 R20 K30 ["Types"]
      167 CALL                             R19 1 1
      168 GETTABLEKS                       R20 R3 K31 ["Util"]
      170 GETTABLEKS                       R20 R20 K32 ["LayoutOrderIterator"]
      172 GETTABLEKS                       R21 R3 K31 ["Util"]
      174 GETTABLEKS                       R21 R21 K33 ["GetTextSize"]
      176 GETIMPORT                        R22 K5 [require]
      178 GETTABLEKS                       R23 R0 K12 ["Src"]
      180 GETTABLEKS                       R23 R23 K34 ["Resources"]
      182 GETTABLEKS                       R23 R23 K35 ["PluginStyles"]
      184 CALL                             R22 1 1
      185 DUPCLOSURE                       R23 K36 [PROTO_4]
      186 CAPTURE                          VAL R20
      187 CAPTURE                          VAL R5
      188 CAPTURE                          VAL R12
      189 CAPTURE                          VAL R13
      190 CAPTURE                          VAL R15
      191 CAPTURE                          VAL R19
      192 CAPTURE                          VAL R18
      193 CAPTURE                          VAL R22
      194 CAPTURE                          VAL R1
      195 CAPTURE                          VAL R16
      196 CAPTURE                          VAL R17
      197 CAPTURE                          VAL R14
      198 CAPTURE                          VAL R21
      199 CAPTURE                          VAL R2
      200 CAPTURE                          VAL R8
      201 CAPTURE                          VAL R9
      202 CAPTURE                          VAL R10
      203 CAPTURE                          VAL R6
      204 CAPTURE                          VAL R7
      205 CAPTURE                          VAL R11
      206 RETURN                           R23 1
