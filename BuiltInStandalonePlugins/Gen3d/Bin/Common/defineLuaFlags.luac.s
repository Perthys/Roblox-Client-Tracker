PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableTextureGenStudio"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenStudioMultiSelect"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenStudioReplaceInPlace"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenModelSelector"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenReferenceImage"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenImageGenPromptTemplateEnabled"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenTexturePromptTemplateEnabled"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_7:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenRevertAfterInsert"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenDebugLog"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_9:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dSeedImageViewportAlignedCapture"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_10:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dSeedImageCaptureRespectsTransform"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_11:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dSkipFoundationPanelPrewarm"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_12:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AssistantTextureGenImageGenModelOverride"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_13:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CubeGenerationGatewayApiKey"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_14:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CubeGenerationGatewayBaseUrlOverride"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_15:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenImageGenPromptTemplate"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_16:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenTexturePromptTemplate"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["EnableTextureGenStudio"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["TextureGenStudioMultiSelect"]
       11 LOADB                            R3 0
       12 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K5 ["TextureGenStudioReplaceInPlace"]
       18 LOADB                            R3 0
       19 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       21 CALL                             R0 3 0
       22 GETIMPORT                        R0 K1 [game]
       24 LOADK                            R2 K6 ["TextureGenModelSelector"]
       25 LOADB                            R3 0
       26 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       28 CALL                             R0 3 0
       29 GETIMPORT                        R0 K1 [game]
       31 LOADK                            R2 K7 ["TextureGenReferenceImage"]
       32 LOADB                            R3 0
       33 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       35 CALL                             R0 3 0
       36 GETIMPORT                        R0 K1 [game]
       38 LOADK                            R2 K8 ["TextureGenImageGenPromptTemplateEnabled"]
       39 LOADB                            R3 0
       40 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       42 CALL                             R0 3 0
       43 GETIMPORT                        R0 K1 [game]
       45 LOADK                            R2 K9 ["TextureGenTexturePromptTemplateEnabled"]
       46 LOADB                            R3 0
       47 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       49 CALL                             R0 3 0
       50 GETIMPORT                        R0 K1 [game]
       52 LOADK                            R2 K10 ["TextureGenRevertAfterInsert"]
       53 LOADB                            R3 0
       54 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       56 CALL                             R0 3 0
       57 GETIMPORT                        R0 K1 [game]
       59 LOADK                            R2 K11 ["TextureGenDebugLog"]
       60 LOADB                            R3 0
       61 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       63 CALL                             R0 3 0
       64 GETIMPORT                        R0 K1 [game]
       66 LOADK                            R2 K12 ["Gen3dSeedImageViewportAlignedCapture"]
       67 LOADB                            R3 0
       68 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       70 CALL                             R0 3 0
       71 GETIMPORT                        R0 K1 [game]
       73 LOADK                            R2 K13 ["Gen3dSeedImageCaptureRespectsTransform"]
       74 LOADB                            R3 0
       75 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       77 CALL                             R0 3 0
       78 GETIMPORT                        R0 K1 [game]
       80 LOADK                            R2 K14 ["Gen3dSkipFoundationPanelPrewarm"]
       81 LOADB                            R3 0
       82 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       84 CALL                             R0 3 0
       85 GETIMPORT                        R0 K1 [game]
       87 LOADK                            R2 K15 ["AssistantTextureGenImageGenModelOverride"]
       88 LOADK                            R3 K16 ["gemini"]
       89 NAMECALL                         R0 R0 K17 ["DefineFastString"]
       91 CALL                             R0 3 0
       92 GETIMPORT                        R0 K1 [game]
       94 LOADK                            R2 K18 ["CubeGenerationGatewayApiKey"]
       95 LOADK                            R3 K19 [""]
       96 NAMECALL                         R0 R0 K17 ["DefineFastString"]
       98 CALL                             R0 3 0
       99 GETIMPORT                        R0 K1 [game]
      101 LOADK                            R2 K20 ["CubeGenerationGatewayBaseUrlOverride"]
      102 LOADK                            R3 K19 [""]
      103 NAMECALL                         R0 R0 K17 ["DefineFastString"]
      105 CALL                             R0 3 0
      106 GETIMPORT                        R0 K1 [game]
      108 LOADK                            R2 K21 ["TextureGenImageGenPromptTemplate"]
      109 LOADK                            R3 K19 [""]
      110 NAMECALL                         R0 R0 K17 ["DefineFastString"]
      112 CALL                             R0 3 0
      113 GETIMPORT                        R0 K1 [game]
      115 LOADK                            R2 K22 ["TextureGenTexturePromptTemplate"]
      116 LOADK                            R3 K19 [""]
      117 NAMECALL                         R0 R0 K17 ["DefineFastString"]
      119 CALL                             R0 3 0
      120 DUPTABLE                         R0 K40 [{"getFFlagEnableTextureGenStudio", "getFFlagTextureGenStudioMultiSelect", "getFFlagTextureGenStudioReplaceInPlace", "getFFlagTextureGenModelSelector", "getFFlagTextureGenReferenceImage", "getFFlagTextureGenImageGenPromptTemplateEnabled", "getFFlagTextureGenTexturePromptTemplateEnabled", "getFFlagTextureGenRevertAfterInsert", "getFFlagTextureGenDebugLog", "getFFlagGen3dSeedImageViewportAlignedCapture", "getFFlagGen3dSeedImageCaptureRespectsTransform", "getFFlagGen3dSkipFoundationPanelPrewarm", "getFStringAssistantTextureGenImageGenModelOverride", "getFStringCubeGenerationGatewayApiKey", "getFStringCubeGenerationGatewayBaseUrlOverride", "getFStringTextureGenImageGenPromptTemplate", "getFStringTextureGenTexturePromptTemplate"}]
      121 DUPCLOSURE                       R1 K41 [PROTO_0]
      122 SETTABLEKS                       R1 R0 K23 ["getFFlagEnableTextureGenStudio"]
      124 DUPCLOSURE                       R1 K42 [PROTO_1]
      125 SETTABLEKS                       R1 R0 K24 ["getFFlagTextureGenStudioMultiSelect"]
      127 DUPCLOSURE                       R1 K43 [PROTO_2]
      128 SETTABLEKS                       R1 R0 K25 ["getFFlagTextureGenStudioReplaceInPlace"]
      130 DUPCLOSURE                       R1 K44 [PROTO_3]
      131 SETTABLEKS                       R1 R0 K26 ["getFFlagTextureGenModelSelector"]
      133 DUPCLOSURE                       R1 K45 [PROTO_4]
      134 SETTABLEKS                       R1 R0 K27 ["getFFlagTextureGenReferenceImage"]
      136 DUPCLOSURE                       R1 K46 [PROTO_5]
      137 SETTABLEKS                       R1 R0 K28 ["getFFlagTextureGenImageGenPromptTemplateEnabled"]
      139 DUPCLOSURE                       R1 K47 [PROTO_6]
      140 SETTABLEKS                       R1 R0 K29 ["getFFlagTextureGenTexturePromptTemplateEnabled"]
      142 DUPCLOSURE                       R1 K48 [PROTO_7]
      143 SETTABLEKS                       R1 R0 K30 ["getFFlagTextureGenRevertAfterInsert"]
      145 DUPCLOSURE                       R1 K49 [PROTO_8]
      146 SETTABLEKS                       R1 R0 K31 ["getFFlagTextureGenDebugLog"]
      148 DUPCLOSURE                       R1 K50 [PROTO_9]
      149 SETTABLEKS                       R1 R0 K32 ["getFFlagGen3dSeedImageViewportAlignedCapture"]
      151 DUPCLOSURE                       R1 K51 [PROTO_10]
      152 SETTABLEKS                       R1 R0 K33 ["getFFlagGen3dSeedImageCaptureRespectsTransform"]
      154 DUPCLOSURE                       R1 K52 [PROTO_11]
      155 SETTABLEKS                       R1 R0 K34 ["getFFlagGen3dSkipFoundationPanelPrewarm"]
      157 DUPCLOSURE                       R1 K53 [PROTO_12]
      158 SETTABLEKS                       R1 R0 K35 ["getFStringAssistantTextureGenImageGenModelOverride"]
      160 DUPCLOSURE                       R1 K54 [PROTO_13]
      161 SETTABLEKS                       R1 R0 K36 ["getFStringCubeGenerationGatewayApiKey"]
      163 DUPCLOSURE                       R1 K55 [PROTO_14]
      164 SETTABLEKS                       R1 R0 K37 ["getFStringCubeGenerationGatewayBaseUrlOverride"]
      166 DUPCLOSURE                       R1 K56 [PROTO_15]
      167 SETTABLEKS                       R1 R0 K38 ["getFStringTextureGenImageGenPromptTemplate"]
      169 DUPCLOSURE                       R1 K57 [PROTO_16]
      170 SETTABLEKS                       R1 R0 K39 ["getFStringTextureGenTexturePromptTemplate"]
      172 RETURN                           R0 1
