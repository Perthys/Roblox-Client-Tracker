PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+6]
        5 GETTABLEKS                       R4 R0 K0 ["SettingsInstance"]
        7 JUMPIFNOT                        R4 ; [+3]
        8 GETTABLEKS                       R3 R0 K0 ["SettingsInstance"]
       10 JUMP                             ; [+3]
       11 GETIMPORT                        R3 K2 [settings]
       13 CALL                             R3 0 1
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K3 ["Localization"]
       17 NAMECALL                         R4 R4 K4 ["use"]
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R6 R3 K5 ["Studio"]
       23 LOADK                            R7 K6 ["Show Animation Skeleton"]
       24 LOADB                            R8 0
       25 CALL                             R5 3 1
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R6 R6 K7 ["createElement"]
       29 GETUPVAL                         R7 4
       30 GETTABLEKS                       R7 R7 K8 ["Fragment"]
       32 NEWTABLE                         R8 0 0
       34 DUPTABLE                         R9 K17 [{"GUI", "Lighting", "Animation", "Pathfinding", "PhysicsConstraints", "PhysicsLabels", "PhysicsSimulation", "View"}]
       35 GETUPVAL                         R10 4
       36 GETTABLEKS                       R10 R10 K7 ["createElement"]
       38 LOADK                            R11 K18 ["VisualizationModeCategory"]
       39 DUPTABLE                         R12 K20 [{"Title"}]
       40 LOADK                            R15 K21 ["VisualizationModeCategories"]
       41 LOADK                            R16 K9 ["GUI"]
       42 NAMECALL                         R13 R4 K22 ["getText"]
       44 CALL                             R13 3 1
       45 SETTABLEKS                       R13 R12 K19 ["Title"]
       47 DUPTABLE                         R13 K25 [{"DeviceEmulation", "GUIOverlay"}]
       48 GETUPVAL                         R14 4
       49 GETTABLEKS                       R14 R14 K7 ["createElement"]
       51 GETUPVAL                         R15 5
       52 DUPTABLE                         R16 K31 [{["Title"], ["ToolTip"], ["FeatureId"] = "DeviceEmulation", ["ActionId"] = "Toggle", ["Actions"]}]
       53 GETUPVAL                         R18 6
       54 CALL                             R18 0 1
       55 JUMPIFNOT                        R18 ; [+6]
       56 LOADK                            R19 K32 ["StudioModes"]
       57 LOADK                            R20 K33 ["DeviceSimulation"]
       58 NAMECALL                         R17 R4 K22 ["getText"]
       60 CALL                             R17 3 1
       61 JUMP                             ; [+5]
       62 LOADK                            R19 K32 ["StudioModes"]
       63 LOADK                            R20 K23 ["DeviceEmulation"]
       64 NAMECALL                         R17 R4 K22 ["getText"]
       66 CALL                             R17 3 1
       67 SETTABLEKS                       R17 R16 K19 ["Title"]
       69 GETUPVAL                         R18 6
       70 CALL                             R18 0 1
       71 JUMPIFNOT                        R18 ; [+6]
       72 LOADK                            R19 K32 ["StudioModes"]
       73 LOADK                            R20 K34 ["DeviceSimulationTooltip"]
       74 NAMECALL                         R17 R4 K22 ["getText"]
       76 CALL                             R17 3 1
       77 JUMP                             ; [+5]
       78 LOADK                            R19 K32 ["StudioModes"]
       79 LOADK                            R20 K35 ["DeviceEmulationToolTip"]
       80 NAMECALL                         R17 R4 K22 ["getText"]
       82 CALL                             R17 3 1
       83 SETTABLEKS                       R17 R16 K26 ["ToolTip"]
       85 GETTABLEKS                       R17 R0 K30 ["Actions"]
       87 SETTABLEKS                       R17 R16 K30 ["Actions"]
       89 CALL                             R14 2 1
       90 SETTABLEKS                       R14 R13 K23 ["DeviceEmulation"]
       92 GETUPVAL                         R14 4
       93 GETTABLEKS                       R14 R14 K7 ["createElement"]
       95 GETUPVAL                         R15 7
       96 DUPTABLE                         R16 K39 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "ShowDevelopmentGui"}]
       97 LOADK                            R19 K32 ["StudioModes"]
       98 LOADK                            R20 K24 ["GUIOverlay"]
       99 NAMECALL                         R17 R4 K22 ["getText"]
      101 CALL                             R17 3 1
      102 SETTABLEKS                       R17 R16 K19 ["Title"]
      104 LOADK                            R19 K32 ["StudioModes"]
      105 LOADK                            R20 K40 ["GUIOverlayToolTip"]
      106 NAMECALL                         R17 R4 K22 ["getText"]
      108 CALL                             R17 3 1
      109 SETTABLEKS                       R17 R16 K26 ["ToolTip"]
      111 JUMPIFNOT                        R1 ; [+7]
      112 GETIMPORT                        R17 K42 [game]
      114 LOADK                            R19 K43 ["StarterGui"]
      115 NAMECALL                         R17 R17 K44 ["GetService"]
      117 CALL                             R17 2 1
      118 JUMP                             ; [+4]
      119 GETIMPORT                        R17 K42 [game]
      121 GETTABLEKS                       R17 R17 K43 ["StarterGui"]
      123 SETTABLEKS                       R17 R16 K36 ["Setting"]
      125 CALL                             R14 2 1
      126 SETTABLEKS                       R14 R13 K24 ["GUIOverlay"]
      128 CALL                             R10 3 1
      129 SETTABLEKS                       R10 R9 K9 ["GUI"]
      131 GETUPVAL                         R10 4
      132 GETTABLEKS                       R10 R10 K7 ["createElement"]
      134 LOADK                            R11 K18 ["VisualizationModeCategory"]
      135 DUPTABLE                         R12 K20 [{"Title"}]
      136 LOADK                            R15 K21 ["VisualizationModeCategories"]
      137 LOADK                            R16 K10 ["Lighting"]
      138 NAMECALL                         R13 R4 K22 ["getText"]
      140 CALL                             R13 3 1
      141 SETTABLEKS                       R13 R12 K19 ["Title"]
      143 DUPTABLE                         R13 K46 [{"Lights"}]
      144 GETUPVAL                         R14 4
      145 GETTABLEKS                       R14 R14 K7 ["createElement"]
      147 GETUPVAL                         R15 7
      148 DUPTABLE                         R16 K48 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Light Guides"}]
      149 LOADK                            R19 K32 ["StudioModes"]
      150 LOADK                            R20 K45 ["Lights"]
      151 NAMECALL                         R17 R4 K22 ["getText"]
      153 CALL                             R17 3 1
      154 SETTABLEKS                       R17 R16 K19 ["Title"]
      156 LOADK                            R19 K32 ["StudioModes"]
      157 LOADK                            R20 K49 ["LightsToolTip"]
      158 NAMECALL                         R17 R4 K22 ["getText"]
      160 CALL                             R17 3 1
      161 SETTABLEKS                       R17 R16 K26 ["ToolTip"]
      163 GETTABLEKS                       R17 R3 K5 ["Studio"]
      165 SETTABLEKS                       R17 R16 K36 ["Setting"]
      167 CALL                             R14 2 1
      168 SETTABLEKS                       R14 R13 K45 ["Lights"]
      170 CALL                             R10 3 1
      171 SETTABLEKS                       R10 R9 K10 ["Lighting"]
      173 GETUPVAL                         R10 4
      174 GETTABLEKS                       R10 R10 K7 ["createElement"]
      176 LOADK                            R11 K18 ["VisualizationModeCategory"]
      177 DUPTABLE                         R12 K20 [{"Title"}]
      178 LOADK                            R15 K21 ["VisualizationModeCategories"]
      179 LOADK                            R16 K11 ["Animation"]
      180 NAMECALL                         R13 R4 K22 ["getText"]
      182 CALL                             R13 3 1
      183 SETTABLEKS                       R13 R12 K19 ["Title"]
      185 DUPTABLE                         R13 K55 [{"ShowAnimationSkeleton", "ShowAnimationSkeletonAxes", "ShowAnimationSkeletonAttachments", "ShowAnimationSkeletonText", "ShowAnimationSkeletonRotations"}]
      186 GETUPVAL                         R14 4
      187 GETTABLEKS                       R14 R14 K7 ["createElement"]
      189 GETUPVAL                         R15 7
      190 DUPTABLE                         R16 K58 [{["Title"], ["ToolTip"], ["SortOrder"] = 1, ["Setting"], ["Property"] = "Show Animation Skeleton"}]
      191 LOADK                            R19 K32 ["StudioModes"]
      192 LOADK                            R20 K50 ["ShowAnimationSkeleton"]
      193 NAMECALL                         R17 R4 K22 ["getText"]
      195 CALL                             R17 3 1
      196 SETTABLEKS                       R17 R16 K19 ["Title"]
      198 LOADK                            R19 K32 ["StudioModes"]
      199 LOADK                            R20 K59 ["ShowAnimationSkeletonToolTip"]
      200 NAMECALL                         R17 R4 K22 ["getText"]
      202 CALL                             R17 3 1
      203 SETTABLEKS                       R17 R16 K26 ["ToolTip"]
      205 GETTABLEKS                       R17 R3 K5 ["Studio"]
      207 SETTABLEKS                       R17 R16 K36 ["Setting"]
      209 CALL                             R14 2 1
      210 SETTABLEKS                       R14 R13 K50 ["ShowAnimationSkeleton"]
      212 MOVE                             R14 R5
      213 JUMPIFNOT                        R14 ; [+24]
      214 GETUPVAL                         R14 4
      215 GETTABLEKS                       R14 R14 K7 ["createElement"]
      217 GETUPVAL                         R15 7
      218 DUPTABLE                         R16 K62 [{["Title"], ["ToolTip"], ["SortOrder"] = 2, ["Setting"], ["Property"] = "Show Animation Skeleton Axes"}]
      219 LOADK                            R19 K32 ["StudioModes"]
      220 LOADK                            R20 K51 ["ShowAnimationSkeletonAxes"]
      221 NAMECALL                         R17 R4 K22 ["getText"]
      223 CALL                             R17 3 1
      224 SETTABLEKS                       R17 R16 K19 ["Title"]
      226 LOADK                            R19 K32 ["StudioModes"]
      227 LOADK                            R20 K63 ["ShowAnimationSkeletonAxesToolTip"]
      228 NAMECALL                         R17 R4 K22 ["getText"]
      230 CALL                             R17 3 1
      231 SETTABLEKS                       R17 R16 K26 ["ToolTip"]
      233 GETTABLEKS                       R17 R3 K5 ["Studio"]
      235 SETTABLEKS                       R17 R16 K36 ["Setting"]
      237 CALL                             R14 2 1
      238 SETTABLEKS                       R14 R13 K51 ["ShowAnimationSkeletonAxes"]
      240 MOVE                             R14 R5
      241 JUMPIFNOT                        R14 ; [+24]
      242 GETUPVAL                         R14 4
      243 GETTABLEKS                       R14 R14 K7 ["createElement"]
      245 GETUPVAL                         R15 7
      246 DUPTABLE                         R16 K66 [{["Title"], ["ToolTip"], ["SortOrder"] = 3, ["Setting"], ["Property"] = "Show Animation Skeleton Attachments"}]
      247 LOADK                            R19 K32 ["StudioModes"]
      248 LOADK                            R20 K52 ["ShowAnimationSkeletonAttachments"]
      249 NAMECALL                         R17 R4 K22 ["getText"]
      251 CALL                             R17 3 1
      252 SETTABLEKS                       R17 R16 K19 ["Title"]
      254 LOADK                            R19 K32 ["StudioModes"]
      255 LOADK                            R20 K67 ["ShowAnimationSkeletonAttachmentsToolTip"]
      256 NAMECALL                         R17 R4 K22 ["getText"]
      258 CALL                             R17 3 1
      259 SETTABLEKS                       R17 R16 K26 ["ToolTip"]
      261 GETTABLEKS                       R17 R3 K5 ["Studio"]
      263 SETTABLEKS                       R17 R16 K36 ["Setting"]
      265 CALL                             R14 2 1
      266 SETTABLEKS                       R14 R13 K52 ["ShowAnimationSkeletonAttachments"]
      268 MOVE                             R14 R5
      269 JUMPIFNOT                        R14 ; [+24]
      270 GETUPVAL                         R14 4
      271 GETTABLEKS                       R14 R14 K7 ["createElement"]
      273 GETUPVAL                         R15 7
      274 DUPTABLE                         R16 K70 [{["Title"], ["ToolTip"], ["SortOrder"] = 4, ["Setting"], ["Property"] = "Show Animation Skeleton Text"}]
      275 LOADK                            R19 K32 ["StudioModes"]
      276 LOADK                            R20 K53 ["ShowAnimationSkeletonText"]
      277 NAMECALL                         R17 R4 K22 ["getText"]
      279 CALL                             R17 3 1
      280 SETTABLEKS                       R17 R16 K19 ["Title"]
      282 LOADK                            R19 K32 ["StudioModes"]
      283 LOADK                            R20 K71 ["ShowAnimationSkeletonTextToolTip"]
      284 NAMECALL                         R17 R4 K22 ["getText"]
      286 CALL                             R17 3 1
      287 SETTABLEKS                       R17 R16 K26 ["ToolTip"]
      289 GETTABLEKS                       R17 R3 K5 ["Studio"]
      291 SETTABLEKS                       R17 R16 K36 ["Setting"]
      293 CALL                             R14 2 1
      294 SETTABLEKS                       R14 R13 K53 ["ShowAnimationSkeletonText"]
      296 MOVE                             R14 R5
      297 JUMPIFNOT                        R14 ; [+24]
      298 GETUPVAL                         R14 4
      299 GETTABLEKS                       R14 R14 K7 ["createElement"]
      301 GETUPVAL                         R15 7
      302 DUPTABLE                         R16 K74 [{["Title"], ["ToolTip"], ["SortOrder"] = 5, ["Setting"], ["Property"] = "Show Animation Skeleton Rotations"}]
      303 LOADK                            R19 K32 ["StudioModes"]
      304 LOADK                            R20 K54 ["ShowAnimationSkeletonRotations"]
      305 NAMECALL                         R17 R4 K22 ["getText"]
      307 CALL                             R17 3 1
      308 SETTABLEKS                       R17 R16 K19 ["Title"]
      310 LOADK                            R19 K32 ["StudioModes"]
      311 LOADK                            R20 K75 ["ShowAnimationSkeletonRotationsToolTip"]
      312 NAMECALL                         R17 R4 K22 ["getText"]
      314 CALL                             R17 3 1
      315 SETTABLEKS                       R17 R16 K26 ["ToolTip"]
      317 GETTABLEKS                       R17 R3 K5 ["Studio"]
      319 SETTABLEKS                       R17 R16 K36 ["Setting"]
      321 CALL                             R14 2 1
      322 SETTABLEKS                       R14 R13 K54 ["ShowAnimationSkeletonRotations"]
      324 CALL                             R10 3 1
      325 SETTABLEKS                       R10 R9 K11 ["Animation"]
      327 GETUPVAL                         R10 4
      328 GETTABLEKS                       R10 R10 K7 ["createElement"]
      330 LOADK                            R11 K18 ["VisualizationModeCategory"]
      331 DUPTABLE                         R12 K20 [{"Title"}]
      332 LOADK                            R15 K21 ["VisualizationModeCategories"]
      333 LOADK                            R16 K12 ["Pathfinding"]
      334 NAMECALL                         R13 R4 K22 ["getText"]
      336 CALL                             R13 3 1
      337 SETTABLEKS                       R13 R12 K19 ["Title"]
      339 DUPTABLE                         R13 K79 [{"PathfindingMesh", "PathfindingModifiers", "PathfindingLinks"}]
      340 GETUPVAL                         R14 4
      341 GETTABLEKS                       R14 R14 K7 ["createElement"]
      343 GETUPVAL                         R15 7
      344 DUPTABLE                         R16 K81 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Navigation Mesh"}]
      345 LOADK                            R19 K32 ["StudioModes"]
      346 LOADK                            R20 K76 ["PathfindingMesh"]
      347 NAMECALL                         R17 R4 K22 ["getText"]
      349 CALL                             R17 3 1
      350 SETTABLEKS                       R17 R16 K19 ["Title"]
      352 LOADK                            R19 K32 ["StudioModes"]
      353 LOADK                            R20 K82 ["PathfindingMeshToolTip"]
      354 NAMECALL                         R17 R4 K22 ["getText"]
      356 CALL                             R17 3 1
      357 SETTABLEKS                       R17 R16 K26 ["ToolTip"]
      359 GETTABLEKS                       R17 R3 K5 ["Studio"]
      361 SETTABLEKS                       R17 R16 K36 ["Setting"]
      363 CALL                             R14 2 1
      364 SETTABLEKS                       R14 R13 K76 ["PathfindingMesh"]
      366 GETUPVAL                         R14 4
      367 GETTABLEKS                       R14 R14 K7 ["createElement"]
      369 GETUPVAL                         R15 7
      370 DUPTABLE                         R16 K84 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Navigation Labels"}]
      371 LOADK                            R19 K32 ["StudioModes"]
      372 LOADK                            R20 K77 ["PathfindingModifiers"]
      373 NAMECALL                         R17 R4 K22 ["getText"]
      375 CALL                             R17 3 1
      376 SETTABLEKS                       R17 R16 K19 ["Title"]
      378 LOADK                            R19 K32 ["StudioModes"]
      379 LOADK                            R20 K85 ["PathfindingModifiersToolTip"]
      380 NAMECALL                         R17 R4 K22 ["getText"]
      382 CALL                             R17 3 1
      383 SETTABLEKS                       R17 R16 K26 ["ToolTip"]
      385 GETTABLEKS                       R17 R3 K5 ["Studio"]
      387 SETTABLEKS                       R17 R16 K36 ["Setting"]
      389 CALL                             R14 2 1
      390 SETTABLEKS                       R14 R13 K77 ["PathfindingModifiers"]
      392 GETUPVAL                         R14 4
      393 GETTABLEKS                       R14 R14 K7 ["createElement"]
      395 GETUPVAL                         R15 7
      396 DUPTABLE                         R16 K87 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Pathfinding Links"}]
      397 LOADK                            R19 K32 ["StudioModes"]
      398 LOADK                            R20 K78 ["PathfindingLinks"]
      399 NAMECALL                         R17 R4 K22 ["getText"]
      401 CALL                             R17 3 1
      402 SETTABLEKS                       R17 R16 K19 ["Title"]
      404 LOADK                            R19 K32 ["StudioModes"]
      405 LOADK                            R20 K88 ["PathfindingLinksToolTip"]
      406 NAMECALL                         R17 R4 K22 ["getText"]
      408 CALL                             R17 3 1
      409 SETTABLEKS                       R17 R16 K26 ["ToolTip"]
      411 GETTABLEKS                       R17 R3 K5 ["Studio"]
      413 SETTABLEKS                       R17 R16 K36 ["Setting"]
      415 CALL                             R14 2 1
      416 SETTABLEKS                       R14 R13 K78 ["PathfindingLinks"]
      418 CALL                             R10 3 1
      419 SETTABLEKS                       R10 R9 K12 ["Pathfinding"]
      421 GETUPVAL                         R10 4
      422 GETTABLEKS                       R10 R10 K7 ["createElement"]
      424 LOADK                            R11 K18 ["VisualizationModeCategory"]
      425 DUPTABLE                         R12 K20 [{"Title"}]
      426 LOADK                            R15 K21 ["VisualizationModeCategories"]
      427 LOADK                            R16 K13 ["PhysicsConstraints"]
      428 NAMECALL                         R13 R4 K22 ["getText"]
      430 CALL                             R13 3 1
      431 SETTABLEKS                       R13 R12 K19 ["Title"]
      433 DUPTABLE                         R13 K91 [{"Constraints", "Welds"}]
      434 GETUPVAL                         R14 4
      435 GETTABLEKS                       R14 R14 K7 ["createElement"]
      437 GETUPVAL                         R15 5
      438 DUPTABLE                         R16 K93 [{["Title"], ["ToolTip"], ["FeatureId"] = "Constraints", ["ActionId"] = "ShowDetails", ["Actions"]}]
      439 LOADK                            R19 K32 ["StudioModes"]
      440 LOADK                            R20 K89 ["Constraints"]
      441 NAMECALL                         R17 R4 K22 ["getText"]
      443 CALL                             R17 3 1
      444 SETTABLEKS                       R17 R16 K19 ["Title"]
      446 LOADK                            R19 K32 ["StudioModes"]
      447 LOADK                            R20 K94 ["ConstraintsToolTip"]
      448 NAMECALL                         R17 R4 K22 ["getText"]
      450 CALL                             R17 3 1
      451 SETTABLEKS                       R17 R16 K26 ["ToolTip"]
      453 GETTABLEKS                       R17 R0 K30 ["Actions"]
      455 SETTABLEKS                       R17 R16 K30 ["Actions"]
      457 CALL                             R14 2 1
      458 SETTABLEKS                       R14 R13 K89 ["Constraints"]
      460 GETUPVAL                         R14 4
      461 GETTABLEKS                       R14 R14 K7 ["createElement"]
      463 GETUPVAL                         R15 5
      464 DUPTABLE                         R16 K96 [{["Title"], ["ToolTip"], ["FeatureId"] = "Constraints", ["ActionId"] = "ShowWelds", ["Actions"]}]
      465 LOADK                            R19 K32 ["StudioModes"]
      466 LOADK                            R20 K90 ["Welds"]
      467 NAMECALL                         R17 R4 K22 ["getText"]
      469 CALL                             R17 3 1
      470 SETTABLEKS                       R17 R16 K19 ["Title"]
      472 LOADK                            R19 K32 ["StudioModes"]
      473 LOADK                            R20 K97 ["WeldsToolTip"]
      474 NAMECALL                         R17 R4 K22 ["getText"]
      476 CALL                             R17 3 1
      477 SETTABLEKS                       R17 R16 K26 ["ToolTip"]
      479 GETTABLEKS                       R17 R0 K30 ["Actions"]
      481 SETTABLEKS                       R17 R16 K30 ["Actions"]
      483 CALL                             R14 2 1
      484 SETTABLEKS                       R14 R13 K90 ["Welds"]
      486 CALL                             R10 3 1
      487 SETTABLEKS                       R10 R9 K13 ["PhysicsConstraints"]
      489 GETUPVAL                         R10 4
      490 GETTABLEKS                       R10 R10 K7 ["createElement"]
      492 LOADK                            R11 K18 ["VisualizationModeCategory"]
      493 DUPTABLE                         R12 K20 [{"Title"}]
      494 LOADK                            R15 K21 ["VisualizationModeCategories"]
      495 LOADK                            R16 K14 ["PhysicsLabels"]
      496 NAMECALL                         R13 R4 K22 ["getText"]
      498 CALL                             R13 3 1
      499 SETTABLEKS                       R13 R12 K19 ["Title"]
      501 DUPTABLE                         R13 K103 [{"AnchoredParts", "AwakeParts", "Assemblies", "Mechanisms", "NetworkOwner"}]
      502 GETUPVAL                         R14 4
      503 GETTABLEKS                       R14 R14 K7 ["createElement"]
      505 GETUPVAL                         R15 7
      506 DUPTABLE                         R16 K105 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreAnchorsShown"}]
      507 LOADK                            R19 K32 ["StudioModes"]
      508 LOADK                            R20 K98 ["AnchoredParts"]
      509 NAMECALL                         R17 R4 K22 ["getText"]
      511 CALL                             R17 3 1
      512 SETTABLEKS                       R17 R16 K19 ["Title"]
      514 LOADK                            R19 K32 ["StudioModes"]
      515 LOADK                            R20 K106 ["AnchoredPartsToolTip"]
      516 NAMECALL                         R17 R4 K22 ["getText"]
      518 CALL                             R17 3 1
      519 SETTABLEKS                       R17 R16 K26 ["ToolTip"]
      521 GETTABLEKS                       R17 R3 K107 ["Physics"]
      523 SETTABLEKS                       R17 R16 K36 ["Setting"]
      525 CALL                             R14 2 1
      526 SETTABLEKS                       R14 R13 K98 ["AnchoredParts"]
      528 GETUPVAL                         R14 4
      529 GETTABLEKS                       R14 R14 K7 ["createElement"]
      531 GETUPVAL                         R15 7
      532 DUPTABLE                         R16 K109 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreAwakePartsHighlighted"}]
      533 LOADK                            R19 K32 ["StudioModes"]
      534 LOADK                            R20 K99 ["AwakeParts"]
      535 NAMECALL                         R17 R4 K22 ["getText"]
      537 CALL                             R17 3 1
      538 SETTABLEKS                       R17 R16 K19 ["Title"]
      540 LOADK                            R19 K32 ["StudioModes"]
      541 LOADK                            R20 K110 ["AwakePartsToolTip"]
      542 NAMECALL                         R17 R4 K22 ["getText"]
      544 CALL                             R17 3 1
      545 SETTABLEKS                       R17 R16 K26 ["ToolTip"]
      547 GETTABLEKS                       R17 R3 K107 ["Physics"]
      549 SETTABLEKS                       R17 R16 K36 ["Setting"]
      551 CALL                             R14 2 1
      552 SETTABLEKS                       R14 R13 K99 ["AwakeParts"]
      554 GETUPVAL                         R14 4
      555 GETTABLEKS                       R14 R14 K7 ["createElement"]
      557 GETUPVAL                         R15 7
      558 DUPTABLE                         R16 K112 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreAssembliesShown"}]
      559 LOADK                            R19 K32 ["StudioModes"]
      560 LOADK                            R20 K113 ["ShowAssemblies"]
      561 NAMECALL                         R17 R4 K22 ["getText"]
      563 CALL                             R17 3 1
      564 SETTABLEKS                       R17 R16 K19 ["Title"]
      566 LOADK                            R19 K32 ["StudioModes"]
      567 LOADK                            R20 K114 ["ShowAssembliesToolTip"]
      568 NAMECALL                         R17 R4 K22 ["getText"]
      570 CALL                             R17 3 1
      571 SETTABLEKS                       R17 R16 K26 ["ToolTip"]
      573 GETTABLEKS                       R17 R3 K107 ["Physics"]
      575 SETTABLEKS                       R17 R16 K36 ["Setting"]
      577 CALL                             R14 2 1
      578 SETTABLEKS                       R14 R13 K100 ["Assemblies"]
      580 GETUPVAL                         R14 4
      581 GETTABLEKS                       R14 R14 K7 ["createElement"]
      583 GETUPVAL                         R15 7
      584 DUPTABLE                         R16 K116 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreMechanismsShown"}]
      585 LOADK                            R19 K32 ["StudioModes"]
      586 LOADK                            R20 K101 ["Mechanisms"]
      587 NAMECALL                         R17 R4 K22 ["getText"]
      589 CALL                             R17 3 1
      590 SETTABLEKS                       R17 R16 K19 ["Title"]
      592 LOADK                            R19 K32 ["StudioModes"]
      593 LOADK                            R20 K117 ["MechanismsToolTip"]
      594 NAMECALL                         R17 R4 K22 ["getText"]
      596 CALL                             R17 3 1
      597 SETTABLEKS                       R17 R16 K26 ["ToolTip"]
      599 GETTABLEKS                       R17 R3 K107 ["Physics"]
      601 SETTABLEKS                       R17 R16 K36 ["Setting"]
      603 CALL                             R14 2 1
      604 SETTABLEKS                       R14 R13 K101 ["Mechanisms"]
      606 GETUPVAL                         R14 4
      607 GETTABLEKS                       R14 R14 K7 ["createElement"]
      609 GETUPVAL                         R15 7
      610 DUPTABLE                         R16 K119 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreOwnersShown"}]
      611 LOADK                            R19 K32 ["StudioModes"]
      612 LOADK                            R20 K102 ["NetworkOwner"]
      613 NAMECALL                         R17 R4 K22 ["getText"]
      615 CALL                             R17 3 1
      616 SETTABLEKS                       R17 R16 K19 ["Title"]
      618 LOADK                            R19 K32 ["StudioModes"]
      619 LOADK                            R20 K120 ["NetworkOwnerToolTip"]
      620 NAMECALL                         R17 R4 K22 ["getText"]
      622 CALL                             R17 3 1
      623 SETTABLEKS                       R17 R16 K26 ["ToolTip"]
      625 GETTABLEKS                       R17 R3 K107 ["Physics"]
      627 SETTABLEKS                       R17 R16 K36 ["Setting"]
      629 CALL                             R14 2 1
      630 SETTABLEKS                       R14 R13 K102 ["NetworkOwner"]
      632 CALL                             R10 3 1
      633 SETTABLEKS                       R10 R9 K14 ["PhysicsLabels"]
      635 GETUPVAL                         R10 4
      636 GETTABLEKS                       R10 R10 K7 ["createElement"]
      638 LOADK                            R11 K18 ["VisualizationModeCategory"]
      639 DUPTABLE                         R12 K20 [{"Title"}]
      640 LOADK                            R15 K21 ["VisualizationModeCategories"]
      641 LOADK                            R16 K15 ["PhysicsSimulation"]
      642 NAMECALL                         R13 R4 K22 ["getText"]
      644 CALL                             R13 3 1
      645 SETTABLEKS                       R13 R12 K19 ["Title"]
      647 DUPTABLE                         R13 K124 [{"CollisionFidelity", "ContactPoints", "WindDirection"}]
      648 GETUPVAL                         R15 8
      649 CALL                             R15 0 1
      650 JUMPIF                           R15 ; [+25]
      651 GETUPVAL                         R14 4
      652 GETTABLEKS                       R14 R14 K7 ["createElement"]
      654 GETUPVAL                         R15 7
      655 DUPTABLE                         R16 K126 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "ShowDecompositionGeometry"}]
      656 LOADK                            R19 K32 ["StudioModes"]
      657 LOADK                            R20 K121 ["CollisionFidelity"]
      658 NAMECALL                         R17 R4 K22 ["getText"]
      660 CALL                             R17 3 1
      661 SETTABLEKS                       R17 R16 K19 ["Title"]
      663 LOADK                            R19 K32 ["StudioModes"]
      664 LOADK                            R20 K127 ["CollisionFidelityToolTip"]
      665 NAMECALL                         R17 R4 K22 ["getText"]
      667 CALL                             R17 3 1
      668 SETTABLEKS                       R17 R16 K26 ["ToolTip"]
      670 GETTABLEKS                       R17 R3 K107 ["Physics"]
      672 SETTABLEKS                       R17 R16 K36 ["Setting"]
      674 CALL                             R14 2 1
      675 JUMP                             ; [+1]
      676 LOADNIL                          R14
      677 SETTABLEKS                       R14 R13 K121 ["CollisionFidelity"]
      679 GETUPVAL                         R14 4
      680 GETTABLEKS                       R14 R14 K7 ["createElement"]
      682 GETUPVAL                         R15 7
      683 DUPTABLE                         R16 K129 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreContactPointsShown"}]
      684 LOADK                            R19 K32 ["StudioModes"]
      685 LOADK                            R20 K122 ["ContactPoints"]
      686 NAMECALL                         R17 R4 K22 ["getText"]
      688 CALL                             R17 3 1
      689 SETTABLEKS                       R17 R16 K19 ["Title"]
      691 LOADK                            R19 K32 ["StudioModes"]
      692 LOADK                            R20 K130 ["ContactPointsToolTip"]
      693 NAMECALL                         R17 R4 K22 ["getText"]
      695 CALL                             R17 3 1
      696 SETTABLEKS                       R17 R16 K26 ["ToolTip"]
      698 GETTABLEKS                       R17 R3 K107 ["Physics"]
      700 SETTABLEKS                       R17 R16 K36 ["Setting"]
      702 CALL                             R14 2 1
      703 SETTABLEKS                       R14 R13 K122 ["ContactPoints"]
      705 GETUPVAL                         R14 4
      706 GETTABLEKS                       R14 R14 K7 ["createElement"]
      708 GETUPVAL                         R15 5
      709 DUPTABLE                         R16 K132 [{["Title"], ["ToolTip"], ["FeatureId"] = "WindControl", ["ActionId"] = "Toggle", ["Actions"]}]
      710 LOADK                            R19 K32 ["StudioModes"]
      711 LOADK                            R20 K123 ["WindDirection"]
      712 NAMECALL                         R17 R4 K22 ["getText"]
      714 CALL                             R17 3 1
      715 SETTABLEKS                       R17 R16 K19 ["Title"]
      717 LOADK                            R19 K32 ["StudioModes"]
      718 LOADK                            R20 K133 ["WindDirectionToolTip"]
      719 NAMECALL                         R17 R4 K22 ["getText"]
      721 CALL                             R17 3 1
      722 SETTABLEKS                       R17 R16 K26 ["ToolTip"]
      724 GETTABLEKS                       R17 R0 K30 ["Actions"]
      726 SETTABLEKS                       R17 R16 K30 ["Actions"]
      728 CALL                             R14 2 1
      729 SETTABLEKS                       R14 R13 K123 ["WindDirection"]
      731 CALL                             R10 3 1
      732 SETTABLEKS                       R10 R9 K15 ["PhysicsSimulation"]
      734 GETUPVAL                         R10 4
      735 GETTABLEKS                       R10 R10 K7 ["createElement"]
      737 LOADK                            R11 K18 ["VisualizationModeCategory"]
      738 DUPTABLE                         R12 K20 [{"Title"}]
      739 LOADK                            R15 K21 ["VisualizationModeCategories"]
      740 LOADK                            R16 K16 ["View"]
      741 NAMECALL                         R13 R4 K22 ["getText"]
      743 CALL                             R13 3 1
      744 SETTABLEKS                       R13 R12 K19 ["Title"]
      746 DUPTABLE                         R13 K138 [{"ViewSelector", "Grid", "GridMaterial", "CollaboratorHighlights"}]
      747 GETUPVAL                         R14 4
      748 GETTABLEKS                       R14 R14 K7 ["createElement"]
      750 GETUPVAL                         R15 5
      751 DUPTABLE                         R16 K139 [{["Title"], ["ToolTip"], ["FeatureId"] = "ViewSelector", ["ActionId"] = "Toggle", ["Actions"]}]
      752 LOADK                            R19 K32 ["StudioModes"]
      753 LOADK                            R20 K134 ["ViewSelector"]
      754 NAMECALL                         R17 R4 K22 ["getText"]
      756 CALL                             R17 3 1
      757 SETTABLEKS                       R17 R16 K19 ["Title"]
      759 LOADK                            R19 K32 ["StudioModes"]
      760 LOADK                            R20 K140 ["ViewSelectorToolTip"]
      761 NAMECALL                         R17 R4 K22 ["getText"]
      763 CALL                             R17 3 1
      764 SETTABLEKS                       R17 R16 K26 ["ToolTip"]
      766 GETTABLEKS                       R17 R0 K30 ["Actions"]
      768 SETTABLEKS                       R17 R16 K30 ["Actions"]
      770 CALL                             R14 2 1
      771 SETTABLEKS                       R14 R13 K134 ["ViewSelector"]
      773 GETUPVAL                         R14 4
      774 GETTABLEKS                       R14 R14 K7 ["createElement"]
      776 GETUPVAL                         R15 5
      777 DUPTABLE                         R16 K142 [{["Title"], ["ToolTip"], ["FeatureId"] = "3DGrid", ["ActionId"] = "Toggle", ["Actions"]}]
      778 LOADK                            R19 K32 ["StudioModes"]
      779 LOADK                            R20 K135 ["Grid"]
      780 NAMECALL                         R17 R4 K22 ["getText"]
      782 CALL                             R17 3 1
      783 SETTABLEKS                       R17 R16 K19 ["Title"]
      785 LOADK                            R19 K32 ["StudioModes"]
      786 LOADK                            R20 K143 ["GridToolTip"]
      787 NAMECALL                         R17 R4 K22 ["getText"]
      789 CALL                             R17 3 1
      790 SETTABLEKS                       R17 R16 K26 ["ToolTip"]
      792 GETTABLEKS                       R17 R0 K30 ["Actions"]
      794 SETTABLEKS                       R17 R16 K30 ["Actions"]
      796 CALL                             R14 2 1
      797 SETTABLEKS                       R14 R13 K135 ["Grid"]
      799 GETUPVAL                         R14 4
      800 GETTABLEKS                       R14 R14 K7 ["createElement"]
      802 GETUPVAL                         R15 5
      803 DUPTABLE                         R16 K144 [{["Title"], ["ToolTip"], ["FeatureId"] = "GridMaterial", ["ActionId"] = "Toggle", ["Actions"]}]
      804 LOADK                            R19 K32 ["StudioModes"]
      805 LOADK                            R20 K136 ["GridMaterial"]
      806 NAMECALL                         R17 R4 K22 ["getText"]
      808 CALL                             R17 3 1
      809 SETTABLEKS                       R17 R16 K19 ["Title"]
      811 LOADK                            R19 K32 ["StudioModes"]
      812 LOADK                            R20 K145 ["GridMaterialToolTip"]
      813 NAMECALL                         R17 R4 K22 ["getText"]
      815 CALL                             R17 3 1
      816 SETTABLEKS                       R17 R16 K26 ["ToolTip"]
      818 GETTABLEKS                       R17 R0 K30 ["Actions"]
      820 SETTABLEKS                       R17 R16 K30 ["Actions"]
      822 CALL                             R14 2 1
      823 SETTABLEKS                       R14 R13 K136 ["GridMaterial"]
      825 MOVE                             R14 R1
      826 JUMPIFNOT                        R14 ; [+23]
      827 GETUPVAL                         R14 4
      828 GETTABLEKS                       R14 R14 K7 ["createElement"]
      830 GETUPVAL                         R15 9
      831 DUPTABLE                         R16 K147 [{"Title", "ToolTip", "UseState"}]
      832 LOADK                            R19 K32 ["StudioModes"]
      833 LOADK                            R20 K137 ["CollaboratorHighlights"]
      834 NAMECALL                         R17 R4 K22 ["getText"]
      836 CALL                             R17 3 1
      837 SETTABLEKS                       R17 R16 K19 ["Title"]
      839 LOADK                            R19 K32 ["StudioModes"]
      840 LOADK                            R20 K148 ["CollaboratorHighlightsToolTip"]
      841 NAMECALL                         R17 R4 K22 ["getText"]
      843 CALL                             R17 3 1
      844 SETTABLEKS                       R17 R16 K26 ["ToolTip"]
      846 GETUPVAL                         R17 10
      847 SETTABLEKS                       R17 R16 K146 ["UseState"]
      849 CALL                             R14 2 1
      850 SETTABLEKS                       R14 R13 K137 ["CollaboratorHighlights"]
      852 CALL                             R10 3 1
      853 SETTABLEKS                       R10 R9 K16 ["View"]
      855 CALL                             R6 3 -1
      856 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Modes"]
       27 GETTABLEKS                       R4 R4 K11 ["SettingVisualizationMode"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Modes"]
       36 GETTABLEKS                       R5 R5 K12 ["ToggleActionVisualizationMode"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K13 ["Hooks"]
       45 GETTABLEKS                       R6 R6 K14 ["useCollaborationHighlights"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Src"]
       52 GETTABLEKS                       R7 R7 K13 ["Hooks"]
       54 GETTABLEKS                       R7 R7 K15 ["useInstanceSetting"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K9 ["Src"]
       61 GETTABLEKS                       R8 R8 K10 ["Modes"]
       63 GETTABLEKS                       R8 R8 K16 ["VisualizationMode"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K9 ["Src"]
       70 GETTABLEKS                       R9 R9 K17 ["Flags"]
       72 GETTABLEKS                       R9 R9 K18 ["getFFlagStudioVisualizationModesServiceFix"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K9 ["Src"]
       79 GETTABLEKS                       R10 R10 K17 ["Flags"]
       81 GETTABLEKS                       R10 R10 K19 ["getFFlagStudioVisualizationModesTestSupport"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K9 ["Src"]
       88 GETTABLEKS                       R11 R11 K17 ["Flags"]
       90 GETTABLEKS                       R11 R11 K20 ["getFFlagUseAdornBasedCDDebugVis"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K9 ["Src"]
       97 GETTABLEKS                       R12 R12 K17 ["Flags"]
       99 GETTABLEKS                       R12 R12 K21 ["getRenameEmulatorToSimulatorEngineFeature"]
      101 CALL                             R11 1 1
      102 GETTABLEKS                       R12 R1 K22 ["ContextServices"]
      104 DUPCLOSURE                       R13 K23 [PROTO_0]
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R5
      116 RETURN                           R13 1
