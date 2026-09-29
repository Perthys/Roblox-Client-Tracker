PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+10]
        4 GETIMPORT                        R2 K1 [error]
        6 LOADK                            R3 K2 ["size.%* must be defined"]
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K3 ["format"]
       10 CALL                             R3 2 1
       11 LOADN                            R4 0
       12 CALL                             R2 2 0
       13 FASTCALL1                        TONUMBER R1 ; [+3]
       14 MOVE                             R3 R1
       15 GETIMPORT                        R2 K5 [tonumber]
       17 CALL                             R2 1 1
       18 JUMPIFNOTEQKNIL                  R2 ; [+10]
       20 GETIMPORT                        R3 K1 [error]
       22 LOADK                            R4 K6 ["size.%* must be a number"]
       23 MOVE                             R6 R0
       24 NAMECALL                         R4 R4 K3 ["format"]
       26 CALL                             R4 2 1
       27 LOADN                            R5 0
       28 CALL                             R3 2 0
       29 LOADN                            R3 0
       30 JUMPIFNOTLE                      R2 R3 ; [+10]
       32 GETIMPORT                        R3 K1 [error]
       34 LOADK                            R4 K7 ["size.%* must be a positive number"]
       35 MOVE                             R6 R0
       36 NAMECALL                         R4 R4 K3 ["format"]
       38 CALL                             R4 2 1
       39 LOADN                            R5 0
       40 CALL                             R3 2 0
       41 RETURN                           R0 0

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Tool arguments must be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K6 ["textPrompt"]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K7 ["resolveImage"]
       20 GETTABLEKS                       R3 R0 K8 ["hintImage"]
       22 CALL                             R2 1 1
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K9 ["FFlagAssistantSegmentationPromptModeSelector"]
       26 JUMPIFNOT                        R3 ; [+19]
       27 GETTABLEKS                       R3 R0 K10 ["promptMode"]
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R4 R4 K11 ["PromptMode"]
       32 GETTABLEKS                       R4 R4 K12 ["Text"]
       34 JUMPIFNOTEQ                      R3 R4 ; [+3]
       36 LOADNIL                          R2
       37 JUMP                             ; [+8]
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R4 R4 K11 ["PromptMode"]
       41 GETTABLEKS                       R4 R4 K13 ["Image"]
       43 JUMPIFNOTEQ                      R3 R4 ; [+2]
       45 LOADK                            R1 K14 [""]
       46 FASTCALL1                        TYPEOF R1 ; [+3]
       47 MOVE                             R6 R1
       48 GETIMPORT                        R5 K1 [typeof]
       50 CALL                             R5 1 1
       51 JUMPIFNOTEQKS                    R5 K15 ["string"] ; [+6]
       53 LOADB                            R4 1
       54 LENGTH                           R5 R1
       55 LOADN                            R6 0
       56 JUMPIFLT                         R6 R5 ; [+5]
       58 JUMPIFNOTEQKNIL                  R2 ; [+2]
       60 LOADB                            R4 0 +1
       61 LOADB                            R4 1
       62 FASTCALL2K                       ASSERT R4 K16 ; [+4]
       64 LOADK                            R5 K16 ["textPrompt must be a non-empty string, or hintImage must be provided"]
       65 GETIMPORT                        R3 K5 [assert]
       67 CALL                             R3 2 0
       68 GETTABLEKS                       R3 R0 K17 ["size"]
       70 LOADNIL                          R4
       71 JUMPIFEQKNIL                     R3 ; [+116]
       73 FASTCALL1                        TYPEOF R3 ; [+3]
       74 MOVE                             R8 R3
       75 GETIMPORT                        R7 K1 [typeof]
       77 CALL                             R7 1 1
       78 JUMPIFEQKS                       R7 K2 ["table"] ; [+2]
       80 LOADB                            R6 0 +1
       81 LOADB                            R6 1
       82 FASTCALL2K                       ASSERT R6 K18 ; [+4]
       84 LOADK                            R7 K18 ["size must be a table"]
       85 GETIMPORT                        R5 K5 [assert]
       87 CALL                             R5 2 0
       88 NEWCLOSURE                       R5 P0
       89 CAPTURE                          VAL R3
       90 GETTABLEKS                       R6 R3 K19 ["x"]
       92 JUMPIFNOTEQKNIL                  R6 ; [+6]
       94 GETIMPORT                        R7 K21 [error]
       96 LOADK                            R8 K22 ["size.x must be defined"]
       97 LOADN                            R9 0
       98 CALL                             R7 2 0
       99 FASTCALL1                        TONUMBER R6 ; [+3]
      100 MOVE                             R8 R6
      101 GETIMPORT                        R7 K24 [tonumber]
      103 CALL                             R7 1 1
      104 JUMPIFNOTEQKNIL                  R7 ; [+6]
      106 GETIMPORT                        R8 K21 [error]
      108 LOADK                            R9 K25 ["size.x must be a number"]
      109 LOADN                            R10 0
      110 CALL                             R8 2 0
      111 LOADN                            R8 0
      112 JUMPIFNOTLE                      R7 R8 ; [+6]
      114 GETIMPORT                        R8 K21 [error]
      116 LOADK                            R9 K26 ["size.x must be a positive number"]
      117 LOADN                            R10 0
      118 CALL                             R8 2 0
      119 GETTABLEKS                       R6 R3 K27 ["y"]
      121 JUMPIFNOTEQKNIL                  R6 ; [+6]
      123 GETIMPORT                        R7 K21 [error]
      125 LOADK                            R8 K28 ["size.y must be defined"]
      126 LOADN                            R9 0
      127 CALL                             R7 2 0
      128 FASTCALL1                        TONUMBER R6 ; [+3]
      129 MOVE                             R8 R6
      130 GETIMPORT                        R7 K24 [tonumber]
      132 CALL                             R7 1 1
      133 JUMPIFNOTEQKNIL                  R7 ; [+6]
      135 GETIMPORT                        R8 K21 [error]
      137 LOADK                            R9 K29 ["size.y must be a number"]
      138 LOADN                            R10 0
      139 CALL                             R8 2 0
      140 LOADN                            R8 0
      141 JUMPIFNOTLE                      R7 R8 ; [+6]
      143 GETIMPORT                        R8 K21 [error]
      145 LOADK                            R9 K30 ["size.y must be a positive number"]
      146 LOADN                            R10 0
      147 CALL                             R8 2 0
      148 GETTABLEKS                       R6 R3 K31 ["z"]
      150 JUMPIFNOTEQKNIL                  R6 ; [+6]
      152 GETIMPORT                        R7 K21 [error]
      154 LOADK                            R8 K32 ["size.z must be defined"]
      155 LOADN                            R9 0
      156 CALL                             R7 2 0
      157 FASTCALL1                        TONUMBER R6 ; [+3]
      158 MOVE                             R8 R6
      159 GETIMPORT                        R7 K24 [tonumber]
      161 CALL                             R7 1 1
      162 JUMPIFNOTEQKNIL                  R7 ; [+6]
      164 GETIMPORT                        R8 K21 [error]
      166 LOADK                            R9 K33 ["size.z must be a number"]
      167 LOADN                            R10 0
      168 CALL                             R8 2 0
      169 LOADN                            R8 0
      170 JUMPIFNOTLE                      R7 R8 ; [+6]
      172 GETIMPORT                        R8 K21 [error]
      174 LOADK                            R9 K34 ["size.z must be a positive number"]
      175 LOADN                            R10 0
      176 CALL                             R8 2 0
      177 GETTABLEKS                       R7 R3 K19 ["x"]
      179 GETTABLEKS                       R8 R3 K27 ["y"]
      181 GETTABLEKS                       R9 R3 K31 ["z"]
      183 FASTCALL                         VECTOR ; [+2]
      184 GETIMPORT                        R6 K37 [Vector3.new]
      186 CALL                             R6 3 1
      187 MOVE                             R4 R6
      188 GETTABLEKS                       R5 R0 K38 ["maxTriangles"]
      190 JUMPIFEQKNIL                     R5 ; [+32]
      192 FASTCALL1                        TYPEOF R5 ; [+3]
      193 MOVE                             R9 R5
      194 GETIMPORT                        R8 K1 [typeof]
      196 CALL                             R8 1 1
      197 JUMPIFEQKS                       R8 K39 ["number"] ; [+2]
      199 LOADB                            R7 0 +1
      200 LOADB                            R7 1
      201 FASTCALL2K                       ASSERT R7 K40 ; [+4]
      203 LOADK                            R8 K40 ["maxTriangles must be a number"]
      204 GETIMPORT                        R6 K5 [assert]
      206 CALL                             R6 2 0
      207 GETUPVAL                         R6 3
      208 JUMPIFLT                         R5 R6 ; [+4]
      210 GETUPVAL                         R6 4
      211 JUMPIFNOTLT                      R6 R5 ; [+11]
      213 GETIMPORT                        R6 K21 [error]
      215 LOADK                            R7 K41 ["maxTriangles must be between %* and %* (inclusive)"]
      216 GETUPVAL                         R9 3
      217 GETUPVAL                         R10 4
      218 NAMECALL                         R7 R7 K42 ["format"]
      220 CALL                             R7 3 1
      221 LOADN                            R8 0
      222 CALL                             R6 2 0
      223 LOADNIL                          R6
      224 LOADNIL                          R7
      225 GETTABLEKS                       R8 R0 K43 ["segmentationMode"]
      227 JUMPIFEQKNIL                     R8 ; [+30]
      229 LOADB                            R9 1
      230 GETTABLEKS                       R10 R0 K43 ["segmentationMode"]
      232 GETUPVAL                         R11 2
      233 GETTABLEKS                       R11 R11 K44 ["SegmentationMode"]
      235 GETTABLEKS                       R11 R11 K45 ["Functional"]
      237 JUMPIFEQ                         R10 R11 ; [+12]
      239 GETTABLEKS                       R10 R0 K43 ["segmentationMode"]
      241 GETUPVAL                         R11 2
      242 GETTABLEKS                       R11 R11 K44 ["SegmentationMode"]
      244 GETTABLEKS                       R11 R11 K46 ["Material"]
      246 JUMPIFEQ                         R10 R11 ; [+2]
      248 LOADB                            R9 0 +1
      249 LOADB                            R9 1
      250 FASTCALL2K                       ASSERT R9 K47 ; [+4]
      252 LOADK                            R10 K47 ["segmentationMode must be 'functional' or 'material'"]
      253 GETIMPORT                        R8 K5 [assert]
      255 CALL                             R8 2 0
      256 GETTABLEKS                       R7 R0 K43 ["segmentationMode"]
      258 GETUPVAL                         R8 1
      259 GETTABLEKS                       R8 R8 K48 ["FFlagAssistantGen3dAutoSegmentation"]
      261 JUMPIFNOT                        R8 ; [+22]
      262 GETTABLEKS                       R8 R0 K49 ["segmentation"]
      264 JUMPIF                           R8 ; [+8]
      265 GETUPVAL                         R8 5
      266 GETTABLEKS                       R8 R8 K50 ["inferUISegmentation"]
      268 GETTABLEKS                       R9 R0 K51 ["suggestSegmentation"]
      270 GETTABLEKS                       R10 R0 K52 ["partNames"]
      272 CALL                             R8 2 1
      273 GETUPVAL                         R9 5
      274 GETTABLEKS                       R9 R9 K53 ["resolveSegmentationAsync"]
      276 MOVE                             R10 R8
      277 GETTABLEKS                       R11 R0 K52 ["partNames"]
      279 MOVE                             R12 R1
      280 MOVE                             R13 R7
      281 CALL                             R9 4 1
      282 MOVE                             R6 R9
      283 JUMP                             ; [+7]
      284 GETUPVAL                         R8 5
      285 GETTABLEKS                       R8 R8 K54 ["parsePartNames"]
      287 GETTABLEKS                       R9 R0 K52 ["partNames"]
      289 CALL                             R8 1 1
      290 MOVE                             R6 R8
      291 GETUPVAL                         R8 0
      292 GETTABLEKS                       R8 R8 K7 ["resolveImage"]
      294 GETTABLEKS                       R9 R0 K8 ["hintImage"]
      296 CALL                             R8 1 1
      297 LOADNIL                          R9
      298 GETUPVAL                         R10 1
      299 GETTABLEKS                       R10 R10 K55 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      301 JUMPIF                           R10 ; [+12]
      302 DUPTABLE                         R10 K62 [{["generateImage"] = "true", ["multiMeshGenInferenceServiceOverride"], ["imageGenModelOverride"], ["multiTextureImageInput"] = "true", ["enableMeshScaleFactorTensor"] = "true"}]
      303 GETUPVAL                         R11 1
      304 GETTABLEKS                       R11 R11 K63 ["FStringAssistantMeshGenInferenceServiceOverride"]
      306 SETTABLEKS                       R11 R10 K58 ["multiMeshGenInferenceServiceOverride"]
      308 GETUPVAL                         R11 1
      309 GETTABLEKS                       R11 R11 K64 ["FStringAssistantMeshGenImageGenModelOverride"]
      311 SETTABLEKS                       R11 R10 K59 ["imageGenModelOverride"]
      313 MOVE                             R9 R10
      314 GETTABLEKS                       R10 R0 K65 ["isManualRun"]
      316 JUMPIFEQKNIL                     R10 ; [+16]
      318 FASTCALL1                        TYPEOF R10 ; [+3]
      319 MOVE                             R14 R10
      320 GETIMPORT                        R13 K1 [typeof]
      322 CALL                             R13 1 1
      323 JUMPIFEQKS                       R13 K66 ["boolean"] ; [+2]
      325 LOADB                            R12 0 +1
      326 LOADB                            R12 1
      327 FASTCALL2K                       ASSERT R12 K67 ; [+4]
      329 LOADK                            R13 K67 ["isManualRun must be a boolean"]
      330 GETIMPORT                        R11 K5 [assert]
      332 CALL                             R11 2 0
      333 GETTABLEKS                       R11 R0 K68 ["selectedInstanceRef"]
      335 LOADNIL                          R12
      336 JUMPIFEQKNIL                     R11 ; [+34]
      338 FASTCALL1                        TYPEOF R11 ; [+3]
      339 MOVE                             R16 R11
      340 GETIMPORT                        R15 K1 [typeof]
      342 CALL                             R15 1 1
      343 JUMPIFEQKS                       R15 K2 ["table"] ; [+2]
      345 LOADB                            R14 0 +1
      346 LOADB                            R14 1
      347 FASTCALL2K                       ASSERT R14 K69 ; [+4]
      349 LOADK                            R15 K69 ["selectedInstanceRef must be a table"]
      350 GETIMPORT                        R13 K5 [assert]
      352 CALL                             R13 2 0
      353 GETTABLEKS                       R16 R11 K70 ["uniqueId"]
      355 FASTCALL1                        TYPEOF R16 ; [+2]
      356 GETIMPORT                        R15 K1 [typeof]
      358 CALL                             R15 1 1
      359 JUMPIFEQKS                       R15 K15 ["string"] ; [+2]
      361 LOADB                            R14 0 +1
      362 LOADB                            R14 1
      363 FASTCALL2K                       ASSERT R14 K71 ; [+4]
      365 LOADK                            R15 K71 ["selectedInstanceRef.uniqueId must be a string"]
      366 GETIMPORT                        R13 K5 [assert]
      368 CALL                             R13 2 0
      369 GETTABLEKS                       R12 R11 K70 ["uniqueId"]
      371 DUPTABLE                         R13 K74 [{"textPrompt", "size", "maxTriangles", "partNames", "segmentationMode", "adminOptions", "hintImage", "isManualRun", "selectedUniqueId"}]
      372 SETTABLEKS                       R1 R13 K6 ["textPrompt"]
      374 SETTABLEKS                       R4 R13 K17 ["size"]
      376 SETTABLEKS                       R5 R13 K38 ["maxTriangles"]
      378 SETTABLEKS                       R6 R13 K52 ["partNames"]
      380 SETTABLEKS                       R7 R13 K43 ["segmentationMode"]
      382 SETTABLEKS                       R9 R13 K72 ["adminOptions"]
      384 SETTABLEKS                       R8 R13 K8 ["hintImage"]
      386 SETTABLEKS                       R10 R13 K65 ["isManualRun"]
      388 SETTABLEKS                       R12 R13 K73 ["selectedUniqueId"]
      390 RETURN                           R13 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["generateAssetsAsync"]
        3 DUPTABLE                         R1 K9 [{"toolUseId", "textPrompt", "size", "maxTriangles", "partNames", "adminOptions", "hintImage", "selectedUniqueId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["textPrompt"]
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K3 ["size"]
       13 SETTABLEKS                       R2 R1 K3 ["size"]
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K4 ["maxTriangles"]
       18 SETTABLEKS                       R2 R1 K4 ["maxTriangles"]
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R2 R2 K5 ["partNames"]
       23 SETTABLEKS                       R2 R1 K5 ["partNames"]
       25 GETUPVAL                         R3 4
       26 GETTABLEKS                       R3 R3 K10 ["FFlagAssistantMeshGenRemoveAdminOptions"]
       28 JUMPIFNOT                        R3 ; [+2]
       29 LOADNIL                          R2
       30 JUMP                             ; [+3]
       31 GETUPVAL                         R2 3
       32 GETTABLEKS                       R2 R2 K6 ["adminOptions"]
       34 SETTABLEKS                       R2 R1 K6 ["adminOptions"]
       36 GETUPVAL                         R2 3
       37 GETTABLEKS                       R2 R2 K7 ["hintImage"]
       39 SETTABLEKS                       R2 R1 K7 ["hintImage"]
       41 GETUPVAL                         R2 3
       42 GETTABLEKS                       R2 R2 K8 ["selectedUniqueId"]
       44 SETTABLEKS                       R2 R1 K8 ["selectedUniqueId"]
       46 CALL                             R0 1 -1
       47 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removeSelectedBoundsAsync"]
        3 DUPTABLE                         R1 K2 [{"toolUseId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancelGenerationAsync"]
        3 DUPTABLE                         R1 K2 [{"toolUseId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["publishAssetsAsync"]
        3 DUPTABLE                         R1 K4 [{"toolUseId", "generationId", "hasPredeterminedSize"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["generationId"]
       10 GETUPVAL                         R2 3
       11 SETTABLEKS                       R2 R1 K3 ["hasPredeterminedSize"]
       13 CALL                             R0 1 -1
       14 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removeSelectedBoundsAsync"]
        3 DUPTABLE                         R1 K2 [{"toolUseId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancelGenerationAsync"]
        3 DUPTABLE                         R1 K2 [{"toolUseId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertAssetsAsync"]
        3 DUPTABLE                         R1 K2 [{"toolUseId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removeSelectedBoundsAsync"]
        3 DUPTABLE                         R1 K2 [{"toolUseId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantMcpImageGenShortcut"]
        6 JUMPIFNOT                        R3 ; [+64]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["EngineFeatureAssistantGen3dImagePreview"]
       10 JUMPIFNOT                        R3 ; [+60]
       11 GETTABLEKS                       R3 R2 K2 ["hintImage"]
       13 JUMPIFNOTEQKNIL                  R3 ; [+57]
       15 GETTABLEKS                       R4 R2 K3 ["textPrompt"]
       17 FASTCALL1                        TYPEOF R4 ; [+2]
       18 GETIMPORT                        R3 K5 [typeof]
       20 CALL                             R3 1 1
       21 JUMPIFNOTEQKS                    R3 K6 ["string"] ; [+49]
       23 GETTABLEKS                       R4 R2 K3 ["textPrompt"]
       25 LENGTH                           R3 R4
       26 LOADN                            R4 0
       27 JUMPIFNOTLT                      R4 R3 ; [+43]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K7 ["FFlagAssistantMeshGenImageGenPromptTemplateEnabled"]
       32 JUMPIFNOT                        R4 ; [+10]
       33 GETUPVAL                         R3 2
       34 GETTABLEKS                       R3 R3 K8 ["apply"]
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K9 ["FStringAssistantMeshGenImageGenPromptTemplate"]
       39 GETTABLEKS                       R5 R2 K3 ["textPrompt"]
       41 CALL                             R3 2 1
       42 JUMP                             ; [+2]
       43 GETTABLEKS                       R3 R2 K3 ["textPrompt"]
       45 GETUPVAL                         R4 3
       46 GETTABLEKS                       R4 R4 K10 ["generateAsync"]
       48 DUPTABLE                         R5 K12 [{"textPrompt", "model"}]
       49 SETTABLEKS                       R3 R5 K3 ["textPrompt"]
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R6 R6 K13 ["FStringAssistantMeshGenImageGenModelOverride"]
       54 SETTABLEKS                       R6 R5 K11 ["model"]
       56 CALL                             R4 1 1
       57 GETTABLEKS                       R5 R4 K14 ["imageContent"]
       59 JUMPIFNOT                        R5 ; [+5]
       60 GETTABLEKS                       R5 R4 K14 ["imageContent"]
       62 SETTABLEKS                       R5 R2 K2 ["hintImage"]
       64 JUMP                             ; [+6]
       65 GETIMPORT                        R5 K16 [warn]
       67 LOADK                            R6 K17 ["[MeshGen] Single-image generation failed, continuing text-only:"]
       68 GETTABLEKS                       R7 R4 K18 ["errorMessage"]
       70 CALL                             R5 2 0
       71 GETUPVAL                         R3 4
       72 GETTABLEKS                       R3 R3 K19 ["EventLogger"]
       74 GETTABLEKS                       R3 R3 K20 ["logMeshGenActivated"]
       76 CALL                             R3 0 0
       77 GETUPVAL                         R3 5
       78 GETTABLEKS                       R3 R3 K21 ["bridges"]
       80 GETTABLEKS                       R3 R3 K22 ["MeshGen"]
       82 GETTABLEKS                       R3 R3 K23 ["createGuestContext"]
       84 LOADNIL                          R4
       85 LOADNIL                          R5
       86 CALL                             R3 2 1
       87 GETTABLEKS                       R3 R3 K24 ["bridge"]
       89 GETTABLEKS                       R4 R2 K3 ["textPrompt"]
       91 GETIMPORT                        R5 K26 [pcall]
       93 NEWCLOSURE                       R6 P0
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R2
       98 CAPTURE                          UPVAL U1
       99 CALL                             R5 1 2
      100 JUMPIF                           R5 ; [+23]
      101 GETIMPORT                        R7 K26 [pcall]
      103 NEWCLOSURE                       R8 P1
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R1
      106 CALL                             R7 1 0
      107 GETIMPORT                        R7 K26 [pcall]
      109 NEWCLOSURE                       R8 P2
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R1
      112 CALL                             R7 1 0
      113 GETIMPORT                        R7 K28 [error]
      115 LOADK                            R9 K29 ["Mesh generation failed with error: "]
      116 FASTCALL1                        TOSTRING R6 ; [+3]
      117 MOVE                             R11 R6
      118 GETIMPORT                        R10 K31 [tostring]
      120 CALL                             R10 1 1
      121 CONCAT                           R8 R9 R10
      122 LOADN                            R9 0
      123 CALL                             R7 2 0
      124 JUMPIFNOT                        R5 ; [+3]
      125 GETTABLEKS                       R7 R6 K32 ["generationId"]
      127 JUMP                             ; [+1]
      128 LOADNIL                          R7
      129 LOADB                            R8 1
      130 GETTABLEKS                       R9 R2 K33 ["size"]
      132 JUMPIFNOTEQKNIL                  R9 ; [+14]
      134 LOADB                            R8 0
      135 GETTABLEKS                       R9 R2 K34 ["selectedUniqueId"]
      137 JUMPIFEQKNIL                     R9 ; [+9]
      139 GETTABLEKS                       R10 R2 K34 ["selectedUniqueId"]
      141 LENGTH                           R9 R10
      142 LOADN                            R10 0
      143 JUMPIFLT                         R10 R9 ; [+2]
      145 LOADB                            R8 0 +1
      146 LOADB                            R8 1
      147 GETTABLEKS                       R9 R2 K35 ["isManualRun"]
      149 JUMPIFNOT                        R9 ; [+15]
      150 DUPTABLE                         R9 K39 [{"tag", "generationId", "generationName", "hasPredeterminedSize"}]
      151 GETUPVAL                         R10 6
      152 GETTABLEKS                       R10 R10 K40 ["getLinkTag"]
      154 MOVE                             R11 R1
      155 CALL                             R10 1 1
      156 SETTABLEKS                       R10 R9 K36 ["tag"]
      158 SETTABLEKS                       R7 R9 K32 ["generationId"]
      160 SETTABLEKS                       R4 R9 K37 ["generationName"]
      162 SETTABLEKS                       R8 R9 K38 ["hasPredeterminedSize"]
      164 RETURN                           R9 1
      165 GETIMPORT                        R9 K26 [pcall]
      167 NEWCLOSURE                       R10 P3
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R1
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R8
      172 CALL                             R9 1 2
      173 JUMPIF                           R9 ; [+23]
      174 GETIMPORT                        R11 K26 [pcall]
      176 NEWCLOSURE                       R12 P4
      177 CAPTURE                          VAL R3
      178 CAPTURE                          VAL R1
      179 CALL                             R11 1 0
      180 GETIMPORT                        R11 K26 [pcall]
      182 NEWCLOSURE                       R12 P5
      183 CAPTURE                          VAL R3
      184 CAPTURE                          VAL R1
      185 CALL                             R11 1 0
      186 GETIMPORT                        R11 K28 [error]
      188 LOADK                            R13 K41 ["Failed to publish assets with error: "]
      189 FASTCALL1                        TOSTRING R10 ; [+3]
      190 MOVE                             R15 R10
      191 GETIMPORT                        R14 K31 [tostring]
      193 CALL                             R14 1 1
      194 CONCAT                           R12 R13 R14
      195 LOADN                            R13 0
      196 CALL                             R11 2 0
      197 GETIMPORT                        R11 K26 [pcall]
      199 NEWCLOSURE                       R12 P6
      200 CAPTURE                          VAL R3
      201 CAPTURE                          VAL R1
      202 CALL                             R11 1 2
      203 JUMPIF                           R11 ; [+17]
      204 GETIMPORT                        R13 K26 [pcall]
      206 NEWCLOSURE                       R14 P7
      207 CAPTURE                          VAL R3
      208 CAPTURE                          VAL R1
      209 CALL                             R13 1 0
      210 GETIMPORT                        R13 K28 [error]
      212 LOADK                            R15 K42 ["Failed to insert assets with error: "]
      213 FASTCALL1                        TOSTRING R12 ; [+3]
      214 MOVE                             R17 R12
      215 GETIMPORT                        R16 K31 [tostring]
      217 CALL                             R16 1 1
      218 CONCAT                           R14 R15 R16
      219 LOADN                            R15 0
      220 CALL                             R13 2 0
      221 DUPTABLE                         R13 K44 [{"tag", "generationId", "generationName", "publishedAssetId"}]
      222 GETUPVAL                         R14 6
      223 GETTABLEKS                       R14 R14 K40 ["getLinkTag"]
      225 MOVE                             R15 R1
      226 CALL                             R14 1 1
      227 SETTABLEKS                       R14 R13 K36 ["tag"]
      229 SETTABLEKS                       R7 R13 K32 ["generationId"]
      231 SETTABLEKS                       R4 R13 K37 ["generationName"]
      233 GETTABLEKS                       R14 R10 K45 ["assetId"]
      235 SETTABLEKS                       R14 R13 K43 ["publishedAssetId"]
      237 RETURN                           R13 1

PROTO_11:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R3 R1 K0 ["toolId"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R3
        5 LOADB                            R5 0
        6 FASTCALL1                        TYPEOF R3 ; [+3]
        7 MOVE                             R7 R3
        8 GETIMPORT                        R6 K2 [typeof]
       10 CALL                             R6 1 1
       11 JUMPIFNOTEQKS                    R6 K3 ["string"] ; [+5]
       13 JUMPIFNOTEQKS                    R3 K4 [""] ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       19 LOADK                            R6 K5 ["MeshGenTool requires toolUseId"]
       20 GETIMPORT                        R4 K7 [assert]
       22 CALL                             R4 2 0
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K8 ["runWithProgressLoop"]
       26 GETTABLEKS                       R5 R2 K9 ["sendProgress"]
       28 GETUPVAL                         R6 1
       29 MOVE                             R7 R0
       30 MOVE                             R8 R3
       31 CALL                             R4 4 1
       32 GETTABLEKS                       R6 R0 K10 ["isManualRun"]
       34 JUMPIFNOT                        R6 ; [+2]
       35 LOADK                            R5 K11 ["Mesh generated successfully"]
       36 JUMP                             ; [+13]
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K12 ["toString"]
       40 DUPTABLE                         R6 K15 [{"tag", "generationName"}]
       41 GETTABLEKS                       R7 R4 K13 ["tag"]
       43 SETTABLEKS                       R7 R6 K13 ["tag"]
       45 GETTABLEKS                       R7 R4 K14 ["generationName"]
       47 SETTABLEKS                       R7 R6 K14 ["generationName"]
       49 CALL                             R5 1 1
       50 GETUPVAL                         R6 2
       51 CALL                             R6 0 1
       52 MOVE                             R8 R5
       53 NAMECALL                         R6 R6 K16 ["addText"]
       55 CALL                             R6 2 1
       56 DUPTABLE                         R8 K20 [{"tag", "generationId", "generationName", "hasPredeterminedSize", "publishedAssetId"}]
       57 GETTABLEKS                       R9 R4 K13 ["tag"]
       59 SETTABLEKS                       R9 R8 K13 ["tag"]
       61 GETTABLEKS                       R9 R4 K17 ["generationId"]
       63 SETTABLEKS                       R9 R8 K17 ["generationId"]
       65 GETTABLEKS                       R9 R4 K14 ["generationName"]
       67 SETTABLEKS                       R9 R8 K14 ["generationName"]
       69 GETTABLEKS                       R9 R4 K18 ["hasPredeterminedSize"]
       71 SETTABLEKS                       R9 R8 K18 ["hasPredeterminedSize"]
       73 GETTABLEKS                       R9 R4 K19 ["publishedAssetId"]
       75 SETTABLEKS                       R9 R8 K19 ["publishedAssetId"]
       77 NAMECALL                         R6 R6 K21 ["setStructuredContent"]
       79 CALL                             R6 2 1
       80 NAMECALL                         R6 R6 K22 ["build"]
       82 CALL                             R6 1 -1
       83 RETURN                           R6 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["parseSlashCommandArgs"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 DUPTABLE                         R2 K2 [{"maxTriangles"}]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K3 ["getOptionalNumber"]
        9 GETTABLEKS                       R4 R1 K1 ["maxTriangles"]
       11 CALL                             R3 1 1
       12 SETTABLEKS                       R3 R2 K1 ["maxTriangles"]
       14 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridges"]
        3 GETTABLEKS                       R0 R0 K1 ["MeshGen"]
        5 GETTABLEKS                       R0 R0 K2 ["createGuestContext"]
        7 LOADNIL                          R1
        8 LOADNIL                          R2
        9 CALL                             R0 2 1
       10 GETTABLEKS                       R0 R0 K3 ["bridge"]
       12 GETIMPORT                        R1 K5 [pcall]
       14 GETTABLEKS                       R2 R0 K6 ["destroyViewportBoundingBoxAsync"]
       16 DUPTABLE                         R3 K8 [{"uniqueId"}]
       17 GETUPVAL                         R4 1
       18 SETTABLEKS                       R4 R3 K7 ["uniqueId"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_14:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+34]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["bridges"]
        6 GETTABLEKS                       R2 R2 K1 ["MeshGen"]
        8 GETTABLEKS                       R2 R2 K2 ["createGuestContext"]
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 CALL                             R2 2 1
       13 GETTABLEKS                       R2 R2 K3 ["bridge"]
       15 GETIMPORT                        R3 K5 [pcall]
       17 GETTABLEKS                       R4 R2 K6 ["createViewportBoundingBoxAsync"]
       19 CALL                             R3 1 2
       20 JUMPIFNOT                        R3 ; [+50]
       21 JUMPIFNOT                        R4 ; [+49]
       22 DUPTABLE                         R5 K12 [{["uniqueId"], ["name"], ["className"], ["isValid"] = }]
       23 GETTABLEKS                       R6 R4 K7 ["uniqueId"]
       25 SETTABLEKS                       R6 R5 K7 ["uniqueId"]
       27 GETTABLEKS                       R6 R4 K8 ["name"]
       29 SETTABLEKS                       R6 R5 K8 ["name"]
       31 GETTABLEKS                       R6 R4 K9 ["className"]
       33 SETTABLEKS                       R6 R5 K9 ["className"]
       35 MOVE                             R1 R5
       36 JUMP                             ; [+34]
       37 GETUPVAL                         R2 2
       38 GETTABLEKS                       R2 R2 K13 ["FFlagAssistantSegmentationBridge"]
       40 JUMPIFNOT                        R2 ; [+30]
       41 GETUPVAL                         R2 1
       42 GETTABLEKS                       R2 R2 K0 ["bridges"]
       44 GETTABLEKS                       R2 R2 K1 ["MeshGen"]
       46 GETTABLEKS                       R2 R2 K2 ["createGuestContext"]
       48 LOADNIL                          R3
       49 LOADNIL                          R4
       50 CALL                             R2 2 1
       51 GETTABLEKS                       R2 R2 K3 ["bridge"]
       53 GETTABLEKS                       R3 R2 K14 ["getSelectedBoundingBox"]
       55 CALL                             R3 0 1
       56 JUMPIFNOT                        R3 ; [+14]
       57 DUPTABLE                         R4 K12 [{["uniqueId"], ["name"], ["className"], ["isValid"] = }]
       58 GETTABLEKS                       R5 R3 K7 ["uniqueId"]
       60 SETTABLEKS                       R5 R4 K7 ["uniqueId"]
       62 GETTABLEKS                       R5 R3 K8 ["name"]
       64 SETTABLEKS                       R5 R4 K8 ["name"]
       66 GETTABLEKS                       R5 R3 K9 ["className"]
       68 SETTABLEKS                       R5 R4 K9 ["className"]
       70 MOVE                             R1 R4
       71 GETUPVAL                         R3 3
       72 JUMPIFNOT                        R3 ; [+8]
       73 GETUPVAL                         R4 3
       74 LENGTH                           R3 R4
       75 LOADN                            R4 0
       76 JUMPIFNOTLT                      R4 R3 ; [+4]
       78 GETUPVAL                         R3 3
       79 GETTABLEN                        R2 R3 1
       80 JUMP                             ; [+1]
       81 LOADNIL                          R2
       82 GETUPVAL                         R4 2
       83 GETTABLEKS                       R4 R4 K15 ["FFlagAssistantSegmentationPromptModeSelector"]
       85 JUMPIFNOT                        R4 ; [+5]
       86 JUMPIFNOT                        R2 ; [+4]
       87 GETUPVAL                         R3 4
       88 GETTABLEKS                       R3 R3 K16 ["Image"]
       90 JUMP                             ; [+3]
       91 GETUPVAL                         R3 4
       92 GETTABLEKS                       R3 R3 K17 ["Text"]
       94 GETUPVAL                         R5 5
       95 GETUPVAL                         R6 6
       96 GETTABLEKS                       R6 R6 K18 ["parseSlashCommandArgs"]
       98 MOVE                             R7 R5
       99 CALL                             R6 1 1
      100 DUPTABLE                         R4 K20 [{"maxTriangles"}]
      101 GETUPVAL                         R7 6
      102 GETTABLEKS                       R7 R7 K21 ["getOptionalNumber"]
      104 GETTABLEKS                       R8 R6 K19 ["maxTriangles"]
      106 CALL                             R7 1 1
      107 SETTABLEKS                       R7 R4 K19 ["maxTriangles"]
      109 GETUPVAL                         R6 4
      110 GETTABLEKS                       R6 R6 K17 ["Text"]
      112 JUMPIFEQ                         R3 R6 ; [+2]
      114 LOADB                            R5 0 +1
      115 LOADB                            R5 1
      116 NEWTABLE                         R6 0 0
      118 GETUPVAL                         R7 0
      119 JUMPIFNOT                        R7 ; [+31]
      120 DUPTABLE                         R9 K25 [{"name", "inputType", "initialValue", "options"}]
      121 GETUPVAL                         R10 7
      122 GETTABLEKS                       R10 R10 K26 ["PromptMode"]
      124 SETTABLEKS                       R10 R9 K8 ["name"]
      126 GETUPVAL                         R10 8
      127 GETTABLEKS                       R10 R10 K27 ["Option"]
      129 SETTABLEKS                       R10 R9 K22 ["inputType"]
      131 SETTABLEKS                       R3 R9 K23 ["initialValue"]
      133 NEWTABLE                         R10 0 2
      135 GETUPVAL                         R11 4
      136 GETTABLEKS                       R11 R11 K17 ["Text"]
      138 GETUPVAL                         R12 4
      139 GETTABLEKS                       R12 R12 K16 ["Image"]
      141 SETLIST                          R10 R11 2 [1]
      143 SETTABLEKS                       R10 R9 K24 ["options"]
      145 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      147 MOVE                             R8 R6
      148 GETIMPORT                        R7 K30 [table.insert]
      150 CALL                             R7 2 0
      151 GETUPVAL                         R7 2
      152 GETTABLEKS                       R7 R7 K31 ["FFlagGen3dSegmentationSelector"]
      154 JUMPIFNOT                        R7 ; [+23]
      155 DUPTABLE                         R9 K32 [{"name", "inputType", "initialValue"}]
      156 GETUPVAL                         R10 7
      157 GETTABLEKS                       R10 R10 K33 ["TextPrompt"]
      159 SETTABLEKS                       R10 R9 K8 ["name"]
      161 GETUPVAL                         R10 8
      162 GETTABLEKS                       R10 R10 K34 ["String"]
      164 SETTABLEKS                       R10 R9 K22 ["inputType"]
      166 JUMPIFNOT                        R5 ; [+2]
      167 GETUPVAL                         R10 5
      168 JUMP                             ; [+1]
      169 LOADNIL                          R10
      170 SETTABLEKS                       R10 R9 K23 ["initialValue"]
      172 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      174 MOVE                             R8 R6
      175 GETIMPORT                        R7 K30 [table.insert]
      177 CALL                             R7 2 0
      178 GETUPVAL                         R7 0
      179 JUMPIFNOT                        R7 ; [+24]
      180 DUPTABLE                         R9 K32 [{"name", "inputType", "initialValue"}]
      181 GETUPVAL                         R10 7
      182 GETTABLEKS                       R10 R10 K35 ["HintImage"]
      184 SETTABLEKS                       R10 R9 K8 ["name"]
      186 GETUPVAL                         R10 8
      187 GETTABLEKS                       R10 R10 K16 ["Image"]
      189 SETTABLEKS                       R10 R9 K22 ["inputType"]
      191 JUMPIF                           R5 ; [+3]
      192 JUMPIFNOT                        R2 ; [+2]
      193 MOVE                             R10 R2
      194 JUMP                             ; [+1]
      195 LOADNIL                          R10
      196 SETTABLEKS                       R10 R9 K23 ["initialValue"]
      198 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      200 MOVE                             R8 R6
      201 GETIMPORT                        R7 K30 [table.insert]
      203 CALL                             R7 2 0
      204 DUPTABLE                         R9 K38 [{"name", "inputType", "initialValue", "min", "max"}]
      205 GETUPVAL                         R10 7
      206 GETTABLEKS                       R10 R10 K39 ["MaxTriangles"]
      208 SETTABLEKS                       R10 R9 K8 ["name"]
      210 GETUPVAL                         R10 8
      211 GETTABLEKS                       R10 R10 K40 ["Number"]
      213 SETTABLEKS                       R10 R9 K22 ["inputType"]
      215 GETTABLEKS                       R10 R4 K19 ["maxTriangles"]
      217 JUMPIF                           R10 ; [+3]
      218 GETUPVAL                         R10 2
      219 GETTABLEKS                       R10 R10 K41 ["FIntAssistantMeshGenMaxTrianglesDefault"]
      221 SETTABLEKS                       R10 R9 K23 ["initialValue"]
      223 GETUPVAL                         R10 9
      224 SETTABLEKS                       R10 R9 K36 ["min"]
      226 GETUPVAL                         R10 10
      227 SETTABLEKS                       R10 R9 K37 ["max"]
      229 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      231 MOVE                             R8 R6
      232 GETIMPORT                        R7 K30 [table.insert]
      234 CALL                             R7 2 0
      235 GETUPVAL                         R7 2
      236 GETTABLEKS                       R7 R7 K31 ["FFlagGen3dSegmentationSelector"]
      238 JUMPIFNOT                        R7 ; [+36]
      239 DUPTABLE                         R9 K42 [{["name"], ["inputType"], ["initialValue"] = }]
      240 GETUPVAL                         R10 7
      241 GETTABLEKS                       R10 R10 K43 ["TextPartNames"]
      243 SETTABLEKS                       R10 R9 K8 ["name"]
      245 GETUPVAL                         R10 8
      246 GETTABLEKS                       R10 R10 K44 ["Array"]
      248 SETTABLEKS                       R10 R9 K22 ["inputType"]
      250 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      252 MOVE                             R8 R6
      253 GETIMPORT                        R7 K30 [table.insert]
      255 CALL                             R7 2 0
      256 GETUPVAL                         R7 0
      257 JUMPIFNOT                        R7 ; [+17]
      258 DUPTABLE                         R9 K42 [{["name"], ["inputType"], ["initialValue"] = }]
      259 GETUPVAL                         R10 7
      260 GETTABLEKS                       R10 R10 K45 ["ImagePartNames"]
      262 SETTABLEKS                       R10 R9 K8 ["name"]
      264 GETUPVAL                         R10 8
      265 GETTABLEKS                       R10 R10 K44 ["Array"]
      267 SETTABLEKS                       R10 R9 K22 ["inputType"]
      269 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      271 MOVE                             R8 R6
      272 GETIMPORT                        R7 K30 [table.insert]
      274 CALL                             R7 2 0
      275 GETUPVAL                         R7 0
      276 JUMPIFNOT                        R7 ; [+21]
      277 GETUPVAL                         R7 2
      278 GETTABLEKS                       R7 R7 K31 ["FFlagGen3dSegmentationSelector"]
      280 JUMPIFNOT                        R7 ; [+17]
      281 DUPTABLE                         R9 K47 [{["name"], ["inputType"], ["initialValue"] = True}]
      282 GETUPVAL                         R10 7
      283 GETTABLEKS                       R10 R10 K48 ["SuggestSegmentation"]
      285 SETTABLEKS                       R10 R9 K8 ["name"]
      287 GETUPVAL                         R10 8
      288 GETTABLEKS                       R10 R10 K49 ["Boolean"]
      290 SETTABLEKS                       R10 R9 K22 ["inputType"]
      292 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      294 MOVE                             R8 R6
      295 GETIMPORT                        R7 K30 [table.insert]
      297 CALL                             R7 2 0
      298 DUPTABLE                         R9 K32 [{"name", "inputType", "initialValue"}]
      299 GETUPVAL                         R10 7
      300 GETTABLEKS                       R10 R10 K50 ["SelectedInstanceRef"]
      302 SETTABLEKS                       R10 R9 K8 ["name"]
      304 GETUPVAL                         R10 8
      305 GETTABLEKS                       R10 R10 K51 ["Instance"]
      307 SETTABLEKS                       R10 R9 K22 ["inputType"]
      309 SETTABLEKS                       R1 R9 K23 ["initialValue"]
      311 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      313 MOVE                             R8 R6
      314 GETIMPORT                        R7 K30 [table.insert]
      316 CALL                             R7 2 0
      317 NEWTABLE                         R7 0 0
      319 GETUPVAL                         R8 2
      320 GETTABLEKS                       R8 R8 K52 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      322 JUMPIFNOT                        R8 ; [+146]
      323 GETUPVAL                         R8 0
      324 JUMPIFNOT                        R8 ; [+99]
      325 MOVE                             R9 R7
      326 GETUPVAL                         R10 11
      327 DUPTABLE                         R11 K57 [{"kind", "field", "cases", "default"}]
      328 GETUPVAL                         R12 12
      329 GETTABLEKS                       R12 R12 K58 ["Branch"]
      331 SETTABLEKS                       R12 R11 K53 ["kind"]
      333 GETUPVAL                         R12 7
      334 GETTABLEKS                       R12 R12 K26 ["PromptMode"]
      336 SETTABLEKS                       R12 R11 K54 ["field"]
      338 NEWTABLE                         R12 2 0
      340 GETUPVAL                         R13 4
      341 GETTABLEKS                       R13 R13 K17 ["Text"]
      343 GETUPVAL                         R14 11
      344 DUPTABLE                         R15 K59 [{"kind", "field"}]
      345 GETUPVAL                         R16 12
      346 GETTABLEKS                       R16 R16 K60 ["NonEmpty"]
      348 SETTABLEKS                       R16 R15 K53 ["kind"]
      350 GETUPVAL                         R16 7
      351 GETTABLEKS                       R16 R16 K33 ["TextPrompt"]
      353 SETTABLEKS                       R16 R15 K54 ["field"]
      355 CALL                             R14 1 1
      356 SETTABLE                         R14 R12 R13
      357 GETUPVAL                         R13 4
      358 GETTABLEKS                       R13 R13 K16 ["Image"]
      360 GETUPVAL                         R14 11
      361 DUPTABLE                         R15 K59 [{"kind", "field"}]
      362 GETUPVAL                         R16 12
      363 GETTABLEKS                       R16 R16 K60 ["NonEmpty"]
      365 SETTABLEKS                       R16 R15 K53 ["kind"]
      367 GETUPVAL                         R16 7
      368 GETTABLEKS                       R16 R16 K35 ["HintImage"]
      370 SETTABLEKS                       R16 R15 K54 ["field"]
      372 CALL                             R14 1 1
      373 SETTABLE                         R14 R12 R13
      374 SETTABLEKS                       R12 R11 K55 ["cases"]
      376 GETUPVAL                         R12 11
      377 DUPTABLE                         R13 K62 [{"kind", "rules"}]
      378 GETUPVAL                         R14 12
      379 GETTABLEKS                       R14 R14 K63 ["Any"]
      381 SETTABLEKS                       R14 R13 K53 ["kind"]
      383 NEWTABLE                         R14 0 2
      385 GETUPVAL                         R15 11
      386 DUPTABLE                         R16 K59 [{"kind", "field"}]
      387 GETUPVAL                         R17 12
      388 GETTABLEKS                       R17 R17 K60 ["NonEmpty"]
      390 SETTABLEKS                       R17 R16 K53 ["kind"]
      392 GETUPVAL                         R17 7
      393 GETTABLEKS                       R17 R17 K33 ["TextPrompt"]
      395 SETTABLEKS                       R17 R16 K54 ["field"]
      397 CALL                             R15 1 1
      398 GETUPVAL                         R16 11
      399 DUPTABLE                         R17 K59 [{"kind", "field"}]
      400 GETUPVAL                         R18 12
      401 GETTABLEKS                       R18 R18 K60 ["NonEmpty"]
      403 SETTABLEKS                       R18 R17 K53 ["kind"]
      405 GETUPVAL                         R18 7
      406 GETTABLEKS                       R18 R18 K35 ["HintImage"]
      408 SETTABLEKS                       R18 R17 K54 ["field"]
      410 CALL                             R16 1 -1
      411 SETLIST                          R14 R15 -1 [1]
      413 SETTABLEKS                       R14 R13 K61 ["rules"]
      415 CALL                             R12 1 1
      416 SETTABLEKS                       R12 R11 K56 ["default"]
      418 CALL                             R10 1 -1
      419 FASTCALL                         TABLE_INSERT ; [+2]
      420 GETIMPORT                        R8 K30 [table.insert]
      422 CALL                             R8 -1 0
      423 JUMP                             ; [+45]
      424 MOVE                             R9 R7
      425 GETUPVAL                         R10 11
      426 DUPTABLE                         R11 K62 [{"kind", "rules"}]
      427 GETUPVAL                         R12 12
      428 GETTABLEKS                       R12 R12 K63 ["Any"]
      430 SETTABLEKS                       R12 R11 K53 ["kind"]
      432 NEWTABLE                         R12 0 2
      434 GETUPVAL                         R13 11
      435 DUPTABLE                         R14 K59 [{"kind", "field"}]
      436 GETUPVAL                         R15 12
      437 GETTABLEKS                       R15 R15 K60 ["NonEmpty"]
      439 SETTABLEKS                       R15 R14 K53 ["kind"]
      441 GETUPVAL                         R15 7
      442 GETTABLEKS                       R15 R15 K33 ["TextPrompt"]
      444 SETTABLEKS                       R15 R14 K54 ["field"]
      446 CALL                             R13 1 1
      447 GETUPVAL                         R14 11
      448 DUPTABLE                         R15 K59 [{"kind", "field"}]
      449 GETUPVAL                         R16 12
      450 GETTABLEKS                       R16 R16 K60 ["NonEmpty"]
      452 SETTABLEKS                       R16 R15 K53 ["kind"]
      454 GETUPVAL                         R16 7
      455 GETTABLEKS                       R16 R16 K35 ["HintImage"]
      457 SETTABLEKS                       R16 R15 K54 ["field"]
      459 CALL                             R14 1 -1
      460 SETLIST                          R12 R13 -1 [1]
      462 SETTABLEKS                       R12 R11 K61 ["rules"]
      464 CALL                             R10 1 -1
      465 FASTCALL                         TABLE_INSERT ; [+2]
      466 GETIMPORT                        R8 K30 [table.insert]
      468 CALL                             R8 -1 0
      469 DUPTABLE                         R8 K67 [{"formId", "fields", "validation"}]
      470 GETUPVAL                         R9 13
      471 GETTABLEKS                       R9 R9 K64 ["formId"]
      473 SETTABLEKS                       R9 R8 K64 ["formId"]
      475 SETTABLEKS                       R6 R8 K65 ["fields"]
      477 LENGTH                           R10 R7
      478 LOADN                            R11 0
      479 JUMPIFNOTLT                      R11 R10 ; [+12]
      481 GETUPVAL                         R9 11
      482 DUPTABLE                         R10 K62 [{"kind", "rules"}]
      483 GETUPVAL                         R11 12
      484 GETTABLEKS                       R11 R11 K68 ["All"]
      486 SETTABLEKS                       R11 R10 K53 ["kind"]
      488 SETTABLEKS                       R7 R10 K61 ["rules"]
      490 CALL                             R9 1 1
      491 JUMP                             ; [+1]
      492 LOADNIL                          R9
      493 SETTABLEKS                       R9 R8 K66 ["validation"]
      495 LOADNIL                          R9
      496 GETUPVAL                         R10 0
      497 JUMPIFNOT                        R10 ; [+7]
      498 JUMPIFEQKNIL                     R1 ; [+6]
      500 GETTABLEKS                       R10 R1 K7 ["uniqueId"]
      502 NEWCLOSURE                       R9 P0
      503 CAPTURE                          UPVAL U1
      504 CAPTURE                          VAL R10
      505 DUPTABLE                         R10 K70 [{"name", "arguments"}]
      506 GETUPVAL                         R11 14
      507 GETTABLEKS                       R11 R11 K71 ["AskInput"]
      509 SETTABLEKS                       R11 R10 K8 ["name"]
      511 SETTABLEKS                       R8 R10 K69 ["arguments"]
      513 MOVE                             R11 R9
      514 RETURN                           R10 2

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["readAskInputValues"]
        3 LENGTH                           R3 R0
        4 GETTABLE                         R2 R0 R3
        5 CALL                             R1 1 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["PromptMode"]
        9 GETTABLE                         R3 R1 R4
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K2 ["Image"]
       13 JUMPIFEQ                         R3 R4 ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 JUMPIFNOT                        R2 ; [+5]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K3 ["ImagePartNames"]
       21 GETTABLE                         R3 R1 R4
       22 JUMP                             ; [+4]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K4 ["TextPartNames"]
       26 GETTABLE                         R3 R1 R4
       27 GETUPVAL                         R4 3
       28 GETTABLEKS                       R4 R4 K5 ["resolveUri"]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K6 ["HintImage"]
       33 GETTABLE                         R5 R1 R6
       34 CALL                             R4 1 1
       35 DUPTABLE                         R5 K20 [{["async"], ["textPrompt"], ["size"] = , ["maxTriangles"], ["partNames"], ["suggestSegmentation"], ["segmentationMode"] = , ["hintImage"], ["promptMode"], ["isManualRun"] = True, ["selectedInstanceRef"]}]
       36 GETUPVAL                         R7 4
       37 GETTABLEKS                       R7 R7 K21 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
       39 JUMPIFNOT                        R7 ; [+2]
       40 LOADB                            R6 1
       41 JUMP                             ; [+1]
       42 LOADNIL                          R6
       43 SETTABLEKS                       R6 R5 K7 ["async"]
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R8 R8 K23 ["TextPrompt"]
       48 GETTABLE                         R7 R1 R8
       49 ORK                              R6 R7 K22 [""]
       50 SETTABLEKS                       R6 R5 K8 ["textPrompt"]
       52 GETUPVAL                         R7 1
       53 GETTABLEKS                       R7 R7 K24 ["MaxTriangles"]
       55 GETTABLE                         R6 R1 R7
       56 SETTABLEKS                       R6 R5 K11 ["maxTriangles"]
       58 SETTABLEKS                       R3 R5 K12 ["partNames"]
       60 GETUPVAL                         R7 1
       61 GETTABLEKS                       R7 R7 K25 ["SuggestSegmentation"]
       63 GETTABLE                         R6 R1 R7
       64 SETTABLEKS                       R6 R5 K13 ["suggestSegmentation"]
       66 SETTABLEKS                       R4 R5 K15 ["hintImage"]
       68 GETUPVAL                         R7 1
       69 GETTABLEKS                       R7 R7 K1 ["PromptMode"]
       71 GETTABLE                         R6 R1 R7
       72 SETTABLEKS                       R6 R5 K16 ["promptMode"]
       74 GETUPVAL                         R7 1
       75 GETTABLEKS                       R7 R7 K26 ["SelectedInstanceRef"]
       77 GETTABLE                         R6 R1 R7
       78 SETTABLEKS                       R6 R5 K19 ["selectedInstanceRef"]
       80 GETUPVAL                         R6 4
       81 GETTABLEKS                       R6 R6 K21 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
       83 JUMPIF                           R6 ; [+17]
       84 DUPTABLE                         R6 K29 [{"name", "arguments"}]
       85 GETUPVAL                         R7 5
       86 GETTABLEKS                       R7 R7 K30 ["JobRun"]
       88 SETTABLEKS                       R7 R6 K27 ["name"]
       90 DUPTABLE                         R7 K32 [{"toolName", "arguments"}]
       91 GETUPVAL                         R8 5
       92 GETTABLEKS                       R8 R8 K33 ["MeshGen"]
       94 SETTABLEKS                       R8 R7 K31 ["toolName"]
       96 SETTABLEKS                       R5 R7 K28 ["arguments"]
       98 SETTABLEKS                       R7 R6 K28 ["arguments"]
      100 RETURN                           R6 1
      101 DUPTABLE                         R6 K29 [{"name", "arguments"}]
      102 GETUPVAL                         R7 5
      103 GETTABLEKS                       R7 R7 K33 ["MeshGen"]
      105 SETTABLEKS                       R7 R6 K27 ["name"]
      107 SETTABLEKS                       R5 R6 K28 ["arguments"]
      109 RETURN                           R6 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantSegmentationPromptModeSelector"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          UPVAL U8
       16 CAPTURE                          UPVAL U9
       17 CAPTURE                          UPVAL U10
       18 CAPTURE                          UPVAL U11
       19 DUPCLOSURE                       R4 K1 [PROTO_15]
       20 CAPTURE                          UPVAL U12
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U13
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U11
       26 NEWTABLE                         R5 0 2
       28 MOVE                             R6 R3
       29 MOVE                             R7 R4
       30 SETLIST                          R5 R6 2 [1]
       32 RETURN                           R5 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["MeshGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_18:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U4
       10 NEWCLOSURE                       R3 P1
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          VAL R2
       13 CAPTURE                          UPVAL U6
       14 GETUPVAL                         R4 7
       15 GETTABLEKS                       R4 R4 K1 ["define"]
       17 CALL                             R4 0 1
       18 GETUPVAL                         R6 8
       19 GETTABLEKS                       R6 R6 K2 ["MeshGen"]
       21 NAMECALL                         R4 R4 K3 ["setName"]
       23 CALL                             R4 2 1
       24 LOADK                            R6 K4 ["Generates a textured mesh from a prompt using AI."]
       25 NAMECALL                         R4 R4 K5 ["setDescription"]
       27 CALL                             R4 2 1
       28 LOADK                            R6 K6 ["textPrompt"]
       29 DUPTABLE                         R7 K11 [{["type"] = "string", ["description"] = "The text prompt describing the mesh to generate."}]
       30 NAMECALL                         R4 R4 K12 ["addArgument"]
       32 CALL                             R4 3 1
       33 LOADK                            R6 K13 ["size"]
       34 DUPTABLE                         R7 K18 [{["type"] = "object", ["description"] = "The generation's bounding box size. The generation will try to fit within this volume. Try to approximate a good size based on textPrompt.", ["properties"], ["required"]}]
       35 DUPTABLE                         R8 K22 [{"x", "y", "z"}]
       36 DUPTABLE                         R9 K25 [{["type"] = "number", ["description"] = "X dimension scalar."}]
       37 SETTABLEKS                       R9 R8 K19 ["x"]
       39 DUPTABLE                         R9 K27 [{["type"] = "number", ["description"] = "Y dimension scalar."}]
       40 SETTABLEKS                       R9 R8 K20 ["y"]
       42 DUPTABLE                         R9 K29 [{["type"] = "number", ["description"] = "Z dimension scalar."}]
       43 SETTABLEKS                       R9 R8 K21 ["z"]
       45 SETTABLEKS                       R8 R7 K16 ["properties"]
       47 NEWTABLE                         R8 0 3
       49 LOADK                            R9 K19 ["x"]
       50 LOADK                            R10 K20 ["y"]
       51 LOADK                            R11 K21 ["z"]
       52 SETLIST                          R8 R9 3 [1]
       54 SETTABLEKS                       R8 R7 K17 ["required"]
       56 NAMECALL                         R4 R4 K30 ["addOptionalArgument"]
       58 CALL                             R4 3 1
       59 LOADK                            R6 K31 ["maxTriangles"]
       60 DUPTABLE                         R7 K32 [{["type"] = "number", ["description"]}]
       61 LOADK                            R8 K33 ["The maximum number of triangles for the generated mesh. If provided, this must be between %* and %* (inclusive)."]
       62 GETUPVAL                         R10 9
       63 GETUPVAL                         R11 10
       64 NAMECALL                         R8 R8 K34 ["format"]
       66 CALL                             R8 3 1
       67 SETTABLEKS                       R8 R7 K9 ["description"]
       69 NAMECALL                         R4 R4 K30 ["addOptionalArgument"]
       71 CALL                             R4 3 1
       72 LOADK                            R6 K35 ["partNames"]
       73 DUPTABLE                         R7 K36 [{["type"] = "string", ["description"]}]
       74 GETUPVAL                         R9 1
       75 GETTABLEKS                       R9 R9 K37 ["FFlagAssistantGen3dAutoSegmentation"]
       77 JUMPIFNOT                        R9 ; [+2]
       78 LOADK                            R8 K38 ["List of part names defining the schema for the generated mesh. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel') or a JSON array of strings (e.g. ['body', 'left wheel', 'right wheel']). Required when segmentation='explicit'. Maximum 8 parts (excess will be truncated)."]
       79 JUMP                             ; [+1]
       80 LOADK                            R8 K39 ["List of part names defining the schema for the generated mesh. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel') or a JSON array of strings. When provided, a SchemaDefinition is used instead of the default PredefinedSchema."]
       81 SETTABLEKS                       R8 R7 K9 ["description"]
       83 NAMECALL                         R4 R4 K30 ["addOptionalArgument"]
       85 CALL                             R4 3 1
       86 GETUPVAL                         R5 1
       87 GETTABLEKS                       R5 R5 K37 ["FFlagAssistantGen3dAutoSegmentation"]
       89 JUMPIFNOT                        R5 ; [+10]
       90 LOADK                            R7 K40 ["segmentation"]
       91 DUPTABLE                         R8 K43 [{["type"] = "string", ["enum"], ["description"] = "Controls how the mesh is broken into parts. Pick based on the user's wording:\n- Omit (or \"auto\"): user did NOT mention parts/segmentation (e.g. \"generate a car\"). The tool will derive parts automatically via an internal LLM call.\n- \"none\": user explicitly asked for no parts / a single piece (e.g. \"generate a car with no parts\", \"as one mesh\", \"single piece\").\n- \"explicit\": user named specific parts (e.g. \"a car with body and wheels\"). You MUST also pass partNames with the user's listed parts (max 8).\n"}]
       92 GETUPVAL                         R9 11
       93 GETTABLEKS                       R9 R9 K44 ["SegmentationArgValues"]
       95 SETTABLEKS                       R9 R8 K41 ["enum"]
       97 NAMECALL                         R5 R4 K30 ["addOptionalArgument"]
       99 CALL                             R5 3 0
      100 DUPTABLE                         R7 K52 [{["title"] = "Mesh Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      101 NAMECALL                         R5 R4 K53 ["setAnnotations"]
      103 CALL                             R5 2 1
      104 MOVE                             R7 R3
      105 NAMECALL                         R5 R5 K54 ["setHandler"]
      107 CALL                             R5 2 1
      108 NAMECALL                         R5 R5 K55 ["build"]
      110 CALL                             R5 1 1
      111 DUPCLOSURE                       R6 K56 [PROTO_12]
      112 CAPTURE                          UPVAL U12
      113 NEWCLOSURE                       R7 P3
      114 CAPTURE                          UPVAL U1
      115 CAPTURE                          VAL R0
      116 CAPTURE                          UPVAL U13
      117 CAPTURE                          UPVAL U12
      118 CAPTURE                          UPVAL U14
      119 CAPTURE                          UPVAL U15
      120 CAPTURE                          UPVAL U9
      121 CAPTURE                          UPVAL U10
      122 CAPTURE                          UPVAL U16
      123 CAPTURE                          UPVAL U17
      124 CAPTURE                          UPVAL U18
      125 CAPTURE                          UPVAL U8
      126 CAPTURE                          UPVAL U19
      127 CAPTURE                          UPVAL U20
      128 DUPTABLE                         R8 K61 [{["command"] = "generate_mesh", ["getDescription"], ["runToolChain"]}]
      129 DUPCLOSURE                       R9 K62 [PROTO_17]
      130 CAPTURE                          UPVAL U21
      131 SETTABLEKS                       R9 R8 K59 ["getDescription"]
      133 SETTABLEKS                       R7 R8 K60 ["runToolChain"]
      135 DUPTABLE                         R9 K67 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      136 SETTABLEKS                       R5 R9 K63 ["definition"]
      138 NEWTABLE                         R10 0 1
      140 MOVE                             R11 R8
      141 SETLIST                          R10 R11 1 [1]
      143 SETTABLEKS                       R10 R9 K64 ["slashCommands"]
      145 DUPCLOSURE                       R10 K68 [PROTO_18]
      146 SETTABLEKS                       R10 R9 K65 ["getPreExecuteWarning"]
      148 DUPTABLE                         R10 K71 [{["resetTimeoutOnProgress"] = True}]
      149 SETTABLEKS                       R10 R9 K66 ["toolCallOptions"]
      151 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["ModelContextProtocol"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R4 K9 ["AskInput"]
       20 GETTABLEKS                       R4 R4 K10 ["AskInputTypes"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Flags"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Util"]
       32 GETTABLEKS                       R6 R6 K12 ["ImageContentStore"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Util"]
       39 GETTABLEKS                       R7 R7 K13 ["MeshGen"]
       41 GETTABLEKS                       R7 R7 K14 ["MeshGenConstants"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K8 ["Util"]
       48 GETTABLEKS                       R8 R8 K13 ["MeshGen"]
       50 GETTABLEKS                       R8 R8 K15 ["MeshGenSchemaSelector"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R0 K8 ["Util"]
       57 GETTABLEKS                       R9 R9 K13 ["MeshGen"]
       59 GETTABLEKS                       R9 R9 K16 ["MeshGenTypes"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K6 [require]
       64 GETTABLEKS                       R10 R0 K8 ["Util"]
       66 GETTABLEKS                       R10 R10 K17 ["Gen3dUtils"]
       68 GETTABLEKS                       R10 R10 K18 ["PromptTemplate"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K6 [require]
       73 GETTABLEKS                       R11 R0 K8 ["Util"]
       75 GETTABLEKS                       R11 R11 K17 ["Gen3dUtils"]
       77 GETTABLEKS                       R11 R11 K19 ["SegmentationEnums"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K6 [require]
       82 GETTABLEKS                       R12 R0 K8 ["Util"]
       84 GETTABLEKS                       R12 R12 K17 ["Gen3dUtils"]
       86 GETTABLEKS                       R12 R12 K20 ["SingleImageGenerator"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K6 [require]
       91 GETTABLEKS                       R13 R0 K8 ["Util"]
       93 GETTABLEKS                       R13 R13 K21 ["SlashCommandArgs"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K6 [require]
       98 GETTABLEKS                       R14 R0 K8 ["Util"]
      100 GETTABLEKS                       R14 R14 K22 ["SlashCommandConfiguration"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K6 [require]
      105 GETTABLEKS                       R15 R0 K23 ["Tools"]
      107 GETTABLEKS                       R15 R15 K24 ["ToolTypes"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K6 [require]
      112 GETTABLEKS                       R16 R0 K8 ["Util"]
      114 GETTABLEKS                       R16 R16 K25 ["ToolUtils"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K6 [require]
      119 GETTABLEKS                       R17 R0 K26 ["Resources"]
      121 GETTABLEKS                       R17 R17 K27 ["Localization"]
      123 GETTABLEKS                       R17 R17 K28 ["Translator"]
      125 CALL                             R16 1 1
      126 GETIMPORT                        R17 K6 [require]
      128 GETTABLEKS                       R18 R0 K29 ["Types"]
      130 CALL                             R17 1 1
      131 GETTABLEKS                       R18 R2 K8 ["Util"]
      133 GETTABLEKS                       R18 R18 K30 ["ToolBuilder"]
      135 GETTABLEKS                       R19 R2 K8 ["Util"]
      137 GETTABLEKS                       R19 R19 K31 ["ToolResult"]
      139 GETTABLEKS                       R20 R14 K32 ["ToolNames"]
      141 GETTABLEKS                       R21 R6 K33 ["MAX_TRIANGLES_LOWER_BOUND"]
      143 GETTABLEKS                       R22 R6 K34 ["MAX_TRIANGLES_UPPER_BOUND"]
      145 GETTABLEKS                       R23 R3 K35 ["INPUT_TYPE"]
      147 GETTABLEKS                       R24 R3 K36 ["RULE_KIND"]
      149 GETTABLEKS                       R25 R3 K37 ["asRule"]
      151 GETTABLEKS                       R26 R10 K38 ["PromptMode"]
      153 GETTABLEKS                       R27 R13 K39 ["Configs"]
      155 GETTABLEKS                       R27 R27 K13 ["MeshGen"]
      157 GETTABLEKS                       R28 R27 K40 ["row"]
      159 DUPCLOSURE                       R29 K41 [PROTO_1]
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R21
      164 CAPTURE                          VAL R22
      165 CAPTURE                          VAL R7
      166 DUPCLOSURE                       R30 K42 [PROTO_19]
      167 CAPTURE                          VAL R29
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R9
      170 CAPTURE                          VAL R11
      171 CAPTURE                          VAL R8
      172 CAPTURE                          VAL R15
      173 CAPTURE                          VAL R19
      174 CAPTURE                          VAL R18
      175 CAPTURE                          VAL R20
      176 CAPTURE                          VAL R21
      177 CAPTURE                          VAL R22
      178 CAPTURE                          VAL R10
      179 CAPTURE                          VAL R12
      180 CAPTURE                          VAL R26
      181 CAPTURE                          VAL R28
      182 CAPTURE                          VAL R23
      183 CAPTURE                          VAL R25
      184 CAPTURE                          VAL R24
      185 CAPTURE                          VAL R27
      186 CAPTURE                          VAL R3
      187 CAPTURE                          VAL R5
      188 CAPTURE                          VAL R16
      189 RETURN                           R30 1
