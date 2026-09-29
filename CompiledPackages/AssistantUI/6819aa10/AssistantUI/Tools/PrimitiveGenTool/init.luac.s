PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["getImage"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLE                         R1 R2 R3
        3 JUMPIFEQKB                       R1 TRUE ; [+2]
        5 LOADB                            R0 0 +1
        6 LOADB                            R0 1
        7 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["get"]
        7 GETUPVAL                         R1 3
        8 GETTABLEKS                       R1 R1 K1 ["Scope"]
       10 GETUPVAL                         R2 1
       11 CALL                             R0 2 1
       12 JUMPIFNOT                        R0 ; [+3]
       13 NAMECALL                         R1 R0 K2 ["Destroy"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Field"]
        4 GETTABLEKS                       R3 R3 K1 ["Stage"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Set"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pollForScriptAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["toolUseId"]
        2 GETTABLEKS                       R4 R1 K2 ["prompt"]
        4 ORK                              R3 R4 K1 [""]
        5 GETUPVAL                         R4 0
        6 LOADNIL                          R5
        7 SETTABLE                         R5 R4 R2
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R2
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K3 ["getOrCreate"]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K4 ["Scope"]
       17 MOVE                             R7 R2
       18 CALL                             R5 2 1
       19 GETUPVAL                         R8 2
       20 GETTABLEKS                       R8 R8 K5 ["Field"]
       22 GETTABLEKS                       R8 R8 K6 ["Stage"]
       24 GETUPVAL                         R9 3
       25 GETTABLEKS                       R9 R9 K7 ["Submitting"]
       27 NAMECALL                         R6 R5 K8 ["Set"]
       29 CALL                             R6 3 0
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          VAL R2
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U2
       35 GETUPVAL                         R7 4
       36 GETTABLEKS                       R7 R7 K9 ["submitGenerationJob"]
       38 MOVE                             R8 R3
       39 GETTABLEKS                       R9 R1 K10 ["imageContent"]
       41 GETTABLEKS                       R10 R1 K11 ["partNames"]
       43 CALL                             R7 3 1
       44 GETTABLEKS                       R8 R7 K12 ["generationId"]
       46 JUMPIFNOTEQKS                    R8 K1 [""] ; [+31]
       48 GETUPVAL                         R8 0
       49 LOADNIL                          R9
       50 SETTABLE                         R9 R8 R2
       51 GETUPVAL                         R8 1
       52 GETTABLEKS                       R8 R8 K13 ["get"]
       54 GETUPVAL                         R9 2
       55 GETTABLEKS                       R9 R9 K4 ["Scope"]
       57 MOVE                             R10 R2
       58 CALL                             R8 2 1
       59 JUMPIFNOT                        R8 ; [+3]
       60 NAMECALL                         R9 R8 K14 ["Destroy"]
       62 CALL                             R9 1 0
       63 DUPTABLE                         R8 K19 [{["success"] = False, ["errorType"], ["errorMessage"]}]
       64 GETTABLEKS                       R9 R7 K17 ["errorType"]
       66 JUMPIF                           R9 ; [+3]
       67 GETUPVAL                         R9 5
       68 GETTABLEKS                       R9 R9 K20 ["General"]
       70 SETTABLEKS                       R9 R8 K17 ["errorType"]
       72 GETTABLEKS                       R10 R7 K18 ["errorMessage"]
       74 ORK                              R9 R10 K21 ["Unknown error"]
       75 SETTABLEKS                       R9 R8 K18 ["errorMessage"]
       77 RETURN                           R8 1
       78 GETTABLEKS                       R8 R7 K12 ["generationId"]
       80 GETIMPORT                        R9 K23 [pcall]
       82 NEWCLOSURE                       R10 P2
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R5
       87 CAPTURE                          UPVAL U2
       88 CALL                             R9 1 2
       89 JUMPIF                           R9 ; [+39]
       90 GETUPVAL                         R11 0
       91 LOADNIL                          R12
       92 SETTABLE                         R12 R11 R2
       93 GETUPVAL                         R11 1
       94 GETTABLEKS                       R11 R11 K13 ["get"]
       96 GETUPVAL                         R12 2
       97 GETTABLEKS                       R12 R12 K4 ["Scope"]
       99 MOVE                             R13 R2
      100 CALL                             R11 2 1
      101 JUMPIFNOT                        R11 ; [+3]
      102 NAMECALL                         R12 R11 K14 ["Destroy"]
      104 CALL                             R12 1 0
      105 DUPTABLE                         R11 K24 [{["success"] = False, ["generationId"], ["errorType"], ["errorMessage"]}]
      106 SETTABLEKS                       R8 R11 K12 ["generationId"]
      108 GETUPVAL                         R13 6
      109 GETTABLEKS                       R13 R13 K25 ["FFlagPrimGenBetterErrorType"]
      111 JUMPIFNOT                        R13 ; [+4]
      112 GETUPVAL                         R12 5
      113 GETTABLEKS                       R12 R12 K26 ["PollFailed"]
      115 JUMP                             ; [+3]
      116 GETUPVAL                         R12 5
      117 GETTABLEKS                       R12 R12 K20 ["General"]
      119 SETTABLEKS                       R12 R11 K17 ["errorType"]
      121 FASTCALL1                        TOSTRING R10 ; [+3]
      122 MOVE                             R13 R10
      123 GETIMPORT                        R12 K28 [tostring]
      125 CALL                             R12 1 1
      126 SETTABLEKS                       R12 R11 K18 ["errorMessage"]
      128 RETURN                           R11 1
      129 GETTABLEKS                       R11 R10 K29 ["status"]
      131 GETUPVAL                         R12 7
      132 GETTABLEKS                       R12 R12 K30 ["Cancelled"]
      134 JUMPIFNOTEQ                      R11 R12 ; [+20]
      136 GETUPVAL                         R11 0
      137 LOADNIL                          R12
      138 SETTABLE                         R12 R11 R2
      139 GETUPVAL                         R11 1
      140 GETTABLEKS                       R11 R11 K13 ["get"]
      142 GETUPVAL                         R12 2
      143 GETTABLEKS                       R12 R12 K4 ["Scope"]
      145 MOVE                             R13 R2
      146 CALL                             R11 2 1
      147 JUMPIFNOT                        R11 ; [+3]
      148 NAMECALL                         R12 R11 K14 ["Destroy"]
      150 CALL                             R12 1 0
      151 DUPTABLE                         R11 K33 [{["success"] = False, ["cancelled"] = True, ["generationId"]}]
      152 SETTABLEKS                       R8 R11 K12 ["generationId"]
      154 RETURN                           R11 1
      155 GETTABLEKS                       R11 R10 K29 ["status"]
      157 GETUPVAL                         R12 7
      158 GETTABLEKS                       R12 R12 K34 ["Failed"]
      160 JUMPIFNOTEQ                      R11 R12 ; [+36]
      162 GETUPVAL                         R11 0
      163 LOADNIL                          R12
      164 SETTABLE                         R12 R11 R2
      165 GETUPVAL                         R11 1
      166 GETTABLEKS                       R11 R11 K13 ["get"]
      168 GETUPVAL                         R12 2
      169 GETTABLEKS                       R12 R12 K4 ["Scope"]
      171 MOVE                             R13 R2
      172 CALL                             R11 2 1
      173 JUMPIFNOT                        R11 ; [+3]
      174 NAMECALL                         R12 R11 K14 ["Destroy"]
      176 CALL                             R12 1 0
      177 DUPTABLE                         R11 K24 [{["success"] = False, ["generationId"], ["errorType"], ["errorMessage"]}]
      178 SETTABLEKS                       R8 R11 K12 ["generationId"]
      180 GETUPVAL                         R13 6
      181 GETTABLEKS                       R13 R13 K25 ["FFlagPrimGenBetterErrorType"]
      183 JUMPIFNOT                        R13 ; [+3]
      184 GETTABLEKS                       R12 R10 K17 ["errorType"]
      186 JUMP                             ; [+3]
      187 GETUPVAL                         R12 5
      188 GETTABLEKS                       R12 R12 K20 ["General"]
      190 SETTABLEKS                       R12 R11 K17 ["errorType"]
      192 GETTABLEKS                       R12 R10 K35 ["errorText"]
      194 SETTABLEKS                       R12 R11 K18 ["errorMessage"]
      196 RETURN                           R11 1
      197 GETUPVAL                         R13 2
      198 GETTABLEKS                       R13 R13 K5 ["Field"]
      200 GETTABLEKS                       R13 R13 K6 ["Stage"]
      202 GETUPVAL                         R14 3
      203 GETTABLEKS                       R14 R14 K36 ["Inserting"]
      205 NAMECALL                         R11 R5 K8 ["Set"]
      207 CALL                             R11 3 0
      208 GETUPVAL                         R11 8
      209 GETTABLEKS                       R11 R11 K37 ["addWorkspaceModel"]
      211 DUPTABLE                         R12 K40 [{"code", "generationId", "dependencies"}]
      212 GETTABLEKS                       R13 R10 K41 ["luauCode"]
      214 SETTABLEKS                       R13 R12 K38 ["code"]
      216 SETTABLEKS                       R8 R12 K12 ["generationId"]
      218 GETTABLEKS                       R13 R10 K42 ["resolvedDependencies"]
      220 SETTABLEKS                       R13 R12 K39 ["dependencies"]
      222 CALL                             R11 1 1
      223 GETTABLEKS                       R12 R11 K15 ["success"]
      225 JUMPIF                           R12 ; [+44]
      226 GETUPVAL                         R12 9
      227 MOVE                             R13 R11
      228 CALL                             R12 1 1
      229 LOADK                            R13 K43 ["Execute generated code failed with error: %*, generationId=%*"]
      230 GETTABLEKS                       R15 R11 K44 ["error"]
      232 MOVE                             R16 R8
      233 NAMECALL                         R13 R13 K45 ["format"]
      235 CALL                             R13 3 1
      236 GETUPVAL                         R14 5
      237 GETTABLEKS                       R14 R14 K46 ["DmIsUnreachable"]
      239 JUMPIFNOTEQ                      R12 R14 ; [+7]
      241 GETUPVAL                         R14 10
      242 GETTABLEKS                       R15 R11 K44 ["error"]
      244 MOVE                             R16 R13
      245 CALL                             R14 2 1
      246 MOVE                             R13 R14
      247 GETUPVAL                         R14 0
      248 LOADNIL                          R15
      249 SETTABLE                         R15 R14 R2
      250 GETUPVAL                         R14 1
      251 GETTABLEKS                       R14 R14 K13 ["get"]
      253 GETUPVAL                         R15 2
      254 GETTABLEKS                       R15 R15 K4 ["Scope"]
      256 MOVE                             R16 R2
      257 CALL                             R14 2 1
      258 JUMPIFNOT                        R14 ; [+3]
      259 NAMECALL                         R15 R14 K14 ["Destroy"]
      261 CALL                             R15 1 0
      262 DUPTABLE                         R14 K24 [{["success"] = False, ["generationId"], ["errorType"], ["errorMessage"]}]
      263 SETTABLEKS                       R8 R14 K12 ["generationId"]
      265 SETTABLEKS                       R12 R14 K17 ["errorType"]
      267 SETTABLEKS                       R13 R14 K18 ["errorMessage"]
      269 RETURN                           R14 1
      270 GETTABLEKS                       R13 R11 K48 ["resultName"]
      272 ORK                              R12 R13 K47 ["ProceduralObject"]
      273 GETTABLEKS                       R13 R11 K49 ["tag"]
      275 JUMPIF                           R13 ; [+3]
      276 GETUPVAL                         R13 11
      277 MOVE                             R14 R8
      278 CALL                             R13 1 1
      279 GETUPVAL                         R14 4
      280 GETTABLEKS                       R14 R14 K50 ["streamPreviewImagesFromS3"]
      282 MOVE                             R15 R5
      283 GETTABLEKS                       R16 R10 K51 ["scriptPreviewS3Urls"]
      285 CALL                             R14 2 1
      286 JUMPIFNOT                        R14 ; [+4]
      287 GETUPVAL                         R15 0
      288 LOADNIL                          R16
      289 SETTABLE                         R16 R15 R2
      290 JUMP                             ; [+15]
      291 GETUPVAL                         R15 0
      292 LOADNIL                          R16
      293 SETTABLE                         R16 R15 R2
      294 GETUPVAL                         R15 1
      295 GETTABLEKS                       R15 R15 K13 ["get"]
      297 GETUPVAL                         R16 2
      298 GETTABLEKS                       R16 R16 K4 ["Scope"]
      300 MOVE                             R17 R2
      301 CALL                             R15 2 1
      302 JUMPIFNOT                        R15 ; [+3]
      303 NAMECALL                         R16 R15 K14 ["Destroy"]
      305 CALL                             R16 1 0
      306 DUPTABLE                         R15 K52 [{["success"] = True, ["generationId"], ["resultName"], ["tag"]}]
      307 SETTABLEKS                       R8 R15 K12 ["generationId"]
      309 SETTABLEKS                       R12 R15 K48 ["resultName"]
      311 SETTABLEKS                       R13 R15 K49 ["tag"]
      313 RETURN                           R15 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["toolUseId"]
        3 LOADB                            R4 1
        4 SETTABLE                         R4 R2 R3
        5 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["join"]
        4 GETUPVAL                         R5 2
        5 DUPTABLE                         R6 K7 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
        6 SETTABLEKS                       R2 R6 K1 ["generationId"]
        8 SETTABLEKS                       R1 R6 K4 ["errorMessage"]
       10 SETTABLEKS                       R0 R6 K5 ["errorCode"]
       12 GETUPVAL                         R7 3
       13 SETTABLEKS                       R7 R6 K6 ["prompt"]
       15 CALL                             R4 2 -1
       16 CALL                             R3 -1 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["join"]
        4 GETUPVAL                         R5 2
        5 DUPTABLE                         R6 K7 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
        6 SETTABLEKS                       R2 R6 K1 ["generationId"]
        8 SETTABLEKS                       R1 R6 K4 ["errorMessage"]
       10 SETTABLEKS                       R0 R6 K5 ["errorCode"]
       12 GETUPVAL                         R7 3
       13 SETTABLEKS                       R7 R6 K6 ["prompt"]
       15 CALL                             R4 2 -1
       16 CALL                             R3 -1 0
       17 GETUPVAL                         R3 4
       18 MOVE                             R4 R0
       19 MOVE                             R5 R1
       20 CALL                             R3 2 -1
       21 RETURN                           R3 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 DUPTABLE                         R2 K1 [{"toolUseId"}]
        3 GETUPVAL                         R3 1
        4 SETTABLEKS                       R3 R2 K0 ["toolUseId"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 DUPTABLE                         R2 K4 [{"toolUseId", "prompt", "imageContent", "partNames"}]
        3 GETUPVAL                         R3 1
        4 SETTABLEKS                       R3 R2 K0 ["toolUseId"]
        6 GETUPVAL                         R3 2
        7 SETTABLEKS                       R3 R2 K1 ["prompt"]
        9 GETUPVAL                         R3 3
       10 SETTABLEKS                       R3 R2 K2 ["imageContent"]
       12 GETUPVAL                         R3 4
       13 SETTABLEKS                       R3 R2 K3 ["partNames"]
       15 CALL                             R0 2 -1
       16 RETURN                           R0 -1

PROTO_14:
        0 GETTABLEKS                       R4 R0 K1 ["prompt"]
        2 ORK                              R3 R4 K0 [""]
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R4 R1 K2 ["toolId"]
        6 JUMPIF                           R4 ; [+5]
        7 GETUPVAL                         R4 0
        8 LOADB                            R6 0
        9 NAMECALL                         R4 R4 K3 ["GenerateGUID"]
       11 CALL                             R4 2 1
       12 LOADNIL                          R5
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K4 ["FFlagAssistantGen3dAutoSegmentation"]
       16 JUMPIFNOT                        R6 ; [+22]
       17 GETTABLEKS                       R6 R0 K5 ["segmentation"]
       19 JUMPIF                           R6 ; [+8]
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R6 R6 K6 ["inferUISegmentation"]
       23 GETTABLEKS                       R7 R0 K7 ["suggestSegmentation"]
       25 GETTABLEKS                       R8 R0 K8 ["partNames"]
       27 CALL                             R6 2 1
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R7 R7 K9 ["resolveSegmentationAsync"]
       31 MOVE                             R8 R6
       32 GETTABLEKS                       R9 R0 K8 ["partNames"]
       34 MOVE                             R10 R3
       35 LOADNIL                          R11
       36 CALL                             R7 4 1
       37 MOVE                             R5 R7
       38 JUMP                             ; [+13]
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R6 R6 K10 ["FFlagPrimGenSchemaSelector"]
       42 JUMPIFNOT                        R6 ; [+8]
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R6 R6 K11 ["parsePartNames"]
       46 GETTABLEKS                       R7 R0 K8 ["partNames"]
       48 CALL                             R6 1 1
       49 MOVE                             R5 R6
       50 JUMP                             ; [+1]
       51 LOADNIL                          R5
       52 GETUPVAL                         R6 1
       53 GETTABLEKS                       R6 R6 K12 ["FFlagAssistantMcpImageGenShortcut"]
       55 JUMPIFNOT                        R6 ; [+56]
       56 GETUPVAL                         R6 1
       57 GETTABLEKS                       R6 R6 K13 ["EngineFeatureAssistantGen3dImagePreview"]
       59 JUMPIFNOT                        R6 ; [+52]
       60 GETTABLEKS                       R6 R0 K14 ["hintImage"]
       62 JUMPIFNOTEQKNIL                  R6 ; [+49]
       64 GETTABLEKS                       R6 R0 K15 ["attachedImageUri"]
       66 JUMPIFNOTEQKNIL                  R6 ; [+45]
       68 LENGTH                           R6 R3
       69 LOADN                            R7 0
       70 JUMPIFNOTLT                      R7 R6 ; [+41]
       72 GETUPVAL                         R7 1
       73 GETTABLEKS                       R7 R7 K16 ["FFlagPrimGenImageGenPromptTemplateEnabled"]
       75 JUMPIFNOT                        R7 ; [+9]
       76 GETUPVAL                         R6 3
       77 GETTABLEKS                       R6 R6 K17 ["apply"]
       79 GETUPVAL                         R7 1
       80 GETTABLEKS                       R7 R7 K18 ["FStringPrimGenImageGenPromptTemplate"]
       82 MOVE                             R8 R3
       83 CALL                             R6 2 1
       84 JUMP                             ; [+1]
       85 MOVE                             R6 R3
       86 GETUPVAL                         R7 4
       87 GETTABLEKS                       R7 R7 K19 ["generateAsync"]
       89 DUPTABLE                         R8 K22 [{"textPrompt", "model"}]
       90 SETTABLEKS                       R6 R8 K20 ["textPrompt"]
       92 GETUPVAL                         R9 1
       93 GETTABLEKS                       R9 R9 K23 ["FStringAssistantMeshGenImageGenModelOverride"]
       95 SETTABLEKS                       R9 R8 K21 ["model"]
       97 CALL                             R7 1 1
       98 GETTABLEKS                       R8 R7 K24 ["imageContent"]
      100 JUMPIFNOT                        R8 ; [+5]
      101 GETTABLEKS                       R8 R7 K24 ["imageContent"]
      103 SETTABLEKS                       R8 R0 K14 ["hintImage"]
      105 JUMP                             ; [+6]
      106 GETIMPORT                        R8 K26 [warn]
      108 LOADK                            R9 K27 ["[PrimitiveGen] Single-image generation failed, continuing text-only:"]
      109 GETTABLEKS                       R10 R7 K28 ["errorMessage"]
      111 CALL                             R8 2 0
      112 GETUPVAL                         R6 1
      113 GETTABLEKS                       R6 R6 K29 ["FFlagAssistantGen3DTelemetryV2"]
      115 LENGTH                           R8 R3
      116 LOADN                            R9 0
      117 JUMPIFLT                         R9 R8 ; [+2]
      119 LOADB                            R7 0 +1
      120 LOADB                            R7 1
      121 LOADB                            R8 1
      122 GETTABLEKS                       R9 R0 K15 ["attachedImageUri"]
      124 JUMPIFNOTEQKNIL                  R9 ; [+7]
      126 GETTABLEKS                       R9 R0 K14 ["hintImage"]
      128 JUMPIFNOTEQKNIL                  R9 ; [+2]
      130 LOADB                            R8 0 +1
      131 LOADB                            R8 1
      132 DUPTABLE                         R9 K37 [{"requestId", "conversationId", "toolId", "prompt", "hasImage", "modelFlow", "inputFormat", "segmentationEnabled", "finalParts"}]
      133 JUMPIFNOT                        R1 ; [+3]
      134 GETTABLEKS                       R10 R1 K38 ["messageGuid"]
      136 JUMPIF                           R10 ; [+1]
      137 LOADK                            R10 K0 [""]
      138 SETTABLEKS                       R10 R9 K30 ["requestId"]
      140 JUMPIFNOT                        R1 ; [+3]
      141 GETTABLEKS                       R10 R1 K39 ["sessionId"]
      143 JUMPIF                           R10 ; [+1]
      144 LOADK                            R10 K0 [""]
      145 SETTABLEKS                       R10 R9 K31 ["conversationId"]
      147 MOVE                             R10 R1
      148 JUMPIFNOT                        R10 ; [+2]
      149 GETTABLEKS                       R10 R1 K2 ["toolId"]
      151 SETTABLEKS                       R10 R9 K2 ["toolId"]
      153 SETTABLEKS                       R3 R9 K1 ["prompt"]
      155 SETTABLEKS                       R8 R9 K32 ["hasImage"]
      157 JUMPIFNOT                        R6 ; [+2]
      158 LOADK                            R10 K40 ["procedural"]
      159 JUMP                             ; [+1]
      160 LOADNIL                          R10
      161 SETTABLEKS                       R10 R9 K33 ["modelFlow"]
      163 JUMPIF                           R6 ; [+2]
      164 LOADNIL                          R10
      165 JUMP                             ; [+8]
      166 JUMPIFNOT                        R7 ; [+3]
      167 JUMPIFNOT                        R8 ; [+2]
      168 LOADK                            R10 K41 ["text+image"]
      169 JUMP                             ; [+4]
      170 JUMPIFNOT                        R8 ; [+2]
      171 LOADK                            R10 K42 ["image"]
      172 JUMP                             ; [+1]
      173 LOADK                            R10 K43 ["text"]
      174 SETTABLEKS                       R10 R9 K34 ["inputFormat"]
      176 JUMPIFNOT                        R6 ; [+10]
      177 LOADB                            R10 0
      178 JUMPIFEQKNIL                     R5 ; [+9]
      180 LENGTH                           R11 R5
      181 LOADN                            R12 0
      182 JUMPIFLT                         R12 R11 ; [+2]
      184 LOADB                            R10 0 +1
      185 LOADB                            R10 1
      186 JUMP                             ; [+1]
      187 LOADNIL                          R10
      188 SETTABLEKS                       R10 R9 K35 ["segmentationEnabled"]
      190 JUMPIFNOT                        R6 ; [+2]
      191 MOVE                             R10 R5
      192 JUMP                             ; [+1]
      193 LOADNIL                          R10
      194 SETTABLEKS                       R10 R9 K36 ["finalParts"]
      196 GETUPVAL                         R10 5
      197 GETTABLEKS                       R10 R10 K44 ["EventLogger"]
      199 GETTABLEKS                       R10 R10 K45 ["logPrimitiveGen"]
      201 NEWCLOSURE                       R11 P0
      202 CAPTURE                          VAL R10
      203 CAPTURE                          UPVAL U6
      204 CAPTURE                          VAL R9
      205 CAPTURE                          VAL R3
      206 NEWCLOSURE                       R12 P1
      207 CAPTURE                          VAL R10
      208 CAPTURE                          UPVAL U6
      209 CAPTURE                          VAL R9
      210 CAPTURE                          VAL R3
      211 CAPTURE                          UPVAL U7
      212 GETUPVAL                         R13 1
      213 GETTABLEKS                       R13 R13 K46 ["FFlagAssistantVersionMismatchWarning"]
      215 JUMPIFNOT                        R13 ; [+28]
      216 GETUPVAL                         R13 1
      217 GETTABLEKS                       R13 R13 K47 ["FFlagPrimGenVersionMismatchError"]
      219 JUMPIFNOT                        R13 ; [+24]
      220 GETUPVAL                         R13 8
      221 GETTABLEKS                       R13 R13 K48 ["getVersionMismatch"]
      223 CALL                             R13 0 1
      224 JUMPIFNOT                        R13 ; [+19]
      225 GETUPVAL                         R13 9
      226 GETTABLEKS                       R13 R13 K49 ["PluginVersionMismatch"]
      228 MOVE                             R14 R10
      229 GETUPVAL                         R15 6
      230 GETTABLEKS                       R15 R15 K50 ["join"]
      232 MOVE                             R16 R9
      233 DUPTABLE                         R17 K57 [{["generationId"] = , ["success"] = False, ["errorMessage"] = "The Assistant plugin just got new patch, please restart RobloxStudio.", ["errorCode"], ["prompt"]}]
      234 SETTABLEKS                       R13 R17 K56 ["errorCode"]
      236 SETTABLEKS                       R3 R17 K1 ["prompt"]
      238 CALL                             R15 2 -1
      239 CALL                             R14 -1 0
      240 GETUPVAL                         R14 7
      241 MOVE                             R15 R13
      242 LOADK                            R16 K55 ["The Assistant plugin just got new patch, please restart RobloxStudio."]
      243 CALL                             R14 2 1
      244 GETUPVAL                         R13 1
      245 GETTABLEKS                       R13 R13 K47 ["FFlagPrimGenVersionMismatchError"]
      247 JUMPIFNOT                        R13 ; [+45]
      248 GETIMPORT                        R13 K59 [pcall]
      250 NEWCLOSURE                       R14 P2
      251 CAPTURE                          UPVAL U10
      252 CALL                             R13 1 2
      253 JUMPIFNOT                        R13 ; [+3]
      254 GETTABLEKS                       R15 R14 K53 ["success"]
      256 JUMPIF                           R15 ; [+36]
      257 JUMPIFNOT                        R13 ; [+4]
      258 GETTABLEKS                       R16 R14 K61 ["error"]
      260 ORK                              R15 R16 K60 ["Unknown error"]
      261 JUMP                             ; [+5]
      262 FASTCALL1                        TOSTRING R14 ; [+3]
      263 MOVE                             R16 R14
      264 GETIMPORT                        R15 K63 [tostring]
      266 CALL                             R15 1 1
      267 GETUPVAL                         R16 9
      268 GETTABLEKS                       R16 R16 K64 ["DmHealthChecking"]
      270 GETUPVAL                         R17 11
      271 MOVE                             R18 R15
      272 CALL                             R17 1 2
      273 MOVE                             R19 R10
      274 GETUPVAL                         R20 6
      275 GETTABLEKS                       R20 R20 K50 ["join"]
      277 MOVE                             R21 R9
      278 DUPTABLE                         R22 K65 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
      279 SETTABLEKS                       R18 R22 K51 ["generationId"]
      281 SETTABLEKS                       R17 R22 K28 ["errorMessage"]
      283 SETTABLEKS                       R16 R22 K56 ["errorCode"]
      285 SETTABLEKS                       R3 R22 K1 ["prompt"]
      287 CALL                             R20 2 -1
      288 CALL                             R19 -1 0
      289 GETUPVAL                         R19 7
      290 MOVE                             R20 R16
      291 MOVE                             R21 R17
      292 CALL                             R19 2 1
      293 GETUPVAL                         R13 1
      294 GETTABLEKS                       R13 R13 K66 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
      296 GETUPVAL                         R14 12
      297 JUMPIFNOTLE                      R13 R14 ; [+45]
      299 GETUPVAL                         R14 9
      300 GETTABLEKS                       R14 R14 K67 ["TooManyConcurrentJobs"]
      302 GETUPVAL                         R15 13
      303 LOADK                            R17 K68 ["PrimitiveGen"]
      304 LOADK                            R18 K69 ["MaxConcurrentJobsError"]
      305 DUPTABLE                         R19 K72 [{"activeCount", "maxConcurrentJobs"}]
      306 GETIMPORT                        R20 K75 [string.format]
      308 LOADK                            R21 K76 ["%d"]
      309 GETUPVAL                         R22 12
      310 CALL                             R20 2 1
      311 SETTABLEKS                       R20 R19 K70 ["activeCount"]
      313 GETIMPORT                        R20 K75 [string.format]
      315 LOADK                            R21 K76 ["%d"]
      316 MOVE                             R22 R13
      317 CALL                             R20 2 1
      318 SETTABLEKS                       R20 R19 K71 ["maxConcurrentJobs"]
      320 NAMECALL                         R15 R15 K77 ["getText"]
      322 CALL                             R15 4 2
      323 MOVE                             R17 R10
      324 GETUPVAL                         R18 6
      325 GETTABLEKS                       R18 R18 K50 ["join"]
      327 MOVE                             R19 R9
      328 DUPTABLE                         R20 K65 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
      329 SETTABLEKS                       R16 R20 K51 ["generationId"]
      331 SETTABLEKS                       R15 R20 K28 ["errorMessage"]
      333 SETTABLEKS                       R14 R20 K56 ["errorCode"]
      335 SETTABLEKS                       R3 R20 K1 ["prompt"]
      337 CALL                             R18 2 -1
      338 CALL                             R17 -1 0
      339 GETUPVAL                         R17 7
      340 MOVE                             R18 R14
      341 MOVE                             R19 R15
      342 CALL                             R17 2 1
      343 GETUPVAL                         R14 14
      344 GETTABLEKS                       R14 R14 K78 ["resolveImage"]
      346 GETTABLEKS                       R15 R0 K14 ["hintImage"]
      348 CALL                             R14 1 1
      349 JUMPIF                           R14 ; [+11]
      350 GETTABLEKS                       R15 R0 K15 ["attachedImageUri"]
      352 JUMPIF                           R15 ; [+2]
      353 LOADNIL                          R14
      354 JUMP                             ; [+6]
      355 GETUPVAL                         R16 14
      356 GETTABLEKS                       R16 R16 K79 ["getImage"]
      358 MOVE                             R17 R15
      359 CALL                             R16 1 1
      360 MOVE                             R14 R16
      361 GETUPVAL                         R15 12
      362 ADDK                             R15 R15 K80 [1]
      363 SETUPVAL                         R15 12
      364 JUMPIFNOT                        R2 ; [+18]
      365 GETTABLEKS                       R15 R2 K81 ["signal"]
      367 JUMPIFNOT                        R15 ; [+15]
      368 GETTABLEKS                       R15 R2 K81 ["signal"]
      370 GETTABLEKS                       R15 R15 K82 ["abortSignal"]
      372 JUMPIFNOT                        R15 ; [+10]
      373 GETTABLEKS                       R15 R2 K81 ["signal"]
      375 GETTABLEKS                       R15 R15 K82 ["abortSignal"]
      377 NEWCLOSURE                       R17 P3
      378 CAPTURE                          UPVAL U15
      379 CAPTURE                          VAL R4
      380 NAMECALL                         R15 R15 K83 ["Once"]
      382 CALL                             R15 2 0
      383 GETIMPORT                        R15 K59 [pcall]
      385 NEWCLOSURE                       R16 P4
      386 CAPTURE                          UPVAL U16
      387 CAPTURE                          VAL R4
      388 CAPTURE                          VAL R3
      389 CAPTURE                          VAL R14
      390 CAPTURE                          REF R5
      391 CALL                             R15 1 2
      392 GETUPVAL                         R17 12
      393 SUBK                             R17 R17 K80 [1]
      394 SETUPVAL                         R17 12
      395 JUMPIF                           R15 ; [+30]
      396 GETUPVAL                         R17 9
      397 GETTABLEKS                       R17 R17 K84 ["General"]
      399 GETUPVAL                         R18 11
      400 FASTCALL1                        TOSTRING R16 ; [+3]
      401 MOVE                             R20 R16
      402 GETIMPORT                        R19 K63 [tostring]
      404 CALL                             R19 1 1
      405 CALL                             R18 1 2
      406 MOVE                             R20 R10
      407 GETUPVAL                         R21 6
      408 GETTABLEKS                       R21 R21 K50 ["join"]
      410 MOVE                             R22 R9
      411 DUPTABLE                         R23 K65 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
      412 SETTABLEKS                       R19 R23 K51 ["generationId"]
      414 SETTABLEKS                       R18 R23 K28 ["errorMessage"]
      416 SETTABLEKS                       R17 R23 K56 ["errorCode"]
      418 SETTABLEKS                       R3 R23 K1 ["prompt"]
      420 CALL                             R21 2 -1
      421 CALL                             R20 -1 0
      422 GETUPVAL                         R20 7
      423 MOVE                             R21 R17
      424 MOVE                             R22 R18
      425 CALL                             R20 2 1
      426 GETTABLEKS                       R17 R16 K51 ["generationId"]
      428 GETTABLEKS                       R18 R16 K85 ["cancelled"]
      430 JUMPIFNOT                        R18 ; [+23]
      431 GETUPVAL                         R18 9
      432 GETTABLEKS                       R18 R18 K86 ["CancelByUser"]
      434 MOVE                             R19 R10
      435 GETUPVAL                         R20 6
      436 GETTABLEKS                       R20 R20 K50 ["join"]
      438 MOVE                             R21 R9
      439 DUPTABLE                         R22 K88 [{["generationId"], ["success"] = False, ["errorMessage"] = "Generation cancelled by user", ["errorCode"], ["prompt"]}]
      440 SETTABLEKS                       R17 R22 K51 ["generationId"]
      442 SETTABLEKS                       R18 R22 K56 ["errorCode"]
      444 SETTABLEKS                       R3 R22 K1 ["prompt"]
      446 CALL                             R20 2 -1
      447 CALL                             R19 -1 0
      448 GETUPVAL                         R18 7
      449 GETUPVAL                         R19 9
      450 GETTABLEKS                       R19 R19 K86 ["CancelByUser"]
      452 LOADK                            R20 K87 ["Generation cancelled by user"]
      453 CALL                             R18 2 0
      454 GETTABLEKS                       R18 R16 K53 ["success"]
      456 JUMPIF                           R18 ; [+29]
      457 GETTABLEKS                       R18 R16 K89 ["errorType"]
      459 JUMPIF                           R18 ; [+3]
      460 GETUPVAL                         R18 9
      461 GETTABLEKS                       R18 R18 K84 ["General"]
      463 GETTABLEKS                       R20 R16 K28 ["errorMessage"]
      465 ORK                              R19 R20 K60 ["Unknown error"]
      466 MOVE                             R20 R10
      467 GETUPVAL                         R21 6
      468 GETTABLEKS                       R21 R21 K50 ["join"]
      470 MOVE                             R22 R9
      471 DUPTABLE                         R23 K65 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
      472 SETTABLEKS                       R17 R23 K51 ["generationId"]
      474 SETTABLEKS                       R19 R23 K28 ["errorMessage"]
      476 SETTABLEKS                       R18 R23 K56 ["errorCode"]
      478 SETTABLEKS                       R3 R23 K1 ["prompt"]
      480 CALL                             R21 2 -1
      481 CALL                             R20 -1 0
      482 GETUPVAL                         R20 7
      483 MOVE                             R21 R18
      484 MOVE                             R22 R19
      485 CALL                             R20 2 1
      486 FASTCALL2K                       ASSERT R17 K90 ; [+5]
      488 MOVE                             R19 R17
      489 LOADK                            R20 K90 ["Successful generation must return a generationId"]
      490 GETIMPORT                        R18 K92 [assert]
      492 CALL                             R18 2 0
      493 GETTABLEKS                       R19 R16 K94 ["resultName"]
      495 ORK                              R18 R19 K93 ["ProceduralObject"]
      496 GETTABLEKS                       R19 R16 K95 ["tag"]
      498 JUMPIF                           R19 ; [+3]
      499 GETUPVAL                         R19 17
      500 MOVE                             R20 R17
      501 CALL                             R19 1 1
      502 MOVE                             R20 R10
      503 GETUPVAL                         R21 6
      504 GETTABLEKS                       R21 R21 K50 ["join"]
      506 MOVE                             R22 R9
      507 DUPTABLE                         R23 K97 [{["generationId"], ["success"] = True}]
      508 SETTABLEKS                       R17 R23 K51 ["generationId"]
      510 CALL                             R21 2 -1
      511 CALL                             R20 -1 0
      512 DUPTABLE                         R20 K99 [{"tag", "generationId", "generationName"}]
      513 SETTABLEKS                       R19 R20 K95 ["tag"]
      515 SETTABLEKS                       R17 R20 K51 ["generationId"]
      517 SETTABLEKS                       R18 R20 K98 ["generationName"]
      519 CLOSEUPVALS                      R5
      520 RETURN                           R20 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["runWithProgressLoop"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["sendProgress"]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 GETUPVAL                         R4 4
        9 GETUPVAL                         R5 1
       10 CALL                             R0 5 -1
       11 RETURN                           R0 -1

PROTO_16:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CALL                             R3 1 2
        9 JUMPIF                           R3 ; [+57]
       10 GETUPVAL                         R5 2
       11 MOVE                             R6 R4
       12 CALL                             R5 1 1
       13 DUPTABLE                         R6 K5 [{"errorType", "cancelled", "errorMessage"}]
       14 JUMPIFNOT                        R5 ; [+3]
       15 GETTABLEKS                       R7 R5 K2 ["errorType"]
       17 JUMP                             ; [+3]
       18 GETUPVAL                         R7 3
       19 GETTABLEKS                       R7 R7 K6 ["General"]
       21 SETTABLEKS                       R7 R6 K2 ["errorType"]
       23 LOADB                            R7 0
       24 JUMPIFEQKNIL                     R5 ; [+3]
       26 GETTABLEKS                       R7 R5 K3 ["cancelled"]
       28 SETTABLEKS                       R7 R6 K3 ["cancelled"]
       30 JUMPIFNOT                        R5 ; [+3]
       31 GETTABLEKS                       R7 R5 K7 ["message"]
       33 JUMP                             ; [+5]
       34 FASTCALL1                        TOSTRING R4 ; [+3]
       35 MOVE                             R8 R4
       36 GETIMPORT                        R7 K9 [tostring]
       38 CALL                             R7 1 1
       39 SETTABLEKS                       R7 R6 K4 ["errorMessage"]
       41 GETUPVAL                         R7 4
       42 CALL                             R7 0 1
       43 JUMPIFNOT                        R5 ; [+3]
       44 GETTABLEKS                       R9 R5 K7 ["message"]
       46 JUMP                             ; [+5]
       47 FASTCALL1                        TOSTRING R4 ; [+3]
       48 MOVE                             R10 R4
       49 GETIMPORT                        R9 K9 [tostring]
       51 CALL                             R9 1 1
       52 NAMECALL                         R7 R7 K10 ["addText"]
       54 CALL                             R7 2 1
       55 MOVE                             R9 R6
       56 NAMECALL                         R7 R7 K11 ["setStructuredContent"]
       58 CALL                             R7 2 1
       59 LOADB                            R9 1
       60 NAMECALL                         R7 R7 K12 ["setError"]
       62 CALL                             R7 2 1
       63 NAMECALL                         R7 R7 K13 ["build"]
       65 CALL                             R7 1 -1
       66 RETURN                           R7 -1
       67 DUPTABLE                         R5 K17 [{"tag", "generationId", "generationName"}]
       68 GETTABLEKS                       R6 R4 K14 ["tag"]
       70 SETTABLEKS                       R6 R5 K14 ["tag"]
       72 GETTABLEKS                       R6 R4 K15 ["generationId"]
       74 SETTABLEKS                       R6 R5 K15 ["generationId"]
       76 GETTABLEKS                       R6 R4 K16 ["generationName"]
       78 SETTABLEKS                       R6 R5 K16 ["generationName"]
       80 GETUPVAL                         R6 4
       81 CALL                             R6 0 1
       82 GETUPVAL                         R8 0
       83 GETTABLEKS                       R8 R8 K18 ["toString"]
       85 MOVE                             R9 R5
       86 CALL                             R8 1 -1
       87 NAMECALL                         R6 R6 K10 ["addText"]
       89 CALL                             R6 -1 1
       90 MOVE                             R8 R5
       91 NAMECALL                         R6 R6 K11 ["setStructuredContent"]
       93 CALL                             R6 2 1
       94 NAMECALL                         R6 R6 K13 ["build"]
       96 CALL                             R6 1 -1
       97 RETURN                           R6 -1

PROTO_17:
        0 DUPTABLE                         R1 K5 [{[1], ["prompt"], ["attachedImageUri"], ["isManualRun"] = True}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K6 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
        4 JUMPIFNOT                        R3 ; [+2]
        5 LOADB                            R2 1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R1 K0 ["async"]
       10 GETUPVAL                         R2 1
       11 SETTABLEKS                       R2 R1 K1 ["prompt"]
       13 GETUPVAL                         R2 2
       14 SETTABLEKS                       R2 R1 K2 ["attachedImageUri"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K6 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
       19 JUMPIF                           R2 ; [+17]
       20 DUPTABLE                         R2 K9 [{"name", "arguments"}]
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R3 R3 K10 ["JobRun"]
       24 SETTABLEKS                       R3 R2 K7 ["name"]
       26 DUPTABLE                         R3 K12 [{"toolName", "arguments"}]
       27 GETUPVAL                         R4 3
       28 GETTABLEKS                       R4 R4 K13 ["PrimitiveGen"]
       30 SETTABLEKS                       R4 R3 K11 ["toolName"]
       32 SETTABLEKS                       R1 R3 K8 ["arguments"]
       34 SETTABLEKS                       R3 R2 K8 ["arguments"]
       36 RETURN                           R2 1
       37 DUPTABLE                         R2 K9 [{"name", "arguments"}]
       38 GETUPVAL                         R3 3
       39 GETTABLEKS                       R3 R3 K13 ["PrimitiveGen"]
       41 SETTABLEKS                       R3 R2 K7 ["name"]
       43 SETTABLEKS                       R1 R2 K8 ["arguments"]
       45 RETURN                           R2 1

PROTO_18:
        0 NEWTABLE                         R1 0 4
        2 DUPTABLE                         R2 K3 [{"name", "inputType", "initialValue"}]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K4 ["Prompt"]
        6 SETTABLEKS                       R3 R2 K0 ["name"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K5 ["String"]
       11 SETTABLEKS                       R3 R2 K1 ["inputType"]
       13 GETUPVAL                         R3 2
       14 SETTABLEKS                       R3 R2 K2 ["initialValue"]
       16 DUPTABLE                         R3 K3 [{"name", "inputType", "initialValue"}]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K6 ["HintImage"]
       20 SETTABLEKS                       R4 R3 K0 ["name"]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K7 ["Image"]
       25 SETTABLEKS                       R4 R3 K1 ["inputType"]
       27 GETUPVAL                         R4 3
       28 SETTABLEKS                       R4 R3 K2 ["initialValue"]
       30 DUPTABLE                         R4 K9 [{[1], ["inputType"], ["initialValue"] = }]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K10 ["PartNames"]
       34 SETTABLEKS                       R5 R4 K0 ["name"]
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K11 ["Array"]
       39 SETTABLEKS                       R5 R4 K1 ["inputType"]
       41 DUPTABLE                         R5 K3 [{"name", "inputType", "initialValue"}]
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R6 R6 K12 ["SuggestSegmentation"]
       45 SETTABLEKS                       R6 R5 K0 ["name"]
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K13 ["Boolean"]
       50 SETTABLEKS                       R6 R5 K1 ["inputType"]
       52 GETUPVAL                         R6 4
       53 SETTABLEKS                       R6 R5 K2 ["initialValue"]
       55 SETLIST                          R1 R2 4 [1]
       57 DUPTABLE                         R2 K17 [{"formId", "fields", "validation"}]
       58 GETUPVAL                         R3 5
       59 GETTABLEKS                       R3 R3 K14 ["formId"]
       61 SETTABLEKS                       R3 R2 K14 ["formId"]
       63 SETTABLEKS                       R1 R2 K15 ["fields"]
       65 GETUPVAL                         R4 6
       66 GETTABLEKS                       R4 R4 K18 ["FFlagAssistantGen3dRequirePromptToGenerate"]
       68 JUMPIFNOT                        R4 ; [+41]
       69 GETUPVAL                         R3 7
       70 DUPTABLE                         R4 K21 [{"kind", "rules"}]
       71 GETUPVAL                         R5 8
       72 GETTABLEKS                       R5 R5 K22 ["Any"]
       74 SETTABLEKS                       R5 R4 K19 ["kind"]
       76 NEWTABLE                         R5 0 2
       78 GETUPVAL                         R6 7
       79 DUPTABLE                         R7 K24 [{"kind", "field"}]
       80 GETUPVAL                         R8 8
       81 GETTABLEKS                       R8 R8 K25 ["NonEmpty"]
       83 SETTABLEKS                       R8 R7 K19 ["kind"]
       85 GETUPVAL                         R8 0
       86 GETTABLEKS                       R8 R8 K4 ["Prompt"]
       88 SETTABLEKS                       R8 R7 K23 ["field"]
       90 CALL                             R6 1 1
       91 GETUPVAL                         R7 7
       92 DUPTABLE                         R8 K24 [{"kind", "field"}]
       93 GETUPVAL                         R9 8
       94 GETTABLEKS                       R9 R9 K25 ["NonEmpty"]
       96 SETTABLEKS                       R9 R8 K19 ["kind"]
       98 GETUPVAL                         R9 0
       99 GETTABLEKS                       R9 R9 K6 ["HintImage"]
      101 SETTABLEKS                       R9 R8 K23 ["field"]
      103 CALL                             R7 1 -1
      104 SETLIST                          R5 R6 -1 [1]
      106 SETTABLEKS                       R5 R4 K20 ["rules"]
      108 CALL                             R3 1 1
      109 JUMP                             ; [+1]
      110 LOADNIL                          R3
      111 SETTABLEKS                       R3 R2 K16 ["validation"]
      113 DUPTABLE                         R3 K27 [{"name", "arguments"}]
      114 GETUPVAL                         R4 9
      115 GETTABLEKS                       R4 R4 K28 ["AskInput"]
      117 SETTABLEKS                       R4 R3 K0 ["name"]
      119 SETTABLEKS                       R2 R3 K26 ["arguments"]
      121 RETURN                           R3 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["readAskInputValues"]
        3 LENGTH                           R3 R0
        4 GETTABLE                         R2 R0 R3
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["SuggestSegmentation"]
        9 GETTABLE                         R2 R1 R3
       10 FASTCALL1                        TYPEOF R2 ; [+3]
       11 MOVE                             R4 R2
       12 GETIMPORT                        R3 K3 [typeof]
       14 CALL                             R3 1 1
       15 JUMPIFNOTEQKS                    R3 K4 ["boolean"] ; [+2]
       17 SETUPVAL                         R2 2
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R3 R3 K5 ["resolveUri"]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K6 ["HintImage"]
       24 GETTABLE                         R4 R1 R5
       25 CALL                             R3 1 1
       26 DUPTABLE                         R4 K14 [{["async"], ["prompt"], ["attachedImageUri"], ["partNames"], ["suggestSegmentation"], ["isManualRun"] = True}]
       27 GETUPVAL                         R6 4
       28 GETTABLEKS                       R6 R6 K15 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
       30 JUMPIFNOT                        R6 ; [+2]
       31 LOADB                            R5 1
       32 JUMP                             ; [+1]
       33 LOADNIL                          R5
       34 SETTABLEKS                       R5 R4 K7 ["async"]
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K16 ["Prompt"]
       39 GETTABLE                         R5 R1 R6
       40 SETTABLEKS                       R5 R4 K8 ["prompt"]
       42 SETTABLEKS                       R3 R4 K9 ["attachedImageUri"]
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K17 ["PartNames"]
       47 GETTABLE                         R5 R1 R6
       48 SETTABLEKS                       R5 R4 K10 ["partNames"]
       50 SETTABLEKS                       R2 R4 K11 ["suggestSegmentation"]
       52 GETUPVAL                         R5 4
       53 GETTABLEKS                       R5 R5 K15 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
       55 JUMPIF                           R5 ; [+17]
       56 DUPTABLE                         R5 K20 [{"name", "arguments"}]
       57 GETUPVAL                         R6 5
       58 GETTABLEKS                       R6 R6 K21 ["JobRun"]
       60 SETTABLEKS                       R6 R5 K18 ["name"]
       62 DUPTABLE                         R6 K23 [{"toolName", "arguments"}]
       63 GETUPVAL                         R7 5
       64 GETTABLEKS                       R7 R7 K24 ["PrimitiveGen"]
       66 SETTABLEKS                       R7 R6 K22 ["toolName"]
       68 SETTABLEKS                       R4 R6 K19 ["arguments"]
       70 SETTABLEKS                       R6 R5 K19 ["arguments"]
       72 RETURN                           R5 1
       73 DUPTABLE                         R5 K20 [{"name", "arguments"}]
       74 GETUPVAL                         R6 5
       75 GETTABLEKS                       R6 R6 K24 ["PrimitiveGen"]
       77 SETTABLEKS                       R6 R5 K18 ["name"]
       79 SETTABLEKS                       R4 R5 K19 ["arguments"]
       81 RETURN                           R5 1

PROTO_20:
        0 JUMPIFNOT                        R1 ; [+6]
        1 LENGTH                           R3 R1
        2 LOADN                            R4 0
        3 JUMPIFNOTLT                      R4 R3 ; [+3]
        5 GETTABLEN                        R2 R1 1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R2
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K0 ["FFlagPrimGenSchemaSelector"]
       11 JUMPIF                           R3 ; [+10]
       12 NEWTABLE                         R3 0 1
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U1
       19 SETLIST                          R3 R4 1 [1]
       21 RETURN                           R3 1
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          UPVAL U6
       31 CAPTURE                          UPVAL U7
       32 CAPTURE                          UPVAL U1
       33 NEWCLOSURE                       R4 P2
       34 CAPTURE                          UPVAL U8
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U9
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          UPVAL U1
       40 NEWTABLE                         R5 0 2
       42 MOVE                             R6 R3
       43 MOVE                             R7 R4
       44 SETLIST                          R5 R6 2 [1]
       46 RETURN                           R5 1

PROTO_21:
        0 LOADK                            R0 K0 ["Creates procedural 3D objects from primitive parts with configurable attributes. Supports reference images."]
        1 RETURN                           R0 1

PROTO_22:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 NEWTABLE                         R3 0 0
        6 LOADN                            R4 0
        7 LOADK                            R7 K2 ["PrimitiveGenTool_generateAsync"]
        8 NEWCLOSURE                       R8 P0
        9 CAPTURE                          VAL R3
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U7
       18 CAPTURE                          UPVAL U8
       19 CAPTURE                          UPVAL U9
       20 CAPTURE                          UPVAL U10
       21 NAMECALL                         R5 R1 K3 ["OnHostInvokeAsync"]
       23 CALL                             R5 3 1
       24 LOADK                            R8 K4 ["PrimitiveGenTool_cancelGeneration"]
       25 NEWCLOSURE                       R9 P1
       26 CAPTURE                          VAL R3
       27 NAMECALL                         R6 R1 K3 ["OnHostInvokeAsync"]
       29 CALL                             R6 3 1
       30 LOADK                            R9 K5 ["PrimitiveGenTool_pingAssetDmAsync"]
       31 DUPCLOSURE                       R10 K6 [PROTO_7]
       32 NAMECALL                         R7 R1 K3 ["OnHostInvokeAsync"]
       34 CALL                             R7 3 1
       35 NEWCLOSURE                       R8 P3
       36 CAPTURE                          UPVAL U11
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U12
       39 CAPTURE                          UPVAL U13
       40 CAPTURE                          UPVAL U14
       41 CAPTURE                          VAL R2
       42 CAPTURE                          UPVAL U15
       43 CAPTURE                          UPVAL U16
       44 CAPTURE                          UPVAL U17
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          VAL R7
       47 CAPTURE                          UPVAL U9
       48 CAPTURE                          REF R4
       49 CAPTURE                          UPVAL U18
       50 CAPTURE                          UPVAL U19
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R5
       53 CAPTURE                          UPVAL U10
       54 NEWCLOSURE                       R9 P4
       55 CAPTURE                          UPVAL U20
       56 CAPTURE                          VAL R8
       57 CAPTURE                          UPVAL U21
       58 CAPTURE                          UPVAL U4
       59 CAPTURE                          UPVAL U22
       60 GETIMPORT                        R10 K9 [table.concat]
       62 NEWTABLE                         R11 0 12
       64 LOADK                            R12 K10 ["Creates 3D objects built from primitive parts (blocks, spheres, cylinders, wedges) as a ProceduralModel with configurable attributes."]
       65 LOADK                            R13 K11 ["Use this tool when the user wants to:"]
       66 LOADK                            R14 K12 ["- Create or build a 3D object, model, character, creature, vehicle, building, scenery, or any physical thing in the workspace"]
       67 LOADK                            R15 K13 ["- Generate something from a reference image"]
       68 LOADK                            R16 K14 ["- Create an object with tunable parameters (e.g. \"add attributes to control head size, arm length, color\")"]
       69 LOADK                            R17 K15 ["- Build anything described as \"procedural\", \"parametric\", \"configurable\", or \"with attributes\""]
       70 LOADK                            R18 K16 [""]
       71 LOADK                            R19 K17 ["The output is a ProceduralModel: a scripted model whose appearance is controlled by user-editable attributes (like size, color, proportions). The user can tweak these attributes after generation without regenerating."]
       72 LOADK                            R20 K16 [""]
       73 LOADK                            R21 K18 ["The tool automatically inserts the generated model into the workspace. You do not need to run any code afterward."]
       74 LOADK                            R22 K16 [""]
       75 GETUPVAL                         R24 5
       76 GETTABLEKS                       R24 R24 K19 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
       78 JUMPIFNOT                        R24 ; [+11]
       79 LOADK                            R23 K20 ["CRITICAL: This is a long-running generative tool. Default to calling it with the '%*' argument set to true, which runs the generation in the background and returns immediately with a jobId. Handle other tasks while the generation is in-progress, and only call the '%*' tool when you absolutely need the result."]
       80 GETUPVAL                         R25 23
       81 GETTABLEKS                       R25 R25 K21 ["ASYNC_ARG"]
       83 GETUPVAL                         R26 24
       84 GETTABLEKS                       R26 R26 K22 ["JobWait"]
       86 NAMECALL                         R23 R23 K23 ["format"]
       88 CALL                             R23 3 1
       89 JUMP                             ; [+10]
       90 LOADK                            R23 K24 ["CRITICAL: This is a long-running generative tool. Default to calling this tool through the '%*' tool, which runs this tool asynchronously. Handle other tasks while the generation is in-progress, and only call the '%*' tool when you absolutely need the result."]
       91 GETUPVAL                         R25 24
       92 GETTABLEKS                       R25 R25 K25 ["JobRun"]
       94 GETUPVAL                         R26 24
       95 GETTABLEKS                       R26 R26 K22 ["JobWait"]
       97 NAMECALL                         R23 R23 K23 ["format"]
       99 CALL                             R23 3 1
      100 SETLIST                          R11 R12 12 [1]
      102 LOADK                            R12 K26 ["\n"]
      103 CALL                             R10 2 1
      104 GETUPVAL                         R11 25
      105 GETTABLEKS                       R11 R11 K27 ["define"]
      107 CALL                             R11 0 1
      108 GETUPVAL                         R13 24
      109 GETTABLEKS                       R13 R13 K28 ["PrimitiveGen"]
      111 NAMECALL                         R11 R11 K29 ["setName"]
      113 CALL                             R11 2 1
      114 MOVE                             R13 R10
      115 NAMECALL                         R11 R11 K30 ["setDescription"]
      117 CALL                             R11 2 1
      118 LOADK                            R13 K31 ["prompt"]
      119 DUPTABLE                         R14 K36 [{["type"] = "string", ["description"] = "A text description of what to create and what attributes to expose.\nPass the user's own words. If they mention specific configurable properties (e.g. \"head size\", \"arm length\", \"wheel count\"), include those in the prompt so the generated model exposes them as editable attributes.\nIf an image is attached and the user gave no text description, pass an empty string.\nDo NOT describe or interpret the attached image — only pass the user's own words.\n"}]
      120 NAMECALL                         R11 R11 K37 ["addArgument"]
      122 CALL                             R11 3 1
      123 LOADK                            R13 K38 ["attachedImageUri"]
      124 DUPTABLE                         R14 K40 [{["type"] = "string", ["description"] = "The image URI (IMAGEID_<id>) from the user's attached image. Always pass this when the user provides a reference image."}]
      125 NAMECALL                         R11 R11 K41 ["addOptionalArgument"]
      127 CALL                             R11 3 1
      128 LOADK                            R13 K42 ["partNames"]
      129 DUPTABLE                         R14 K43 [{["type"] = "string", ["description"]}]
      130 GETUPVAL                         R16 5
      131 GETTABLEKS                       R16 R16 K44 ["FFlagAssistantGen3dAutoSegmentation"]
      133 JUMPIFNOT                        R16 ; [+2]
      134 LOADK                            R15 K45 ["List of part names that define the structure of the generated model. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel, door') or a JSON array of strings (e.g. ['body', 'left wheel', 'right wheel', 'door']). Required when segmentation='explicit'. Maximum 8 parts (excess will be truncated)."]
      135 JUMP                             ; [+1]
      136 LOADK                            R15 K46 ["List of part names that define the structure of the generated model. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel, door') or a JSON array of strings. When provided, the model will be built around these named parts."]
      137 SETTABLEKS                       R15 R14 K34 ["description"]
      139 NAMECALL                         R11 R11 K41 ["addOptionalArgument"]
      141 CALL                             R11 3 1
      142 GETUPVAL                         R12 5
      143 GETTABLEKS                       R12 R12 K44 ["FFlagAssistantGen3dAutoSegmentation"]
      145 JUMPIFNOT                        R12 ; [+10]
      146 LOADK                            R14 K47 ["segmentation"]
      147 DUPTABLE                         R15 K50 [{["type"] = "string", ["enum"], ["description"] = "Controls how the model is broken into parts. Pick based on the user's wording:\n- Omit (or \"auto\"): user did NOT mention parts/segmentation (e.g. \"generate a car\"). The tool will derive parts automatically via an internal LLM call.\n- \"none\": user explicitly asked for no parts / a single piece (e.g. \"generate a car with no parts\", \"as one mesh\", \"single piece\").\n- \"explicit\": user named specific parts (e.g. \"a car with body and wheels\"). You MUST also pass partNames with the user's listed parts (max 8).\n"}]
      148 GETUPVAL                         R16 26
      149 GETTABLEKS                       R16 R16 K51 ["SegmentationArgValues"]
      151 SETTABLEKS                       R16 R15 K48 ["enum"]
      153 NAMECALL                         R12 R11 K41 ["addOptionalArgument"]
      155 CALL                             R12 3 0
      156 MOVE                             R14 R9
      157 NAMECALL                         R12 R11 K52 ["setHandler"]
      159 CALL                             R12 2 1
      160 DUPTABLE                         R14 K60 [{["title"] = "Primitive Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      161 NAMECALL                         R12 R12 K61 ["setAnnotations"]
      163 CALL                             R12 2 1
      164 NAMECALL                         R12 R12 K62 ["build"]
      166 CALL                             R12 1 1
      167 LOADB                            R13 1
      168 NEWCLOSURE                       R14 P5
      169 CAPTURE                          UPVAL U5
      170 CAPTURE                          UPVAL U24
      171 CAPTURE                          UPVAL U27
      172 CAPTURE                          UPVAL U28
      173 CAPTURE                          REF R13
      174 CAPTURE                          UPVAL U29
      175 CAPTURE                          UPVAL U30
      176 CAPTURE                          UPVAL U31
      177 CAPTURE                          UPVAL U32
      178 CAPTURE                          UPVAL U19
      179 DUPTABLE                         R15 K66 [{"command", "getDescription", "runToolChain"}]
      180 GETUPVAL                         R16 24
      181 GETTABLEKS                       R16 R16 K28 ["PrimitiveGen"]
      183 SETTABLEKS                       R16 R15 K63 ["command"]
      185 DUPCLOSURE                       R16 K67 [PROTO_21]
      186 SETTABLEKS                       R16 R15 K64 ["getDescription"]
      188 SETTABLEKS                       R14 R15 K65 ["runToolChain"]
      190 DUPTABLE                         R16 K72 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      191 SETTABLEKS                       R12 R16 K68 ["definition"]
      193 NEWTABLE                         R17 0 1
      195 MOVE                             R18 R15
      196 SETLIST                          R17 R18 1 [1]
      198 SETTABLEKS                       R17 R16 K69 ["slashCommands"]
      200 DUPCLOSURE                       R17 K73 [PROTO_22]
      201 SETTABLEKS                       R17 R16 K70 ["getPreExecuteWarning"]
      203 DUPTABLE                         R17 K76 [{["resetTimeoutOnProgress"] = True}]
      204 SETTABLEKS                       R17 R16 K71 ["toolCallOptions"]
      206 CLOSEUPVALS                      R4
      207 RETURN                           R16 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["Dash"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["ModelContextProtocol"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R0 K13 ["Util"]
       29 GETTABLEKS                       R6 R6 K14 ["AskInput"]
       31 GETTABLEKS                       R6 R6 K15 ["AskInputTypes"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K10 [require]
       36 GETTABLEKS                       R7 R0 K13 ["Util"]
       38 GETTABLEKS                       R7 R7 K16 ["Jobs"]
       40 GETTABLEKS                       R7 R7 K17 ["AsyncToolRunner"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K10 [require]
       45 GETIMPORT                        R8 K1 [script]
       47 GETTABLEKS                       R8 R8 K18 ["Backend"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K10 [require]
       52 GETTABLEKS                       R9 R0 K19 ["Flags"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K10 [require]
       57 GETTABLEKS                       R10 R0 K13 ["Util"]
       59 GETTABLEKS                       R10 R10 K20 ["ImageContentStore"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K10 [require]
       64 GETTABLEKS                       R11 R0 K13 ["Util"]
       66 GETTABLEKS                       R11 R11 K21 ["InstanceChannel"]
       68 GETTABLEKS                       R11 R11 K21 ["InstanceChannel"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K10 [require]
       73 GETTABLEKS                       R12 R0 K13 ["Util"]
       75 GETTABLEKS                       R12 R12 K22 ["MeshGen"]
       77 GETTABLEKS                       R12 R12 K23 ["MeshGenSchemaSelector"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K10 [require]
       82 GETIMPORT                        R13 K1 [script]
       84 GETTABLEKS                       R13 R13 K24 ["ModelBuilder"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K10 [require]
       89 GETTABLEKS                       R14 R0 K13 ["Util"]
       91 GETTABLEKS                       R14 R14 K25 ["PrimitiveGen"]
       93 GETTABLEKS                       R14 R14 K26 ["PrimitiveGenChannel"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K10 [require]
       98 GETTABLEKS                       R15 R0 K13 ["Util"]
      100 GETTABLEKS                       R15 R15 K25 ["PrimitiveGen"]
      102 GETTABLEKS                       R15 R15 K27 ["PrimitiveGenTypes"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K10 [require]
      107 GETTABLEKS                       R16 R0 K13 ["Util"]
      109 GETTABLEKS                       R16 R16 K28 ["Gen3dUtils"]
      111 GETTABLEKS                       R16 R16 K29 ["PromptTemplate"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K10 [require]
      116 GETTABLEKS                       R17 R0 K13 ["Util"]
      118 GETTABLEKS                       R17 R17 K28 ["Gen3dUtils"]
      120 GETTABLEKS                       R17 R17 K30 ["SegmentationEnums"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K10 [require]
      125 GETTABLEKS                       R18 R0 K13 ["Util"]
      127 GETTABLEKS                       R18 R18 K28 ["Gen3dUtils"]
      129 GETTABLEKS                       R18 R18 K31 ["SingleImageGenerator"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K10 [require]
      134 GETTABLEKS                       R19 R0 K13 ["Util"]
      136 GETTABLEKS                       R19 R19 K32 ["SlashCommandConfiguration"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K10 [require]
      141 GETTABLEKS                       R20 R0 K33 ["Tools"]
      143 GETTABLEKS                       R20 R20 K34 ["ToolTypes"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K10 [require]
      148 GETTABLEKS                       R21 R0 K13 ["Util"]
      150 GETTABLEKS                       R21 R21 K35 ["ToolUtils"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K10 [require]
      155 GETTABLEKS                       R22 R0 K36 ["Resources"]
      157 GETTABLEKS                       R22 R22 K37 ["Localization"]
      159 GETTABLEKS                       R22 R22 K38 ["Translator"]
      161 CALL                             R21 1 1
      162 GETIMPORT                        R22 K10 [require]
      164 GETTABLEKS                       R23 R0 K39 ["Types"]
      166 CALL                             R22 1 1
      167 GETIMPORT                        R23 K10 [require]
      169 GETTABLEKS                       R24 R0 K13 ["Util"]
      171 GETTABLEKS                       R24 R24 K40 ["VersionResolver"]
      173 CALL                             R23 1 1
      174 GETTABLEKS                       R24 R4 K13 ["Util"]
      176 GETTABLEKS                       R24 R24 K41 ["ToolBuilder"]
      178 GETTABLEKS                       R25 R4 K13 ["Util"]
      180 GETTABLEKS                       R25 R25 K42 ["ToolResult"]
      182 GETTABLEKS                       R26 R19 K43 ["ToolNames"]
      184 GETTABLEKS                       R27 R5 K44 ["INPUT_TYPE"]
      186 GETTABLEKS                       R28 R5 K45 ["RULE_KIND"]
      188 GETTABLEKS                       R29 R5 K46 ["asRule"]
      190 GETTABLEKS                       R30 R18 K47 ["Configs"]
      192 GETTABLEKS                       R30 R30 K25 ["PrimitiveGen"]
      194 GETTABLEKS                       R31 R30 K48 ["row"]
      196 GETTABLEKS                       R32 R14 K49 ["getLinkTag"]
      198 GETTABLEKS                       R33 R7 K50 ["ErrorType"]
      200 GETTABLEKS                       R34 R7 K51 ["ResultStatus"]
      202 GETTABLEKS                       R35 R7 K52 ["GenerationStages"]
      204 GETTABLEKS                       R36 R7 K53 ["raiseGenerationError"]
      206 GETTABLEKS                       R37 R7 K54 ["asGenerationError"]
      208 GETTABLEKS                       R38 R7 K55 ["getAssetDmUnreachableMessage"]
      210 GETTABLEKS                       R39 R7 K56 ["getExecutionErrorCode"]
      212 DUPCLOSURE                       R40 K57 [PROTO_0]
      213 CAPTURE                          VAL R9
      214 DUPCLOSURE                       R41 K58 [PROTO_23]
      215 CAPTURE                          VAL R10
      216 CAPTURE                          VAL R13
      217 CAPTURE                          VAL R35
      218 CAPTURE                          VAL R7
      219 CAPTURE                          VAL R33
      220 CAPTURE                          VAL R8
      221 CAPTURE                          VAL R34
      222 CAPTURE                          VAL R12
      223 CAPTURE                          VAL R39
      224 CAPTURE                          VAL R38
      225 CAPTURE                          VAL R32
      226 CAPTURE                          VAL R1
      227 CAPTURE                          VAL R11
      228 CAPTURE                          VAL R15
      229 CAPTURE                          VAL R17
      230 CAPTURE                          VAL R3
      231 CAPTURE                          VAL R36
      232 CAPTURE                          VAL R23
      233 CAPTURE                          VAL R21
      234 CAPTURE                          VAL R9
      235 CAPTURE                          VAL R20
      236 CAPTURE                          VAL R37
      237 CAPTURE                          VAL R25
      238 CAPTURE                          VAL R6
      239 CAPTURE                          VAL R26
      240 CAPTURE                          VAL R24
      241 CAPTURE                          VAL R16
      242 CAPTURE                          VAL R31
      243 CAPTURE                          VAL R27
      244 CAPTURE                          VAL R30
      245 CAPTURE                          VAL R29
      246 CAPTURE                          VAL R28
      247 CAPTURE                          VAL R5
      248 RETURN                           R41 1
