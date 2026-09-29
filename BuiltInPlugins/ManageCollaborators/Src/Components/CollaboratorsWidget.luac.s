PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["Writable"]
        6 GETTABLEKS                       R4 R1 K3 ["NewUserCollaborators"]
        8 GETTABLEKS                       R5 R1 K4 ["CurrentUserCollaborators"]
       10 GETTABLEKS                       R6 R1 K5 ["NewGroupCollaborators"]
       12 GETTABLEKS                       R7 R1 K6 ["CurrentGroupCollaborators"]
       14 GETTABLEKS                       R8 R1 K7 ["OwnerId"]
       16 GETTABLEKS                       R9 R1 K8 ["OwnerType"]
       18 GETUPVAL                         R11 0
       19 JUMPIFNOT                        R11 ; [+3]
       20 GETTABLEKS                       R10 R1 K9 ["IsGroupGame"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R10
       24 NEWTABLE                         R11 0 0
       26 JUMPIFNOT                        R8 ; [+1]
       27 JUMPIF                           R9 ; [+2]
       28 LOADNIL                          R12
       29 RETURN                           R12 1
       30 GETUPVAL                         R12 1
       31 GETTABLEKS                       R12 R12 K10 ["new"]
       33 CALL                             R12 0 1
       34 GETUPVAL                         R14 2
       35 GETTABLEKS                       R14 R14 K11 ["fflagManageCollaboratorsActionNeededLabel"]
       37 JUMPIFNOT                        R14 ; [+3]
       38 GETTABLEKS                       R13 R1 K12 ["CanCollaborateResponses"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R13
       42 GETUPVAL                         R15 2
       43 GETTABLEKS                       R15 R15 K13 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       45 JUMPIF                           R15 ; [+4]
       46 GETUPVAL                         R15 2
       47 GETTABLEKS                       R15 R15 K14 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
       49 JUMPIFNOT                        R15 ; [+3]
       50 GETTABLEKS                       R14 R1 K15 ["DisableEditPermission"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R14
       54 GETTABLEKS                       R15 R1 K16 ["ActiveTab"]
       56 GETUPVAL                         R16 3
       57 GETTABLEKS                       R17 R1 K9 ["IsGroupGame"]
       59 CALL                             R16 1 1
       60 MOVE                             R17 R16
       61 JUMPIFNOT                        R17 ; [+7]
       62 GETUPVAL                         R18 4
       63 GETTABLEKS                       R18 R18 K17 ["AUDIENCE_TAB_EARLY_TESTERS"]
       65 JUMPIFEQ                         R15 R18 ; [+2]
       67 LOADB                            R17 0 +1
       68 LOADB                            R17 1
       69 GETTABLEKS                       R18 R1 K18 ["ShowOwner"]
       71 JUMPIFNOT                        R18 ; [+37]
       72 GETIMPORT                        R19 K22 [Enum.CreatorType.User]
       74 JUMPIFNOTEQ                      R9 R19 ; [+3]
       76 LOADB                            R18 1
       77 JUMP                             ; [+1]
       78 LOADB                            R18 0
       79 JUMPIFNOT                        R18 ; [+2]
       80 GETUPVAL                         R19 5
       81 JUMP                             ; [+1]
       82 GETUPVAL                         R19 6
       83 GETUPVAL                         R20 7
       84 GETTABLEKS                       R20 R20 K23 ["createElement"]
       86 MOVE                             R21 R19
       87 DUPTABLE                         R22 K27 [{["Id"], ["Writable"], ["LayoutOrder"], ["HideSeparator"] = False, ["IsGroupGame"], ["DisableEditPermission"]}]
       88 SETTABLEKS                       R8 R22 K24 ["Id"]
       90 SETTABLEKS                       R3 R22 K2 ["Writable"]
       92 NAMECALL                         R23 R12 K28 ["getNextOrder"]
       94 CALL                             R23 1 1
       95 SETTABLEKS                       R23 R22 K1 ["LayoutOrder"]
       97 SETTABLEKS                       R10 R22 K9 ["IsGroupGame"]
       99 SETTABLEKS                       R14 R22 K15 ["DisableEditPermission"]
      101 CALL                             R20 2 1
      102 FASTCALL2                        TABLE_INSERT R11 R20 ; [+5]
      104 MOVE                             R22 R11
      105 MOVE                             R23 R20
      106 GETIMPORT                        R21 K31 [table.insert]
      108 CALL                             R21 2 0
      109 GETTABLEKS                       R18 R1 K32 ["GranularCollaborators"]
      111 LOADNIL                          R19
      112 LOADNIL                          R20
      113 FORGPREP                         R18
      114 GETUPVAL                         R23 7
      115 GETTABLEKS                       R23 R23 K23 ["createElement"]
      117 GETUPVAL                         R24 8
      118 DUPTABLE                         R25 K33 [{["LayoutOrder"], ["Writable"], ["Id"], ["HideSeparator"] = False, ["DisableEditPermission"]}]
      119 NAMECALL                         R26 R12 K28 ["getNextOrder"]
      121 CALL                             R26 1 1
      122 SETTABLEKS                       R26 R25 K1 ["LayoutOrder"]
      124 SETTABLEKS                       R3 R25 K2 ["Writable"]
      126 SETTABLEKS                       R22 R25 K24 ["Id"]
      128 SETTABLEKS                       R14 R25 K15 ["DisableEditPermission"]
      130 CALL                             R23 2 1
      131 FASTCALL2                        TABLE_INSERT R11 R23 ; [+5]
      133 MOVE                             R25 R11
      134 MOVE                             R26 R23
      135 GETIMPORT                        R24 K31 [table.insert]
      137 CALL                             R24 2 0
      138 FORGLOOP                         R18 2 ; [-25]
      140 MOVE                             R18 R4
      141 LOADNIL                          R19
      142 LOADNIL                          R20
      143 FORGPREP                         R18
      144 MOVE                             R23 R13
      145 JUMPIFNOT                        R23 ; [+1]
      146 GETTABLE                         R23 R13 R22
      147 GETUPVAL                         R24 7
      148 GETTABLEKS                       R24 R24 K23 ["createElement"]
      150 GETUPVAL                         R25 5
      151 DUPTABLE                         R26 K36 [{["LayoutOrder"], ["Writable"], ["Id"], ["HideSeparator"] = False, ["IsGroupGame"], ["CanCollaborateResponse"], ["CanCollaborateErrorEnum"], ["DisableEditPermission"]}]
      152 NAMECALL                         R27 R12 K28 ["getNextOrder"]
      154 CALL                             R27 1 1
      155 SETTABLEKS                       R27 R26 K1 ["LayoutOrder"]
      157 SETTABLEKS                       R3 R26 K2 ["Writable"]
      159 SETTABLEKS                       R22 R26 K24 ["Id"]
      161 SETTABLEKS                       R10 R26 K9 ["IsGroupGame"]
      163 GETUPVAL                         R28 2
      164 GETTABLEKS                       R28 R28 K11 ["fflagManageCollaboratorsActionNeededLabel"]
      166 JUMPIFNOT                        R28 ; [+5]
      167 MOVE                             R27 R23
      168 JUMPIFNOT                        R27 ; [+4]
      169 GETTABLEKS                       R27 R23 K37 ["canCollaborate"]
      171 JUMP                             ; [+1]
      172 LOADNIL                          R27
      173 SETTABLEKS                       R27 R26 K34 ["CanCollaborateResponse"]
      175 GETUPVAL                         R28 2
      176 GETTABLEKS                       R28 R28 K13 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      178 JUMPIFNOT                        R28 ; [+5]
      179 MOVE                             R27 R23
      180 JUMPIFNOT                        R27 ; [+4]
      181 GETTABLEKS                       R27 R23 K38 ["error"]
      183 JUMP                             ; [+1]
      184 LOADNIL                          R27
      185 SETTABLEKS                       R27 R26 K35 ["CanCollaborateErrorEnum"]
      187 SETTABLEKS                       R14 R26 K15 ["DisableEditPermission"]
      189 CALL                             R24 2 1
      190 FASTCALL2                        TABLE_INSERT R11 R24 ; [+5]
      192 MOVE                             R26 R11
      193 MOVE                             R27 R24
      194 GETIMPORT                        R25 K31 [table.insert]
      196 CALL                             R25 2 0
      197 FORGLOOP                         R18 2 ; [-54]
      199 MOVE                             R18 R6
      200 LOADNIL                          R19
      201 LOADNIL                          R20
      202 FORGPREP                         R18
      203 GETUPVAL                         R23 7
      204 GETTABLEKS                       R23 R23 K23 ["createElement"]
      206 GETUPVAL                         R24 6
      207 DUPTABLE                         R25 K40 [{["LayoutOrder"], ["Writable"], ["Id"], ["CurrentPermission"], ["HideSeparator"] = False, ["IsGroupGame"], ["DisableEditPermission"]}]
      208 NAMECALL                         R26 R12 K28 ["getNextOrder"]
      210 CALL                             R26 1 1
      211 SETTABLEKS                       R26 R25 K1 ["LayoutOrder"]
      213 SETTABLEKS                       R3 R25 K2 ["Writable"]
      215 SETTABLEKS                       R22 R25 K24 ["Id"]
      217 GETUPVAL                         R26 9
      218 GETTABLEKS                       R26 R26 K41 ["MultipleKey"]
      220 SETTABLEKS                       R26 R25 K39 ["CurrentPermission"]
      222 SETTABLEKS                       R10 R25 K9 ["IsGroupGame"]
      224 SETTABLEKS                       R14 R25 K15 ["DisableEditPermission"]
      226 CALL                             R23 2 1
      227 FASTCALL2                        TABLE_INSERT R11 R23 ; [+5]
      229 MOVE                             R25 R11
      230 MOVE                             R26 R23
      231 GETIMPORT                        R24 K31 [table.insert]
      233 CALL                             R24 2 0
      234 FORGLOOP                         R18 2 ; [-32]
      236 MOVE                             R18 R5
      237 LOADNIL                          R19
      238 LOADNIL                          R20
      239 FORGPREP                         R18
      240 MOVE                             R23 R13
      241 JUMPIFNOT                        R23 ; [+1]
      242 GETTABLE                         R23 R13 R22
      243 GETUPVAL                         R24 7
      244 GETTABLEKS                       R24 R24 K23 ["createElement"]
      246 GETUPVAL                         R25 5
      247 DUPTABLE                         R26 K36 [{["LayoutOrder"], ["Writable"], ["Id"], ["HideSeparator"] = False, ["IsGroupGame"], ["CanCollaborateResponse"], ["CanCollaborateErrorEnum"], ["DisableEditPermission"]}]
      248 NAMECALL                         R27 R12 K28 ["getNextOrder"]
      250 CALL                             R27 1 1
      251 SETTABLEKS                       R27 R26 K1 ["LayoutOrder"]
      253 SETTABLEKS                       R3 R26 K2 ["Writable"]
      255 SETTABLEKS                       R22 R26 K24 ["Id"]
      257 SETTABLEKS                       R10 R26 K9 ["IsGroupGame"]
      259 GETUPVAL                         R28 2
      260 GETTABLEKS                       R28 R28 K11 ["fflagManageCollaboratorsActionNeededLabel"]
      262 JUMPIFNOT                        R28 ; [+5]
      263 MOVE                             R27 R23
      264 JUMPIFNOT                        R27 ; [+4]
      265 GETTABLEKS                       R27 R23 K37 ["canCollaborate"]
      267 JUMP                             ; [+1]
      268 LOADNIL                          R27
      269 SETTABLEKS                       R27 R26 K34 ["CanCollaborateResponse"]
      271 GETUPVAL                         R28 2
      272 GETTABLEKS                       R28 R28 K13 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      274 JUMPIFNOT                        R28 ; [+5]
      275 MOVE                             R27 R23
      276 JUMPIFNOT                        R27 ; [+4]
      277 GETTABLEKS                       R27 R23 K38 ["error"]
      279 JUMP                             ; [+1]
      280 LOADNIL                          R27
      281 SETTABLEKS                       R27 R26 K35 ["CanCollaborateErrorEnum"]
      283 SETTABLEKS                       R14 R26 K15 ["DisableEditPermission"]
      285 CALL                             R24 2 1
      286 FASTCALL2                        TABLE_INSERT R11 R24 ; [+5]
      288 MOVE                             R26 R11
      289 MOVE                             R27 R24
      290 GETIMPORT                        R25 K31 [table.insert]
      292 CALL                             R25 2 0
      293 FORGLOOP                         R18 2 ; [-54]
      295 MOVE                             R18 R7
      296 LOADNIL                          R19
      297 LOADNIL                          R20
      298 FORGPREP                         R18
      299 GETUPVAL                         R23 7
      300 GETTABLEKS                       R23 R23 K23 ["createElement"]
      302 GETUPVAL                         R24 6
      303 DUPTABLE                         R25 K40 [{["LayoutOrder"], ["Writable"], ["Id"], ["CurrentPermission"], ["HideSeparator"] = False, ["IsGroupGame"], ["DisableEditPermission"]}]
      304 NAMECALL                         R26 R12 K28 ["getNextOrder"]
      306 CALL                             R26 1 1
      307 SETTABLEKS                       R26 R25 K1 ["LayoutOrder"]
      309 SETTABLEKS                       R3 R25 K2 ["Writable"]
      311 SETTABLEKS                       R22 R25 K24 ["Id"]
      313 GETUPVAL                         R26 9
      314 GETTABLEKS                       R26 R26 K41 ["MultipleKey"]
      316 SETTABLEKS                       R26 R25 K39 ["CurrentPermission"]
      318 SETTABLEKS                       R10 R25 K9 ["IsGroupGame"]
      320 SETTABLEKS                       R14 R25 K15 ["DisableEditPermission"]
      322 CALL                             R23 2 1
      323 FASTCALL2                        TABLE_INSERT R11 R23 ; [+5]
      325 MOVE                             R25 R11
      326 MOVE                             R26 R23
      327 GETIMPORT                        R24 K31 [table.insert]
      329 CALL                             R24 2 0
      330 FORGLOOP                         R18 2 ; [-32]
      332 JUMPIFNOT                        R17 ; [+29]
      333 GETTABLEKS                       R18 R1 K42 ["PendingPlayTesters"]
      335 LOADNIL                          R19
      336 LOADNIL                          R20
      337 FORGPREP                         R18
      338 GETUPVAL                         R23 7
      339 GETTABLEKS                       R23 R23 K23 ["createElement"]
      341 GETUPVAL                         R24 10
      342 DUPTABLE                         R25 K43 [{["LayoutOrder"], ["Writable"], ["Id"], ["HideSeparator"] = False}]
      343 NAMECALL                         R26 R12 K28 ["getNextOrder"]
      345 CALL                             R26 1 1
      346 SETTABLEKS                       R26 R25 K1 ["LayoutOrder"]
      348 SETTABLEKS                       R3 R25 K2 ["Writable"]
      350 SETTABLEKS                       R22 R25 K24 ["Id"]
      352 CALL                             R23 2 1
      353 FASTCALL2                        TABLE_INSERT R11 R23 ; [+5]
      355 MOVE                             R25 R11
      356 MOVE                             R26 R23
      357 GETIMPORT                        R24 K31 [table.insert]
      359 CALL                             R24 2 0
      360 FORGLOOP                         R18 2 ; [-23]
      362 LENGTH                           R18 R11
      363 LOADN                            R19 0
      364 JUMPIFNOTLT                      R19 R18 ; [+8]
      366 LENGTH                           R19 R11
      367 GETTABLE                         R18 R11 R19
      368 GETTABLEKS                       R18 R18 K0 ["props"]
      370 LOADB                            R19 1
      371 SETTABLEKS                       R19 R18 K25 ["HideSeparator"]
      373 GETTABLEKS                       R18 R1 K44 ["Stylizer"]
      375 GETTABLEKS                       R19 R1 K45 ["Localization"]
      377 GETUPVAL                         R20 11
      378 CALL                             R20 0 1
      379 GETTABLEKS                       R22 R1 K47 ["PendingPlayTesterCount"]
      381 ORK                              R21 R22 K46 [0]
      382 LOADN                            R23 0
      383 JUMPIFLT                         R23 R21 ; [+2]
      385 LOADB                            R22 0 +1
      386 LOADB                            R22 1
      387 MOVE                             R23 R17
      388 JUMPIFNOT                        R23 ; [+5]
      389 LENGTH                           R24 R11
      390 JUMPIFEQKN                       R24 K46 [0] ; [+2]
      392 LOADB                            R23 0 +1
      393 LOADB                            R23 1
      394 GETUPVAL                         R24 7
      395 GETTABLEKS                       R24 R24 K23 ["createElement"]
      397 GETUPVAL                         R25 12
      398 DUPTABLE                         R26 K50 [{["LayoutOrder"], ["BackgroundTransparency"] = 1}]
      399 SETTABLEKS                       R2 R26 K1 ["LayoutOrder"]
      401 DUPTABLE                         R27 K54 [{"EarlyTesterHeader", "EmptyEarlyTesters", "CollaboratorList"}]
      402 MOVE                             R28 R17
      403 JUMPIFNOT                        R28 ; [+43]
      404 MOVE                             R28 R22
      405 JUMPIFNOT                        R28 ; [+41]
      406 GETUPVAL                         R28 13
      407 GETTABLEKS                       R28 R28 K23 ["createElement"]
      409 GETUPVAL                         R29 14
      410 DUPTABLE                         R30 K57 [{["LayoutOrder"] = 1, ["tag"] = "row size-full-0 auto-y padding-x-large padding-top-small align-y-center gap-small"}]
      411 DUPTABLE                         R31 K60 [{"Description", "CountBadge"}]
      412 GETUPVAL                         R32 13
      413 GETTABLEKS                       R32 R32 K23 ["createElement"]
      415 GETUPVAL                         R33 15
      416 DUPTABLE                         R34 K63 [{["LayoutOrder"] = 1, ["tag"] = "fill auto-y text-body-small text-align-x-left", ["Text"]}]
      417 LOADK                            R37 K64 ["AudienceTabs"]
      418 LOADK                            R38 K65 ["PlayTesterLimit"]
      419 DUPTABLE                         R39 K67 [{"maxNumPlayTesters"}]
      420 SETTABLEKS                       R20 R39 K66 ["maxNumPlayTesters"]
      422 NAMECALL                         R35 R19 K68 ["getText"]
      424 CALL                             R35 4 1
      425 SETTABLEKS                       R35 R34 K62 ["Text"]
      427 CALL                             R32 2 1
      428 SETTABLEKS                       R32 R31 K58 ["Description"]
      430 GETUPVAL                         R32 13
      431 GETTABLEKS                       R32 R32 K23 ["createElement"]
      433 GETUPVAL                         R33 16
      434 DUPTABLE                         R34 K71 [{["LayoutOrder"] = 2, ["text"]}]
      435 LOADK                            R35 K72 ["%*/%*"]
      436 MOVE                             R37 R21
      437 MOVE                             R38 R20
      438 NAMECALL                         R35 R35 K73 ["format"]
      440 CALL                             R35 3 1
      441 SETTABLEKS                       R35 R34 K70 ["text"]
      443 CALL                             R32 2 1
      444 SETTABLEKS                       R32 R31 K59 ["CountBadge"]
      446 CALL                             R28 3 1
      447 SETTABLEKS                       R28 R27 K51 ["EarlyTesterHeader"]
      449 MOVE                             R28 R23
      450 JUMPIFNOT                        R28 ; [+70]
      451 GETUPVAL                         R28 13
      452 GETTABLEKS                       R28 R28 K23 ["createElement"]
      454 GETUPVAL                         R29 14
      455 DUPTABLE                         R30 K76 [{["LayoutOrder"] = 1, ["Size"], ["tag"] = "col align-x-center align-y-center padding-x-large gap-medium"}]
      456 GETIMPORT                        R31 K78 [UDim2.new]
      458 LOADN                            R32 1
      459 LOADN                            R33 0
      460 LOADN                            R34 0
      461 GETTABLEKS                       R35 R18 K79 ["audienceTabs"]
      463 GETTABLEKS                       R35 R35 K80 ["emptyStateHeight"]
      465 CALL                             R31 4 1
      466 SETTABLEKS                       R31 R30 K74 ["Size"]
      468 DUPTABLE                         R31 K84 [{"EmptyIcon", "EmptyTitle", "EmptySubtitle"}]
      469 GETUPVAL                         R32 13
      470 GETTABLEKS                       R32 R32 K23 ["createElement"]
      472 GETUPVAL                         R33 17
      473 DUPTABLE                         R34 K87 [{["LayoutOrder"] = 1, ["name"], ["size"]}]
      474 GETUPVAL                         R35 18
      475 GETTABLEKS                       R35 R35 K88 ["Person"]
      477 SETTABLEKS                       R35 R34 K85 ["name"]
      479 GETUPVAL                         R35 19
      480 GETTABLEKS                       R35 R35 K89 ["XXLarge"]
      482 SETTABLEKS                       R35 R34 K86 ["size"]
      484 CALL                             R32 2 1
      485 SETTABLEKS                       R32 R31 K81 ["EmptyIcon"]
      487 GETUPVAL                         R32 13
      488 GETTABLEKS                       R32 R32 K23 ["createElement"]
      490 GETUPVAL                         R33 15
      491 DUPTABLE                         R34 K91 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy text-heading-small text-align-x-center", ["Text"]}]
      492 LOADK                            R37 K64 ["AudienceTabs"]
      493 LOADK                            R38 K92 ["NoEarlyTesters"]
      494 NAMECALL                         R35 R19 K68 ["getText"]
      496 CALL                             R35 3 1
      497 SETTABLEKS                       R35 R34 K62 ["Text"]
      499 CALL                             R32 2 1
      500 SETTABLEKS                       R32 R31 K82 ["EmptyTitle"]
      502 GETUPVAL                         R32 13
      503 GETTABLEKS                       R32 R32 K23 ["createElement"]
      505 GETUPVAL                         R33 15
      506 DUPTABLE                         R34 K95 [{["LayoutOrder"] = 3, ["tag"] = "auto-xy text-body-medium text-align-x-center", ["Text"]}]
      507 LOADK                            R37 K64 ["AudienceTabs"]
      508 LOADK                            R38 K65 ["PlayTesterLimit"]
      509 DUPTABLE                         R39 K67 [{"maxNumPlayTesters"}]
      510 SETTABLEKS                       R20 R39 K66 ["maxNumPlayTesters"]
      512 NAMECALL                         R35 R19 K68 ["getText"]
      514 CALL                             R35 4 1
      515 SETTABLEKS                       R35 R34 K62 ["Text"]
      517 CALL                             R32 2 1
      518 SETTABLEKS                       R32 R31 K83 ["EmptySubtitle"]
      520 CALL                             R28 3 1
      521 SETTABLEKS                       R28 R27 K52 ["EmptyEarlyTesters"]
      523 NOT                              R28 R23
      524 JUMPIFNOT                        R28 ; [+11]
      525 GETUPVAL                         R28 7
      526 GETTABLEKS                       R28 R28 K23 ["createElement"]
      528 GETUPVAL                         R29 12
      529 DUPTABLE                         R30 K96 [{["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1}]
      530 NEWTABLE                         R31 0 1
      532 MOVE                             R32 R11
      533 SETLIST                          R31 R32 1 [1]
      535 CALL                             R28 3 1
      536 SETTABLEKS                       R28 R27 K53 ["CollaboratorList"]
      538 CALL                             R24 3 -1
      539 RETURN                           R24 -1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["GameOwnerMetadata"]
        2 GETTABLEKS                       R3 R3 K1 ["creatorType"]
        4 GETIMPORT                        R4 K5 [Enum.CreatorType.Group]
        6 JUMPIFEQ                         R3 R4 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 GETUPVAL                         R3 0
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R4 R1 K6 ["ActiveTab"]
       15 NEWTABLE                         R5 0 0
       17 NEWTABLE                         R6 0 0
       19 NEWTABLE                         R7 0 0
       21 NEWTABLE                         R8 0 0
       23 NEWTABLE                         R9 0 0
       25 NEWTABLE                         R10 0 0
       27 LOADB                            R11 0
       28 JUMPIFNOT                        R3 ; [+27]
       29 GETUPVAL                         R12 1
       30 GETTABLEKS                       R12 R12 K7 ["AUDIENCE_TAB_ACCESS"]
       32 JUMPIFNOTEQ                      R4 R12 ; [+13]
       34 GETUPVAL                         R12 2
       35 MOVE                             R13 R0
       36 CALL                             R12 1 2
       37 MOVE                             R5 R12
       38 MOVE                             R6 R13
       39 GETUPVAL                         R12 3
       40 MOVE                             R13 R0
       41 CALL                             R12 1 2
       42 MOVE                             R7 R12
       43 MOVE                             R8 R13
       44 LOADB                            R11 1
       45 JUMP                             ; [+95]
       46 GETUPVAL                         R12 1
       47 GETTABLEKS                       R12 R12 K8 ["AUDIENCE_TAB_EARLY_TESTERS"]
       49 JUMPIFNOTEQ                      R4 R12 ; [+91]
       51 GETUPVAL                         R12 4
       52 MOVE                             R13 R0
       53 CALL                             R12 1 1
       54 MOVE                             R10 R12
       55 JUMP                             ; [+85]
       56 GETUPVAL                         R12 5
       57 MOVE                             R13 R0
       58 CALL                             R12 1 1
       59 JUMPIFNOT                        R12 ; [+3]
       60 GETTABLEKS                       R13 R12 K9 ["filters"]
       62 JUMPIF                           R13 ; [+2]
       63 NEWTABLE                         R13 0 0
       65 GETUPVAL                         R15 6
       66 GETTABLEKS                       R15 R15 K10 ["UserSubjectKey"]
       68 GETTABLE                         R14 R13 R15
       69 JUMPIFNOT                        R14 ; [+5]
       70 GETUPVAL                         R14 2
       71 MOVE                             R15 R0
       72 CALL                             R14 1 2
       73 MOVE                             R5 R14
       74 MOVE                             R6 R15
       75 GETUPVAL                         R15 6
       76 GETTABLEKS                       R15 R15 K11 ["RoleSubjectKey"]
       78 GETTABLE                         R14 R13 R15
       79 JUMPIFNOT                        R14 ; [+9]
       80 GETUPVAL                         R14 3
       81 MOVE                             R15 R0
       82 CALL                             R14 1 2
       83 MOVE                             R7 R14
       84 MOVE                             R8 R15
       85 GETUPVAL                         R14 7
       86 MOVE                             R15 R0
       87 CALL                             R14 1 1
       88 MOVE                             R9 R14
       89 GETUPVAL                         R14 8
       90 GETTABLEKS                       R14 R14 K12 ["fflagCollabPV2GroupMigration"]
       92 JUMPIFNOT                        R14 ; [+14]
       93 GETTABLEKS                       R14 R0 K13 ["GroupMigrationStatus"]
       95 JUMPIFNOT                        R14 ; [+11]
       96 GETTABLEKS                       R15 R0 K13 ["GroupMigrationStatus"]
       98 GETTABLEKS                       R15 R15 K14 ["Status"]
      100 GETUPVAL                         R16 9
      101 GETTABLEKS                       R16 R16 K15 ["MIGRATED"]
      103 JUMPIFEQ                         R15 R16 ; [+2]
      105 LOADB                            R14 0 +1
      106 LOADB                            R14 1
      107 GETTABLEKS                       R15 R0 K0 ["GameOwnerMetadata"]
      109 GETTABLEKS                       R15 R15 K1 ["creatorType"]
      111 GETIMPORT                        R16 K17 [Enum.CreatorType.User]
      113 JUMPIFNOTEQ                      R15 R16 ; [+10]
      115 GETUPVAL                         R16 6
      116 GETTABLEKS                       R16 R16 K10 ["UserSubjectKey"]
      118 GETTABLE                         R15 R13 R16
      119 JUMPIFEQKB                       R15 TRUE ; [+2]
      121 LOADB                            R11 0 +1
      122 LOADB                            R11 1
      123 JUMP                             ; [+17]
      124 GETTABLEKS                       R15 R0 K0 ["GameOwnerMetadata"]
      126 GETTABLEKS                       R15 R15 K1 ["creatorType"]
      128 GETIMPORT                        R16 K5 [Enum.CreatorType.Group]
      130 JUMPIFNOTEQ                      R15 R16 ; [+9]
      132 GETUPVAL                         R16 6
      133 GETTABLEKS                       R16 R16 K11 ["RoleSubjectKey"]
      135 GETTABLE                         R15 R13 R16
      136 JUMPIFNOT                        R15 ; [+1]
      137 NOT                              R15 R14
      138 MOVE                             R11 R15
      139 JUMP                             ; [+1]
      140 LOADB                            R11 1
      141 DUPTABLE                         R12 K30 [{"NewUserCollaborators", "CurrentUserCollaborators", "NewGroupCollaborators", "CurrentGroupCollaborators", "GranularCollaborators", "PendingPlayTesters", "PendingPlayTesterCount", "OwnerId", "OwnerType", "ShowOwner", "IsGroupGame", "CanCollaborateResponses"}]
      142 SETTABLEKS                       R5 R12 K18 ["NewUserCollaborators"]
      144 SETTABLEKS                       R6 R12 K19 ["CurrentUserCollaborators"]
      146 SETTABLEKS                       R7 R12 K20 ["NewGroupCollaborators"]
      148 SETTABLEKS                       R8 R12 K21 ["CurrentGroupCollaborators"]
      150 SETTABLEKS                       R9 R12 K22 ["GranularCollaborators"]
      152 SETTABLEKS                       R10 R12 K23 ["PendingPlayTesters"]
      154 JUMPIFNOT                        R3 ; [+4]
      155 GETUPVAL                         R13 10
      156 MOVE                             R14 R0
      157 CALL                             R13 1 1
      158 JUMP                             ; [+1]
      159 LOADNIL                          R13
      160 SETTABLEKS                       R13 R12 K24 ["PendingPlayTesterCount"]
      162 GETTABLEKS                       R13 R0 K0 ["GameOwnerMetadata"]
      164 GETTABLEKS                       R13 R13 K31 ["creatorId"]
      166 SETTABLEKS                       R13 R12 K25 ["OwnerId"]
      168 GETTABLEKS                       R13 R0 K0 ["GameOwnerMetadata"]
      170 GETTABLEKS                       R13 R13 K1 ["creatorType"]
      172 SETTABLEKS                       R13 R12 K26 ["OwnerType"]
      174 SETTABLEKS                       R11 R12 K27 ["ShowOwner"]
      176 SETTABLEKS                       R2 R12 K28 ["IsGroupGame"]
      178 GETUPVAL                         R14 8
      179 GETTABLEKS                       R14 R14 K32 ["fflagManageCollaboratorsActionNeededLabel"]
      181 JUMPIFNOT                        R14 ; [+3]
      182 GETTABLEKS                       R13 R0 K29 ["CanCollaborateResponses"]
      184 JUMP                             ; [+1]
      185 LOADNIL                          R13
      186 SETTABLEKS                       R13 R12 K29 ["CanCollaborateResponses"]
      188 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["COLLAB2850_FixMcTooltips"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["RoactRodux"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R1 K12 ["Bin"]
       33 GETTABLEKS                       R5 R5 K13 ["defineLuaFlags"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K8 [require]
       38 GETTABLEKS                       R6 R1 K9 ["Packages"]
       40 GETTABLEKS                       R6 R6 K14 ["Framework"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R5 R5 K15 ["ContextServices"]
       45 GETTABLEKS                       R6 R5 K16 ["withContext"]
       47 GETIMPORT                        R7 K8 [require]
       49 GETTABLEKS                       R8 R1 K9 ["Packages"]
       51 GETTABLEKS                       R8 R8 K14 ["Framework"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R7 K17 ["Style"]
       56 GETTABLEKS                       R8 R8 K18 ["Stylizer"]
       58 GETIMPORT                        R9 K8 [require]
       60 GETTABLEKS                       R10 R1 K19 ["Src"]
       62 GETTABLEKS                       R10 R10 K20 ["Util"]
       64 GETTABLEKS                       R10 R10 K21 ["CreateFitToContent"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K8 [require]
       69 GETTABLEKS                       R11 R1 K19 ["Src"]
       71 GETTABLEKS                       R11 R11 K22 ["Components"]
       73 GETTABLEKS                       R11 R11 K23 ["UserCollaboratorItem"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K8 [require]
       78 GETTABLEKS                       R12 R1 K19 ["Src"]
       80 GETTABLEKS                       R12 R12 K22 ["Components"]
       82 GETTABLEKS                       R12 R12 K24 ["GroupCollaboratorItem"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K8 [require]
       87 GETTABLEKS                       R13 R1 K19 ["Src"]
       89 GETTABLEKS                       R13 R13 K22 ["Components"]
       91 GETTABLEKS                       R13 R13 K25 ["GranularCollaboratorItem"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K8 [require]
       96 GETTABLEKS                       R14 R1 K19 ["Src"]
       98 GETTABLEKS                       R14 R14 K26 ["Selectors"]
      100 GETTABLEKS                       R14 R14 K27 ["GetUserCollaborators"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K8 [require]
      105 GETTABLEKS                       R15 R1 K19 ["Src"]
      107 GETTABLEKS                       R15 R15 K26 ["Selectors"]
      109 GETTABLEKS                       R15 R15 K28 ["GetGroupCollaborators"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K8 [require]
      114 GETTABLEKS                       R16 R1 K19 ["Src"]
      116 GETTABLEKS                       R16 R16 K26 ["Selectors"]
      118 GETTABLEKS                       R16 R16 K29 ["GetGranularCollaborators"]
      120 CALL                             R15 1 1
      121 GETIMPORT                        R16 K8 [require]
      123 GETTABLEKS                       R17 R1 K19 ["Src"]
      125 GETTABLEKS                       R17 R17 K26 ["Selectors"]
      127 GETTABLEKS                       R17 R17 K30 ["GetSelectedFilterPill"]
      129 CALL                             R16 1 1
      130 GETIMPORT                        R17 K8 [require]
      132 GETTABLEKS                       R18 R1 K19 ["Src"]
      134 GETTABLEKS                       R18 R18 K26 ["Selectors"]
      136 GETTABLEKS                       R18 R18 K31 ["GetPendingPlayTesters"]
      138 CALL                             R17 1 1
      139 GETIMPORT                        R18 K8 [require]
      141 GETTABLEKS                       R19 R1 K19 ["Src"]
      143 GETTABLEKS                       R19 R19 K26 ["Selectors"]
      145 GETTABLEKS                       R19 R19 K32 ["GetPendingPlayTesterCount"]
      147 CALL                             R18 1 1
      148 GETIMPORT                        R19 K8 [require]
      150 GETTABLEKS                       R20 R1 K19 ["Src"]
      152 GETTABLEKS                       R20 R20 K20 ["Util"]
      154 GETTABLEKS                       R20 R20 K33 ["GetPlayTesterPermissionMaxCount"]
      156 CALL                             R19 1 1
      157 GETIMPORT                        R20 K8 [require]
      159 GETTABLEKS                       R21 R1 K19 ["Src"]
      161 GETTABLEKS                       R21 R21 K20 ["Util"]
      163 GETTABLEKS                       R21 R21 K34 ["MigrationStatus"]
      165 CALL                             R20 1 1
      166 GETIMPORT                        R21 K8 [require]
      168 GETTABLEKS                       R22 R1 K19 ["Src"]
      170 GETTABLEKS                       R22 R22 K20 ["Util"]
      172 GETTABLEKS                       R22 R22 K35 ["Constants"]
      174 CALL                             R21 1 1
      175 GETIMPORT                        R22 K8 [require]
      177 GETTABLEKS                       R23 R1 K19 ["Src"]
      179 GETTABLEKS                       R23 R23 K20 ["Util"]
      181 GETTABLEKS                       R23 R23 K36 ["ShouldShowAudienceTabs"]
      183 CALL                             R22 1 1
      184 GETIMPORT                        R23 K8 [require]
      186 GETTABLEKS                       R24 R1 K19 ["Src"]
      188 GETTABLEKS                       R24 R24 K22 ["Components"]
      190 GETTABLEKS                       R24 R24 K37 ["PendingPlayTesterCollaboratorItem"]
      192 CALL                             R23 1 1
      193 GETIMPORT                        R24 K8 [require]
      195 GETTABLEKS                       R25 R1 K9 ["Packages"]
      197 GETTABLEKS                       R25 R25 K38 ["React"]
      199 CALL                             R24 1 1
      200 GETIMPORT                        R25 K8 [require]
      202 GETTABLEKS                       R26 R1 K9 ["Packages"]
      204 GETTABLEKS                       R26 R26 K39 ["Foundation"]
      206 CALL                             R25 1 1
      207 GETTABLEKS                       R26 R25 K40 ["Text"]
      209 GETTABLEKS                       R27 R25 K41 ["View"]
      211 GETTABLEKS                       R28 R25 K42 ["Badge"]
      213 GETTABLEKS                       R29 R25 K43 ["Icon"]
      215 GETTABLEKS                       R30 R25 K44 ["Enums"]
      217 GETTABLEKS                       R30 R30 K45 ["IconSize"]
      219 GETTABLEKS                       R31 R25 K44 ["Enums"]
      221 GETTABLEKS                       R31 R31 K46 ["IconName"]
      223 GETTABLEKS                       R32 R7 K20 ["Util"]
      225 GETTABLEKS                       R33 R32 K47 ["LayoutOrderIterator"]
      227 MOVE                             R34 R9
      228 LOADK                            R35 K48 ["Frame"]
      229 LOADK                            R36 K49 ["UIListLayout"]
      230 DUPTABLE                         R37 K54 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment"}]
      231 GETIMPORT                        R38 K57 [Enum.SortOrder.LayoutOrder]
      233 SETTABLEKS                       R38 R37 K50 ["SortOrder"]
      235 GETIMPORT                        R38 K59 [Enum.FillDirection.Vertical]
      237 SETTABLEKS                       R38 R37 K51 ["FillDirection"]
      239 GETIMPORT                        R38 K62 [UDim.new]
      241 LOADN                            R39 0
      242 LOADN                            R40 0
      243 CALL                             R38 2 1
      244 SETTABLEKS                       R38 R37 K52 ["Padding"]
      246 GETIMPORT                        R38 K64 [Enum.HorizontalAlignment.Center]
      248 SETTABLEKS                       R38 R37 K53 ["HorizontalAlignment"]
      250 CALL                             R34 3 1
      251 GETTABLEKS                       R35 R2 K65 ["PureComponent"]
      253 LOADK                            R37 K66 ["CollaboratorsWidget"]
      254 NAMECALL                         R35 R35 K67 ["extend"]
      256 CALL                             R35 2 1
      257 GETIMPORT                        R36 K8 [require]
      259 GETTABLEKS                       R37 R1 K19 ["Src"]
      261 GETTABLEKS                       R37 R37 K20 ["Util"]
      263 GETTABLEKS                       R37 R37 K68 ["PermissionsConstants"]
      265 CALL                             R36 1 1
      266 DUPCLOSURE                       R37 K69 [PROTO_0]
      267 CAPTURE                          VAL R0
      268 CAPTURE                          VAL R33
      269 CAPTURE                          VAL R4
      270 CAPTURE                          VAL R22
      271 CAPTURE                          VAL R21
      272 CAPTURE                          VAL R10
      273 CAPTURE                          VAL R11
      274 CAPTURE                          VAL R2
      275 CAPTURE                          VAL R12
      276 CAPTURE                          VAL R36
      277 CAPTURE                          VAL R23
      278 CAPTURE                          VAL R19
      279 CAPTURE                          VAL R34
      280 CAPTURE                          VAL R24
      281 CAPTURE                          VAL R27
      282 CAPTURE                          VAL R26
      283 CAPTURE                          VAL R28
      284 CAPTURE                          VAL R29
      285 CAPTURE                          VAL R31
      286 CAPTURE                          VAL R30
      287 SETTABLEKS                       R37 R35 K70 ["render"]
      289 MOVE                             R37 R6
      290 DUPTABLE                         R38 K72 [{"Stylizer", "Localization"}]
      291 SETTABLEKS                       R8 R38 K18 ["Stylizer"]
      293 GETTABLEKS                       R39 R5 K71 ["Localization"]
      295 SETTABLEKS                       R39 R38 K71 ["Localization"]
      297 CALL                             R37 1 1
      298 MOVE                             R38 R35
      299 CALL                             R37 1 1
      300 MOVE                             R35 R37
      301 GETTABLEKS                       R37 R3 K73 ["connect"]
      303 DUPCLOSURE                       R38 K74 [PROTO_1]
      304 CAPTURE                          VAL R22
      305 CAPTURE                          VAL R21
      306 CAPTURE                          VAL R13
      307 CAPTURE                          VAL R14
      308 CAPTURE                          VAL R17
      309 CAPTURE                          VAL R16
      310 CAPTURE                          VAL R36
      311 CAPTURE                          VAL R15
      312 CAPTURE                          VAL R4
      313 CAPTURE                          VAL R20
      314 CAPTURE                          VAL R18
      315 CALL                             R37 1 1
      316 MOVE                             R38 R35
      317 CALL                             R37 1 1
      318 MOVE                             R35 R37
      319 RETURN                           R35 1
