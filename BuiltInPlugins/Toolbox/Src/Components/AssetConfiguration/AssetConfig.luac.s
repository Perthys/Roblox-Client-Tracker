PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tryPublish"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["confirmationDialogKey"]
        6 CALL                             R0 1 0
        7 DUPTABLE                         R0 K5 [{["confirmationDialogKey"] = "", ["isConfirmationDialogEnabled"] = False}]
        8 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETUPVAL                         R1 0
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 NAMECALL                         R1 R1 K1 ["setState"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R0 K4 [{[1] = "", ["isConfirmationDialogEnabled"] = False}]
        1 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_2]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K2 [{[1] = False}]
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_4]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K2 ["tryMakeAssetsPublic"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R0 K2 [{[1] = False}]
        1 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_6]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["state"]
        6 GETIMPORT                        R2 K3 [pairs]
        8 GETTABLEKS                       R3 R1 K4 ["descendantIds"]
       10 CALL                             R2 1 3
       11 FORGPREP_NEXT                    R2
       12 GETTABLEKS                       R7 R0 K5 ["dispatchPatchMakeAssetPublicRequest"]
       14 GETTABLEKS                       R8 R0 K6 ["Network"]
       16 GETTABLEKS                       R8 R8 K7 ["networkInterface"]
       18 MOVE                             R9 R6
       19 CALL                             R7 2 0
       20 FORGLOOP                         R2 2 ; [-9]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K8 ["tryPublish"]
       25 LOADNIL                          R3
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R3 R1 K1 ["assetTypeEnum"]
        5 GETIMPORT                        R4 K5 [Enum.AssetType.Audio]
        7 JUMPIFEQ                         R3 R4 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 GETTABLEKS                       R4 R1 K1 ["assetTypeEnum"]
       13 GETIMPORT                        R5 K7 [Enum.AssetType.Video]
       15 JUMPIFEQ                         R4 R5 ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 GETTABLEKS                       R5 R1 K1 ["assetTypeEnum"]
       21 GETIMPORT                        R6 K9 [Enum.AssetType.Model]
       23 JUMPIFEQ                         R5 R6 ; [+2]
       25 LOADB                            R4 0 +1
       26 LOADB                            R4 1
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K10 ["isCatalogAsset"]
       30 GETTABLEKS                       R6 R1 K1 ["assetTypeEnum"]
       32 CALL                             R5 1 1
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K11 ["isUGCBundleType"]
       36 GETTABLEKS                       R7 R1 K1 ["assetTypeEnum"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R8 R1 K13 ["uploadFee"]
       41 ORK                              R7 R8 K12 [0]
       42 JUMPIF                           R2 ; [+3]
       43 GETUPVAL                         R8 2
       44 JUMPIFNOT                        R8 ; [+20]
       45 JUMPIFNOT                        R3 ; [+19]
       46 GETTABLEKS                       R8 R0 K14 ["isAssetPublicOriginalValue"]
       48 JUMPIFEQKB                       R8 TRUE ; [+16]
       50 GETTABLEKS                       R8 R0 K15 ["isAssetPublic"]
       52 GETUPVAL                         R9 3
       53 GETTABLEKS                       R9 R9 K16 ["SHARING_KEYS"]
       55 GETTABLEKS                       R9 R9 K17 ["Public"]
       57 JUMPIFNOTEQ                      R8 R9 ; [+7]
       59 DUPTABLE                         R8 K21 [{["confirmationDialogKey"], ["isConfirmationDialogEnabled"] = True}]
       60 GETUPVAL                         R10 4
       61 ORK                              R9 R10 K22 [""]
       62 SETTABLEKS                       R9 R8 K18 ["confirmationDialogKey"]
       64 RETURN                           R8 1
       65 JUMPIFNOT                        R4 ; [+48]
       66 GETTABLEKS                       R8 R0 K15 ["isAssetPublic"]
       68 GETUPVAL                         R9 3
       69 GETTABLEKS                       R9 R9 K16 ["SHARING_KEYS"]
       71 GETTABLEKS                       R9 R9 K17 ["Public"]
       73 JUMPIFNOTEQ                      R8 R9 ; [+40]
       75 GETUPVAL                         R8 3
       76 GETTABLEKS                       R8 R8 K23 ["FLOW_TYPE"]
       78 GETTABLEKS                       R8 R8 K24 ["UPLOAD_FLOW"]
       80 GETTABLEKS                       R9 R1 K25 ["screenFlowType"]
       82 JUMPIFNOTEQ                      R8 R9 ; [+31]
       84 LOADB                            R8 0
       85 GETIMPORT                        R9 K27 [pairs]
       87 GETTABLEKS                       R10 R1 K28 ["descendantPermissions"]
       89 CALL                             R9 1 3
       90 FORGPREP_NEXT                    R9
       91 GETUPVAL                         R14 5
       92 GETTABLEKS                       R14 R14 K15 ["isAssetPublic"]
       94 MOVE                             R15 R13
       95 CALL                             R14 1 1
       96 JUMPIF                           R14 ; [+2]
       97 LOADB                            R8 1
       98 JUMP                             ; [+2]
       99 FORGLOOP                         R9 2 ; [-9]
      101 JUMPIFNOT                        R8 ; [+6]
      102 GETUPVAL                         R9 0
      103 DUPCLOSURE                       R11 K29 [PROTO_9]
      104 NAMECALL                         R9 R9 K30 ["setState"]
      106 CALL                             R9 2 0
      107 RETURN                           R0 0
      108 GETUPVAL                         R9 0
      109 GETTABLEKS                       R9 R9 K31 ["tryPublish"]
      111 LOADNIL                          R10
      112 CALL                             R9 1 0
      113 RETURN                           R0 0
      114 LOADNIL                          R8
      115 GETUPVAL                         R9 6
      116 CALL                             R9 0 1
      117 JUMPIFNOT                        R9 ; [+20]
      118 GETUPVAL                         R9 1
      119 GETTABLEKS                       R9 R9 K32 ["getPublishOnApprovalFee"]
      121 GETUPVAL                         R10 0
      122 GETTABLEKS                       R10 R10 K33 ["getPublishInfo"]
      124 CALL                             R10 0 -1
      125 CALL                             R9 -1 1
      126 GETUPVAL                         R10 1
      127 GETTABLEKS                       R10 R10 K34 ["getSubmitTotal"]
      129 MOVE                             R11 R7
      130 MOVE                             R12 R9
      131 CALL                             R10 2 1
      132 LOADN                            R11 0
      133 JUMPIFLT                         R11 R10 ; [+2]
      135 LOADB                            R8 0 +1
      136 LOADB                            R8 1
      137 JUMP                             ; [+9]
      138 LOADB                            R9 0
      139 JUMPIFEQKNIL                     R7 ; [+6]
      141 LOADN                            R10 0
      142 JUMPIFLT                         R10 R7 ; [+2]
      144 LOADB                            R9 0 +1
      145 LOADB                            R9 1
      146 MOVE                             R8 R9
      147 JUMPIF                           R5 ; [+1]
      148 JUMPIFNOT                        R6 ; [+31]
      149 JUMPIFNOT                        R8 ; [+30]
      150 GETTABLEKS                       R9 R1 K35 ["dispatchCheckAvatarAssetPrivacy"]
      152 GETTABLEKS                       R10 R1 K36 ["Network"]
      154 GETTABLEKS                       R10 R10 K37 ["networkInterface"]
      156 GETTABLEKS                       R12 R1 K38 ["instances"]
      158 GETTABLEN                        R11 R12 1
      159 DUPTABLE                         R12 K42 [{"publishService", "pluginGuiService", "contentProvider"}]
      160 GETTABLEKS                       R13 R1 K43 ["PublishService"]
      162 GETTABLEKS                       R13 R13 K39 ["publishService"]
      164 SETTABLEKS                       R13 R12 K39 ["publishService"]
      166 GETTABLEKS                       R13 R1 K44 ["PluginGuiService"]
      168 GETTABLEKS                       R13 R13 K40 ["pluginGuiService"]
      170 SETTABLEKS                       R13 R12 K40 ["pluginGuiService"]
      172 GETTABLEKS                       R13 R1 K45 ["ContentProvider"]
      174 GETTABLEKS                       R13 R13 K41 ["contentProvider"]
      176 SETTABLEKS                       R13 R12 K41 ["contentProvider"]
      178 CALL                             R9 3 0
      179 RETURN                           R0 0
      180 GETUPVAL                         R9 0
      181 GETTABLEKS                       R9 R9 K31 ["tryPublish"]
      183 GETUPVAL                         R10 4
      184 CALL                             R9 1 0
      185 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 NAMECALL                         R1 R1 K0 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 JUMPIFEQKS                       R3 K0 [""] ; [+3]
        4 GETUPVAL                         R2 1
        5 JUMPIF                           R2 ; [+3]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["overrideAssetId"]
        9 NAMECALL                         R0 R0 K2 ["AnimationIdSelected"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+1]
        3 RETURN                           R0 0
        4 DUPCLOSURE                       R0 K0 [PROTO_12]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["props"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["state"]
       11 GETTABLEKS                       R4 R1 K3 ["groupId"]
       13 JUMPIFNOT                        R4 ; [+10]
       14 GETTABLEKS                       R4 R1 K3 ["groupId"]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K4 ["None"]
       19 JUMPIFEQ                         R4 R5 ; [+4]
       21 GETTABLEKS                       R3 R1 K3 ["groupId"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R3
       25 GETUPVAL                         R4 3
       26 JUMPIF                           R4 ; [+8]
       27 GETUPVAL                         R4 4
       28 JUMPIFNOT                        R4 ; [+6]
       29 GETUPVAL                         R4 5
       30 GETTABLEKS                       R5 R1 K5 ["IXP"]
       32 LOADK                            R6 K6 ["MarketplaceModelsAsPackages"]
       33 LOADK                            R7 K7 ["MarketplaceModelsAsPackagesEnabled"]
       34 CALL                             R4 3 1
       35 GETUPVAL                         R5 6
       36 GETTABLEKS                       R5 R5 K8 ["FLOW_TYPE"]
       38 GETTABLEKS                       R5 R5 K9 ["DOWNLOAD_FLOW"]
       40 GETTABLEKS                       R6 R1 K10 ["screenFlowType"]
       42 JUMPIFNOTEQ                      R5 R6 ; [+18]
       44 GETIMPORT                        R5 K12 [pcall]
       46 NEWCLOSURE                       R6 P1
       47 CAPTURE                          UPVAL U7
       48 CAPTURE                          UPVAL U8
       49 CAPTURE                          VAL R2
       50 CALL                             R5 1 1
       51 JUMPIFNOT                        R5 ; [+4]
       52 GETTABLEKS                       R6 R1 K13 ["onClose"]
       54 CALL                             R6 0 0
       55 RETURN                           R0 0
       56 GETTABLEKS                       R6 R1 K14 ["dispatchValidateAnimationResult"]
       58 LOADB                            R7 0
       59 CALL                             R6 1 0
       60 RETURN                           R0 0
       61 GETUPVAL                         R5 6
       62 GETTABLEKS                       R5 R5 K8 ["FLOW_TYPE"]
       64 GETTABLEKS                       R5 R5 K15 ["EDIT_FLOW"]
       66 GETTABLEKS                       R6 R1 K10 ["screenFlowType"]
       68 JUMPIFNOTEQ                      R5 R6 ; [+134]
       70 GETUPVAL                         R5 9
       71 GETTABLEKS                       R5 R5 K16 ["isCatalogAsset"]
       73 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
       75 CALL                             R5 1 1
       76 JUMPIFNOT                        R5 ; [+40]
       77 GETTABLEKS                       R5 R1 K18 ["assetConfigData"]
       79 JUMPIFNOT                        R5 ; [+32]
       80 GETTABLEKS                       R5 R1 K18 ["assetConfigData"]
       82 GETTABLEKS                       R5 R5 K19 ["Status"]
       84 JUMPIFNOT                        R5 ; [+27]
       85 GETTABLEKS                       R5 R1 K20 ["configureCatalogItem"]
       87 GETTABLEKS                       R6 R1 K21 ["Network"]
       89 GETTABLEKS                       R6 R6 K22 ["networkInterface"]
       91 GETTABLEKS                       R7 R1 K23 ["assetId"]
       93 GETTABLEKS                       R8 R2 K24 ["name"]
       95 GETTABLEKS                       R10 R2 K26 ["description"]
       97 ORK                              R9 R10 K25 [""]
       98 GETTABLEKS                       R10 R1 K18 ["assetConfigData"]
      100 GETTABLEKS                       R10 R10 K19 ["Status"]
      102 GETTABLEKS                       R11 R2 K27 ["status"]
      104 GETTABLEKS                       R12 R1 K18 ["assetConfigData"]
      106 GETTABLEKS                       R12 R12 K28 ["Price"]
      108 GETTABLEKS                       R13 R2 K29 ["price"]
      110 CALL                             R5 8 0
      111 RETURN                           R0 0
      112 GETIMPORT                        R5 K31 [warn]
      114 LOADK                            R6 K32 ["Could not configure sales, missing Asset Status!"]
      115 CALL                             R5 1 0
      116 RETURN                           R0 0
      117 GETUPVAL                         R5 9
      118 GETTABLEKS                       R5 R5 K33 ["isMarketplaceAsset"]
      120 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      122 CALL                             R5 1 1
      123 JUMPIFNOT                        R5 ; [+520]
      124 GETTABLEKS                       R5 R2 K34 ["copyOn"]
      126 GETTABLEKS                       R6 R2 K35 ["copyChanged"]
      128 JUMPIF                           R6 ; [+1]
      129 LOADNIL                          R5
      130 GETTABLEKS                       R6 R1 K36 ["configureMarketplaceItem"]
      132 DUPTABLE                         R7 K45 [{"networkInterface", "assetId", "assetMediaUpdateData", "assetTypeEnum", "name", "description", "commentOn", "copyOn", "saleStatus", "fromPrice", "price", "iconFile", "isAssetPublic", "isConvertMarketplaceModelsToPackageEnabled", "basePrice"}]
      133 GETTABLEKS                       R8 R1 K21 ["Network"]
      135 GETTABLEKS                       R8 R8 K22 ["networkInterface"]
      137 SETTABLEKS                       R8 R7 K22 ["networkInterface"]
      139 GETTABLEKS                       R8 R2 K23 ["assetId"]
      141 SETTABLEKS                       R8 R7 K23 ["assetId"]
      143 GETTABLEKS                       R8 R2 K37 ["assetMediaUpdateData"]
      145 SETTABLEKS                       R8 R7 K37 ["assetMediaUpdateData"]
      147 GETTABLEKS                       R8 R1 K17 ["assetTypeEnum"]
      149 SETTABLEKS                       R8 R7 K17 ["assetTypeEnum"]
      151 GETTABLEKS                       R8 R2 K24 ["name"]
      153 SETTABLEKS                       R8 R7 K24 ["name"]
      155 GETTABLEKS                       R9 R2 K26 ["description"]
      157 ORK                              R8 R9 K25 [""]
      158 SETTABLEKS                       R8 R7 K26 ["description"]
      160 GETTABLEKS                       R8 R2 K38 ["commentOn"]
      162 SETTABLEKS                       R8 R7 K38 ["commentOn"]
      164 SETTABLEKS                       R5 R7 K34 ["copyOn"]
      166 GETTABLEKS                       R8 R2 K27 ["status"]
      168 SETTABLEKS                       R8 R7 K39 ["saleStatus"]
      170 GETTABLEKS                       R8 R1 K18 ["assetConfigData"]
      172 GETTABLEKS                       R8 R8 K28 ["Price"]
      174 SETTABLEKS                       R8 R7 K40 ["fromPrice"]
      176 GETTABLEKS                       R8 R2 K29 ["price"]
      178 SETTABLEKS                       R8 R7 K29 ["price"]
      180 GETTABLEKS                       R8 R2 K41 ["iconFile"]
      182 SETTABLEKS                       R8 R7 K41 ["iconFile"]
      184 GETTABLEKS                       R8 R2 K42 ["isAssetPublic"]
      186 SETTABLEKS                       R8 R7 K42 ["isAssetPublic"]
      188 SETTABLEKS                       R4 R7 K43 ["isConvertMarketplaceModelsToPackageEnabled"]
      190 GETTABLEKS                       R9 R1 K46 ["fiatProduct"]
      192 JUMPIFNOT                        R9 ; [+5]
      193 GETTABLEKS                       R8 R1 K46 ["fiatProduct"]
      195 GETTABLEKS                       R8 R8 K44 ["basePrice"]
      197 JUMP                             ; [+1]
      198 LOADNIL                          R8
      199 SETTABLEKS                       R8 R7 K44 ["basePrice"]
      201 CALL                             R6 1 0
      202 RETURN                           R0 0
      203 GETUPVAL                         R5 6
      204 GETTABLEKS                       R5 R5 K8 ["FLOW_TYPE"]
      206 GETTABLEKS                       R5 R5 K47 ["UPLOAD_FLOW"]
      208 GETTABLEKS                       R6 R1 K10 ["screenFlowType"]
      210 JUMPIFNOTEQ                      R5 R6 ; [+433]
      212 GETUPVAL                         R5 9
      213 GETTABLEKS                       R5 R5 K48 ["isMakeupAsset"]
      215 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      217 CALL                             R5 1 1
      218 JUMPIFNOT                        R5 ; [+19]
      219 GETTABLEKS                       R5 R2 K49 ["selectedColor"]
      221 JUMPIFNOT                        R5 ; [+16]
      222 GETTABLEKS                       R5 R1 K50 ["instances"]
      224 JUMPIFNOT                        R5 ; [+13]
      225 GETTABLEKS                       R6 R1 K50 ["instances"]
      227 GETTABLEN                        R5 R6 1
      228 JUMPIFNOT                        R5 ; [+9]
      229 GETUPVAL                         R5 9
      230 GETTABLEKS                       R5 R5 K51 ["addMakeupThumbnailConfiguration"]
      232 GETTABLEKS                       R7 R1 K50 ["instances"]
      234 GETTABLEN                        R6 R7 1
      235 GETTABLEKS                       R7 R2 K49 ["selectedColor"]
      237 CALL                             R5 2 0
      238 GETTABLEKS                       R5 R1 K17 ["assetTypeEnum"]
      240 GETIMPORT                        R6 K55 [Enum.AssetType.Animation]
      242 JUMPIFEQ                         R5 R6 ; [+7]
      244 GETTABLEKS                       R5 R1 K17 ["assetTypeEnum"]
      246 GETIMPORT                        R6 K57 [Enum.AssetType.EmoteAnimation]
      248 JUMPIFNOTEQ                      R5 R6 ; [+64]
      250 GETUPVAL                         R5 10
      251 GETTABLEKS                       R7 R1 K58 ["currentTab"]
      253 NAMECALL                         R5 R5 K59 ["isOverride"]
      255 CALL                             R5 2 1
      256 JUMPIFNOT                        R5 ; [+12]
      257 GETTABLEKS                       R5 R1 K60 ["overrideAnimationAsset"]
      259 GETTABLEKS                       R6 R1 K21 ["Network"]
      261 GETTABLEKS                       R6 R6 K22 ["networkInterface"]
      263 GETTABLEKS                       R7 R2 K61 ["overrideAssetId"]
      265 GETTABLEKS                       R8 R1 K50 ["instances"]
      267 CALL                             R5 3 0
      268 RETURN                           R0 0
      269 GETTABLEKS                       R5 R1 K62 ["uploadAnimationAsset"]
      271 DUPTABLE                         R6 K68 [{["networkInterface"], ["assetId"] = 0, ["name"], ["description"], ["userId"], ["groupId"], ["assetTypeEnum"], ["expectedPrice"], ["instance"], ["publishService"]}]
      272 GETTABLEKS                       R7 R1 K21 ["Network"]
      274 GETTABLEKS                       R7 R7 K22 ["networkInterface"]
      276 SETTABLEKS                       R7 R6 K22 ["networkInterface"]
      278 GETTABLEKS                       R7 R2 K24 ["name"]
      280 SETTABLEKS                       R7 R6 K24 ["name"]
      282 GETTABLEKS                       R8 R2 K26 ["description"]
      284 ORK                              R7 R8 K25 [""]
      285 SETTABLEKS                       R7 R6 K26 ["description"]
      287 GETUPVAL                         R7 11
      288 CALL                             R7 0 1
      289 SETTABLEKS                       R7 R6 K64 ["userId"]
      291 SETTABLEKS                       R3 R6 K3 ["groupId"]
      293 GETTABLEKS                       R7 R1 K17 ["assetTypeEnum"]
      295 SETTABLEKS                       R7 R6 K17 ["assetTypeEnum"]
      297 GETTABLEKS                       R7 R1 K69 ["uploadFee"]
      299 SETTABLEKS                       R7 R6 K65 ["expectedPrice"]
      301 GETTABLEKS                       R7 R1 K50 ["instances"]
      303 SETTABLEKS                       R7 R6 K66 ["instance"]
      305 GETTABLEKS                       R7 R1 K70 ["PublishService"]
      307 GETTABLEKS                       R7 R7 K67 ["publishService"]
      309 SETTABLEKS                       R7 R6 K67 ["publishService"]
      311 CALL                             R5 1 0
      312 RETURN                           R0 0
      313 GETUPVAL                         R5 9
      314 GETTABLEKS                       R5 R5 K16 ["isCatalogAsset"]
      316 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      318 CALL                             R5 1 1
      319 JUMPIFNOT                        R5 ; [+146]
      320 GETUPVAL                         R5 12
      321 GETTABLEKS                       R7 R1 K17 ["assetTypeEnum"]
      323 GETTABLEKS                       R8 R2 K71 ["dataSharingEnabled"]
      325 GETTABLEKS                       R9 R2 K72 ["dataSharingToggled"]
      327 NAMECALL                         R5 R5 K73 ["getDataSharingLicenseTypes"]
      329 CALL                             R5 4 1
      330 GETTABLEKS                       R6 R1 K74 ["isUploadFeeEnabled"]
      332 JUMPIFNOT                        R6 ; [+74]
      333 GETTABLEKS                       R6 R1 K75 ["uploadCatalogItemWithFee"]
      335 GETTABLEKS                       R7 R1 K21 ["Network"]
      337 GETTABLEKS                       R7 R7 K22 ["networkInterface"]
      339 GETUPVAL                         R8 1
      340 GETTABLEKS                       R8 R8 K2 ["state"]
      342 GETTABLEKS                       R8 R8 K24 ["name"]
      344 GETTABLEKS                       R10 R1 K76 ["allowedAssetTypesForUpload"]
      346 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      348 MOVE                             R12 R10
      349 JUMPIFNOT                        R12 ; [+5]
      350 MOVE                             R12 R11
      351 JUMPIFNOT                        R12 ; [+3]
      352 GETTABLEKS                       R13 R11 K77 ["Name"]
      354 GETTABLE                         R12 R10 R13
      355 MOVE                             R13 R12
      356 JUMPIFNOT                        R13 ; [+2]
      357 GETTABLEKS                       R13 R12 K78 ["allowedFileExtensions"]
      359 MOVE                             R14 R13
      360 JUMPIFNOT                        R14 ; [+6]
      361 LOADB                            R14 0
      362 LENGTH                           R15 R13
      363 LOADN                            R16 0
      364 JUMPIFNOTLT                      R16 R15 ; [+2]
      366 GETTABLEN                        R14 R13 1
      367 JUMPIFNOT                        R14 ; [+8]
      368 GETIMPORT                        R15 K81 [string.gsub]
      370 MOVE                             R16 R14
      371 LOADK                            R17 K82 ["^%."]
      372 LOADK                            R18 K25 [""]
      373 CALL                             R15 3 1
      374 MOVE                             R9 R15
      375 JUMPIF                           R9 ; [+1]
      376 LOADK                            R9 K83 ["rbxm"]
      377 GETUPVAL                         R11 1
      378 GETTABLEKS                       R11 R11 K2 ["state"]
      380 GETTABLEKS                       R11 R11 K26 ["description"]
      382 ORK                              R10 R11 K25 [""]
      383 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      385 GETTABLEKS                       R12 R1 K50 ["instances"]
      387 MOVE                             R13 R3
      388 MOVE                             R14 R5
      389 GETTABLEKS                       R15 R1 K84 ["Localization"]
      391 GETTABLEKS                       R16 R1 K69 ["uploadFee"]
      393 GETUPVAL                         R17 9
      394 GETTABLEKS                       R17 R17 K85 ["getPublishOnApprovalCreationContext"]
      396 GETTABLEKS                       R18 R2 K86 ["publishOnApprovalToggled"]
      398 GETTABLEKS                       R19 R1 K87 ["hasPublishingPreferences"]
      400 GETTABLEKS                       R20 R1 K88 ["hasPublishingFeePreview"]
      402 GETTABLEKS                       R21 R1 K89 ["publishingFeePreview"]
      404 CALL                             R17 4 -1
      405 CALL                             R6 -1 0
      406 RETURN                           R0 0
      407 GETTABLEKS                       R6 R1 K90 ["uploadCatalogItem"]
      409 GETTABLEKS                       R7 R1 K21 ["Network"]
      411 GETTABLEKS                       R7 R7 K22 ["networkInterface"]
      413 GETUPVAL                         R8 1
      414 GETTABLEKS                       R8 R8 K2 ["state"]
      416 GETTABLEKS                       R8 R8 K24 ["name"]
      418 GETTABLEKS                       R10 R1 K76 ["allowedAssetTypesForUpload"]
      420 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      422 MOVE                             R12 R10
      423 JUMPIFNOT                        R12 ; [+5]
      424 MOVE                             R12 R11
      425 JUMPIFNOT                        R12 ; [+3]
      426 GETTABLEKS                       R13 R11 K77 ["Name"]
      428 GETTABLE                         R12 R10 R13
      429 MOVE                             R13 R12
      430 JUMPIFNOT                        R13 ; [+2]
      431 GETTABLEKS                       R13 R12 K78 ["allowedFileExtensions"]
      433 MOVE                             R14 R13
      434 JUMPIFNOT                        R14 ; [+6]
      435 LOADB                            R14 0
      436 LENGTH                           R15 R13
      437 LOADN                            R16 0
      438 JUMPIFNOTLT                      R16 R15 ; [+2]
      440 GETTABLEN                        R14 R13 1
      441 JUMPIFNOT                        R14 ; [+8]
      442 GETIMPORT                        R15 K81 [string.gsub]
      444 MOVE                             R16 R14
      445 LOADK                            R17 K82 ["^%."]
      446 LOADK                            R18 K25 [""]
      447 CALL                             R15 3 1
      448 MOVE                             R9 R15
      449 JUMPIF                           R9 ; [+1]
      450 LOADK                            R9 K83 ["rbxm"]
      451 GETUPVAL                         R11 1
      452 GETTABLEKS                       R11 R11 K2 ["state"]
      454 GETTABLEKS                       R11 R11 K26 ["description"]
      456 ORK                              R10 R11 K25 [""]
      457 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      459 GETTABLEKS                       R12 R1 K50 ["instances"]
      461 MOVE                             R13 R5
      462 GETTABLEKS                       R14 R1 K84 ["Localization"]
      464 CALL                             R6 8 0
      465 RETURN                           R0 0
      466 GETUPVAL                         R5 9
      467 GETTABLEKS                       R5 R5 K91 ["isUGCBundleType"]
      469 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      471 CALL                             R5 1 1
      472 JUMPIFNOT                        R5 ; [+67]
      473 LOADNIL                          R5
      474 GETTABLEKS                       R6 R2 K71 ["dataSharingEnabled"]
      476 JUMPIFNOT                        R6 ; [+16]
      477 GETTABLEKS                       R6 R2 K72 ["dataSharingToggled"]
      479 JUMPIFNOT                        R6 ; [+11]
      480 NEWTABLE                         R6 0 1
      482 GETUPVAL                         R7 13
      483 GETTABLEKS                       R7 R7 K92 ["DataSharingLicenseTypes"]
      485 GETTABLEKS                       R7 R7 K93 ["RobloxGlobal"]
      487 SETLIST                          R6 R7 1 [1]
      489 MOVE                             R5 R6
      490 JUMP                             ; [+2]
      491 NEWTABLE                         R5 0 0
      493 GETUPVAL                         R7 14
      494 CALL                             R7 0 1
      495 JUMPIFNOT                        R7 ; [+7]
      496 GETUPVAL                         R6 15
      497 GETTABLEKS                       R6 R6 K94 ["isEmissiveFromAttributes"]
      499 GETTABLEKS                       R7 R1 K95 ["specialAttributes"]
      501 CALL                             R6 1 1
      502 JUMP                             ; [+1]
      503 LOADNIL                          R6
      504 GETTABLEKS                       R7 R1 K96 ["uploadUGCBundleWithFee"]
      506 GETTABLEKS                       R8 R1 K21 ["Network"]
      508 GETTABLEKS                       R8 R8 K22 ["networkInterface"]
      510 GETTABLEKS                       R10 R1 K50 ["instances"]
      512 GETTABLEN                        R9 R10 1
      513 GETTABLEKS                       R10 R1 K17 ["assetTypeEnum"]
      515 GETTABLEKS                       R11 R2 K24 ["name"]
      517 GETTABLEKS                       R13 R2 K26 ["description"]
      519 ORK                              R12 R13 K25 [""]
      520 GETTABLEKS                       R13 R1 K97 ["allowedBundleTypeSettings"]
      522 GETTABLEKS                       R14 R1 K84 ["Localization"]
      524 GETTABLEKS                       R15 R1 K69 ["uploadFee"]
      526 MOVE                             R16 R5
      527 GETTABLEKS                       R17 R1 K70 ["PublishService"]
      529 GETTABLEKS                       R17 R17 K67 ["publishService"]
      531 GETTABLEKS                       R19 R1 K98 ["groupBundlesUploadEnabledForUser"]
      533 JUMPIFNOT                        R19 ; [+2]
      534 MOVE                             R18 R3
      535 JUMP                             ; [+1]
      536 LOADNIL                          R18
      537 MOVE                             R19 R6
      538 CALL                             R7 12 0
      539 RETURN                           R0 0
      540 GETUPVAL                         R5 9
      541 GETTABLEKS                       R5 R5 K33 ["isMarketplaceAsset"]
      543 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      545 CALL                             R5 1 1
      546 JUMPIFNOT                        R5 ; [+25]
      547 GETUPVAL                         R5 10
      548 GETTABLEKS                       R7 R1 K58 ["currentTab"]
      550 NAMECALL                         R5 R5 K59 ["isOverride"]
      552 CALL                             R5 2 1
      553 JUMPIFNOT                        R5 ; [+18]
      554 GETTABLEKS                       R5 R1 K99 ["overrideAsset"]
      556 GETTABLEKS                       R6 R1 K21 ["Network"]
      558 GETTABLEKS                       R6 R6 K22 ["networkInterface"]
      560 GETTABLEKS                       R7 R2 K61 ["overrideAssetId"]
      562 GETTABLEKS                       R8 R1 K17 ["assetTypeEnum"]
      564 GETTABLEKS                       R8 R8 K77 ["Name"]
      566 GETTABLEKS                       R9 R1 K50 ["instances"]
      568 GETTABLEKS                       R10 R1 K84 ["Localization"]
      570 CALL                             R5 5 0
      571 RETURN                           R0 0
      572 GETTABLEKS                       R5 R1 K100 ["uploadMarketplaceItem"]
      574 DUPTABLE                         R6 K102 [{["networkInterface"], ["assetId"] = 0, ["assetTypeEnum"], ["name"], ["description"], ["copyOn"], ["commentOn"], ["groupId"], ["instances"], ["isMarketplaceModelsAsPackagesEnabled"], ["saleStatus"], ["price"], ["iconFile"], ["assetMediaUpdateData"], ["basePrice"]}]
      575 GETTABLEKS                       R7 R1 K21 ["Network"]
      577 GETTABLEKS                       R7 R7 K22 ["networkInterface"]
      579 SETTABLEKS                       R7 R6 K22 ["networkInterface"]
      581 GETTABLEKS                       R7 R1 K17 ["assetTypeEnum"]
      583 SETTABLEKS                       R7 R6 K17 ["assetTypeEnum"]
      585 GETTABLEKS                       R7 R2 K24 ["name"]
      587 SETTABLEKS                       R7 R6 K24 ["name"]
      589 GETTABLEKS                       R8 R2 K26 ["description"]
      591 ORK                              R7 R8 K25 [""]
      592 SETTABLEKS                       R7 R6 K26 ["description"]
      594 GETTABLEKS                       R7 R2 K34 ["copyOn"]
      596 SETTABLEKS                       R7 R6 K34 ["copyOn"]
      598 GETTABLEKS                       R7 R2 K38 ["commentOn"]
      600 SETTABLEKS                       R7 R6 K38 ["commentOn"]
      602 SETTABLEKS                       R3 R6 K3 ["groupId"]
      604 GETTABLEKS                       R7 R1 K50 ["instances"]
      606 SETTABLEKS                       R7 R6 K50 ["instances"]
      608 JUMPIFNOT                        R4 ; [+2]
      609 LOADB                            R7 1
      610 JUMP                             ; [+1]
      611 LOADNIL                          R7
      612 SETTABLEKS                       R7 R6 K101 ["isMarketplaceModelsAsPackagesEnabled"]
      614 GETTABLEKS                       R7 R2 K27 ["status"]
      616 SETTABLEKS                       R7 R6 K39 ["saleStatus"]
      618 GETTABLEKS                       R7 R2 K29 ["price"]
      620 SETTABLEKS                       R7 R6 K29 ["price"]
      622 GETTABLEKS                       R7 R2 K41 ["iconFile"]
      624 SETTABLEKS                       R7 R6 K41 ["iconFile"]
      626 GETTABLEKS                       R7 R2 K37 ["assetMediaUpdateData"]
      628 SETTABLEKS                       R7 R6 K37 ["assetMediaUpdateData"]
      630 GETTABLEKS                       R8 R1 K46 ["fiatProduct"]
      632 JUMPIFNOT                        R8 ; [+5]
      633 GETTABLEKS                       R7 R1 K46 ["fiatProduct"]
      635 GETTABLEKS                       R7 R7 K44 ["basePrice"]
      637 JUMP                             ; [+1]
      638 LOADNIL                          R7
      639 SETTABLEKS                       R7 R6 K44 ["basePrice"]
      641 GETTABLEKS                       R7 R1 K84 ["Localization"]
      643 CALL                             R5 2 0
      644 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["assetConfigData"]
        5 GETTABLEKS                       R2 R1 K2 ["Id"]
        7 GETTABLEKS                       R3 R0 K3 ["VersionItemSelect"]
        9 JUMPIFNOT                        R3 ; [+3]
       10 GETTABLEKS                       R4 R0 K3 ["VersionItemSelect"]
       12 GETTABLEN                        R3 R4 1
       13 GETTABLEKS                       R5 R0 K4 ["VersionDescriptionSave"]
       15 JUMPIFNOT                        R5 ; [+3]
       16 GETTABLEKS                       R4 R0 K4 ["VersionDescriptionSave"]
       18 JUMP                             ; [+2]
       19 NEWTABLE                         R4 0 0
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K0 ["props"]
       24 GETTABLEKS                       R5 R5 K5 ["Network"]
       26 GETTABLEKS                       R5 R5 K6 ["networkInterface"]
       28 JUMPIFNOT                        R2 ; [+31]
       29 JUMPIFNOT                        R3 ; [+30]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K0 ["props"]
       33 GETTABLEKS                       R6 R6 K7 ["postRevertVersion"]
       35 MOVE                             R7 R5
       36 MOVE                             R8 R2
       37 MOVE                             R9 R3
       38 CALL                             R6 3 0
       39 GETTABLEKS                       R8 R0 K3 ["VersionItemSelect"]
       41 GETTABLEN                        R7 R8 2
       42 ADDK                             R6 R7 K8 [1]
       43 GETUPVAL                         R7 1
       44 GETTABLEKS                       R7 R7 K9 ["Localization"]
       46 LOADK                            R9 K10 ["AssetConfig"]
       47 LOADK                            R10 K11 ["RestoredFromVersion"]
       48 DUPTABLE                         R11 K13 [{"versionNumber"}]
       49 FASTCALL1                        TOSTRING R3 ; [+3]
       50 MOVE                             R13 R3
       51 GETIMPORT                        R12 K15 [tostring]
       53 CALL                             R12 1 1
       54 SETTABLEKS                       R12 R11 K12 ["versionNumber"]
       56 NAMECALL                         R7 R7 K16 ["getText"]
       58 CALL                             R7 4 1
       59 SETTABLE                         R7 R4 R6
       60 GETIMPORT                        R6 K18 [pairs]
       62 MOVE                             R7 R4
       63 CALL                             R6 1 3
       64 FORGPREP_NEXT                    R6
       65 JUMPIFNOT                        R10 ; [+10]
       66 GETUPVAL                         R11 0
       67 GETTABLEKS                       R11 R11 K0 ["props"]
       69 GETTABLEKS                       R11 R11 K19 ["postVersionDescription"]
       71 MOVE                             R12 R5
       72 MOVE                             R13 R2
       73 MOVE                             R14 R9
       74 MOVE                             R15 R10
       75 CALL                             R11 4 0
       76 FORGLOOP                         R6 2 ; [-12]
       78 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["assetConfigData"]
        5 GETTABLEKS                       R2 R1 K2 ["Id"]
        7 GETTABLEKS                       R3 R0 K3 ["VersionItemSelect"]
        9 JUMPIFNOT                        R3 ; [+3]
       10 GETTABLEKS                       R4 R0 K3 ["VersionItemSelect"]
       12 GETTABLEN                        R3 R4 1
       13 JUMPIFNOT                        R2 ; [+20]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K0 ["props"]
       17 GETTABLEKS                       R4 R4 K4 ["dispatchPutPackagePermissionsRequest"]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K0 ["props"]
       22 GETTABLEKS                       R5 R5 K5 ["Network"]
       24 GETTABLEKS                       R5 R5 K6 ["networkInterface"]
       26 MOVE                             R6 R2
       27 MOVE                             R7 R3
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R8 R8 K0 ["props"]
       31 GETTABLEKS                       R8 R8 K7 ["Localization"]
       33 CALL                             R4 4 0
       34 RETURN                           R0 0

PROTO_17:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          UPVAL U11
       14 CAPTURE                          UPVAL U12
       15 CAPTURE                          UPVAL U13
       16 CAPTURE                          UPVAL U14
       17 NEWCLOSURE                       R2 P1
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U15
       20 NEWCLOSURE                       R3 P2
       21 CAPTURE                          UPVAL U1
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K0 ["props"]
       25 GETTABLEKS                       R4 R4 K1 ["changeTable"]
       27 MOVE                             R5 R4
       28 JUMPIFNOT                        R5 ; [+8]
       29 GETIMPORT                        R6 K3 [next]
       31 MOVE                             R7 R4
       32 CALL                             R6 1 1
       33 JUMPIFNOTEQKNIL                  R6 ; [+2]
       35 LOADB                            R5 0 +1
       36 LOADB                            R5 1
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K0 ["props"]
       40 GETTABLEKS                       R6 R6 K4 ["resetUploadResult"]
       42 CALL                             R6 0 0
       43 GETUPVAL                         R6 0
       44 CALL                             R6 0 1
       45 JUMPIFNOT                        R6 ; [+287]
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R6 R6 K5 ["state"]
       49 GETUPVAL                         R7 6
       50 GETTABLEKS                       R7 R7 K6 ["FLOW_TYPE"]
       52 GETTABLEKS                       R7 R7 K7 ["DOWNLOAD_FLOW"]
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R8 R8 K0 ["props"]
       57 GETTABLEKS                       R8 R8 K8 ["screenFlowType"]
       59 JUMPIFNOTEQ                      R7 R8 ; [+16]
       61 GETUPVAL                         R7 1
       62 GETTABLEKS                       R7 R7 K0 ["props"]
       64 GETTABLEKS                       R7 R7 K9 ["dispatchDownloadFlow"]
       66 MOVE                             R8 R0
       67 GETTABLEKS                       R9 R6 K10 ["overrideAssetId"]
       69 GETUPVAL                         R10 1
       70 GETTABLEKS                       R10 R10 K0 ["props"]
       72 GETTABLEKS                       R10 R10 K11 ["onClose"]
       74 CALL                             R7 3 0
       75 JUMP                             ; [+259]
       76 GETUPVAL                         R7 6
       77 GETTABLEKS                       R7 R7 K6 ["FLOW_TYPE"]
       79 GETTABLEKS                       R7 R7 K12 ["EDIT_FLOW"]
       81 GETUPVAL                         R8 1
       82 GETTABLEKS                       R8 R8 K0 ["props"]
       84 GETTABLEKS                       R8 R8 K8 ["screenFlowType"]
       86 JUMPIFNOTEQ                      R7 R8 ; [+76]
       88 GETUPVAL                         R7 1
       89 GETTABLEKS                       R7 R7 K0 ["props"]
       91 GETTABLEKS                       R7 R7 K13 ["dispatchEditFlow"]
       93 DUPTABLE                         R8 K28 [{"networkInterface", "ixp", "assetId", "stateAssetId", "name", "description", "price", "status", "copyOn", "copyChanged", "commentOn", "isAssetPublic", "iconFile", "assetMediaUpdateData"}]
       94 GETUPVAL                         R9 1
       95 GETTABLEKS                       R9 R9 K0 ["props"]
       97 GETTABLEKS                       R9 R9 K29 ["Network"]
       99 GETTABLEKS                       R9 R9 K14 ["networkInterface"]
      101 SETTABLEKS                       R9 R8 K14 ["networkInterface"]
      103 GETUPVAL                         R9 1
      104 GETTABLEKS                       R9 R9 K0 ["props"]
      106 GETTABLEKS                       R9 R9 K30 ["IXP"]
      108 SETTABLEKS                       R9 R8 K15 ["ixp"]
      110 GETUPVAL                         R9 1
      111 GETTABLEKS                       R9 R9 K0 ["props"]
      113 GETTABLEKS                       R9 R9 K16 ["assetId"]
      115 SETTABLEKS                       R9 R8 K16 ["assetId"]
      117 GETTABLEKS                       R9 R6 K16 ["assetId"]
      119 SETTABLEKS                       R9 R8 K17 ["stateAssetId"]
      121 GETTABLEKS                       R9 R6 K18 ["name"]
      123 SETTABLEKS                       R9 R8 K18 ["name"]
      125 GETTABLEKS                       R9 R6 K19 ["description"]
      127 SETTABLEKS                       R9 R8 K19 ["description"]
      129 GETTABLEKS                       R9 R6 K20 ["price"]
      131 SETTABLEKS                       R9 R8 K20 ["price"]
      133 GETTABLEKS                       R9 R6 K21 ["status"]
      135 SETTABLEKS                       R9 R8 K21 ["status"]
      137 GETTABLEKS                       R9 R6 K22 ["copyOn"]
      139 SETTABLEKS                       R9 R8 K22 ["copyOn"]
      141 GETTABLEKS                       R9 R6 K23 ["copyChanged"]
      143 SETTABLEKS                       R9 R8 K23 ["copyChanged"]
      145 GETTABLEKS                       R9 R6 K24 ["commentOn"]
      147 SETTABLEKS                       R9 R8 K24 ["commentOn"]
      149 GETTABLEKS                       R9 R6 K25 ["isAssetPublic"]
      151 SETTABLEKS                       R9 R8 K25 ["isAssetPublic"]
      153 GETTABLEKS                       R9 R6 K26 ["iconFile"]
      155 SETTABLEKS                       R9 R8 K26 ["iconFile"]
      157 GETTABLEKS                       R9 R6 K27 ["assetMediaUpdateData"]
      159 SETTABLEKS                       R9 R8 K27 ["assetMediaUpdateData"]
      161 CALL                             R7 1 0
      162 JUMP                             ; [+172]
      163 GETUPVAL                         R7 6
      164 GETTABLEKS                       R7 R7 K6 ["FLOW_TYPE"]
      166 GETTABLEKS                       R7 R7 K31 ["UPLOAD_FLOW"]
      168 GETUPVAL                         R8 1
      169 GETTABLEKS                       R8 R8 K0 ["props"]
      171 GETTABLEKS                       R8 R8 K8 ["screenFlowType"]
      173 JUMPIFNOTEQ                      R7 R8 ; [+161]
      175 GETUPVAL                         R7 11
      176 GETUPVAL                         R9 1
      177 GETTABLEKS                       R9 R9 K0 ["props"]
      179 GETTABLEKS                       R9 R9 K32 ["assetTypeEnum"]
      181 GETTABLEKS                       R10 R6 K33 ["dataSharingEnabled"]
      183 GETTABLEKS                       R11 R6 K34 ["dataSharingToggled"]
      185 NAMECALL                         R7 R7 K35 ["getDataSharingLicenseTypes"]
      187 CALL                             R7 4 1
      188 GETUPVAL                         R8 1
      189 GETTABLEKS                       R8 R8 K0 ["props"]
      191 GETTABLEKS                       R8 R8 K36 ["dispatchUploadFlow"]
      193 DUPTABLE                         R9 K43 [{"networkInterface", "localization", "publishService", "ixp", "assetId", "groupId", "name", "description", "overrideAssetId", "copyOn", "commentOn", "status", "price", "iconFile", "selectedColor", "assetMediaUpdateData", "dataSharingLicenseTypes", "dataSharingEnabled", "dataSharingToggled", "publishOnApprovalCreationContext"}]
      194 GETUPVAL                         R10 1
      195 GETTABLEKS                       R10 R10 K0 ["props"]
      197 GETTABLEKS                       R10 R10 K29 ["Network"]
      199 GETTABLEKS                       R10 R10 K14 ["networkInterface"]
      201 SETTABLEKS                       R10 R9 K14 ["networkInterface"]
      203 GETUPVAL                         R10 1
      204 GETTABLEKS                       R10 R10 K0 ["props"]
      206 GETTABLEKS                       R10 R10 K44 ["Localization"]
      208 SETTABLEKS                       R10 R9 K37 ["localization"]
      210 GETUPVAL                         R10 1
      211 GETTABLEKS                       R10 R10 K0 ["props"]
      213 GETTABLEKS                       R10 R10 K45 ["PublishService"]
      215 GETTABLEKS                       R10 R10 K38 ["publishService"]
      217 SETTABLEKS                       R10 R9 K38 ["publishService"]
      219 GETUPVAL                         R10 1
      220 GETTABLEKS                       R10 R10 K0 ["props"]
      222 GETTABLEKS                       R10 R10 K30 ["IXP"]
      224 SETTABLEKS                       R10 R9 K15 ["ixp"]
      226 GETUPVAL                         R10 1
      227 GETTABLEKS                       R10 R10 K0 ["props"]
      229 GETTABLEKS                       R10 R10 K16 ["assetId"]
      231 SETTABLEKS                       R10 R9 K16 ["assetId"]
      233 GETUPVAL                         R11 1
      234 GETTABLEKS                       R11 R11 K0 ["props"]
      236 GETTABLEKS                       R11 R11 K39 ["groupId"]
      238 JUMPIFNOT                        R11 ; [+16]
      239 GETUPVAL                         R11 1
      240 GETTABLEKS                       R11 R11 K0 ["props"]
      242 GETTABLEKS                       R11 R11 K39 ["groupId"]
      244 GETUPVAL                         R12 2
      245 GETTABLEKS                       R12 R12 K46 ["None"]
      247 JUMPIFEQ                         R11 R12 ; [+7]
      249 GETUPVAL                         R10 1
      250 GETTABLEKS                       R10 R10 K0 ["props"]
      252 GETTABLEKS                       R10 R10 K39 ["groupId"]
      254 JUMP                             ; [+1]
      255 LOADNIL                          R10
      256 SETTABLEKS                       R10 R9 K39 ["groupId"]
      258 GETTABLEKS                       R10 R6 K18 ["name"]
      260 SETTABLEKS                       R10 R9 K18 ["name"]
      262 GETTABLEKS                       R10 R6 K19 ["description"]
      264 SETTABLEKS                       R10 R9 K19 ["description"]
      266 GETTABLEKS                       R10 R6 K10 ["overrideAssetId"]
      268 SETTABLEKS                       R10 R9 K10 ["overrideAssetId"]
      270 GETTABLEKS                       R10 R6 K22 ["copyOn"]
      272 SETTABLEKS                       R10 R9 K22 ["copyOn"]
      274 GETTABLEKS                       R10 R6 K24 ["commentOn"]
      276 SETTABLEKS                       R10 R9 K24 ["commentOn"]
      278 GETTABLEKS                       R10 R6 K21 ["status"]
      280 SETTABLEKS                       R10 R9 K21 ["status"]
      282 GETTABLEKS                       R10 R6 K20 ["price"]
      284 SETTABLEKS                       R10 R9 K20 ["price"]
      286 GETTABLEKS                       R10 R6 K26 ["iconFile"]
      288 SETTABLEKS                       R10 R9 K26 ["iconFile"]
      290 GETTABLEKS                       R10 R6 K40 ["selectedColor"]
      292 SETTABLEKS                       R10 R9 K40 ["selectedColor"]
      294 GETTABLEKS                       R10 R6 K27 ["assetMediaUpdateData"]
      296 SETTABLEKS                       R10 R9 K27 ["assetMediaUpdateData"]
      298 SETTABLEKS                       R7 R9 K41 ["dataSharingLicenseTypes"]
      300 GETTABLEKS                       R10 R6 K33 ["dataSharingEnabled"]
      302 SETTABLEKS                       R10 R9 K33 ["dataSharingEnabled"]
      304 GETTABLEKS                       R10 R6 K34 ["dataSharingToggled"]
      306 SETTABLEKS                       R10 R9 K34 ["dataSharingToggled"]
      308 GETUPVAL                         R10 8
      309 GETTABLEKS                       R10 R10 K47 ["getPublishOnApprovalCreationContext"]
      311 GETTABLEKS                       R11 R6 K48 ["publishOnApprovalToggled"]
      313 GETUPVAL                         R12 1
      314 GETTABLEKS                       R12 R12 K0 ["props"]
      316 GETTABLEKS                       R12 R12 K49 ["hasPublishingPreferences"]
      318 GETUPVAL                         R13 1
      319 GETTABLEKS                       R13 R13 K0 ["props"]
      321 GETTABLEKS                       R13 R13 K50 ["hasPublishingFeePreview"]
      323 GETUPVAL                         R14 1
      324 GETTABLEKS                       R14 R14 K0 ["props"]
      326 GETTABLEKS                       R14 R14 K51 ["publishingFeePreview"]
      328 CALL                             R10 4 1
      329 SETTABLEKS                       R10 R9 K42 ["publishOnApprovalCreationContext"]
      331 CALL                             R8 1 0
      332 JUMP                             ; [+2]
      333 MOVE                             R6 R1
      334 CALL                             R6 0 0
      335 JUMPIFNOT                        R5 ; [+43]
      336 MOVE                             R6 R2
      337 MOVE                             R7 R4
      338 CALL                             R6 1 0
      339 GETUPVAL                         R6 1
      340 GETTABLEKS                       R6 R6 K0 ["props"]
      342 GETTABLEKS                       R6 R6 K52 ["isPackageAsset"]
      344 JUMPIFNOT                        R6 ; [+34]
      345 GETUPVAL                         R6 1
      346 GETTABLEKS                       R6 R6 K0 ["props"]
      348 GETTABLEKS                       R6 R6 K53 ["assetConfigData"]
      350 GETTABLEKS                       R7 R6 K54 ["Id"]
      352 GETTABLEKS                       R8 R4 K55 ["VersionItemSelect"]
      354 JUMPIFNOT                        R8 ; [+3]
      355 GETTABLEKS                       R9 R4 K55 ["VersionItemSelect"]
      357 GETTABLEN                        R8 R9 1
      358 JUMPIFNOT                        R7 ; [+20]
      359 GETUPVAL                         R9 1
      360 GETTABLEKS                       R9 R9 K0 ["props"]
      362 GETTABLEKS                       R9 R9 K56 ["dispatchPutPackagePermissionsRequest"]
      364 GETUPVAL                         R10 1
      365 GETTABLEKS                       R10 R10 K0 ["props"]
      367 GETTABLEKS                       R10 R10 K29 ["Network"]
      369 GETTABLEKS                       R10 R10 K14 ["networkInterface"]
      371 MOVE                             R11 R7
      372 MOVE                             R12 R8
      373 GETUPVAL                         R13 1
      374 GETTABLEKS                       R13 R13 K0 ["props"]
      376 GETTABLEKS                       R13 R13 K44 ["Localization"]
      378 CALL                             R9 4 0
      379 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["changeTable"]
        5 JUMPIF                           R1 ; [+2]
        6 NEWTABLE                         R1 0 0
        8 GETIMPORT                        R3 K3 [next]
       10 MOVE                             R4 R1
       11 CALL                             R3 1 1
       12 JUMPIFNOTEQKNIL                  R3 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 LOADB                            R3 0
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K4 ["assetTypeEnum"]
       20 GETIMPORT                        R5 K8 [Enum.AssetType.Animation]
       22 JUMPIFNOTEQ                      R4 R5 ; [+15]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K0 ["props"]
       27 GETTABLEKS                       R4 R4 K9 ["screenFlowType"]
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K10 ["FLOW_TYPE"]
       32 GETTABLEKS                       R5 R5 K11 ["DOWNLOAD_FLOW"]
       34 JUMPIFEQ                         R4 R5 ; [+2]
       36 LOADB                            R3 0 +1
       37 LOADB                            R3 1
       38 MOVE                             R4 R2
       39 JUMPIFNOT                        R4 ; [+1]
       40 NOT                              R4 R3
       41 JUMPIFNOT                        R4 ; [+14]
       42 NEWCLOSURE                       R5 P0
       43 CAPTURE                          UPVAL U0
       44 JUMPIFNOT                        R0 ; [+6]
       45 GETUPVAL                         R6 0
       46 DUPTABLE                         R8 K14 [{["isShowChangeDiscardMessageBox"] = True}]
       47 NAMECALL                         R6 R6 K15 ["setState"]
       49 CALL                             R6 2 0
       50 RETURN                           R0 0
       51 GETIMPORT                        R6 K17 [spawn]
       53 MOVE                             R7 R5
       54 CALL                             R6 1 0
       55 RETURN                           R0 0
       56 GETUPVAL                         R5 0
       57 GETTABLEKS                       R5 R5 K0 ["props"]
       59 GETTABLEKS                       R5 R5 K18 ["onClose"]
       61 CALL                             R5 0 0
       62 GETIMPORT                        R5 K20 [game]
       64 LOADK                            R7 K21 ["StudioAssetService"]
       65 NAMECALL                         R5 R5 K22 ["GetService"]
       67 CALL                             R5 2 1
       68 LOADB                            R7 0
       69 NAMECALL                         R5 R5 K23 ["FireOnUGCSubmitCompleted"]
       71 CALL                             R5 2 0
       72 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tryCancel"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tryCancel"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_23:
        0 JUMPIFNOTEQKS                    R1 K0 ["yes"] ; [+48]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOT                        R2 ; [+23]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["props"]
        7 GETTABLEKS                       R2 R2 K2 ["changeTable"]
        9 JUMPIFNOT                        R2 ; [+17]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K1 ["props"]
       13 GETTABLEKS                       R2 R2 K2 ["changeTable"]
       15 GETTABLEKS                       R2 R2 K3 ["VersionDescriptionSave"]
       17 JUMPIFNOT                        R2 ; [+9]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K4 ["onPackageNoteCanceled"]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K1 ["props"]
       24 GETTABLEKS                       R3 R3 K5 ["assetId"]
       26 CALL                             R2 1 0
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K1 ["props"]
       30 GETTABLEKS                       R2 R2 K6 ["Focus"]
       32 NAMECALL                         R2 R2 K7 ["get"]
       34 CALL                             R2 1 1
       35 LOADB                            R3 0
       36 SETTABLEKS                       R3 R2 K8 ["Enabled"]
       38 GETIMPORT                        R3 K10 [game]
       40 LOADK                            R5 K11 ["StudioAssetService"]
       41 NAMECALL                         R3 R3 K12 ["GetService"]
       43 CALL                             R3 2 1
       44 LOADB                            R5 1
       45 NAMECALL                         R3 R3 K13 ["FireOnUGCSubmitCompleted"]
       47 CALL                             R3 2 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R2 1
       50 DUPTABLE                         R4 K16 [{["isShowChangeDiscardMessageBox"] = False}]
       51 NAMECALL                         R2 R2 K17 ["setState"]
       53 CALL                             R2 2 0
       54 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["assetConfigData"]
        5 JUMPIFNOT                        R3 ; [+7]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["props"]
        9 GETTABLEKS                       R3 R3 K1 ["assetConfigData"]
       11 GETTABLE                         R2 R3 R0
       12 JUMPIF                           R2 ; [+1]
       13 MOVE                             R2 R1
       14 RETURN                           R2 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["makeChangeRequest"]
        5 LOADK                            R2 K2 ["AssetConfigName"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["props"]
        9 GETTABLEKS                       R4 R4 K3 ["assetConfigData"]
       11 JUMPIFNOT                        R4 ; [+8]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K0 ["props"]
       15 GETTABLEKS                       R4 R4 K3 ["assetConfigData"]
       17 GETTABLEKS                       R3 R4 K4 ["Name"]
       19 JUMPIF                           R3 ; [+1]
       20 LOADK                            R3 K5 [""]
       21 MOVE                             R4 R0
       22 CALL                             R1 3 0
       23 GETUPVAL                         R1 0
       24 DUPTABLE                         R3 K9 [{["name"], ["showNameRequiredError"] = False}]
       25 SETTABLEKS                       R0 R3 K6 ["name"]
       27 NAMECALL                         R1 R1 K10 ["setState"]
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["makeChangeRequest"]
        5 LOADK                            R2 K2 ["AssetConfigDesc"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["props"]
        9 GETTABLEKS                       R4 R4 K3 ["assetConfigData"]
       11 JUMPIFNOT                        R4 ; [+8]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K0 ["props"]
       15 GETTABLEKS                       R4 R4 K3 ["assetConfigData"]
       17 GETTABLEKS                       R3 R4 K4 ["Description"]
       19 JUMPIF                           R3 ; [+1]
       20 LOADK                            R3 K5 [""]
       21 MOVE                             R4 R0
       22 CALL                             R1 3 0
       23 GETUPVAL                         R1 0
       24 DUPTABLE                         R3 K9 [{["description"], ["showDescriptionRequiredError"] = False}]
       25 SETTABLEKS                       R0 R3 K6 ["description"]
       27 NAMECALL                         R1 R1 K10 ["setState"]
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["makeChangeRequest"]
        5 LOADK                            R2 K2 ["AssetConfigStatus"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["props"]
        9 GETTABLEKS                       R4 R4 K3 ["assetConfigData"]
       11 JUMPIFNOT                        R4 ; [+8]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K0 ["props"]
       15 GETTABLEKS                       R4 R4 K3 ["assetConfigData"]
       17 GETTABLEKS                       R3 R4 K4 ["Status"]
       19 JUMPIF                           R3 ; [+1]
       20 LOADNIL                          R3
       21 MOVE                             R4 R0
       22 CALL                             R1 3 0
       23 GETUPVAL                         R1 0
       24 DUPTABLE                         R3 K6 [{"status"}]
       25 SETTABLEKS                       R0 R3 K5 ["status"]
       27 NAMECALL                         R1 R1 K7 ["setState"]
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["makeChangeRequest"]
        5 LOADK                            R2 K2 ["AssetConfigPrice"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["props"]
        9 GETTABLEKS                       R4 R4 K3 ["assetConfigData"]
       11 JUMPIFNOT                        R4 ; [+8]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K0 ["props"]
       15 GETTABLEKS                       R4 R4 K3 ["assetConfigData"]
       17 GETTABLEKS                       R3 R4 K4 ["Price"]
       19 JUMPIF                           R3 ; [+1]
       20 LOADNIL                          R3
       21 MOVE                             R4 R0
       22 CALL                             R1 3 0
       23 GETUPVAL                         R1 0
       24 DUPTABLE                         R3 K6 [{"price"}]
       25 SETTABLEKS                       R0 R3 K5 ["price"]
       27 NAMECALL                         R1 R1 K7 ["setState"]
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 DUPTABLE                         R2 K2 [{[1] = False}]
        6 NAMECALL                         R0 R0 K3 ["setState"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADB                            R0 0
        4 RETURN                           R0 1
        5 LOADB                            R0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K0 ["FLOW_TYPE"]
        9 GETTABLEKS                       R1 R1 K1 ["UPLOAD_FLOW"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["props"]
       14 GETTABLEKS                       R2 R2 K3 ["screenFlowType"]
       16 JUMPIFNOTEQ                      R1 R2 ; [+32]
       18 GETUPVAL                         R0 3
       19 GETTABLEKS                       R0 R0 K4 ["canAutoPublishAvatarAssetType"]
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K2 ["props"]
       24 GETTABLEKS                       R1 R1 K5 ["assetTypeEnum"]
       26 CALL                             R0 1 1
       27 JUMPIFNOT                        R0 ; [+21]
       28 LOADB                            R0 0
       29 GETUPVAL                         R1 4
       30 GETTABLEKS                       R1 R1 K6 ["isEmissiveFromAttributes"]
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K2 ["props"]
       35 GETTABLEKS                       R2 R2 K7 ["specialAttributes"]
       37 CALL                             R1 1 1
       38 JUMPIFEQKB                       R1 TRUE ; [+10]
       40 GETUPVAL                         R1 2
       41 GETTABLEKS                       R1 R1 K2 ["props"]
       43 GETTABLEKS                       R1 R1 K8 ["isUploadFeeEnabled"]
       45 JUMPIFEQKB                       R1 TRUE ; [+2]
       47 LOADB                            R0 0 +1
       48 LOADB                            R0 1
       49 RETURN                           R0 1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 DUPTABLE                         R0 K5 [{"publishOnApprovalEnabled", "publishOnApprovalToggled", "hasPublishingPreferences", "hasPublishingFeePreview", "publishingFeePreview"}]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K6 ["canOfferPublishOnApproval"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K0 ["publishOnApprovalEnabled"]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K7 ["state"]
       15 GETTABLEKS                       R1 R1 K1 ["publishOnApprovalToggled"]
       17 SETTABLEKS                       R1 R0 K1 ["publishOnApprovalToggled"]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K8 ["props"]
       22 GETTABLEKS                       R1 R1 K2 ["hasPublishingPreferences"]
       24 SETTABLEKS                       R1 R0 K2 ["hasPublishingPreferences"]
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K8 ["props"]
       29 GETTABLEKS                       R1 R1 K3 ["hasPublishingFeePreview"]
       31 SETTABLEKS                       R1 R0 K3 ["hasPublishingFeePreview"]
       33 GETUPVAL                         R1 1
       34 GETTABLEKS                       R1 R1 K8 ["props"]
       36 GETTABLEKS                       R1 R1 K4 ["publishingFeePreview"]
       38 SETTABLEKS                       R1 R0 K4 ["publishingFeePreview"]
       40 RETURN                           R0 1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["publishingPreferencesGeneration"]
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 RETURN                           R0 1

PROTO_33:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["canOfferPublishOnApproval"]
        7 CALL                             R1 0 1
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R2 R1 K1 ["publishingPreferencesGeneration"]
       13 ADDK                             R2 R2 K2 [1]
       14 SETTABLEKS                       R2 R1 K1 ["publishingPreferencesGeneration"]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K1 ["publishingPreferencesGeneration"]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K3 ["props"]
       22 GETTABLEKS                       R2 R2 K4 ["clearPublishingPreferences"]
       24 CALL                             R2 0 0
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K3 ["props"]
       28 GETTABLEKS                       R2 R2 K5 ["getPublishingPreferences"]
       30 GETUPVAL                         R3 1
       31 GETTABLEKS                       R3 R3 K3 ["props"]
       33 GETTABLEKS                       R3 R3 K6 ["Network"]
       35 GETTABLEKS                       R3 R3 K7 ["networkInterface"]
       37 MOVE                             R4 R0
       38 NEWCLOSURE                       R5 P0
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U1
       41 CALL                             R2 3 0
       42 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["assetTypeEnum"]
        5 GETUPVAL                         R2 1
        6 JUMPIFEQ                         R1 R2 ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 RETURN                           R0 1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["canOfferPublishOnApproval"]
        7 CALL                             R1 0 1
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K1 ["props"]
       13 GETTABLEKS                       R1 R1 K2 ["clearPublishingFeePreview"]
       15 CALL                             R1 0 0
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K1 ["props"]
       19 GETTABLEKS                       R1 R1 K3 ["getPublishingFeePreview"]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K1 ["props"]
       24 GETTABLEKS                       R2 R2 K4 ["Network"]
       26 GETTABLEKS                       R2 R2 K5 ["networkInterface"]
       28 MOVE                             R3 R0
       29 NEWCLOSURE                       R4 P0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R0
       32 CALL                             R1 3 0
       33 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["assetConfigData"]
        5 GETTABLEKS                       R2 R2 K2 ["Creator"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["props"]
       13 GETTABLEKS                       R3 R3 K3 ["makeChangeRequest"]
       15 LOADK                            R4 K4 ["AssetConfigOwner"]
       16 GETTABLEKS                       R6 R2 K6 ["type"]
       18 ORK                              R5 R6 K5 [1]
       19 MOVE                             R6 R0
       20 CALL                             R3 3 0
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K7 ["None"]
       24 LOADB                            R4 0
       25 GETTABLEKS                       R5 R1 K8 ["creatorType"]
       27 JUMPIFNOTEQKS                    R5 K9 ["Group"] ; [+4]
       29 GETTABLEKS                       R3 R1 K10 ["creatorId"]
       31 LOADB                            R4 1
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K11 ["Dictionary"]
       35 GETTABLEKS                       R5 R5 K12 ["join"]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K13 ["state"]
       40 GETTABLEKS                       R6 R6 K14 ["owner"]
       42 JUMPIF                           R6 ; [+2]
       43 NEWTABLE                         R6 0 0
       45 DUPTABLE                         R7 K16 [{"typeId"}]
       46 SETTABLEKS                       R0 R7 K15 ["typeId"]
       48 CALL                             R5 2 1
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R6 R6 K0 ["props"]
       52 GETTABLEKS                       R6 R6 K17 ["setOwner"]
       54 MOVE                             R7 R5
       55 MOVE                             R8 R3
       56 CALL                             R6 2 0
       57 GETUPVAL                         R6 0
       58 GETTABLEKS                       R6 R6 K18 ["clearPublishOnApprovalOptIn"]
       60 CALL                             R6 0 0
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R6 R6 K19 ["fetchPublishingPreferences"]
       64 JUMPIFNOT                        R4 ; [+2]
       65 MOVE                             R7 R3
       66 JUMP                             ; [+1]
       67 LOADNIL                          R7
       68 CALL                             R6 1 0
       69 RETURN                           R0 0

PROTO_37:
        0 DUPTABLE                         R1 K1 [{"dataSharingToggled"}]
        1 GETTABLEKS                       R3 R0 K0 ["dataSharingToggled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["dataSharingToggled"]
        6 RETURN                           R1 1

PROTO_38:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_37]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_39:
        0 DUPTABLE                         R1 K1 [{"publishOnApprovalToggled"}]
        1 GETTABLEKS                       R3 R0 K0 ["publishOnApprovalToggled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["publishOnApprovalToggled"]
        6 RETURN                           R1 1

PROTO_40:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 DUPCLOSURE                       R2 K0 [PROTO_39]
        6 NAMECALL                         R0 R0 K1 ["setState"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_41:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 LOADB                            R1 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K0 ["state"]
        6 GETTABLEKS                       R2 R2 K1 ["status"]
        8 GETUPVAL                         R3 0
        9 DUPTABLE                         R5 K4 [{"copyChanged", "copyOn", "status"}]
       10 SETTABLEKS                       R1 R5 K2 ["copyChanged"]
       12 SETTABLEKS                       R0 R5 K3 ["copyOn"]
       14 SETTABLEKS                       R2 R5 K1 ["status"]
       16 NAMECALL                         R3 R3 K5 ["setState"]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K7 ["props"]
       22 GETTABLEKS                       R4 R4 K8 ["assetConfigData"]
       24 GETTABLEKS                       R4 R4 K9 ["IsCopyingAllowed"]
       26 ORK                              R3 R4 K6 [False]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K7 ["props"]
       30 GETTABLEKS                       R4 R4 K10 ["fiatProduct"]
       32 JUMPIFNOT                        R4 ; [+7]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K7 ["props"]
       36 GETTABLEKS                       R4 R4 K10 ["fiatProduct"]
       38 GETTABLEKS                       R3 R4 K11 ["purchasable"]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K7 ["props"]
       43 GETTABLEKS                       R4 R4 K12 ["makeChangeRequest"]
       45 LOADK                            R5 K13 ["AssetConfigCopy"]
       46 MOVE                             R6 R3
       47 MOVE                             R7 R0
       48 CALL                             R4 3 0
       49 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"commentOn"}]
        2 SETTABLEKS                       R0 R3 K0 ["commentOn"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["props"]
       10 GETTABLEKS                       R1 R1 K4 ["makeChangeRequest"]
       12 LOADK                            R2 K5 ["AssetConfigComment"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K3 ["props"]
       16 GETTABLEKS                       R4 R4 K7 ["assetConfigData"]
       18 GETTABLEKS                       R4 R4 K8 ["EnableComments"]
       20 ORK                              R3 R4 K6 [False]
       21 MOVE                             R4 R0
       22 CALL                             R1 3 0
       23 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["updateStore"]
        5 DUPTABLE                         R2 K3 [{"deleteLocal"}]
        6 SETTABLEKS                       R0 R2 K2 ["deleteLocal"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["props"]
        3 GETTABLEKS                       R4 R4 K1 ["updateStore"]
        5 DUPTABLE                         R5 K6 [{"animationPackType", "animationPackSubName", "animationPackWeight", "animationPackParentModelName"}]
        6 MOVE                             R6 R0
        7 JUMPIF                           R6 ; [+3]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K7 ["None"]
       11 SETTABLEKS                       R6 R5 K2 ["animationPackType"]
       13 MOVE                             R6 R1
       14 JUMPIF                           R6 ; [+3]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K7 ["None"]
       18 SETTABLEKS                       R6 R5 K3 ["animationPackSubName"]
       20 MOVE                             R6 R2
       21 JUMPIF                           R6 ; [+3]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K7 ["None"]
       25 SETTABLEKS                       R6 R5 K4 ["animationPackWeight"]
       27 MOVE                             R6 R3
       28 JUMPIF                           R6 ; [+3]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K7 ["None"]
       32 SETTABLEKS                       R6 R5 K5 ["animationPackParentModelName"]
       34 CALL                             R4 1 0
       35 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["updateStore"]
        5 DUPTABLE                         R2 K3 [{"animationSectionValid"}]
        6 SETTABLEKS                       R0 R2 K2 ["animationSectionValid"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K3 [{[1], ["showColorPickerRequiredError"] = False}]
        2 SETTABLEKS                       R0 R3 K0 ["selectedColor"]
        4 NAMECALL                         R1 R1 K4 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K5 ["setThumbnailSkinColor"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K6 ["props"]
       13 GETTABLEKS                       R2 R2 K7 ["Plugin"]
       15 NAMECALL                         R2 R2 K8 ["get"]
       17 CALL                             R2 1 1
       18 MOVE                             R3 R0
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["state"]
        3 GETTABLEKS                       R3 R3 K1 ["versionsOpenInputKey"]
        5 LOADNIL                          R4
        6 JUMPIFEQKNIL                     R0 ; [+3]
        8 JUMPIFNOTEQ                      R3 R0 ; [+3]
       10 JUMPIFNOTEQKNIL                  R3 ; [+2]
       12 MOVE                             R4 R0
       13 GETUPVAL                         R5 1
       14 JUMPIFNOT                        R5 ; [+46]
       15 JUMPIFNOT                        R2 ; [+45]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K0 ["state"]
       19 GETTABLEKS                       R5 R5 K2 ["versionsRootItems"]
       21 JUMPIFNOT                        R5 ; [+39]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K0 ["state"]
       25 GETTABLEKS                       R6 R6 K2 ["versionsRootItems"]
       27 GETTABLE                         R5 R6 R3
       28 JUMPIFNOT                        R5 ; [+32]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K0 ["state"]
       32 GETTABLEKS                       R6 R6 K2 ["versionsRootItems"]
       34 GETTABLE                         R5 R6 R3
       35 GETTABLEKS                       R5 R5 K3 ["descriptionColumn"]
       37 JUMPIFNOT                        R5 ; [+23]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K0 ["state"]
       41 GETTABLEKS                       R6 R6 K2 ["versionsRootItems"]
       43 GETTABLE                         R5 R6 R3
       44 GETTABLEKS                       R5 R5 K3 ["descriptionColumn"]
       46 GETTABLEKS                       R5 R5 K4 ["versionDescription"]
       48 JUMPIFEQ                         R1 R5 ; [+12]
       50 GETUPVAL                         R5 2
       51 GETTABLEKS                       R5 R5 K5 ["onPackageNoteDiscarded"]
       53 GETUPVAL                         R6 0
       54 GETTABLEKS                       R6 R6 K6 ["props"]
       56 GETTABLEKS                       R6 R6 K7 ["assetId"]
       58 MOVE                             R7 R3
       59 MOVE                             R8 R1
       60 CALL                             R5 3 0
       61 JUMPIF                           R2 ; [+27]
       62 GETUPVAL                         R6 0
       63 GETTABLEKS                       R6 R6 K0 ["state"]
       65 GETTABLEKS                       R6 R6 K2 ["versionsRootItems"]
       67 GETTABLE                         R5 R6 R3
       68 JUMPIFNOT                        R5 ; [+20]
       69 GETUPVAL                         R6 0
       70 GETTABLEKS                       R6 R6 K0 ["state"]
       72 GETTABLEKS                       R6 R6 K2 ["versionsRootItems"]
       74 GETTABLE                         R5 R6 R3
       75 GETTABLEKS                       R5 R5 K3 ["descriptionColumn"]
       77 GETTABLEKS                       R5 R5 K4 ["versionDescription"]
       79 JUMPIFEQ                         R1 R5 ; [+9]
       81 GETUPVAL                         R5 0
       82 GETTABLEKS                       R5 R5 K8 ["versionsSaveInput"]
       84 MOVE                             R6 R1
       85 MOVE                             R7 R3
       86 MOVE                             R8 R4
       87 CALL                             R5 3 0
       88 RETURN                           R0 0
       89 JUMPIFNOT                        R4 ; [+7]
       90 GETUPVAL                         R5 0
       91 DUPTABLE                         R7 K9 [{"versionsOpenInputKey"}]
       92 SETTABLEKS                       R4 R7 K1 ["versionsOpenInputKey"]
       94 NAMECALL                         R5 R5 K10 ["setState"]
       96 CALL                             R5 2 0
       97 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["state"]
        3 GETTABLEKS                       R5 R5 K1 ["versionsRootItems"]
        5 GETTABLE                         R6 R5 R1
        6 JUMPIFNOT                        R6 ; [+37]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R7 R7 K2 ["props"]
       10 GETTABLEKS                       R7 R7 K3 ["changeTable"]
       12 GETTABLEKS                       R7 R7 K4 ["VersionDescriptionSave"]
       14 JUMPIFNOT                        R7 ; [+8]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K2 ["props"]
       18 GETTABLEKS                       R6 R6 K3 ["changeTable"]
       20 GETTABLEKS                       R6 R6 K4 ["VersionDescriptionSave"]
       22 JUMP                             ; [+2]
       23 NEWTABLE                         R6 0 0
       25 GETUPVAL                         R7 1
       26 MOVE                             R8 R6
       27 CALL                             R7 1 1
       28 SETTABLE                         R0 R7 R1
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K2 ["props"]
       32 GETTABLEKS                       R8 R8 K5 ["makeChangeRequest"]
       34 LOADK                            R9 K4 ["VersionDescriptionSave"]
       35 MOVE                             R10 R6
       36 MOVE                             R11 R7
       37 GETUPVAL                         R12 2
       38 CALL                             R8 4 0
       39 GETTABLE                         R8 R5 R1
       40 GETTABLEKS                       R8 R8 K6 ["descriptionColumn"]
       42 SETTABLEKS                       R0 R8 K7 ["versionDescription"]
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R6 R6 K8 ["versionsSetStates"]
       47 MOVE                             R7 R5
       48 MOVE                             R8 R2
       49 MOVE                             R9 R3
       50 MOVE                             R10 R4
       51 CALL                             R6 4 0
       52 RETURN                           R0 0

PROTO_49:
        0 DUPTABLE                         R4 K2 [{"versionsPageRootItems", "versionsRootItems"}]
        1 GETUPVAL                         R5 0
        2 JUMPIFNOT                        R2 ; [+2]
        3 MOVE                             R7 R2
        4 JUMP                             ; [+5]
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R7 R7 K3 ["state"]
        8 GETTABLEKS                       R7 R7 K4 ["versionsPageIndex"]
       10 JUMPIFNOT                        R3 ; [+2]
       11 MOVE                             R8 R3
       12 JUMP                             ; [+3]
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R8 R8 K5 ["VERSIONS_ROWS_PER_PAGE"]
       16 NAMECALL                         R5 R5 K6 ["versionsGetPageRootItems"]
       18 CALL                             R5 3 1
       19 SETTABLEKS                       R5 R4 K0 ["versionsPageRootItems"]
       21 SETTABLEKS                       R0 R4 K1 ["versionsRootItems"]
       23 JUMPIFNOT                        R1 ; [+2]
       24 SETTABLEKS                       R1 R4 K7 ["versionsOpenInputKey"]
       26 JUMPIFNOT                        R2 ; [+2]
       27 SETTABLEKS                       R2 R4 K4 ["versionsPageIndex"]
       29 GETUPVAL                         R5 0
       30 MOVE                             R7 R4
       31 NAMECALL                         R5 R5 K8 ["setState"]
       33 CALL                             R5 2 0
       34 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["versionsOpenInputKey"]
        5 JUMPIFEQKN                       R1 K2 [-1] ; [+12]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["versionsOnDescClicked"]
       10 LOADN                            R2 -1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["state"]
       14 GETTABLEKS                       R3 R3 K4 ["versionsPreviousInput"]
       16 MOVE                             R4 R0
       17 CALL                             R1 3 0
       18 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["state"]
        3 GETTABLEKS                       R2 R2 K1 ["versionDescriptionErrors"]
        5 SETTABLE                         R1 R2 R0
        6 GETUPVAL                         R3 0
        7 DUPTABLE                         R5 K2 [{"versionDescriptionErrors"}]
        8 SETTABLEKS                       R2 R5 K1 ["versionDescriptionErrors"]
       10 NAMECALL                         R3 R3 K3 ["setState"]
       12 CALL                             R3 2 0
       13 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"versionsPreviousInput"}]
        2 SETTABLEKS                       R0 R3 K0 ["versionsPreviousInput"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["versionsSaveInput"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["state"]
        6 GETTABLEKS                       R3 R3 K2 ["versionsPreviousInput"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K1 ["state"]
       11 GETTABLEKS                       R4 R4 K3 ["versionsOpenInputKey"]
       13 LOADN                            R5 -1
       14 MOVE                             R6 R0
       15 MOVE                             R7 R1
       16 CALL                             R2 5 0
       17 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["state"]
        3 GETTABLEKS                       R2 R2 K1 ["versionsOpenInputKey"]
        5 JUMPIFEQKN                       R2 K2 [1] ; [+12]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["versionsOnDescClicked"]
       10 LOADN                            R3 -1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K0 ["state"]
       14 GETTABLEKS                       R4 R4 K4 ["versionsPreviousInput"]
       16 LOADB                            R5 0
       17 CALL                             R2 3 0
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K5 ["setTab"]
       21 MOVE                             R3 R1
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"overrideAssetId"}]
        2 SETTABLEKS                       R0 R3 K0 ["overrideAssetId"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["promptImagePicker"]
        3 CALL                             R0 0 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_57:
        0 LOADNIL                          R0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 2
        7 JUMPIFNOT                        R1 ; [+27]
        8 JUMPIFNOT                        R0 ; [+26]
        9 GETUPVAL                         R3 1
       10 DUPTABLE                         R5 K3 [{"iconFile"}]
       11 SETTABLEKS                       R0 R5 K2 ["iconFile"]
       13 NAMECALL                         R3 R3 K4 ["setState"]
       15 CALL                             R3 2 0
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K5 ["props"]
       19 GETTABLEKS                       R3 R3 K6 ["makeChangeRequest"]
       21 LOADK                            R4 K7 ["AssetConfigIconSelect"]
       22 LOADK                            R5 K8 [""]
       23 GETTABLEKS                       R6 R0 K9 ["Name"]
       25 CALL                             R3 3 0
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K5 ["props"]
       29 GETTABLEKS                       R3 R3 K10 ["updateStore"]
       31 DUPTABLE                         R4 K3 [{"iconFile"}]
       32 SETTABLEKS                       R0 R4 K2 ["iconFile"]
       34 CALL                             R3 1 0
       35 CLOSEUPVALS                      R0
       36 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"isAssetPublic"}]
        2 SETTABLEKS                       R0 R3 K0 ["isAssetPublic"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["props"]
       10 GETTABLEKS                       R1 R1 K4 ["makeChangeRequest"]
       12 LOADK                            R2 K5 ["SharingEnabled"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K3 ["props"]
       16 GETTABLEKS                       R4 R4 K7 ["assetConfigData"]
       18 GETTABLEKS                       R4 R4 K5 ["SharingEnabled"]
       20 ORK                              R3 R4 K6 [False]
       21 MOVE                             R4 R0
       22 CALL                             R1 3 0
       23 JUMPIF                           R0 ; [+17]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K8 ["state"]
       27 GETTABLEKS                       R3 R1 K9 ["copyOnOriginalValue"]
       29 GETTABLEKS                       R4 R1 K10 ["copyOn"]
       31 JUMPIFNOTEQ                      R3 R4 ; [+2]
       33 LOADB                            R2 0 +1
       34 LOADB                            R2 1
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K11 ["toggleCopy"]
       38 LOADB                            R4 0
       39 MOVE                             R5 R2
       40 CALL                             R3 2 0
       41 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 MOVE                             R2 R0
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETTABLEKS                       R2 R0 K1 ["verification"]
        7 JUMPIFNOT                        R2 ; [+4]
        8 GETTABLEKS                       R2 R0 K1 ["verification"]
       10 GETTABLEKS                       R2 R2 K2 ["isVerified"]
       12 GETTABLEKS                       R4 R1 K3 ["assetTypeEnum"]
       14 GETIMPORT                        R5 K7 [Enum.AssetType.Plugin]
       16 JUMPIFEQ                         R4 R5 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 AND                              R4 R2 R3
       21 JUMPIFNOT                        R4 ; [+9]
       22 GETTABLEKS                       R5 R1 K8 ["dispatchGetAssetMediaMetadataArray"]
       24 GETTABLEKS                       R6 R1 K9 ["Network"]
       26 GETTABLEKS                       R6 R6 K10 ["networkInterface"]
       28 GETTABLEKS                       R7 R1 K11 ["assetId"]
       30 CALL                             R5 2 0
       31 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getPublishingRequirements"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U0
        6 NAMECALL                         R0 R0 K1 ["andThen"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Network"]
        5 GETTABLEKS                       R1 R1 K2 ["networkInterface"]
        7 GETTABLEKS                       R2 R0 K3 ["assetId"]
        9 GETTABLEKS                       R3 R0 K4 ["assetTypeEnum"]
       11 GETTABLEKS                       R4 R0 K5 ["isPackageAsset"]
       13 JUMPIFEQKNIL                     R3 ; [+3]
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 RETURN                           R0 0
       18 LOADNIL                          R5
       19 JUMPIFNOT                        R4 ; [+8]
       20 NEWTABLE                         R6 0 1
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K6 ["Package"]
       25 SETLIST                          R6 R7 1 [1]
       27 MOVE                             R5 R6
       28 GETTABLEKS                       R6 R0 K7 ["dispatchGetPublishingRequirements"]
       30 MOVE                             R7 R1
       31 MOVE                             R8 R2
       32 MOVE                             R9 R3
       33 MOVE                             R10 R5
       34 CALL                             R6 4 -1
       35 RETURN                           R6 -1

PROTO_62:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["makeChangeRequest"]
        5 LOADK                            R2 K2 ["assetMediaUpdateData"]
        6 LOADNIL                          R3
        7 MOVE                             R4 R0
        8 CALL                             R1 3 0
        9 GETUPVAL                         R1 0
       10 DUPTABLE                         R3 K3 [{"assetMediaUpdateData"}]
       11 SETTABLEKS                       R0 R3 K2 ["assetMediaUpdateData"]
       13 NAMECALL                         R1 R1 K4 ["setState"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isCatalogAsset"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["assetTypeEnum"]
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+10]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K3 ["isUGCBundleType"]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K1 ["props"]
       16 GETTABLEKS                       R1 R1 K2 ["assetTypeEnum"]
       18 CALL                             R0 1 1
       19 JUMPIFNOT                        R0 ; [+5]
       20 GETUPVAL                         R0 1
       21 GETTABLEKS                       R0 R0 K1 ["props"]
       23 GETTABLEKS                       R0 R0 K4 ["assetTypeValidationSucceeded"]
       25 RETURN                           R0 1

PROTO_64:
        0 GETIMPORT                        R0 K1 [pairs]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["state"]
        5 GETTABLEKS                       R1 R1 K3 ["versionDescriptionErrors"]
        7 CALL                             R0 1 3
        8 FORGPREP_NEXT                    R0
        9 JUMPIFNOT                        R4 ; [+2]
       10 LOADB                            R5 0
       11 RETURN                           R5 1
       12 FORGLOOP                         R0 2 ; [-4]
       14 LOADB                            R0 1
       15 RETURN                           R0 1

PROTO_65:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 DUPTABLE                         R2 K6 [{"TextSize", "Font", "Icon", "onButtonClicked", "onClose"}]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K7 ["FONT_SIZE_MEDIUM"]
        7 SETTABLEKS                       R3 R2 K1 ["TextSize"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K8 ["FONT"]
       12 SETTABLEKS                       R3 R2 K2 ["Font"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K9 ["INFO_ICON"]
       17 SETTABLEKS                       R3 R2 K3 ["Icon"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K10 ["tryCloseAssetConfig"]
       22 SETTABLEKS                       R3 R2 K4 ["onButtonClicked"]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K11 ["onMessageBoxClosed"]
       27 SETTABLEKS                       R3 R2 K5 ["onClose"]
       29 JUMPIFNOT                        R0 ; [+45]
       30 GETTABLEKS                       R3 R1 K12 ["Localization"]
       32 LOADK                            R5 K13 ["AssetConfig"]
       33 LOADK                            R6 K14 ["Error"]
       34 NAMECALL                         R3 R3 K15 ["getText"]
       36 CALL                             R3 3 1
       37 SETTABLEKS                       R3 R2 K16 ["Title"]
       39 GETTABLEKS                       R3 R1 K12 ["Localization"]
       41 LOADK                            R5 K13 ["AssetConfig"]
       42 LOADK                            R6 K17 ["GetAssetFailed"]
       43 NAMECALL                         R3 R3 K15 ["getText"]
       45 CALL                             R3 3 1
       46 SETTABLEKS                       R3 R2 K18 ["Text"]
       48 NEWTABLE                         R3 0 1
       50 DUPTABLE                         R4 K21 [{["Text"], ["Font"], ["TextSize"], ["action"] = "yes"}]
       51 GETTABLEKS                       R5 R1 K12 ["Localization"]
       53 LOADK                            R7 K22 ["Common"]
       54 LOADK                            R8 K23 ["Close"]
       55 NAMECALL                         R5 R5 K15 ["getText"]
       57 CALL                             R5 3 1
       58 SETTABLEKS                       R5 R4 K18 ["Text"]
       60 GETUPVAL                         R5 1
       61 GETTABLEKS                       R5 R5 K8 ["FONT"]
       63 SETTABLEKS                       R5 R4 K2 ["Font"]
       65 GETUPVAL                         R5 1
       66 GETTABLEKS                       R5 R5 K7 ["FONT_SIZE_MEDIUM"]
       68 SETTABLEKS                       R5 R4 K1 ["TextSize"]
       70 SETLIST                          R3 R4 1 [1]
       72 SETTABLEKS                       R3 R2 K24 ["buttons"]
       74 RETURN                           R2 1
       75 GETTABLEKS                       R3 R1 K12 ["Localization"]
       77 LOADK                            R5 K25 ["General"]
       78 LOADK                            R6 K26 ["Discard"]
       79 NAMECALL                         R3 R3 K15 ["getText"]
       81 CALL                             R3 3 1
       82 SETTABLEKS                       R3 R2 K16 ["Title"]
       84 GETTABLEKS                       R3 R1 K12 ["Localization"]
       86 LOADK                            R5 K25 ["General"]
       87 LOADK                            R6 K27 ["DiscardMessage"]
       88 NAMECALL                         R3 R3 K15 ["getText"]
       90 CALL                             R3 3 1
       91 SETTABLEKS                       R3 R2 K18 ["Text"]
       93 NEWTABLE                         R3 0 2
       95 DUPTABLE                         R4 K29 [{["Text"], ["Font"], ["TextSize"], ["action"] = "no"}]
       96 GETTABLEKS                       R5 R1 K12 ["Localization"]
       98 LOADK                            R7 K25 ["General"]
       99 LOADK                            R8 K30 ["SearchOptionsCancel"]
      100 NAMECALL                         R5 R5 K15 ["getText"]
      102 CALL                             R5 3 1
      103 SETTABLEKS                       R5 R4 K18 ["Text"]
      105 GETUPVAL                         R5 1
      106 GETTABLEKS                       R5 R5 K8 ["FONT"]
      108 SETTABLEKS                       R5 R4 K2 ["Font"]
      110 GETUPVAL                         R5 1
      111 GETTABLEKS                       R5 R5 K7 ["FONT_SIZE_MEDIUM"]
      113 SETTABLEKS                       R5 R4 K1 ["TextSize"]
      115 DUPTABLE                         R5 K21 [{["Text"], ["Font"], ["TextSize"], ["action"] = "yes"}]
      116 GETTABLEKS                       R6 R1 K12 ["Localization"]
      118 LOADK                            R8 K25 ["General"]
      119 LOADK                            R9 K26 ["Discard"]
      120 NAMECALL                         R6 R6 K15 ["getText"]
      122 CALL                             R6 3 1
      123 SETTABLEKS                       R6 R5 K18 ["Text"]
      125 GETUPVAL                         R6 1
      126 GETTABLEKS                       R6 R6 K8 ["FONT"]
      128 SETTABLEKS                       R6 R5 K2 ["Font"]
      130 GETUPVAL                         R6 1
      131 GETTABLEKS                       R6 R6 K7 ["FONT_SIZE_MEDIUM"]
      133 SETTABLEKS                       R6 R5 K1 ["TextSize"]
      135 SETLIST                          R3 R4 2 [1]
      137 SETTABLEKS                       R3 R2 K24 ["buttons"]
      139 RETURN                           R2 1

PROTO_66:
        0 NEWTABLE                         R2 64 0
        2 LOADNIL                          R3
        3 SETTABLEKS                       R3 R2 K0 ["assetId"]
        5 LOADNIL                          R3
        6 SETTABLEKS                       R3 R2 K1 ["name"]
        8 LOADNIL                          R3
        9 SETTABLEKS                       R3 R2 K2 ["description"]
       11 LOADNIL                          R3
       12 SETTABLEKS                       R3 R2 K3 ["owner"]
       14 LOADB                            R3 1
       15 SETTABLEKS                       R3 R2 K4 ["allowCopy"]
       17 LOADB                            R3 0
       18 SETTABLEKS                       R3 R2 K5 ["copyOn"]
       20 LOADB                            R3 0
       21 SETTABLEKS                       R3 R2 K6 ["copyChanged"]
       23 LOADB                            R3 1
       24 SETTABLEKS                       R3 R2 K7 ["allowComment"]
       26 LOADNIL                          R3
       27 SETTABLEKS                       R3 R2 K8 ["commentOn"]
       29 LOADNIL                          R3
       30 SETTABLEKS                       R3 R2 K9 ["canBePackage"]
       32 LOADNIL                          R3
       33 SETTABLEKS                       R3 R2 K10 ["isPackageAsset"]
       35 LOADNIL                          R3
       36 SETTABLEKS                       R3 R2 K11 ["price"]
       38 LOADNIL                          R3
       39 SETTABLEKS                       R3 R2 K12 ["status"]
       41 LOADB                            R3 0
       42 SETTABLEKS                       R3 R2 K13 ["isAssetPublic"]
       44 LOADNIL                          R3
       45 SETTABLEKS                       R3 R2 K14 ["assetMediaUpdateData"]
       47 LOADB                            R3 0
       48 SETTABLEKS                       R3 R2 K15 ["isShowChangeDiscardMessageBox"]
       50 LOADB                            R3 0
       51 SETTABLEKS                       R3 R2 K16 ["isPublishAssetsDialogEnabled"]
       53 LOADB                            R3 0
       54 SETTABLEKS                       R3 R2 K17 ["isAssetTypeSelectionAllowed"]
       56 NEWTABLE                         R3 0 0
       58 SETTABLEKS                       R3 R2 K18 ["descendantIds"]
       60 LOADNIL                          R3
       61 SETTABLEKS                       R3 R2 K19 ["overrideAssetId"]
       63 LOADNIL                          R3
       64 SETTABLEKS                       R3 R2 K20 ["groupId"]
       66 LOADNIL                          R3
       67 SETTABLEKS                       R3 R2 K21 ["iconFile"]
       69 LOADB                            R3 0
       70 SETTABLEKS                       R3 R2 K22 ["dispatchGetFunction"]
       72 LOADB                            R3 0
       73 SETTABLEKS                       R3 R2 K23 ["isConfirmationDialogEnabled"]
       75 LOADB                            R3 0
       76 SETTABLEKS                       R3 R2 K24 ["confirmationDialogKey"]
       78 NEWTABLE                         R3 0 0
       80 SETTABLEKS                       R3 R2 K25 ["versionsCurrentItem"]
       82 NEWTABLE                         R3 0 0
       84 SETTABLEKS                       R3 R2 K26 ["versionsRootItems"]
       86 LOADN                            R3 -1
       87 SETTABLEKS                       R3 R2 K27 ["versionsOpenInputKey"]
       89 LOADK                            R3 K28 [""]
       90 SETTABLEKS                       R3 R2 K29 ["versionsPreviousInput"]
       92 LOADN                            R3 1
       93 SETTABLEKS                       R3 R2 K30 ["versionsPageIndex"]
       95 LOADN                            R5 1
       96 GETUPVAL                         R6 0
       97 GETTABLEKS                       R6 R6 K31 ["VERSIONS_ROWS_PER_PAGE"]
       99 NAMECALL                         R3 R0 K32 ["versionsGetPageRootItems"]
      101 CALL                             R3 3 1
      102 SETTABLEKS                       R3 R2 K33 ["versionsPageRootItems"]
      104 NEWTABLE                         R3 0 0
      106 SETTABLEKS                       R3 R2 K34 ["versionDescriptionErrors"]
      108 LOADB                            R3 0
      109 SETTABLEKS                       R3 R2 K35 ["dataSharingEnabled"]
      111 LOADB                            R3 0
      112 SETTABLEKS                       R3 R2 K36 ["dataSharingToggled"]
      114 LOADB                            R3 0
      115 SETTABLEKS                       R3 R2 K37 ["publishOnApprovalToggled"]
      117 GETUPVAL                         R3 1
      118 GETTABLEKS                       R3 R3 K38 ["getThumbnailSkinColor"]
      120 GETTABLEKS                       R4 R0 K39 ["props"]
      122 GETTABLEKS                       R4 R4 K40 ["Plugin"]
      124 NAMECALL                         R4 R4 K41 ["get"]
      126 CALL                             R4 1 -1
      127 CALL                             R3 -1 1
      128 SETTABLEKS                       R3 R2 K42 ["selectedColor"]
      130 LOADB                            R3 0
      131 SETTABLEKS                       R3 R2 K43 ["showColorPickerRequiredError"]
      133 LOADB                            R3 0
      134 SETTABLEKS                       R3 R2 K44 ["showNameRequiredError"]
      136 LOADB                            R3 0
      137 SETTABLEKS                       R3 R2 K45 ["showDescriptionRequiredError"]
      139 SETTABLEKS                       R2 R0 K46 ["state"]
      141 GETTABLEKS                       R2 R0 K46 ["state"]
      143 GETUPVAL                         R3 1
      144 GETTABLEKS                       R3 R3 K47 ["hasAllowedAssetTypesForRelease"]
      146 GETTABLEKS                       R4 R0 K39 ["props"]
      148 GETTABLEKS                       R4 R4 K48 ["allowedAssetTypesForRelease"]
      150 CALL                             R3 1 1
      151 JUMPIFNOT                        R3 ; [+9]
      152 GETUPVAL                         R4 1
      153 GETTABLEKS                       R4 R4 K49 ["isBuyableMarketplaceAsset"]
      155 GETTABLEKS                       R5 R0 K39 ["props"]
      157 GETTABLEKS                       R5 R5 K50 ["assetTypeEnum"]
      159 CALL                             R4 1 1
      160 NOT                              R3 R4
      161 SETTABLEKS                       R3 R2 K17 ["isAssetTypeSelectionAllowed"]
      163 GETUPVAL                         R2 1
      164 GETTABLEKS                       R2 R2 K51 ["isMarketplaceAsset"]
      166 GETTABLEKS                       R3 R1 K50 ["assetTypeEnum"]
      168 CALL                             R2 1 1
      169 JUMPIFNOT                        R2 ; [+9]
      170 GETTABLEKS                       R2 R0 K46 ["state"]
      172 GETUPVAL                         R3 2
      173 GETTABLEKS                       R3 R3 K52 ["ASSET_STATUS"]
      175 GETTABLEKS                       R3 R3 K53 ["OffSale"]
      177 SETTABLEKS                       R3 R2 K12 ["status"]
      179 LOADNIL                          R2
      180 SETTABLEKS                       R2 R0 K54 ["nameString"]
      182 LOADNIL                          R2
      183 SETTABLEKS                       R2 R0 K55 ["descriptionString"]
      185 LOADB                            R2 0
      186 SETTABLEKS                       R2 R0 K56 ["init"]
      188 NEWCLOSURE                       R2 P0
      189 CAPTURE                          VAL R0
      190 SETTABLEKS                       R2 R0 K57 ["onDialogAccepted"]
      192 NEWCLOSURE                       R2 P1
      193 CAPTURE                          VAL R0
      194 SETTABLEKS                       R2 R0 K58 ["onDialogCanceled"]
      196 NEWCLOSURE                       R2 P2
      197 CAPTURE                          VAL R0
      198 SETTABLEKS                       R2 R0 K59 ["onAssetPublishDialogAccepted"]
      200 NEWCLOSURE                       R2 P3
      201 CAPTURE                          VAL R0
      202 SETTABLEKS                       R2 R0 K60 ["onAssetPublishDialogCanceled"]
      204 NEWCLOSURE                       R2 P4
      205 CAPTURE                          VAL R0
      206 SETTABLEKS                       R2 R0 K61 ["tryMakeAssetsPublic"]
      208 NEWCLOSURE                       R2 P5
      209 CAPTURE                          VAL R0
      210 CAPTURE                          UPVAL U1
      211 CAPTURE                          UPVAL U3
      212 CAPTURE                          UPVAL U2
      213 CAPTURE                          UPVAL U4
      214 CAPTURE                          UPVAL U5
      215 SETTABLEKS                       R2 R0 K62 ["tryPublishWithConfirmDialog"]
      217 NEWCLOSURE                       R2 P6
      218 CAPTURE                          UPVAL U6
      219 CAPTURE                          VAL R0
      220 CAPTURE                          UPVAL U7
      221 CAPTURE                          UPVAL U8
      222 CAPTURE                          UPVAL U9
      223 CAPTURE                          UPVAL U10
      224 CAPTURE                          UPVAL U2
      225 CAPTURE                          UPVAL U11
      226 CAPTURE                          UPVAL U1
      227 CAPTURE                          UPVAL U12
      228 CAPTURE                          UPVAL U13
      229 CAPTURE                          UPVAL U14
      230 CAPTURE                          UPVAL U0
      231 CAPTURE                          UPVAL U15
      232 CAPTURE                          UPVAL U16
      233 CAPTURE                          VAL R1
      234 SETTABLEKS                       R2 R0 K63 ["tryPublish"]
      236 NEWCLOSURE                       R2 P7
      237 CAPTURE                          VAL R0
      238 CAPTURE                          VAL R1
      239 CAPTURE                          UPVAL U2
      240 SETTABLEKS                       R2 R0 K64 ["tryCancel"]
      242 NEWCLOSURE                       R2 P8
      243 CAPTURE                          VAL R0
      244 SETTABLEKS                       R2 R0 K65 ["tryCancelNoYield"]
      246 NEWCLOSURE                       R2 P9
      247 CAPTURE                          VAL R0
      248 SETTABLEKS                       R2 R0 K66 ["tryCancelWithYield"]
      250 NEWCLOSURE                       R2 P10
      251 CAPTURE                          VAL R0
      252 SETTABLEKS                       R2 R0 K67 ["onMessageBoxClosed"]
      254 NEWCLOSURE                       R2 P11
      255 CAPTURE                          UPVAL U17
      256 CAPTURE                          VAL R0
      257 CAPTURE                          UPVAL U18
      258 SETTABLEKS                       R2 R0 K68 ["tryCloseAssetConfig"]
      260 NEWCLOSURE                       R2 P12
      261 CAPTURE                          VAL R0
      262 NEWCLOSURE                       R3 P13
      263 CAPTURE                          VAL R0
      264 SETTABLEKS                       R3 R0 K69 ["onNameChange"]
      266 NEWCLOSURE                       R3 P14
      267 CAPTURE                          VAL R0
      268 SETTABLEKS                       R3 R0 K70 ["onDescChange"]
      270 NEWCLOSURE                       R3 P15
      271 CAPTURE                          VAL R0
      272 SETTABLEKS                       R3 R0 K71 ["onStatusChange"]
      274 NEWCLOSURE                       R3 P16
      275 CAPTURE                          VAL R0
      276 SETTABLEKS                       R3 R0 K72 ["onPriceChange"]
      278 LOADN                            R3 0
      279 SETTABLEKS                       R3 R0 K73 ["publishingPreferencesGeneration"]
      281 NEWCLOSURE                       R3 P17
      282 CAPTURE                          UPVAL U5
      283 CAPTURE                          VAL R0
      284 SETTABLEKS                       R3 R0 K74 ["clearPublishOnApprovalOptIn"]
      286 NEWCLOSURE                       R3 P18
      287 CAPTURE                          UPVAL U5
      288 CAPTURE                          UPVAL U2
      289 CAPTURE                          VAL R0
      290 CAPTURE                          UPVAL U1
      291 CAPTURE                          UPVAL U16
      292 SETTABLEKS                       R3 R0 K75 ["canOfferPublishOnApproval"]
      294 NEWCLOSURE                       R3 P19
      295 CAPTURE                          UPVAL U5
      296 CAPTURE                          VAL R0
      297 SETTABLEKS                       R3 R0 K76 ["getPublishInfo"]
      299 NEWCLOSURE                       R3 P20
      300 CAPTURE                          UPVAL U5
      301 CAPTURE                          VAL R0
      302 SETTABLEKS                       R3 R0 K77 ["fetchPublishingPreferences"]
      304 NEWCLOSURE                       R3 P21
      305 CAPTURE                          UPVAL U5
      306 CAPTURE                          VAL R0
      307 SETTABLEKS                       R3 R0 K78 ["fetchPublishingFeePreview"]
      309 NEWCLOSURE                       R3 P22
      310 CAPTURE                          VAL R0
      311 CAPTURE                          UPVAL U7
      312 SETTABLEKS                       R3 R0 K79 ["onAccessChange"]
      314 NEWCLOSURE                       R3 P23
      315 CAPTURE                          VAL R0
      316 SETTABLEKS                       R3 R0 K80 ["onDataConsentToggleClick"]
      318 NEWCLOSURE                       R3 P24
      319 CAPTURE                          UPVAL U5
      320 CAPTURE                          VAL R0
      321 SETTABLEKS                       R3 R0 K81 ["onPublishToMarketplaceToggleClick"]
      323 NEWCLOSURE                       R3 P25
      324 CAPTURE                          VAL R0
      325 SETTABLEKS                       R3 R0 K82 ["toggleCopy"]
      327 NEWCLOSURE                       R3 P26
      328 CAPTURE                          VAL R0
      329 SETTABLEKS                       R3 R0 K83 ["toggleComment"]
      331 NEWCLOSURE                       R3 P27
      332 CAPTURE                          VAL R0
      333 SETTABLEKS                       R3 R0 K84 ["toggleDeleteLocal"]
      335 NEWCLOSURE                       R3 P28
      336 CAPTURE                          VAL R0
      337 CAPTURE                          UPVAL U7
      338 SETTABLEKS                       R3 R0 K85 ["onAnimationSelectionChanged"]
      340 NEWCLOSURE                       R3 P29
      341 CAPTURE                          VAL R0
      342 SETTABLEKS                       R3 R0 K86 ["onanimationSectionValidityChanged"]
      344 NEWCLOSURE                       R3 P30
      345 CAPTURE                          VAL R0
      346 CAPTURE                          UPVAL U1
      347 SETTABLEKS                       R3 R0 K87 ["onSelectedColorChange"]
      349 NEWCLOSURE                       R3 P31
      350 CAPTURE                          VAL R0
      351 CAPTURE                          UPVAL U17
      352 CAPTURE                          UPVAL U18
      353 SETTABLEKS                       R3 R0 K88 ["versionsOnDescClicked"]
      355 NEWCLOSURE                       R3 P32
      356 CAPTURE                          VAL R0
      357 CAPTURE                          UPVAL U19
      358 CAPTURE                          UPVAL U20
      359 SETTABLEKS                       R3 R0 K89 ["versionsSaveInput"]
      361 NEWCLOSURE                       R3 P33
      362 CAPTURE                          VAL R0
      363 CAPTURE                          UPVAL U0
      364 SETTABLEKS                       R3 R0 K90 ["versionsSetStates"]
      366 NEWCLOSURE                       R3 P34
      367 CAPTURE                          VAL R0
      368 SETTABLEKS                       R3 R0 K91 ["versionsCloseInput"]
      370 NEWCLOSURE                       R3 P35
      371 CAPTURE                          VAL R0
      372 SETTABLEKS                       R3 R0 K92 ["setVersionError"]
      374 NEWCLOSURE                       R3 P36
      375 CAPTURE                          VAL R0
      376 SETTABLEKS                       R3 R0 K93 ["versionsSetPreviousInput"]
      378 NEWCLOSURE                       R3 P37
      379 CAPTURE                          VAL R0
      380 SETTABLEKS                       R3 R0 K94 ["versionsOnPageChange"]
      382 NEWCLOSURE                       R3 P38
      383 CAPTURE                          VAL R0
      384 CAPTURE                          VAL R1
      385 SETTABLEKS                       R3 R0 K95 ["onTabSelect"]
      387 NEWCLOSURE                       R3 P39
      388 CAPTURE                          VAL R0
      389 SETTABLEKS                       R3 R0 K96 ["onOverrideAssetSelected"]
      391 NEWCLOSURE                       R3 P40
      392 CAPTURE                          UPVAL U1
      393 CAPTURE                          VAL R0
      394 SETTABLEKS                       R3 R0 K97 ["chooseThumbnail"]
      396 NEWCLOSURE                       R3 P41
      397 CAPTURE                          VAL R0
      398 SETTABLEKS                       R3 R0 K98 ["onSharingChanged"]
      400 NEWCLOSURE                       R3 P42
      401 CAPTURE                          VAL R0
      402 SETTABLEKS                       R3 R0 K99 ["getPublishingRequirementsAndAssetMediaMetadataArray"]
      404 NEWCLOSURE                       R3 P43
      405 CAPTURE                          VAL R0
      406 CAPTURE                          UPVAL U21
      407 SETTABLEKS                       R3 R0 K100 ["getPublishingRequirements"]
      409 NEWCLOSURE                       R3 P44
      410 CAPTURE                          VAL R0
      411 SETTABLEKS                       R3 R0 K101 ["onAdditionalImagesChanged"]
      413 NEWCLOSURE                       R3 P45
      414 CAPTURE                          UPVAL U1
      415 CAPTURE                          VAL R0
      416 SETTABLEKS                       R3 R0 K102 ["isValidCatalogAsset"]
      418 NEWCLOSURE                       R3 P46
      419 CAPTURE                          VAL R0
      420 SETTABLEKS                       R3 R0 K103 ["validVersionDescriptions"]
      422 NEWCLOSURE                       R3 P47
      423 CAPTURE                          VAL R0
      424 CAPTURE                          UPVAL U0
      425 CAPTURE                          UPVAL U22
      426 SETTABLEKS                       R3 R0 K104 ["getMessageBoxProps"]
      428 RETURN                           R0 0

PROTO_67:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        9 GETTABLEKS                       R3 R0 K2 ["tryCancelNoYield"]
       11 NAMECALL                         R1 R1 K3 ["BindToClose"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_68:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        9 LOADNIL                          R3
       10 NAMECALL                         R1 R1 K2 ["BindToClose"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_69:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["screenFlowType"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["FLOW_TYPE"]
        8 GETTABLEKS                       R3 R3 K3 ["EDIT_FLOW"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+6]
       12 GETTABLEKS                       R2 R0 K4 ["state"]
       14 GETTABLEKS                       R2 R2 K5 ["assetId"]
       16 NOT                              R1 R2
       17 RETURN                           R1 1

PROTO_70:
        0 GETTABLEN                        R1 R0 1
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        7 GETTABLEKS                       R2 R2 K1 ["join"]
        9 NEWTABLE                         R3 0 0
       11 MOVE                             R4 R1
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_71:
        0 GETTABLEKS                       R3 R1 K0 ["isPackageAsset"]
        2 JUMPIFEQKNIL                     R3 ; [+12]
        4 GETTABLEKS                       R3 R1 K0 ["isPackageAsset"]
        6 GETTABLEKS                       R4 R0 K1 ["props"]
        8 GETTABLEKS                       R4 R4 K0 ["isPackageAsset"]
       10 JUMPIFEQ                         R3 R4 ; [+4]
       12 GETTABLEKS                       R3 R0 K2 ["getPublishingRequirements"]
       14 CALL                             R3 0 0
       15 GETTABLEKS                       R3 R0 K1 ["props"]
       17 GETTABLEKS                       R3 R3 K3 ["screenFlowType"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K4 ["FLOW_TYPE"]
       22 GETTABLEKS                       R4 R4 K5 ["EDIT_FLOW"]
       24 JUMPIFNOTEQ                      R3 R4 ; [+216]
       26 GETTABLEKS                       R3 R0 K1 ["props"]
       28 GETTABLEKS                       R3 R3 K6 ["assetConfigData"]
       30 GETIMPORT                        R4 K8 [next]
       32 MOVE                             R5 R3
       33 CALL                             R4 1 1
       34 JUMPIF                           R4 ; [+1]
       35 RETURN                           R0 0
       36 GETTABLEKS                       R4 R0 K9 ["state"]
       38 GETTABLEKS                       R4 R4 K10 ["dispatchGetFunction"]
       40 JUMPIF                           R4 ; [+80]
       41 GETTABLEKS                       R4 R3 K11 ["Creator"]
       43 JUMPIF                           R4 ; [+2]
       44 NEWTABLE                         R4 0 0
       46 GETTABLEKS                       R6 R0 K9 ["state"]
       48 GETTABLEKS                       R6 R6 K12 ["groupMetadata"]
       50 NOT                              R5 R6
       51 JUMPIF                           R5 ; [+11]
       52 GETIMPORT                        R6 K8 [next]
       54 GETTABLEKS                       R7 R0 K9 ["state"]
       56 GETTABLEKS                       R7 R7 K12 ["groupMetadata"]
       58 CALL                             R6 1 1
       59 JUMPIFEQKNIL                     R6 ; [+2]
       61 LOADB                            R5 0 +1
       62 LOADB                            R5 1
       63 GETTABLEKS                       R6 R4 K13 ["typeId"]
       65 GETUPVAL                         R7 1
       66 GETTABLEKS                       R7 R7 K14 ["OWNER_TYPES"]
       68 GETTABLEKS                       R7 R7 K15 ["User"]
       70 JUMPIFNOTEQ                      R6 R7 ; [+16]
       72 GETTABLEKS                       R6 R4 K16 ["username"]
       74 JUMPIF                           R6 ; [+12]
       75 GETTABLEKS                       R6 R0 K1 ["props"]
       77 GETTABLEKS                       R6 R6 K17 ["dispatchGetUsername"]
       79 GETTABLEKS                       R7 R4 K18 ["targetId"]
       81 CALL                             R6 1 0
       82 DUPTABLE                         R8 K20 [{["dispatchGetFunction"] = True}]
       83 NAMECALL                         R6 R0 K21 ["setState"]
       85 CALL                             R6 2 0
       86 JUMP                             ; [+34]
       87 GETTABLEKS                       R6 R4 K13 ["typeId"]
       89 GETUPVAL                         R7 1
       90 GETTABLEKS                       R7 R7 K14 ["OWNER_TYPES"]
       92 GETTABLEKS                       R7 R7 K22 ["Group"]
       94 JUMPIFNOTEQ                      R6 R7 ; [+26]
       96 JUMPIFNOT                        R5 ; [+24]
       97 GETTABLEKS                       R6 R0 K1 ["props"]
       99 GETTABLEKS                       R6 R6 K23 ["dispatchGetGroupMetadata"]
      101 GETTABLEKS                       R7 R4 K18 ["targetId"]
      103 CALL                             R6 1 0
      104 GETTABLEKS                       R6 R0 K1 ["props"]
      106 GETTABLEKS                       R6 R6 K24 ["dispatchGetGroupRoleInfo"]
      108 GETTABLEKS                       R7 R0 K1 ["props"]
      110 GETTABLEKS                       R7 R7 K25 ["Network"]
      112 GETTABLEKS                       R7 R7 K26 ["networkInterface"]
      114 GETTABLEKS                       R8 R4 K18 ["targetId"]
      116 CALL                             R6 2 0
      117 DUPTABLE                         R8 K20 [{["dispatchGetFunction"] = True}]
      118 NAMECALL                         R6 R0 K21 ["setState"]
      120 CALL                             R6 2 0
      121 GETTABLEKS                       R4 R0 K27 ["init"]
      123 JUMPIF                           R4 ; [+242]
      124 LOADNIL                          R4
      125 GETTABLEKS                       R5 R3 K28 ["AssetPermissions"]
      127 JUMPIFNOT                        R5 ; [+7]
      128 GETUPVAL                         R5 2
      129 GETTABLEKS                       R5 R5 K29 ["isAssetPublic"]
      131 GETTABLEKS                       R6 R3 K28 ["AssetPermissions"]
      133 CALL                             R5 1 1
      134 MOVE                             R4 R5
      135 GETTABLEKS                       R5 R3 K30 ["Status"]
      137 GETTABLEKS                       R6 R3 K31 ["IsCopyingAllowed"]
      139 JUMPIF                           R6 ; [+5]
      140 GETUPVAL                         R6 3
      141 GETTABLEKS                       R6 R6 K32 ["isOnSale"]
      143 MOVE                             R7 R5
      144 CALL                             R6 1 1
      145 GETTABLEKS                       R7 R0 K1 ["props"]
      147 GETTABLEKS                       R7 R7 K33 ["fiatProduct"]
      149 JUMPIFNOT                        R7 ; [+6]
      150 GETTABLEKS                       R7 R0 K1 ["props"]
      152 GETTABLEKS                       R7 R7 K33 ["fiatProduct"]
      154 GETTABLEKS                       R6 R7 K34 ["purchasable"]
      156 LOADNIL                          R7
      157 GETUPVAL                         R8 4
      158 JUMPIFNOT                        R8 ; [+14]
      159 GETTABLEKS                       R8 R0 K1 ["props"]
      161 GETTABLEKS                       R7 R8 K35 ["isPublishingAllowed"]
      163 GETTABLEKS                       R8 R0 K1 ["props"]
      165 GETTABLEKS                       R8 R8 K0 ["isPackageAsset"]
      167 JUMPIFNOT                        R8 ; [+5]
      168 GETTABLEKS                       R8 R0 K1 ["props"]
      170 GETTABLEKS                       R8 R8 K37 ["isPackageMarketplacePublishAllowed"]
      172 ORK                              R7 R8 K36 [False]
      173 GETUPVAL                         R8 5
      174 GETTABLEKS                       R8 R8 K38 ["getRestrictionThatAppliesToAsset"]
      176 GETTABLEKS                       R9 R0 K1 ["props"]
      178 GETTABLEKS                       R9 R9 K39 ["publishingRestrictions"]
      180 CALL                             R8 1 1
      181 DUPTABLE                         R11 K53 [{["assetId"], ["name"], ["description"], ["owner"], ["allowCopy"], ["copyOn"], ["copyOnOriginalValue"], ["commentOn"], ["price"] = , ["status"], ["isAssetPublic"], ["isAssetPublicOriginalValue"], ["publishingRestriction"]}]
      182 GETUPVAL                         R13 3
      183 GETTABLEKS                       R13 R13 K54 ["isMarketplaceAsset"]
      185 GETTABLEKS                       R14 R0 K1 ["props"]
      187 GETTABLEKS                       R14 R14 K55 ["assetTypeEnum"]
      189 CALL                             R13 1 1
      190 JUMPIFNOT                        R13 ; [+3]
      191 GETTABLEKS                       R12 R3 K56 ["Id"]
      193 JUMPIF                           R12 ; [+2]
      194 GETTABLEKS                       R12 R3 K57 ["AssetId"]
      196 SETTABLEKS                       R12 R11 K40 ["assetId"]
      198 GETTABLEKS                       R12 R3 K58 ["Name"]
      200 SETTABLEKS                       R12 R11 K41 ["name"]
      202 GETTABLEKS                       R12 R3 K59 ["Description"]
      204 SETTABLEKS                       R12 R11 K42 ["description"]
      206 GETTABLEKS                       R12 R3 K11 ["Creator"]
      208 SETTABLEKS                       R12 R11 K43 ["owner"]
      210 GETUPVAL                         R13 4
      211 JUMPIFNOT                        R13 ; [+2]
      212 OR                               R12 R6 R7
      213 JUMP                             ; [+2]
      214 GETTABLEKS                       R12 R3 K60 ["IsPublicDomainEnabled"]
      216 SETTABLEKS                       R12 R11 K44 ["allowCopy"]
      218 SETTABLEKS                       R6 R11 K45 ["copyOn"]
      220 SETTABLEKS                       R6 R11 K46 ["copyOnOriginalValue"]
      222 GETTABLEKS                       R12 R3 K61 ["EnableComments"]
      224 SETTABLEKS                       R12 R11 K47 ["commentOn"]
      226 SETTABLEKS                       R5 R11 K50 ["status"]
      228 SETTABLEKS                       R4 R11 K29 ["isAssetPublic"]
      230 SETTABLEKS                       R4 R11 K51 ["isAssetPublicOriginalValue"]
      232 SETTABLEKS                       R8 R11 K52 ["publishingRestriction"]
      234 NAMECALL                         R9 R0 K21 ["setState"]
      236 CALL                             R9 2 0
      237 LOADB                            R9 1
      238 SETTABLEKS                       R9 R0 K27 ["init"]
      240 JUMP                             ; [+125]
      241 GETTABLEKS                       R3 R0 K1 ["props"]
      243 GETTABLEKS                       R3 R3 K62 ["isVerifiedCreator"]
      245 JUMPIFEQKNIL                     R3 ; [+21]
      247 GETTABLEKS                       R3 R0 K9 ["state"]
      249 GETTABLEKS                       R3 R3 K44 ["allowCopy"]
      251 GETTABLEKS                       R4 R0 K1 ["props"]
      253 GETTABLEKS                       R4 R4 K62 ["isVerifiedCreator"]
      255 JUMPIFEQ                         R3 R4 ; [+11]
      257 DUPTABLE                         R5 K63 [{"allowCopy"}]
      258 GETTABLEKS                       R6 R0 K1 ["props"]
      260 GETTABLEKS                       R6 R6 K62 ["isVerifiedCreator"]
      262 SETTABLEKS                       R6 R5 K44 ["allowCopy"]
      264 NAMECALL                         R3 R0 K21 ["setState"]
      266 CALL                             R3 2 0
      267 GETUPVAL                         R3 6
      268 GETTABLEKS                       R3 R3 K64 ["isEmissiveFromAttributes"]
      270 GETTABLEKS                       R4 R0 K1 ["props"]
      272 GETTABLEKS                       R4 R4 K65 ["specialAttributes"]
      274 CALL                             R3 1 1
      275 JUMPIFNOTEQKB                    R3 TRUE ; [+12]
      277 GETUPVAL                         R3 6
      278 GETTABLEKS                       R3 R3 K64 ["isEmissiveFromAttributes"]
      280 GETTABLEKS                       R4 R1 K65 ["specialAttributes"]
      282 CALL                             R3 1 1
      283 JUMPIFEQKB                       R3 TRUE ; [+4]
      285 GETTABLEKS                       R3 R0 K66 ["clearPublishOnApprovalOptIn"]
      287 CALL                             R3 0 0
      288 GETTABLEKS                       R3 R0 K1 ["props"]
      290 GETTABLEKS                       R3 R3 K3 ["screenFlowType"]
      292 GETUPVAL                         R4 0
      293 GETTABLEKS                       R4 R4 K4 ["FLOW_TYPE"]
      295 GETTABLEKS                       R4 R4 K67 ["UPLOAD_FLOW"]
      297 JUMPIFNOTEQ                      R3 R4 ; [+43]
      299 GETTABLEKS                       R3 R1 K68 ["isUploadFeeEnabled"]
      301 GETTABLEKS                       R4 R0 K1 ["props"]
      303 GETTABLEKS                       R4 R4 K68 ["isUploadFeeEnabled"]
      305 JUMPIFEQ                         R3 R4 ; [+35]
      307 GETTABLEKS                       R3 R0 K69 ["canOfferPublishOnApproval"]
      309 CALL                             R3 0 1
      310 JUMPIFNOT                        R3 ; [+30]
      311 GETTABLEKS                       R3 R0 K70 ["fetchPublishingPreferences"]
      313 GETTABLEKS                       R5 R0 K1 ["props"]
      315 GETTABLEKS                       R5 R5 K71 ["groupId"]
      317 JUMPIFNOT                        R5 ; [+14]
      318 GETTABLEKS                       R5 R0 K1 ["props"]
      320 GETTABLEKS                       R5 R5 K71 ["groupId"]
      322 GETUPVAL                         R6 7
      323 GETTABLEKS                       R6 R6 K72 ["None"]
      325 JUMPIFEQ                         R5 R6 ; [+6]
      327 GETTABLEKS                       R4 R0 K1 ["props"]
      329 GETTABLEKS                       R4 R4 K71 ["groupId"]
      331 JUMP                             ; [+1]
      332 LOADNIL                          R4
      333 CALL                             R3 1 0
      334 GETTABLEKS                       R3 R0 K73 ["fetchPublishingFeePreview"]
      336 GETTABLEKS                       R4 R0 K1 ["props"]
      338 GETTABLEKS                       R4 R4 K55 ["assetTypeEnum"]
      340 CALL                             R3 1 0
      341 GETTABLEKS                       R3 R0 K1 ["props"]
      343 GETTABLEKS                       R3 R3 K3 ["screenFlowType"]
      345 GETUPVAL                         R4 0
      346 GETTABLEKS                       R4 R4 K4 ["FLOW_TYPE"]
      348 GETTABLEKS                       R4 R4 K67 ["UPLOAD_FLOW"]
      350 JUMPIFNOTEQ                      R3 R4 ; [+15]
      352 GETTABLEKS                       R3 R1 K55 ["assetTypeEnum"]
      354 GETTABLEKS                       R4 R0 K1 ["props"]
      356 GETTABLEKS                       R4 R4 K55 ["assetTypeEnum"]
      358 JUMPIFEQ                         R3 R4 ; [+7]
      360 GETTABLEKS                       R3 R0 K66 ["clearPublishOnApprovalOptIn"]
      362 CALL                             R3 0 0
      363 NAMECALL                         R3 R0 K74 ["getAssetInformation"]
      365 CALL                             R3 1 0
      366 GETTABLEKS                       R3 R2 K75 ["versionsCurrentItem"]
      368 GETUPVAL                         R5 8
      369 CALL                             R5 0 1
      370 JUMPIFNOT                        R5 ; [+5]
      371 GETTABLEKS                       R4 R0 K1 ["props"]
      373 GETTABLEKS                       R4 R4 K76 ["versionHistoryWithDescriptions"]
      375 JUMP                             ; [+4]
      376 GETTABLEKS                       R4 R0 K1 ["props"]
      378 GETTABLEKS                       R4 R4 K77 ["versionHistory"]
      380 GETIMPORT                        R5 K8 [next]
      382 MOVE                             R6 R3
      383 CALL                             R5 1 1
      384 JUMPIF                           R5 ; [+72]
      385 JUMPIFNOT                        R4 ; [+71]
      386 NEWTABLE                         R5 0 0
      388 GETIMPORT                        R6 K79 [ipairs]
      390 MOVE                             R7 R4
      391 CALL                             R6 1 3
      392 FORGPREP_INEXT                   R6
      393 GETUPVAL                         R12 8
      394 CALL                             R12 0 1
      395 JUMPIFNOT                        R12 ; [+4]
      396 GETTABLEKS                       R12 R10 K81 ["versionDescription"]
      398 ORK                              R11 R12 K80 [""]
      399 JUMP                             ; [+2]
      400 GETTABLEKS                       R11 R10 K81 ["versionDescription"]
      402 GETTABLEKS                       R12 R10 K82 ["creatorTargetId"]
      404 GETTABLEKS                       R13 R10 K83 ["creatorType"]
      406 GETTABLEKS                       R14 R10 K84 ["assetVersionNumber"]
      408 DUPTABLE                         R15 K88 [{"versionColumn", "descriptionColumn", "restoreColumn"}]
      409 GETTABLEKS                       R16 R10 K84 ["assetVersionNumber"]
      411 SETTABLEKS                       R16 R15 K85 ["versionColumn"]
      413 DUPTABLE                         R16 K91 [{"versionDescription", "created", "assetVersionNumber", "creatorId", "creatorType"}]
      414 SETTABLEKS                       R11 R16 K81 ["versionDescription"]
      416 GETTABLEKS                       R17 R10 K89 ["created"]
      418 SETTABLEKS                       R17 R16 K89 ["created"]
      420 GETTABLEKS                       R17 R10 K84 ["assetVersionNumber"]
      422 SETTABLEKS                       R17 R16 K84 ["assetVersionNumber"]
      424 SETTABLEKS                       R12 R16 K90 ["creatorId"]
      426 SETTABLEKS                       R13 R16 K83 ["creatorType"]
      428 SETTABLEKS                       R16 R15 K86 ["descriptionColumn"]
      430 GETTABLEKS                       R16 R10 K84 ["assetVersionNumber"]
      432 SETTABLEKS                       R16 R15 K87 ["restoreColumn"]
      434 SETTABLE                         R15 R5 R14
      435 FORGLOOP                         R6 2 [inext] ; [-43]
      437 DUPTABLE                         R8 K94 [{"versionsCurrentItem", "versionsRootItems", "versionsPageRootItems"}]
      438 GETUPVAL                         R9 9
      439 MOVE                             R10 R4
      440 CALL                             R9 1 1
      441 SETTABLEKS                       R9 R8 K75 ["versionsCurrentItem"]
      443 SETTABLEKS                       R5 R8 K92 ["versionsRootItems"]
      445 LOADN                            R11 1
      446 GETUPVAL                         R12 10
      447 GETTABLEKS                       R12 R12 K95 ["VERSIONS_ROWS_PER_PAGE"]
      449 NAMECALL                         R9 R0 K96 ["versionsGetPageRootItems"]
      451 CALL                             R9 3 1
      452 SETTABLEKS                       R9 R8 K93 ["versionsPageRootItems"]
      454 NAMECALL                         R6 R0 K21 ["setState"]
      456 CALL                             R6 2 0
      457 RETURN                           R0 0

PROTO_72:
        0 LOADNIL                          R3
        1 LOADNIL                          R4
        2 NEWTABLE                         R5 0 0
        4 GETTABLEKS                       R6 R0 K0 ["state"]
        6 GETTABLEKS                       R6 R6 K1 ["versionsRootItems"]
        8 JUMPIFNOT                        R6 ; [+25]
        9 SUBK                             R7 R1 K2 [1]
       10 MUL                              R6 R7 R2
       11 ADDK                             R3 R6 K2 [1]
       12 ADD                              R6 R3 R2
       13 SUBK                             R4 R6 K2 [1]
       14 GETTABLEKS                       R9 R0 K0 ["state"]
       16 GETTABLEKS                       R9 R9 K1 ["versionsRootItems"]
       18 LENGTH                           R8 R9
       19 LOADN                            R6 1
       20 LOADN                            R7 -1
       21 FORNPREP                         R6
       22 GETTABLEKS                       R12 R0 K0 ["state"]
       24 GETTABLEKS                       R12 R12 K1 ["versionsRootItems"]
       26 GETTABLE                         R11 R12 R8
       27 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
       29 MOVE                             R10 R5
       30 GETIMPORT                        R9 K5 [table.insert]
       32 CALL                             R9 2 0
       33 FORNLOOP                         R6
       34 GETTABLEKS                       R6 R0 K0 ["state"]
       36 GETTABLEKS                       R6 R6 K1 ["versionsRootItems"]
       38 JUMPIFNOT                        R6 ; [+5]
       39 GETUPVAL                         R6 0
       40 MOVE                             R7 R5
       41 MOVE                             R8 R3
       42 MOVE                             R9 R4
       43 CALL                             R6 3 1
       44 GETTABLEKS                       R8 R0 K0 ["state"]
       46 GETTABLEKS                       R8 R8 K1 ["versionsRootItems"]
       48 JUMPIFNOT                        R8 ; [+2]
       49 MOVE                             R7 R6
       50 RETURN                           R7 1
       51 NEWTABLE                         R7 0 0
       53 RETURN                           R7 1

PROTO_73:
        0 DUPTABLE                         R0 K2 [{"dataSharingEnabled", "dataSharingToggled"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["isEligible"]
        4 SETTABLEKS                       R1 R0 K0 ["dataSharingEnabled"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K3 ["isEligible"]
        9 JUMPIFNOT                        R1 ; [+7]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K4 ["configurations"]
       13 GETTABLEN                        R2 R3 1
       14 GETTABLEKS                       R2 R2 K5 ["isOptOut"]
       16 NOT                              R1 R2
       17 SETTABLEKS                       R1 R0 K1 ["dataSharingToggled"]
       19 RETURN                           R0 1

PROTO_74:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R1
        3 NAMECALL                         R2 R2 K0 ["setState"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_75:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["Network"]
        5 GETTABLEKS                       R2 R2 K2 ["networkInterface"]
        7 CALL                             R1 1 1
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 NAMECALL                         R1 R1 K3 ["andThen"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_76:
        0 DUPTABLE                         R0 K1 [{"status"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["ASSET_STATUS"]
        4 GETTABLEKS                       R1 R1 K3 ["OffSale"]
        6 SETTABLEKS                       R1 R0 K0 ["status"]
        8 RETURN                           R0 1

PROTO_77:
        0 DUPTABLE                         R0 K2 [{[1] = }]
        1 RETURN                           R0 1

PROTO_78:
        0 DUPTABLE                         R0 K1 [{"name"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["AssetConfigName"]
        4 SETTABLEKS                       R1 R0 K0 ["name"]
        6 RETURN                           R0 1

PROTO_79:
        0 DUPTABLE                         R0 K1 [{"name"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEN                        R1 R2 1
        3 GETTABLEKS                       R1 R1 K2 ["Name"]
        5 SETTABLEKS                       R1 R0 K0 ["name"]
        7 RETURN                           R0 1

PROTO_80:
        0 DUPTABLE                         R0 K1 [{"description"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["AssetConfigDesc"]
        4 SETTABLEKS                       R1 R0 K0 ["description"]
        6 RETURN                           R0 1

PROTO_81:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["assetId"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["instances"]
        8 GETTABLEKS                       R3 R0 K3 ["state"]
       10 GETTABLEKS                       R4 R0 K0 ["props"]
       12 GETTABLEKS                       R4 R4 K4 ["changeTable"]
       14 MOVE                             R5 R4
       15 JUMPIFNOT                        R5 ; [+8]
       16 GETIMPORT                        R6 K6 [next]
       18 MOVE                             R7 R4
       19 CALL                             R6 1 1
       20 JUMPIFNOTEQKNIL                  R6 ; [+2]
       22 LOADB                            R5 0 +1
       23 LOADB                            R5 1
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K7 ["FLOW_TYPE"]
       27 GETTABLEKS                       R6 R6 K8 ["EDIT_FLOW"]
       29 GETTABLEKS                       R7 R0 K0 ["props"]
       31 GETTABLEKS                       R7 R7 K9 ["screenFlowType"]
       33 JUMPIFNOTEQ                      R6 R7 ; [+92]
       35 JUMPIFNOT                        R1 ; [+381]
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K10 ["isCatalogAsset"]
       39 GETTABLEKS                       R7 R0 K0 ["props"]
       41 GETTABLEKS                       R7 R7 K11 ["assetTypeEnum"]
       43 CALL                             R6 1 1
       44 JUMPIFNOT                        R6 ; [+14]
       45 GETTABLEKS                       R6 R0 K0 ["props"]
       47 GETTABLEKS                       R6 R6 K12 ["getAssetDetails"]
       49 GETTABLEKS                       R7 R0 K0 ["props"]
       51 GETTABLEKS                       R7 R7 K13 ["Network"]
       53 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
       55 MOVE                             R8 R1
       56 LOADB                            R9 0
       57 CALL                             R6 3 0
       58 RETURN                           R0 0
       59 GETTABLEKS                       R6 R0 K15 ["getPublishingRequirementsAndAssetMediaMetadataArray"]
       61 CALL                             R6 0 0
       62 GETTABLEKS                       R6 R0 K0 ["props"]
       64 GETTABLEKS                       R6 R6 K16 ["dispatchGetMarketplaceInfo"]
       66 GETTABLEKS                       R7 R0 K0 ["props"]
       68 GETTABLEKS                       R7 R7 K13 ["Network"]
       70 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
       72 MOVE                             R8 R1
       73 CALL                             R6 2 0
       74 GETTABLEKS                       R6 R0 K0 ["props"]
       76 GETTABLEKS                       R6 R6 K17 ["isPackageAsset"]
       78 JUMPIFNOTEQKNIL                  R6 ; [+13]
       80 GETTABLEKS                       R6 R0 K0 ["props"]
       82 GETTABLEKS                       R6 R6 K18 ["dispatchPostPackageMetadataRequest"]
       84 GETTABLEKS                       R7 R0 K0 ["props"]
       86 GETTABLEKS                       R7 R7 K13 ["Network"]
       88 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
       90 MOVE                             R8 R1
       91 CALL                             R6 2 0
       92 GETTABLEKS                       R6 R0 K0 ["props"]
       94 GETTABLEKS                       R6 R6 K19 ["dispatchGetPackageCollaboratorsRequest"]
       96 GETTABLEKS                       R7 R0 K0 ["props"]
       98 GETTABLEKS                       R7 R7 K13 ["Network"]
      100 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
      102 MOVE                             R8 R1
      103 CALL                             R6 2 0
      104 GETTABLEKS                       R6 R0 K0 ["props"]
      106 GETTABLEKS                       R6 R6 K20 ["hasPackagePermission"]
      108 JUMPIF                           R6 ; [+308]
      109 GETTABLEKS                       R6 R0 K0 ["props"]
      111 GETTABLEKS                       R6 R6 K21 ["dispatchPostAssetCheckPermissions"]
      113 GETTABLEKS                       R7 R0 K0 ["props"]
      115 GETTABLEKS                       R7 R7 K13 ["Network"]
      117 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
      119 NEWTABLE                         R8 0 1
      121 MOVE                             R9 R1
      122 SETLIST                          R8 R9 1 [1]
      124 CALL                             R6 2 0
      125 RETURN                           R0 0
      126 GETTABLEKS                       R6 R0 K0 ["props"]
      128 GETTABLEKS                       R6 R6 K9 ["screenFlowType"]
      130 GETUPVAL                         R7 0
      131 GETTABLEKS                       R7 R7 K7 ["FLOW_TYPE"]
      133 GETTABLEKS                       R7 R7 K22 ["UPLOAD_FLOW"]
      135 JUMPIFNOTEQ                      R6 R7 ; [+20]
      137 GETUPVAL                         R6 1
      138 GETTABLEKS                       R6 R6 K23 ["isMarketplaceAsset"]
      140 GETTABLEKS                       R7 R0 K0 ["props"]
      142 GETTABLEKS                       R7 R7 K11 ["assetTypeEnum"]
      144 CALL                             R6 1 1
      145 JUMPIFNOT                        R6 ; [+6]
      146 DUPCLOSURE                       R8 K24 [PROTO_76]
      147 CAPTURE                          UPVAL U0
      148 NAMECALL                         R6 R0 K25 ["setState"]
      150 CALL                             R6 2 0
      151 JUMP                             ; [+4]
      152 DUPCLOSURE                       R8 K26 [PROTO_77]
      153 NAMECALL                         R6 R0 K25 ["setState"]
      155 CALL                             R6 2 0
      156 GETTABLEKS                       R6 R3 K27 ["name"]
      158 JUMPIFEQKNIL                     R6 ; [+5]
      160 GETTABLEKS                       R6 R3 K27 ["name"]
      162 JUMPIFNOTEQKS                    R6 K28 [""] ; [+21]
      164 JUMPIFNOT                        R2 ; [+19]
      165 LENGTH                           R6 R2
      166 LOADN                            R7 0
      167 JUMPIFNOTLT                      R7 R6 ; [+16]
      169 JUMPIFNOT                        R5 ; [+9]
      170 GETTABLEKS                       R6 R4 K29 ["AssetConfigName"]
      172 JUMPIFNOT                        R6 ; [+11]
      173 NEWCLOSURE                       R8 P2
      174 CAPTURE                          VAL R4
      175 NAMECALL                         R6 R0 K25 ["setState"]
      177 CALL                             R6 2 0
      178 JUMP                             ; [+5]
      179 NEWCLOSURE                       R8 P3
      180 CAPTURE                          VAL R2
      181 NAMECALL                         R6 R0 K25 ["setState"]
      183 CALL                             R6 2 0
      184 GETTABLEKS                       R6 R3 K30 ["description"]
      186 JUMPIFEQKNIL                     R6 ; [+5]
      188 GETTABLEKS                       R6 R3 K30 ["description"]
      190 JUMPIFNOTEQKS                    R6 K28 [""] ; [+10]
      192 JUMPIFNOT                        R5 ; [+8]
      193 GETTABLEKS                       R6 R4 K31 ["AssetConfigDesc"]
      195 JUMPIFNOT                        R6 ; [+5]
      196 NEWCLOSURE                       R8 P4
      197 CAPTURE                          VAL R4
      198 NAMECALL                         R6 R0 K25 ["setState"]
      200 CALL                             R6 2 0
      201 GETTABLEKS                       R6 R0 K0 ["props"]
      203 GETTABLEKS                       R6 R6 K32 ["getIsVerifiedCreator"]
      205 GETTABLEKS                       R7 R0 K0 ["props"]
      207 GETTABLEKS                       R7 R7 K13 ["Network"]
      209 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
      211 CALL                             R6 1 0
      212 GETUPVAL                         R6 1
      213 GETTABLEKS                       R6 R6 K10 ["isCatalogAsset"]
      215 GETTABLEKS                       R7 R0 K0 ["props"]
      217 GETTABLEKS                       R7 R7 K11 ["assetTypeEnum"]
      219 CALL                             R6 1 1
      220 JUMPIFNOT                        R6 ; [+75]
      221 GETTABLEKS                       R6 R0 K33 ["canOfferPublishOnApproval"]
      223 CALL                             R6 0 1
      224 JUMPIFNOT                        R6 ; [+30]
      225 GETTABLEKS                       R6 R0 K34 ["fetchPublishingPreferences"]
      227 GETTABLEKS                       R8 R0 K0 ["props"]
      229 GETTABLEKS                       R8 R8 K35 ["groupId"]
      231 JUMPIFNOT                        R8 ; [+14]
      232 GETTABLEKS                       R8 R0 K0 ["props"]
      234 GETTABLEKS                       R8 R8 K35 ["groupId"]
      236 GETUPVAL                         R9 2
      237 GETTABLEKS                       R9 R9 K36 ["None"]
      239 JUMPIFEQ                         R8 R9 ; [+6]
      241 GETTABLEKS                       R7 R0 K0 ["props"]
      243 GETTABLEKS                       R7 R7 K35 ["groupId"]
      245 JUMP                             ; [+1]
      246 LOADNIL                          R7
      247 CALL                             R6 1 0
      248 GETTABLEKS                       R6 R0 K37 ["fetchPublishingFeePreview"]
      250 GETTABLEKS                       R7 R0 K0 ["props"]
      252 GETTABLEKS                       R7 R7 K11 ["assetTypeEnum"]
      254 CALL                             R6 1 0
      255 GETUPVAL                         R6 3
      256 CALL                             R6 0 1
      257 JUMPIFNOT                        R6 ; [+21]
      258 GETTABLEKS                       R6 R0 K0 ["props"]
      260 GETTABLEKS                       R6 R6 K38 ["dispatchFetchUploadFeeWithMetadata"]
      262 GETTABLEKS                       R7 R0 K0 ["props"]
      264 GETTABLEKS                       R7 R7 K13 ["Network"]
      266 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
      268 GETTABLEKS                       R8 R0 K0 ["props"]
      270 GETTABLEKS                       R8 R8 K11 ["assetTypeEnum"]
      272 LOADB                            R9 0
      273 GETTABLEKS                       R10 R0 K0 ["props"]
      275 GETTABLEKS                       R10 R10 K2 ["instances"]
      277 CALL                             R6 4 0
      278 JUMP                             ; [+70]
      279 GETTABLEKS                       R6 R0 K0 ["props"]
      281 GETTABLEKS                       R6 R6 K39 ["getItemUploadFee"]
      283 GETTABLEKS                       R7 R0 K0 ["props"]
      285 GETTABLEKS                       R7 R7 K13 ["Network"]
      287 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
      289 GETTABLEKS                       R8 R0 K0 ["props"]
      291 GETTABLEKS                       R8 R8 K11 ["assetTypeEnum"]
      293 LOADB                            R9 0
      294 CALL                             R6 3 0
      295 JUMP                             ; [+53]
      296 GETUPVAL                         R6 1
      297 GETTABLEKS                       R6 R6 K40 ["isUGCBundleType"]
      299 GETTABLEKS                       R7 R0 K0 ["props"]
      301 GETTABLEKS                       R7 R7 K11 ["assetTypeEnum"]
      303 CALL                             R6 1 1
      304 JUMPIFNOT                        R6 ; [+41]
      305 GETUPVAL                         R6 3
      306 CALL                             R6 0 1
      307 JUMPIFNOT                        R6 ; [+21]
      308 GETTABLEKS                       R6 R0 K0 ["props"]
      310 GETTABLEKS                       R6 R6 K38 ["dispatchFetchUploadFeeWithMetadata"]
      312 GETTABLEKS                       R7 R0 K0 ["props"]
      314 GETTABLEKS                       R7 R7 K13 ["Network"]
      316 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
      318 GETTABLEKS                       R8 R0 K0 ["props"]
      320 GETTABLEKS                       R8 R8 K11 ["assetTypeEnum"]
      322 LOADB                            R9 1
      323 GETTABLEKS                       R10 R0 K0 ["props"]
      325 GETTABLEKS                       R10 R10 K2 ["instances"]
      327 CALL                             R6 4 0
      328 JUMP                             ; [+20]
      329 GETTABLEKS                       R6 R0 K0 ["props"]
      331 GETTABLEKS                       R6 R6 K39 ["getItemUploadFee"]
      333 GETTABLEKS                       R7 R0 K0 ["props"]
      335 GETTABLEKS                       R7 R7 K13 ["Network"]
      337 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
      339 GETTABLEKS                       R8 R0 K0 ["props"]
      341 GETTABLEKS                       R8 R8 K11 ["assetTypeEnum"]
      343 LOADB                            R9 1
      344 CALL                             R6 3 0
      345 JUMP                             ; [+3]
      346 GETTABLEKS                       R6 R0 K41 ["getPublishingRequirements"]
      348 CALL                             R6 0 0
      349 GETTABLEKS                       R6 R0 K0 ["props"]
      351 GETTABLEKS                       R6 R6 K42 ["dispatchSetDescendantPermissions"]
      353 NEWTABLE                         R7 0 0
      355 CALL                             R6 1 0
      356 DUPTABLE                         R8 K44 [{"descendantIds"}]
      357 NEWTABLE                         R9 0 0
      359 SETTABLEKS                       R9 R8 K43 ["descendantIds"]
      361 NAMECALL                         R6 R0 K25 ["setState"]
      363 CALL                             R6 2 0
      364 NEWTABLE                         R6 0 0
      366 JUMPIFNOT                        R2 ; [+50]
      367 GETTABLEKS                       R7 R0 K0 ["props"]
      369 GETTABLEKS                       R7 R7 K11 ["assetTypeEnum"]
      371 GETIMPORT                        R8 K48 [Enum.AssetType.Model]
      373 JUMPIFNOTEQ                      R7 R8 ; [+43]
      375 GETIMPORT                        R7 K50 [pairs]
      377 MOVE                             R8 R2
      378 CALL                             R7 1 3
      379 FORGPREP_NEXT                    R7
      380 NAMECALL                         R12 R11 K51 ["GetDescendants"]
      382 CALL                             R12 1 1
      383 GETIMPORT                        R13 K50 [pairs]
      385 MOVE                             R14 R12
      386 CALL                             R13 1 3
      387 FORGPREP_NEXT                    R13
      388 LOADK                            R20 K52 ["Sound"]
      389 NAMECALL                         R18 R17 K53 ["IsA"]
      391 CALL                             R18 2 1
      392 JUMPIFNOT                        R18 ; [+14]
      393 GETIMPORT                        R18 K56 [string.gsub]
      395 GETTABLEKS                       R19 R17 K57 ["SoundId"]
      397 LOADK                            R20 K58 ["rbxassetid://"]
      398 LOADK                            R21 K28 [""]
      399 CALL                             R18 3 1
      400 FASTCALL2                        TABLE_INSERT R6 R18 ; [+5]
      402 MOVE                             R20 R6
      403 MOVE                             R21 R18
      404 GETIMPORT                        R19 K61 [table.insert]
      406 CALL                             R19 2 0
      407 FORGLOOP                         R13 2 ; [-20]
      409 FORGLOOP                         R7 2 ; [-30]
      411 DUPTABLE                         R9 K44 [{"descendantIds"}]
      412 SETTABLEKS                       R6 R9 K43 ["descendantIds"]
      414 NAMECALL                         R7 R0 K25 ["setState"]
      416 CALL                             R7 2 0
      417 RETURN                           R0 0

PROTO_82:
        0 DUPTABLE                         R0 K1 [{"isAssetTypeSelectionAllowed"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isAssetTypeSelectionAllowed"]
        4 RETURN                           R0 1

PROTO_83:
        0 NAMECALL                         R1 R0 K0 ["attachXButtonCallback"]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["hasAllowedAssetTypesForRelease"]
        6 GETTABLEKS                       R2 R0 K2 ["props"]
        8 GETTABLEKS                       R2 R2 K3 ["allowedAssetTypesForRelease"]
       10 CALL                             R1 1 1
       11 JUMPIFNOT                        R1 ; [+9]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K4 ["isBuyableMarketplaceAsset"]
       15 GETTABLEKS                       R3 R0 K2 ["props"]
       17 GETTABLEKS                       R3 R3 K5 ["assetTypeEnum"]
       19 CALL                             R2 1 1
       20 NOT                              R1 R2
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          VAL R1
       23 NAMECALL                         R2 R0 K6 ["setState"]
       25 CALL                             R2 2 0
       26 NAMECALL                         R2 R0 K7 ["getAssetInformation"]
       28 CALL                             R2 1 0
       29 GETTABLEKS                       R2 R0 K2 ["props"]
       31 GETTABLEKS                       R2 R2 K8 ["assetId"]
       33 JUMPIFNOT                        R2 ; [+12]
       34 GETTABLEKS                       R3 R0 K2 ["props"]
       36 GETTABLEKS                       R3 R3 K9 ["getVersionHistory"]
       38 GETTABLEKS                       R4 R0 K2 ["props"]
       40 GETTABLEKS                       R4 R4 K10 ["Network"]
       42 GETTABLEKS                       R4 R4 K11 ["networkInterface"]
       44 MOVE                             R5 R2
       45 CALL                             R3 2 0
       46 NAMECALL                         R3 R0 K12 ["getDefaultBundleDataSharing"]
       48 CALL                             R3 1 0
       49 GETTABLEKS                       R3 R0 K2 ["props"]
       51 GETTABLEKS                       R3 R3 K5 ["assetTypeEnum"]
       53 JUMPIFNOT                        R2 ; [+48]
       54 JUMPIFNOT                        R3 ; [+47]
       55 GETUPVAL                         R4 0
       56 GETTABLEKS                       R4 R4 K13 ["isMarketplaceAsset"]
       58 MOVE                             R5 R3
       59 CALL                             R4 1 1
       60 JUMPIFNOT                        R4 ; [+41]
       61 GETIMPORT                        R4 K17 [Enum.AssetType.Animation]
       63 JUMPIFEQ                         R3 R4 ; [+38]
       65 GETTABLEKS                       R4 R0 K2 ["props"]
       67 GETTABLEKS                       R4 R4 K18 ["dispatchGetFiatProduct"]
       69 GETTABLEKS                       R5 R0 K2 ["props"]
       71 GETTABLEKS                       R5 R5 K10 ["Network"]
       73 GETTABLEKS                       R5 R5 K11 ["networkInterface"]
       75 MOVE                             R6 R2
       76 MOVE                             R7 R3
       77 CALL                             R4 3 0
       78 GETUPVAL                         R4 1
       79 CALL                             R4 0 1
       80 JUMPIFNOT                        R4 ; [+21]
       81 JUMPIFNOT                        R3 ; [+7]
       82 GETUPVAL                         R5 2
       83 GETTABLEKS                       R5 R5 K19 ["MONETIZABLE_ASSET_TYPES"]
       85 GETTABLEKS                       R6 R3 K20 ["Name"]
       87 GETTABLE                         R4 R5 R6
       88 JUMP                             ; [+1]
       89 LOADB                            R4 0
       90 JUMPIFNOT                        R4 ; [+11]
       91 GETTABLEKS                       R5 R0 K2 ["props"]
       93 GETTABLEKS                       R5 R5 K21 ["dispatchGetSellerStatus"]
       95 GETTABLEKS                       R6 R0 K2 ["props"]
       97 GETTABLEKS                       R6 R6 K10 ["Network"]
       99 GETTABLEKS                       R6 R6 K11 ["networkInterface"]
      101 CALL                             R5 1 0
      102 RETURN                           R0 0

PROTO_84:
        0 NAMECALL                         R1 R0 K0 ["detachXButtonCallback"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_85:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tryPublish"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_86:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K3 [{"showColorPickerRequiredError", "showNameRequiredError", "showDescriptionRequiredError"}]
        2 GETUPVAL                         R5 1
        3 JUMPIFNOT                        R5 ; [+2]
        4 MOVE                             R4 R0
        5 JUMP                             ; [+1]
        6 LOADB                            R4 0
        7 SETTABLEKS                       R4 R3 K0 ["showColorPickerRequiredError"]
        9 MOVE                             R4 R0
       10 JUMPIFNOT                        R4 ; [+10]
       11 GETUPVAL                         R7 2
       12 ORK                              R6 R7 K4 [""]
       13 FASTCALL1                        TOSTRING R6 ; [+2]
       14 GETIMPORT                        R5 K6 [tostring]
       16 CALL                             R5 1 1
       17 JUMPIFEQKS                       R5 K4 [""] ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 SETTABLEKS                       R4 R3 K1 ["showNameRequiredError"]
       23 MOVE                             R4 R0
       24 JUMPIFNOT                        R4 ; [+20]
       25 LOADB                            R4 0
       26 GETUPVAL                         R7 3
       27 ORK                              R6 R7 K4 [""]
       28 FASTCALL1                        TOSTRING R6 ; [+2]
       29 GETIMPORT                        R5 K6 [tostring]
       31 CALL                             R5 1 1
       32 JUMPIFNOTEQKS                    R5 K4 [""] ; [+12]
       34 GETUPVAL                         R4 4
       35 GETTABLEKS                       R4 R4 K7 ["isCatalogAsset"]
       37 GETUPVAL                         R5 5
       38 CALL                             R4 1 1
       39 JUMPIF                           R4 ; [+5]
       40 GETUPVAL                         R4 4
       41 GETTABLEKS                       R4 R4 K8 ["isUGCBundleType"]
       43 GETUPVAL                         R5 5
       44 CALL                             R4 1 1
       45 SETTABLEKS                       R4 R3 K2 ["showDescriptionRequiredError"]
       47 NAMECALL                         R1 R1 K9 ["setState"]
       49 CALL                             R1 2 0
       50 RETURN                           R0 0

PROTO_87:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["Size"]
        8 GETTABLEKS                       R5 R2 K4 ["isAssetPublicOriginalValue"]
       10 GETTABLEKS                       R6 R1 K5 ["currentTab"]
       12 GETTABLEKS                       R7 R2 K6 ["assetId"]
       14 JUMPIF                           R7 ; [+2]
       15 GETTABLEKS                       R7 R1 K6 ["assetId"]
       17 GETTABLEKS                       R9 R2 K8 ["name"]
       19 ORK                              R8 R9 K7 [""]
       20 GETTABLEKS                       R10 R2 K9 ["description"]
       22 ORK                              R9 R10 K7 [""]
       23 GETTABLEKS                       R11 R1 K10 ["screenFlowType"]
       25 GETUPVAL                         R12 0
       26 GETTABLEKS                       R12 R12 K11 ["FLOW_TYPE"]
       28 GETTABLEKS                       R12 R12 K12 ["UPLOAD_FLOW"]
       30 JUMPIFNOTEQ                      R11 R12 ; [+4]
       32 GETTABLEKS                       R10 R1 K13 ["owner"]
       34 JUMP                             ; [+2]
       35 GETTABLEKS                       R10 R2 K13 ["owner"]
       37 GETTABLEKS                       R11 R2 K14 ["allowCopy"]
       39 GETTABLEKS                       R12 R2 K15 ["copyOn"]
       41 GETTABLEKS                       R13 R2 K16 ["allowComment"]
       43 GETTABLEKS                       R14 R2 K17 ["commentOn"]
       45 GETTABLEKS                       R15 R1 K18 ["deleteLocal"]
       47 GETTABLEKS                       R16 R2 K19 ["status"]
       49 GETTABLEKS                       R17 R2 K20 ["isAssetPublic"]
       51 GETTABLEKS                       R18 R2 K21 ["publishingRestriction"]
       53 GETTABLEKS                       R20 R1 K22 ["networkErrorAction"]
       55 GETUPVAL                         R21 1
       56 GETTABLEKS                       R21 R21 K23 ["GET_ASSET_DETAIL_FAILURE_ACTION"]
       58 JUMPIFEQ                         R20 R21 ; [+2]
       60 LOADB                            R19 0 +1
       61 LOADB                            R19 1
       62 GETTABLEKS                       R21 R2 K24 ["isShowChangeDiscardMessageBox"]
       64 OR                               R20 R21 R19
       65 GETTABLEKS                       R21 R2 K25 ["iconFile"]
       67 GETTABLEKS                       R22 R2 K26 ["assetMediaUpdateData"]
       69 GETTABLEKS                       R23 R1 K27 ["assetTypeEnum"]
       71 GETTABLEKS                       R24 R1 K10 ["screenFlowType"]
       73 GETTABLEKS                       R25 R1 K28 ["changeTable"]
       75 JUMPIF                           R25 ; [+2]
       76 NEWTABLE                         R25 0 0
       78 GETTABLEKS                       R26 R1 K29 ["allowedAssetTypesForRelease"]
       80 GETTABLEKS                       R27 R1 K30 ["allowedAssetTypesForFree"]
       82 GETTABLEKS                       R28 R1 K31 ["allowedBundleTypeSettings"]
       84 MOVE                             R29 R16
       85 JUMPIF                           R29 ; [+5]
       86 GETUPVAL                         R29 0
       87 GETTABLEKS                       R29 R29 K32 ["ASSET_STATUS"]
       89 GETTABLEKS                       R29 R29 K33 ["Unknown"]
       91 GETTABLEKS                       R30 R2 K34 ["price"]
       93 GETUPVAL                         R32 2
       94 GETTABLEKS                       R32 R32 K35 ["isUGCBundleType"]
       96 MOVE                             R33 R23
       97 CALL                             R32 1 1
       98 JUMPIFNOT                        R32 ; [+3]
       99 GETTABLEKS                       R31 R1 K36 ["groupBundlesUploadEnabledForUser"]
      101 JUMP                             ; [+11]
      102 GETUPVAL                         R31 3
      103 GETTABLEKS                       R31 R31 K37 ["queryParam"]
      105 MOVE                             R32 R24
      106 MOVE                             R33 R23
      107 GETUPVAL                         R34 3
      108 GETTABLEKS                       R34 R34 K38 ["keys"]
      110 GETTABLEKS                       R34 R34 K39 ["SHOW_OWNERSHIP"]
      112 CALL                             R31 3 1
      113 GETUPVAL                         R32 3
      114 GETTABLEKS                       R32 R32 K37 ["queryParam"]
      116 MOVE                             R33 R24
      117 MOVE                             R34 R23
      118 GETUPVAL                         R35 3
      119 GETTABLEKS                       R35 R35 K38 ["keys"]
      121 GETTABLEKS                       R35 R35 K40 ["SHOW_COPY"]
      123 CALL                             R32 3 1
      124 GETTABLEKS                       R33 R1 K41 ["isPackageAsset"]
      126 JUMPIFNOT                        R33 ; [+1]
      127 LOADB                            R32 0
      128 GETTABLEKS                       R33 R0 K1 ["state"]
      130 GETTABLEKS                       R33 R33 K42 ["isAssetTypeSelectionAllowed"]
      132 JUMPIFNOT                        R33 ; [+13]
      133 GETTABLEKS                       R34 R0 K0 ["props"]
      135 GETTABLEKS                       R34 R34 K10 ["screenFlowType"]
      137 GETUPVAL                         R35 0
      138 GETTABLEKS                       R35 R35 K11 ["FLOW_TYPE"]
      140 GETTABLEKS                       R35 R35 K12 ["UPLOAD_FLOW"]
      142 JUMPIFEQ                         R34 R35 ; [+2]
      144 LOADB                            R33 0 +1
      145 LOADB                            R33 1
      146 GETUPVAL                         R34 3
      147 GETTABLEKS                       R34 R34 K37 ["queryParam"]
      149 MOVE                             R35 R24
      150 MOVE                             R36 R23
      151 GETUPVAL                         R37 3
      152 GETTABLEKS                       R37 R37 K38 ["keys"]
      154 GETTABLEKS                       R37 R37 K43 ["SHOW_COMMENT"]
      156 CALL                             R34 3 1
      157 GETUPVAL                         R35 3
      158 GETTABLEKS                       R35 R35 K37 ["queryParam"]
      160 MOVE                             R36 R24
      161 MOVE                             R37 R23
      162 GETUPVAL                         R38 3
      163 GETTABLEKS                       R38 R38 K38 ["keys"]
      165 GETTABLEKS                       R38 R38 K44 ["SHOW_ASSET_TYPE"]
      167 CALL                             R35 3 1
      168 GETUPVAL                         R36 2
      169 GETTABLEKS                       R36 R36 K45 ["getPreviewType"]
      171 MOVE                             R37 R23
      172 GETTABLEKS                       R38 R1 K46 ["instances"]
      174 CALL                             R36 2 1
      175 GETTABLEKS                       R38 R1 K47 ["animationPackType"]
      177 JUMPIFEQKNIL                     R38 ; [+8]
      179 GETUPVAL                         R37 4
      180 GETTABLEKS                       R37 R37 K48 ["getAvatarAnimationPartThumbnailUri"]
      182 GETTABLEKS                       R38 R1 K47 ["animationPackType"]
      184 CALL                             R37 1 1
      185 JUMP                             ; [+1]
      186 LOADNIL                          R37
      187 GETUPVAL                         R38 1
      188 MOVE                             R40 R24
      189 MOVE                             R41 R23
      190 GETTABLEKS                       R42 R0 K0 ["props"]
      192 GETTABLEKS                       R42 R42 K41 ["isPackageAsset"]
      194 MOVE                             R43 R10
      195 NAMECALL                         R38 R38 K49 ["getAssetconfigContent"]
      197 CALL                             R38 5 1
      198 NAMECALL                         R39 R0 K50 ["isLoading"]
      200 CALL                             R39 1 1
      201 GETUPVAL                         R40 5
      202 GETTABLEKS                       R40 R40 K51 ["checkCanSave"]
      204 MOVE                             R41 R25
      205 MOVE                             R42 R8
      206 MOVE                             R43 R9
      207 MOVE                             R44 R6
      208 MOVE                             R45 R24
      209 MOVE                             R46 R23
      210 MOVE                             R47 R22
      211 GETTABLEKS                       R48 R0 K52 ["isValidCatalogAsset"]
      213 CALL                             R48 0 1
      214 GETTABLEKS                       R49 R0 K53 ["validVersionDescriptions"]
      216 CALL                             R49 0 -1
      217 CALL                             R40 -1 1
      218 JUMPIFNOT                        R40 ; [+1]
      219 NOT                              R40 R39
      220 MOVE                             R41 R40
      221 JUMPIFNOT                        R41 ; [+3]
      222 GETTABLEKS                       R42 R1 K54 ["isAvatarItemDialogFlowEnabled"]
      224 NOT                              R41 R42
      225 MOVE                             R40 R41
      226 GETUPVAL                         R41 2
      227 GETTABLEKS                       R41 R41 K55 ["isMakeupAsset"]
      229 MOVE                             R42 R23
      230 CALL                             R41 1 1
      231 JUMPIFNOT                        R41 ; [+5]
      232 GETTABLEKS                       R41 R2 K56 ["selectedColor"]
      234 JUMPIFNOTEQKNIL                  R41 ; [+2]
      236 LOADB                            R40 0
      237 GETIMPORT                        R41 K60 [Enum.AssetType.Animation]
      239 JUMPIFNOTEQ                      R23 R41 ; [+6]
      241 GETTABLEKS                       R41 R1 K61 ["animationSectionValid"]
      243 JUMPIFNOTEQKB                    R41 FALSE ; [+2]
      245 LOADB                            R40 0
      246 GETUPVAL                         R42 6
      247 GETTABLEKS                       R42 R42 K63 ["SCROLLBAR_PADDING"]
      249 SUBRK                            R41 K62 [-240] R42
      250 GETTABLEKS                       R43 R1 K27 ["assetTypeEnum"]
      252 GETIMPORT                        R44 K65 [Enum.AssetType.Audio]
      254 JUMPIFEQ                         R43 R44 ; [+2]
      256 LOADB                            R42 0 +1
      257 LOADB                            R42 1
      258 GETTABLEKS                       R44 R1 K27 ["assetTypeEnum"]
      260 GETIMPORT                        R45 K67 [Enum.AssetType.Video]
      262 JUMPIFEQ                         R44 R45 ; [+2]
      264 LOADB                            R43 0 +1
      265 LOADB                            R43 1
      266 GETTABLEKS                       R45 R1 K27 ["assetTypeEnum"]
      268 GETIMPORT                        R46 K69 [Enum.AssetType.Model]
      270 JUMPIFEQ                         R45 R46 ; [+2]
      272 LOADB                            R44 0 +1
      273 LOADB                            R44 1
      274 GETTABLEKS                       R46 R1 K27 ["assetTypeEnum"]
      276 GETIMPORT                        R47 K71 [Enum.AssetType.Plugin]
      278 JUMPIFEQ                         R46 R47 ; [+2]
      280 LOADB                            R45 0 +1
      281 LOADB                            R45 1
      282 LOADNIL                          R46
      283 LOADB                            R47 0
      284 GETTABLEKS                       R48 R1 K72 ["Localization"]
      286 LOADK                            R51 K73 ["General"]
      287 LOADK                            R52 K74 ["Proceed"]
      288 NAMECALL                         R49 R48 K75 ["getText"]
      290 CALL                             R49 3 1
      291 LOADK                            R52 K73 ["General"]
      292 LOADK                            R53 K76 ["GoBack"]
      293 NAMECALL                         R50 R48 K75 ["getText"]
      295 CALL                             R50 3 1
      296 LOADK                            R53 K77 ["AssetConfigSharing"]
      297 LOADK                            R54 K78 ["PublicConfirmationHeading"]
      298 NAMECALL                         R51 R48 K75 ["getText"]
      300 CALL                             R51 3 1
      301 LOADK                            R54 K77 ["AssetConfigSharing"]
      302 LOADK                            R55 K79 ["PublicConfirmationMessage"]
      303 NAMECALL                         R52 R48 K75 ["getText"]
      305 CALL                             R52 3 1
      306 LOADK                            R55 K77 ["AssetConfigSharing"]
      307 LOADK                            R56 K80 ["PublicConfirmationTitle"]
      308 NAMECALL                         R53 R48 K75 ["getText"]
      310 CALL                             R53 3 1
      311 GETTABLEKS                       R54 R2 K81 ["isConfirmationDialogEnabled"]
      313 GETTABLEKS                       R55 R2 K82 ["confirmationDialogKey"]
      315 LOADK                            R58 K83 ["AssetConfig"]
      316 LOADK                            R59 K84 ["PublishAssetDialogPublish"]
      317 NAMECALL                         R56 R48 K75 ["getText"]
      319 CALL                             R56 3 1
      320 LOADK                            R59 K73 ["General"]
      321 LOADK                            R60 K85 ["Cancel"]
      322 NAMECALL                         R57 R48 K75 ["getText"]
      324 CALL                             R57 3 1
      325 LOADK                            R60 K83 ["AssetConfig"]
      326 LOADK                            R61 K86 ["PublishAssetDialogDescription"]
      327 NAMECALL                         R58 R48 K75 ["getText"]
      329 CALL                             R58 3 1
      330 LOADK                            R61 K83 ["AssetConfig"]
      331 LOADK                            R62 K87 ["PublishAssetDialogHeading"]
      332 NAMECALL                         R59 R48 K75 ["getText"]
      334 CALL                             R59 3 1
      335 LOADK                            R62 K73 ["General"]
      336 LOADK                            R63 K88 ["RobloxStudio"]
      337 NAMECALL                         R60 R48 K75 ["getText"]
      339 CALL                             R60 3 1
      340 GETUPVAL                         R62 7
      341 CALL                             R62 0 1
      342 JUMPIFNOT                        R62 ; [+8]
      343 GETUPVAL                         R61 2
      344 GETTABLEKS                       R61 R61 K89 ["getPublishOnApprovalFee"]
      346 GETTABLEKS                       R62 R0 K90 ["getPublishInfo"]
      348 CALL                             R62 0 -1
      349 CALL                             R61 -1 1
      350 JUMP                             ; [+1]
      351 LOADN                            R61 0
      352 GETTABLEKS                       R62 R2 K91 ["isPublishAssetsDialogEnabled"]
      354 JUMPIF                           R42 ; [+3]
      355 GETUPVAL                         R63 8
      356 JUMPIFNOT                        R63 ; [+3]
      357 JUMPIFNOT                        R43 ; [+2]
      358 NOT                              R46 R5
      359 JUMP                             ; [+2]
      360 JUMPIFNOT                        R44 ; [+1]
      361 LOADB                            R46 1
      362 JUMPIF                           R42 ; [+3]
      363 GETUPVAL                         R63 8
      364 JUMPIFNOT                        R63 ; [+2]
      365 JUMPIFNOT                        R43 ; [+1]
      366 LOADB                            R47 1
      367 JUMPIF                           R42 ; [+3]
      368 GETUPVAL                         R63 8
      369 JUMPIFNOT                        R63 ; [+2]
      370 JUMPIFNOT                        R43 ; [+1]
      371 MOVE                             R11 R17
      372 GETUPVAL                         R63 2
      373 GETTABLEKS                       R63 R63 K55 ["isMakeupAsset"]
      375 MOVE                             R64 R23
      376 CALL                             R63 1 1
      377 MOVE                             R64 R63
      378 JUMPIFNOT                        R64 ; [+6]
      379 GETTABLEKS                       R65 R2 K56 ["selectedColor"]
      381 JUMPIFEQKNIL                     R65 ; [+2]
      383 LOADB                            R64 0 +1
      384 LOADB                            R64 1
      385 GETUPVAL                         R65 9
      386 GETTABLEKS                       R65 R65 K92 ["createElement"]
      388 LOADK                            R66 K93 ["Frame"]
      389 DUPTABLE                         R67 K98 [{["Size"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      390 SETTABLEKS                       R4 R67 K3 ["Size"]
      392 GETTABLEKS                       R68 R3 K99 ["assetConfig"]
      394 GETTABLEKS                       R68 R68 K100 ["backgroundColor"]
      396 SETTABLEKS                       R68 R67 K96 ["BackgroundColor3"]
      398 DUPTABLE                         R68 K107 [{"UIListLayout", "AssetConfigMessageBox", "AvatarItemMessageBox", "AssetConfigMakeAssetPublicMessageBox", "MainPage", "Footer"}]
      399 GETUPVAL                         R69 9
      400 GETTABLEKS                       R69 R69 K92 ["createElement"]
      402 LOADK                            R70 K101 ["UIListLayout"]
      403 DUPTABLE                         R71 K113 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      404 GETIMPORT                        R72 K115 [Enum.FillDirection.Vertical]
      406 SETTABLEKS                       R72 R71 K108 ["FillDirection"]
      408 GETIMPORT                        R72 K117 [Enum.HorizontalAlignment.Left]
      410 SETTABLEKS                       R72 R71 K109 ["HorizontalAlignment"]
      412 GETIMPORT                        R72 K119 [Enum.VerticalAlignment.Bottom]
      414 SETTABLEKS                       R72 R71 K110 ["VerticalAlignment"]
      416 GETIMPORT                        R72 K121 [Enum.SortOrder.LayoutOrder]
      418 SETTABLEKS                       R72 R71 K111 ["SortOrder"]
      420 GETIMPORT                        R72 K124 [UDim.new]
      422 LOADN                            R73 0
      423 LOADN                            R74 0
      424 CALL                             R72 2 1
      425 SETTABLEKS                       R72 R71 K112 ["Padding"]
      427 CALL                             R69 2 1
      428 SETTABLEKS                       R69 R68 K101 ["UIListLayout"]
      430 MOVE                             R69 R20
      431 JUMPIFNOT                        R69 ; [+9]
      432 GETUPVAL                         R69 9
      433 GETTABLEKS                       R69 R69 K92 ["createElement"]
      435 GETUPVAL                         R70 10
      436 GETTABLEKS                       R71 R0 K125 ["getMessageBoxProps"]
      438 MOVE                             R72 R19
      439 CALL                             R71 1 -1
      440 CALL                             R69 -1 1
      441 SETTABLEKS                       R69 R68 K102 ["AssetConfigMessageBox"]
      443 GETTABLEKS                       R69 R1 K54 ["isAvatarItemDialogFlowEnabled"]
      445 JUMPIFNOT                        R69 ; [+28]
      446 GETUPVAL                         R69 9
      447 GETTABLEKS                       R69 R69 K92 ["createElement"]
      449 GETUPVAL                         R70 11
      450 DUPTABLE                         R71 K130 [{"OnUploadConfirmed", "UploadFee", "ItemName", "PublishingFee"}]
      451 NEWCLOSURE                       R72 P0
      452 CAPTURE                          VAL R0
      453 SETTABLEKS                       R72 R71 K126 ["OnUploadConfirmed"]
      455 GETTABLEKS                       R73 R1 K131 ["uploadFee"]
      457 ORK                              R72 R73 K7 [""]
      458 SETTABLEKS                       R72 R71 K127 ["UploadFee"]
      460 GETTABLEKS                       R73 R2 K8 ["name"]
      462 ORK                              R72 R73 K7 [""]
      463 SETTABLEKS                       R72 R71 K128 ["ItemName"]
      465 GETUPVAL                         R73 7
      466 CALL                             R73 0 1
      467 JUMPIFNOT                        R73 ; [+2]
      468 MOVE                             R72 R61
      469 JUMP                             ; [+1]
      470 LOADNIL                          R72
      471 SETTABLEKS                       R72 R71 K129 ["PublishingFee"]
      473 CALL                             R69 2 1
      474 SETTABLEKS                       R69 R68 K103 ["AvatarItemMessageBox"]
      476 JUMPIFNOT                        R62 ; [+27]
      477 GETUPVAL                         R69 9
      478 GETTABLEKS                       R69 R69 K92 ["createElement"]
      480 GETUPVAL                         R70 12
      481 DUPTABLE                         R71 K142 [{["AcceptText"], ["CancelText"], ["ConfirmationKey"] = , ["Description"], ["Enabled"], ["Heading"], ["OnAccepted"], ["OnCanceled"], ["Title"]}]
      482 SETTABLEKS                       R56 R71 K132 ["AcceptText"]
      484 SETTABLEKS                       R57 R71 K133 ["CancelText"]
      486 SETTABLEKS                       R58 R71 K136 ["Description"]
      488 SETTABLEKS                       R62 R71 K137 ["Enabled"]
      490 SETTABLEKS                       R59 R71 K138 ["Heading"]
      492 GETTABLEKS                       R72 R0 K143 ["onAssetPublishDialogAccepted"]
      494 SETTABLEKS                       R72 R71 K139 ["OnAccepted"]
      496 GETTABLEKS                       R72 R0 K144 ["onAssetPublishDialogCanceled"]
      498 SETTABLEKS                       R72 R71 K140 ["OnCanceled"]
      500 SETTABLEKS                       R60 R71 K141 ["Title"]
      502 CALL                             R69 2 1
      503 JUMP                             ; [+1]
      504 LOADNIL                          R69
      505 SETTABLEKS                       R69 R68 K104 ["AssetConfigMakeAssetPublicMessageBox"]
      507 GETUPVAL                         R69 9
      508 GETTABLEKS                       R69 R69 K92 ["createElement"]
      510 LOADK                            R70 K93 ["Frame"]
      511 DUPTABLE                         R71 K146 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
      512 GETIMPORT                        R72 K148 [UDim2.new]
      514 LOADN                            R73 1
      515 LOADN                            R74 0
      516 LOADN                            R75 1
      517 LOADN                            R76 -62
      518 CALL                             R72 4 1
      519 SETTABLEKS                       R72 R71 K3 ["Size"]
      521 DUPTABLE                         R72 K158 [{"UIListLayout", "SharingConfirmationDialog", "Preview", "VerticalLine", "LoadingIndicatorWrapper", "PublishAsset", "Versions", "Sales", "OverrideAsset", "PackagePermissions"}]
      522 GETUPVAL                         R73 9
      523 GETTABLEKS                       R73 R73 K92 ["createElement"]
      525 LOADK                            R74 K101 ["UIListLayout"]
      526 DUPTABLE                         R75 K113 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      527 GETIMPORT                        R76 K160 [Enum.FillDirection.Horizontal]
      529 SETTABLEKS                       R76 R75 K108 ["FillDirection"]
      531 GETIMPORT                        R76 K117 [Enum.HorizontalAlignment.Left]
      533 SETTABLEKS                       R76 R75 K109 ["HorizontalAlignment"]
      535 GETIMPORT                        R76 K162 [Enum.VerticalAlignment.Top]
      537 SETTABLEKS                       R76 R75 K110 ["VerticalAlignment"]
      539 GETIMPORT                        R76 K121 [Enum.SortOrder.LayoutOrder]
      541 SETTABLEKS                       R76 R75 K111 ["SortOrder"]
      543 GETIMPORT                        R76 K124 [UDim.new]
      545 LOADN                            R77 0
      546 LOADN                            R78 0
      547 CALL                             R76 2 1
      548 SETTABLEKS                       R76 R75 K112 ["Padding"]
      550 CALL                             R73 2 1
      551 SETTABLEKS                       R73 R72 K101 ["UIListLayout"]
      553 GETUPVAL                         R73 9
      554 GETTABLEKS                       R73 R73 K92 ["createElement"]
      556 GETUPVAL                         R74 12
      557 DUPTABLE                         R75 K163 [{"AcceptText", "CancelText", "ConfirmationKey", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      558 SETTABLEKS                       R49 R75 K132 ["AcceptText"]
      560 SETTABLEKS                       R50 R75 K133 ["CancelText"]
      562 SETTABLEKS                       R55 R75 K134 ["ConfirmationKey"]
      564 SETTABLEKS                       R52 R75 K136 ["Description"]
      566 SETTABLEKS                       R54 R75 K137 ["Enabled"]
      568 SETTABLEKS                       R51 R75 K138 ["Heading"]
      570 GETTABLEKS                       R76 R0 K164 ["onDialogAccepted"]
      572 SETTABLEKS                       R76 R75 K139 ["OnAccepted"]
      574 GETTABLEKS                       R76 R0 K165 ["onDialogCanceled"]
      576 SETTABLEKS                       R76 R75 K140 ["OnCanceled"]
      578 SETTABLEKS                       R53 R75 K141 ["Title"]
      580 CALL                             R73 2 1
      581 SETTABLEKS                       R73 R72 K149 ["SharingConfirmationDialog"]
      583 GETUPVAL                         R73 9
      584 GETTABLEKS                       R73 R73 K92 ["createElement"]
      586 GETUPVAL                         R74 13
      587 DUPTABLE                         R75 K180 [{["TotalWidth"] = 240, ["TabItems"], ["CurrentTab"], ["PreviewType"], ["ScreenFlowType"], ["AssetStatus"], ["AssetId"], ["IconFile"], ["AssetTypeEnum"], ["AllowedBundleTypeSettings"], ["OnTabSelect"], ["ChooseThumbnail"], ["LayoutOrder"] = 1, ["assetTypeEnum"], ["selectedColor"], ["animationTypeThumbnailUri"]}]
      588 SETTABLEKS                       R38 R75 K168 ["TabItems"]
      590 SETTABLEKS                       R6 R75 K169 ["CurrentTab"]
      592 SETTABLEKS                       R36 R75 K170 ["PreviewType"]
      594 SETTABLEKS                       R24 R75 K171 ["ScreenFlowType"]
      596 SETTABLEKS                       R16 R75 K172 ["AssetStatus"]
      598 SETTABLEKS                       R7 R75 K173 ["AssetId"]
      600 SETTABLEKS                       R21 R75 K174 ["IconFile"]
      602 SETTABLEKS                       R23 R75 K175 ["AssetTypeEnum"]
      604 SETTABLEKS                       R28 R75 K176 ["AllowedBundleTypeSettings"]
      606 GETTABLEKS                       R76 R0 K181 ["onTabSelect"]
      608 SETTABLEKS                       R76 R75 K177 ["OnTabSelect"]
      610 GETTABLEKS                       R76 R0 K182 ["chooseThumbnail"]
      612 SETTABLEKS                       R76 R75 K178 ["ChooseThumbnail"]
      614 SETTABLEKS                       R23 R75 K27 ["assetTypeEnum"]
      616 JUMPIFNOT                        R63 ; [+3]
      617 GETTABLEKS                       R76 R2 K56 ["selectedColor"]
      619 JUMP                             ; [+1]
      620 LOADNIL                          R76
      621 SETTABLEKS                       R76 R75 K56 ["selectedColor"]
      623 SETTABLEKS                       R37 R75 K179 ["animationTypeThumbnailUri"]
      625 CALL                             R73 2 1
      626 SETTABLEKS                       R73 R72 K150 ["Preview"]
      628 GETUPVAL                         R73 14
      629 GETTABLEKS                       R73 R73 K92 ["createElement"]
      631 GETUPVAL                         R74 15
      632 GETTABLEKS                       R74 R74 K183 ["Divider"]
      634 DUPTABLE                         R75 K186 [{["orientation"], ["LayoutOrder"] = 2}]
      635 GETUPVAL                         R76 15
      636 GETTABLEKS                       R76 R76 K187 ["Enums"]
      638 GETTABLEKS                       R76 R76 K188 ["DividerOrientation"]
      640 GETTABLEKS                       R76 R76 K114 ["Vertical"]
      642 SETTABLEKS                       R76 R75 K184 ["orientation"]
      644 CALL                             R73 2 1
      645 SETTABLEKS                       R73 R72 K151 ["VerticalLine"]
      647 MOVE                             R73 R39
      648 JUMPIFNOT                        R73 ; [+47]
      649 GETUPVAL                         R73 9
      650 GETTABLEKS                       R73 R73 K92 ["createElement"]
      652 GETUPVAL                         R74 16
      653 DUPTABLE                         R75 K190 [{["LayoutOrder"] = 3, ["Size"]}]
      654 GETIMPORT                        R76 K148 [UDim2.new]
      656 LOADN                            R77 1
      657 LOADN                            R78 -240
      658 LOADN                            R79 1
      659 LOADN                            R80 0
      660 CALL                             R76 4 1
      661 SETTABLEKS                       R76 R75 K3 ["Size"]
      663 DUPTABLE                         R76 K192 [{"LoadingIndicator"}]
      664 GETUPVAL                         R77 9
      665 GETTABLEKS                       R77 R77 K92 ["createElement"]
      667 GETUPVAL                         R78 17
      668 DUPTABLE                         R79 K195 [{"Size", "AnchorPoint", "Position"}]
      669 GETIMPORT                        R80 K148 [UDim2.new]
      671 LOADN                            R81 0
      672 LOADN                            R82 100
      673 LOADN                            R83 0
      674 LOADN                            R84 100
      675 CALL                             R80 4 1
      676 SETTABLEKS                       R80 R79 K3 ["Size"]
      678 GETIMPORT                        R80 K197 [Vector2.new]
      680 LOADK                            R81 K198 [0.5]
      681 LOADK                            R82 K198 [0.5]
      682 CALL                             R80 2 1
      683 SETTABLEKS                       R80 R79 K193 ["AnchorPoint"]
      685 GETIMPORT                        R80 K200 [UDim2.fromScale]
      687 LOADK                            R81 K198 [0.5]
      688 LOADK                            R82 K198 [0.5]
      689 CALL                             R80 2 1
      690 SETTABLEKS                       R80 R79 K194 ["Position"]
      692 CALL                             R77 2 1
      693 SETTABLEKS                       R77 R76 K191 ["LoadingIndicator"]
      695 CALL                             R73 3 1
      696 SETTABLEKS                       R73 R72 K152 ["LoadingIndicatorWrapper"]
      698 NOT                              R73 R39
      699 JUMPIFNOT                        R73 ; [+249]
      700 GETUPVAL                         R73 1
      701 MOVE                             R75 R6
      702 NAMECALL                         R73 R73 K201 ["isGeneral"]
      704 CALL                             R73 2 1
      705 JUMPIFNOT                        R73 ; [+243]
      706 GETUPVAL                         R73 9
      707 GETTABLEKS                       R73 R73 K92 ["createElement"]
      709 GETUPVAL                         R74 18
      710 NEWTABLE                         R75 64 0
      712 GETIMPORT                        R76 K148 [UDim2.new]
      714 LOADN                            R77 1
      715 LOADN                            R78 -240
      716 LOADN                            R79 1
      717 LOADN                            R80 0
      718 CALL                             R76 4 1
      719 SETTABLEKS                       R76 R75 K3 ["Size"]
      721 SETTABLEKS                       R46 R75 K202 ["allowSelectPrivate"]
      723 SETTABLEKS                       R7 R75 K6 ["assetId"]
      725 SETTABLEKS                       R8 R75 K8 ["name"]
      727 SETTABLEKS                       R9 R75 K9 ["description"]
      729 SETTABLEKS                       R10 R75 K13 ["owner"]
      731 SETTABLEKS                       R11 R75 K14 ["allowCopy"]
      733 SETTABLEKS                       R12 R75 K15 ["copyOn"]
      735 SETTABLEKS                       R13 R75 K16 ["allowComment"]
      737 SETTABLEKS                       R14 R75 K17 ["commentOn"]
      739 SETTABLEKS                       R15 R75 K18 ["deleteLocal"]
      741 SETTABLEKS                       R17 R75 K20 ["isAssetPublic"]
      743 SETTABLEKS                       R18 R75 K21 ["publishingRestriction"]
      745 SETTABLEKS                       R23 R75 K27 ["assetTypeEnum"]
      747 GETTABLEKS                       R76 R0 K203 ["onNameChange"]
      749 SETTABLEKS                       R76 R75 K203 ["onNameChange"]
      751 GETTABLEKS                       R76 R0 K204 ["onDescChange"]
      753 SETTABLEKS                       R76 R75 K204 ["onDescChange"]
      755 GETTABLEKS                       R76 R1 K205 ["groupId"]
      757 SETTABLEKS                       R76 R75 K206 ["preselectedGroupId"]
      759 GETTABLEKS                       R76 R0 K207 ["onAccessChange"]
      761 SETTABLEKS                       R76 R75 K208 ["onOwnerSelected"]
      763 GETTABLEKS                       R76 R0 K209 ["onSharingChanged"]
      765 SETTABLEKS                       R76 R75 K209 ["onSharingChanged"]
      767 GETTABLEKS                       R76 R0 K210 ["onAdditionalImagesChanged"]
      769 SETTABLEKS                       R76 R75 K210 ["onAdditionalImagesChanged"]
      771 GETTABLEKS                       R76 R0 K211 ["toggleCopy"]
      773 SETTABLEKS                       R76 R75 K211 ["toggleCopy"]
      775 GETTABLEKS                       R76 R0 K212 ["toggleComment"]
      777 SETTABLEKS                       R76 R75 K212 ["toggleComment"]
      779 GETTABLEKS                       R76 R0 K213 ["toggleDeleteLocal"]
      781 SETTABLEKS                       R76 R75 K213 ["toggleDeleteLocal"]
      783 GETTABLEKS                       R76 R0 K214 ["onAnimationSelectionChanged"]
      785 SETTABLEKS                       R76 R75 K214 ["onAnimationSelectionChanged"]
      787 GETTABLEKS                       R76 R0 K215 ["onanimationSectionValidityChanged"]
      789 SETTABLEKS                       R76 R75 K215 ["onanimationSectionValidityChanged"]
      791 GETTABLEKS                       R76 R2 K216 ["dataSharingEnabled"]
      793 SETTABLEKS                       R76 R75 K216 ["dataSharingEnabled"]
      795 GETTABLEKS                       R76 R2 K217 ["dataSharingToggled"]
      797 SETTABLEKS                       R76 R75 K217 ["dataSharingToggled"]
      799 GETTABLEKS                       R76 R0 K218 ["onDataConsentToggleClick"]
      801 SETTABLEKS                       R76 R75 K218 ["onDataConsentToggleClick"]
      803 GETTABLEKS                       R76 R0 K219 ["canOfferPublishOnApproval"]
      805 CALL                             R76 0 1
      806 SETTABLEKS                       R76 R75 K220 ["publishOnApprovalEnabled"]
      808 GETTABLEKS                       R76 R1 K221 ["hasPublishingPreferences"]
      810 SETTABLEKS                       R76 R75 K221 ["hasPublishingPreferences"]
      812 GETTABLEKS                       R76 R1 K222 ["hasPublishingFeePreview"]
      814 SETTABLEKS                       R76 R75 K222 ["hasPublishingFeePreview"]
      816 GETTABLEKS                       R76 R1 K223 ["publishingFeePreview"]
      818 SETTABLEKS                       R76 R75 K223 ["publishingFeePreview"]
      820 GETTABLEKS                       R76 R2 K224 ["publishOnApprovalToggled"]
      822 SETTABLEKS                       R76 R75 K224 ["publishOnApprovalToggled"]
      824 GETTABLEKS                       R76 R0 K225 ["onPublishToMarketplaceToggleClick"]
      826 SETTABLEKS                       R76 R75 K225 ["onPublishToMarketplaceToggleClick"]
      828 GETUPVAL                         R77 19
      829 CALL                             R77 0 1
      830 JUMPIFNOT                        R77 ; [+3]
      831 GETTABLEKS                       R76 R1 K226 ["specialAttributes"]
      833 JUMP                             ; [+1]
      834 LOADNIL                          R76
      835 SETTABLEKS                       R76 R75 K226 ["specialAttributes"]
      837 GETUPVAL                         R77 19
      838 CALL                             R77 0 1
      839 JUMPIFNOT                        R77 ; [+3]
      840 GETTABLEKS                       R76 R1 K227 ["hasMetadataPermission"]
      842 JUMP                             ; [+1]
      843 LOADNIL                          R76
      844 SETTABLEKS                       R76 R75 K227 ["hasMetadataPermission"]
      846 SETTABLEKS                       R31 R75 K228 ["displayOwnership"]
      848 SETTABLEKS                       R32 R75 K229 ["displayCopy"]
      850 SETTABLEKS                       R34 R75 K230 ["displayComment"]
      852 SETTABLEKS                       R35 R75 K231 ["displayAssetType"]
      854 SETTABLEKS                       R47 R75 K232 ["displaySharing"]
      856 SETTABLEKS                       R33 R75 K233 ["displayAssetTypeSelection"]
      858 JUMPIFNOT                        R45 ; [+2]
      859 MOVE                             R76 R26
      860 JUMP                             ; [+1]
      861 LOADNIL                          R76
      862 SETTABLEKS                       R76 R75 K29 ["allowedAssetTypesForRelease"]
      864 SETTABLEKS                       R27 R75 K30 ["allowedAssetTypesForFree"]
      866 JUMPIFNOT                        R45 ; [+2]
      867 MOVE                             R76 R16
      868 JUMP                             ; [+1]
      869 LOADNIL                          R76
      870 SETTABLEKS                       R76 R75 K234 ["newAssetStatus"]
      872 JUMPIFNOT                        R45 ; [+2]
      873 MOVE                             R76 R29
      874 JUMP                             ; [+1]
      875 LOADNIL                          R76
      876 SETTABLEKS                       R76 R75 K235 ["currentAssetStatus"]
      878 JUMPIFNOT                        R45 ; [+3]
      879 GETTABLEKS                       R76 R0 K236 ["onStatusChange"]
      881 JUMP                             ; [+1]
      882 LOADNIL                          R76
      883 SETTABLEKS                       R76 R75 K236 ["onStatusChange"]
      885 JUMPIFNOT                        R45 ; [+3]
      886 GETTABLEKS                       R76 R0 K237 ["onPriceChange"]
      888 JUMP                             ; [+1]
      889 LOADNIL                          R76
      890 SETTABLEKS                       R76 R75 K237 ["onPriceChange"]
      892 JUMPIFNOT                        R45 ; [+2]
      893 MOVE                             R76 R30
      894 JUMP                             ; [+1]
      895 LOADNIL                          R76
      896 SETTABLEKS                       R76 R75 K34 ["price"]
      898 LOADNIL                          R76
      899 SETTABLEKS                       R76 R75 K238 ["minPrice"]
      901 LOADNIL                          R76
      902 SETTABLEKS                       R76 R75 K239 ["maxPrice"]
      904 LOADNIL                          R76
      905 SETTABLEKS                       R76 R75 K240 ["feeRate"]
      907 LOADNIL                          R76
      908 SETTABLEKS                       R76 R75 K241 ["isPriceValid"]
      910 LOADN                            R76 3
      911 SETTABLEKS                       R76 R75 K120 ["LayoutOrder"]
      913 GETTABLEKS                       R76 R1 K46 ["instances"]
      915 SETTABLEKS                       R76 R75 K46 ["instances"]
      917 SETTABLEKS                       R63 R75 K242 ["showColorPicker"]
      919 JUMPIFNOT                        R63 ; [+3]
      920 GETTABLEKS                       R76 R2 K243 ["showColorPickerRequiredError"]
      922 JUMP                             ; [+1]
      923 LOADNIL                          R76
      924 SETTABLEKS                       R76 R75 K243 ["showColorPickerRequiredError"]
      926 GETTABLEKS                       R76 R2 K244 ["showNameRequiredError"]
      928 SETTABLEKS                       R76 R75 K244 ["showNameRequiredError"]
      930 GETTABLEKS                       R76 R2 K245 ["showDescriptionRequiredError"]
      932 SETTABLEKS                       R76 R75 K245 ["showDescriptionRequiredError"]
      934 JUMPIFNOT                        R63 ; [+3]
      935 GETTABLEKS                       R76 R2 K56 ["selectedColor"]
      937 JUMP                             ; [+1]
      938 LOADNIL                          R76
      939 SETTABLEKS                       R76 R75 K56 ["selectedColor"]
      941 JUMPIFNOT                        R63 ; [+3]
      942 GETTABLEKS                       R76 R0 K246 ["onSelectedColorChange"]
      944 JUMP                             ; [+1]
      945 LOADNIL                          R76
      946 SETTABLEKS                       R76 R75 K247 ["setSelectedColor"]
      948 CALL                             R73 2 1
      949 SETTABLEKS                       R73 R72 K153 ["PublishAsset"]
      951 GETUPVAL                         R73 1
      952 MOVE                             R75 R6
      953 NAMECALL                         R73 R73 K248 ["isVersions"]
      955 CALL                             R73 2 1
      956 JUMPIFNOT                        R73 ; [+75]
      957 GETUPVAL                         R73 9
      958 GETTABLEKS                       R73 R73 K92 ["createElement"]
      960 GETUPVAL                         R74 20
      961 DUPTABLE                         R75 K262 [{["Size"], ["assetId"], ["LayoutOrder"] = 3, ["currentItem"], ["rootItems"], ["openInputKey"], ["previousInput"], ["pageIndex"], ["pageRootItems"], ["versionHistory"], ["onDescClicked"], ["closeInput"], ["setVersionError"], ["setPreviousInput"], ["onPageChange"], ["setStates"]}]
      962 GETIMPORT                        R76 K148 [UDim2.new]
      964 LOADN                            R77 1
      965 LOADN                            R78 -240
      966 LOADN                            R79 1
      967 LOADN                            R80 -20
      968 CALL                             R76 4 1
      969 SETTABLEKS                       R76 R75 K3 ["Size"]
      971 SETTABLEKS                       R7 R75 K6 ["assetId"]
      973 GETTABLEKS                       R76 R2 K263 ["versionsCurrentItem"]
      975 SETTABLEKS                       R76 R75 K249 ["currentItem"]
      977 GETTABLEKS                       R76 R2 K264 ["versionsRootItems"]
      979 SETTABLEKS                       R76 R75 K250 ["rootItems"]
      981 GETTABLEKS                       R76 R2 K265 ["versionsOpenInputKey"]
      983 SETTABLEKS                       R76 R75 K251 ["openInputKey"]
      985 GETTABLEKS                       R76 R2 K266 ["versionsPreviousInput"]
      987 SETTABLEKS                       R76 R75 K252 ["previousInput"]
      989 GETTABLEKS                       R76 R2 K267 ["versionsPageIndex"]
      991 SETTABLEKS                       R76 R75 K253 ["pageIndex"]
      993 GETTABLEKS                       R76 R2 K268 ["versionsPageRootItems"]
      995 SETTABLEKS                       R76 R75 K254 ["pageRootItems"]
      997 GETUPVAL                         R77 21
      998 CALL                             R77 0 1
      999 JUMPIFNOT                        R77 ; [+3]
     1000 GETTABLEKS                       R76 R1 K269 ["versionHistoryWithDescriptions"]
     1002 JUMP                             ; [+2]
     1003 GETTABLEKS                       R76 R1 K255 ["versionHistory"]
     1005 SETTABLEKS                       R76 R75 K255 ["versionHistory"]
     1007 GETTABLEKS                       R76 R0 K270 ["versionsOnDescClicked"]
     1009 SETTABLEKS                       R76 R75 K256 ["onDescClicked"]
     1011 GETTABLEKS                       R76 R0 K271 ["versionsCloseInput"]
     1013 SETTABLEKS                       R76 R75 K257 ["closeInput"]
     1015 GETTABLEKS                       R76 R0 K258 ["setVersionError"]
     1017 SETTABLEKS                       R76 R75 K258 ["setVersionError"]
     1019 GETTABLEKS                       R76 R0 K272 ["versionsSetPreviousInput"]
     1021 SETTABLEKS                       R76 R75 K259 ["setPreviousInput"]
     1023 GETTABLEKS                       R76 R0 K273 ["versionsOnPageChange"]
     1025 SETTABLEKS                       R76 R75 K260 ["onPageChange"]
     1027 GETTABLEKS                       R76 R0 K274 ["versionsSetStates"]
     1029 SETTABLEKS                       R76 R75 K261 ["setStates"]
     1031 CALL                             R73 2 1
     1032 SETTABLEKS                       R73 R72 K154 ["Versions"]
     1034 GETUPVAL                         R74 1
     1035 MOVE                             R76 R6
     1036 NAMECALL                         R74 R74 K275 ["isSales"]
     1038 CALL                             R74 2 1
     1039 JUMPIFNOT                        R74 ; [+18]
     1040 GETUPVAL                         R73 9
     1041 GETTABLEKS                       R73 R73 K92 ["createElement"]
     1043 GETUPVAL                         R74 22
     1044 DUPTABLE                         R75 K278 [{["size"], ["assetId"], ["layoutOrder"] = 3}]
     1045 GETIMPORT                        R76 K148 [UDim2.new]
     1047 LOADN                            R77 1
     1048 LOADN                            R78 -240
     1049 LOADN                            R79 1
     1050 LOADN                            R80 0
     1051 CALL                             R76 4 1
     1052 SETTABLEKS                       R76 R75 K276 ["size"]
     1054 SETTABLEKS                       R7 R75 K6 ["assetId"]
     1056 CALL                             R73 2 1
     1057 JUMP                             ; [+1]
     1058 LOADNIL                          R73
     1059 SETTABLEKS                       R73 R72 K155 ["Sales"]
     1061 GETUPVAL                         R73 1
     1062 MOVE                             R75 R6
     1063 NAMECALL                         R73 R73 K279 ["isOverride"]
     1065 CALL                             R73 2 1
     1066 JUMPIFNOT                        R73 ; [+56]
     1067 GETUPVAL                         R74 23
     1068 CALL                             R74 0 1
     1069 JUMPIFNOT                        R74 ; [+28]
     1070 GETUPVAL                         R74 2
     1071 GETTABLEKS                       R74 R74 K280 ["isAvatarItemUpdateSupported"]
     1073 MOVE                             R75 R23
     1074 CALL                             R74 1 1
     1075 JUMPIFNOT                        R74 ; [+22]
     1076 GETUPVAL                         R73 14
     1077 GETTABLEKS                       R73 R73 K92 ["createElement"]
     1079 GETUPVAL                         R74 24
     1080 DUPTABLE                         R75 K282 [{["Size"], ["assetTypeEnum"], ["onOverrideAssetSelected"], ["LayoutOrder"] = 3}]
     1081 GETIMPORT                        R76 K148 [UDim2.new]
     1083 LOADN                            R77 1
     1084 LOADN                            R78 -240
     1085 LOADN                            R79 1
     1086 LOADN                            R80 0
     1087 CALL                             R76 4 1
     1088 SETTABLEKS                       R76 R75 K3 ["Size"]
     1090 SETTABLEKS                       R23 R75 K27 ["assetTypeEnum"]
     1092 GETTABLEKS                       R76 R0 K281 ["onOverrideAssetSelected"]
     1094 SETTABLEKS                       R76 R75 K281 ["onOverrideAssetSelected"]
     1096 CALL                             R73 2 1
     1097 JUMP                             ; [+25]
     1098 GETUPVAL                         R73 9
     1099 GETTABLEKS                       R73 R73 K92 ["createElement"]
     1101 GETUPVAL                         R74 25
     1102 DUPTABLE                         R75 K283 [{["Size"], ["assetTypeEnum"], ["instances"], ["onOverrideAssetSelected"], ["LayoutOrder"] = 3}]
     1103 GETIMPORT                        R76 K148 [UDim2.new]
     1105 LOADN                            R77 1
     1106 LOADN                            R78 -240
     1107 LOADN                            R79 1
     1108 LOADN                            R80 0
     1109 CALL                             R76 4 1
     1110 SETTABLEKS                       R76 R75 K3 ["Size"]
     1112 SETTABLEKS                       R23 R75 K27 ["assetTypeEnum"]
     1114 GETTABLEKS                       R76 R1 K46 ["instances"]
     1116 SETTABLEKS                       R76 R75 K46 ["instances"]
     1118 GETTABLEKS                       R76 R0 K281 ["onOverrideAssetSelected"]
     1120 SETTABLEKS                       R76 R75 K281 ["onOverrideAssetSelected"]
     1122 CALL                             R73 2 1
     1123 SETTABLEKS                       R73 R72 K156 ["OverrideAsset"]
     1125 GETUPVAL                         R73 1
     1126 MOVE                             R75 R6
     1127 NAMECALL                         R73 R73 K284 ["isPermissions"]
     1129 CALL                             R73 2 1
     1130 JUMPIFNOT                        R73 ; [+30]
     1131 GETUPVAL                         R73 9
     1132 GETTABLEKS                       R73 R73 K92 ["createElement"]
     1134 GETUPVAL                         R74 26
     1135 GETTABLEKS                       R74 R74 K285 ["AsyncCache"]
     1137 NEWTABLE                         R75 0 0
     1139 NEWTABLE                         R76 0 1
     1141 GETUPVAL                         R77 9
     1142 GETTABLEKS                       R77 R77 K92 ["createElement"]
     1144 GETUPVAL                         R78 27
     1145 DUPTABLE                         R79 K286 [{["Size"], ["AssetId"], ["LayoutOrder"] = 3}]
     1146 GETIMPORT                        R80 K148 [UDim2.new]
     1148 LOADN                            R81 1
     1149 MOVE                             R82 R41
     1150 LOADN                            R83 1
     1151 LOADN                            R84 0
     1152 CALL                             R80 4 1
     1153 SETTABLEKS                       R80 R79 K3 ["Size"]
     1155 SETTABLEKS                       R7 R79 K173 ["AssetId"]
     1157 CALL                             R77 2 -1
     1158 SETLIST                          R76 R77 -1 [1]
     1160 CALL                             R73 3 1
     1161 SETTABLEKS                       R73 R72 K157 ["PackagePermissions"]
     1163 CALL                             R69 3 1
     1164 SETTABLEKS                       R69 R68 K105 ["MainPage"]
     1166 GETUPVAL                         R69 9
     1167 GETTABLEKS                       R69 R69 K92 ["createElement"]
     1169 GETUPVAL                         R70 28
     1170 DUPTABLE                         R71 K292 [{["AssetId"], ["CanSave"], ["publishOnApprovalFee"], ["LayoutOrder"] = 2, ["Size"], ["TryCancel"], ["TryPublish"], ["OnPublishButtonHover"]}]
     1171 GETTABLEKS                       R72 R2 K293 ["overrideAssetId"]
     1173 SETTABLEKS                       R72 R71 K173 ["AssetId"]
     1175 SETTABLEKS                       R40 R71 K287 ["CanSave"]
     1177 GETUPVAL                         R73 7
     1178 CALL                             R73 0 1
     1179 JUMPIFNOT                        R73 ; [+2]
     1180 MOVE                             R72 R61
     1181 JUMP                             ; [+1]
     1182 LOADNIL                          R72
     1183 SETTABLEKS                       R72 R71 K288 ["publishOnApprovalFee"]
     1185 GETIMPORT                        R72 K148 [UDim2.new]
     1187 LOADN                            R73 1
     1188 LOADN                            R74 0
     1189 LOADN                            R75 0
     1190 LOADN                            R76 62
     1191 CALL                             R72 4 1
     1192 SETTABLEKS                       R72 R71 K3 ["Size"]
     1194 GETTABLEKS                       R72 R0 K294 ["tryCancelWithYield"]
     1196 SETTABLEKS                       R72 R71 K289 ["TryCancel"]
     1198 GETTABLEKS                       R72 R0 K295 ["tryPublishWithConfirmDialog"]
     1200 SETTABLEKS                       R72 R71 K290 ["TryPublish"]
     1202 JUMPIF                           R40 ; [+8]
     1203 NEWCLOSURE                       R72 P1
     1204 CAPTURE                          VAL R0
     1205 CAPTURE                          VAL R64
     1206 CAPTURE                          VAL R8
     1207 CAPTURE                          VAL R9
     1208 CAPTURE                          UPVAL U2
     1209 CAPTURE                          VAL R23
     1210 JUMP                             ; [+1]
     1211 LOADNIL                          R72
     1212 SETTABLEKS                       R72 R71 K291 ["OnPublishButtonHover"]
     1214 CALL                             R69 2 1
     1215 SETTABLEKS                       R69 R68 K106 ["Footer"]
     1217 CALL                             R65 3 -1
     1218 RETURN                           R65 -1

PROTO_88:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["idToFiatProductMap"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 GETTABLEKS                       R3 R0 K1 ["assetConfigData"]
       12 JUMPIF                           R3 ; [+2]
       13 NEWTABLE                         R3 0 0
       15 GETTABLEKS                       R4 R0 K2 ["changed"]
       17 GETTABLEKS                       R5 R0 K3 ["publishingRequirements"]
       19 JUMPIF                           R5 ; [+2]
       20 NEWTABLE                         R5 0 0
       22 GETTABLEKS                       R6 R5 K4 ["verification"]
       24 JUMPIF                           R6 ; [+2]
       25 NEWTABLE                         R6 0 0
       27 GETTABLEKS                       R7 R5 K5 ["publishing"]
       29 JUMPIF                           R7 ; [+2]
       30 NEWTABLE                         R7 0 0
       32 GETTABLEKS                       R8 R7 K6 ["restrictions"]
       34 JUMPIF                           R8 ; [+2]
       35 NEWTABLE                         R8 0 0
       37 NEWTABLE                         R9 0 0
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R10 R10 K7 ["contains"]
       42 MOVE                             R11 R9
       43 GETUPVAL                         R12 0
       44 GETTABLEKS                       R12 R12 K8 ["Package"]
       46 CALL                             R10 2 1
       47 GETTABLEKS                       R11 R0 K9 ["isVerifiedCreator"]
       49 GETTABLEKS                       R12 R0 K10 ["versionHistory"]
       51 GETUPVAL                         R14 1
       52 CALL                             R14 0 1
       53 JUMPIFNOT                        R14 ; [+3]
       54 GETTABLEKS                       R13 R0 K11 ["versionHistoryWithDescriptions"]
       56 JUMP                             ; [+1]
       57 LOADNIL                          R13
       58 GETTABLEKS                       R14 R0 K12 ["collaborators"]
       60 JUMPIF                           R14 ; [+2]
       61 NEWTABLE                         R14 0 0
       63 NEWTABLE                         R15 64 0
       65 SETTABLEKS                       R3 R15 K1 ["assetConfigData"]
       67 GETTABLEKS                       R16 R0 K13 ["assetTypeEnum"]
       69 SETTABLEKS                       R16 R15 K13 ["assetTypeEnum"]
       71 GETTABLEKS                       R16 R0 K14 ["assetTypeValidationSucceeded"]
       73 SETTABLEKS                       R16 R15 K14 ["assetTypeValidationSucceeded"]
       75 GETTABLEKS                       R16 R0 K15 ["categoryType"]
       77 SETTABLEKS                       R16 R15 K15 ["categoryType"]
       79 GETTABLEKS                       R16 R0 K16 ["currentScreen"]
       81 SETTABLEKS                       R16 R15 K16 ["currentScreen"]
       83 SETTABLEKS                       R4 R15 K17 ["changeTable"]
       85 GETTABLEKS                       R16 R0 K18 ["screenFlowType"]
       87 SETTABLEKS                       R16 R15 K18 ["screenFlowType"]
       89 GETTABLEKS                       R16 R0 K19 ["instances"]
       91 SETTABLEKS                       R16 R15 K19 ["instances"]
       93 GETUPVAL                         R17 2
       94 JUMPIF                           R17 ; [+2]
       95 GETUPVAL                         R17 3
       96 JUMPIFNOT                        R17 ; [+3]
       97 GETTABLEKS                       R16 R0 K20 ["sourceInstances"]
       99 JUMP                             ; [+1]
      100 LOADNIL                          R16
      101 SETTABLEKS                       R16 R15 K20 ["sourceInstances"]
      103 GETTABLEKS                       R16 R0 K21 ["allowedAssetTypesForRelease"]
      105 SETTABLEKS                       R16 R15 K21 ["allowedAssetTypesForRelease"]
      107 GETTABLEKS                       R16 R0 K22 ["allowedAssetTypesForUpload"]
      109 SETTABLEKS                       R16 R15 K22 ["allowedAssetTypesForUpload"]
      111 GETTABLEKS                       R16 R0 K23 ["allowedAssetTypesForFree"]
      113 SETTABLEKS                       R16 R15 K23 ["allowedAssetTypesForFree"]
      115 GETTABLEKS                       R16 R0 K24 ["allowedBundleTypeSettings"]
      117 SETTABLEKS                       R16 R15 K24 ["allowedBundleTypeSettings"]
      119 GETTABLEKS                       R16 R0 K25 ["currentTab"]
      121 SETTABLEKS                       R16 R15 K25 ["currentTab"]
      123 SETTABLEKS                       R11 R15 K9 ["isVerifiedCreator"]
      125 GETUPVAL                         R17 4
      126 JUMPIFNOT                        R17 ; [+4]
      127 GETTABLEKS                       R17 R7 K27 ["isAllowed"]
      129 ORK                              R16 R17 K26 [False]
      130 JUMP                             ; [+1]
      131 LOADB                            R16 0
      132 SETTABLEKS                       R16 R15 K28 ["isPublishingAllowed"]
      134 SETTABLEKS                       R10 R15 K29 ["isPackageMarketplacePublishAllowed"]
      136 GETTABLEKS                       R16 R0 K30 ["networkError"]
      138 SETTABLEKS                       R16 R15 K30 ["networkError"]
      140 GETTABLEKS                       R16 R0 K31 ["networkErrorAction"]
      142 JUMPIF                           R16 ; [+2]
      143 NEWTABLE                         R16 0 0
      145 SETTABLEKS                       R16 R15 K31 ["networkErrorAction"]
      147 GETTABLEKS                       R16 R0 K32 ["isPackageAsset"]
      149 SETTABLEKS                       R16 R15 K32 ["isPackageAsset"]
      151 GETTABLEKS                       R16 R1 K33 ["assetId"]
      153 JUMPIFNOT                        R16 ; [+9]
      154 GETTABLEKS                       R18 R0 K34 ["packagePermissions"]
      156 GETTABLEKS                       R19 R1 K33 ["assetId"]
      158 GETTABLE                         R17 R18 R19
      159 JUMPIFNOTEQKNIL                  R17 ; [+2]
      161 LOADB                            R16 0 +1
      162 LOADB                            R16 1
      163 SETTABLEKS                       R16 R15 K35 ["hasPackagePermission"]
      165 GETTABLEKS                       R16 R0 K36 ["isUploadFeeEnabled"]
      167 SETTABLEKS                       R16 R15 K36 ["isUploadFeeEnabled"]
      169 GETTABLEKS                       R16 R0 K37 ["descendantPermissions"]
      171 SETTABLEKS                       R16 R15 K37 ["descendantPermissions"]
      173 GETTABLEKS                       R16 R0 K38 ["uploadFee"]
      175 SETTABLEKS                       R16 R15 K38 ["uploadFee"]
      177 GETUPVAL                         R17 5
      178 CALL                             R17 0 1
      179 JUMPIFNOT                        R17 ; [+3]
      180 GETTABLEKS                       R16 R0 K39 ["hasPublishingPreferences"]
      182 JUMP                             ; [+1]
      183 LOADNIL                          R16
      184 SETTABLEKS                       R16 R15 K39 ["hasPublishingPreferences"]
      186 GETUPVAL                         R17 5
      187 CALL                             R17 0 1
      188 JUMPIFNOT                        R17 ; [+3]
      189 GETTABLEKS                       R16 R0 K40 ["hasPublishingFeePreview"]
      191 JUMP                             ; [+1]
      192 LOADNIL                          R16
      193 SETTABLEKS                       R16 R15 K40 ["hasPublishingFeePreview"]
      195 GETUPVAL                         R17 5
      196 CALL                             R17 0 1
      197 JUMPIFNOT                        R17 ; [+3]
      198 GETTABLEKS                       R16 R0 K41 ["publishingFeePreview"]
      200 JUMP                             ; [+1]
      201 LOADNIL                          R16
      202 SETTABLEKS                       R16 R15 K41 ["publishingFeePreview"]
      204 GETUPVAL                         R17 6
      205 CALL                             R17 0 1
      206 JUMPIFNOT                        R17 ; [+3]
      207 GETTABLEKS                       R16 R0 K42 ["specialAttributes"]
      209 JUMP                             ; [+1]
      210 LOADNIL                          R16
      211 SETTABLEKS                       R16 R15 K42 ["specialAttributes"]
      213 GETUPVAL                         R17 6
      214 CALL                             R17 0 1
      215 JUMPIFNOT                        R17 ; [+3]
      216 GETTABLEKS                       R16 R0 K43 ["hasMetadataPermission"]
      218 JUMP                             ; [+1]
      219 LOADNIL                          R16
      220 SETTABLEKS                       R16 R15 K43 ["hasMetadataPermission"]
      222 GETTABLEKS                       R16 R0 K44 ["deleteLocal"]
      224 SETTABLEKS                       R16 R15 K44 ["deleteLocal"]
      226 SETTABLEKS                       R12 R15 K10 ["versionHistory"]
      228 SETTABLEKS                       R13 R15 K11 ["versionHistoryWithDescriptions"]
      230 SETTABLEKS                       R14 R15 K45 ["permissions"]
      232 SETTABLEKS                       R8 R15 K46 ["publishingRestrictions"]
      234 GETTABLEKS                       R18 R1 K33 ["assetId"]
      236 GETTABLE                         R17 R2 R18
      237 JUMPIFNOT                        R17 ; [+4]
      238 GETTABLEKS                       R17 R1 K33 ["assetId"]
      240 GETTABLE                         R16 R2 R17
      241 JUMP                             ; [+4]
      242 GETUPVAL                         R16 7
      243 GETTABLEKS                       R16 R16 K47 ["getDefaultFiatProduct"]
      245 CALL                             R16 0 1
      246 SETTABLEKS                       R16 R15 K48 ["fiatProduct"]
      248 GETTABLEKS                       R16 R0 K49 ["groupBundlesUploadEnabledForUser"]
      250 SETTABLEKS                       R16 R15 K49 ["groupBundlesUploadEnabledForUser"]
      252 GETTABLEKS                       R16 R0 K50 ["animationPackType"]
      254 SETTABLEKS                       R16 R15 K50 ["animationPackType"]
      256 GETTABLEKS                       R16 R0 K51 ["animationPackSubName"]
      258 SETTABLEKS                       R16 R15 K51 ["animationPackSubName"]
      260 GETTABLEKS                       R16 R0 K52 ["animationPackWeight"]
      262 SETTABLEKS                       R16 R15 K52 ["animationPackWeight"]
      264 GETTABLEKS                       R16 R0 K53 ["animationPackParentModelName"]
      266 SETTABLEKS                       R16 R15 K53 ["animationPackParentModelName"]
      268 GETTABLEKS                       R16 R0 K54 ["animationSectionValid"]
      270 SETTABLEKS                       R16 R15 K54 ["animationSectionValid"]
      272 GETTABLEKS                       R16 R0 K55 ["isAvatarItemDialogFlowEnabled"]
      274 SETTABLEKS                       R16 R15 K55 ["isAvatarItemDialogFlowEnabled"]
      276 RETURN                           R15 1

PROTO_89:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_90:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_91:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_92:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_93:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["None"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_94:
        0 GETUPVAL                         R8 0
        1 GETUPVAL                         R9 1
        2 MOVE                             R10 R0
        3 MOVE                             R11 R1
        4 MOVE                             R12 R2
        5 MOVE                             R13 R3
        6 MOVE                             R14 R4
        7 MOVE                             R15 R5
        8 MOVE                             R16 R6
        9 MOVE                             R17 R7
       10 CALL                             R9 8 -1
       11 CALL                             R8 -1 0
       12 RETURN                           R0 0

PROTO_95:
        0 GETUPVAL                         R8 0
        1 GETUPVAL                         R9 1
        2 MOVE                             R10 R0
        3 MOVE                             R11 R1
        4 MOVE                             R12 R2
        5 MOVE                             R13 R3
        6 MOVE                             R14 R4
        7 MOVE                             R15 R5
        8 MOVE                             R16 R6
        9 MOVE                             R17 R7
       10 CALL                             R9 8 -1
       11 CALL                             R8 -1 0
       12 RETURN                           R0 0

PROTO_96:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_97:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_98:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_99:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_100:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 GETTABLEKS                       R3 R3 K0 ["OVERRIDE_ASSET_ID"]
       10 CALL                             R2 1 -1
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_101:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 MOVE                             R7 R0
        3 MOVE                             R8 R1
        4 MOVE                             R9 R2
        5 MOVE                             R10 R3
        6 MOVE                             R11 R4
        7 CALL                             R6 5 -1
        8 CALL                             R5 -1 0
        9 RETURN                           R0 0

PROTO_102:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_103:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_104:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_105:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_106:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_107:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_108:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_109:
        0 NEWTABLE                         R11 0 0
        2 MOVE                             R12 R5
        3 JUMPIF                           R12 ; [+2]
        4 NEWTABLE                         R12 0 0
        6 LOADNIL                          R13
        7 LOADNIL                          R14
        8 FORGPREP                         R12
        9 NAMECALL                         R17 R16 K0 ["Clone"]
       11 CALL                             R17 1 1
       12 GETUPVAL                         R18 0
       13 MOVE                             R19 R17
       14 CALL                             R18 1 0
       15 SETTABLE                         R17 R11 R15
       16 FORGLOOP                         R12 2 ; [-8]
       18 GETUPVAL                         R12 1
       19 GETUPVAL                         R13 2
       20 MOVE                             R14 R0
       21 MOVE                             R15 R1
       22 MOVE                             R16 R3
       23 MOVE                             R17 R4
       24 MOVE                             R18 R11
       25 MOVE                             R19 R6
       26 MOVE                             R20 R7
       27 MOVE                             R21 R8
       28 MOVE                             R22 R9
       29 MOVE                             R23 R10
       30 CALL                             R13 10 -1
       31 CALL                             R12 -1 0
       32 RETURN                           R0 0

PROTO_110:
        0 GETUPVAL                         R12 0
        1 GETUPVAL                         R13 1
        2 MOVE                             R14 R0
        3 MOVE                             R15 R1
        4 MOVE                             R16 R2
        5 MOVE                             R17 R3
        6 MOVE                             R18 R4
        7 MOVE                             R19 R5
        8 MOVE                             R20 R6
        9 MOVE                             R21 R7
       10 MOVE                             R22 R8
       11 MOVE                             R23 R9
       12 MOVE                             R24 R10
       13 MOVE                             R25 R11
       14 CALL                             R13 12 -1
       15 CALL                             R12 -1 0
       16 RETURN                           R0 0

PROTO_111:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_112:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_113:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_114:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 LOADNIL                          R8
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_115:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_116:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_117:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_118:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_119:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_120:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_121:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_122:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 -1
        8 RETURN                           R4 -1

PROTO_123:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_124:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_125:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_126:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_127:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_128:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_129:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_130:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_131:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_132:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_133:
        0 NEWTABLE                         R1 64 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 SETTABLEKS                       R2 R1 K0 ["getAssetDetails"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U1
       10 SETTABLEKS                       R2 R1 K1 ["dispatchGetMarketplaceInfo"]
       12 NEWCLOSURE                       R2 P2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U2
       15 SETTABLEKS                       R2 R1 K2 ["getVersionHistory"]
       17 NEWCLOSURE                       R2 P3
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U3
       20 SETTABLEKS                       R2 R1 K3 ["makeChangeRequest"]
       22 NEWCLOSURE                       R2 P4
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U5
       26 SETTABLEKS                       R2 R1 K4 ["resetUploadResult"]
       28 GETUPVAL                         R3 6
       29 CALL                             R3 0 1
       30 JUMPIF                           R3 ; [+4]
       31 NEWCLOSURE                       R2 P5
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U7
       34 JUMP                             ; [+1]
       35 LOADNIL                          R2
       36 SETTABLEKS                       R2 R1 K5 ["uploadCatalogItem"]
       38 GETUPVAL                         R3 6
       39 CALL                             R3 0 1
       40 JUMPIF                           R3 ; [+4]
       41 NEWCLOSURE                       R2 P6
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U8
       44 JUMP                             ; [+1]
       45 LOADNIL                          R2
       46 SETTABLEKS                       R2 R1 K6 ["configureCatalogItem"]
       48 GETUPVAL                         R3 6
       49 CALL                             R3 0 1
       50 JUMPIF                           R3 ; [+4]
       51 NEWCLOSURE                       R2 P7
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U9
       54 JUMP                             ; [+1]
       55 LOADNIL                          R2
       56 SETTABLEKS                       R2 R1 K7 ["configureMarketplaceItem"]
       58 GETUPVAL                         R3 6
       59 CALL                             R3 0 1
       60 JUMPIF                           R3 ; [+4]
       61 NEWCLOSURE                       R2 P8
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U10
       64 JUMP                             ; [+1]
       65 LOADNIL                          R2
       66 SETTABLEKS                       R2 R1 K8 ["uploadMarketplaceItem"]
       68 NEWCLOSURE                       R2 P9
       69 CAPTURE                          VAL R0
       70 CAPTURE                          UPVAL U11
       71 SETTABLEKS                       R2 R1 K9 ["postRevertVersion"]
       73 NEWCLOSURE                       R2 P10
       74 CAPTURE                          VAL R0
       75 CAPTURE                          UPVAL U12
       76 SETTABLEKS                       R2 R1 K10 ["postVersionDescription"]
       78 NEWCLOSURE                       R2 P11
       79 CAPTURE                          VAL R0
       80 CAPTURE                          UPVAL U13
       81 CAPTURE                          UPVAL U14
       82 CAPTURE                          UPVAL U15
       83 SETTABLEKS                       R2 R1 K11 ["setTab"]
       85 GETUPVAL                         R3 6
       86 CALL                             R3 0 1
       87 JUMPIF                           R3 ; [+4]
       88 NEWCLOSURE                       R2 P12
       89 CAPTURE                          VAL R0
       90 CAPTURE                          UPVAL U16
       91 JUMP                             ; [+1]
       92 LOADNIL                          R2
       93 SETTABLEKS                       R2 R1 K12 ["overrideAsset"]
       95 NEWCLOSURE                       R2 P13
       96 CAPTURE                          VAL R0
       97 CAPTURE                          UPVAL U17
       98 SETTABLEKS                       R2 R1 K13 ["getIsVerifiedCreator"]
      100 NEWCLOSURE                       R2 P14
      101 CAPTURE                          VAL R0
      102 CAPTURE                          UPVAL U18
      103 SETTABLEKS                       R2 R1 K14 ["getItemUploadFee"]
      105 GETUPVAL                         R3 19
      106 CALL                             R3 0 1
      107 JUMPIFNOT                        R3 ; [+4]
      108 NEWCLOSURE                       R2 P15
      109 CAPTURE                          VAL R0
      110 CAPTURE                          UPVAL U20
      111 JUMP                             ; [+1]
      112 LOADNIL                          R2
      113 SETTABLEKS                       R2 R1 K15 ["getPublishingPreferences"]
      115 GETUPVAL                         R3 19
      116 CALL                             R3 0 1
      117 JUMPIFNOT                        R3 ; [+4]
      118 NEWCLOSURE                       R2 P16
      119 CAPTURE                          VAL R0
      120 CAPTURE                          UPVAL U21
      121 JUMP                             ; [+1]
      122 LOADNIL                          R2
      123 SETTABLEKS                       R2 R1 K16 ["clearPublishingPreferences"]
      125 GETUPVAL                         R3 19
      126 CALL                             R3 0 1
      127 JUMPIFNOT                        R3 ; [+4]
      128 NEWCLOSURE                       R2 P17
      129 CAPTURE                          VAL R0
      130 CAPTURE                          UPVAL U22
      131 JUMP                             ; [+1]
      132 LOADNIL                          R2
      133 SETTABLEKS                       R2 R1 K17 ["getPublishingFeePreview"]
      135 GETUPVAL                         R3 19
      136 CALL                             R3 0 1
      137 JUMPIFNOT                        R3 ; [+4]
      138 NEWCLOSURE                       R2 P18
      139 CAPTURE                          VAL R0
      140 CAPTURE                          UPVAL U23
      141 JUMP                             ; [+1]
      142 LOADNIL                          R2
      143 SETTABLEKS                       R2 R1 K18 ["clearPublishingFeePreview"]
      145 GETUPVAL                         R3 24
      146 CALL                             R3 0 1
      147 JUMPIFNOT                        R3 ; [+4]
      148 NEWCLOSURE                       R2 P19
      149 CAPTURE                          VAL R0
      150 CAPTURE                          UPVAL U25
      151 JUMP                             ; [+1]
      152 LOADNIL                          R2
      153 SETTABLEKS                       R2 R1 K19 ["dispatchFetchUploadFeeWithMetadata"]
      155 GETUPVAL                         R3 6
      156 CALL                             R3 0 1
      157 JUMPIF                           R3 ; [+5]
      158 NEWCLOSURE                       R2 P20
      159 CAPTURE                          UPVAL U26
      160 CAPTURE                          VAL R0
      161 CAPTURE                          UPVAL U27
      162 JUMP                             ; [+1]
      163 LOADNIL                          R2
      164 SETTABLEKS                       R2 R1 K20 ["uploadCatalogItemWithFee"]
      166 GETUPVAL                         R3 6
      167 CALL                             R3 0 1
      168 JUMPIF                           R3 ; [+4]
      169 NEWCLOSURE                       R2 P21
      170 CAPTURE                          VAL R0
      171 CAPTURE                          UPVAL U28
      172 JUMP                             ; [+1]
      173 LOADNIL                          R2
      174 SETTABLEKS                       R2 R1 K21 ["uploadUGCBundleWithFee"]
      176 NEWCLOSURE                       R2 P22
      177 CAPTURE                          VAL R0
      178 CAPTURE                          UPVAL U29
      179 SETTABLEKS                       R2 R1 K22 ["dispatchPostPackageMetadataRequest"]
      181 NEWCLOSURE                       R2 P23
      182 CAPTURE                          VAL R0
      183 CAPTURE                          UPVAL U30
      184 SETTABLEKS                       R2 R1 K23 ["updateStore"]
      186 NEWCLOSURE                       R2 P24
      187 CAPTURE                          VAL R0
      188 CAPTURE                          UPVAL U31
      189 SETTABLEKS                       R2 R1 K24 ["dispatchGetPackageCollaboratorsRequest"]
      191 NEWCLOSURE                       R2 P25
      192 CAPTURE                          VAL R0
      193 CAPTURE                          UPVAL U32
      194 SETTABLEKS                       R2 R1 K25 ["dispatchPutPackagePermissionsRequest"]
      196 NEWCLOSURE                       R2 P26
      197 CAPTURE                          VAL R0
      198 CAPTURE                          UPVAL U33
      199 SETTABLEKS                       R2 R1 K26 ["dispatchPostAssetCheckPermissions"]
      201 NEWCLOSURE                       R2 P27
      202 CAPTURE                          VAL R0
      203 CAPTURE                          UPVAL U34
      204 SETTABLEKS                       R2 R1 K27 ["dispatchGetGroupMetadata"]
      206 NEWCLOSURE                       R2 P28
      207 CAPTURE                          VAL R0
      208 CAPTURE                          UPVAL U35
      209 SETTABLEKS                       R2 R1 K28 ["dispatchGetGroupRoleInfo"]
      211 NEWCLOSURE                       R2 P29
      212 CAPTURE                          VAL R0
      213 CAPTURE                          UPVAL U36
      214 SETTABLEKS                       R2 R1 K29 ["dispatchGetUsername"]
      216 NEWCLOSURE                       R2 P30
      217 CAPTURE                          VAL R0
      218 CAPTURE                          UPVAL U37
      219 SETTABLEKS                       R2 R1 K30 ["dispatchPatchMakeAssetPublicRequest"]
      221 NEWCLOSURE                       R2 P31
      222 CAPTURE                          VAL R0
      223 CAPTURE                          UPVAL U38
      224 SETTABLEKS                       R2 R1 K31 ["dispatchGetAssetPermissionsRequest"]
      226 NEWCLOSURE                       R2 P32
      227 CAPTURE                          VAL R0
      228 CAPTURE                          UPVAL U39
      229 SETTABLEKS                       R2 R1 K32 ["dispatchSetDescendantPermissions"]
      231 NEWCLOSURE                       R2 P33
      232 CAPTURE                          VAL R0
      233 CAPTURE                          UPVAL U40
      234 SETTABLEKS                       R2 R1 K33 ["dispatchGetPublishingRequirements"]
      236 NEWCLOSURE                       R2 P34
      237 CAPTURE                          VAL R0
      238 CAPTURE                          UPVAL U41
      239 SETTABLEKS                       R2 R1 K34 ["dispatchGetAssetMediaMetadataArray"]
      241 NEWCLOSURE                       R2 P35
      242 CAPTURE                          VAL R0
      243 CAPTURE                          UPVAL U42
      244 SETTABLEKS                       R2 R1 K35 ["dispatchGetFiatProduct"]
      246 GETUPVAL                         R3 43
      247 CALL                             R3 0 1
      248 JUMPIFNOT                        R3 ; [+4]
      249 NEWCLOSURE                       R2 P36
      250 CAPTURE                          VAL R0
      251 CAPTURE                          UPVAL U44
      252 JUMP                             ; [+1]
      253 LOADNIL                          R2
      254 SETTABLEKS                       R2 R1 K36 ["dispatchGetSellerStatus"]
      256 NEWCLOSURE                       R2 P37
      257 CAPTURE                          VAL R0
      258 CAPTURE                          UPVAL U45
      259 SETTABLEKS                       R2 R1 K37 ["dispatchValidateAnimationResult"]
      261 NEWCLOSURE                       R2 P38
      262 CAPTURE                          VAL R0
      263 CAPTURE                          UPVAL U46
      264 SETTABLEKS                       R2 R1 K38 ["dispatchCheckAvatarAssetPrivacy"]
      266 GETUPVAL                         R2 6
      267 CALL                             R2 0 1
      268 JUMPIF                           R2 ; [+10]
      269 NEWCLOSURE                       R2 P39
      270 CAPTURE                          VAL R0
      271 CAPTURE                          UPVAL U47
      272 SETTABLEKS                       R2 R1 K39 ["uploadAnimationAsset"]
      274 NEWCLOSURE                       R2 P40
      275 CAPTURE                          VAL R0
      276 CAPTURE                          UPVAL U48
      277 SETTABLEKS                       R2 R1 K40 ["overrideAnimationAsset"]
      279 GETUPVAL                         R2 6
      280 CALL                             R2 0 1
      281 JUMPIFNOT                        R2 ; [+15]
      282 NEWCLOSURE                       R2 P41
      283 CAPTURE                          VAL R0
      284 CAPTURE                          UPVAL U49
      285 SETTABLEKS                       R2 R1 K41 ["dispatchDownloadFlow"]
      287 NEWCLOSURE                       R2 P42
      288 CAPTURE                          VAL R0
      289 CAPTURE                          UPVAL U50
      290 SETTABLEKS                       R2 R1 K42 ["dispatchEditFlow"]
      292 NEWCLOSURE                       R2 P43
      293 CAPTURE                          VAL R0
      294 CAPTURE                          UPVAL U51
      295 SETTABLEKS                       R2 R1 K43 ["dispatchUploadFlow"]
      297 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StarterPack"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETTABLEKS                       R2 R1 K7 ["Src"]
       19 GETTABLEKS                       R2 R2 K8 ["Util"]
       21 GETIMPORT                        R3 K1 [game]
       23 LOADK                            R5 K9 ["ToolboxEditDialogUseMPRS2"]
       24 NAMECALL                         R3 R3 K10 ["GetFastFlag"]
       26 CALL                             R3 2 1
       27 GETIMPORT                        R4 K1 [game]
       29 LOADK                            R6 K11 ["ToolboxSetMarketplaceModelsAsPackagesForAll"]
       30 NAMECALL                         R4 R4 K10 ["GetFastFlag"]
       32 CALL                             R4 2 1
       33 GETIMPORT                        R5 K1 [game]
       35 LOADK                            R7 K12 ["ToolboxSetMarketplaceModelsAsPackagesForIXP3"]
       36 NAMECALL                         R5 R5 K10 ["GetFastFlag"]
       38 CALL                             R5 2 1
       39 GETIMPORT                        R6 K1 [game]
       41 LOADK                            R8 K13 ["ToolboxVideoConfigSharing2"]
       42 NAMECALL                         R6 R6 K10 ["GetFastFlag"]
       44 CALL                             R6 2 1
       45 GETIMPORT                        R7 K15 [require]
       47 GETTABLEKS                       R8 R1 K7 ["Src"]
       49 GETTABLEKS                       R8 R8 K8 ["Util"]
       51 GETTABLEKS                       R8 R8 K16 ["SharedFlags"]
       53 GETTABLEKS                       R8 R8 K17 ["getFFlagToolboxAssetConfigOnboardingLink"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K1 [game]
       58 LOADK                            R10 K18 ["ToolboxSendPackageVersionNoteTelemetry"]
       59 NAMECALL                         R8 R8 K10 ["GetFastFlag"]
       61 CALL                             R8 2 1
       62 GETIMPORT                        R9 K1 [game]
       64 LOADK                            R11 K19 ["StudioService"]
       65 NAMECALL                         R9 R9 K3 ["GetService"]
       67 CALL                             R9 2 1
       68 GETIMPORT                        R10 K15 [require]
       70 GETTABLEKS                       R11 R1 K7 ["Src"]
       72 GETTABLEKS                       R11 R11 K8 ["Util"]
       74 GETTABLEKS                       R11 R11 K20 ["getUserId"]
       76 CALL                             R10 1 1
       77 GETTABLEKS                       R11 R1 K21 ["Packages"]
       79 GETIMPORT                        R12 K15 [require]
       81 GETTABLEKS                       R13 R11 K22 ["React"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K15 [require]
       86 GETTABLEKS                       R14 R11 K23 ["Roact"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K15 [require]
       91 GETTABLEKS                       R15 R11 K24 ["RoactRodux"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K15 [require]
       96 GETTABLEKS                       R16 R11 K25 ["Foundation"]
       98 CALL                             R15 1 1
       99 GETIMPORT                        R16 K15 [require]
      101 GETTABLEKS                       R17 R11 K26 ["Cryo"]
      103 CALL                             R16 1 1
      104 GETIMPORT                        R17 K15 [require]
      106 GETTABLEKS                       R18 R2 K27 ["Analytics"]
      108 GETTABLEKS                       R18 R18 K27 ["Analytics"]
      110 CALL                             R17 1 1
      111 GETTABLEKS                       R18 R1 K7 ["Src"]
      113 GETTABLEKS                       R18 R18 K28 ["Components"]
      115 GETTABLEKS                       R19 R18 K29 ["AssetConfiguration"]
      117 GETIMPORT                        R20 K15 [require]
      119 GETTABLEKS                       R21 R19 K30 ["PreviewArea"]
      121 CALL                             R20 1 1
      122 GETIMPORT                        R21 K15 [require]
      124 GETTABLEKS                       R22 R19 K31 ["PublishAsset"]
      126 CALL                             R21 1 1
      127 GETIMPORT                        R22 K15 [require]
      129 GETTABLEKS                       R23 R19 K32 ["AssetConfigFooter"]
      131 CALL                             R22 1 1
      132 GETIMPORT                        R23 K15 [require]
      134 GETTABLEKS                       R24 R19 K33 ["Versions"]
      136 CALL                             R23 1 1
      137 GETIMPORT                        R24 K15 [require]
      139 GETTABLEKS                       R25 R19 K34 ["DataSharing"]
      141 CALL                             R24 1 1
      142 GETIMPORT                        R25 K15 [require]
      144 GETTABLEKS                       R26 R19 K35 ["CreatorDashboardLinkContent"]
      146 CALL                             R25 1 1
      147 GETIMPORT                        R26 K15 [require]
      149 GETTABLEKS                       R27 R19 K36 ["Permissions"]
      151 GETTABLEKS                       R27 R27 K37 ["PermissionsPage"]
      153 CALL                             R26 1 1
      154 GETIMPORT                        R27 K15 [require]
      156 GETTABLEKS                       R28 R19 K36 ["Permissions"]
      158 GETTABLEKS                       R28 R28 K38 ["CollaboratorInfo"]
      160 CALL                             R27 1 1
      161 GETIMPORT                        R28 K15 [require]
      163 GETTABLEKS                       R29 R19 K39 ["WarningDialog"]
      165 CALL                             R28 1 1
      166 GETIMPORT                        R29 K15 [require]
      168 GETTABLEKS                       R30 R19 K40 ["AvatarItemDialogContainer"]
      170 CALL                             R29 1 1
      171 GETIMPORT                        R30 K15 [require]
      173 GETTABLEKS                       R31 R19 K41 ["OverrideAsset"]
      175 CALL                             R30 1 1
      176 GETIMPORT                        R31 K15 [require]
      178 GETTABLEKS                       R32 R19 K42 ["AvatarItemOverride"]
      180 CALL                             R31 1 1
      181 GETIMPORT                        R32 K15 [require]
      183 GETTABLEKS                       R33 R18 K43 ["MessageBox"]
      185 GETTABLEKS                       R33 R33 K43 ["MessageBox"]
      187 CALL                             R32 1 1
      188 GETIMPORT                        R33 K15 [require]
      190 GETTABLEKS                       R34 R2 K44 ["AssetPermissionUtil"]
      192 CALL                             R33 1 1
      193 GETIMPORT                        R34 K15 [require]
      195 GETTABLEKS                       R35 R2 K45 ["AvatarAnimationStudioToolboxTextures"]
      197 CALL                             R34 1 1
      198 GETIMPORT                        R35 K15 [require]
      200 GETTABLEKS                       R36 R2 K46 ["Images"]
      202 CALL                             R35 1 1
      203 GETIMPORT                        R36 K15 [require]
      205 GETTABLEKS                       R37 R2 K47 ["AssetConfigConstants"]
      207 CALL                             R36 1 1
      208 GETIMPORT                        R37 K15 [require]
      210 GETTABLEKS                       R38 R2 K48 ["Constants"]
      212 CALL                             R37 1 1
      213 GETIMPORT                        R38 K15 [require]
      215 GETTABLEKS                       R39 R2 K49 ["ScreenSetup"]
      217 CALL                             R38 1 1
      218 GETIMPORT                        R39 K15 [require]
      220 GETTABLEKS                       R40 R2 K50 ["AssetConfigUtil"]
      222 CALL                             R39 1 1
      223 GETIMPORT                        R40 K15 [require]
      225 GETTABLEKS                       R41 R2 K51 ["fixUpPreValidation"]
      227 CALL                             R40 1 1
      228 GETIMPORT                        R41 K15 [require]
      230 GETTABLEKS                       R42 R2 K52 ["PublishUtil"]
      232 CALL                             R41 1 1
      233 GETIMPORT                        R42 K15 [require]
      235 GETTABLEKS                       R43 R2 K53 ["getAllowedAssetTypeEnums"]
      237 CALL                             R42 1 1
      238 GETIMPORT                        R43 K15 [require]
      240 GETTABLEKS                       R44 R2 K54 ["FiatUtil"]
      242 CALL                             R43 1 1
      243 GETIMPORT                        R44 K15 [require]
      245 GETTABLEKS                       R45 R2 K55 ["MetadataType"]
      247 CALL                             R44 1 1
      248 LOADNIL                          R45
      249 JUMPIFNOT                        R5 ; [+6]
      250 GETIMPORT                        R46 K15 [require]
      252 GETTABLEKS                       R47 R2 K56 ["getIsIXPVariableEnabled"]
      254 CALL                             R46 1 1
      255 MOVE                             R45 R46
      256 GETIMPORT                        R46 K15 [require]
      258 GETTABLEKS                       R47 R11 K57 ["Framework"]
      260 CALL                             R46 1 1
      261 GETTABLEKS                       R47 R46 K8 ["Util"]
      263 GETTABLEKS                       R47 R47 K58 ["deepCopy"]
      265 GETTABLEKS                       R48 R46 K8 ["Util"]
      267 GETTABLEKS                       R48 R48 K59 ["deepEqual"]
      269 GETTABLEKS                       R49 R46 K60 ["Dash"]
      271 GETTABLEKS                       R50 R49 K61 ["slice"]
      273 GETIMPORT                        R51 K15 [require]
      275 GETTABLEKS                       R52 R1 K7 ["Src"]
      277 GETTABLEKS                       R52 R52 K62 ["Networking"]
      279 GETTABLEKS                       R52 R52 K63 ["Requests"]
      281 GETTABLEKS                       R52 R52 K64 ["MakeChangeRequest"]
      283 CALL                             R51 1 1
      284 GETTABLEKS                       R52 R1 K7 ["Src"]
      286 GETTABLEKS                       R52 R52 K65 ["Types"]
      288 GETIMPORT                        R53 K15 [require]
      290 GETTABLEKS                       R54 R52 K66 ["AssetMediaTypes"]
      292 CALL                             R53 1 1
      293 GETIMPORT                        R54 K15 [require]
      295 GETTABLEKS                       R55 R52 K67 ["AssetSubTypes"]
      297 CALL                             R54 1 1
      298 GETIMPORT                        R55 K15 [require]
      300 GETTABLEKS                       R56 R52 K68 ["ConfigTypes"]
      302 CALL                             R55 1 1
      303 GETTABLEKS                       R56 R1 K7 ["Src"]
      305 GETTABLEKS                       R56 R56 K62 ["Networking"]
      307 GETTABLEKS                       R56 R56 K63 ["Requests"]
      309 GETIMPORT                        R57 K15 [require]
      311 GETTABLEKS                       R58 R56 K69 ["UploadCatalogItemRequest"]
      313 CALL                             R57 1 1
      314 GETIMPORT                        R58 K15 [require]
      316 GETTABLEKS                       R59 R56 K70 ["ConfigureCatalogItemRequest"]
      318 CALL                             R58 1 1
      319 GETIMPORT                        R59 K15 [require]
      321 GETTABLEKS                       R60 R56 K71 ["GetAssetDetailsRequest"]
      323 CALL                             R59 1 1
      324 GETIMPORT                        R60 K15 [require]
      326 GETTABLEKS                       R61 R56 K72 ["PostRevertVersionRequest"]
      328 CALL                             R60 1 1
      329 GETIMPORT                        R61 K15 [require]
      331 GETTABLEKS                       R62 R56 K73 ["PostVersionDescriptionRequest"]
      333 CALL                             R61 1 1
      334 GETIMPORT                        R62 K15 [require]
      336 GETTABLEKS                       R63 R56 K74 ["PatchAssetRequest"]
      338 CALL                             R62 1 1
      339 GETIMPORT                        R63 K15 [require]
      341 GETTABLEKS                       R64 R56 K75 ["PostUploadAssetRequest"]
      343 CALL                             R63 1 1
      344 GETIMPORT                        R64 K15 [require]
      346 GETTABLEKS                       R65 R56 K76 ["PostOverrideAssetRequest"]
      348 CALL                             R64 1 1
      349 GETIMPORT                        R65 K15 [require]
      351 GETTABLEKS                       R66 R56 K77 ["PostUploadAnimationRequest"]
      353 CALL                             R65 1 1
      354 GETIMPORT                        R66 K15 [require]
      356 GETTABLEKS                       R67 R56 K78 ["PostOverrideAnimationRequest"]
      358 CALL                             R66 1 1
      359 GETIMPORT                        R67 K15 [require]
      361 GETTABLEKS                       R68 R56 K79 ["GetIsVerifiedCreatorRequest"]
      363 CALL                             R67 1 1
      364 GETIMPORT                        R68 K15 [require]
      366 GETTABLEKS                       R69 R56 K80 ["PostPackageMetadataRequest"]
      368 CALL                             R68 1 1
      369 GETIMPORT                        R69 K15 [require]
      371 GETTABLEKS                       R70 R56 K81 ["GetPackageCollaboratorsRequest"]
      373 CALL                             R69 1 1
      374 GETIMPORT                        R70 K15 [require]
      376 GETTABLEKS                       R71 R56 K82 ["PutPackagePermissionsRequest"]
      378 CALL                             R70 1 1
      379 GETIMPORT                        R71 K15 [require]
      381 GETTABLEKS                       R72 R56 K83 ["PostAssetCheckPermissions"]
      383 CALL                             R71 1 1
      384 GETIMPORT                        R72 K15 [require]
      386 GETTABLEKS                       R73 R56 K84 ["GetMarketplaceInfoRequest"]
      388 CALL                             R72 1 1
      389 GETIMPORT                        R73 K15 [require]
      391 GETTABLEKS                       R74 R56 K85 ["GetItemUploadFeeRequest"]
      393 CALL                             R73 1 1
      394 GETIMPORT                        R74 K15 [require]
      396 GETTABLEKS                       R75 R56 K86 ["GetPublishingPreferencesRequest"]
      398 CALL                             R74 1 1
      399 GETIMPORT                        R75 K15 [require]
      401 GETTABLEKS                       R76 R56 K87 ["GetPublishingFeePreviewRequest"]
      403 CALL                             R75 1 1
      404 GETIMPORT                        R76 K15 [require]
      406 GETTABLEKS                       R77 R56 K88 ["UGCBundleUploadRequest"]
      408 CALL                             R76 1 1
      409 GETIMPORT                        R77 K15 [require]
      411 GETTABLEKS                       R78 R56 K89 ["PatchMakeAssetPublicRequest"]
      413 CALL                             R77 1 1
      414 GETIMPORT                        R78 K15 [require]
      416 GETTABLEKS                       R79 R56 K90 ["GetAssetPermissionsRequest"]
      418 CALL                             R78 1 1
      419 GETIMPORT                        R79 K15 [require]
      421 GETTABLEKS                       R80 R56 K91 ["GetPublishingRequirementsRequest"]
      423 CALL                             R79 1 1
      424 GETIMPORT                        R80 K15 [require]
      426 GETTABLEKS                       R81 R56 K92 ["GetAssetMediaMetadataArrayRequest"]
      428 CALL                             R80 1 1
      429 GETIMPORT                        R81 K15 [require]
      431 GETTABLEKS                       R82 R56 K93 ["UGCAccessoryUploadRequest"]
      433 CALL                             R81 1 1
      434 GETIMPORT                        R82 K15 [require]
      436 GETTABLEKS                       R83 R56 K94 ["GetVersionHistoryRequest"]
      438 CALL                             R82 1 1
      439 GETIMPORT                        R83 K15 [require]
      441 GETTABLEKS                       R84 R56 K95 ["GetFiatProductRequest"]
      443 CALL                             R83 1 1
      444 GETIMPORT                        R84 K15 [require]
      446 GETTABLEKS                       R85 R56 K96 ["GetSellerStatusRequest"]
      448 CALL                             R84 1 1
      449 GETIMPORT                        R85 K15 [require]
      451 GETTABLEKS                       R86 R56 K97 ["GetDefaultBundleDataSharingRequest"]
      453 CALL                             R85 1 1
      454 GETIMPORT                        R86 K15 [require]
      456 GETTABLEKS                       R87 R1 K7 ["Src"]
      458 GETTABLEKS                       R87 R87 K98 ["Actions"]
      460 GETTABLEKS                       R87 R87 K99 ["ClearChange"]
      462 CALL                             R86 1 1
      463 GETIMPORT                        R87 K15 [require]
      465 GETTABLEKS                       R88 R1 K7 ["Src"]
      467 GETTABLEKS                       R88 R88 K98 ["Actions"]
      469 GETTABLEKS                       R88 R88 K100 ["SetAssetConfigTab"]
      471 CALL                             R87 1 1
      472 GETIMPORT                        R88 K15 [require]
      474 GETTABLEKS                       R89 R1 K7 ["Src"]
      476 GETTABLEKS                       R89 R89 K98 ["Actions"]
      478 GETTABLEKS                       R89 R89 K101 ["UpdateAssetConfigStore"]
      480 CALL                             R88 1 1
      481 GETIMPORT                        R89 K15 [require]
      483 GETTABLEKS                       R90 R1 K7 ["Src"]
      485 GETTABLEKS                       R90 R90 K98 ["Actions"]
      487 GETTABLEKS                       R90 R90 K102 ["PublishingPreferencesReceived"]
      489 CALL                             R89 1 1
      490 GETIMPORT                        R90 K15 [require]
      492 GETTABLEKS                       R91 R1 K7 ["Src"]
      494 GETTABLEKS                       R91 R91 K98 ["Actions"]
      496 GETTABLEKS                       R91 R91 K103 ["PublishingFeePreviewReceived"]
      498 CALL                             R90 1 1
      499 GETIMPORT                        R91 K15 [require]
      501 GETTABLEKS                       R92 R1 K7 ["Src"]
      503 GETTABLEKS                       R92 R92 K98 ["Actions"]
      505 GETTABLEKS                       R92 R92 K104 ["SetDescendantPermissions"]
      507 CALL                             R91 1 1
      508 GETIMPORT                        R92 K15 [require]
      510 GETTABLEKS                       R93 R1 K7 ["Src"]
      512 GETTABLEKS                       R93 R93 K98 ["Actions"]
      514 GETTABLEKS                       R93 R93 K105 ["UploadResult"]
      516 CALL                             R92 1 1
      517 GETIMPORT                        R93 K15 [require]
      519 GETTABLEKS                       R94 R1 K7 ["Src"]
      521 GETTABLEKS                       R94 R94 K98 ["Actions"]
      523 GETTABLEKS                       R94 R94 K106 ["ValidateAnimationResult"]
      525 CALL                             R93 1 1
      526 GETIMPORT                        R94 K15 [require]
      528 GETTABLEKS                       R95 R1 K7 ["Src"]
      530 GETTABLEKS                       R95 R95 K107 ["Thunks"]
      532 GETTABLEKS                       R95 R95 K108 ["GetGroupMetadata"]
      534 CALL                             R94 1 1
      535 GETIMPORT                        R95 K15 [require]
      537 GETTABLEKS                       R96 R1 K7 ["Src"]
      539 GETTABLEKS                       R96 R96 K107 ["Thunks"]
      541 GETTABLEKS                       R96 R96 K109 ["GetGroupRoleInfo"]
      543 CALL                             R95 1 1
      544 GETIMPORT                        R96 K15 [require]
      546 GETTABLEKS                       R97 R1 K7 ["Src"]
      548 GETTABLEKS                       R97 R97 K107 ["Thunks"]
      550 GETTABLEKS                       R97 R97 K110 ["GetUsername"]
      552 CALL                             R96 1 1
      553 GETIMPORT                        R97 K15 [require]
      555 GETTABLEKS                       R98 R1 K7 ["Src"]
      557 GETTABLEKS                       R98 R98 K107 ["Thunks"]
      559 GETTABLEKS                       R98 R98 K111 ["CheckAvatarAssetPrivacy"]
      561 CALL                             R97 1 1
      562 GETIMPORT                        R98 K15 [require]
      564 GETTABLEKS                       R99 R1 K7 ["Src"]
      566 GETTABLEKS                       R99 R99 K107 ["Thunks"]
      568 GETTABLEKS                       R99 R99 K29 ["AssetConfiguration"]
      570 GETTABLEKS                       R99 R99 K112 ["DownloadFlowRequest"]
      572 CALL                             R98 1 1
      573 GETIMPORT                        R99 K15 [require]
      575 GETTABLEKS                       R100 R1 K7 ["Src"]
      577 GETTABLEKS                       R100 R100 K107 ["Thunks"]
      579 GETTABLEKS                       R100 R100 K29 ["AssetConfiguration"]
      581 GETTABLEKS                       R100 R100 K113 ["EditFlowRequest"]
      583 CALL                             R99 1 1
      584 GETIMPORT                        R100 K15 [require]
      586 GETTABLEKS                       R101 R1 K7 ["Src"]
      588 GETTABLEKS                       R101 R101 K107 ["Thunks"]
      590 GETTABLEKS                       R101 R101 K29 ["AssetConfiguration"]
      592 GETTABLEKS                       R101 R101 K114 ["UploadFlowRequest"]
      594 CALL                             R100 1 1
      595 GETIMPORT                        R101 K15 [require]
      597 GETTABLEKS                       R102 R1 K7 ["Src"]
      599 GETTABLEKS                       R102 R102 K107 ["Thunks"]
      601 GETTABLEKS                       R102 R102 K29 ["AssetConfiguration"]
      603 GETTABLEKS                       R102 R102 K115 ["FetchUploadFeeWithMetadataRequest"]
      605 CALL                             R101 1 1
      606 GETIMPORT                        R102 K15 [require]
      608 GETTABLEKS                       R103 R1 K7 ["Src"]
      610 GETTABLEKS                       R103 R103 K116 ["ContextServices"]
      612 GETTABLEKS                       R103 R103 K117 ["IXPContext"]
      614 CALL                             R102 1 1
      615 GETIMPORT                        R103 K15 [require]
      617 GETTABLEKS                       R104 R1 K7 ["Src"]
      619 GETTABLEKS                       R104 R104 K116 ["ContextServices"]
      621 GETTABLEKS                       R104 R104 K118 ["NetworkContext"]
      623 CALL                             R103 1 1
      624 GETIMPORT                        R104 K15 [require]
      626 GETTABLEKS                       R105 R1 K7 ["Src"]
      628 GETTABLEKS                       R105 R105 K116 ["ContextServices"]
      630 GETTABLEKS                       R105 R105 K119 ["PublishServiceContext"]
      632 CALL                             R104 1 1
      633 GETIMPORT                        R105 K15 [require]
      635 GETTABLEKS                       R106 R1 K7 ["Src"]
      637 GETTABLEKS                       R106 R106 K116 ["ContextServices"]
      639 GETTABLEKS                       R106 R106 K120 ["PluginGuiServiceContext"]
      641 CALL                             R105 1 1
      642 GETIMPORT                        R106 K15 [require]
      644 GETTABLEKS                       R107 R1 K7 ["Src"]
      646 GETTABLEKS                       R107 R107 K116 ["ContextServices"]
      648 GETTABLEKS                       R107 R107 K121 ["ContentProviderContext"]
      650 CALL                             R106 1 1
      651 GETIMPORT                        R107 K15 [require]
      653 GETTABLEKS                       R108 R11 K57 ["Framework"]
      655 CALL                             R107 1 1
      656 GETTABLEKS                       R108 R107 K116 ["ContextServices"]
      658 GETTABLEKS                       R109 R108 K122 ["withContext"]
      660 GETTABLEKS                       R110 R107 K123 ["UI"]
      662 GETTABLEKS                       R110 R110 K124 ["LoadingIndicator"]
      664 GETTABLEKS                       R111 R107 K123 ["UI"]
      666 GETTABLEKS                       R111 R111 K125 ["Container"]
      668 GETTABLEKS                       R112 R13 K126 ["PureComponent"]
      670 LOADK                            R114 K127 ["AssetConfig"]
      671 NAMECALL                         R112 R112 K128 ["extend"]
      673 CALL                             R112 2 1
      674 GETIMPORT                        R113 K15 [require]
      676 GETTABLEKS                       R114 R1 K7 ["Src"]
      678 GETTABLEKS                       R114 R114 K129 ["Flags"]
      680 GETTABLEKS                       R114 R114 K130 ["getFFlagToolboxPublishFlowHelpers"]
      682 CALL                             R113 1 1
      683 GETIMPORT                        R114 K15 [require]
      685 GETTABLEKS                       R115 R1 K7 ["Src"]
      687 GETTABLEKS                       R115 R115 K129 ["Flags"]
      689 GETTABLEKS                       R115 R115 K131 ["getFFlagEnableUpdateAvatarItem"]
      691 CALL                             R114 1 1
      692 GETIMPORT                        R115 K15 [require]
      694 GETTABLEKS                       R116 R1 K7 ["Src"]
      696 GETTABLEKS                       R116 R116 K129 ["Flags"]
      698 GETTABLEKS                       R116 R116 K132 ["getFFlagFetchFullVersionHistoryWithVersionNotesV2"]
      700 CALL                             R115 1 1
      701 GETIMPORT                        R116 K15 [require]
      703 GETTABLEKS                       R117 R1 K7 ["Src"]
      705 GETTABLEKS                       R117 R117 K129 ["Flags"]
      707 GETTABLEKS                       R117 R117 K133 ["getFFlagToolboxDynamicUploadFee"]
      709 CALL                             R116 1 1
      710 GETIMPORT                        R117 K15 [require]
      712 GETTABLEKS                       R118 R1 K7 ["Src"]
      714 GETTABLEKS                       R118 R118 K129 ["Flags"]
      716 GETTABLEKS                       R118 R118 K134 ["getFFlagToolboxPublishOnApproval"]
      718 CALL                             R117 1 1
      719 NEWCLOSURE                       R118 P0
      720 CAPTURE                          VAL R37
      721 CAPTURE                          VAL R39
      722 CAPTURE                          VAL R36
      723 CAPTURE                          VAL R6
      724 CAPTURE                          VAL R33
      725 CAPTURE                          VAL R117
      726 CAPTURE                          VAL R113
      727 CAPTURE                          VAL R16
      728 CAPTURE                          VAL R4
      729 CAPTURE                          VAL R5
      730 CAPTURE                          REF R45
      731 CAPTURE                          VAL R9
      732 CAPTURE                          VAL R55
      733 CAPTURE                          VAL R10
      734 CAPTURE                          VAL R24
      735 CAPTURE                          VAL R116
      736 CAPTURE                          VAL R44
      737 CAPTURE                          VAL R8
      738 CAPTURE                          VAL R17
      739 CAPTURE                          VAL R47
      740 CAPTURE                          VAL R48
      741 CAPTURE                          VAL R54
      742 CAPTURE                          VAL R35
      743 SETTABLEKS                       R118 R112 K135 ["init"]
      745 DUPCLOSURE                       R118 K136 [PROTO_67]
      746 SETTABLEKS                       R118 R112 K137 ["attachXButtonCallback"]
      748 DUPCLOSURE                       R118 K138 [PROTO_68]
      749 SETTABLEKS                       R118 R112 K139 ["detachXButtonCallback"]
      751 DUPCLOSURE                       R118 K140 [PROTO_69]
      752 CAPTURE                          VAL R36
      753 SETTABLEKS                       R118 R112 K141 ["isLoading"]
      755 DUPCLOSURE                       R118 K142 [PROTO_70]
      756 CAPTURE                          VAL R16
      757 DUPCLOSURE                       R119 K143 [PROTO_71]
      758 CAPTURE                          VAL R36
      759 CAPTURE                          VAL R55
      760 CAPTURE                          VAL R33
      761 CAPTURE                          VAL R39
      762 CAPTURE                          VAL R3
      763 CAPTURE                          VAL R41
      764 CAPTURE                          VAL R44
      765 CAPTURE                          VAL R16
      766 CAPTURE                          VAL R115
      767 CAPTURE                          VAL R118
      768 CAPTURE                          VAL R37
      769 SETTABLEKS                       R119 R112 K144 ["didUpdate"]
      771 DUPCLOSURE                       R119 K145 [PROTO_72]
      772 CAPTURE                          VAL R50
      773 SETTABLEKS                       R119 R112 K146 ["versionsGetPageRootItems"]
      775 DUPCLOSURE                       R119 K147 [PROTO_75]
      776 CAPTURE                          VAL R85
      777 SETTABLEKS                       R119 R112 K148 ["getDefaultBundleDataSharing"]
      779 DUPCLOSURE                       R119 K149 [PROTO_81]
      780 CAPTURE                          VAL R36
      781 CAPTURE                          VAL R39
      782 CAPTURE                          VAL R16
      783 CAPTURE                          VAL R116
      784 SETTABLEKS                       R119 R112 K150 ["getAssetInformation"]
      786 DUPCLOSURE                       R119 K151 [PROTO_83]
      787 CAPTURE                          VAL R39
      788 CAPTURE                          VAL R7
      789 CAPTURE                          VAL R43
      790 SETTABLEKS                       R119 R112 K152 ["didMount"]
      792 DUPCLOSURE                       R119 K153 [PROTO_84]
      793 SETTABLEKS                       R119 R112 K154 ["willUnmount"]
      795 DUPCLOSURE                       R119 K155 [PROTO_87]
      796 CAPTURE                          VAL R36
      797 CAPTURE                          VAL R55
      798 CAPTURE                          VAL R39
      799 CAPTURE                          VAL R38
      800 CAPTURE                          VAL R34
      801 CAPTURE                          VAL R41
      802 CAPTURE                          VAL R37
      803 CAPTURE                          VAL R117
      804 CAPTURE                          VAL R6
      805 CAPTURE                          VAL R13
      806 CAPTURE                          VAL R32
      807 CAPTURE                          VAL R29
      808 CAPTURE                          VAL R28
      809 CAPTURE                          VAL R20
      810 CAPTURE                          VAL R12
      811 CAPTURE                          VAL R15
      812 CAPTURE                          VAL R111
      813 CAPTURE                          VAL R110
      814 CAPTURE                          VAL R21
      815 CAPTURE                          VAL R116
      816 CAPTURE                          VAL R23
      817 CAPTURE                          VAL R115
      818 CAPTURE                          VAL R25
      819 CAPTURE                          VAL R114
      820 CAPTURE                          VAL R31
      821 CAPTURE                          VAL R30
      822 CAPTURE                          VAL R27
      823 CAPTURE                          VAL R26
      824 CAPTURE                          VAL R22
      825 SETTABLEKS                       R119 R112 K156 ["render"]
      827 MOVE                             R119 R109
      828 DUPTABLE                         R120 K166 [{"Focus", "IXP", "Localization", "Stylizer", "Plugin", "Network", "PublishService", "PluginGuiService", "ContentProvider"}]
      829 GETTABLEKS                       R121 R108 K157 ["Focus"]
      831 SETTABLEKS                       R121 R120 K157 ["Focus"]
      833 JUMPIFNOT                        R5 ; [+2]
      834 MOVE                             R121 R102
      835 JUMP                             ; [+1]
      836 LOADNIL                          R121
      837 SETTABLEKS                       R121 R120 K158 ["IXP"]
      839 GETTABLEKS                       R121 R108 K159 ["Localization"]
      841 SETTABLEKS                       R121 R120 K159 ["Localization"]
      843 GETTABLEKS                       R121 R108 K160 ["Stylizer"]
      845 SETTABLEKS                       R121 R120 K160 ["Stylizer"]
      847 GETTABLEKS                       R121 R108 K161 ["Plugin"]
      849 SETTABLEKS                       R121 R120 K161 ["Plugin"]
      851 SETTABLEKS                       R103 R120 K162 ["Network"]
      853 SETTABLEKS                       R104 R120 K163 ["PublishService"]
      855 SETTABLEKS                       R105 R120 K164 ["PluginGuiService"]
      857 SETTABLEKS                       R106 R120 K165 ["ContentProvider"]
      859 CALL                             R119 1 1
      860 MOVE                             R120 R112
      861 CALL                             R119 1 1
      862 MOVE                             R112 R119
      863 DUPCLOSURE                       R119 K167 [PROTO_88]
      864 CAPTURE                          VAL R54
      865 CAPTURE                          VAL R115
      866 CAPTURE                          VAL R4
      867 CAPTURE                          VAL R5
      868 CAPTURE                          VAL R3
      869 CAPTURE                          VAL R117
      870 CAPTURE                          VAL R116
      871 CAPTURE                          VAL R43
      872 DUPCLOSURE                       R120 K168 [PROTO_133]
      873 CAPTURE                          VAL R59
      874 CAPTURE                          VAL R72
      875 CAPTURE                          VAL R82
      876 CAPTURE                          VAL R51
      877 CAPTURE                          VAL R92
      878 CAPTURE                          VAL R16
      879 CAPTURE                          VAL R113
      880 CAPTURE                          VAL R57
      881 CAPTURE                          VAL R58
      882 CAPTURE                          VAL R62
      883 CAPTURE                          VAL R63
      884 CAPTURE                          VAL R60
      885 CAPTURE                          VAL R61
      886 CAPTURE                          VAL R87
      887 CAPTURE                          VAL R86
      888 CAPTURE                          VAL R36
      889 CAPTURE                          VAL R64
      890 CAPTURE                          VAL R67
      891 CAPTURE                          VAL R73
      892 CAPTURE                          VAL R117
      893 CAPTURE                          VAL R74
      894 CAPTURE                          VAL R89
      895 CAPTURE                          VAL R75
      896 CAPTURE                          VAL R90
      897 CAPTURE                          VAL R116
      898 CAPTURE                          VAL R101
      899 CAPTURE                          VAL R40
      900 CAPTURE                          VAL R81
      901 CAPTURE                          VAL R76
      902 CAPTURE                          VAL R68
      903 CAPTURE                          VAL R88
      904 CAPTURE                          VAL R69
      905 CAPTURE                          VAL R70
      906 CAPTURE                          VAL R71
      907 CAPTURE                          VAL R94
      908 CAPTURE                          VAL R95
      909 CAPTURE                          VAL R96
      910 CAPTURE                          VAL R77
      911 CAPTURE                          VAL R78
      912 CAPTURE                          VAL R91
      913 CAPTURE                          VAL R79
      914 CAPTURE                          VAL R80
      915 CAPTURE                          VAL R83
      916 CAPTURE                          VAL R7
      917 CAPTURE                          VAL R84
      918 CAPTURE                          VAL R93
      919 CAPTURE                          VAL R97
      920 CAPTURE                          VAL R65
      921 CAPTURE                          VAL R66
      922 CAPTURE                          VAL R98
      923 CAPTURE                          VAL R99
      924 CAPTURE                          VAL R100
      925 GETTABLEKS                       R121 R14 K169 ["connect"]
      927 MOVE                             R122 R119
      928 MOVE                             R123 R120
      929 CALL                             R121 2 1
      930 MOVE                             R122 R112
      931 CALL                             R121 1 -1
      932 CLOSEUPVALS                      R45
      933 RETURN                           R121 -1
