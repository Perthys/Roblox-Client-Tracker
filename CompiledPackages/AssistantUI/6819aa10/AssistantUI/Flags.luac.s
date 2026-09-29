PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["trackFlag"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 0
        5 FASTCALL3                        RAWSET R0 R1 R2
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 MOVE                             R6 R2
       10 GETIMPORT                        R3 K2 [rawset]
       12 CALL                             R3 3 0
       13 RETURN                           R0 0

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
       14 GETTABLEKS                       R2 R1 K8 ["Engine"]
       16 GETTABLEKS                       R2 R2 K9 ["EngineFlags"]
       18 GETTABLEKS                       R3 R1 K10 ["TestableFlags"]
       20 NEWTABLE                         R5 256 0
       22 DUPTABLE                         R6 K12 [{"__newindex"}]
       23 DUPCLOSURE                       R7 K13 [PROTO_0]
       24 CAPTURE                          VAL R3
       25 SETTABLEKS                       R7 R6 K11 ["__newindex"]
       27 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       29 GETIMPORT                        R4 K15 [setmetatable]
       31 CALL                             R4 2 1
       32 GETTABLEKS                       R5 R3 K16 ["createGetFFlag"]
       34 LOADK                            R6 K17 ["VirtualInputEnabled"]
       35 CALL                             R5 1 1
       36 CALL                             R5 0 1
       37 GETTABLEKS                       R6 R3 K18 ["createGetDFFlag"]
       39 LOADK                            R7 K19 ["MCPVideoCapture2"]
       40 CALL                             R6 1 1
       41 CALL                             R6 0 1
       42 GETTABLEKS                       R7 R3 K20 ["createGetDFString"]
       44 LOADK                            R8 K21 ["GenerationServiceSchemaDefinitionPartsKey"]
       45 LOADK                            R9 K22 ["Groups"]
       46 CALL                             R7 2 1
       47 CALL                             R7 0 1
       48 SETTABLEKS                       R7 R4 K23 ["DFStringGenerationServiceSchemaDefinitionPartsKey"]
       50 GETTABLEKS                       R7 R3 K24 ["createGetEngineFeature"]
       52 LOADK                            R8 K25 ["AssistantBridgeStandalone"]
       53 CALL                             R7 1 1
       54 CALL                             R7 0 1
       55 SETTABLEKS                       R7 R4 K26 ["EngineFeatureAssistantBridgeStandalone"]
       57 GETTABLEKS                       R7 R3 K24 ["createGetEngineFeature"]
       59 LOADK                            R8 K27 ["AssistantGen3dImagePreview"]
       60 CALL                             R7 1 1
       61 CALL                             R7 0 1
       62 SETTABLEKS                       R7 R4 K28 ["EngineFeatureAssistantGen3dImagePreview"]
       64 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
       66 LOADK                            R8 K29 ["AllowThreadSuspendOverride"]
       67 CALL                             R7 1 1
       68 CALL                             R7 0 1
       69 SETTABLEKS                       R7 R4 K30 ["FFlagAllowThreadSuspendOverride"]
       71 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
       73 LOADK                            R8 K31 ["AnimationGenOpenACE2"]
       74 CALL                             R7 1 1
       75 CALL                             R7 0 1
       76 SETTABLEKS                       R7 R4 K32 ["FFlagAnimationGenOpenACE"]
       78 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
       80 LOADK                            R8 K33 ["AssistantACPBatchHistoryReplay"]
       81 CALL                             R7 1 1
       82 CALL                             R7 0 1
       83 SETTABLEKS                       R7 R4 K34 ["FFlagAssistantACPBatchHistoryReplay"]
       85 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
       87 LOADK                            R8 K35 ["AssistantACPFixPendingToolCall2"]
       88 CALL                             R7 1 1
       89 CALL                             R7 0 1
       90 SETTABLEKS                       R7 R4 K36 ["FFlagAssistantACPFixPendingToolCall"]
       92 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
       94 LOADK                            R8 K37 ["AssistantAddPlaceholderProp"]
       95 CALL                             R7 1 1
       96 CALL                             R7 0 1
       97 SETTABLEKS                       R7 R4 K38 ["FFlagAssistantAddPlaceholderProp"]
       99 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      101 LOADK                            R8 K39 ["AssistantAnimationGenTool"]
      102 CALL                             R7 1 1
      103 CALL                             R7 0 1
      104 SETTABLEKS                       R7 R4 K40 ["FFlagAssistantAnimationGenTool"]
      106 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      108 LOADK                            R8 K41 ["AssistantAskInputToolLLM2"]
      109 CALL                             R7 1 1
      110 CALL                             R7 0 1
      111 SETTABLEKS                       R7 R4 K42 ["FFlagAssistantAskInputToolLLM"]
      113 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      115 LOADK                            R8 K43 ["AssistantAssetSearchCreatorStoreUtm"]
      116 CALL                             R7 1 1
      117 CALL                             R7 0 1
      118 SETTABLEKS                       R7 R4 K44 ["FFlagAssistantAssetSearchCreatorStoreUtm"]
      120 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      122 LOADK                            R8 K45 ["AssistantAssetSearchDirectInsert"]
      123 CALL                             R7 1 1
      124 CALL                             R7 0 1
      125 SETTABLEKS                       R7 R4 K46 ["FFlagAssistantAssetSearchDirectInsert"]
      127 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      129 LOADK                            R8 K47 ["AssistantAssetTileNamePreview"]
      130 CALL                             R7 1 1
      131 CALL                             R7 0 1
      132 SETTABLEKS                       R7 R4 K48 ["FFlagAssistantAssetTileNamePreview"]
      134 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      136 LOADK                            R8 K49 ["AssistantAvatarAutoSetupTool3"]
      137 CALL                             R7 1 1
      138 CALL                             R7 0 1
      139 SETTABLEKS                       R7 R4 K50 ["FFlagAssistantAvatarAutoSetupTool"]
      141 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      143 LOADK                            R8 K51 ["AssistantBetaFeatureSkills"]
      144 CALL                             R7 1 1
      145 CALL                             R7 0 1
      146 SETTABLEKS                       R7 R4 K52 ["FFlagAssistantBetaFeatureSkills"]
      148 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      150 LOADK                            R8 K53 ["AssistantChatFollowBottomThreshold"]
      151 CALL                             R7 1 1
      152 CALL                             R7 0 1
      153 SETTABLEKS                       R7 R4 K54 ["FFlagAssistantChatFollowBottomThreshold"]
      155 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      157 LOADK                            R8 K55 ["AssistantCloseDropdownsOnWidgetHidden"]
      158 CALL                             R7 1 1
      159 CALL                             R7 0 1
      160 SETTABLEKS                       R7 R4 K56 ["FFlagAssistantCloseDropdownsOnWidgetHidden"]
      162 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      164 LOADK                            R8 K57 ["AssistantConfirmButtonUpdate"]
      165 CALL                             R7 1 1
      166 CALL                             R7 0 1
      167 SETTABLEKS                       R7 R4 K58 ["FFlagAssistantConfirmButtonUpdate"]
      169 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      171 LOADK                            R8 K59 ["AssistantConsoleOutputTailFromEnd2"]
      172 CALL                             R7 1 1
      173 CALL                             R7 0 1
      174 SETTABLEKS                       R7 R4 K60 ["FFlagAssistantConsoleOutputTailFromEnd"]
      176 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      178 LOADK                            R8 K61 ["AssistantCopyButton"]
      179 CALL                             R7 1 1
      180 CALL                             R7 0 1
      181 SETTABLEKS                       R7 R4 K62 ["FFlagAssistantCopyButton"]
      183 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      185 LOADK                            R8 K63 ["AssistantCreditMetering3"]
      186 CALL                             R7 1 1
      187 CALL                             R7 0 1
      188 SETTABLEKS                       R7 R4 K64 ["FFlagAssistantCreditMetering"]
      190 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      192 LOADK                            R8 K65 ["AssistantCreditMeteringAdditionalUsage"]
      193 LOADB                            R9 1
      194 CALL                             R7 2 1
      195 CALL                             R7 0 1
      196 SETTABLEKS                       R7 R4 K66 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      198 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      200 LOADK                            R8 K67 ["AssistantCreditMeteringInferBlockReason"]
      201 CALL                             R7 1 1
      202 CALL                             R7 0 1
      203 SETTABLEKS                       R7 R4 K68 ["FFlagAssistantCreditMeteringInferBlockReason"]
      205 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      207 LOADK                            R8 K69 ["AssistantCreditMeteringLocalBackend"]
      208 CALL                             R7 1 1
      209 CALL                             R7 0 1
      210 SETTABLEKS                       R7 R4 K70 ["FFlagAssistantCreditMeteringLocalBackend"]
      212 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      214 LOADK                            R8 K71 ["AssistantCreditMeteringLocalBackendExp"]
      215 CALL                             R7 1 1
      216 CALL                             R7 0 1
      217 SETTABLEKS                       R7 R4 K72 ["FFlagAssistantCreditMeteringLocalBackendExp"]
      219 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      221 LOADK                            R8 K73 ["AssistantCreditMeteringResetPeriod"]
      222 CALL                             R7 1 1
      223 CALL                             R7 0 1
      224 SETTABLEKS                       R7 R4 K74 ["FFlagAssistantCreditMeteringResetPeriod"]
      226 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      228 LOADK                            R8 K75 ["AssistantDestroySessionMonitorsOnClose"]
      229 CALL                             R7 1 1
      230 CALL                             R7 0 1
      231 SETTABLEKS                       R7 R4 K76 ["FFlagAssistantDestroySessionMonitorsOnClose"]
      233 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      235 LOADK                            R8 K77 ["AssistantDisableApplyEditDataModelAvailability"]
      236 CALL                             R7 1 1
      237 CALL                             R7 0 1
      238 SETTABLEKS                       R7 R4 K78 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
      240 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      242 LOADK                            R8 K79 ["AssistantDisableAssetInsertAutoGrantPermissions"]
      243 CALL                             R7 1 1
      244 CALL                             R7 0 1
      245 SETTABLEKS                       R7 R4 K80 ["FFlagAssistantDisableAssetInsertAutoGrantPermissions"]
      247 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      249 LOADK                            R8 K81 ["AssistantDisableBranching"]
      250 CALL                             R7 1 1
      251 CALL                             R7 0 1
      252 SETTABLEKS                       R7 R4 K82 ["FFlagAssistantDisableBranching"]
      254 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      256 LOADK                            R8 K83 ["AssistantDisableForceSyncJobRun"]
      257 CALL                             R7 1 1
      258 CALL                             R7 0 1
      259 SETTABLEKS                       R7 R4 K84 ["FFlagAssistantDisableForceSyncJobRun"]
      261 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      263 LOADK                            R8 K85 ["AssistantDisableSessionFilter"]
      264 CALL                             R7 1 1
      265 CALL                             R7 0 1
      266 SETTABLEKS                       R7 R4 K86 ["FFlagAssistantDisableSessionFilter"]
      268 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      270 LOADK                            R8 K87 ["AssistantEditScrubbarPropertyRow"]
      271 CALL                             R7 1 1
      272 CALL                             R7 0 1
      273 SETTABLEKS                       R7 R4 K88 ["FFlagAssistantEditScrubbarPropertyRow"]
      275 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      277 LOADK                            R8 K89 ["AssistantEndPlanTurnOnBuild"]
      278 CALL                             R7 1 1
      279 CALL                             R7 0 1
      280 SETTABLEKS                       R7 R4 K90 ["FFlagAssistantEndPlanTurnOnBuild"]
      282 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      284 LOADK                            R8 K91 ["AssistantEval"]
      285 CALL                             R7 1 1
      286 CALL                             R7 0 1
      287 SETTABLEKS                       R7 R4 K92 ["FFlagAssistantEval"]
      289 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      291 LOADK                            R8 K93 ["AssistantExternalInterface"]
      292 CALL                             R7 1 1
      293 CALL                             R7 0 1
      294 SETTABLEKS                       R7 R4 K94 ["FFlagAssistantExternalInterface"]
      296 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      298 LOADK                            R8 K95 ["AssistantExternalMCPPluginSettingRedundancy"]
      299 CALL                             R7 1 1
      300 CALL                             R7 0 1
      301 SETTABLEKS                       R7 R4 K96 ["FFlagAssistantExternalMCPPluginSettingRedundancy"]
      303 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      305 LOADK                            R8 K97 ["AssistantFeedbackView"]
      306 CALL                             R7 1 1
      307 CALL                             R7 0 1
      308 SETTABLEKS                       R7 R4 K98 ["FFlagAssistantFeedbackView"]
      310 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      312 LOADK                            R8 K99 ["AssistantFixStartPlayHang"]
      313 CALL                             R7 1 1
      314 CALL                             R7 0 1
      315 SETTABLEKS                       R7 R4 K100 ["FFlagAssistantFixStartPlayHang"]
      317 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      319 LOADK                            R8 K101 ["AssistantForceRemoteServiceForInternal"]
      320 CALL                             R7 1 1
      321 CALL                             R7 0 1
      322 SETTABLEKS                       R7 R4 K102 ["FFlagAssistantForceRemoteServiceForInternal"]
      324 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      326 LOADK                            R8 K103 ["AssistantGen3DAssetPublishTracking"]
      327 CALL                             R7 1 1
      328 CALL                             R7 0 1
      329 SETTABLEKS                       R7 R4 K104 ["FFlagAssistantGen3DAssetPublishTracking"]
      331 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      333 LOADK                            R8 K105 ["AssistantGen3dAutoSegmentation"]
      334 CALL                             R7 1 1
      335 CALL                             R7 0 1
      336 SETTABLEKS                       R7 R4 K106 ["FFlagAssistantGen3dAutoSegmentation"]
      338 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      340 LOADK                            R8 K107 ["AssistantGen3DImagePreviewTelemetry"]
      341 CALL                             R7 1 1
      342 CALL                             R7 0 1
      343 SETTABLEKS                       R7 R4 K108 ["FFlagAssistantGen3DImagePreviewTelemetry"]
      345 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      347 LOADK                            R8 K109 ["AssistantGen3dRequirePromptToGenerate"]
      348 CALL                             R7 1 1
      349 CALL                             R7 0 1
      350 SETTABLEKS                       R7 R4 K110 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      352 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      354 LOADK                            R8 K111 ["AssistantGen3DTelemetryV2"]
      355 CALL                             R7 1 1
      356 CALL                             R7 0 1
      357 SETTABLEKS                       R7 R4 K112 ["FFlagAssistantGen3DTelemetryV2"]
      359 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      361 LOADK                            R8 K113 ["AssistantGenerateLayoutTool"]
      362 CALL                             R7 1 1
      363 CALL                             R7 0 1
      364 SETTABLEKS                       R7 R4 K114 ["FFlagAssistantGenerateLayoutTool"]
      366 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      368 LOADK                            R8 K115 ["AssistantGenerateLayoutTopDownHint"]
      369 CALL                             R7 1 1
      370 CALL                             R7 0 1
      371 SETTABLEKS                       R7 R4 K116 ["FFlagAssistantGenerateLayoutTopDownHint"]
      373 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      375 LOADK                            R8 K117 ["AssistantHidePinForBuild"]
      376 CALL                             R7 1 1
      377 CALL                             R7 0 1
      378 SETTABLEKS                       R7 R4 K118 ["FFlagAssistantHidePinForBuild"]
      380 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      382 LOADK                            R8 K119 ["AssistantHintMultiEditOverExecLuau"]
      383 CALL                             R7 1 1
      384 CALL                             R7 0 1
      385 SETTABLEKS                       R7 R4 K120 ["FFlagAssistantHintMultiEditOverExecLuau"]
      387 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      389 LOADK                            R8 K121 ["AssistantImageGenAbortPollOn4xx"]
      390 CALL                             R7 1 1
      391 CALL                             R7 0 1
      392 SETTABLEKS                       R7 R4 K122 ["FFlagAssistantImageGenAbortPollOn4xx"]
      394 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      396 LOADK                            R8 K123 ["AssistantImageGenImprovements"]
      397 CALL                             R7 1 1
      398 CALL                             R7 0 1
      399 SETTABLEKS                       R7 R4 K124 ["FFlagAssistantImageGenImprovements"]
      401 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      403 LOADK                            R8 K125 ["AssistantImageGenSeed"]
      404 CALL                             R7 1 1
      405 CALL                             R7 0 1
      406 SETTABLEKS                       R7 R4 K126 ["FFlagAssistantImageGenSeed"]
      408 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      410 LOADK                            R8 K127 ["AssistantImageGenUseOpenApiClient"]
      411 CALL                             R7 1 1
      412 CALL                             R7 0 1
      413 SETTABLEKS                       R7 R4 K128 ["FFlagAssistantImageGenUseOpenApiClient"]
      415 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      417 LOADK                            R8 K129 ["AssistantImageSelectionWizardModeMeshGen"]
      418 CALL                             R7 1 1
      419 CALL                             R7 0 1
      420 SETTABLEKS                       R7 R4 K130 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      422 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      424 LOADK                            R8 K131 ["AssistantImageSelectionWizardModePrimitiveGen"]
      425 CALL                             R7 1 1
      426 CALL                             R7 0 1
      427 SETTABLEKS                       R7 R4 K132 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      429 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      431 LOADK                            R8 K133 ["AssistantImageSelectionWizardModeTextureGen"]
      432 CALL                             R7 1 1
      433 CALL                             R7 0 1
      434 SETTABLEKS                       R7 R4 K134 ["FFlagAssistantImageSelectionWizardModeTextureGen"]
      436 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      438 LOADK                            R8 K135 ["AssistantInsertAssetSandboxProceduralModels"]
      439 CALL                             R7 1 1
      440 CALL                             R7 0 1
      441 SETTABLEKS                       R7 R4 K136 ["FFlagAssistantInsertAssetSandboxProceduralModels"]
      443 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      445 LOADK                            R8 K137 ["AssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      446 CALL                             R7 1 1
      447 CALL                             R7 0 1
      448 SETTABLEKS                       R7 R4 K138 ["FFlagAssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      450 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      452 LOADK                            R8 K139 ["AssistantInsertAssetSandboxScripts"]
      453 CALL                             R7 1 1
      454 CALL                             R7 0 1
      455 SETTABLEKS                       R7 R4 K140 ["FFlagAssistantInsertAssetSandboxScripts"]
      457 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      459 LOADK                            R8 K141 ["AssistantMcpImageGenShortcut"]
      460 CALL                             R7 1 1
      461 CALL                             R7 0 1
      462 SETTABLEKS                       R7 R4 K142 ["FFlagAssistantMcpImageGenShortcut"]
      464 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      466 LOADK                            R9 K143 ["AssistantMCPVideoCapture"]
      467 CALL                             R8 1 1
      468 CALL                             R8 0 1
      469 AND                              R7 R8 R6
      470 SETTABLEKS                       R7 R4 K144 ["FFlagAssistantMCPVideoCapture"]
      472 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      474 LOADK                            R8 K145 ["AssistantMeshGenAutoExpandCollapse"]
      475 CALL                             R7 1 1
      476 CALL                             R7 0 1
      477 SETTABLEKS                       R7 R4 K146 ["FFlagAssistantMeshGenAutoExpandCollapse"]
      479 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      481 LOADK                            R8 K147 ["AssistantMeshGenHintImage"]
      482 CALL                             R7 1 1
      483 CALL                             R7 0 1
      484 SETTABLEKS                       R7 R4 K148 ["FFlagAssistantMeshGenHintImage"]
      486 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      488 LOADK                            R8 K149 ["AssistantMeshGenImageGenPromptTemplateEnabled"]
      489 CALL                             R7 1 1
      490 CALL                             R7 0 1
      491 SETTABLEKS                       R7 R4 K150 ["FFlagAssistantMeshGenImageGenPromptTemplateEnabled"]
      493 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      495 LOADK                            R8 K151 ["AssistantMeshGenRemoveAdminOptions"]
      496 CALL                             R7 1 1
      497 CALL                             R7 0 1
      498 SETTABLEKS                       R7 R4 K152 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      500 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      502 LOADK                            R8 K153 ["AssistantMoveToolButtonsToTheRightAgain"]
      503 CALL                             R7 1 1
      504 CALL                             R7 0 1
      505 SETTABLEKS                       R7 R4 K154 ["FFlagAssistantMoveToolButtonsToTheRightAgain"]
      507 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      509 LOADK                            R8 K155 ["AssistantMultiEditExternalClient"]
      510 CALL                             R7 1 1
      511 CALL                             R7 0 1
      512 SETTABLEKS                       R7 R4 K156 ["FFlagAssistantMultiEditExternalClient"]
      514 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      516 LOADK                            R8 K157 ["AssistantOmitSlashToolCallDroppedFields"]
      517 CALL                             R7 1 1
      518 CALL                             R7 0 1
      519 SETTABLEKS                       R7 R4 K158 ["FFlagAssistantOmitSlashToolCallDroppedFields"]
      521 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      523 LOADK                            R8 K159 ["AssistantPinForBuildUI"]
      524 CALL                             R7 1 1
      525 CALL                             R7 0 1
      526 SETTABLEKS                       R7 R4 K160 ["FFlagAssistantPinForBuildUI"]
      528 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      530 LOADK                            R8 K161 ["AssistantPlanRevisionList"]
      531 CALL                             R7 1 1
      532 CALL                             R7 0 1
      533 SETTABLEKS                       R7 R4 K162 ["FFlagAssistantPlanRevisionList"]
      535 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      537 LOADK                            R8 K163 ["AssistantPlaytestContext"]
      538 CALL                             R7 1 1
      539 CALL                             R7 0 1
      540 SETTABLEKS                       R7 R4 K164 ["FFlagAssistantPlaytestContext"]
      542 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      544 LOADK                            R8 K165 ["AssistantPlaytestToolFix"]
      545 CALL                             R7 1 1
      546 CALL                             R7 0 1
      547 SETTABLEKS                       R7 R4 K166 ["FFlagAssistantPlaytestToolFix"]
      549 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      551 LOADK                            R8 K167 ["AssistantPromptHistoryFromConversation"]
      552 CALL                             R7 1 1
      553 CALL                             R7 0 1
      554 SETTABLEKS                       R7 R4 K168 ["FFlagAssistantPromptHistoryFromConversation"]
      556 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      558 LOADK                            R8 K169 ["AssistantPromptModeratedError"]
      559 CALL                             R7 1 1
      560 CALL                             R7 0 1
      561 SETTABLEKS                       R7 R4 K170 ["FFlagAssistantPromptModeratedError"]
      563 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      565 LOADK                            R8 K171 ["AssistantRemoveWaitForPendingSavesOnDestroy"]
      566 CALL                             R7 1 1
      567 CALL                             R7 0 1
      568 SETTABLEKS                       R7 R4 K172 ["FFlagAssistantRemoveWaitForPendingSavesOnDestroy"]
      570 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      572 LOADK                            R8 K173 ["AssistantReplaceJobRunWithAsyncArg"]
      573 CALL                             R7 1 1
      574 CALL                             R7 0 1
      575 SETTABLEKS                       R7 R4 K174 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
      577 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      579 LOADK                            R8 K175 ["AssistantRestoreCameraStateInExec"]
      580 CALL                             R7 1 1
      581 CALL                             R7 0 1
      582 SETTABLEKS                       R7 R4 K176 ["FFlagAssistantRestoreCameraStateInExec"]
      584 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      586 LOADK                            R8 K177 ["AssistantRestoreCameraStateInExecWarn"]
      587 CALL                             R7 1 1
      588 CALL                             R7 0 1
      589 SETTABLEKS                       R7 R4 K178 ["FFlagAssistantRestoreCameraStateInExecWarn"]
      591 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      593 LOADK                            R8 K179 ["AssistantRestoreMostRecentThread"]
      594 CALL                             R7 1 1
      595 CALL                             R7 0 1
      596 SETTABLEKS                       R7 R4 K180 ["FFlagAssistantRestoreMostRecentThread"]
      598 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      600 LOADK                            R8 K181 ["AssistantSegmentationBridge"]
      601 CALL                             R7 1 1
      602 CALL                             R7 0 1
      603 SETTABLEKS                       R7 R4 K182 ["FFlagAssistantSegmentationBridge"]
      605 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      607 LOADK                            R8 K183 ["AssistantSegmentationPromptModeSelector"]
      608 CALL                             R7 1 1
      609 CALL                             R7 0 1
      610 SETTABLEKS                       R7 R4 K184 ["FFlagAssistantSegmentationPromptModeSelector"]
      612 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      614 LOADK                            R8 K185 ["AssistantSegmentationUIFixes"]
      615 CALL                             R7 1 1
      616 CALL                             R7 0 1
      617 SETTABLEKS                       R7 R4 K186 ["FFlagAssistantSegmentationUIFixes"]
      619 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      621 LOADK                            R8 K187 ["AssistantSegmentMeshCleanupWorldWrapper"]
      622 CALL                             R7 1 1
      623 CALL                             R7 0 1
      624 SETTABLEKS                       R7 R4 K188 ["FFlagAssistantSegmentMeshCleanupWorldWrapper"]
      626 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      628 LOADK                            R8 K189 ["AssistantSegmentMeshTool"]
      629 CALL                             R7 1 1
      630 CALL                             R7 0 1
      631 SETTABLEKS                       R7 R4 K190 ["FFlagAssistantSegmentMeshTool"]
      633 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      635 LOADK                            R8 K191 ["AssistantSegmentMeshUseSourceMeshCFrame"]
      636 CALL                             R7 1 1
      637 CALL                             R7 0 1
      638 SETTABLEKS                       R7 R4 K192 ["FFlagAssistantSegmentMeshUseSourceMeshCFrame"]
      640 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      642 LOADK                            R8 K193 ["AssistantSerializeToolConfirmation"]
      643 CALL                             R7 1 1
      644 CALL                             R7 0 1
      645 SETTABLEKS                       R7 R4 K194 ["FFlagAssistantSerializeToolConfirmation"]
      647 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      649 LOADK                            R8 K195 ["AssistantSkillToolNameReplace"]
      650 CALL                             R7 1 1
      651 CALL                             R7 0 1
      652 SETTABLEKS                       R7 R4 K196 ["FFlagAssistantSkillToolNameReplace"]
      654 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      656 LOADK                            R8 K197 ["AssistantSlashCommandStepBackNavigation"]
      657 CALL                             R7 1 1
      658 CALL                             R7 0 1
      659 SETTABLEKS                       R7 R4 K198 ["FFlagAssistantSlashCommandStepBackNavigation"]
      661 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      663 LOADK                            R8 K199 ["AssistantSlashToolNameAndError"]
      664 CALL                             R7 1 1
      665 CALL                             R7 0 1
      666 SETTABLEKS                       R7 R4 K200 ["FFlagAssistantSlashToolNameAndError"]
      668 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      670 LOADK                            R8 K201 ["AssistantStandaloneDataModel"]
      671 CALL                             R7 1 1
      672 CALL                             R7 0 1
      673 SETTABLEKS                       R7 R4 K202 ["FFlagAssistantStandaloneDataModel"]
      675 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      677 LOADK                            R8 K203 ["AssistantStartStopPlayBusyCheck"]
      678 CALL                             R7 1 1
      679 CALL                             R7 0 1
      680 SETTABLEKS                       R7 R4 K204 ["FFlagAssistantStartStopPlayBusyCheck"]
      682 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      684 LOADK                            R8 K205 ["AssistantTestLLMPreserveThinking"]
      685 LOADB                            R9 1
      686 CALL                             R7 2 1
      687 CALL                             R7 0 1
      688 SETTABLEKS                       R7 R4 K206 ["FFlagAssistantTestLLMPreserveThinking"]
      690 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      692 LOADK                            R8 K207 ["AssistantTestLLMThinkingEnabled"]
      693 LOADB                            R9 1
      694 CALL                             R7 2 1
      695 CALL                             R7 0 1
      696 SETTABLEKS                       R7 R4 K208 ["FFlagAssistantTestLLMThinkingEnabled"]
      698 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      700 LOADK                            R8 K209 ["AssistantTextureGenModelSelection"]
      701 CALL                             R7 1 1
      702 CALL                             R7 0 1
      703 SETTABLEKS                       R7 R4 K210 ["FFlagAssistantTextureGenModelSelection"]
      705 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      707 LOADK                            R8 K211 ["AssistantTextureGenTool"]
      708 CALL                             R7 1 1
      709 CALL                             R7 0 1
      710 SETTABLEKS                       R7 R4 K212 ["FFlagAssistantTextureGenTool"]
      712 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      714 LOADK                            R8 K213 ["AssistantTextureGenUseSourceMeshCFrame"]
      715 CALL                             R7 1 1
      716 CALL                             R7 0 1
      717 SETTABLEKS                       R7 R4 K214 ["FFlagAssistantTextureGenUseSourceMeshCFrame"]
      719 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      721 LOADK                            R8 K215 ["AssistantTruncatePrimGenHeader"]
      722 CALL                             R7 1 1
      723 CALL                             R7 0 1
      724 SETTABLEKS                       R7 R4 K216 ["FFlagAssistantTruncatePrimGenHeader"]
      726 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      728 LOADK                            R8 K217 ["AssistantUntitledChatPlaceholder"]
      729 CALL                             R7 1 1
      730 CALL                             R7 0 1
      731 SETTABLEKS                       R7 R4 K218 ["FFlagAssistantUntitledChatPlaceholder"]
      733 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      735 LOADK                            R8 K219 ["AssistantUseMarkdownPackage"]
      736 CALL                             R7 1 1
      737 CALL                             R7 0 1
      738 SETTABLEKS                       R7 R4 K220 ["FFlagAssistantUseMarkdownPackage"]
      740 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      742 LOADK                            R8 K221 ["AssistantUseNewTags"]
      743 CALL                             R7 1 1
      744 CALL                             R7 0 1
      745 SETTABLEKS                       R7 R4 K222 ["FFlagAssistantUseNewTags"]
      747 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      749 LOADK                            R8 K223 ["AssistantUseRemoteService2"]
      750 CALL                             R7 1 1
      751 CALL                             R7 0 1
      752 SETTABLEKS                       R7 R4 K224 ["FFlagAssistantUseRemoteService"]
      754 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      756 LOADK                            R8 K225 ["AssistantUseRemoteServiceExp"]
      757 CALL                             R7 1 1
      758 CALL                             R7 0 1
      759 SETTABLEKS                       R7 R4 K226 ["FFlagAssistantUseRemoteServiceExp"]
      761 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      763 LOADK                            R8 K227 ["AssistantUseVariantHttpTransport"]
      764 CALL                             R7 1 1
      765 CALL                             R7 0 1
      766 SETTABLEKS                       R7 R4 K228 ["FFlagAssistantUseVariantHttpTransport"]
      768 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      770 LOADK                            R8 K229 ["AssistantVersionMismatchWarning"]
      771 CALL                             R7 1 1
      772 CALL                             R7 0 1
      773 SETTABLEKS                       R7 R4 K230 ["FFlagAssistantVersionMismatchWarning"]
      775 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      777 LOADK                            R8 K231 ["AssistantVideoCaptureTool"]
      778 CALL                             R7 1 1
      779 CALL                             R7 0 1
      780 SETTABLEKS                       R7 R4 K232 ["FFlagAssistantVideoCaptureTool"]
      782 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      784 LOADK                            R9 K233 ["AssistantVirtualInputEnabled"]
      785 CALL                             R8 1 1
      786 CALL                             R8 0 1
      787 AND                              R7 R8 R5
      788 SETTABLEKS                       R7 R4 K234 ["FFlagAssistantVirtualInputEnabled"]
      790 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      792 LOADK                            R8 K235 ["AsssistantFixMarkdownRendererErrorForBracket"]
      793 CALL                             R7 1 1
      794 CALL                             R7 0 1
      795 SETTABLEKS                       R7 R4 K236 ["FFlagAsssistantFixMarkdownRendererErrorForBracket"]
      797 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      799 LOADK                            R8 K237 ["DebugAssistantMultiPlayerAgentsLog"]
      800 CALL                             R7 1 1
      801 CALL                             R7 0 1
      802 SETTABLEKS                       R7 R4 K238 ["FFlagDebugAssistantMultiPlayerAgentsLog"]
      804 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      806 LOADK                            R8 K239 ["DebugEnableTestLLMAdapter"]
      807 CALL                             R7 1 1
      808 CALL                             R7 0 1
      809 SETTABLEKS                       R7 R4 K240 ["FFlagDebugEnableTestLLMAdapter"]
      811 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      813 LOADK                            R8 K241 ["DebugMockPrimitiveGenBackend"]
      814 CALL                             R7 1 1
      815 CALL                             R7 0 1
      816 SETTABLEKS                       R7 R4 K242 ["FFlagDebugMockPrimitiveGenBackend"]
      818 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      820 LOADK                            R8 K243 ["DisableMCPConnectionIndicator"]
      821 CALL                             R7 1 1
      822 CALL                             R7 0 1
      823 SETTABLEKS                       R7 R4 K244 ["FFlagDisableMCPConnectionIndicator"]
      825 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      827 LOADK                            R8 K245 ["FFlagDisableNavigationConfirmation"]
      828 CALL                             R7 1 1
      829 CALL                             R7 0 1
      830 SETTABLEKS                       R7 R4 K245 ["FFlagDisableNavigationConfirmation"]
      832 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      834 LOADK                            R8 K246 ["DisableNewSmartSize"]
      835 CALL                             R7 1 1
      836 CALL                             R7 0 1
      837 SETTABLEKS                       R7 R4 K247 ["FFlagDisableNewSmartSize"]
      839 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      841 LOADK                            R8 K248 ["DisableOldSmartSize"]
      842 CALL                             R7 1 1
      843 CALL                             R7 0 1
      844 SETTABLEKS                       R7 R4 K249 ["FFlagDisableOldSmartSize"]
      846 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      848 LOADK                            R8 K250 ["FFlagDisableStartStopPlayConfirmation"]
      849 CALL                             R7 1 1
      850 CALL                             R7 0 1
      851 SETTABLEKS                       R7 R4 K250 ["FFlagDisableStartStopPlayConfirmation"]
      853 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      855 LOADK                            R8 K251 ["FFlagDisableUserInputConfirmation"]
      856 CALL                             R7 1 1
      857 CALL                             R7 0 1
      858 SETTABLEKS                       R7 R4 K251 ["FFlagDisableUserInputConfirmation"]
      860 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      862 LOADK                            R8 K252 ["EnableAssistantImageUpload"]
      863 CALL                             R7 1 1
      864 CALL                             R7 0 1
      865 SETTABLEKS                       R7 R4 K253 ["FFlagEnableAssistantImageUpload"]
      867 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      869 LOADK                            R8 K254 ["EnablePlaytestSubagent"]
      870 CALL                             R7 1 1
      871 CALL                             R7 0 1
      872 SETTABLEKS                       R7 R4 K255 ["FFlagEnablePlaytestSubagent"]
      874 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      876 LOADK                            R8 K256 ["Gen3dSegmentationSelector"]
      877 CALL                             R7 1 1
      878 CALL                             R7 0 1
      879 SETTABLEKS                       R7 R4 K257 ["FFlagGen3dSegmentationSelector"]
      881 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      883 LOADK                            R8 K258 ["MCPAssistantAzureOpenAI"]
      884 CALL                             R7 1 1
      885 CALL                             R7 0 1
      886 SETTABLEKS                       R7 R4 K259 ["FFlagMCPAssistantAzureOpenAI"]
      888 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      890 LOADK                            R8 K260 ["MCPAssistantManagementMenu5"]
      891 CALL                             R7 1 1
      892 CALL                             R7 0 1
      893 SETTABLEKS                       R7 R4 K261 ["FFlagMCPAssistantManagementMenu"]
      895 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      897 LOADK                            R8 K262 ["MCPAssistantOpenAIPreserveThinking"]
      898 CALL                             R7 1 1
      899 CALL                             R7 0 1
      900 SETTABLEKS                       R7 R4 K263 ["FFlagMCPAssistantOpenAIPreserveThinking"]
      902 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      904 LOADK                            R8 K264 ["MCPAssistantOpenAIThinkingEnabled"]
      905 CALL                             R7 1 1
      906 CALL                             R7 0 1
      907 SETTABLEKS                       R7 R4 K265 ["FFlagMCPAssistantOpenAIThinkingEnabled"]
      909 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      911 LOADK                            R8 K266 ["MCPConnectionIndicatorTooltip"]
      912 CALL                             R7 1 1
      913 CALL                             R7 0 1
      914 SETTABLEKS                       R7 R4 K267 ["FFlagMCPConnectionIndicatorTooltip"]
      916 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      918 LOADK                            R8 K268 ["MCPContentNormalization"]
      919 CALL                             R7 1 1
      920 CALL                             R7 0 1
      921 SETTABLEKS                       R7 R4 K269 ["FFlagMCPContentNormalization"]
      923 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      925 LOADK                            R8 K270 ["MCPEnableToolDisabling"]
      926 CALL                             R7 1 1
      927 CALL                             R7 0 1
      928 SETTABLEKS                       R7 R4 K271 ["FFlagMCPEnableToolDisabling"]
      930 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      932 LOADK                            R8 K272 ["PlaytestVision"]
      933 CALL                             R7 1 1
      934 CALL                             R7 0 1
      935 SETTABLEKS                       R7 R4 K273 ["FFlagPlaytestVision"]
      937 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      939 LOADK                            R8 K274 ["PrimGenBetterErrorType"]
      940 CALL                             R7 1 1
      941 CALL                             R7 0 1
      942 SETTABLEKS                       R7 R4 K275 ["FFlagPrimGenBetterErrorType"]
      944 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      946 LOADK                            R8 K276 ["PrimGenImageGenPromptTemplateEnabled"]
      947 CALL                             R7 1 1
      948 CALL                             R7 0 1
      949 SETTABLEKS                       R7 R4 K277 ["FFlagPrimGenImageGenPromptTemplateEnabled"]
      951 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      953 LOADK                            R8 K278 ["PrimGenSchemaSelector"]
      954 CALL                             R7 1 1
      955 CALL                             R7 0 1
      956 SETTABLEKS                       R7 R4 K279 ["FFlagPrimGenSchemaSelector"]
      958 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      960 LOADK                            R8 K280 ["PrimGenVerboseDmIsUnReachableMsg"]
      961 CALL                             R7 1 1
      962 CALL                             R7 0 1
      963 SETTABLEKS                       R7 R4 K281 ["FFlagPrimGenVerboseDmIsUnReachableMsg"]
      965 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      967 LOADK                            R8 K282 ["PrimGenVersionMismatchError"]
      968 CALL                             R7 1 1
      969 CALL                             R7 0 1
      970 SETTABLEKS                       R7 R4 K283 ["FFlagPrimGenVersionMismatchError"]
      972 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      974 LOADK                            R8 K284 ["PropertiesExposeContentView"]
      975 CALL                             R7 1 1
      976 CALL                             R7 0 1
      977 SETTABLEKS                       R7 R4 K285 ["FFlagPropertiesExposeContentView"]
      979 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      981 LOADK                            R8 K286 ["ScreenCaptureCamera"]
      982 CALL                             R7 1 1
      983 CALL                             R7 0 1
      984 SETTABLEKS                       R7 R4 K287 ["FFlagScreenCaptureCamera"]
      986 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      988 LOADK                            R8 K288 ["ScriptDebuggerServiceEnabled2"]
      989 CALL                             R7 1 1
      990 CALL                             R7 0 1
      991 SETTABLEKS                       R7 R4 K289 ["FFlagScriptDebuggerServiceEnabled"]
      993 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      995 LOADK                            R8 K290 ["StudioOpenCloudMCP"]
      996 CALL                             R7 1 1
      997 CALL                             R7 0 1
      998 SETTABLEKS                       R7 R4 K291 ["FFlagStudioOpenCloudMCP"]
     1000 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1002 LOADK                            R8 K292 ["SubagentScriptEditAutoConfirmation"]
     1003 CALL                             R7 1 1
     1004 CALL                             R7 0 1
     1005 SETTABLEKS                       R7 R4 K293 ["FFlagSubagentScriptEditAutoConfirmation"]
     1007 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1009 LOADK                            R8 K294 ["UseStudioSideListTool"]
     1010 CALL                             R7 1 1
     1011 CALL                             R7 0 1
     1012 SETTABLEKS                       R7 R4 K295 ["FFlagUseStudioSideListTool"]
     1014 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1016 LOADK                            R8 K297 ["AmrAssetDependencyGrantEventTimeout"]
     1017 LOADN                            R9 40
     1018 CALL                             R7 2 1
     1019 CALL                             R7 0 1
     1020 SETTABLEKS                       R7 R4 K298 ["FIntAmrAssetDependencyGrantEventTimeout"]
     1022 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1024 LOADK                            R8 K299 ["AssistantAutoSaveInterval"]
     1025 LOADN                            R9 60
     1026 CALL                             R7 2 1
     1027 CALL                             R7 0 1
     1028 SETTABLEKS                       R7 R4 K300 ["FIntAssistantAutoSaveInterval"]
     1030 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1032 LOADK                            R8 K301 ["AssistantDebugToolMaxOutput"]
     1033 LOADN                            R9 20000
     1034 CALL                             R7 2 1
     1035 CALL                             R7 0 1
     1036 SETTABLEKS                       R7 R4 K302 ["FIntAssistantDebugToolMaxOutput"]
     1038 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1040 LOADK                            R8 K303 ["AssistantJobWaitDefaultTimeout"]
     1041 LOADN                            R9 600
     1042 CALL                             R7 2 1
     1043 CALL                             R7 0 1
     1044 SETTABLEKS                       R7 R4 K304 ["FIntAssistantJobWaitDefaultTimeout"]
     1046 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1048 LOADK                            R8 K305 ["AssistantMaxDisplayTextChars"]
     1049 LOADK                            R9 K306 [100000]
     1050 CALL                             R7 2 1
     1051 CALL                             R7 0 1
     1052 SETTABLEKS                       R7 R4 K307 ["FIntAssistantMaxDisplayTextChars"]
     1054 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1056 LOADK                            R8 K308 ["AssistantMaxToolInputStringLen"]
     1057 LOADN                            R9 2000
     1058 CALL                             R7 2 1
     1059 CALL                             R7 0 1
     1060 SETTABLEKS                       R7 R4 K309 ["FIntAssistantMaxToolInputStringLen"]
     1062 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1064 LOADK                            R8 K310 ["AssistantMeshGenMaxTrianglesDefault"]
     1065 LOADN                            R9 10000
     1066 CALL                             R7 2 1
     1067 CALL                             R7 0 1
     1068 SETTABLEKS                       R7 R4 K311 ["FIntAssistantMeshGenMaxTrianglesDefault"]
     1070 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1072 LOADK                            R8 K312 ["AssistantMinPopoverHeight"]
     1073 LOADN                            R9 150
     1074 CALL                             R7 2 1
     1075 CALL                             R7 0 1
     1076 SETTABLEKS                       R7 R4 K313 ["FIntAssistantMinPopoverHeight"]
     1078 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1080 LOADK                            R8 K314 ["AssistantPersistenceMessageLoadLimit"]
     1081 LOADN                            R9 5
     1082 CALL                             R7 2 1
     1083 CALL                             R7 0 1
     1084 SETTABLEKS                       R7 R4 K315 ["FIntAssistantPersistenceMessageLoadLimit"]
     1086 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1088 LOADK                            R8 K316 ["AssistantPersistenceThreadLoadLimit"]
     1089 LOADN                            R9 5
     1090 CALL                             R7 2 1
     1091 CALL                             R7 0 1
     1092 SETTABLEKS                       R7 R4 K317 ["FIntAssistantPersistenceThreadLoadLimit"]
     1094 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1096 LOADK                            R8 K318 ["AssistantPostTurnRefreshDelaySeconds"]
     1097 LOADN                            R9 2
     1098 CALL                             R7 2 1
     1099 CALL                             R7 0 1
     1100 SETTABLEKS                       R7 R4 K319 ["FIntAssistantPostTurnRefreshDelaySeconds"]
     1102 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1104 LOADK                            R8 K320 ["AssistantPrimitiveGenMaxConcurrentJobs"]
     1105 LOADN                            R9 999
     1106 CALL                             R7 2 1
     1107 CALL                             R7 0 1
     1108 SETTABLEKS                       R7 R4 K321 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
     1110 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1112 LOADK                            R8 K322 ["AssistantPrimitiveGenPollIntervalMs"]
     1113 LOADN                            R9 2000
     1114 CALL                             R7 2 1
     1115 CALL                             R7 0 1
     1116 SETTABLEKS                       R7 R4 K323 ["FIntAssistantPrimitiveGenPollIntervalMs"]
     1118 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1120 LOADK                            R8 K324 ["AssistantProcessEventTimeoutMS"]
     1121 LOADK                            R9 K325 [60000]
     1122 CALL                             R7 2 1
     1123 CALL                             R7 0 1
     1124 SETTABLEKS                       R7 R4 K326 ["FIntAssistantProcessEventTimeoutMS"]
     1126 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1128 LOADK                            R8 K327 ["AssistantSegmentMeshMaxUserParts"]
     1129 LOADN                            R9 16
     1130 CALL                             R7 2 1
     1131 CALL                             R7 0 1
     1132 SETTABLEKS                       R7 R4 K328 ["FIntAssistantSegmentMeshMaxUserParts"]
     1134 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1136 LOADK                            R8 K329 ["ConvAIMaxHistoryCount"]
     1137 LOADN                            R9 6
     1138 CALL                             R7 2 1
     1139 CALL                             R7 0 1
     1140 SETTABLEKS                       R7 R4 K330 ["FIntConvAIMaxHistoryCount"]
     1142 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1144 LOADK                            R8 K331 ["ExecuteLuauMaxJsonLength"]
     1145 LOADK                            R9 K306 [100000]
     1146 CALL                             R7 2 1
     1147 CALL                             R7 0 1
     1148 SETTABLEKS                       R7 R4 K332 ["FIntExecuteLuauMaxJsonLength"]
     1150 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1152 LOADK                            R8 K333 ["ExecuteLuauMaxStringLength"]
     1153 LOADK                            R9 K306 [100000]
     1154 CALL                             R7 2 1
     1155 CALL                             R7 0 1
     1156 SETTABLEKS                       R7 R4 K334 ["FIntExecuteLuauMaxStringLength"]
     1158 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1160 LOADK                            R8 K335 ["FromHistoryMaxResultChars"]
     1161 LOADK                            R9 K336 [200000]
     1162 CALL                             R7 2 1
     1163 CALL                             R7 0 1
     1164 SETTABLEKS                       R7 R4 K337 ["FIntFromHistoryMaxResultChars"]
     1166 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1168 LOADK                            R8 K338 ["GameTreeDefaultHeadLimit"]
     1169 LOADN                            R9 200
     1170 CALL                             R7 2 1
     1171 CALL                             R7 0 1
     1172 SETTABLEKS                       R7 R4 K339 ["FIntGameTreeDefaultHeadLimit"]
     1174 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1176 LOADK                            R8 K340 ["GameTreeDefaultMaxDepth"]
     1177 LOADN                            R9 3
     1178 CALL                             R7 2 1
     1179 CALL                             R7 0 1
     1180 SETTABLEKS                       R7 R4 K341 ["FIntGameTreeDefaultMaxDepth"]
     1182 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1184 LOADK                            R8 K342 ["GameTreeMaxAbsoluteDepth"]
     1185 LOADN                            R9 10
     1186 CALL                             R7 2 1
     1187 CALL                             R7 0 1
     1188 SETTABLEKS                       R7 R4 K343 ["FIntGameTreeMaxAbsoluteDepth"]
     1190 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1192 LOADK                            R8 K344 ["InspectInstanceMaxJsonLength"]
     1193 LOADN                            R9 500
     1194 CALL                             R7 2 1
     1195 CALL                             R7 0 1
     1196 SETTABLEKS                       R7 R4 K345 ["FIntInspectInstanceMaxJsonLength"]
     1198 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1200 LOADK                            R8 K346 ["InspectInstanceMaxMatches"]
     1201 LOADN                            R9 20
     1202 CALL                             R7 2 1
     1203 CALL                             R7 0 1
     1204 SETTABLEKS                       R7 R4 K347 ["FIntInspectInstanceMaxMatches"]
     1206 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1208 LOADK                            R8 K348 ["InspectInstanceMaxStringLength"]
     1209 LOADN                            R9 1000
     1210 CALL                             R7 2 1
     1211 CALL                             R7 0 1
     1212 SETTABLEKS                       R7 R4 K349 ["FIntInspectInstanceMaxStringLength"]
     1214 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1216 LOADK                            R8 K350 ["MCPAssistantGenerationIndicatorWarningTime"]
     1217 LOADN                            R9 10
     1218 CALL                             R7 2 1
     1219 CALL                             R7 0 1
     1220 SETTABLEKS                       R7 R4 K351 ["FIntMCPAssistantGenerationIndicatorWarningTime"]
     1222 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1224 LOADK                            R8 K352 ["MCPAssistantInputAreaCharLimit"]
     1225 LOADN                            R9 4000
     1226 CALL                             R7 2 1
     1227 CALL                             R7 0 1
     1228 SETTABLEKS                       R7 R4 K353 ["FIntMCPAssistantInputAreaCharLimit"]
     1230 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1232 LOADK                            R8 K354 ["MCPAssistantMaxPromptHistory"]
     1233 LOADN                            R9 20
     1234 CALL                             R7 2 1
     1235 CALL                             R7 0 1
     1236 SETTABLEKS                       R7 R4 K355 ["FIntMCPAssistantMaxPromptHistory"]
     1238 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1240 LOADK                            R8 K356 ["MCPAssistantMaxToolCalls"]
     1241 LOADN                            R9 20
     1242 CALL                             R7 2 1
     1243 CALL                             R7 0 1
     1244 SETTABLEKS                       R7 R4 K357 ["FIntMCPAssistantMaxToolCalls"]
     1246 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1248 LOADK                            R8 K358 ["MinimumAssistantFreeTrialRemaining"]
     1249 LOADN                            R9 1
     1250 CALL                             R7 2 1
     1251 CALL                             R7 0 1
     1252 SETTABLEKS                       R7 R4 K359 ["FIntMinimumAssistantFreeTrialRemaining"]
     1254 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1256 LOADK                            R8 K360 ["MinimumAssistantRobuxBalance"]
     1257 LOADN                            R9 100
     1258 CALL                             R7 2 1
     1259 CALL                             R7 0 1
     1260 SETTABLEKS                       R7 R4 K361 ["FIntMinimumAssistantRobuxBalance"]
     1262 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1264 LOADK                            R8 K362 ["PlaytestLookBudget"]
     1265 LOADN                            R9 7
     1266 CALL                             R7 2 1
     1267 CALL                             R7 0 1
     1268 SETTABLEKS                       R7 R4 K363 ["FIntPlaytestLookBudget"]
     1270 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1272 LOADK                            R8 K364 ["PlaytestLookTimeoutMs"]
     1273 LOADK                            R9 K325 [60000]
     1274 CALL                             R7 2 1
     1275 CALL                             R7 0 1
     1276 SETTABLEKS                       R7 R4 K365 ["FIntPlaytestLookTimeoutMs"]
     1278 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1280 LOADK                            R8 K366 ["PlaytestMaxToolCalls"]
     1281 LOADN                            R9 50
     1282 CALL                             R7 2 1
     1283 CALL                             R7 0 1
     1284 SETTABLEKS                       R7 R4 K367 ["FIntPlaytestMaxToolCalls"]
     1286 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1288 LOADK                            R8 K368 ["PrimGenLongRunThresholdSec"]
     1289 LOADN                            R9 120
     1290 CALL                             R7 2 1
     1291 CALL                             R7 0 1
     1292 SETTABLEKS                       R7 R4 K369 ["FIntPrimGenLongRunThresholdSec"]
     1294 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1296 LOADK                            R8 K370 ["PrimGenTextMaxLength"]
     1297 LOADN                            R9 80
     1298 CALL                             R7 2 1
     1299 CALL                             R7 0 1
     1300 SETTABLEKS                       R7 R4 K371 ["FIntPrimGenTextMaxLength"]
     1302 GETTABLEKS                       R7 R3 K296 ["createGetFInt"]
     1304 LOADK                            R8 K372 ["UnitTestSubagentMaxToolCalls"]
     1305 LOADN                            R9 100
     1306 CALL                             R7 2 1
     1307 CALL                             R7 0 1
     1308 SETTABLEKS                       R7 R4 K373 ["FIntUnitTestSubagentMaxToolCalls"]
     1310 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1312 LOADK                            R8 K375 ["AssistantDebugCreditMeteringBlockReason"]
     1313 LOADK                            R9 K376 [""]
     1314 CALL                             R7 2 1
     1315 CALL                             R7 0 1
     1316 SETTABLEKS                       R7 R4 K377 ["FStringAssistantDebugCreditMeteringBlockReason"]
     1318 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1320 LOADK                            R8 K378 ["AssistantDisabledSubagents"]
     1321 LOADK                            R9 K376 [""]
     1322 CALL                             R7 2 1
     1323 CALL                             R7 0 1
     1324 SETTABLEKS                       R7 R4 K379 ["FStringAssistantDisabledSubagents"]
     1326 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1328 LOADK                            R8 K380 ["AssistantGen3dDefaultModel"]
     1329 LOADK                            R9 K381 ["Assistant/glm51-h200"]
     1330 CALL                             R7 2 1
     1331 CALL                             R7 0 1
     1332 SETTABLEKS                       R7 R4 K382 ["FStringAssistantGen3dDefaultModel"]
     1334 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1336 LOADK                            R8 K383 ["AssistantImageGenHostOverride"]
     1337 LOADK                            R9 K376 [""]
     1338 CALL                             R7 2 1
     1339 CALL                             R7 0 1
     1340 SETTABLEKS                       R7 R4 K384 ["FStringAssistantImageGenHostOverride"]
     1342 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1344 LOADK                            R8 K385 ["AssistantJobRunTools"]
     1345 LOADK                            R9 K386 ["generate_procedural_model,generate_mesh,generate_material"]
     1346 CALL                             R7 2 1
     1347 CALL                             R7 0 1
     1348 SETTABLEKS                       R7 R4 K387 ["FStringAssistantJobRunTools"]
     1350 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1352 LOADK                            R8 K388 ["AssistantMeshGenImageGenModelOverride"]
     1353 LOADK                            R9 K389 ["gemini"]
     1354 CALL                             R7 2 1
     1355 CALL                             R7 0 1
     1356 SETTABLEKS                       R7 R4 K390 ["FStringAssistantMeshGenImageGenModelOverride"]
     1358 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1360 LOADK                            R8 K391 ["AssistantMeshGenImageGenPromptTemplate"]
     1361 LOADK                            R9 K376 [""]
     1362 CALL                             R7 2 1
     1363 CALL                             R7 0 1
     1364 SETTABLEKS                       R7 R4 K392 ["FStringAssistantMeshGenImageGenPromptTemplate"]
     1366 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1368 LOADK                            R8 K393 ["AssistantMeshGenInferenceServiceOverride"]
     1369 LOADK                            R9 K394 ["stage-diff-mesh-gen"]
     1370 CALL                             R7 2 1
     1371 CALL                             R7 0 1
     1372 SETTABLEKS                       R7 R4 K395 ["FStringAssistantMeshGenInferenceServiceOverride"]
     1374 GETIMPORT                        R7 K5 [require]
     1376 GETTABLEKS                       R8 R0 K396 ["FlagUtils"]
     1378 GETTABLEKS                       R8 R8 K397 ["createGetFStringAssistantMeshGenSchemaData"]
     1380 CALL                             R7 1 1
     1381 CALL                             R7 0 1
     1382 SETTABLEKS                       R7 R4 K398 ["FStringAssistantMeshGenSchemaData"]
     1384 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1386 LOADK                            R8 K399 ["AssistantModerateErrorMsg"]
     1387 LOADK                            R9 K400 ["prompt violates Roblox safety policy"]
     1388 CALL                             R7 2 1
     1389 CALL                             R7 0 1
     1390 SETTABLEKS                       R7 R4 K401 ["FStringAssistantModerateErrorMsg"]
     1392 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1394 LOADK                            R8 K402 ["AssistantSkillsAllowlist"]
     1395 LOADK                            R9 K403 ["docs-search: true, scene-analysis: true, device-simulator: true, perf-profiling: true, create-skill: true, unit-test: true, convert-to-streaming: false"]
     1396 CALL                             R7 2 1
     1397 CALL                             R7 0 1
     1398 SETTABLEKS                       R7 R4 K404 ["FStringAssistantSkillsAllowlist"]
     1400 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1402 LOADK                            R8 K405 ["AssistantTestLLMReasoningEffort"]
     1403 LOADK                            R9 K406 ["high"]
     1404 CALL                             R7 2 1
     1405 CALL                             R7 0 1
     1406 SETTABLEKS                       R7 R4 K407 ["FStringAssistantTestLLMReasoningEffort"]
     1408 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1410 LOADK                            R8 K408 ["AssistantToolsExcludedDirectories"]
     1411 LOADK                            R9 K409 ["CoreGui,PlayerGui,LoadedCode"]
     1412 CALL                             R7 2 1
     1413 CALL                             R7 0 1
     1414 SETTABLEKS                       R7 R4 K410 ["FStringAssistantToolsExcludedDirectories"]
     1416 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1418 LOADK                            R8 K411 ["AssistantToolWidgetMappings"]
     1419 LOADK                            R9 K376 [""]
     1420 CALL                             R7 2 1
     1421 CALL                             R7 0 1
     1422 SETTABLEKS                       R7 R4 K412 ["FStringAssistantToolWidgetMappings"]
     1424 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1426 LOADK                            R8 K413 ["AssistantUnitTestSubagentModel"]
     1427 LOADK                            R9 K414 ["Assistant/glm5"]
     1428 CALL                             R7 2 1
     1429 CALL                             R7 0 1
     1430 SETTABLEKS                       R7 R4 K415 ["FStringAssistantUnitTestSubagentModel"]
     1432 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1434 LOADK                            R8 K416 ["AssistantUntitledChatPlaceholderText"]
     1435 LOADK                            R9 K417 ["Untitled Chat"]
     1436 CALL                             R7 2 1
     1437 CALL                             R7 0 1
     1438 SETTABLEKS                       R7 R4 K418 ["FStringAssistantUntitledChatPlaceholder"]
     1440 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1442 LOADK                            R8 K419 ["MCPAssistantAnthropicModels"]
     1443 LOADK                            R9 K420 ["claude-sonnet-4-6,claude-opus-4-6,claude-sonnet-4-5,claude-haiku-4-5"]
     1444 CALL                             R7 2 1
     1445 CALL                             R7 0 1
     1446 SETTABLEKS                       R7 R4 K421 ["FStringMCPAssistantAnthropicModels"]
     1448 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1450 LOADK                            R8 K422 ["MCPAssistantClaudeAPIKey"]
     1451 LOADK                            R9 K376 [""]
     1452 CALL                             R7 2 1
     1453 CALL                             R7 0 1
     1454 SETTABLEKS                       R7 R4 K423 ["FStringMCPAssistantClaudeAPIKey"]
     1456 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1458 LOADK                            R8 K424 ["MCPAssistantCustomModelName"]
     1459 LOADK                            R9 K376 [""]
     1460 CALL                             R7 2 1
     1461 CALL                             R7 0 1
     1462 SETTABLEKS                       R7 R4 K425 ["FStringMCPAssistantCustomModelName"]
     1464 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1466 LOADK                            R8 K426 ["MCPAssistantGeminiAPIKey"]
     1467 LOADK                            R9 K376 [""]
     1468 CALL                             R7 2 1
     1469 CALL                             R7 0 1
     1470 SETTABLEKS                       R7 R4 K427 ["FStringMCPAssistantGeminiAPIKey"]
     1472 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1474 LOADK                            R8 K428 ["MCPAssistantGeminiModels"]
     1475 LOADK                            R9 K429 ["gemini-3-pro-preview,gemini-3-flash-preview,gemini-2.5-pro"]
     1476 CALL                             R7 2 1
     1477 CALL                             R7 0 1
     1478 SETTABLEKS                       R7 R4 K430 ["FStringMCPAssistantGeminiModels"]
     1480 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1482 LOADK                            R8 K431 ["MCPAssistantOpenAIAPIKey"]
     1483 LOADK                            R9 K376 [""]
     1484 CALL                             R7 2 1
     1485 CALL                             R7 0 1
     1486 SETTABLEKS                       R7 R4 K432 ["FStringMCPAssistantOpenAIAPIKey"]
     1488 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1490 LOADK                            R8 K433 ["MCPAssistantOpenAIModels"]
     1491 LOADK                            R9 K434 ["gpt-5.2,gpt-5,gpt-5-mini,gpt-4.1"]
     1492 CALL                             R7 2 1
     1493 CALL                             R7 0 1
     1494 SETTABLEKS                       R7 R4 K435 ["FStringMCPAssistantOpenAIModels"]
     1496 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1498 LOADK                            R8 K436 ["MCPAssistantOpenAIReasoningEffort"]
     1499 LOADK                            R9 K376 [""]
     1500 CALL                             R7 2 1
     1501 CALL                             R7 0 1
     1502 SETTABLEKS                       R7 R4 K437 ["FStringMCPAssistantOpenAIReasoningEffort"]
     1504 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1506 LOADK                            R8 K438 ["MCPAssistantPrimitiveGenServerURL"]
     1507 LOADK                            R9 K376 [""]
     1508 CALL                             R7 2 1
     1509 CALL                             R7 0 1
     1510 SETTABLEKS                       R7 R4 K439 ["FStringMCPAssistantPrimitiveGenServerURL"]
     1512 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1514 LOADK                            R8 K440 ["MCPAssistantTestLLMAPIKey"]
     1515 LOADK                            R9 K376 [""]
     1516 CALL                             R7 2 1
     1517 CALL                             R7 0 1
     1518 SETTABLEKS                       R7 R4 K441 ["FStringMCPAssistantTestLLMAPIKey"]
     1520 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1522 LOADK                            R8 K442 ["MCPAssistantURLOverride"]
     1523 LOADK                            R9 K376 [""]
     1524 CALL                             R7 2 1
     1525 CALL                             R7 0 1
     1526 SETTABLEKS                       R7 R4 K443 ["FStringMCPAssistantURLOverride"]
     1528 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1530 LOADK                            R8 K444 ["MCPDocsUrl"]
     1531 LOADK                            R9 K445 ["https://create.roblox.com/docs/studio/mcp/"]
     1532 CALL                             R7 2 1
     1533 CALL                             R7 0 1
     1534 SETTABLEKS                       R7 R4 K446 ["FStringMCPDocsUrl"]
     1536 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1538 LOADK                            R8 K447 ["PlaytestConversationURL"]
     1539 LOADK                            R9 K448 ["https://apis.roblox.com/studio-npc-playtest/v1/conversation"]
     1540 CALL                             R7 2 1
     1541 CALL                             R7 0 1
     1542 SETTABLEKS                       R7 R4 K449 ["FStringPlaytestConversationURL"]
     1544 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1546 LOADK                            R8 K450 ["PlaytestModelName"]
     1547 LOADK                            R9 K451 ["Qwen/Qwen35-35B-A3B"]
     1548 CALL                             R7 2 1
     1549 CALL                             R7 0 1
     1550 SETTABLEKS                       R7 R4 K452 ["FStringPlaytestModelName"]
     1552 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1554 LOADK                            R8 K453 ["PrimGenImageGenPromptTemplate"]
     1555 LOADK                            R9 K376 [""]
     1556 CALL                             R7 2 1
     1557 CALL                             R7 0 1
     1558 SETTABLEKS                       R7 R4 K454 ["FStringPrimGenImageGenPromptTemplate"]
     1560 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1562 LOADK                            R8 K455 ["ProceduralScriptCapabilities"]
     1563 LOADK                            R9 K456 ["Basic,CreateInstances,CSG,Logging,Material,RunClientScript,RunServerScript,UI"]
     1564 CALL                             R7 2 1
     1565 CALL                             R7 0 1
     1566 SETTABLEKS                       R7 R4 K457 ["FStringProceduralScriptCapabilities"]
     1568 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1570 LOADK                            R8 K458 ["ScreenCaptureFormat"]
     1571 LOADK                            R9 K376 [""]
     1572 CALL                             R7 2 1
     1573 CALL                             R7 0 1
     1574 SETTABLEKS                       R7 R4 K459 ["FStringScreenCaptureFormat"]
     1576 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1578 LOADK                            R8 K460 ["ScreenCaptureSize"]
     1579 LOADK                            R9 K376 [""]
     1580 CALL                             R7 2 1
     1581 CALL                             R7 0 1
     1582 SETTABLEKS                       R7 R4 K461 ["FStringScreenCaptureSize"]
     1584 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1586 LOADK                            R8 K462 ["ScreenCaptureSubagentModelName"]
     1587 LOADK                            R9 K376 [""]
     1588 CALL                             R7 2 1
     1589 CALL                             R7 0 1
     1590 SETTABLEKS                       R7 R4 K463 ["FStringScreenCaptureSubagentModelName"]
     1592 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1594 LOADK                            R8 K464 ["SegmentByPartsBetaFeatureUrl"]
     1595 LOADK                            R9 K376 [""]
     1596 CALL                             R7 2 1
     1597 CALL                             R7 0 1
     1598 SETTABLEKS                       R7 R4 K465 ["FStringSegmentByPartsBetaFeatureUrl"]
     1600 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1602 LOADK                            R8 K466 ["StudioScopeRiskLevelsDocsUrl"]
     1603 LOADK                            R9 K467 ["https://create.roblox.com/docs/cloud/reference/risk-levels"]
     1604 CALL                             R7 2 1
     1605 CALL                             R7 0 1
     1606 SETTABLEKS                       R7 R4 K468 ["FStringStudioScopeRiskLevelsDocsUrl"]
     1608 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1610 LOADK                            R8 K469 ["SubagentExploreModelName"]
     1611 LOADK                            R9 K470 ["Assistant/glm5-b200-server-1"]
     1612 CALL                             R7 2 1
     1613 CALL                             R7 0 1
     1614 SETTABLEKS                       R7 R4 K471 ["FStringSubagentExploreModelName"]
     1616 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1618 LOADK                            R8 K472 ["SubagentURLOverride"]
     1619 LOADK                            R9 K376 [""]
     1620 CALL                             R7 2 1
     1621 CALL                             R7 0 1
     1622 SETTABLEKS                       R7 R4 K473 ["FStringSubagentURLOverride"]
     1624 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1626 LOADK                            R8 K474 ["TestLLMURLOverride"]
     1627 LOADK                            R9 K376 [""]
     1628 CALL                             R7 2 1
     1629 CALL                             R7 0 1
     1630 SETTABLEKS                       R7 R4 K475 ["FStringTestLLMURLOverride"]
     1632 GETTABLEKS                       R7 R3 K374 ["createGetFString"]
     1634 LOADK                            R8 K476 ["TestSubagentURLOverride"]
     1635 LOADK                            R9 K376 [""]
     1636 CALL                             R7 2 1
     1637 CALL                             R7 0 1
     1638 SETTABLEKS                       R7 R4 K477 ["FStringTestSubagentURLOverride"]
     1640 DUPTABLE                         R9 K479 [{"__index", "__newindex"}]
     1641 SETTABLEKS                       R2 R9 K478 ["__index"]
     1643 SETTABLEKS                       R2 R9 K11 ["__newindex"]
     1645 FASTCALL2                        SETMETATABLE R4 R9 ; [+4]
     1647 MOVE                             R8 R4
     1648 GETIMPORT                        R7 K15 [setmetatable]
     1650 CALL                             R7 2 1
     1651 RETURN                           R7 1
