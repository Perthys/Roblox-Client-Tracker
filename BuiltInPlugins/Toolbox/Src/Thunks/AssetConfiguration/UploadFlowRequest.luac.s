PROTO_0:
        0 MOVE                             R2 R0
        1 JUMPIFNOT                        R2 ; [+5]
        2 MOVE                             R2 R1
        3 JUMPIFNOT                        R2 ; [+3]
        4 GETTABLEKS                       R3 R1 K0 ["Name"]
        6 GETTABLE                         R2 R0 R3
        7 MOVE                             R3 R2
        8 JUMPIFNOT                        R3 ; [+2]
        9 GETTABLEKS                       R3 R2 K1 ["allowedFileExtensions"]
       11 MOVE                             R4 R3
       12 JUMPIFNOT                        R4 ; [+6]
       13 LOADB                            R4 0
       14 LENGTH                           R5 R3
       15 LOADN                            R6 0
       16 JUMPIFNOTLT                      R6 R5 ; [+2]
       18 GETTABLEN                        R4 R3 1
       19 JUMPIFNOT                        R4 ; [+7]
       20 GETIMPORT                        R5 K4 [string.gsub]
       22 MOVE                             R6 R4
       23 LOADK                            R7 K5 ["^%."]
       24 LOADK                            R8 K6 [""]
       25 CALL                             R5 3 1
       26 JUMPIF                           R5 ; [+1]
       27 LOADK                            R5 K7 ["rbxm"]
       28 RETURN                           R5 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 NAMECALL                         R7 R6 K0 ["Clone"]
       11 CALL                             R7 1 1
       12 GETUPVAL                         R8 0
       13 MOVE                             R9 R7
       14 CALL                             R8 1 0
       15 SETTABLE                         R7 R1 R5
       16 FORGLOOP                         R2 2 ; [-8]
       18 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 NAMECALL                         R1 R0 K0 ["getState"]
        6 CALL                             R1 1 1
        7 JUMPIF                           R1 ; [+2]
        8 NEWTABLE                         R1 0 0
       10 GETTABLEKS                       R2 R1 K1 ["assetTypeEnum"]
       12 GETTABLEKS                       R3 R1 K2 ["currentTab"]
       14 GETTABLEKS                       R4 R1 K3 ["instances"]
       16 GETTABLEKS                       R5 R1 K4 ["isUploadFeeEnabled"]
       18 GETTABLEKS                       R6 R1 K5 ["uploadFee"]
       20 GETTABLEKS                       R7 R1 K6 ["allowedAssetTypesForUpload"]
       22 GETTABLEKS                       R8 R1 K7 ["allowedBundleTypeSettings"]
       24 GETTABLEKS                       R9 R1 K8 ["groupBundlesUploadEnabledForUser"]
       26 GETUPVAL                         R11 1
       27 CALL                             R11 0 1
       28 JUMPIFNOT                        R11 ; [+3]
       29 GETTABLEKS                       R10 R1 K9 ["specialAttributes"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R10
       33 GETTABLEKS                       R11 R1 K10 ["idToFiatProductMap"]
       35 JUMPIF                           R11 ; [+2]
       36 NEWTABLE                         R11 0 0
       38 GETUPVAL                         R14 2
       39 GETTABLEKS                       R14 R14 K11 ["assetId"]
       41 GETTABLE                         R13 R11 R14
       42 JUMPIFNOT                        R13 ; [+5]
       43 GETUPVAL                         R13 2
       44 GETTABLEKS                       R13 R13 K11 ["assetId"]
       46 GETTABLE                         R12 R11 R13
       47 JUMP                             ; [+4]
       48 GETUPVAL                         R12 3
       49 GETTABLEKS                       R12 R12 K12 ["getDefaultFiatProduct"]
       51 CALL                             R12 0 1
       52 GETUPVAL                         R13 4
       53 JUMPIF                           R13 ; [+9]
       54 GETUPVAL                         R13 5
       55 JUMPIFNOT                        R13 ; [+7]
       56 GETUPVAL                         R13 6
       57 GETUPVAL                         R14 2
       58 GETTABLEKS                       R14 R14 K13 ["ixp"]
       60 LOADK                            R15 K14 ["MarketplaceModelsAsPackages"]
       61 LOADK                            R16 K15 ["MarketplaceModelsAsPackagesEnabled"]
       62 CALL                             R13 3 1
       63 GETUPVAL                         R14 7
       64 GETTABLEKS                       R14 R14 K16 ["isMakeupAsset"]
       66 MOVE                             R15 R2
       67 CALL                             R14 1 1
       68 JUMPIFNOT                        R14 ; [+15]
       69 GETUPVAL                         R14 2
       70 GETTABLEKS                       R14 R14 K17 ["selectedColor"]
       72 JUMPIFNOT                        R14 ; [+11]
       73 JUMPIFNOT                        R4 ; [+10]
       74 GETTABLEN                        R14 R4 1
       75 JUMPIFNOT                        R14 ; [+8]
       76 GETUPVAL                         R14 7
       77 GETTABLEKS                       R14 R14 K18 ["addMakeupThumbnailConfiguration"]
       79 GETTABLEN                        R15 R4 1
       80 GETUPVAL                         R16 2
       81 GETTABLEKS                       R16 R16 K17 ["selectedColor"]
       83 CALL                             R14 2 0
       84 GETIMPORT                        R14 K22 [Enum.AssetType.Animation]
       86 JUMPIFEQ                         R2 R14 ; [+5]
       88 GETIMPORT                        R14 K24 [Enum.AssetType.EmoteAnimation]
       90 JUMPIFNOTEQ                      R2 R14 ; [+63]
       92 GETUPVAL                         R14 8
       93 MOVE                             R16 R3
       94 NAMECALL                         R14 R14 K25 ["isOverride"]
       96 CALL                             R14 2 1
       97 JUMPIFNOT                        R14 ; [+13]
       98 GETUPVAL                         R16 9
       99 GETUPVAL                         R17 2
      100 GETTABLEKS                       R17 R17 K26 ["networkInterface"]
      102 GETUPVAL                         R18 2
      103 GETTABLEKS                       R18 R18 K27 ["overrideAssetId"]
      105 MOVE                             R19 R4
      106 CALL                             R16 3 -1
      107 NAMECALL                         R14 R0 K28 ["dispatch"]
      109 CALL                             R14 -1 0
      110 RETURN                           R0 0
      111 GETUPVAL                         R16 10
      112 DUPTABLE                         R17 K37 [{["networkInterface"], ["assetId"] = 0, ["name"], ["description"], ["userId"], ["groupId"], ["assetTypeEnum"], ["expectedPrice"], ["instance"], ["publishService"]}]
      113 GETUPVAL                         R18 2
      114 GETTABLEKS                       R18 R18 K26 ["networkInterface"]
      116 SETTABLEKS                       R18 R17 K26 ["networkInterface"]
      118 GETUPVAL                         R18 2
      119 GETTABLEKS                       R18 R18 K30 ["name"]
      121 SETTABLEKS                       R18 R17 K30 ["name"]
      123 GETUPVAL                         R19 2
      124 GETTABLEKS                       R19 R19 K31 ["description"]
      126 ORK                              R18 R19 K38 [""]
      127 SETTABLEKS                       R18 R17 K31 ["description"]
      129 GETUPVAL                         R18 11
      130 CALL                             R18 0 1
      131 SETTABLEKS                       R18 R17 K32 ["userId"]
      133 GETUPVAL                         R18 2
      134 GETTABLEKS                       R18 R18 K33 ["groupId"]
      136 SETTABLEKS                       R18 R17 K33 ["groupId"]
      138 SETTABLEKS                       R2 R17 K1 ["assetTypeEnum"]
      140 SETTABLEKS                       R6 R17 K34 ["expectedPrice"]
      142 SETTABLEKS                       R4 R17 K35 ["instance"]
      144 GETUPVAL                         R18 2
      145 GETTABLEKS                       R18 R18 K36 ["publishService"]
      147 SETTABLEKS                       R18 R17 K36 ["publishService"]
      149 CALL                             R16 1 -1
      150 NAMECALL                         R14 R0 K28 ["dispatch"]
      152 CALL                             R14 -1 0
      153 RETURN                           R0 0
      154 GETUPVAL                         R14 7
      155 GETTABLEKS                       R14 R14 K39 ["isCatalogAsset"]
      157 MOVE                             R15 R2
      158 CALL                             R14 1 1
      159 JUMPIFNOT                        R14 ; [+160]
      160 GETUPVAL                         R14 12
      161 CALL                             R14 0 1
      162 JUMPIFNOT                        R14 ; [+68]
      163 GETUPVAL                         R14 7
      164 GETTABLEKS                       R14 R14 K40 ["isAvatarItemUpdateSupported"]
      166 MOVE                             R15 R2
      167 CALL                             R14 1 1
      168 JUMPIFNOT                        R14 ; [+62]
      169 GETUPVAL                         R14 8
      170 MOVE                             R16 R3
      171 NAMECALL                         R14 R14 K25 ["isOverride"]
      173 CALL                             R14 2 1
      174 JUMPIFNOT                        R14 ; [+56]
      175 GETUPVAL                         R14 2
      176 GETTABLEKS                       R14 R14 K27 ["overrideAssetId"]
      178 JUMPIFNOT                        R14 ; [+52]
      179 GETUPVAL                         R14 13
      180 MOVE                             R15 R4
      181 CALL                             R14 1 1
      182 GETUPVAL                         R17 14
      183 DUPTABLE                         R18 K44 [{"networkInterface", "name", "description", "assetTypeEnum", "instances", "groupId", "originalAssetId", "dataSharingLicenseTypes", "localization", "uploadFee"}]
      184 GETUPVAL                         R19 2
      185 GETTABLEKS                       R19 R19 K26 ["networkInterface"]
      187 SETTABLEKS                       R19 R18 K26 ["networkInterface"]
      189 GETUPVAL                         R19 2
      190 GETTABLEKS                       R19 R19 K30 ["name"]
      192 SETTABLEKS                       R19 R18 K30 ["name"]
      194 GETUPVAL                         R20 2
      195 GETTABLEKS                       R20 R20 K31 ["description"]
      197 ORK                              R19 R20 K38 [""]
      198 SETTABLEKS                       R19 R18 K31 ["description"]
      200 SETTABLEKS                       R2 R18 K1 ["assetTypeEnum"]
      202 SETTABLEKS                       R14 R18 K3 ["instances"]
      204 GETUPVAL                         R19 2
      205 GETTABLEKS                       R19 R19 K33 ["groupId"]
      207 SETTABLEKS                       R19 R18 K33 ["groupId"]
      209 GETUPVAL                         R19 2
      210 GETTABLEKS                       R19 R19 K27 ["overrideAssetId"]
      212 SETTABLEKS                       R19 R18 K41 ["originalAssetId"]
      214 GETUPVAL                         R19 2
      215 GETTABLEKS                       R19 R19 K42 ["dataSharingLicenseTypes"]
      217 SETTABLEKS                       R19 R18 K42 ["dataSharingLicenseTypes"]
      219 GETUPVAL                         R19 2
      220 GETTABLEKS                       R19 R19 K43 ["localization"]
      222 SETTABLEKS                       R19 R18 K43 ["localization"]
      224 SETTABLEKS                       R6 R18 K5 ["uploadFee"]
      226 CALL                             R17 1 -1
      227 NAMECALL                         R15 R0 K28 ["dispatch"]
      229 CALL                             R15 -1 0
      230 RETURN                           R0 0
      231 MOVE                             R15 R7
      232 JUMPIFNOT                        R15 ; [+5]
      233 MOVE                             R15 R2
      234 JUMPIFNOT                        R15 ; [+3]
      235 GETTABLEKS                       R16 R2 K45 ["Name"]
      237 GETTABLE                         R15 R7 R16
      238 MOVE                             R16 R15
      239 JUMPIFNOT                        R16 ; [+2]
      240 GETTABLEKS                       R16 R15 K46 ["allowedFileExtensions"]
      242 MOVE                             R17 R16
      243 JUMPIFNOT                        R17 ; [+6]
      244 LOADB                            R17 0
      245 LENGTH                           R18 R16
      246 LOADN                            R19 0
      247 JUMPIFNOTLT                      R19 R18 ; [+2]
      249 GETTABLEN                        R17 R16 1
      250 JUMPIFNOT                        R17 ; [+8]
      251 GETIMPORT                        R18 K49 [string.gsub]
      253 MOVE                             R19 R17
      254 LOADK                            R20 K50 ["^%."]
      255 LOADK                            R21 K38 [""]
      256 CALL                             R18 3 1
      257 MOVE                             R14 R18
      258 JUMPIF                           R14 ; [+1]
      259 LOADK                            R14 K51 ["rbxm"]
      260 JUMPIFNOT                        R5 ; [+34]
      261 GETUPVAL                         R15 13
      262 MOVE                             R16 R4
      263 CALL                             R15 1 1
      264 GETUPVAL                         R18 15
      265 GETUPVAL                         R19 2
      266 GETTABLEKS                       R19 R19 K26 ["networkInterface"]
      268 GETUPVAL                         R20 2
      269 GETTABLEKS                       R20 R20 K30 ["name"]
      271 GETUPVAL                         R22 2
      272 GETTABLEKS                       R22 R22 K31 ["description"]
      274 ORK                              R21 R22 K38 [""]
      275 MOVE                             R22 R2
      276 MOVE                             R23 R15
      277 GETUPVAL                         R24 2
      278 GETTABLEKS                       R24 R24 K33 ["groupId"]
      280 GETUPVAL                         R25 2
      281 GETTABLEKS                       R25 R25 K42 ["dataSharingLicenseTypes"]
      283 GETUPVAL                         R26 2
      284 GETTABLEKS                       R26 R26 K43 ["localization"]
      286 MOVE                             R27 R6
      287 GETUPVAL                         R28 2
      288 GETTABLEKS                       R28 R28 K52 ["publishOnApprovalCreationContext"]
      290 CALL                             R18 10 -1
      291 NAMECALL                         R16 R0 K28 ["dispatch"]
      293 CALL                             R16 -1 0
      294 RETURN                           R0 0
      295 GETUPVAL                         R17 16
      296 GETUPVAL                         R18 2
      297 GETTABLEKS                       R18 R18 K26 ["networkInterface"]
      299 GETUPVAL                         R19 2
      300 GETTABLEKS                       R19 R19 K30 ["name"]
      302 MOVE                             R20 R14
      303 GETUPVAL                         R22 2
      304 GETTABLEKS                       R22 R22 K31 ["description"]
      306 ORK                              R21 R22 K38 [""]
      307 MOVE                             R22 R2
      308 MOVE                             R23 R4
      309 GETUPVAL                         R24 2
      310 GETTABLEKS                       R24 R24 K42 ["dataSharingLicenseTypes"]
      312 GETUPVAL                         R25 2
      313 GETTABLEKS                       R25 R25 K43 ["localization"]
      315 CALL                             R17 8 -1
      316 NAMECALL                         R15 R0 K28 ["dispatch"]
      318 CALL                             R15 -1 0
      319 RETURN                           R0 0
      320 GETUPVAL                         R14 7
      321 GETTABLEKS                       R14 R14 K53 ["isUGCBundleType"]
      323 MOVE                             R15 R2
      324 CALL                             R14 1 1
      325 JUMPIFNOT                        R14 ; [+68]
      326 LOADNIL                          R14
      327 GETUPVAL                         R15 2
      328 GETTABLEKS                       R15 R15 K54 ["dataSharingEnabled"]
      330 JUMPIFNOT                        R15 ; [+17]
      331 GETUPVAL                         R15 2
      332 GETTABLEKS                       R15 R15 K55 ["dataSharingToggled"]
      334 JUMPIFNOT                        R15 ; [+11]
      335 NEWTABLE                         R15 0 1
      337 GETUPVAL                         R16 17
      338 GETTABLEKS                       R16 R16 K56 ["DataSharingLicenseTypes"]
      340 GETTABLEKS                       R16 R16 K57 ["RobloxGlobal"]
      342 SETLIST                          R15 R16 1 [1]
      344 MOVE                             R14 R15
      345 JUMP                             ; [+2]
      346 NEWTABLE                         R14 0 0
      348 GETUPVAL                         R16 1
      349 CALL                             R16 0 1
      350 JUMPIFNOT                        R16 ; [+6]
      351 GETUPVAL                         R15 18
      352 GETTABLEKS                       R15 R15 K58 ["isEmissiveFromAttributes"]
      354 MOVE                             R16 R10
      355 CALL                             R15 1 1
      356 JUMP                             ; [+1]
      357 LOADNIL                          R15
      358 GETUPVAL                         R18 19
      359 GETUPVAL                         R19 2
      360 GETTABLEKS                       R19 R19 K26 ["networkInterface"]
      362 MOVE                             R20 R4
      363 JUMPIFNOT                        R20 ; [+1]
      364 GETTABLEN                        R20 R4 1
      365 MOVE                             R21 R2
      366 GETUPVAL                         R22 2
      367 GETTABLEKS                       R22 R22 K30 ["name"]
      369 GETUPVAL                         R24 2
      370 GETTABLEKS                       R24 R24 K31 ["description"]
      372 ORK                              R23 R24 K38 [""]
      373 MOVE                             R24 R8
      374 GETUPVAL                         R25 2
      375 GETTABLEKS                       R25 R25 K43 ["localization"]
      377 MOVE                             R26 R6
      378 MOVE                             R27 R14
      379 GETUPVAL                         R28 2
      380 GETTABLEKS                       R28 R28 K36 ["publishService"]
      382 JUMPIFNOT                        R9 ; [+4]
      383 GETUPVAL                         R29 2
      384 GETTABLEKS                       R29 R29 K33 ["groupId"]
      386 JUMP                             ; [+1]
      387 LOADNIL                          R29
      388 MOVE                             R30 R15
      389 CALL                             R18 12 -1
      390 NAMECALL                         R16 R0 K28 ["dispatch"]
      392 CALL                             R16 -1 0
      393 RETURN                           R0 0
      394 GETUPVAL                         R14 7
      395 GETTABLEKS                       R14 R14 K59 ["isMarketplaceAsset"]
      397 MOVE                             R15 R2
      398 CALL                             R14 1 1
      399 JUMPIFNOT                        R14 ; [+24]
      400 GETUPVAL                         R14 8
      401 MOVE                             R16 R3
      402 NAMECALL                         R14 R14 K25 ["isOverride"]
      404 CALL                             R14 2 1
      405 JUMPIFNOT                        R14 ; [+18]
      406 GETUPVAL                         R16 20
      407 GETUPVAL                         R17 2
      408 GETTABLEKS                       R17 R17 K26 ["networkInterface"]
      410 GETUPVAL                         R18 2
      411 GETTABLEKS                       R18 R18 K27 ["overrideAssetId"]
      413 GETTABLEKS                       R19 R2 K45 ["Name"]
      415 MOVE                             R20 R4
      416 GETUPVAL                         R21 2
      417 GETTABLEKS                       R21 R21 K43 ["localization"]
      419 CALL                             R16 5 -1
      420 NAMECALL                         R14 R0 K28 ["dispatch"]
      422 CALL                             R14 -1 0
      423 RETURN                           R0 0
      424 GETUPVAL                         R16 21
      425 DUPTABLE                         R17 K68 [{["networkInterface"], ["assetId"] = 0, ["assetTypeEnum"], ["name"], ["description"], ["copyOn"], ["commentOn"], ["groupId"], ["instances"], ["isMarketplaceModelsAsPackagesEnabled"], ["saleStatus"], ["price"], ["iconFile"], ["assetMediaUpdateData"], ["basePrice"]}]
      426 GETUPVAL                         R18 2
      427 GETTABLEKS                       R18 R18 K26 ["networkInterface"]
      429 SETTABLEKS                       R18 R17 K26 ["networkInterface"]
      431 SETTABLEKS                       R2 R17 K1 ["assetTypeEnum"]
      433 GETUPVAL                         R18 2
      434 GETTABLEKS                       R18 R18 K30 ["name"]
      436 SETTABLEKS                       R18 R17 K30 ["name"]
      438 GETUPVAL                         R19 2
      439 GETTABLEKS                       R19 R19 K31 ["description"]
      441 ORK                              R18 R19 K38 [""]
      442 SETTABLEKS                       R18 R17 K31 ["description"]
      444 GETUPVAL                         R18 2
      445 GETTABLEKS                       R18 R18 K60 ["copyOn"]
      447 SETTABLEKS                       R18 R17 K60 ["copyOn"]
      449 GETUPVAL                         R18 2
      450 GETTABLEKS                       R18 R18 K61 ["commentOn"]
      452 SETTABLEKS                       R18 R17 K61 ["commentOn"]
      454 GETUPVAL                         R18 2
      455 GETTABLEKS                       R18 R18 K33 ["groupId"]
      457 SETTABLEKS                       R18 R17 K33 ["groupId"]
      459 SETTABLEKS                       R4 R17 K3 ["instances"]
      461 JUMPIFNOT                        R13 ; [+2]
      462 LOADB                            R18 1
      463 JUMP                             ; [+1]
      464 LOADNIL                          R18
      465 SETTABLEKS                       R18 R17 K62 ["isMarketplaceModelsAsPackagesEnabled"]
      467 GETUPVAL                         R18 2
      468 GETTABLEKS                       R18 R18 K69 ["status"]
      470 SETTABLEKS                       R18 R17 K63 ["saleStatus"]
      472 GETUPVAL                         R18 2
      473 GETTABLEKS                       R18 R18 K64 ["price"]
      475 SETTABLEKS                       R18 R17 K64 ["price"]
      477 GETUPVAL                         R18 2
      478 GETTABLEKS                       R18 R18 K65 ["iconFile"]
      480 SETTABLEKS                       R18 R17 K65 ["iconFile"]
      482 GETUPVAL                         R18 2
      483 GETTABLEKS                       R18 R18 K66 ["assetMediaUpdateData"]
      485 SETTABLEKS                       R18 R17 K66 ["assetMediaUpdateData"]
      487 JUMPIFNOT                        R12 ; [+3]
      488 GETTABLEKS                       R18 R12 K67 ["basePrice"]
      490 JUMP                             ; [+1]
      491 LOADNIL                          R18
      492 SETTABLEKS                       R18 R17 K67 ["basePrice"]
      494 GETUPVAL                         R18 2
      495 GETTABLEKS                       R18 R18 K43 ["localization"]
      497 CALL                             R16 2 -1
      498 NAMECALL                         R14 R0 K28 ["dispatch"]
      500 CALL                             R14 -1 0
      501 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          UPVAL U11
       14 CAPTURE                          UPVAL U12
       15 CAPTURE                          UPVAL U13
       16 CAPTURE                          UPVAL U14
       17 CAPTURE                          UPVAL U15
       18 CAPTURE                          UPVAL U16
       19 CAPTURE                          UPVAL U17
       20 CAPTURE                          UPVAL U18
       21 CAPTURE                          UPVAL U19
       22 CAPTURE                          UPVAL U20
       23 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [game]
       13 LOADK                            R3 K5 ["ToolboxSetMarketplaceModelsAsPackagesForAll"]
       14 NAMECALL                         R1 R1 K6 ["GetFastFlag"]
       16 CALL                             R1 2 1
       17 GETIMPORT                        R2 K4 [game]
       19 LOADK                            R4 K7 ["ToolboxSetMarketplaceModelsAsPackagesForIXP3"]
       20 NAMECALL                         R2 R2 K6 ["GetFastFlag"]
       22 CALL                             R2 2 1
       23 GETIMPORT                        R3 K9 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Flags"]
       29 GETTABLEKS                       R4 R4 K12 ["getFFlagToolboxPublishFlowHelpers"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K9 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Flags"]
       38 GETTABLEKS                       R5 R5 K13 ["getFFlagEnableUpdateAvatarItem"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K9 [require]
       43 GETTABLEKS                       R6 R0 K10 ["Src"]
       45 GETTABLEKS                       R6 R6 K11 ["Flags"]
       47 GETTABLEKS                       R6 R6 K14 ["getFFlagToolboxDynamicUploadFee"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R0 K10 ["Src"]
       52 GETTABLEKS                       R6 R6 K15 ["Util"]
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R6 K16 ["AssetConfigUtil"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R6 K17 ["Constants"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R10 R6 K18 ["MetadataType"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K9 [require]
       71 GETTABLEKS                       R11 R6 K19 ["FiatUtil"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K9 [require]
       76 GETTABLEKS                       R12 R6 K20 ["getUserId"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K9 [require]
       81 GETTABLEKS                       R13 R6 K21 ["fixUpPreValidation"]
       83 CALL                             R12 1 1
       84 LOADNIL                          R13
       85 JUMPIFNOT                        R2 ; [+6]
       86 GETIMPORT                        R14 K9 [require]
       88 GETTABLEKS                       R15 R6 K22 ["getIsIXPVariableEnabled"]
       90 CALL                             R14 1 1
       91 MOVE                             R13 R14
       92 GETIMPORT                        R14 K9 [require]
       94 GETTABLEKS                       R15 R0 K10 ["Src"]
       96 GETTABLEKS                       R15 R15 K23 ["Types"]
       98 GETTABLEKS                       R15 R15 K24 ["ConfigTypes"]
      100 CALL                             R14 1 1
      101 GETTABLEKS                       R15 R0 K10 ["Src"]
      103 GETTABLEKS                       R15 R15 K25 ["Networking"]
      105 GETTABLEKS                       R15 R15 K26 ["Requests"]
      107 GETIMPORT                        R16 K9 [require]
      109 GETTABLEKS                       R17 R15 K27 ["UploadCatalogItemRequest"]
      111 CALL                             R16 1 1
      112 GETIMPORT                        R17 K9 [require]
      114 GETTABLEKS                       R18 R15 K28 ["PostUploadAssetRequest"]
      116 CALL                             R17 1 1
      117 GETIMPORT                        R18 K9 [require]
      119 GETTABLEKS                       R19 R15 K29 ["PostOverrideAssetRequest"]
      121 CALL                             R18 1 1
      122 GETIMPORT                        R19 K9 [require]
      124 GETTABLEKS                       R20 R15 K30 ["PostUploadAnimationRequest"]
      126 CALL                             R19 1 1
      127 GETIMPORT                        R20 K9 [require]
      129 GETTABLEKS                       R21 R15 K31 ["PostOverrideAnimationRequest"]
      131 CALL                             R20 1 1
      132 GETIMPORT                        R21 K9 [require]
      134 GETTABLEKS                       R22 R15 K32 ["UGCBundleUploadRequest"]
      136 CALL                             R21 1 1
      137 GETIMPORT                        R22 K9 [require]
      139 GETTABLEKS                       R23 R15 K33 ["UGCAccessoryUploadRequest"]
      141 CALL                             R22 1 1
      142 GETIMPORT                        R23 K9 [require]
      144 GETTABLEKS                       R24 R15 K34 ["AvatarItemUpdateUploadRequest"]
      146 CALL                             R23 1 1
      147 DUPCLOSURE                       R24 K35 [PROTO_0]
      148 DUPCLOSURE                       R25 K36 [PROTO_1]
      149 CAPTURE                          VAL R12
      150 NEWCLOSURE                       R26 P2
      151 CAPTURE                          VAL R3
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R2
      156 CAPTURE                          REF R13
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R20
      160 CAPTURE                          VAL R19
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R25
      164 CAPTURE                          VAL R23
      165 CAPTURE                          VAL R22
      166 CAPTURE                          VAL R16
      167 CAPTURE                          VAL R8
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R21
      170 CAPTURE                          VAL R18
      171 CAPTURE                          VAL R17
      172 CLOSEUPVALS                      R13
      173 RETURN                           R26 1
