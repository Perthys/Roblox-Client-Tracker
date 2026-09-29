PROTO_0:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^%s*([^=]+)%s*=%s*([^=]+)%s*$"]
        4 CALL                             R1 2 2
        5 JUMPIFNOT                        R1 ; [+30]
        6 JUMPIFNOT                        R2 ; [+29]
        7 GETIMPORT                        R3 K2 [string.match]
        9 MOVE                             R4 R1
       10 LOADK                            R5 K4 ["^%s*(.-)%s*$"]
       11 CALL                             R3 2 1
       12 MOVE                             R1 R3
       13 GETIMPORT                        R3 K2 [string.match]
       15 MOVE                             R4 R2
       16 LOADK                            R5 K4 ["^%s*(.-)%s*$"]
       17 CALL                             R3 2 1
       18 MOVE                             R2 R3
       19 JUMPIFEQKS                       R1 K5 [""] ; [+16]
       21 JUMPIFEQKS                       R2 K5 [""] ; [+14]
       23 GETUPVAL                         R4 0
       24 DUPTABLE                         R5 K8 [{"toolName", "widgetType"}]
       25 SETTABLEKS                       R1 R5 K6 ["toolName"]
       27 SETTABLEKS                       R2 R5 K7 ["widgetType"]
       29 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       31 GETIMPORT                        R3 K11 [table.insert]
       33 CALL                             R3 2 0
       34 LOADB                            R3 1
       35 RETURN                           R3 1
       36 LOADB                            R3 0
       37 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FStringAssistantToolWidgetMappings"]
        3 NEWTABLE                         R1 0 0
        5 JUMPIFNOTEQKS                    R0 K1 [""] ; [+2]
        7 RETURN                           R1 1
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R1
       10 GETIMPORT                        R3 K4 [string.gmatch]
       12 MOVE                             R4 R0
       13 LOADK                            R5 K5 ["[^,]+"]
       14 CALL                             R3 2 3
       15 FORGPREP                         R3
       16 MOVE                             R8 R2
       17 MOVE                             R9 R6
       18 CALL                             R8 1 1
       19 JUMPIF                           R8 ; [+12]
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R9 R9 K6 ["FFlagDebugLogAssistantUI"]
       23 JUMPIFNOT                        R9 ; [+8]
       24 GETIMPORT                        R9 K8 [warn]
       26 LOADK                            R10 K9 ["[registerToolWidgetMappings] Invalid FString mapping format: \"%*\""]
       27 MOVE                             R12 R6
       28 NAMECALL                         R10 R10 K10 ["format"]
       30 CALL                             R10 2 1
       31 CALL                             R9 1 0
       32 FORGLOOP                         R3 1 ; [-17]
       34 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["add"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["AnimationGen"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["Type"]
        9 GETUPVAL                         R3 3
       10 CALL                             R0 3 0
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K0 ["add"]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K3 ["AskInput"]
       17 GETUPVAL                         R2 4
       18 GETTABLEKS                       R2 R2 K2 ["Type"]
       20 GETUPVAL                         R3 3
       21 CALL                             R0 3 0
       22 GETUPVAL                         R0 0
       23 GETTABLEKS                       R0 R0 K0 ["add"]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K4 ["AssetInsert"]
       28 GETUPVAL                         R2 5
       29 GETTABLEKS                       R2 R2 K2 ["Type"]
       31 GETUPVAL                         R3 3
       32 CALL                             R0 3 0
       33 GETUPVAL                         R0 0
       34 GETTABLEKS                       R0 R0 K0 ["add"]
       36 GETUPVAL                         R1 1
       37 GETTABLEKS                       R1 R1 K5 ["AssetSearch"]
       39 GETUPVAL                         R2 6
       40 GETTABLEKS                       R2 R2 K2 ["Type"]
       42 GETUPVAL                         R3 3
       43 CALL                             R0 3 0
       44 GETUPVAL                         R0 0
       45 GETTABLEKS                       R0 R0 K0 ["add"]
       47 GETUPVAL                         R1 1
       48 GETTABLEKS                       R1 R1 K6 ["AvatarAutoSetup"]
       50 GETUPVAL                         R2 7
       51 GETTABLEKS                       R2 R2 K2 ["Type"]
       53 GETUPVAL                         R3 3
       54 CALL                             R0 3 0
       55 GETUPVAL                         R0 0
       56 GETTABLEKS                       R0 R0 K0 ["add"]
       58 GETUPVAL                         R1 1
       59 GETTABLEKS                       R1 R1 K7 ["CharacterNavigation"]
       61 LOADNIL                          R2
       62 GETUPVAL                         R3 3
       63 CALL                             R0 3 0
       64 GETUPVAL                         R0 0
       65 GETTABLEKS                       R0 R0 K0 ["add"]
       67 GETUPVAL                         R1 1
       68 GETTABLEKS                       R1 R1 K8 ["CompleteTodoItems"]
       70 GETUPVAL                         R2 8
       71 GETUPVAL                         R3 3
       72 CALL                             R0 3 0
       73 GETUPVAL                         R0 0
       74 GETTABLEKS                       R0 R0 K0 ["add"]
       76 GETUPVAL                         R1 1
       77 GETTABLEKS                       R1 R1 K9 ["CreateSkill"]
       79 GETUPVAL                         R2 9
       80 GETTABLEKS                       R2 R2 K2 ["Type"]
       82 GETUPVAL                         R3 3
       83 CALL                             R0 3 0
       84 GETUPVAL                         R0 0
       85 GETTABLEKS                       R0 R0 K0 ["add"]
       87 GETUPVAL                         R1 1
       88 GETTABLEKS                       R1 R1 K10 ["EditSkill"]
       90 GETUPVAL                         R2 9
       91 GETTABLEKS                       R2 R2 K2 ["Type"]
       93 GETUPVAL                         R3 3
       94 CALL                             R0 3 0
       95 GETUPVAL                         R0 0
       96 GETTABLEKS                       R0 R0 K0 ["add"]
       98 GETUPVAL                         R1 1
       99 GETTABLEKS                       R1 R1 K11 ["ExecuteLuau"]
      101 GETUPVAL                         R2 10
      102 GETTABLEKS                       R2 R2 K2 ["Type"]
      104 GETUPVAL                         R3 3
      105 CALL                             R0 3 0
      106 GETUPVAL                         R0 0
      107 GETTABLEKS                       R0 R0 K0 ["add"]
      109 GETUPVAL                         R1 1
      110 GETTABLEKS                       R1 R1 K12 ["FileSearch"]
      112 GETUPVAL                         R2 11
      113 GETTABLEKS                       R2 R2 K2 ["Type"]
      115 GETUPVAL                         R3 3
      116 CALL                             R0 3 0
      117 GETUPVAL                         R0 0
      118 GETTABLEKS                       R0 R0 K0 ["add"]
      120 GETUPVAL                         R1 1
      121 GETTABLEKS                       R1 R1 K13 ["FinalizePlan"]
      123 GETUPVAL                         R2 12
      124 GETTABLEKS                       R2 R2 K2 ["Type"]
      126 GETUPVAL                         R3 3
      127 CALL                             R0 3 0
      128 GETUPVAL                         R0 0
      129 GETTABLEKS                       R0 R0 K0 ["add"]
      131 GETUPVAL                         R1 1
      132 GETTABLEKS                       R1 R1 K14 ["FromHistory"]
      134 GETUPVAL                         R2 13
      135 GETTABLEKS                       R2 R2 K2 ["Type"]
      137 GETUPVAL                         R3 3
      138 CALL                             R0 3 0
      139 GETUPVAL                         R0 0
      140 GETTABLEKS                       R0 R0 K0 ["add"]
      142 GETUPVAL                         R1 1
      143 GETTABLEKS                       R1 R1 K15 ["GameTree"]
      145 GETUPVAL                         R2 14
      146 GETTABLEKS                       R2 R2 K2 ["Type"]
      148 GETUPVAL                         R3 3
      149 CALL                             R0 3 0
      150 GETUPVAL                         R0 0
      151 GETTABLEKS                       R0 R0 K0 ["add"]
      153 GETUPVAL                         R1 1
      154 GETTABLEKS                       R1 R1 K16 ["GenerateLayout"]
      156 LOADNIL                          R2
      157 GETUPVAL                         R3 3
      158 CALL                             R0 3 0
      159 GETUPVAL                         R0 0
      160 GETTABLEKS                       R0 R0 K0 ["add"]
      162 GETUPVAL                         R1 1
      163 GETTABLEKS                       R1 R1 K17 ["GetConsoleOutput"]
      165 LOADNIL                          R2
      166 GETUPVAL                         R3 3
      167 CALL                             R0 3 0
      168 GETUPVAL                         R0 0
      169 GETTABLEKS                       R0 R0 K0 ["add"]
      171 GETUPVAL                         R1 1
      172 GETTABLEKS                       R1 R1 K18 ["GetStudioState"]
      174 LOADNIL                          R2
      175 GETUPVAL                         R3 3
      176 CALL                             R0 3 0
      177 GETUPVAL                         R0 0
      178 GETTABLEKS                       R0 R0 K0 ["add"]
      180 GETUPVAL                         R1 1
      181 GETTABLEKS                       R1 R1 K19 ["GrepSearch"]
      183 GETUPVAL                         R2 15
      184 GETTABLEKS                       R2 R2 K2 ["Type"]
      186 GETUPVAL                         R3 3
      187 CALL                             R0 3 0
      188 GETUPVAL                         R0 0
      189 GETTABLEKS                       R0 R0 K0 ["add"]
      191 GETUPVAL                         R1 1
      192 GETTABLEKS                       R1 R1 K20 ["HttpGet"]
      194 GETUPVAL                         R2 16
      195 GETTABLEKS                       R2 R2 K2 ["Type"]
      197 GETUPVAL                         R3 3
      198 CALL                             R0 3 0
      199 GETUPVAL                         R0 0
      200 GETTABLEKS                       R0 R0 K0 ["add"]
      202 GETUPVAL                         R1 1
      203 GETTABLEKS                       R1 R1 K21 ["InspectInstance"]
      205 GETUPVAL                         R2 17
      206 GETTABLEKS                       R2 R2 K2 ["Type"]
      208 GETUPVAL                         R3 3
      209 CALL                             R0 3 0
      210 GETUPVAL                         R0 18
      211 GETTABLEKS                       R0 R0 K22 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
      213 JUMPIF                           R0 ; [+11]
      214 GETUPVAL                         R0 0
      215 GETTABLEKS                       R0 R0 K0 ["add"]
      217 GETUPVAL                         R1 1
      218 GETTABLEKS                       R1 R1 K23 ["JobRun"]
      220 GETUPVAL                         R2 19
      221 GETTABLEKS                       R2 R2 K2 ["Type"]
      223 GETUPVAL                         R3 3
      224 CALL                             R0 3 0
      225 GETUPVAL                         R0 0
      226 GETTABLEKS                       R0 R0 K0 ["add"]
      228 GETUPVAL                         R1 1
      229 GETTABLEKS                       R1 R1 K24 ["JobWait"]
      231 GETUPVAL                         R2 20
      232 GETTABLEKS                       R2 R2 K2 ["Type"]
      234 GETUPVAL                         R3 3
      235 CALL                             R0 3 0
      236 GETUPVAL                         R0 0
      237 GETTABLEKS                       R0 R0 K0 ["add"]
      239 GETUPVAL                         R1 1
      240 GETTABLEKS                       R1 R1 K25 ["MaterialGen"]
      242 GETUPVAL                         R2 21
      243 GETTABLEKS                       R2 R2 K2 ["Type"]
      245 GETUPVAL                         R3 3
      246 CALL                             R0 3 0
      247 GETUPVAL                         R0 0
      248 GETTABLEKS                       R0 R0 K0 ["add"]
      250 GETUPVAL                         R1 1
      251 GETTABLEKS                       R1 R1 K26 ["MeshGen"]
      253 GETUPVAL                         R2 22
      254 GETTABLEKS                       R2 R2 K2 ["Type"]
      256 GETUPVAL                         R3 3
      257 CALL                             R0 3 0
      258 GETUPVAL                         R0 0
      259 GETTABLEKS                       R0 R0 K0 ["add"]
      261 GETUPVAL                         R1 1
      262 GETTABLEKS                       R1 R1 K27 ["SegmentMesh"]
      264 GETUPVAL                         R3 18
      265 GETTABLEKS                       R3 R3 K28 ["FFlagAssistantSegmentMeshTool"]
      267 JUMPIFNOT                        R3 ; [+4]
      268 GETUPVAL                         R2 23
      269 GETTABLEKS                       R2 R2 K2 ["Type"]
      271 JUMP                             ; [+1]
      272 LOADNIL                          R2
      273 GETUPVAL                         R3 3
      274 CALL                             R0 3 0
      275 GETUPVAL                         R0 0
      276 GETTABLEKS                       R0 R0 K0 ["add"]
      278 GETUPVAL                         R1 1
      279 GETTABLEKS                       R1 R1 K29 ["TextureGen"]
      281 GETUPVAL                         R3 18
      282 GETTABLEKS                       R3 R3 K30 ["FFlagAssistantTextureGenTool"]
      284 JUMPIFNOT                        R3 ; [+4]
      285 GETUPVAL                         R2 24
      286 GETTABLEKS                       R2 R2 K2 ["Type"]
      288 JUMP                             ; [+1]
      289 LOADNIL                          R2
      290 GETUPVAL                         R3 3
      291 CALL                             R0 3 0
      292 GETUPVAL                         R0 0
      293 GETTABLEKS                       R0 R0 K0 ["add"]
      295 GETUPVAL                         R1 1
      296 GETTABLEKS                       R1 R1 K31 ["MultiEdit"]
      298 LOADNIL                          R2
      299 GETUPVAL                         R3 3
      300 CALL                             R0 3 0
      301 GETUPVAL                         R0 0
      302 GETTABLEKS                       R0 R0 K0 ["add"]
      304 GETUPVAL                         R1 1
      305 GETTABLEKS                       R1 R1 K32 ["MultiPlayerAgentsCommunication"]
      307 LOADNIL                          R2
      308 GETUPVAL                         R3 3
      309 CALL                             R0 3 0
      310 GETUPVAL                         R0 0
      311 GETTABLEKS                       R0 R0 K0 ["add"]
      313 GETUPVAL                         R1 1
      314 GETTABLEKS                       R1 R1 K33 ["PlaytestLook"]
      316 LOADNIL                          R2
      317 GETUPVAL                         R3 3
      318 CALL                             R0 3 0
      319 GETUPVAL                         R0 0
      320 GETTABLEKS                       R0 R0 K0 ["add"]
      322 GETUPVAL                         R1 1
      323 GETTABLEKS                       R1 R1 K34 ["PrimitiveGen"]
      325 GETUPVAL                         R2 25
      326 GETTABLEKS                       R2 R2 K2 ["Type"]
      328 GETUPVAL                         R3 3
      329 CALL                             R0 3 0
      330 GETUPVAL                         R0 0
      331 GETTABLEKS                       R0 R0 K0 ["add"]
      333 GETUPVAL                         R1 1
      334 GETTABLEKS                       R1 R1 K35 ["QuestionAnswer"]
      336 GETUPVAL                         R2 26
      337 GETTABLEKS                       R2 R2 K2 ["Type"]
      339 GETUPVAL                         R3 3
      340 CALL                             R0 3 0
      341 GETUPVAL                         R0 0
      342 GETTABLEKS                       R0 R0 K0 ["add"]
      344 GETUPVAL                         R1 1
      345 GETTABLEKS                       R1 R1 K36 ["ReadFile"]
      347 GETUPVAL                         R2 27
      348 GETTABLEKS                       R2 R2 K2 ["Type"]
      350 GETUPVAL                         R3 3
      351 CALL                             R0 3 0
      352 GETUPVAL                         R0 0
      353 GETTABLEKS                       R0 R0 K0 ["add"]
      355 GETUPVAL                         R1 1
      356 GETTABLEKS                       R1 R1 K37 ["ScreenCapture"]
      358 GETUPVAL                         R2 28
      359 GETTABLEKS                       R2 R2 K2 ["Type"]
      361 GETUPVAL                         R3 3
      362 CALL                             R0 3 0
      363 GETUPVAL                         R0 0
      364 GETTABLEKS                       R0 R0 K0 ["add"]
      366 GETUPVAL                         R1 1
      367 GETTABLEKS                       R1 R1 K38 ["Skill"]
      369 GETUPVAL                         R2 29
      370 GETTABLEKS                       R2 R2 K2 ["Type"]
      372 GETUPVAL                         R3 3
      373 CALL                             R0 3 0
      374 GETUPVAL                         R0 0
      375 GETTABLEKS                       R0 R0 K0 ["add"]
      377 GETUPVAL                         R1 1
      378 GETTABLEKS                       R1 R1 K39 ["StartMultiPlayerAgents"]
      380 LOADNIL                          R2
      381 GETUPVAL                         R3 3
      382 CALL                             R0 3 0
      383 GETUPVAL                         R0 0
      384 GETTABLEKS                       R0 R0 K0 ["add"]
      386 GETUPVAL                         R1 1
      387 GETTABLEKS                       R1 R1 K40 ["StartStopPlay"]
      389 LOADNIL                          R2
      390 GETUPVAL                         R3 3
      391 CALL                             R0 3 0
      392 GETUPVAL                         R0 0
      393 GETTABLEKS                       R0 R0 K0 ["add"]
      395 GETUPVAL                         R1 1
      396 GETTABLEKS                       R1 R1 K41 ["StopMultiPlayerAgents"]
      398 LOADNIL                          R2
      399 GETUPVAL                         R3 3
      400 CALL                             R0 3 0
      401 GETUPVAL                         R0 0
      402 GETTABLEKS                       R0 R0 K0 ["add"]
      404 GETUPVAL                         R1 1
      405 GETTABLEKS                       R1 R1 K42 ["StoreImage"]
      407 LOADNIL                          R2
      408 GETUPVAL                         R3 3
      409 CALL                             R0 3 0
      410 GETUPVAL                         R0 0
      411 GETTABLEKS                       R0 R0 K0 ["add"]
      413 GETUPVAL                         R1 1
      414 GETTABLEKS                       R1 R1 K43 ["Subagent"]
      416 GETUPVAL                         R2 30
      417 GETTABLEKS                       R2 R2 K2 ["Type"]
      419 GETUPVAL                         R3 3
      420 CALL                             R0 3 0
      421 GETUPVAL                         R0 0
      422 GETTABLEKS                       R0 R0 K0 ["add"]
      424 GETUPVAL                         R1 1
      425 GETTABLEKS                       R1 R1 K44 ["UpdatePlan"]
      427 GETUPVAL                         R2 8
      428 GETUPVAL                         R3 3
      429 CALL                             R0 3 0
      430 GETUPVAL                         R0 0
      431 GETTABLEKS                       R0 R0 K0 ["add"]
      433 GETUPVAL                         R1 1
      434 GETTABLEKS                       R1 R1 K45 ["UploadImage"]
      436 LOADNIL                          R2
      437 GETUPVAL                         R3 3
      438 CALL                             R0 3 0
      439 GETUPVAL                         R0 0
      440 GETTABLEKS                       R0 R0 K0 ["add"]
      442 GETUPVAL                         R1 1
      443 GETTABLEKS                       R1 R1 K46 ["UserKeyboardInput"]
      445 LOADNIL                          R2
      446 GETUPVAL                         R3 3
      447 CALL                             R0 3 0
      448 GETUPVAL                         R0 0
      449 GETTABLEKS                       R0 R0 K0 ["add"]
      451 GETUPVAL                         R1 1
      452 GETTABLEKS                       R1 R1 K47 ["UserMouseInput"]
      454 LOADNIL                          R2
      455 GETUPVAL                         R3 3
      456 CALL                             R0 3 0
      457 GETUPVAL                         R0 0
      458 GETTABLEKS                       R0 R0 K0 ["add"]
      460 GETUPVAL                         R1 1
      461 GETTABLEKS                       R1 R1 K48 ["VideoCapture"]
      463 LOADNIL                          R2
      464 GETUPVAL                         R3 3
      465 CALL                             R0 3 0
      466 GETUPVAL                         R0 0
      467 GETTABLEKS                       R0 R0 K0 ["add"]
      469 GETUPVAL                         R1 1
      470 GETTABLEKS                       R1 R1 K49 ["WaitForMultiPlayerAgentsCommunication"]
      472 LOADNIL                          R2
      473 GETUPVAL                         R3 3
      474 CALL                             R0 3 0
      475 GETUPVAL                         R0 0
      476 GETTABLEKS                       R0 R0 K0 ["add"]
      478 GETUPVAL                         R1 1
      479 GETTABLEKS                       R1 R1 K50 ["ListRobloxStudios"]
      481 GETUPVAL                         R2 8
      482 GETUPVAL                         R3 3
      483 CALL                             R0 3 0
      484 GETUPVAL                         R0 31
      485 CALL                             R0 0 1
      486 JUMPIFNOT                        R0 ; [+11]
      487 GETUPVAL                         R0 0
      488 GETTABLEKS                       R0 R0 K0 ["add"]
      490 GETUPVAL                         R1 1
      491 GETTABLEKS                       R1 R1 K51 ["CloudExecuteLuau"]
      493 GETUPVAL                         R2 10
      494 GETTABLEKS                       R2 R2 K2 ["Type"]
      496 GETUPVAL                         R3 3
      497 CALL                             R0 3 0
      498 GETUPVAL                         R0 32
      499 CALL                             R0 0 1
      500 LENGTH                           R1 R0
      501 LOADN                            R2 0
      502 JUMPIFNOTLT                      R2 R1 ; [+13]
      504 GETUPVAL                         R1 18
      505 GETTABLEKS                       R1 R1 K52 ["FFlagDebugLogAssistantUI"]
      507 JUMPIFNOT                        R1 ; [+8]
      508 GETIMPORT                        R1 K54 [print]
      510 LOADK                            R2 K55 ["[registerToolWidgetMappings] Applying %* FString mapping(s)"]
      511 LENGTH                           R4 R0
      512 NAMECALL                         R2 R2 K56 ["format"]
      514 CALL                             R2 2 1
      515 CALL                             R1 1 0
      516 MOVE                             R1 R0
      517 LOADNIL                          R2
      518 LOADNIL                          R3
      519 FORGPREP                         R1
      520 GETUPVAL                         R6 0
      521 GETTABLEKS                       R6 R6 K0 ["add"]
      523 GETTABLEKS                       R7 R5 K57 ["toolName"]
      525 GETTABLEKS                       R8 R5 K58 ["widgetType"]
      527 GETUPVAL                         R9 33
      528 GETTABLEKS                       R9 R9 K59 ["FString"]
      530 CALL                             R6 3 0
      531 FORGLOOP                         R1 2 ; [-12]
      533 GETUPVAL                         R1 18
      534 GETTABLEKS                       R1 R1 K52 ["FFlagDebugLogAssistantUI"]
      536 JUMPIFNOT                        R1 ; [+46]
      537 GETUPVAL                         R1 1
      538 LOADNIL                          R2
      539 LOADNIL                          R3
      540 FORGPREP                         R1
      541 FASTCALL1                        TYPEOF R5 ; [+3]
      542 MOVE                             R7 R5
      543 GETIMPORT                        R6 K61 [typeof]
      545 CALL                             R6 1 1
      546 JUMPIFNOTEQKS                    R6 K62 ["string"] ; [+34]
      548 GETUPVAL                         R6 31
      549 CALL                             R6 0 1
      550 JUMPIF                           R6 ; [+6]
      551 GETUPVAL                         R6 34
      552 GETTABLEKS                       R6 R6 K63 ["isCloudTool"]
      554 MOVE                             R7 R5
      555 CALL                             R6 1 1
      556 JUMPIF                           R6 ; [+24]
      557 GETUPVAL                         R6 1
      558 GETTABLEKS                       R6 R6 K23 ["JobRun"]
      560 JUMPIFNOTEQ                      R5 R6 ; [+5]
      562 GETUPVAL                         R6 18
      563 GETTABLEKS                       R6 R6 K22 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
      565 JUMPIF                           R6 ; [+15]
      566 GETUPVAL                         R6 0
      567 GETTABLEKS                       R6 R6 K64 ["get"]
      569 MOVE                             R7 R5
      570 CALL                             R6 1 1
      571 JUMPIF                           R6 ; [+9]
      572 GETIMPORT                        R6 K66 [error]
      574 LOADK                            R7 K67 ["[registerToolWidgetMappings] No widget mapping found for tool \"%*\""]
      575 MOVE                             R9 R5
      576 NAMECALL                         R7 R7 K56 ["format"]
      578 CALL                             R7 2 1
      579 LOADN                            R8 0
      580 CALL                             R6 2 0
      581 FORGLOOP                         R1 2 ; [-41]
      583 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R1 K9 ["Engine"]
       21 GETTABLEKS                       R3 R3 K10 ["Providers"]
       23 GETTABLEKS                       R3 R3 K11 ["ToolNames"]
       25 GETTABLEKS                       R4 R1 K12 ["ToolNaming"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K13 ["Util"]
       31 GETTABLEKS                       R6 R6 K14 ["ContentWidgets"]
       33 GETTABLEKS                       R6 R6 K15 ["ToolWidgetMappingRegistry"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K16 ["FlagUtils"]
       40 GETTABLEKS                       R7 R7 K17 ["getIsAssistantUseRemoteService"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R6 R6 K18 ["get"]
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K19 ["Components"]
       49 GETTABLEKS                       R8 R8 K14 ["ContentWidgets"]
       51 GETTABLEKS                       R8 R8 K20 ["AnimationGenContentWidget"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K19 ["Components"]
       58 GETTABLEKS                       R9 R9 K14 ["ContentWidgets"]
       60 GETTABLEKS                       R9 R9 K21 ["AskInputContentWidget"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K19 ["Components"]
       67 GETTABLEKS                       R10 R10 K14 ["ContentWidgets"]
       69 GETTABLEKS                       R10 R10 K22 ["AssetInsertContentWidget"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K19 ["Components"]
       76 GETTABLEKS                       R11 R11 K14 ["ContentWidgets"]
       78 GETTABLEKS                       R11 R11 K23 ["AssetSearchContentWidget"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K19 ["Components"]
       85 GETTABLEKS                       R12 R12 K14 ["ContentWidgets"]
       87 GETTABLEKS                       R12 R12 K24 ["AvatarAutoSetupContentWidget"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K19 ["Components"]
       94 GETTABLEKS                       R13 R13 K14 ["ContentWidgets"]
       96 GETTABLEKS                       R13 R13 K25 ["CreateSkillContentWidget"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R0 K19 ["Components"]
      103 GETTABLEKS                       R14 R14 K14 ["ContentWidgets"]
      105 GETTABLEKS                       R14 R14 K26 ["FileSearchContentWidget"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K19 ["Components"]
      112 GETTABLEKS                       R15 R15 K14 ["ContentWidgets"]
      114 GETTABLEKS                       R15 R15 K27 ["FinalizePlanContentWidget"]
      116 CALL                             R14 1 1
      117 GETIMPORT                        R15 K5 [require]
      119 GETTABLEKS                       R16 R0 K19 ["Components"]
      121 GETTABLEKS                       R16 R16 K14 ["ContentWidgets"]
      123 GETTABLEKS                       R16 R16 K28 ["FromHistoryContentWidget"]
      125 CALL                             R15 1 1
      126 GETIMPORT                        R16 K5 [require]
      128 GETTABLEKS                       R17 R0 K19 ["Components"]
      130 GETTABLEKS                       R17 R17 K14 ["ContentWidgets"]
      132 GETTABLEKS                       R17 R17 K29 ["GameTreeContentWidget"]
      134 CALL                             R16 1 1
      135 GETIMPORT                        R17 K5 [require]
      137 GETTABLEKS                       R18 R0 K19 ["Components"]
      139 GETTABLEKS                       R18 R18 K14 ["ContentWidgets"]
      141 GETTABLEKS                       R18 R18 K30 ["GrepSearchContentWidget"]
      143 CALL                             R17 1 1
      144 GETIMPORT                        R18 K5 [require]
      146 GETTABLEKS                       R19 R0 K19 ["Components"]
      148 GETTABLEKS                       R19 R19 K14 ["ContentWidgets"]
      150 GETTABLEKS                       R19 R19 K31 ["HttpGetContentWidget"]
      152 CALL                             R18 1 1
      153 GETIMPORT                        R19 K5 [require]
      155 GETTABLEKS                       R20 R0 K19 ["Components"]
      157 GETTABLEKS                       R20 R20 K14 ["ContentWidgets"]
      159 GETTABLEKS                       R20 R20 K32 ["InspectInstanceContentWidget"]
      161 CALL                             R19 1 1
      162 GETIMPORT                        R20 K5 [require]
      164 GETTABLEKS                       R21 R0 K19 ["Components"]
      166 GETTABLEKS                       R21 R21 K14 ["ContentWidgets"]
      168 GETTABLEKS                       R21 R21 K33 ["JobRunContentWidget"]
      170 CALL                             R20 1 1
      171 GETIMPORT                        R21 K5 [require]
      173 GETTABLEKS                       R22 R0 K19 ["Components"]
      175 GETTABLEKS                       R22 R22 K14 ["ContentWidgets"]
      177 GETTABLEKS                       R22 R22 K34 ["JobWaitContentWidget"]
      179 CALL                             R21 1 1
      180 GETIMPORT                        R22 K5 [require]
      182 GETTABLEKS                       R23 R0 K19 ["Components"]
      184 GETTABLEKS                       R23 R23 K14 ["ContentWidgets"]
      186 GETTABLEKS                       R23 R23 K35 ["MaterialGenContentWidget"]
      188 CALL                             R22 1 1
      189 GETIMPORT                        R23 K5 [require]
      191 GETTABLEKS                       R24 R0 K19 ["Components"]
      193 GETTABLEKS                       R24 R24 K14 ["ContentWidgets"]
      195 GETTABLEKS                       R24 R24 K36 ["MeshGenContentWidget"]
      197 CALL                             R23 1 1
      198 GETIMPORT                        R24 K5 [require]
      200 GETTABLEKS                       R25 R0 K19 ["Components"]
      202 GETTABLEKS                       R25 R25 K14 ["ContentWidgets"]
      204 GETTABLEKS                       R25 R25 K37 ["PrimitiveGenContentWidget"]
      206 CALL                             R24 1 1
      207 GETIMPORT                        R25 K5 [require]
      209 GETTABLEKS                       R26 R0 K19 ["Components"]
      211 GETTABLEKS                       R26 R26 K14 ["ContentWidgets"]
      213 GETTABLEKS                       R26 R26 K38 ["QuestionAnswerContentWidget"]
      215 CALL                             R25 1 1
      216 GETIMPORT                        R26 K5 [require]
      218 GETTABLEKS                       R27 R0 K19 ["Components"]
      220 GETTABLEKS                       R27 R27 K14 ["ContentWidgets"]
      222 GETTABLEKS                       R27 R27 K39 ["ReadFileContentWidget"]
      224 CALL                             R26 1 1
      225 GETIMPORT                        R27 K5 [require]
      227 GETTABLEKS                       R28 R0 K19 ["Components"]
      229 GETTABLEKS                       R28 R28 K14 ["ContentWidgets"]
      231 GETTABLEKS                       R28 R28 K40 ["RunCodeContentWidget"]
      233 CALL                             R27 1 1
      234 GETIMPORT                        R28 K5 [require]
      236 GETTABLEKS                       R29 R0 K19 ["Components"]
      238 GETTABLEKS                       R29 R29 K14 ["ContentWidgets"]
      240 GETTABLEKS                       R29 R29 K41 ["ScreenCaptureContentWidget"]
      242 CALL                             R28 1 1
      243 GETIMPORT                        R29 K5 [require]
      245 GETTABLEKS                       R30 R0 K19 ["Components"]
      247 GETTABLEKS                       R30 R30 K14 ["ContentWidgets"]
      249 GETTABLEKS                       R30 R30 K42 ["SegmentMeshContentWidget"]
      251 CALL                             R29 1 1
      252 GETIMPORT                        R30 K5 [require]
      254 GETTABLEKS                       R31 R0 K19 ["Components"]
      256 GETTABLEKS                       R31 R31 K14 ["ContentWidgets"]
      258 GETTABLEKS                       R31 R31 K43 ["SkillContentWidget"]
      260 CALL                             R30 1 1
      261 GETIMPORT                        R31 K5 [require]
      263 GETTABLEKS                       R32 R0 K19 ["Components"]
      265 GETTABLEKS                       R32 R32 K14 ["ContentWidgets"]
      267 GETTABLEKS                       R32 R32 K44 ["SubagentContentWidget"]
      269 CALL                             R31 1 1
      270 GETIMPORT                        R32 K5 [require]
      272 GETTABLEKS                       R33 R0 K19 ["Components"]
      274 GETTABLEKS                       R33 R33 K14 ["ContentWidgets"]
      276 GETTABLEKS                       R33 R33 K45 ["TextureGenContentWidget"]
      278 CALL                             R32 1 1
      279 GETTABLEKS                       R33 R5 K46 ["MappingSource"]
      281 GETTABLEKS                       R34 R33 K47 ["Hardcoded"]
      283 GETTABLEKS                       R35 R5 K48 ["None"]
      285 DUPCLOSURE                       R36 K49 [PROTO_1]
      286 CAPTURE                          VAL R2
      287 DUPCLOSURE                       R37 K50 [PROTO_2]
      288 CAPTURE                          VAL R5
      289 CAPTURE                          VAL R3
      290 CAPTURE                          VAL R7
      291 CAPTURE                          VAL R34
      292 CAPTURE                          VAL R8
      293 CAPTURE                          VAL R9
      294 CAPTURE                          VAL R10
      295 CAPTURE                          VAL R11
      296 CAPTURE                          VAL R35
      297 CAPTURE                          VAL R12
      298 CAPTURE                          VAL R27
      299 CAPTURE                          VAL R13
      300 CAPTURE                          VAL R14
      301 CAPTURE                          VAL R15
      302 CAPTURE                          VAL R16
      303 CAPTURE                          VAL R17
      304 CAPTURE                          VAL R18
      305 CAPTURE                          VAL R19
      306 CAPTURE                          VAL R2
      307 CAPTURE                          VAL R20
      308 CAPTURE                          VAL R21
      309 CAPTURE                          VAL R22
      310 CAPTURE                          VAL R23
      311 CAPTURE                          VAL R29
      312 CAPTURE                          VAL R32
      313 CAPTURE                          VAL R24
      314 CAPTURE                          VAL R25
      315 CAPTURE                          VAL R26
      316 CAPTURE                          VAL R28
      317 CAPTURE                          VAL R30
      318 CAPTURE                          VAL R31
      319 CAPTURE                          VAL R6
      320 CAPTURE                          VAL R36
      321 CAPTURE                          VAL R33
      322 CAPTURE                          VAL R4
      323 RETURN                           R37 1
