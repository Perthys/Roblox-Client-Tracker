MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Flags"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K10 ["Types"]
       23 GETTABLEKS                       R3 R3 K11 ["AssistantMode"]
       25 GETTABLEKS                       R4 R1 K12 ["Tools"]
       27 GETTABLEKS                       R4 R4 K13 ["ToolTypes"]
       29 GETTABLEKS                       R4 R4 K14 ["ToolNames"]
       31 GETTABLEKS                       R5 R1 K12 ["Tools"]
       33 GETTABLEKS                       R5 R5 K15 ["BuiltinTools"]
       35 NEWTABLE                         R6 64 0
       37 GETTABLEKS                       R7 R4 K16 ["AnimationGen"]
       39 GETTABLEKS                       R9 R2 K17 ["FFlagAssistantAnimationGenTool"]
       41 JUMPIFNOT                        R9 ; [+4]
       42 GETTABLEKS                       R9 R4 K16 ["AnimationGen"]
       44 GETTABLE                         R8 R5 R9
       45 JUMP                             ; [+1]
       46 LOADNIL                          R8
       47 SETTABLE                         R8 R6 R7
       48 GETTABLEKS                       R7 R4 K18 ["AskInput"]
       50 GETTABLEKS                       R9 R4 K18 ["AskInput"]
       52 GETTABLE                         R8 R5 R9
       53 SETTABLE                         R8 R6 R7
       54 GETTABLEKS                       R7 R4 K19 ["AssetInsert"]
       56 GETTABLEKS                       R9 R4 K19 ["AssetInsert"]
       58 GETTABLE                         R8 R5 R9
       59 SETTABLE                         R8 R6 R7
       60 GETTABLEKS                       R7 R4 K20 ["AssetSearch"]
       62 GETTABLEKS                       R9 R4 K20 ["AssetSearch"]
       64 GETTABLE                         R8 R5 R9
       65 SETTABLE                         R8 R6 R7
       66 GETTABLEKS                       R7 R4 K21 ["AvatarAutoSetup"]
       68 GETTABLEKS                       R9 R2 K22 ["FFlagAssistantAvatarAutoSetupTool"]
       70 JUMPIFNOT                        R9 ; [+4]
       71 GETTABLEKS                       R9 R4 K21 ["AvatarAutoSetup"]
       73 GETTABLE                         R8 R5 R9
       74 JUMP                             ; [+1]
       75 LOADNIL                          R8
       76 SETTABLE                         R8 R6 R7
       77 GETTABLEKS                       R7 R4 K23 ["CharacterNavigation"]
       79 GETTABLEKS                       R9 R4 K23 ["CharacterNavigation"]
       81 GETTABLE                         R8 R5 R9
       82 SETTABLE                         R8 R6 R7
       83 GETTABLEKS                       R7 R4 K24 ["CompleteTodoItems"]
       85 GETTABLEKS                       R9 R4 K24 ["CompleteTodoItems"]
       87 GETTABLE                         R8 R5 R9
       88 SETTABLE                         R8 R6 R7
       89 GETTABLEKS                       R7 R4 K25 ["CreateSkill"]
       91 GETTABLEKS                       R9 R4 K25 ["CreateSkill"]
       93 GETTABLE                         R8 R5 R9
       94 SETTABLE                         R8 R6 R7
       95 GETTABLEKS                       R7 R4 K26 ["EditSkill"]
       97 GETTABLEKS                       R9 R4 K26 ["EditSkill"]
       99 GETTABLE                         R8 R5 R9
      100 SETTABLE                         R8 R6 R7
      101 GETTABLEKS                       R7 R4 K27 ["ExecuteLuau"]
      103 GETTABLEKS                       R9 R4 K27 ["ExecuteLuau"]
      105 GETTABLE                         R8 R5 R9
      106 SETTABLE                         R8 R6 R7
      107 GETTABLEKS                       R7 R4 K28 ["FileSearch"]
      109 GETTABLEKS                       R9 R4 K28 ["FileSearch"]
      111 GETTABLE                         R8 R5 R9
      112 SETTABLE                         R8 R6 R7
      113 GETTABLEKS                       R7 R4 K29 ["FinalizePlan"]
      115 GETTABLEKS                       R9 R4 K29 ["FinalizePlan"]
      117 GETTABLE                         R8 R5 R9
      118 SETTABLE                         R8 R6 R7
      119 GETTABLEKS                       R7 R4 K30 ["FromHistory"]
      121 GETTABLEKS                       R9 R4 K30 ["FromHistory"]
      123 GETTABLE                         R8 R5 R9
      124 SETTABLE                         R8 R6 R7
      125 GETTABLEKS                       R7 R4 K31 ["GameTree"]
      127 GETTABLEKS                       R9 R4 K31 ["GameTree"]
      129 GETTABLE                         R8 R5 R9
      130 SETTABLE                         R8 R6 R7
      131 GETTABLEKS                       R7 R4 K32 ["GenerateLayout"]
      133 GETTABLEKS                       R9 R2 K33 ["FFlagAssistantGenerateLayoutTool"]
      135 JUMPIFNOT                        R9 ; [+4]
      136 GETTABLEKS                       R9 R4 K32 ["GenerateLayout"]
      138 GETTABLE                         R8 R5 R9
      139 JUMP                             ; [+1]
      140 LOADNIL                          R8
      141 SETTABLE                         R8 R6 R7
      142 GETTABLEKS                       R7 R4 K34 ["GetConsoleOutput"]
      144 GETTABLEKS                       R9 R4 K34 ["GetConsoleOutput"]
      146 GETTABLE                         R8 R5 R9
      147 SETTABLE                         R8 R6 R7
      148 GETTABLEKS                       R7 R4 K35 ["GetStudioState"]
      150 GETTABLEKS                       R9 R4 K35 ["GetStudioState"]
      152 GETTABLE                         R8 R5 R9
      153 SETTABLE                         R8 R6 R7
      154 GETTABLEKS                       R7 R4 K36 ["GrepSearch"]
      156 GETTABLEKS                       R9 R4 K36 ["GrepSearch"]
      158 GETTABLE                         R8 R5 R9
      159 SETTABLE                         R8 R6 R7
      160 GETTABLEKS                       R7 R4 K37 ["HttpGet"]
      162 GETTABLEKS                       R9 R4 K37 ["HttpGet"]
      164 GETTABLE                         R8 R5 R9
      165 SETTABLE                         R8 R6 R7
      166 GETTABLEKS                       R7 R4 K38 ["InspectInstance"]
      168 GETTABLEKS                       R9 R4 K38 ["InspectInstance"]
      170 GETTABLE                         R8 R5 R9
      171 SETTABLE                         R8 R6 R7
      172 GETTABLEKS                       R7 R4 K39 ["JobWait"]
      174 GETTABLEKS                       R9 R4 K39 ["JobWait"]
      176 GETTABLE                         R8 R5 R9
      177 SETTABLE                         R8 R6 R7
      178 GETTABLEKS                       R7 R4 K40 ["MaterialGen"]
      180 GETTABLEKS                       R9 R4 K40 ["MaterialGen"]
      182 GETTABLE                         R8 R5 R9
      183 SETTABLE                         R8 R6 R7
      184 GETTABLEKS                       R7 R4 K41 ["MeshGen"]
      186 GETTABLEKS                       R9 R4 K41 ["MeshGen"]
      188 GETTABLE                         R8 R5 R9
      189 SETTABLE                         R8 R6 R7
      190 GETTABLEKS                       R7 R4 K42 ["MultiEdit"]
      192 GETTABLEKS                       R9 R4 K42 ["MultiEdit"]
      194 GETTABLE                         R8 R5 R9
      195 SETTABLE                         R8 R6 R7
      196 GETTABLEKS                       R7 R4 K43 ["PrimitiveGen"]
      198 GETTABLEKS                       R9 R4 K43 ["PrimitiveGen"]
      200 GETTABLE                         R8 R5 R9
      201 SETTABLE                         R8 R6 R7
      202 GETTABLEKS                       R7 R4 K44 ["QuestionAnswer"]
      204 GETTABLEKS                       R9 R4 K44 ["QuestionAnswer"]
      206 GETTABLE                         R8 R5 R9
      207 SETTABLE                         R8 R6 R7
      208 GETTABLEKS                       R7 R4 K45 ["ReadFile"]
      210 GETTABLEKS                       R9 R4 K45 ["ReadFile"]
      212 GETTABLE                         R8 R5 R9
      213 SETTABLE                         R8 R6 R7
      214 GETTABLEKS                       R7 R4 K46 ["SegmentMesh"]
      216 GETTABLEKS                       R9 R2 K47 ["FFlagAssistantSegmentMeshTool"]
      218 JUMPIFNOT                        R9 ; [+4]
      219 GETTABLEKS                       R9 R4 K46 ["SegmentMesh"]
      221 GETTABLE                         R8 R5 R9
      222 JUMP                             ; [+1]
      223 LOADNIL                          R8
      224 SETTABLE                         R8 R6 R7
      225 GETTABLEKS                       R7 R4 K48 ["Skill"]
      227 GETTABLEKS                       R9 R4 K48 ["Skill"]
      229 GETTABLE                         R8 R5 R9
      230 SETTABLE                         R8 R6 R7
      231 GETTABLEKS                       R7 R4 K49 ["StartStopPlay"]
      233 GETTABLEKS                       R9 R4 K49 ["StartStopPlay"]
      235 GETTABLE                         R8 R5 R9
      236 SETTABLE                         R8 R6 R7
      237 GETTABLEKS                       R7 R4 K50 ["StoreImage"]
      239 GETTABLEKS                       R9 R4 K50 ["StoreImage"]
      241 GETTABLE                         R8 R5 R9
      242 SETTABLE                         R8 R6 R7
      243 GETTABLEKS                       R7 R4 K51 ["Subagent"]
      245 GETTABLEKS                       R9 R4 K51 ["Subagent"]
      247 GETTABLE                         R8 R5 R9
      248 SETTABLE                         R8 R6 R7
      249 GETTABLEKS                       R7 R4 K52 ["TextureGen"]
      251 GETTABLEKS                       R9 R2 K53 ["FFlagAssistantTextureGenTool"]
      253 JUMPIFNOT                        R9 ; [+4]
      254 GETTABLEKS                       R9 R4 K52 ["TextureGen"]
      256 GETTABLE                         R8 R5 R9
      257 JUMP                             ; [+1]
      258 LOADNIL                          R8
      259 SETTABLE                         R8 R6 R7
      260 GETTABLEKS                       R7 R4 K54 ["UpdatePlan"]
      262 GETTABLEKS                       R9 R4 K54 ["UpdatePlan"]
      264 GETTABLE                         R8 R5 R9
      265 SETTABLE                         R8 R6 R7
      266 GETTABLEKS                       R7 R4 K55 ["UserKeyboardInput"]
      268 GETTABLEKS                       R9 R4 K55 ["UserKeyboardInput"]
      270 GETTABLE                         R8 R5 R9
      271 SETTABLE                         R8 R6 R7
      272 GETTABLEKS                       R7 R4 K56 ["UserMouseInput"]
      274 GETTABLEKS                       R9 R4 K56 ["UserMouseInput"]
      276 GETTABLE                         R8 R5 R9
      277 SETTABLE                         R8 R6 R7
      278 GETTABLEKS                       R7 R2 K57 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
      280 JUMPIF                           R7 ; [+6]
      281 GETTABLEKS                       R7 R4 K58 ["JobRun"]
      283 GETTABLEKS                       R9 R4 K58 ["JobRun"]
      285 GETTABLE                         R8 R5 R9
      286 SETTABLE                         R8 R6 R7
      287 GETTABLEKS                       R7 R2 K59 ["FFlagAssistantMultiPlayerAgents"]
      289 JUMPIFNOT                        R7 ; [+24]
      290 GETTABLEKS                       R7 R4 K60 ["StartMultiPlayerAgents"]
      292 GETTABLEKS                       R9 R4 K60 ["StartMultiPlayerAgents"]
      294 GETTABLE                         R8 R5 R9
      295 SETTABLE                         R8 R6 R7
      296 GETTABLEKS                       R7 R4 K61 ["StopMultiPlayerAgents"]
      298 GETTABLEKS                       R9 R4 K61 ["StopMultiPlayerAgents"]
      300 GETTABLE                         R8 R5 R9
      301 SETTABLE                         R8 R6 R7
      302 GETTABLEKS                       R7 R4 K62 ["MultiPlayerAgentsCommunication"]
      304 GETTABLEKS                       R9 R4 K62 ["MultiPlayerAgentsCommunication"]
      306 GETTABLE                         R8 R5 R9
      307 SETTABLE                         R8 R6 R7
      308 GETTABLEKS                       R7 R4 K63 ["WaitForMultiPlayerAgentsCommunication"]
      310 GETTABLEKS                       R9 R4 K63 ["WaitForMultiPlayerAgentsCommunication"]
      312 GETTABLE                         R8 R5 R9
      313 SETTABLE                         R8 R6 R7
      314 GETTABLEKS                       R7 R2 K64 ["FFlagAssistantVideoCaptureTool"]
      316 JUMPIFNOT                        R7 ; [+6]
      317 GETTABLEKS                       R7 R4 K65 ["VideoCapture"]
      319 GETTABLEKS                       R9 R4 K65 ["VideoCapture"]
      321 GETTABLE                         R8 R5 R9
      322 SETTABLE                         R8 R6 R7
      323 GETTABLEKS                       R7 R2 K66 ["FFlagUseStudioSideListTool"]
      325 JUMPIFNOT                        R7 ; [+6]
      326 GETTABLEKS                       R7 R4 K67 ["ListRobloxStudios"]
      328 GETTABLEKS                       R9 R4 K67 ["ListRobloxStudios"]
      330 GETTABLE                         R8 R5 R9
      331 SETTABLE                         R8 R6 R7
      332 GETTABLEKS                       R7 R2 K68 ["FFlagPlaytestVision"]
      334 JUMPIFNOT                        R7 ; [+6]
      335 GETTABLEKS                       R7 R4 K69 ["PlaytestLook"]
      337 GETTABLEKS                       R9 R4 K69 ["PlaytestLook"]
      339 GETTABLE                         R8 R5 R9
      340 SETTABLE                         R8 R6 R7
      341 NEWTABLE                         R7 2 0
      343 GETTABLEKS                       R8 R4 K70 ["ScreenCapture"]
      345 GETTABLEKS                       R10 R4 K70 ["ScreenCapture"]
      347 GETTABLE                         R9 R5 R10
      348 SETTABLE                         R9 R7 R8
      349 GETTABLEKS                       R8 R4 K71 ["UploadImage"]
      351 GETTABLEKS                       R10 R2 K72 ["FFlagEnableAssistantImageUpload"]
      353 JUMPIFNOT                        R10 ; [+4]
      354 GETTABLEKS                       R10 R4 K71 ["UploadImage"]
      356 GETTABLE                         R9 R5 R10
      357 JUMP                             ; [+1]
      358 LOADNIL                          R9
      359 SETTABLE                         R9 R7 R8
      360 NEWTABLE                         R8 0 0
      362 NEWTABLE                         R9 1 0
      364 GETTABLEKS                       R10 R3 K73 ["Agent"]
      366 NEWTABLE                         R11 0 32
      368 GETTABLEKS                       R12 R4 K27 ["ExecuteLuau"]
      370 GETTABLEKS                       R13 R4 K28 ["FileSearch"]
      372 GETTABLEKS                       R14 R4 K31 ["GameTree"]
      374 GETTABLEKS                       R15 R4 K36 ["GrepSearch"]
      376 GETTABLEKS                       R16 R4 K19 ["AssetInsert"]
      378 GETTABLEKS                       R17 R4 K20 ["AssetSearch"]
      380 GETTABLEKS                       R18 R4 K38 ["InspectInstance"]
      382 GETTABLEKS                       R19 R4 K40 ["MaterialGen"]
      384 GETTABLEKS                       R20 R4 K41 ["MeshGen"]
      386 GETTABLEKS                       R21 R4 K42 ["MultiEdit"]
      388 GETTABLEKS                       R22 R4 K45 ["ReadFile"]
      390 GETTABLEKS                       R23 R4 K43 ["PrimitiveGen"]
      392 GETTABLEKS                       R24 R4 K48 ["Skill"]
      394 GETTABLEKS                       R25 R4 K51 ["Subagent"]
      396 GETTABLEKS                       R26 R4 K70 ["ScreenCapture"]
      398 GETTABLEKS                       R27 R4 K71 ["UploadImage"]
      400 SETLIST                          R11 R12 16 [1]
      402 GETTABLEKS                       R12 R4 K60 ["StartMultiPlayerAgents"]
      404 GETTABLEKS                       R13 R4 K61 ["StopMultiPlayerAgents"]
      406 GETTABLEKS                       R14 R4 K62 ["MultiPlayerAgentsCommunication"]
      408 GETTABLEKS                       R15 R4 K63 ["WaitForMultiPlayerAgentsCommunication"]
      410 GETTABLEKS                       R16 R4 K37 ["HttpGet"]
      412 GETTABLEKS                       R17 R4 K30 ["FromHistory"]
      414 GETTABLEKS                       R18 R4 K49 ["StartStopPlay"]
      416 GETTABLEKS                       R19 R4 K34 ["GetConsoleOutput"]
      418 GETTABLEKS                       R20 R4 K55 ["UserKeyboardInput"]
      420 GETTABLEKS                       R21 R4 K56 ["UserMouseInput"]
      422 GETTABLEKS                       R22 R4 K23 ["CharacterNavigation"]
      424 GETTABLEKS                       R23 R4 K65 ["VideoCapture"]
      426 GETTABLEKS                       R24 R4 K44 ["QuestionAnswer"]
      428 GETTABLEKS                       R25 R4 K24 ["CompleteTodoItems"]
      430 GETTABLEKS                       R26 R4 K39 ["JobWait"]
      432 GETTABLEKS                       R27 R4 K35 ["GetStudioState"]
      434 SETLIST                          R11 R12 16 [17]
      436 SETTABLE                         R11 R9 R10
      437 GETTABLEKS                       R10 R2 K57 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
      439 JUMPIF                           R10 ; [+10]
      440 GETTABLEKS                       R12 R3 K73 ["Agent"]
      442 GETTABLE                         R11 R9 R12
      443 GETTABLEKS                       R12 R4 K58 ["JobRun"]
      445 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      447 GETIMPORT                        R10 K76 [table.insert]
      449 CALL                             R10 2 0
      450 GETTABLEKS                       R12 R3 K73 ["Agent"]
      452 GETTABLE                         R11 R9 R12
      453 GETTABLEKS                       R12 R4 K50 ["StoreImage"]
      455 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      457 GETIMPORT                        R10 K76 [table.insert]
      459 CALL                             R10 2 0
      460 GETTABLEKS                       R10 R2 K17 ["FFlagAssistantAnimationGenTool"]
      462 JUMPIFNOT                        R10 ; [+10]
      463 GETTABLEKS                       R12 R3 K73 ["Agent"]
      465 GETTABLE                         R11 R9 R12
      466 GETTABLEKS                       R12 R4 K16 ["AnimationGen"]
      468 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      470 GETIMPORT                        R10 K76 [table.insert]
      472 CALL                             R10 2 0
      473 GETTABLEKS                       R10 R2 K22 ["FFlagAssistantAvatarAutoSetupTool"]
      475 JUMPIFNOT                        R10 ; [+10]
      476 GETTABLEKS                       R12 R3 K73 ["Agent"]
      478 GETTABLE                         R11 R9 R12
      479 GETTABLEKS                       R12 R4 K21 ["AvatarAutoSetup"]
      481 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      483 GETIMPORT                        R10 K76 [table.insert]
      485 CALL                             R10 2 0
      486 GETTABLEKS                       R12 R3 K73 ["Agent"]
      488 GETTABLE                         R11 R9 R12
      489 GETTABLEKS                       R12 R4 K54 ["UpdatePlan"]
      491 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      493 GETIMPORT                        R10 K76 [table.insert]
      495 CALL                             R10 2 0
      496 GETTABLEKS                       R12 R3 K73 ["Agent"]
      498 GETTABLE                         R11 R9 R12
      499 GETTABLEKS                       R12 R4 K25 ["CreateSkill"]
      501 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      503 GETIMPORT                        R10 K76 [table.insert]
      505 CALL                             R10 2 0
      506 GETTABLEKS                       R12 R3 K73 ["Agent"]
      508 GETTABLE                         R11 R9 R12
      509 GETTABLEKS                       R12 R4 K26 ["EditSkill"]
      511 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      513 GETIMPORT                        R10 K76 [table.insert]
      515 CALL                             R10 2 0
      516 GETTABLEKS                       R10 R2 K47 ["FFlagAssistantSegmentMeshTool"]
      518 JUMPIFNOT                        R10 ; [+10]
      519 GETTABLEKS                       R12 R3 K73 ["Agent"]
      521 GETTABLE                         R11 R9 R12
      522 GETTABLEKS                       R12 R4 K46 ["SegmentMesh"]
      524 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      526 GETIMPORT                        R10 K76 [table.insert]
      528 CALL                             R10 2 0
      529 GETTABLEKS                       R10 R2 K53 ["FFlagAssistantTextureGenTool"]
      531 JUMPIFNOT                        R10 ; [+10]
      532 GETTABLEKS                       R12 R3 K73 ["Agent"]
      534 GETTABLE                         R11 R9 R12
      535 GETTABLEKS                       R12 R4 K52 ["TextureGen"]
      537 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      539 GETIMPORT                        R10 K76 [table.insert]
      541 CALL                             R10 2 0
      542 GETTABLEKS                       R10 R2 K33 ["FFlagAssistantGenerateLayoutTool"]
      544 JUMPIFNOT                        R10 ; [+10]
      545 GETTABLEKS                       R12 R3 K73 ["Agent"]
      547 GETTABLE                         R11 R9 R12
      548 GETTABLEKS                       R12 R4 K32 ["GenerateLayout"]
      550 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      552 GETIMPORT                        R10 K76 [table.insert]
      554 CALL                             R10 2 0
      555 GETTABLEKS                       R10 R2 K77 ["FFlagAssistantAskInputToolLLM"]
      557 JUMPIFNOT                        R10 ; [+10]
      558 GETTABLEKS                       R12 R3 K73 ["Agent"]
      560 GETTABLE                         R11 R9 R12
      561 GETTABLEKS                       R12 R4 K18 ["AskInput"]
      563 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      565 GETIMPORT                        R10 K76 [table.insert]
      567 CALL                             R10 2 0
      568 GETTABLEKS                       R10 R3 K78 ["Plan"]
      570 NEWTABLE                         R11 0 9
      572 GETTABLEKS                       R12 R4 K45 ["ReadFile"]
      574 GETTABLEKS                       R13 R4 K28 ["FileSearch"]
      576 GETTABLEKS                       R14 R4 K36 ["GrepSearch"]
      578 GETTABLEKS                       R15 R4 K31 ["GameTree"]
      580 GETTABLEKS                       R16 R4 K38 ["InspectInstance"]
      582 GETTABLEKS                       R17 R4 K70 ["ScreenCapture"]
      584 GETTABLEKS                       R18 R4 K44 ["QuestionAnswer"]
      586 GETTABLEKS                       R19 R4 K29 ["FinalizePlan"]
      588 GETTABLEKS                       R20 R4 K54 ["UpdatePlan"]
      590 SETLIST                          R11 R12 9 [1]
      592 SETTABLE                         R11 R9 R10
      593 GETTABLEKS                       R10 R2 K77 ["FFlagAssistantAskInputToolLLM"]
      595 JUMPIFNOT                        R10 ; [+10]
      596 GETTABLEKS                       R12 R3 K78 ["Plan"]
      598 GETTABLE                         R11 R9 R12
      599 GETTABLEKS                       R12 R4 K18 ["AskInput"]
      601 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      603 GETIMPORT                        R10 K76 [table.insert]
      605 CALL                             R10 2 0
      606 NEWTABLE                         R10 0 16
      608 GETTABLEKS                       R11 R4 K27 ["ExecuteLuau"]
      610 GETTABLEKS                       R12 R4 K28 ["FileSearch"]
      612 GETTABLEKS                       R13 R4 K31 ["GameTree"]
      614 GETTABLEKS                       R14 R4 K36 ["GrepSearch"]
      616 GETTABLEKS                       R15 R4 K38 ["InspectInstance"]
      618 GETTABLEKS                       R16 R4 K45 ["ReadFile"]
      620 GETTABLEKS                       R17 R4 K48 ["Skill"]
      622 GETTABLEKS                       R18 R4 K51 ["Subagent"]
      624 GETTABLEKS                       R19 R4 K70 ["ScreenCapture"]
      626 GETTABLEKS                       R20 R4 K34 ["GetConsoleOutput"]
      628 GETTABLEKS                       R21 R4 K55 ["UserKeyboardInput"]
      630 GETTABLEKS                       R22 R4 K56 ["UserMouseInput"]
      632 GETTABLEKS                       R23 R4 K23 ["CharacterNavigation"]
      634 GETTABLEKS                       R24 R4 K62 ["MultiPlayerAgentsCommunication"]
      636 GETTABLEKS                       R25 R4 K63 ["WaitForMultiPlayerAgentsCommunication"]
      638 GETTABLEKS                       R26 R4 K35 ["GetStudioState"]
      640 SETLIST                          R10 R11 16 [1]
      642 NEWTABLE                         R11 0 0
      644 GETTABLEKS                       R12 R2 K68 ["FFlagPlaytestVision"]
      646 JUMPIFNOT                        R12 ; [+8]
      647 GETTABLEKS                       R14 R4 K69 ["PlaytestLook"]
      649 FASTCALL2                        TABLE_INSERT R11 R14 ; [+4]
      651 MOVE                             R13 R11
      652 GETIMPORT                        R12 K76 [table.insert]
      654 CALL                             R12 2 0
      655 DUPTABLE                         R12 K85 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist", "MultiPlayerTestTools", "SubagentOnlyTools"}]
      656 SETTABLEKS                       R6 R12 K79 ["DefaultTools"]
      658 SETTABLEKS                       R7 R12 K80 ["ExperimentalTools"]
      660 SETTABLEKS                       R8 R12 K81 ["ExperimentFeatureTools"]
      662 SETTABLEKS                       R9 R12 K82 ["AssistantModeToolsAllowlist"]
      664 SETTABLEKS                       R10 R12 K83 ["MultiPlayerTestTools"]
      666 SETTABLEKS                       R11 R12 K84 ["SubagentOnlyTools"]
      668 RETURN                           R12 1
