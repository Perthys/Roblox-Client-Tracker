PROTO_0:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_3:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["LocalPlayer"]
        3 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K1 ["LocalPlayer is nil"]
        7 GETIMPORT                        R1 K3 [assert]
        9 CALL                             R1 2 0
       10 GETTABLEKS                       R1 R0 K4 ["UserId"]
       12 RETURN                           R1 1

PROTO_6:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["GameId"]
        4 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+7]
        3 GETUPVAL                         R0 1
        4 LOADB                            R2 0
        5 NAMECALL                         R0 R0 K0 ["GenerateGUID"]
        7 CALL                             R0 2 1
        8 SETUPVAL                         R0 0
        9 GETUPVAL                         R1 0
       10 FASTCALL2K                       ASSERT R1 K1 ; [+4]
       12 LOADK                            R2 K1 ["Failed to generate studio session ID"]
       13 GETIMPORT                        R0 K3 [assert]
       15 CALL                             R0 2 0
       16 GETUPVAL                         R0 0
       17 RETURN                           R0 1

PROTO_8:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R0 K4 [{[1] = "", ["ImageRectOffset"], ["ImageRectSize"]}]
        1 GETIMPORT                        R1 K7 [Vector2.new]
        3 LOADN                            R2 0
        4 LOADN                            R3 0
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K2 ["ImageRectOffset"]
        8 GETIMPORT                        R1 K7 [Vector2.new]
       10 LOADN                            R2 16
       11 LOADN                            R3 16
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K3 ["ImageRectSize"]
       15 RETURN                           R0 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["Source"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateWebStreamClient"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["RequestAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["JSONEncode"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_15:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_16:
        0 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["script"]
        2 GETTABLEKS                       R2 R0 K1 ["source"]
        4 SETTABLEKS                       R2 R1 K2 ["Source"]
        6 RETURN                           R0 0

PROTO_18:
        0 SETTABLEKS                       R1 R0 K0 ["Source"]
        2 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getEngineFeature"]
        3 LOADK                            R3 K1 ["AsyncRenamesUsedInLuaApps"]
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETUPVAL                         R2 1
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 NAMECALL                         R2 R2 K2 ["GetFreeModelsAsync"]
       11 CALL                             R2 3 -1
       12 RETURN                           R2 -1
       13 GETUPVAL                         R2 1
       14 MOVE                             R4 R0
       15 MOVE                             R5 R1
       16 NAMECALL                         R2 R2 K3 ["GetFreeModels"]
       18 CALL                             R2 3 -1
       19 RETURN                           R2 -1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["GenerateModelAsync"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CaptureScreenshot"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CreateMeshPartAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_23:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Decal"]
        3 CALL                             R1 1 1
        4 LOADK                            R3 K4 ["rbxassetid://"]
        5 MOVE                             R4 R0
        6 CONCAT                           R2 R3 R4
        7 SETTABLEKS                       R2 R1 K5 ["Texture"]
        9 RETURN                           R1 1

PROTO_24:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Decal"]
        3 CALL                             R1 1 1
        4 LOADK                            R3 K4 ["rbxassetid://"]
        5 MOVE                             R4 R0
        6 CONCAT                           R2 R3 R4
        7 SETTABLEKS                       R2 R1 K5 ["ColorMap"]
        9 RETURN                           R1 1

PROTO_25:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Sound"]
        3 CALL                             R1 1 1
        4 LOADK                            R3 K4 ["rbxassetid://"]
        5 MOVE                             R4 R0
        6 CONCAT                           R2 R3 R4
        7 SETTABLEKS                       R2 R1 K5 ["SoundId"]
        9 RETURN                           R1 1

PROTO_26:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["VideoFrame"]
        3 CALL                             R1 1 1
        4 LOADK                            R3 K4 ["rbxassetid://"]
        5 MOVE                             R4 R0
        6 CONCAT                           R2 R3 R4
        7 SETTABLEKS                       R2 R1 K5 ["Video"]
        9 GETIMPORT                        R2 K8 [UDim2.fromScale]
       11 LOADN                            R3 1
       12 LOADN                            R4 1
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R1 K9 ["Size"]
       16 RETURN                           R1 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetLogHistory"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_28:
        0 RETURN                           R0 0

PROTO_29:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_30:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Util"]
        5 GETTABLEKS                       R1 R1 K3 ["PrimitiveGen"]
        7 GETTABLEKS                       R1 R1 K4 ["PrimitiveGenMockData"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K5 ["MockFerrisWheelResult"]
       12 RETURN                           R1 1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getStandardHandlers"]
        3 CALL                             R0 0 1
        4 LOADNIL                          R1
        5 LOADNIL                          R2
        6 NEWTABLE                         R3 128 0
        8 GETUPVAL                         R4 1
        9 SETTABLEKS                       R4 R3 K1 ["EventLogger"]
       11 LOADK                            R4 K2 [""]
       12 SETTABLEKS                       R4 R3 K3 ["apisUrl"]
       14 DUPCLOSURE                       R4 K4 [PROTO_0]
       15 SETTABLEKS                       R4 R3 K5 ["isDevFrameworkAvailable"]
       17 DUPCLOSURE                       R4 K6 [PROTO_1]
       18 SETTABLEKS                       R4 R3 K7 ["isRobloxScriptSecurity"]
       20 DUPCLOSURE                       R4 K8 [PROTO_2]
       21 SETTABLEKS                       R4 R3 K9 ["isCompactionExperimentEnabled"]
       23 DUPCLOSURE                       R4 K10 [PROTO_3]
       24 SETTABLEKS                       R4 R3 K11 ["getEngineFeature"]
       26 GETUPVAL                         R4 2
       27 LOADK                            R5 K12 ["getNetworking"]
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K12 ["getNetworking"]
       31 DUPCLOSURE                       R4 K13 [PROTO_4]
       32 SETTABLEKS                       R4 R3 K14 ["getSystemPrompt"]
       34 DUPCLOSURE                       R4 K15 [PROTO_5]
       35 CAPTURE                          UPVAL U3
       36 SETTABLEKS                       R4 R3 K16 ["getUserId"]
       38 DUPCLOSURE                       R4 K17 [PROTO_6]
       39 SETTABLEKS                       R4 R3 K18 ["getGameId"]
       41 NEWCLOSURE                       R4 P7
       42 CAPTURE                          REF R1
       43 CAPTURE                          UPVAL U4
       44 SETTABLEKS                       R4 R3 K19 ["getStudioSessionId"]
       46 NEWCLOSURE                       R4 P8
       47 CAPTURE                          REF R1
       48 SETTABLEKS                       R4 R3 K20 ["resetStudioSessionId"]
       50 GETUPVAL                         R4 2
       51 LOADK                            R5 K21 ["copyToClipboard"]
       52 CALL                             R4 1 1
       53 SETTABLEKS                       R4 R3 K21 ["copyToClipboard"]
       55 DUPCLOSURE                       R4 K22 [PROTO_9]
       56 SETTABLEKS                       R4 R3 K23 ["getClassIcon"]
       58 GETTABLEKS                       R4 R0 K24 ["startRecording"]
       60 SETTABLEKS                       R4 R3 K24 ["startRecording"]
       62 GETTABLEKS                       R4 R0 K25 ["endRecording"]
       64 SETTABLEKS                       R4 R3 K25 ["endRecording"]
       66 DUPCLOSURE                       R4 K26 [PROTO_10]
       67 SETTABLEKS                       R4 R3 K27 ["getScriptSource"]
       69 GETUPVAL                         R4 2
       70 LOADK                            R5 K28 ["openScriptAsync"]
       71 CALL                             R4 1 1
       72 SETTABLEKS                       R4 R3 K28 ["openScriptAsync"]
       74 DUPTABLE                         R4 K32 [{"createWebStreamClient", "requestAsync", "openUrl"}]
       75 DUPCLOSURE                       R5 K33 [PROTO_11]
       76 CAPTURE                          UPVAL U4
       77 SETTABLEKS                       R5 R4 K29 ["createWebStreamClient"]
       79 DUPCLOSURE                       R5 K34 [PROTO_12]
       80 CAPTURE                          UPVAL U4
       81 SETTABLEKS                       R5 R4 K30 ["requestAsync"]
       83 GETUPVAL                         R5 2
       84 LOADK                            R6 K31 ["openUrl"]
       85 CALL                             R5 1 1
       86 SETTABLEKS                       R5 R4 K31 ["openUrl"]
       88 SETTABLEKS                       R4 R3 K35 ["http"]
       90 DUPTABLE                         R4 K38 [{"encodeAsync", "decodeAsync"}]
       91 DUPCLOSURE                       R5 K39 [PROTO_13]
       92 CAPTURE                          UPVAL U4
       93 SETTABLEKS                       R5 R4 K36 ["encodeAsync"]
       95 DUPCLOSURE                       R5 K40 [PROTO_14]
       96 CAPTURE                          UPVAL U4
       97 SETTABLEKS                       R5 R4 K37 ["decodeAsync"]
       99 SETTABLEKS                       R4 R3 K41 ["json"]
      101 DUPTABLE                         R4 K44 [{"get", "set"}]
      102 DUPCLOSURE                       R5 K45 [PROTO_15]
      103 SETTABLEKS                       R5 R4 K42 ["get"]
      105 DUPCLOSURE                       R5 K46 [PROTO_16]
      106 SETTABLEKS                       R5 R4 K43 ["set"]
      108 SETTABLEKS                       R4 R3 K47 ["selection"]
      110 DUPTABLE                         R4 K52 [{"getUniqueId", "getInstanceFromUniqueId", "pickInstanceAsync", "resolveInstanceByPathAsync"}]
      111 GETUPVAL                         R5 2
      112 LOADK                            R6 K48 ["getUniqueId"]
      113 CALL                             R5 1 1
      114 SETTABLEKS                       R5 R4 K48 ["getUniqueId"]
      116 GETUPVAL                         R5 2
      117 LOADK                            R6 K49 ["getInstanceFromUniqueId"]
      118 CALL                             R5 1 1
      119 SETTABLEKS                       R5 R4 K49 ["getInstanceFromUniqueId"]
      121 GETUPVAL                         R5 2
      122 LOADK                            R6 K50 ["pickInstanceAsync"]
      123 CALL                             R5 1 1
      124 SETTABLEKS                       R5 R4 K50 ["pickInstanceAsync"]
      126 GETUPVAL                         R5 2
      127 LOADK                            R6 K51 ["resolveInstanceByPathAsync"]
      128 CALL                             R5 1 1
      129 SETTABLEKS                       R5 R4 K51 ["resolveInstanceByPathAsync"]
      131 SETTABLEKS                       R4 R3 K53 ["instances"]
      133 DUPTABLE                         R4 K65 [{"executeLuau", "multiEdit", "marketplaceInsertion", "materialGen", "meshGen", "animationGen", "avatarAutoSetup", "screenCapture", "uploadImage", "assetSearch", "assetInsert"}]
      134 DUPTABLE                         R5 K68 [{"loadCode", "stopCode"}]
      135 GETUPVAL                         R6 2
      136 LOADK                            R7 K66 ["loadCode"]
      137 CALL                             R6 1 1
      138 SETTABLEKS                       R6 R5 K66 ["loadCode"]
      140 GETUPVAL                         R6 2
      141 LOADK                            R7 K67 ["stopCode"]
      142 CALL                             R6 1 1
      143 SETTABLEKS                       R6 R5 K67 ["stopCode"]
      145 SETTABLEKS                       R5 R4 K54 ["executeLuau"]
      147 DUPTABLE                         R5 K71 [{"updateScriptSourceAsync", "applyScriptSourceDirectly"}]
      148 DUPCLOSURE                       R6 K72 [PROTO_17]
      149 SETTABLEKS                       R6 R5 K69 ["updateScriptSourceAsync"]
      151 DUPCLOSURE                       R6 K73 [PROTO_18]
      152 SETTABLEKS                       R6 R5 K70 ["applyScriptSourceDirectly"]
      154 SETTABLEKS                       R5 R4 K55 ["multiEdit"]
      156 DUPTABLE                         R5 K76 [{"getFreeModelsAsync", "loadAssetAsync"}]
      157 NEWCLOSURE                       R6 P19
      158 CAPTURE                          REF R2
      159 CAPTURE                          UPVAL U5
      160 SETTABLEKS                       R6 R5 K74 ["getFreeModelsAsync"]
      162 GETUPVAL                         R6 6
      163 GETTABLEKS                       R6 R6 K77 ["getStandardHandler"]
      165 GETUPVAL                         R7 7
      166 CALL                             R6 1 1
      167 SETTABLEKS                       R6 R5 K75 ["loadAssetAsync"]
      169 SETTABLEKS                       R5 R4 K56 ["marketplaceInsertion"]
      171 DUPTABLE                         R5 K80 [{"generateMaterialVariantsAsync", "uploadMaterialsAsync"}]
      172 GETUPVAL                         R6 2
      173 LOADK                            R7 K78 ["generateMaterialVariantsAsync"]
      174 CALL                             R6 1 1
      175 SETTABLEKS                       R6 R5 K78 ["generateMaterialVariantsAsync"]
      177 GETUPVAL                         R6 2
      178 LOADK                            R7 K79 ["uploadMaterialsAsync"]
      179 CALL                             R6 1 1
      180 SETTABLEKS                       R6 R5 K79 ["uploadMaterialsAsync"]
      182 SETTABLEKS                       R5 R4 K57 ["materialGen"]
      184 DUPTABLE                         R5 K87 [{"generateModelAsync", "publishModelAsync", "loadAssetAsync", "activateScaleTool", "exportInstanceToGlbAsync", "exportMeshToGlbAsync", "loadModelFromUrlAsync"}]
      185 DUPCLOSURE                       R6 K88 [PROTO_20]
      186 CAPTURE                          UPVAL U8
      187 SETTABLEKS                       R6 R5 K81 ["generateModelAsync"]
      189 GETUPVAL                         R6 2
      190 LOADK                            R7 K82 ["publishModelAsync"]
      191 CALL                             R6 1 1
      192 SETTABLEKS                       R6 R5 K82 ["publishModelAsync"]
      194 GETUPVAL                         R6 6
      195 GETTABLEKS                       R6 R6 K77 ["getStandardHandler"]
      197 GETUPVAL                         R7 7
      198 CALL                             R6 1 1
      199 SETTABLEKS                       R6 R5 K75 ["loadAssetAsync"]
      201 GETUPVAL                         R6 2
      202 LOADK                            R7 K83 ["activateScaleTool"]
      203 CALL                             R6 1 1
      204 SETTABLEKS                       R6 R5 K83 ["activateScaleTool"]
      206 GETUPVAL                         R6 2
      207 LOADK                            R7 K84 ["exportInstanceToGlbAsync"]
      208 CALL                             R6 1 1
      209 SETTABLEKS                       R6 R5 K84 ["exportInstanceToGlbAsync"]
      211 GETUPVAL                         R6 2
      212 LOADK                            R7 K85 ["exportMeshToGlbAsync"]
      213 CALL                             R6 1 1
      214 SETTABLEKS                       R6 R5 K85 ["exportMeshToGlbAsync"]
      216 GETUPVAL                         R6 2
      217 LOADK                            R7 K86 ["loadModelFromUrlAsync"]
      218 CALL                             R6 1 1
      219 SETTABLEKS                       R6 R5 K86 ["loadModelFromUrlAsync"]
      221 SETTABLEKS                       R5 R4 K58 ["meshGen"]
      223 GETUPVAL                         R6 9
      224 GETTABLEKS                       R6 R6 K89 ["FFlagAssistantAnimationGenTool"]
      226 JUMPIFNOT                        R6 ; [+7]
      227 DUPTABLE                         R5 K91 [{"generateAnimationAsync"}]
      228 GETUPVAL                         R6 2
      229 LOADK                            R7 K90 ["generateAnimationAsync"]
      230 CALL                             R6 1 1
      231 SETTABLEKS                       R6 R5 K90 ["generateAnimationAsync"]
      233 JUMP                             ; [+1]
      234 LOADNIL                          R5
      235 SETTABLEKS                       R5 R4 K59 ["animationGen"]
      237 GETUPVAL                         R6 9
      238 GETTABLEKS                       R6 R6 K92 ["FFlagAssistantAvatarAutoSetupTool"]
      240 JUMPIFNOT                        R6 ; [+12]
      241 DUPTABLE                         R5 K95 [{"autoSetupAsync", "cancelAutoSetup"}]
      242 GETUPVAL                         R6 2
      243 LOADK                            R7 K93 ["autoSetupAsync"]
      244 CALL                             R6 1 1
      245 SETTABLEKS                       R6 R5 K93 ["autoSetupAsync"]
      247 GETUPVAL                         R6 2
      248 LOADK                            R7 K94 ["cancelAutoSetup"]
      249 CALL                             R6 1 1
      250 SETTABLEKS                       R6 R5 K94 ["cancelAutoSetup"]
      252 JUMP                             ; [+1]
      253 LOADNIL                          R5
      254 SETTABLEKS                       R5 R4 K60 ["avatarAutoSetup"]
      256 DUPTABLE                         R5 K98 [{"getImageDataBase64Async", "captureScreenshot"}]
      257 GETUPVAL                         R6 2
      258 LOADK                            R7 K96 ["getImageDataBase64Async"]
      259 CALL                             R6 1 1
      260 SETTABLEKS                       R6 R5 K96 ["getImageDataBase64Async"]
      262 DUPCLOSURE                       R6 K99 [PROTO_21]
      263 CAPTURE                          UPVAL U10
      264 SETTABLEKS                       R6 R5 K97 ["captureScreenshot"]
      266 SETTABLEKS                       R5 R4 K61 ["screenCapture"]
      268 DUPTABLE                         R5 K103 [{"loadImageAsync", "publishAssetAsync", "searchAssetAsync"}]
      269 GETUPVAL                         R6 2
      270 LOADK                            R7 K100 ["loadImageAsync"]
      271 CALL                             R6 1 1
      272 SETTABLEKS                       R6 R5 K100 ["loadImageAsync"]
      274 GETUPVAL                         R6 2
      275 LOADK                            R7 K101 ["publishAssetAsync"]
      276 CALL                             R6 1 1
      277 SETTABLEKS                       R6 R5 K101 ["publishAssetAsync"]
      279 GETUPVAL                         R6 2
      280 LOADK                            R7 K102 ["searchAssetAsync"]
      281 CALL                             R6 1 1
      282 SETTABLEKS                       R6 R5 K102 ["searchAssetAsync"]
      284 SETTABLEKS                       R5 R4 K62 ["uploadImage"]
      286 DUPTABLE                         R5 K110 [{"getStudioIdentity", "searchCreatorInventoryAsync", "fetchUserGroupsAsync", "searchCreatorStoreAssetsAsync", "getThumbnailsUrl", "getCreatorHubUrl"}]
      287 GETUPVAL                         R6 2
      288 LOADK                            R7 K111 ["assetSearch.getStudioIdentity"]
      289 CALL                             R6 1 1
      290 SETTABLEKS                       R6 R5 K104 ["getStudioIdentity"]
      292 GETUPVAL                         R6 2
      293 LOADK                            R7 K112 ["assetSearch.searchCreatorInventoryAsync"]
      294 CALL                             R6 1 1
      295 SETTABLEKS                       R6 R5 K105 ["searchCreatorInventoryAsync"]
      297 GETUPVAL                         R6 2
      298 LOADK                            R7 K113 ["assetSearch.fetchUserGroupsAsync"]
      299 CALL                             R6 1 1
      300 SETTABLEKS                       R6 R5 K106 ["fetchUserGroupsAsync"]
      302 GETUPVAL                         R6 2
      303 LOADK                            R7 K114 ["assetSearch.searchCreatorStoreAssetsAsync"]
      304 CALL                             R6 1 1
      305 SETTABLEKS                       R6 R5 K107 ["searchCreatorStoreAssetsAsync"]
      307 GETUPVAL                         R6 2
      308 LOADK                            R7 K115 ["assetSearch.getThumbnailsUrl"]
      309 CALL                             R6 1 1
      310 SETTABLEKS                       R6 R5 K108 ["getThumbnailsUrl"]
      312 GETUPVAL                         R6 2
      313 LOADK                            R7 K116 ["assetSearch.getCreatorHubUrl"]
      314 CALL                             R6 1 1
      315 SETTABLEKS                       R6 R5 K109 ["getCreatorHubUrl"]
      317 SETTABLEKS                       R5 R4 K63 ["assetSearch"]
      319 DUPTABLE                         R5 K128 [{"getObjects", "getItemDetailsAsync", "loadPackageAssetAsync", "insertAudioAsset", "getAudioApiByDefault", "assignSourceAssetId", "createMeshPartAsync", "createDecal", "createDecalFromImage", "createSound", "createVideoFrame"}]
      320 GETUPVAL                         R6 2
      321 LOADK                            R7 K129 ["assetInsert.getObjects"]
      322 CALL                             R6 1 1
      323 SETTABLEKS                       R6 R5 K117 ["getObjects"]
      325 GETUPVAL                         R6 2
      326 LOADK                            R7 K130 ["assetInsert.getItemDetailsAsync"]
      327 CALL                             R6 1 1
      328 SETTABLEKS                       R6 R5 K118 ["getItemDetailsAsync"]
      330 GETUPVAL                         R6 2
      331 LOADK                            R7 K131 ["assetInsert.loadPackageAssetAsync"]
      332 CALL                             R6 1 1
      333 SETTABLEKS                       R6 R5 K119 ["loadPackageAssetAsync"]
      335 GETUPVAL                         R6 2
      336 LOADK                            R7 K132 ["assetInsert.insertAudioAsset"]
      337 CALL                             R6 1 1
      338 SETTABLEKS                       R6 R5 K120 ["insertAudioAsset"]
      340 GETUPVAL                         R6 2
      341 LOADK                            R7 K133 ["assetInsert.getAudioApiByDefault"]
      342 CALL                             R6 1 1
      343 SETTABLEKS                       R6 R5 K121 ["getAudioApiByDefault"]
      345 GETUPVAL                         R6 2
      346 LOADK                            R7 K134 ["assetInsert.assignSourceAssetId"]
      347 CALL                             R6 1 1
      348 SETTABLEKS                       R6 R5 K122 ["assignSourceAssetId"]
      350 DUPCLOSURE                       R6 K135 [PROTO_22]
      351 CAPTURE                          UPVAL U7
      352 SETTABLEKS                       R6 R5 K123 ["createMeshPartAsync"]
      354 DUPCLOSURE                       R6 K136 [PROTO_23]
      355 SETTABLEKS                       R6 R5 K124 ["createDecal"]
      357 DUPCLOSURE                       R6 K137 [PROTO_24]
      358 SETTABLEKS                       R6 R5 K125 ["createDecalFromImage"]
      360 DUPCLOSURE                       R6 K138 [PROTO_25]
      361 SETTABLEKS                       R6 R5 K126 ["createSound"]
      363 DUPCLOSURE                       R6 K139 [PROTO_26]
      364 SETTABLEKS                       R6 R5 K127 ["createVideoFrame"]
      366 SETTABLEKS                       R5 R4 K64 ["assetInsert"]
      368 SETTABLEKS                       R4 R3 K140 ["tools"]
      370 GETUPVAL                         R4 2
      371 LOADK                            R5 K141 ["convertImageDataToTempIdAsync"]
      372 CALL                             R4 1 1
      373 SETTABLEKS                       R4 R3 K141 ["convertImageDataToTempIdAsync"]
      375 GETUPVAL                         R4 2
      376 LOADK                            R5 K142 ["releaseTempIdAsync"]
      377 CALL                             R4 1 1
      378 SETTABLEKS                       R4 R3 K142 ["releaseTempIdAsync"]
      380 GETUPVAL                         R4 2
      381 LOADK                            R5 K143 ["getSettingsAsync"]
      382 CALL                             R4 1 1
      383 SETTABLEKS                       R4 R3 K143 ["getSettingsAsync"]
      385 GETUPVAL                         R4 2
      386 LOADK                            R5 K144 ["setSettingsAsync"]
      387 CALL                             R4 1 1
      388 SETTABLEKS                       R4 R3 K144 ["setSettingsAsync"]
      390 GETUPVAL                         R4 2
      391 LOADK                            R5 K145 ["getUserSettingsAsync"]
      392 CALL                             R4 1 1
      393 SETTABLEKS                       R4 R3 K145 ["getUserSettingsAsync"]
      395 GETUPVAL                         R4 2
      396 LOADK                            R5 K146 ["setUserSettingsAsync"]
      397 CALL                             R4 1 1
      398 SETTABLEKS                       R4 R3 K146 ["setUserSettingsAsync"]
      400 GETUPVAL                         R4 2
      401 LOADK                            R5 K147 ["getPluginSetting"]
      402 CALL                             R4 1 1
      403 SETTABLEKS                       R4 R3 K147 ["getPluginSetting"]
      405 GETUPVAL                         R4 2
      406 LOADK                            R5 K148 ["setPluginSetting"]
      407 CALL                             R4 1 1
      408 SETTABLEKS                       R4 R3 K148 ["setPluginSetting"]
      410 GETUPVAL                         R4 2
      411 LOADK                            R5 K149 ["getSecureSettingsAsync"]
      412 CALL                             R4 1 1
      413 SETTABLEKS                       R4 R3 K149 ["getSecureSettingsAsync"]
      415 GETUPVAL                         R4 2
      416 LOADK                            R5 K150 ["setSecureSettingsAsync"]
      417 CALL                             R4 1 1
      418 SETTABLEKS                       R4 R3 K150 ["setSecureSettingsAsync"]
      420 GETUPVAL                         R4 2
      421 LOADK                            R5 K151 ["base64EncodeAsync"]
      422 CALL                             R4 1 1
      423 SETTABLEKS                       R4 R3 K151 ["base64EncodeAsync"]
      425 GETUPVAL                         R4 2
      426 LOADK                            R5 K152 ["generatePKCEAsync"]
      427 CALL                             R4 1 1
      428 SETTABLEKS                       R4 R3 K152 ["generatePKCEAsync"]
      430 GETUPVAL                         R4 2
      431 LOADK                            R5 K153 ["startMCPAuthAsync"]
      432 CALL                             R4 1 1
      433 SETTABLEKS                       R4 R3 K153 ["startMCPAuthAsync"]
      435 GETUPVAL                         R4 2
      436 LOADK                            R5 K154 ["setupMCPServerAsync"]
      437 CALL                             R4 1 1
      438 SETTABLEKS                       R4 R3 K154 ["setupMCPServerAsync"]
      440 GETUPVAL                         R4 2
      441 LOADK                            R5 K155 ["getScopePermissionsAsync"]
      442 CALL                             R4 1 1
      443 SETTABLEKS                       R4 R3 K155 ["getScopePermissionsAsync"]
      445 GETUPVAL                         R4 2
      446 LOADK                            R5 K156 ["setScopePermissionsAsync"]
      447 CALL                             R4 1 1
      448 SETTABLEKS                       R4 R3 K156 ["setScopePermissionsAsync"]
      450 GETUPVAL                         R4 2
      451 LOADK                            R5 K157 ["getAvailableScopesAsync"]
      452 CALL                             R4 1 1
      453 SETTABLEKS                       R4 R3 K157 ["getAvailableScopesAsync"]
      455 GETUPVAL                         R4 2
      456 LOADK                            R5 K158 ["getScopeRiskLevelsAsync"]
      457 CALL                             R4 1 1
      458 SETTABLEKS                       R4 R3 K158 ["getScopeRiskLevelsAsync"]
      460 GETUPVAL                         R4 2
      461 LOADK                            R5 K159 ["getSelectedPresetAsync"]
      462 CALL                             R4 1 1
      463 SETTABLEKS                       R4 R3 K159 ["getSelectedPresetAsync"]
      465 GETUPVAL                         R4 2
      466 LOADK                            R5 K160 ["setSelectedPresetAsync"]
      467 CALL                             R4 1 1
      468 SETTABLEKS                       R4 R3 K160 ["setSelectedPresetAsync"]
      470 GETUPVAL                         R4 2
      471 LOADK                            R5 K161 ["startStopPlayAsync"]
      472 CALL                             R4 1 1
      473 SETTABLEKS                       R4 R3 K161 ["startStopPlayAsync"]
      475 DUPCLOSURE                       R4 K162 [PROTO_27]
      476 CAPTURE                          UPVAL U11
      477 SETTABLEKS                       R4 R3 K163 ["getLogHistory"]
      479 GETUPVAL                         R4 2
      480 LOADK                            R5 K164 ["subscribeOutput"]
      481 CALL                             R4 1 1
      482 SETTABLEKS                       R4 R3 K164 ["subscribeOutput"]
      484 GETUPVAL                         R4 2
      485 LOADK                            R5 K165 ["subscribeGameLoaded"]
      486 CALL                             R4 1 1
      487 SETTABLEKS                       R4 R3 K165 ["subscribeGameLoaded"]
      489 GETUPVAL                         R4 2
      490 LOADK                            R5 K166 ["subscribeGameStopped"]
      491 CALL                             R4 1 1
      492 SETTABLEKS                       R4 R3 K166 ["subscribeGameStopped"]
      494 GETUPVAL                         R4 2
      495 LOADK                            R5 K167 ["openFileDialogAsync"]
      496 CALL                             R4 1 1
      497 SETTABLEKS                       R4 R3 K167 ["openFileDialogAsync"]
      499 GETUPVAL                         R4 2
      500 LOADK                            R5 K168 ["importFileBinaryAsync"]
      501 CALL                             R4 1 1
      502 SETTABLEKS                       R4 R3 K168 ["importFileBinaryAsync"]
      504 DUPCLOSURE                       R4 K169 [PROTO_28]
      505 SETTABLEKS                       R4 R3 K170 ["printToStudioLogAsync"]
      507 DUPTABLE                         R4 K174 [{"fileExistsAsync", "readFileAsync", "modifyFileAsync"}]
      508 GETUPVAL                         R5 2
      509 LOADK                            R6 K175 ["quickConnect.fileExistsAsync"]
      510 CALL                             R5 1 1
      511 SETTABLEKS                       R5 R4 K171 ["fileExistsAsync"]
      513 GETUPVAL                         R5 2
      514 LOADK                            R6 K176 ["quickConnect.readFileAsync"]
      515 CALL                             R5 1 1
      516 SETTABLEKS                       R5 R4 K172 ["readFileAsync"]
      518 GETUPVAL                         R5 2
      519 LOADK                            R6 K177 ["quickConnect.modifyFileAsync"]
      520 CALL                             R5 1 1
      521 SETTABLEKS                       R5 R4 K173 ["modifyFileAsync"]
      523 SETTABLEKS                       R4 R3 K178 ["quickConnect"]
      525 DUPTABLE                         R4 K184 [{"getManifestAsync", "fetchContentAsync", "publishNewAsync", "publishUpdateAsync", "deleteAsync"}]
      526 GETUPVAL                         R5 2
      527 LOADK                            R6 K185 ["userSkillAssets.getManifestAsync"]
      528 CALL                             R5 1 1
      529 SETTABLEKS                       R5 R4 K179 ["getManifestAsync"]
      531 GETUPVAL                         R5 2
      532 LOADK                            R6 K186 ["userSkillAssets.fetchContentAsync"]
      533 CALL                             R5 1 1
      534 SETTABLEKS                       R5 R4 K180 ["fetchContentAsync"]
      536 GETUPVAL                         R5 2
      537 LOADK                            R6 K187 ["userSkillAssets.publishNewAsync"]
      538 CALL                             R5 1 1
      539 SETTABLEKS                       R5 R4 K181 ["publishNewAsync"]
      541 GETUPVAL                         R5 2
      542 LOADK                            R6 K188 ["userSkillAssets.publishUpdateAsync"]
      543 CALL                             R5 1 1
      544 SETTABLEKS                       R5 R4 K182 ["publishUpdateAsync"]
      546 GETUPVAL                         R5 2
      547 LOADK                            R6 K189 ["userSkillAssets.deleteAsync"]
      548 CALL                             R5 1 1
      549 SETTABLEKS                       R5 R4 K183 ["deleteAsync"]
      551 SETTABLEKS                       R4 R3 K190 ["userSkillAssets"]
      553 DUPTABLE                         R4 K194 [{"getAssetsAsync", "uploadAssetsAsync", "deleteAssetAsync"}]
      554 GETUPVAL                         R5 2
      555 LOADK                            R6 K195 ["cloudSkillAssets.getAssetsAsync"]
      556 CALL                             R5 1 1
      557 SETTABLEKS                       R5 R4 K191 ["getAssetsAsync"]
      559 GETUPVAL                         R5 2
      560 LOADK                            R6 K196 ["cloudSkillAssets.uploadAssetsAsync"]
      561 CALL                             R5 1 1
      562 SETTABLEKS                       R5 R4 K192 ["uploadAssetsAsync"]
      564 GETUPVAL                         R5 2
      565 LOADK                            R6 K197 ["cloudSkillAssets.deleteAssetAsync"]
      566 CALL                             R5 1 1
      567 SETTABLEKS                       R5 R4 K193 ["deleteAssetAsync"]
      569 SETTABLEKS                       R4 R3 K198 ["cloudSkillAssets"]
      571 GETUPVAL                         R4 2
      572 LOADK                            R5 K199 ["getStudioPlayState"]
      573 CALL                             R4 1 1
      574 SETTABLEKS                       R4 R3 K199 ["getStudioPlayState"]
      576 GETUPVAL                         R4 2
      577 LOADK                            R5 K200 ["getFocusedDataModelType"]
      578 CALL                             R4 1 1
      579 SETTABLEKS                       R4 R3 K200 ["getFocusedDataModelType"]
      581 GETUPVAL                         R4 2
      582 LOADK                            R5 K201 ["isEditDataModelAvailable"]
      583 CALL                             R4 1 1
      584 SETTABLEKS                       R4 R3 K201 ["isEditDataModelAvailable"]
      586 GETUPVAL                         R4 2
      587 LOADK                            R5 K202 ["subscribeEditDataModelAvailabilityChanged"]
      588 CALL                             R4 1 1
      589 SETTABLEKS                       R4 R3 K202 ["subscribeEditDataModelAvailabilityChanged"]
      591 GETUPVAL                         R4 2
      592 LOADK                            R5 K203 ["fetchSystemPromptAsync"]
      593 CALL                             R4 1 1
      594 SETTABLEKS                       R4 R3 K203 ["fetchSystemPromptAsync"]
      596 DUPTABLE                         R4 K206 [{"startAsync", "getStatusAsync"}]
      597 GETUPVAL                         R5 2
      598 LOADK                            R6 K207 ["imageGeneration.startAsync"]
      599 CALL                             R5 1 1
      600 SETTABLEKS                       R5 R4 K204 ["startAsync"]
      602 GETUPVAL                         R5 2
      603 LOADK                            R6 K208 ["imageGeneration.getStatusAsync"]
      604 CALL                             R5 1 1
      605 SETTABLEKS                       R5 R4 K205 ["getStatusAsync"]
      607 SETTABLEKS                       R4 R3 K209 ["imageGeneration"]
      609 DUPTABLE                         R4 K206 [{"startAsync", "getStatusAsync"}]
      610 GETUPVAL                         R5 2
      611 LOADK                            R6 K210 ["layoutGeneration.startAsync"]
      612 CALL                             R5 1 1
      613 SETTABLEKS                       R5 R4 K204 ["startAsync"]
      615 GETUPVAL                         R5 2
      616 LOADK                            R6 K211 ["layoutGeneration.getStatusAsync"]
      617 CALL                             R5 1 1
      618 SETTABLEKS                       R5 R4 K205 ["getStatusAsync"]
      620 SETTABLEKS                       R4 R3 K212 ["layoutGeneration"]
      622 DUPTABLE                         R4 K213 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
      623 GETUPVAL                         R5 2
      624 LOADK                            R6 K214 ["segmentMesh.startAsync"]
      625 CALL                             R5 1 1
      626 SETTABLEKS                       R5 R4 K204 ["startAsync"]
      628 GETUPVAL                         R5 2
      629 LOADK                            R6 K215 ["segmentMesh.getStatusAsync"]
      630 CALL                             R5 1 1
      631 SETTABLEKS                       R5 R4 K205 ["getStatusAsync"]
      633 GETUPVAL                         R5 2
      634 LOADK                            R6 K216 ["segmentMesh.publishAssetAsync"]
      635 CALL                             R5 1 1
      636 SETTABLEKS                       R5 R4 K101 ["publishAssetAsync"]
      638 GETUPVAL                         R5 2
      639 LOADK                            R6 K217 ["segmentMesh.loadAssetAsync"]
      640 CALL                             R5 1 1
      641 SETTABLEKS                       R5 R4 K75 ["loadAssetAsync"]
      643 SETTABLEKS                       R4 R3 K218 ["segmentMesh"]
      645 DUPTABLE                         R4 K213 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
      646 GETUPVAL                         R5 2
      647 LOADK                            R6 K219 ["textureGeneration.startAsync"]
      648 CALL                             R5 1 1
      649 SETTABLEKS                       R5 R4 K204 ["startAsync"]
      651 GETUPVAL                         R5 2
      652 LOADK                            R6 K220 ["textureGeneration.getStatusAsync"]
      653 CALL                             R5 1 1
      654 SETTABLEKS                       R5 R4 K205 ["getStatusAsync"]
      656 GETUPVAL                         R5 2
      657 LOADK                            R6 K221 ["textureGeneration.publishAssetAsync"]
      658 CALL                             R5 1 1
      659 SETTABLEKS                       R5 R4 K101 ["publishAssetAsync"]
      661 GETUPVAL                         R5 2
      662 LOADK                            R6 K222 ["textureGeneration.loadAssetAsync"]
      663 CALL                             R5 1 1
      664 SETTABLEKS                       R5 R4 K75 ["loadAssetAsync"]
      666 SETTABLEKS                       R4 R3 K223 ["textureGeneration"]
      668 DUPCLOSURE                       R4 K224 [PROTO_29]
      669 SETTABLEKS                       R4 R3 K225 ["hasInternalPermission"]
      671 DUPCLOSURE                       R4 K226 [PROTO_30]
      672 CAPTURE                          UPVAL U12
      673 SETTABLEKS                       R4 R3 K227 ["getMockPrimGenBackendData"]
      675 GETUPVAL                         R4 2
      676 LOADK                            R5 K228 ["startMultiPlayerTest"]
      677 CALL                             R4 1 1
      678 SETTABLEKS                       R4 R3 K228 ["startMultiPlayerTest"]
      680 GETUPVAL                         R4 2
      681 LOADK                            R5 K229 ["stopMultiPlayerTest"]
      682 CALL                             R4 1 1
      683 SETTABLEKS                       R4 R3 K229 ["stopMultiPlayerTest"]
      685 GETUPVAL                         R4 2
      686 LOADK                            R5 K230 ["isInMultiPlayerTest"]
      687 CALL                             R4 1 1
      688 SETTABLEKS                       R4 R3 K230 ["isInMultiPlayerTest"]
      690 GETUPVAL                         R4 2
      691 LOADK                            R5 K231 ["getStopMultiPlayerTestResults"]
      692 CALL                             R4 1 1
      693 SETTABLEKS                       R4 R3 K232 ["subscribeStopMultiPlayerTestStateChanged"]
      695 GETUPVAL                         R4 2
      696 LOADK                            R5 K233 ["createMultiPlayersServer"]
      697 CALL                             R4 1 1
      698 SETTABLEKS                       R4 R3 K233 ["createMultiPlayersServer"]
      700 GETUPVAL                         R4 2
      701 LOADK                            R5 K234 ["createMultiPlayersClient"]
      702 CALL                             R4 1 1
      703 SETTABLEKS                       R4 R3 K234 ["createMultiPlayersClient"]
      705 GETUPVAL                         R4 2
      706 LOADK                            R5 K235 ["getExperimentFeatureEnabled"]
      707 CALL                             R4 1 1
      708 SETTABLEKS                       R4 R3 K235 ["getExperimentFeatureEnabled"]
      710 GETUPVAL                         R4 2
      711 LOADK                            R5 K236 ["getOnExperimentChangedSignal"]
      712 CALL                             R4 1 1
      713 SETTABLEKS                       R4 R3 K237 ["onceExperimentFeatureEnabled"]
      715 GETUPVAL                         R4 2
      716 LOADK                            R5 K238 ["getStudioState"]
      717 CALL                             R4 1 1
      718 SETTABLEKS                       R4 R3 K238 ["getStudioState"]
      720 MOVE                             R2 R3
      721 CLOSEUPVALS                      R1
      722 RETURN                           R2 1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["EventLogger"]
        3 GETTABLEKS                       R2 R2 K1 ["logErrorEvent"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EventLogger"]
        3 GETTABLEKS                       R1 R1 K1 ["logToolStarted"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EventLogger"]
        3 GETTABLEKS                       R1 R1 K1 ["logCompactionFallback"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EventLogger"]
        3 GETTABLEKS                       R1 R1 K1 ["logCompactionSuccess"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EventLogger"]
        3 GETTABLEKS                       R1 R1 K1 ["logThinkingBlock"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isCompactionExperimentEnabled"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_38:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Environment has not been set up yet"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 RETURN                           R0 1

PROTO_39:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["AssetService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["CaptureService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["GenerationService"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K5 [game]
       27 LOADK                            R6 K10 ["HttpService"]
       28 NAMECALL                         R4 R4 K7 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K5 [game]
       33 LOADK                            R7 K11 ["InsertService"]
       34 NAMECALL                         R5 R5 K7 ["GetService"]
       36 CALL                             R5 2 1
       37 GETIMPORT                        R6 K5 [game]
       39 LOADK                            R8 K12 ["LogService"]
       40 NAMECALL                         R6 R6 K7 ["GetService"]
       42 CALL                             R6 2 1
       43 GETIMPORT                        R7 K5 [game]
       45 LOADK                            R9 K13 ["Players"]
       46 NAMECALL                         R7 R7 K7 ["GetService"]
       48 CALL                             R7 2 1
       49 GETIMPORT                        R8 K15 [require]
       51 GETTABLEKS                       R9 R0 K16 ["Parent"]
       53 GETTABLEKS                       R9 R9 K17 ["AssistantHarness"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K15 [require]
       58 GETTABLEKS                       R10 R0 K16 ["Parent"]
       60 GETTABLEKS                       R10 R10 K18 ["DMNetworking"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K15 [require]
       65 GETIMPORT                        R11 K1 [script]
       67 GETTABLEKS                       R11 R11 K19 ["EventLogger"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K15 [require]
       72 GETTABLEKS                       R12 R0 K20 ["Flags"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K15 [require]
       77 GETTABLEKS                       R13 R0 K21 ["Guest"]
       79 GETTABLEKS                       R13 R13 K22 ["LoadAssetHandlers"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K15 [require]
       84 GETTABLEKS                       R14 R0 K23 ["Util"]
       86 GETTABLEKS                       R14 R14 K24 ["MultiPlayersConnection"]
       88 GETTABLEKS                       R14 R14 K25 ["MultiPlayerAgentTypes"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K15 [require]
       93 GETTABLEKS                       R15 R0 K16 ["Parent"]
       95 GETTABLEKS                       R15 R15 K26 ["ReactUtils"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K15 [require]
      100 GETTABLEKS                       R16 R0 K21 ["Guest"]
      102 GETTABLEKS                       R16 R16 K27 ["RecordingHandlers"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K15 [require]
      107 GETTABLEKS                       R17 R0 K28 ["Types"]
      109 CALL                             R16 1 1
      110 GETTABLEKS                       R17 R14 K29 ["createUnimplemented"]
      112 GETTABLEKS                       R18 R8 K30 ["Engine"]
      114 GETTABLEKS                       R18 R18 K31 ["EngineEnv"]
      116 DUPCLOSURE                       R19 K32 [PROTO_31]
      117 CAPTURE                          VAL R15
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R17
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R0
      130 MOVE                             R20 R19
      131 CALL                             R20 0 1
      132 GETTABLEKS                       R21 R18 K33 ["configure"]
      134 DUPTABLE                         R22 K36 [{"eventLogger", "isCompactionExperimentEnabled"}]
      135 DUPTABLE                         R23 K42 [{"logErrorEvent", "logToolStarted", "logCompactionFallback", "logCompactionSuccess", "logThinkingBlock"}]
      136 NEWCLOSURE                       R24 P1
      137 CAPTURE                          REF R20
      138 SETTABLEKS                       R24 R23 K37 ["logErrorEvent"]
      140 NEWCLOSURE                       R24 P2
      141 CAPTURE                          REF R20
      142 SETTABLEKS                       R24 R23 K38 ["logToolStarted"]
      144 NEWCLOSURE                       R24 P3
      145 CAPTURE                          REF R20
      146 SETTABLEKS                       R24 R23 K39 ["logCompactionFallback"]
      148 NEWCLOSURE                       R24 P4
      149 CAPTURE                          REF R20
      150 SETTABLEKS                       R24 R23 K40 ["logCompactionSuccess"]
      152 NEWCLOSURE                       R24 P5
      153 CAPTURE                          REF R20
      154 SETTABLEKS                       R24 R23 K41 ["logThinkingBlock"]
      156 SETTABLEKS                       R23 R22 K34 ["eventLogger"]
      158 NEWCLOSURE                       R23 P6
      159 CAPTURE                          REF R20
      160 SETTABLEKS                       R23 R22 K35 ["isCompactionExperimentEnabled"]
      162 CALL                             R21 1 0
      163 DUPTABLE                         R21 K46 [{"new", "get", "set"}]
      164 SETTABLEKS                       R19 R21 K43 ["new"]
      166 NEWCLOSURE                       R22 P7
      167 CAPTURE                          REF R20
      168 SETTABLEKS                       R22 R21 K44 ["get"]
      170 NEWCLOSURE                       R22 P8
      171 CAPTURE                          REF R20
      172 SETTABLEKS                       R22 R21 K45 ["set"]
      174 CLOSEUPVALS                      R20
      175 RETURN                           R21 1
