PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K2 [{"assetIds"}]
        5 GETIMPORT                        R5 K5 [table.concat]
        7 MOVE                             R6 R0
        8 LOADK                            R7 K6 [","]
        9 CALL                             R5 2 1
       10 SETTABLEKS                       R5 R4 K1 ["assetIds"]
       12 CALL                             R3 1 1
       13 CONCAT                           R1 R2 R3
       14 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R8 0
        1 GETUPVAL                         R9 1
        2 GETTABLEKS                       R9 R9 K0 ["makeQueryString"]
        4 DUPTABLE                         R10 K8 [{"category", "keyword", "num", "page", "sort", "groupId", "creatorId"}]
        5 SETTABLEKS                       R0 R10 K1 ["category"]
        7 SETTABLEKS                       R1 R10 K2 ["keyword"]
        9 SETTABLEKS                       R2 R10 K3 ["num"]
       11 SETTABLEKS                       R3 R10 K4 ["page"]
       13 SETTABLEKS                       R4 R10 K5 ["sort"]
       15 SETTABLEKS                       R5 R10 K6 ["groupId"]
       17 SETTABLEKS                       R6 R10 K7 ["creatorId"]
       19 CALL                             R9 1 1
       20 CONCAT                           R7 R8 R9
       21 RETURN                           R7 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["has"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_3:
        0 GETIMPORT                        R0 K2 [string.format]
        2 LOADK                            R1 K3 ["%s/saves"]
        3 GETUPVAL                         R2 0
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R2 K2 [string.format]
        2 LOADK                            R3 K3 ["%s/saves?targetType=%s&targetId=%d"]
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R0
        6 CALL                             R2 4 -1
        7 RETURN                           R2 -1

PROTO_5:
        0 GETIMPORT                        R2 K2 [string.format]
        2 LOADK                            R3 K3 ["%s/saves?targetType=%s&targetId=%d"]
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R0
        6 CALL                             R2 4 -1
        7 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["categoryName"]
        2 GETTABLEKS                       R2 R0 K1 ["ownerId"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["assign"]
        7 NEWTABLE                         R4 0 0
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K3 ["omit"]
       12 MOVE                             R6 R0
       13 NEWTABLE                         R7 0 5
       15 LOADK                            R8 K0 ["categoryName"]
       16 LOADK                            R9 K4 ["sectionName"]
       17 LOADK                            R10 K1 ["ownerId"]
       18 LOADK                            R11 K5 ["tags"]
       19 LOADK                            R12 K6 ["qualityFilterData"]
       20 SETLIST                          R7 R8 5 [1]
       22 CALL                             R5 2 1
       23 DUPTABLE                         R6 K7 [{"tags"}]
       24 GETTABLEKS                       R8 R0 K5 ["tags"]
       26 JUMPIFNOT                        R8 ; [+8]
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K8 ["join"]
       30 GETTABLEKS                       R8 R0 K5 ["tags"]
       32 LOADK                            R9 K9 [","]
       33 CALL                             R7 2 1
       34 JUMP                             ; [+1]
       35 LOADNIL                          R7
       36 SETTABLEKS                       R7 R6 K5 ["tags"]
       38 DUPTABLE                         R7 K11 [{"placeId"}]
       39 GETTABLEKS                       R9 R0 K4 ["sectionName"]
       41 JUMPIFNOT                        R9 ; [+3]
       42 GETUPVAL                         R8 3
       43 CALL                             R8 0 1
       44 JUMP                             ; [+1]
       45 LOADNIL                          R8
       46 SETTABLEKS                       R8 R7 K10 ["placeId"]
       48 DUPTABLE                         R8 K13 [{"assetsInCameraViewport"}]
       49 GETTABLEKS                       R10 R0 K12 ["assetsInCameraViewport"]
       51 JUMPIFNOT                        R10 ; [+7]
       52 GETIMPORT                        R9 K16 [table.concat]
       54 GETTABLEKS                       R10 R0 K12 ["assetsInCameraViewport"]
       56 LOADK                            R11 K9 [","]
       57 CALL                             R9 2 1
       58 JUMP                             ; [+1]
       59 LOADNIL                          R9
       60 SETTABLEKS                       R9 R8 K12 ["assetsInCameraViewport"]
       62 DUPTABLE                         R9 K18 [{"assetsInCameraVicinity"}]
       63 GETTABLEKS                       R11 R0 K17 ["assetsInCameraVicinity"]
       65 JUMPIFNOT                        R11 ; [+7]
       66 GETIMPORT                        R10 K16 [table.concat]
       68 GETTABLEKS                       R11 R0 K17 ["assetsInCameraVicinity"]
       70 LOADK                            R12 K9 [","]
       71 CALL                             R10 2 1
       72 JUMP                             ; [+1]
       73 LOADNIL                          R10
       74 SETTABLEKS                       R10 R9 K17 ["assetsInCameraVicinity"]
       76 CALL                             R3 6 1
       77 GETUPVAL                         R4 4
       78 GETTABLEKS                       R4 R4 K19 ["getCategoryByName"]
       80 MOVE                             R5 R1
       81 CALL                             R4 1 1
       82 JUMPIF                           R4 ; [+8]
       83 GETIMPORT                        R5 K21 [error]
       85 GETIMPORT                        R6 K24 [string.format]
       87 LOADK                            R7 K25 ["Could not find categoryData for %s"]
       88 MOVE                             R8 R1
       89 CALL                             R6 2 -1
       90 CALL                             R5 -1 0
       91 LOADNIL                          R5
       92 GETTABLEKS                       R6 R0 K4 ["sectionName"]
       94 JUMPIFNOT                        R6 ; [+18]
       95 GETUPVAL                         R7 4
       96 GETTABLEKS                       R7 R7 K26 ["ToolboxAssetTypeToEngine"]
       98 GETTABLEKS                       R8 R4 K27 ["assetType"]
      100 GETTABLE                         R6 R7 R8
      101 GETTABLEKS                       R6 R6 K28 ["Value"]
      103 GETIMPORT                        R7 K24 [string.format]
      105 LOADK                            R8 K29 ["%s/home/%s/section/%s/assets"]
      106 GETUPVAL                         R9 5
      107 MOVE                             R10 R6
      108 GETTABLEKS                       R11 R0 K4 ["sectionName"]
      110 CALL                             R7 4 1
      111 MOVE                             R5 R7
      112 JUMP                             ; [+113]
      113 GETUPVAL                         R6 6
      114 GETTABLEKS                       R6 R6 K30 ["usesMarketplaceRoute"]
      116 GETTABLEKS                       R7 R4 K31 ["name"]
      118 CALL                             R6 1 1
      119 JUMPIFNOT                        R6 ; [+9]
      120 GETIMPORT                        R6 K24 [string.format]
      122 LOADK                            R7 K32 ["%s/marketplace/%d"]
      123 GETUPVAL                         R8 5
      124 GETTABLEKS                       R9 R4 K27 ["assetType"]
      126 CALL                             R6 3 1
      127 MOVE                             R5 R6
      128 JUMP                             ; [+97]
      129 GETUPVAL                         R7 4
      130 GETTABLEKS                       R7 R7 K33 ["API_NAMES"]
      132 GETTABLE                         R6 R7 R1
      133 GETUPVAL                         R8 4
      134 GETTABLEKS                       R8 R8 K34 ["getTabForCategoryName"]
      136 GETTABLEKS                       R9 R4 K31 ["name"]
      138 CALL                             R8 1 1
      139 GETUPVAL                         R9 4
      140 GETTABLEKS                       R9 R9 K35 ["CREATIONS"]
      142 JUMPIFEQ                         R8 R9 ; [+2]
      144 LOADB                            R7 0 +1
      145 LOADB                            R7 1
      146 JUMPIF                           R6 ; [+8]
      147 GETIMPORT                        R8 K21 [error]
      149 GETIMPORT                        R9 K24 [string.format]
      151 LOADK                            R10 K36 ["Could not find API_NAME for %s"]
      152 MOVE                             R11 R1
      153 CALL                             R9 2 -1
      154 CALL                             R8 -1 0
      155 GETTABLEKS                       R8 R4 K37 ["ownershipType"]
      157 GETUPVAL                         R9 4
      158 GETTABLEKS                       R9 R9 K38 ["OwnershipType"]
      160 GETTABLEKS                       R9 R9 K39 ["MY"]
      162 JUMPIFNOTEQ                      R8 R9 ; [+10]
      164 GETIMPORT                        R8 K24 [string.format]
      166 LOADK                            R9 K40 ["%s/inventory/user/%d/%s"]
      167 GETUPVAL                         R10 5
      168 MOVE                             R11 R2
      169 MOVE                             R12 R6
      170 CALL                             R8 4 1
      171 MOVE                             R5 R8
      172 JUMP                             ; [+53]
      173 GETTABLEKS                       R8 R4 K37 ["ownershipType"]
      175 GETUPVAL                         R9 4
      176 GETTABLEKS                       R9 R9 K38 ["OwnershipType"]
      178 GETTABLEKS                       R9 R9 K41 ["GROUP"]
      180 JUMPIFNOTEQ                      R8 R9 ; [+20]
      182 JUMPIFNOT                        R7 ; [+9]
      183 GETIMPORT                        R8 K24 [string.format]
      185 LOADK                            R9 K42 ["%s/creations/group/%d/%s"]
      186 GETUPVAL                         R10 5
      187 MOVE                             R11 R2
      188 MOVE                             R12 R6
      189 CALL                             R8 4 1
      190 MOVE                             R5 R8
      191 JUMP                             ; [+34]
      192 GETIMPORT                        R8 K24 [string.format]
      194 LOADK                            R9 K43 ["%s/inventory/group/%d/%s"]
      195 GETUPVAL                         R10 5
      196 MOVE                             R11 R2
      197 MOVE                             R12 R6
      198 CALL                             R8 4 1
      199 MOVE                             R5 R8
      200 JUMP                             ; [+25]
      201 GETTABLEKS                       R8 R4 K37 ["ownershipType"]
      203 GETUPVAL                         R9 4
      204 GETTABLEKS                       R9 R9 K38 ["OwnershipType"]
      206 GETTABLEKS                       R9 R9 K44 ["RECENT"]
      208 JUMPIFNOTEQ                      R8 R9 ; [+10]
      210 GETIMPORT                        R8 K24 [string.format]
      212 LOADK                            R9 K45 ["%s/recent/user/%d/%s"]
      213 GETUPVAL                         R10 5
      214 MOVE                             R11 R2
      215 MOVE                             R12 R6
      216 CALL                             R8 4 1
      217 MOVE                             R5 R8
      218 JUMP                             ; [+7]
      219 GETIMPORT                        R8 K24 [string.format]
      221 LOADK                            R9 K46 ["%s/%s"]
      222 GETUPVAL                         R10 5
      223 MOVE                             R11 R6
      224 CALL                             R8 3 1
      225 MOVE                             R5 R8
      226 GETTABLEKS                       R6 R3 K47 ["queryParams"]
      228 JUMPIFEQKNIL                     R6 ; [+10]
      230 GETIMPORT                        R6 K49 [pairs]
      232 GETTABLEKS                       R7 R3 K47 ["queryParams"]
      234 CALL                             R6 1 3
      235 FORGPREP_NEXT                    R6
      236 SETTABLE                         R10 R3 R9
      237 FORGLOOP                         R6 2 ; [-2]
      239 GETUPVAL                         R6 7
      240 GETTABLEKS                       R6 R6 K50 ["makeQueryString"]
      242 MOVE                             R7 R3
      243 LOADB                            R8 0
      244 GETUPVAL                         R10 8
      245 CALL                             R10 0 1
      246 JUMPIFNOT                        R10 ; [+2]
      247 LOADB                            R9 0
      248 JUMP                             ; [+1]
      249 LOADB                            R9 1
      250 CALL                             R6 3 1
      251 LENGTH                           R7 R6
      252 LOADN                            R8 0
      253 JUMPIFNOTLT                      R8 R7 ; [+5]
      255 MOVE                             R7 R5
      256 LOADK                            R8 K51 ["?"]
      257 MOVE                             R9 R6
      258 CONCAT                           R5 R7 R9
      259 RETURN                           R5 1

PROTO_7:
        0 GETUPVAL                         R9 0
        1 GETUPVAL                         R10 1
        2 GETTABLEKS                       R10 R10 K0 ["makeQueryString"]
        4 DUPTABLE                         R11 K9 [{"category", "keyword", "num", "page", "sort", "groupId", "creatorType", "creatorId"}]
        5 SETTABLEKS                       R0 R11 K1 ["category"]
        7 SETTABLEKS                       R1 R11 K2 ["keyword"]
        9 SETTABLEKS                       R4 R11 K3 ["num"]
       11 SETTABLEKS                       R5 R11 K4 ["page"]
       13 SETTABLEKS                       R2 R11 K5 ["sort"]
       15 SETTABLEKS                       R6 R11 K6 ["groupId"]
       17 SETTABLEKS                       R7 R11 K7 ["creatorType"]
       19 SETTABLEKS                       R3 R11 K8 ["creatorId"]
       21 CALL                             R10 1 1
       22 CONCAT                           R8 R9 R10
       23 RETURN                           R8 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["makeQueryString"]
        4 DUPTABLE                         R5 K3 [{"action", "targetTypes"}]
        5 SETTABLEKS                       R0 R5 K1 ["action"]
        7 SETTABLEKS                       R1 R5 K2 ["targetTypes"]
        9 CALL                             R4 1 1
       10 CONCAT                           R2 R3 R4
       11 RETURN                           R2 1

PROTO_10:
        0 GETIMPORT                        R8 K2 [string.format]
        2 GETUPVAL                         R9 0
        3 MOVE                             R10 R4
        4 MOVE                             R11 R0
        5 CALL                             R8 3 1
        6 MOVE                             R6 R8
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R7 R7 K3 ["makeQueryString"]
       10 DUPTABLE                         R8 K6 [{"limit", "cursor"}]
       11 SETTABLEKS                       R1 R8 K4 ["limit"]
       13 SETTABLEKS                       R2 R8 K5 ["cursor"]
       15 CALL                             R7 1 1
       16 CONCAT                           R5 R6 R7
       17 RETURN                           R5 1

PROTO_11:
        0 GETIMPORT                        R8 K2 [string.format]
        2 GETUPVAL                         R9 0
        3 MOVE                             R10 R4
        4 MOVE                             R11 R0
        5 CALL                             R8 3 1
        6 MOVE                             R6 R8
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R7 R7 K3 ["makeQueryString"]
       10 DUPTABLE                         R8 K7 [{"limit", "cursor", "separateModelsAndPackages"}]
       11 SETTABLEKS                       R1 R8 K4 ["limit"]
       13 SETTABLEKS                       R2 R8 K5 ["cursor"]
       15 SETTABLEKS                       R3 R8 K6 ["separateModelsAndPackages"]
       17 CALL                             R7 1 1
       18 CONCAT                           R5 R6 R7
       19 RETURN                           R5 1

PROTO_12:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["number"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL1                        ASSERT R3 ; [+2]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 1 0
       13 GETIMPORT                        R2 K8 [Enum.CreatorType.Group]
       15 GETTABLEKS                       R2 R2 K9 ["Value"]
       17 JUMPIFNOTEQ                      R1 R2 ; [+7]
       19 GETUPVAL                         R2 0
       20 MOVE                             R4 R0
       21 NAMECALL                         R2 R2 K10 ["format"]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1
       25 GETIMPORT                        R2 K12 [Enum.CreatorType.User]
       27 GETTABLEKS                       R2 R2 K9 ["Value"]
       29 JUMPIFNOTEQ                      R1 R2 ; [+7]
       31 GETUPVAL                         R2 1
       32 MOVE                             R4 R0
       33 NAMECALL                         R2 R2 K10 ["format"]
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1
       37 GETIMPORT                        R2 K14 [error]
       39 LOADK                            R3 K15 ["Unknown creatorType '%s'"]
       40 MOVE                             R5 R1
       41 NAMECALL                         R3 R3 K10 ["format"]
       43 CALL                             R3 2 -1
       44 CALL                             R2 -1 0
       45 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_16:
        0 LOADK                            R1 K0 ["%s/%s"]
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["format"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["makeQueryString"]
        4 DUPTABLE                         R5 K3 [{"itemType", "itemId"}]
        5 SETTABLEKS                       R0 R5 K1 ["itemType"]
        7 SETTABLEKS                       R1 R5 K2 ["itemId"]
        9 CALL                             R4 1 1
       10 CONCAT                           R2 R3 R4
       11 RETURN                           R2 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_22:
        0 DUPTABLE                         R5 K3 [{"limit", "cursor", "groupId"}]
        1 SETTABLEKS                       R3 R5 K0 ["limit"]
        3 SETTABLEKS                       R2 R5 K1 ["cursor"]
        5 SETTABLEKS                       R4 R5 K2 ["groupId"]
        7 JUMPIFNOT                        R1 ; [+3]
        8 SETTABLEKS                       R0 R5 K4 ["bundleType"]
       10 JUMP                             ; [+2]
       11 SETTABLEKS                       R0 R5 K5 ["assetType"]
       13 GETUPVAL                         R7 0
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R8 R8 K6 ["makeQueryString"]
       17 MOVE                             R9 R5
       18 CALL                             R8 1 1
       19 CONCAT                           R6 R7 R8
       20 RETURN                           R6 1

PROTO_23:
        0 NEWTABLE                         R3 2 0
        2 JUMPIFNOT                        R1 ; [+3]
        3 SETTABLEKS                       R0 R3 K0 ["bundleType"]
        5 JUMP                             ; [+2]
        6 SETTABLEKS                       R0 R3 K1 ["assetType"]
        8 GETUPVAL                         R4 0
        9 CALL                             R4 0 1
       10 JUMPIFNOT                        R4 ; [+13]
       11 JUMPIFNOT                        R2 ; [+12]
       12 MOVE                             R4 R2
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 FORGPREP                         R4
       16 FASTCALL1                        TOSTRING R8 ; [+3]
       17 MOVE                             R10 R8
       18 GETIMPORT                        R9 K3 [tostring]
       20 CALL                             R9 1 1
       21 SETTABLE                         R9 R3 R7
       22 FORGLOOP                         R4 2 ; [-7]
       24 GETUPVAL                         R5 1
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K4 ["makeQueryString"]
       28 MOVE                             R7 R3
       29 CALL                             R6 1 1
       30 CONCAT                           R4 R5 R6
       31 RETURN                           R4 1

PROTO_24:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 GETUPVAL                         R1 0
        3 RETURN                           R1 1
        4 GETUPVAL                         R2 0
        5 LOADK                            R3 K0 ["?"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["makeQueryString"]
        9 DUPTABLE                         R5 K3 [{"groupId"}]
       10 FASTCALL1                        TOSTRING R0 ; [+3]
       11 MOVE                             R7 R0
       12 GETIMPORT                        R6 K5 [tostring]
       14 CALL                             R6 1 1
       15 SETTABLEKS                       R6 R5 K2 ["groupId"]
       17 CALL                             R4 1 1
       18 CONCAT                           R1 R2 R4
       19 RETURN                           R1 1

PROTO_25:
        0 DUPTABLE                         R1 K5 [{[1], ["quantity"] = "0", ["publishingType"] = "NonLimited"}]
        1 SETTABLEKS                       R0 R1 K0 ["assetType"]
        3 GETUPVAL                         R3 0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K6 ["makeQueryString"]
        7 MOVE                             R5 R1
        8 CALL                             R4 1 1
        9 CONCAT                           R2 R3 R4
       10 RETURN                           R2 1

PROTO_26:
        0 DUPTABLE                         R2 K2 [{[1] = "1"}]
        1 JUMPIFNOT                        R1 ; [+3]
        2 SETTABLEKS                       R0 R2 K3 ["bundleType"]
        4 JUMP                             ; [+2]
        5 SETTABLEKS                       R0 R2 K4 ["assetType"]
        7 GETUPVAL                         R4 0
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K5 ["makeQueryString"]
       11 MOVE                             R6 R2
       12 CALL                             R5 1 1
       13 CONCAT                           R3 R4 R5
       14 RETURN                           R3 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K6 [{["assetIds"], ["format"] = "Png", ["size"] = "150x150"}]
        5 SETTABLEKS                       R0 R4 K1 ["assetIds"]
        7 CALL                             R3 1 1
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_33:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["makeQueryString"]
        4 DUPTABLE                         R5 K3 [{"assetId", "assetType"}]
        5 SETTABLEKS                       R0 R5 K1 ["assetId"]
        7 SETTABLEKS                       R1 R5 K2 ["assetType"]
        9 CALL                             R4 1 1
       10 CONCAT                           R2 R3 R4
       11 RETURN                           R2 1

PROTO_34:
        0 GETIMPORT                        R2 K2 [string.format]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADK                            R5 K3 ["true"]
        6 JUMP                             ; [+1]
        7 LOADK                            R5 K4 ["false"]
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1

PROTO_35:
        0 GETIMPORT                        R1 K2 [string.format]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_36:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%s/insert/asset/%d"]
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R0
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_37:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K2 [{"pluginIds"}]
        5 SETTABLEKS                       R0 R4 K1 ["pluginIds"]
        7 CALL                             R3 1 1
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_38:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 GETUPVAL                         R0 1
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 2
        6 RETURN                           R0 1

PROTO_39:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["https://apis.%screator-home-api/v1/groups?surface=%s"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K4 ["DOMAIN"]
        6 MOVE                             R4 R0
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_40:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ASSET_DELIVERY_URL"]
        3 LOADK                            R3 K1 ["v1/asset/?id=%d&permissionContext=ignoreUniverse"]
        4 CONCAT                           R1 R2 R3
        5 MOVE                             R4 R0
        6 NAMECALL                         R2 R1 K2 ["format"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_41:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+18]
        2 FASTCALL1                        TONUMBER R0 ; [+3]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R1 K1 [tonumber]
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+6]
        8 LOADK                            R2 K2 ["rbxassetid://%d"]
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R2 K3 ["format"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1
       14 FASTCALL1                        TOSTRING R0 ; [+3]
       15 MOVE                             R3 R0
       16 GETIMPORT                        R2 K5 [tostring]
       18 CALL                             R2 1 1
       19 RETURN                           R2 1
       20 LOADK                            R1 K2 ["rbxassetid://%d"]
       21 MOVE                             R3 R0
       22 NAMECALL                         R1 R1 K3 ["format"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_42:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K2 [{"id"}]
        5 SETTABLEKS                       R0 R4 K1 ["id"]
        7 CALL                             R3 1 1
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_43:
        0 ORK                              R1 R1 K0 [50]
        1 ORK                              R2 R2 K1 [""]
        2 GETUPVAL                         R3 0
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 NAMECALL                         R3 R3 K2 ["format"]
        8 CALL                             R3 4 -1
        9 RETURN                           R3 -1

PROTO_44:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_45:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_46:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["format"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_47:
        0 GETUPVAL                         R5 0
        1 MOVE                             R7 R0
        2 NAMECALL                         R5 R5 K0 ["format"]
        4 CALL                             R5 2 1
        5 MOVE                             R3 R5
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["makeQueryString"]
        9 DUPTABLE                         R5 K3 [{"assetVersionNumber"}]
       10 SETTABLEKS                       R1 R5 K2 ["assetVersionNumber"]
       12 CALL                             R4 1 1
       13 CONCAT                           R2 R3 R4
       14 RETURN                           R2 1

PROTO_48:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K2 [{"assetIds"}]
        5 SETTABLEKS                       R0 R4 K1 ["assetIds"]
        7 CALL                             R3 1 1
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_49:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R9 1
        2 GETTABLEKS                       R9 R9 K0 ["makeQueryString"]
        4 DUPTABLE                         R10 K3 [{"id", "assetName"}]
        5 SETTABLEKS                       R0 R10 K1 ["id"]
        7 SETTABLEKS                       R3 R10 K2 ["assetName"]
        9 CALL                             R9 1 1
       10 MOVE                             R6 R9
       11 LOADK                            R7 K4 ["#"]
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R8 R8 K0 ["makeQueryString"]
       15 DUPTABLE                         R9 K7 [{"assetTypeId", "isPackage"}]
       16 SETTABLEKS                       R1 R9 K5 ["assetTypeId"]
       18 SETTABLEKS                       R2 R9 K6 ["isPackage"]
       20 CALL                             R8 1 1
       21 CONCAT                           R4 R5 R8
       22 RETURN                           R4 1

PROTO_50:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 JUMPIFNOT                        R5 ; [+2]
        3 LOADK                            R4 K0 ["CreatorContextAsset"]
        4 JUMP                             ; [+1]
        5 LOADK                            R4 K1 ["Asset"]
        6 OR                               R3 R3 R4
        7 LOADK                            R5 K2 ["rbxthumb://type=%s&id=%d&w=%d&h=%d"]
        8 MOVE                             R7 R3
        9 FASTCALL1                        TONUMBER R0 ; [+3]
       10 MOVE                             R10 R0
       11 GETIMPORT                        R9 K5 [tonumber]
       13 CALL                             R9 1 1
       14 ORK                              R8 R9 K3 [0]
       15 MOVE                             R9 R1
       16 MOVE                             R10 R2
       17 NAMECALL                         R5 R5 K6 ["format"]
       19 CALL                             R5 5 -1
       20 RETURN                           R5 -1

PROTO_51:
        0 LOADK                            R3 K0 ["rbxthumb://type=%s&id=%d&w=%d&h=%d"]
        1 MOVE                             R5 R0
        2 FASTCALL1                        TONUMBER R1 ; [+3]
        3 MOVE                             R8 R1
        4 GETIMPORT                        R7 K3 [tonumber]
        6 CALL                             R7 1 1
        7 ORK                              R6 R7 K1 [0]
        8 MOVE                             R7 R2
        9 MOVE                             R8 R2
       10 NAMECALL                         R3 R3 K4 ["format"]
       12 CALL                             R3 5 -1
       13 RETURN                           R3 -1

PROTO_52:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["APIS_URL"]
        3 LOADK                            R3 K1 ["search-api/omni-search?"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["makeQueryString"]
        7 DUPTABLE                         R5 K9 [{["searchQuery"], ["sessionId"], ["pageType"] = "all", ["verticalType"] = "user"}]
        8 SETTABLEKS                       R0 R5 K3 ["searchQuery"]
       10 GETUPVAL                         R6 1
       11 LOADB                            R8 0
       12 NAMECALL                         R6 R6 K10 ["GenerateGUID"]
       14 CALL                             R6 2 1
       15 SETTABLEKS                       R6 R5 K4 ["sessionId"]
       17 CALL                             R4 1 1
       18 CONCAT                           R1 R2 R4
       19 RETURN                           R1 1

PROTO_53:
        0 ORK                              R1 R1 K0 [100]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["makeQueryString"]
        5 DUPTABLE                         R5 K7 [{["userId"], ["width"], ["height"], ["format"] = "png"}]
        6 SETTABLEKS                       R0 R5 K2 ["userId"]
        8 SETTABLEKS                       R1 R5 K3 ["width"]
       10 SETTABLEKS                       R1 R5 K4 ["height"]
       12 CALL                             R4 1 1
       13 CONCAT                           R2 R3 R4
       14 RETURN                           R2 1

PROTO_54:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["/favorites/assets/%d/count"]
        2 MOVE                             R5 R0
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 2 -1
        6 NAMECALL                         R1 R1 K1 ["format"]
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_55:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["/favorites/users/%d/assets/%d/favorite"]
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 3 -1
        7 NAMECALL                         R2 R2 K1 ["format"]
        9 CALL                             R2 -1 -1
       10 RETURN                           R2 -1

PROTO_56:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["/favorites/users/%d/assets/%d/favorite"]
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 3 -1
        7 NAMECALL                         R2 R2 K1 ["format"]
        9 CALL                             R2 -1 -1
       10 RETURN                           R2 -1

PROTO_57:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["/favorites/users/%d/assets/%d/favorite"]
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 3 -1
        7 NAMECALL                         R2 R2 K1 ["format"]
        9 CALL                             R2 -1 -1
       10 RETURN                           R2 -1

PROTO_58:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_59:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_60:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_61:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_62:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_63:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [tostring]
        5 CALL                             R3 1 1
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_64:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_65:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_66:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_67:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_68:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_69:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_70:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_71:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_72:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_73:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_74:
        0 JUMPIFEQKNIL                     R0 ; [+4]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 GETUPVAL                         R2 1
        6 RETURN                           R2 1
        7 GETIMPORT                        R2 K3 [Enum.AssetType.Plugin]
        9 GETTABLEKS                       R2 R2 K4 ["Value"]
       11 JUMPIFNOTEQ                      R1 R2 ; [+7]
       13 GETUPVAL                         R2 2
       14 MOVE                             R4 R0
       15 NAMECALL                         R2 R2 K5 ["format"]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1
       19 GETUPVAL                         R2 3
       20 MOVE                             R4 R0
       21 NAMECALL                         R2 R2 K5 ["format"]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

PROTO_75:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_76:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_77:
        0 GETUPVAL                         R7 0
        1 GETUPVAL                         R8 1
        2 GETTABLEKS                       R8 R8 K0 ["makeQueryString"]
        4 DUPTABLE                         R9 K7 [{"assetid", "type", "name", "description", "isPublic", "format"}]
        5 SETTABLEKS                       R0 R9 K1 ["assetid"]
        7 FASTCALL1                        TOSTRING R1 ; [+3]
        8 MOVE                             R11 R1
        9 GETIMPORT                        R10 K9 [tostring]
       11 CALL                             R10 1 1
       12 SETTABLEKS                       R10 R9 K2 ["type"]
       14 FASTCALL1                        TOSTRING R2 ; [+3]
       15 MOVE                             R11 R2
       16 GETIMPORT                        R10 K9 [tostring]
       18 CALL                             R10 1 1
       19 SETTABLEKS                       R10 R9 K3 ["name"]
       21 FASTCALL1                        TOSTRING R3 ; [+3]
       22 MOVE                             R11 R3
       23 GETIMPORT                        R10 K9 [tostring]
       25 CALL                             R10 1 1
       26 SETTABLEKS                       R10 R9 K4 ["description"]
       28 JUMPIFNOT                        R4 ; [+2]
       29 LOADK                            R10 K10 ["True"]
       30 JUMP                             ; [+1]
       31 LOADK                            R10 K11 ["False"]
       32 SETTABLEKS                       R10 R9 K5 ["isPublic"]
       34 SETTABLEKS                       R5 R9 K6 ["format"]
       36 CALL                             R8 1 1
       37 CONCAT                           R6 R7 R8
       38 RETURN                           R6 1

PROTO_78:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R6 R0 K0 ["Name"]
        3 NAMECALL                         R4 R4 K1 ["format"]
        5 CALL                             R4 2 1
        6 MOVE                             R2 R4
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["makeQueryString"]
       10 NEWTABLE                         R4 2 0
       12 LOADK                            R5 K3 ["Upload"]
       13 SETTABLEKS                       R5 R4 K4 ["requestModel.actionType"]
       15 LOADK                            R5 K5 ["Group"]
       16 SETTABLEKS                       R5 R4 K6 ["requestModel.agentType"]
       18 CALL                             R3 1 1
       19 CONCAT                           R1 R2 R3
       20 RETURN                           R1 1

PROTO_79:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["makeQueryString"]
        4 DUPTABLE                         R6 K4 [{"cat", "limit", "prefix"}]
        5 SETTABLEKS                       R0 R6 K1 ["cat"]
        7 SETTABLEKS                       R2 R6 K2 ["limit"]
        9 SETTABLEKS                       R1 R6 K3 ["prefix"]
       11 CALL                             R5 1 1
       12 CONCAT                           R3 R4 R5
       13 RETURN                           R3 1

PROTO_80:
        0 GETIMPORT                        R5 K2 [string.format]
        2 LOADK                            R6 K3 ["%s/home/%s/configuration?"]
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R8 R0 K4 ["Name"]
        6 CALL                             R5 3 1
        7 MOVE                             R3 R5
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K5 ["makeQueryString"]
       11 DUPTABLE                         R5 K8 [{"locale", "placeId"}]
       12 SETTABLEKS                       R1 R5 K6 ["locale"]
       14 GETUPVAL                         R6 2
       15 CALL                             R6 0 1
       16 SETTABLEKS                       R6 R5 K7 ["placeId"]
       18 CALL                             R4 1 1
       19 CONCAT                           R2 R3 R4
       20 RETURN                           R2 1

PROTO_81:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 GETTABLEKS                       R6 R6 K0 ["makeQueryString"]
        4 DUPTABLE                         R7 K5 [{"assetId", "assetType", "assetSubTypes", "marketplaceType"}]
        5 SETTABLEKS                       R0 R7 K1 ["assetId"]
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R8 R1 K6 ["Name"]
       10 JUMP                             ; [+1]
       11 LOADNIL                          R8
       12 SETTABLEKS                       R8 R7 K2 ["assetType"]
       14 SETTABLEKS                       R2 R7 K3 ["assetSubTypes"]
       16 SETTABLEKS                       R3 R7 K4 ["marketplaceType"]
       18 CALL                             R6 1 1
       19 CONCAT                           R4 R5 R6
       20 RETURN                           R4 1

PROTO_82:
        0 GETIMPORT                        R2 K2 [string.format]
        2 LOADK                            R3 K3 ["%s/v1/asset-quotas?%s"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K4 ["PUBLISH_URL"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K5 ["makeQueryString"]
        9 DUPTABLE                         R6 K8 [{"assetType", "resourceType"}]
       10 GETTABLEKS                       R7 R0 K9 ["Name"]
       12 SETTABLEKS                       R7 R6 K6 ["assetType"]
       14 SETTABLEKS                       R1 R6 K7 ["resourceType"]
       16 CALL                             R5 1 -1
       17 CALL                             R2 -1 -1
       18 RETURN                           R2 -1

PROTO_83:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_84:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["format"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_85:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_86:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_87:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+16]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["getCreatorDashboardBaseUrl"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["getCreatorDashboardCatalogConfigUrlExtension"]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 JUMPIFNOT                        R1 ; [+6]
       12 JUMPIFNOT                        R2 ; [+5]
       13 MOVE                             R5 R1
       14 MOVE                             R6 R2
       15 CONCAT                           R4 R5 R6
       16 ORK                              R3 R4 K2 [""]
       17 RETURN                           R3 1
       18 LOADK                            R1 K2 [""]
       19 RETURN                           R1 1

PROTO_88:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+5]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["getCreatorDashboardBaseUrl"]
        5 CALL                             R1 0 1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R1
        8 GETUPVAL                         R3 1
        9 JUMPIFNOT                        R3 ; [+6]
       10 GETUPVAL                         R2 1
       11 MOVE                             R4 R0
       12 NAMECALL                         R2 R2 K1 ["format"]
       14 CALL                             R2 2 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R2
       17 JUMPIFNOT                        R1 ; [+6]
       18 JUMPIFNOT                        R2 ; [+5]
       19 MOVE                             R5 R1
       20 MOVE                             R6 R2
       21 CONCAT                           R4 R5 R6
       22 ORK                              R3 R4 K2 [""]
       23 RETURN                           R3 1
       24 LOADK                            R3 K2 [""]
       25 RETURN                           R3 1

PROTO_89:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["getCreatorDashboardBaseUrl"]
        5 CALL                             R0 0 1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R0
        8 GETUPVAL                         R2 1
        9 JUMPIFNOT                        R2 ; [+2]
       10 GETUPVAL                         R1 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R1
       13 JUMPIFNOT                        R0 ; [+6]
       14 JUMPIFNOT                        R1 ; [+5]
       15 MOVE                             R4 R0
       16 MOVE                             R5 R1
       17 CONCAT                           R3 R4 R5
       18 ORK                              R2 R3 K1 [""]
       19 RETURN                           R2 1
       20 LOADK                            R2 K1 [""]
       21 RETURN                           R2 1

PROTO_90:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getCreatorDashboardBaseUrl"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+5]
        5 MOVE                             R3 R0
        6 LOADK                            R4 K2 ["/creations"]
        7 CONCAT                           R2 R3 R4
        8 ORK                              R1 R2 K1 [""]
        9 RETURN                           R1 1
       10 LOADK                            R1 K1 [""]
       11 RETURN                           R1 1

PROTO_91:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+20]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["getCreatorDashboardBaseUrl"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R3 1
        7 JUMPIFNOT                        R3 ; [+6]
        8 GETUPVAL                         R2 1
        9 MOVE                             R4 R0
       10 NAMECALL                         R2 R2 K1 ["format"]
       12 CALL                             R2 2 1
       13 JUMP                             ; [+1]
       14 LOADNIL                          R2
       15 JUMPIFNOT                        R1 ; [+6]
       16 JUMPIFNOT                        R2 ; [+5]
       17 MOVE                             R5 R1
       18 MOVE                             R6 R2
       19 CONCAT                           R4 R5 R6
       20 ORK                              R3 R4 K2 [""]
       21 RETURN                           R3 1
       22 LOADK                            R1 K2 [""]
       23 RETURN                           R1 1

PROTO_92:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+15]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["getCreatorDashboardBaseUrl"]
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+10]
        7 JUMPIFNOT                        R0 ; [+9]
        8 MOVE                             R4 R1
        9 LOADK                            R5 K2 ["/creations/store/%d/configure"]
       10 MOVE                             R7 R0
       11 NAMECALL                         R5 R5 K3 ["format"]
       13 CALL                             R5 2 1
       14 CONCAT                           R3 R4 R5
       15 ORK                              R2 R3 K1 [""]
       16 RETURN                           R2 1
       17 LOADK                            R1 K1 [""]
       18 RETURN                           R1 1

PROTO_93:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_94:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["AssetInfo"]
        3 NAMECALL                         R1 R1 K1 ["format"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_95:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["convertAssetTypeToProductType"]
        4 GETTABLEKS                       R5 R1 K1 ["Value"]
        6 CALL                             R4 1 1
        7 MOVE                             R5 R0
        8 NAMECALL                         R2 R2 K2 ["format"]
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

PROTO_96:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K2 [{"action"}]
        5 SETTABLEKS                       R0 R4 K1 ["action"]
        7 CALL                             R3 1 1
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_97:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R1 1
        3 NEWTABLE                         R2 8 0
        5 GETIMPORT                        R3 K3 [Enum.AssetType.Model]
        7 LOADK                            R4 K4 ["models"]
        8 SETTABLE                         R4 R2 R3
        9 GETIMPORT                        R3 K6 [Enum.AssetType.Plugin]
       11 LOADK                            R4 K7 ["plugins"]
       12 SETTABLE                         R4 R2 R3
       13 GETIMPORT                        R3 K9 [Enum.AssetType.Audio]
       15 LOADK                            R4 K10 ["audio"]
       16 SETTABLE                         R4 R2 R3
       17 GETIMPORT                        R3 K12 [Enum.AssetType.FontFamily]
       19 LOADK                            R4 K13 ["fonts"]
       20 SETTABLE                         R4 R2 R3
       21 GETIMPORT                        R3 K15 [Enum.AssetType.Decal]
       23 LOADK                            R4 K16 ["decals"]
       24 SETTABLE                         R4 R2 R3
       25 GETIMPORT                        R3 K18 [Enum.AssetType.MeshPart]
       27 LOADK                            R4 K19 ["meshparts"]
       28 SETTABLE                         R4 R2 R3
       29 GETIMPORT                        R3 K21 [Enum.AssetType.Video]
       31 LOADK                            R4 K22 ["videos"]
       32 SETTABLE                         R4 R2 R3
       33 MOVE                             R4 R1
       34 GETTABLE                         R5 R2 R0
       35 CONCAT                           R3 R4 R5
       36 RETURN                           R3 1

PROTO_98:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [game]
       13 LOADK                            R4 K8 ["HttpService"]
       14 NAMECALL                         R2 R2 K9 ["GetService"]
       16 CALL                             R2 2 1
       17 GETIMPORT                        R3 K7 [game]
       19 LOADK                            R5 K10 ["DisableSalesPageForAvatarCreations2"]
       20 NAMECALL                         R3 R3 K11 ["GetFastFlag"]
       22 CALL                             R3 2 1
       23 GETIMPORT                        R4 K7 [game]
       25 LOADK                            R6 K12 ["UpdateAssetUploadResultBundleConfigureLink2"]
       26 NAMECALL                         R4 R4 K11 ["GetFastFlag"]
       28 CALL                             R4 2 1
       29 GETIMPORT                        R5 K7 [game]
       31 LOADK                            R7 K13 ["ChangeAvatarAssetCreatorDashboardLink"]
       32 NAMECALL                         R5 R5 K11 ["GetFastFlag"]
       34 CALL                             R5 2 1
       35 GETIMPORT                        R6 K15 [require]
       37 GETTABLEKS                       R7 R0 K4 ["Src"]
       39 GETTABLEKS                       R7 R7 K5 ["Util"]
       41 GETTABLEKS                       R7 R7 K16 ["SharedFlags"]
       43 GETTABLEKS                       R7 R7 K17 ["getFFlagToolboxEnableAssetRows"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K15 [require]
       48 GETTABLEKS                       R8 R0 K4 ["Src"]
       50 GETTABLEKS                       R8 R8 K18 ["Flags"]
       52 GETTABLEKS                       R8 R8 K19 ["getFFlagToolboxPublishOnApproval"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K15 [require]
       57 GETTABLEKS                       R9 R0 K4 ["Src"]
       59 GETTABLEKS                       R9 R9 K5 ["Util"]
       61 GETTABLEKS                       R9 R9 K16 ["SharedFlags"]
       63 GETTABLEKS                       R9 R9 K20 ["getFFlagToolboxCodeUnderstandingSummary"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K7 [game]
       68 LOADK                            R11 K21 ["ToolboxVideoTestUseLocalAudioFile"]
       69 NAMECALL                         R9 R9 K11 ["GetFastFlag"]
       71 CALL                             R9 2 1
       72 GETIMPORT                        R10 K15 [require]
       74 GETTABLEKS                       R11 R1 K16 ["SharedFlags"]
       76 GETTABLEKS                       R11 R11 K22 ["getFFlagToolboxRemoveRobuxProductEntirely"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K15 [require]
       81 GETTABLEKS                       R12 R0 K4 ["Src"]
       83 GETTABLEKS                       R12 R12 K5 ["Util"]
       85 GETTABLEKS                       R12 R12 K16 ["SharedFlags"]
       87 GETTABLEKS                       R12 R12 K23 ["getFFlagToolboxAssetConfigOnboardingLink"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K15 [require]
       92 GETTABLEKS                       R13 R1 K16 ["SharedFlags"]
       94 GETTABLEKS                       R13 R13 K24 ["getFFlagToolboxCreatorContextThumbnail"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K15 [require]
       99 GETTABLEKS                       R14 R0 K4 ["Src"]
      101 GETTABLEKS                       R14 R14 K18 ["Flags"]
      103 GETTABLEKS                       R14 R14 K25 ["getFFlagToolboxDynamicUploadFee"]
      105 CALL                             R13 1 1
      106 GETIMPORT                        R14 K15 [require]
      108 GETTABLEKS                       R15 R0 K4 ["Src"]
      110 GETTABLEKS                       R15 R15 K18 ["Flags"]
      112 GETTABLEKS                       R15 R15 K26 ["getFFlagEnableUpdateAvatarItem"]
      114 CALL                             R14 1 1
      115 GETIMPORT                        R15 K15 [require]
      117 GETTABLEKS                       R16 R0 K4 ["Src"]
      119 GETTABLEKS                       R16 R16 K5 ["Util"]
      121 GETTABLEKS                       R16 R16 K16 ["SharedFlags"]
      123 GETTABLEKS                       R16 R16 K27 ["getFFlagUseGroupsUserCanCreateAssetsForInsteadOfCanManage"]
      125 CALL                             R15 1 1
      126 GETTABLEKS                       R16 R0 K28 ["Packages"]
      128 GETIMPORT                        R17 K15 [require]
      130 GETTABLEKS                       R18 R16 K29 ["Framework"]
      132 CALL                             R17 1 1
      133 GETIMPORT                        R18 K15 [require]
      135 GETTABLEKS                       R19 R16 K30 ["Dash"]
      137 CALL                             R18 1 1
      138 GETIMPORT                        R19 K15 [require]
      140 GETTABLEKS                       R20 R16 K31 ["LuauPolyfill"]
      142 CALL                             R19 1 1
      143 GETTABLEKS                       R20 R19 K32 ["Set"]
      145 GETTABLEKS                       R21 R19 K33 ["Object"]
      147 GETTABLEKS                       R22 R19 K34 ["Array"]
      149 GETIMPORT                        R23 K15 [require]
      151 GETTABLEKS                       R24 R0 K4 ["Src"]
      153 GETTABLEKS                       R24 R24 K35 ["Types"]
      155 GETTABLEKS                       R24 R24 K36 ["AssetQuotaTypes"]
      157 CALL                             R23 1 1
      158 GETIMPORT                        R24 K15 [require]
      160 GETTABLEKS                       R25 R0 K4 ["Src"]
      162 GETTABLEKS                       R25 R25 K35 ["Types"]
      164 GETTABLEKS                       R25 R25 K37 ["AssetSubTypes"]
      166 CALL                             R24 1 1
      167 GETIMPORT                        R25 K15 [require]
      169 GETTABLEKS                       R26 R0 K4 ["Src"]
      171 GETTABLEKS                       R26 R26 K35 ["Types"]
      173 GETTABLEKS                       R26 R26 K38 ["HomeTypes"]
      175 CALL                             R25 1 1
      176 GETIMPORT                        R26 K15 [require]
      178 GETTABLEKS                       R27 R0 K4 ["Src"]
      180 GETTABLEKS                       R27 R27 K35 ["Types"]
      182 GETTABLEKS                       R27 R27 K39 ["Category"]
      184 CALL                             R26 1 1
      185 GETIMPORT                        R27 K15 [require]
      187 GETTABLEKS                       R28 R0 K40 ["Libs"]
      189 GETTABLEKS                       R28 R28 K41 ["Http"]
      191 GETTABLEKS                       R28 R28 K42 ["Url"]
      193 CALL                             R27 1 1
      194 GETIMPORT                        R28 K15 [require]
      196 GETTABLEKS                       R29 R0 K4 ["Src"]
      198 GETTABLEKS                       R29 R29 K5 ["Util"]
      200 GETTABLEKS                       R29 R29 K43 ["ToolboxUtilities"]
      202 CALL                             R28 1 1
      203 GETIMPORT                        R29 K15 [require]
      205 GETTABLEKS                       R30 R1 K44 ["FiatUtil"]
      207 CALL                             R29 1 1
      208 GETIMPORT                        R30 K15 [require]
      210 GETTABLEKS                       R31 R1 K45 ["getPlaceId"]
      212 CALL                             R30 1 1
      213 GETIMPORT                        R31 K15 [require]
      215 GETTABLEKS                       R32 R1 K46 ["wrapStrictTable"]
      217 CALL                             R31 1 1
      218 NEWTABLE                         R32 128 0
      220 GETTABLEKS                       R34 R27 K47 ["CREATE_URL"]
      222 LOADK                            R35 K48 ["store/"]
      223 CONCAT                           R33 R34 R35
      224 GETTABLEKS                       R35 R27 K49 ["ITEM_CONFIGURATION_URL"]
      226 LOADK                            R36 K50 ["v1/permissions/item-types?"]
      227 CONCAT                           R34 R35 R36
      228 GETTABLEKS                       R36 R27 K51 ["APIS_URL"]
      230 LOADK                            R37 K52 ["assets/user-auth/v1/assets/%d"]
      231 CONCAT                           R35 R36 R37
      232 GETTABLEKS                       R37 R27 K53 ["BASE_URL"]
      234 LOADK                            R38 K54 ["IDE/Toolbox/Items?"]
      235 CONCAT                           R36 R37 R38
      236 GETTABLEKS                       R38 R27 K55 ["DEVELOP_URL"]
      238 LOADK                            R39 K56 ["v1/toolbox/items?"]
      239 CONCAT                           R37 R38 R39
      240 GETTABLEKS                       R39 R27 K49 ["ITEM_CONFIGURATION_URL"]
      242 LOADK                            R40 K57 ["v1/creations/get-assets?"]
      243 CONCAT                           R38 R39 R40
      244 GETTABLEKS                       R40 R27 K58 ["USERS_URL"]
      246 LOADK                            R41 K59 ["/v1/users/%d"]
      247 CONCAT                           R39 R40 R41
      248 GETTABLEKS                       R41 R27 K60 ["GROUP_URL"]
      250 LOADK                            R42 K61 ["v0/groups/%d"]
      251 CONCAT                           R40 R41 R42
      252 GETTABLEKS                       R42 R27 K62 ["PUBLISH_URL"]
      254 LOADK                            R43 K63 ["v1/assets/upload"]
      255 CONCAT                           R41 R42 R43
      256 GETTABLEKS                       R43 R27 K62 ["PUBLISH_URL"]
      258 LOADK                            R44 K64 ["v1/assets/%d/thumbnail"]
      259 CONCAT                           R42 R43 R44
      260 GETTABLEKS                       R44 R27 K55 ["DEVELOP_URL"]
      262 LOADK                            R45 K65 ["v1/assets/%d"]
      263 CONCAT                           R43 R44 R45
      264 GETTABLEKS                       R45 R27 K49 ["ITEM_CONFIGURATION_URL"]
      266 LOADK                            R46 K66 ["v1/assets/%d/release"]
      267 CONCAT                           R44 R45 R46
      268 GETTABLEKS                       R46 R27 K49 ["ITEM_CONFIGURATION_URL"]
      270 LOADK                            R47 K67 ["v1/assets/%d/update-price"]
      271 CONCAT                           R45 R46 R47
      272 GETTABLEKS                       R47 R27 K68 ["THUMBNAIL_URL"]
      274 LOADK                            R48 K69 ["v1/assets?"]
      275 CONCAT                           R46 R47 R48
      276 GETTABLEKS                       R48 R27 K49 ["ITEM_CONFIGURATION_URL"]
      278 LOADK                            R49 K70 ["v1/items/by-creator?"]
      279 CONCAT                           R47 R48 R49
      280 GETTABLEKS                       R49 R27 K49 ["ITEM_CONFIGURATION_URL"]
      282 LOADK                            R50 K71 ["v1/items?"]
      283 CONCAT                           R48 R49 R50
      284 GETTABLEKS                       R50 R27 K49 ["ITEM_CONFIGURATION_URL"]
      286 LOADK                            R51 K72 ["v1/items/upload-fee?"]
      287 CONCAT                           R49 R50 R51
      288 GETTABLEKS                       R51 R27 K49 ["ITEM_CONFIGURATION_URL"]
      290 LOADK                            R52 K73 ["v1/preferences/publishing"]
      291 CONCAT                           R50 R51 R52
      292 GETTABLEKS                       R52 R27 K49 ["ITEM_CONFIGURATION_URL"]
      294 LOADK                            R53 K74 ["v1/collectibles/publishing-fees/preview?"]
      295 CONCAT                           R51 R52 R53
      296 MOVE                             R53 R13
      297 CALL                             R53 0 1
      298 JUMPIFNOT                        R53 ; [+5]
      299 GETTABLEKS                       R53 R27 K49 ["ITEM_CONFIGURATION_URL"]
      301 LOADK                            R54 K75 ["v1/permissions/action-allowed-for-item-type?"]
      302 CONCAT                           R52 R53 R54
      303 JUMP                             ; [+1]
      304 LOADNIL                          R52
      305 GETTABLEKS                       R54 R27 K49 ["ITEM_CONFIGURATION_URL"]
      307 LOADK                            R55 K76 ["v1/bundles/metadata"]
      308 CONCAT                           R53 R54 R55
      309 GETTABLEKS                       R55 R27 K49 ["ITEM_CONFIGURATION_URL"]
      311 LOADK                            R56 K77 ["v1/bundles/create-context"]
      312 CONCAT                           R54 R55 R56
      313 MOVE                             R56 R14
      314 CALL                             R56 0 1
      315 JUMPIFNOT                        R56 ; [+5]
      316 GETTABLEKS                       R56 R27 K49 ["ITEM_CONFIGURATION_URL"]
      318 LOADK                            R57 K78 ["v1/avatar-item-updates/create-context"]
      319 CONCAT                           R55 R56 R57
      320 JUMP                             ; [+1]
      321 LOADNIL                          R55
      322 GETTABLEKS                       R57 R27 K49 ["ITEM_CONFIGURATION_URL"]
      324 LOADK                            R58 K79 ["v1/bundles"]
      325 CONCAT                           R56 R57 R58
      326 GETTABLEKS                       R58 R27 K49 ["ITEM_CONFIGURATION_URL"]
      328 LOADK                            R59 K80 ["v1/bundles/status"]
      329 CONCAT                           R57 R58 R59
      330 GETTABLEKS                       R59 R27 K51 ["APIS_URL"]
      332 LOADK                            R60 K81 ["resource-settings/v1/preferences:batchGet?preferenceTypes=AvatarBundles"]
      333 CONCAT                           R58 R59 R60
      334 GETTABLEKS                       R60 R27 K51 ["APIS_URL"]
      336 LOADK                            R61 K82 ["resource-settings/v1/bundles"]
      337 CONCAT                           R59 R60 R61
      338 GETTABLEKS                       R61 R27 K51 ["APIS_URL"]
      340 LOADK                            R62 K83 ["resource-settings/v1/avatar-assets"]
      341 CONCAT                           R60 R61 R62
      342 GETTABLEKS                       R62 R27 K53 ["BASE_URL"]
      344 LOADK                            R63 K84 ["voting/vote?assetId=%s&vote=%s"]
      345 CONCAT                           R61 R62 R63
      346 GETTABLEKS                       R63 R27 K51 ["APIS_URL"]
      348 LOADK                            R64 K85 ["voting-api/vote/asset/%s?vote=%s"]
      349 CONCAT                           R62 R63 R64
      350 GETTABLEKS                       R64 R27 K51 ["APIS_URL"]
      352 LOADK                            R65 K86 ["voting-api/vote/asset/%s"]
      353 CONCAT                           R63 R64 R65
      354 GETTABLEKS                       R65 R27 K53 ["BASE_URL"]
      356 LOADK                            R66 K87 ["IDE/Toolbox/InsertAsset?"]
      357 CONCAT                           R64 R65 R66
      358 GETTABLEKS                       R66 R27 K55 ["DEVELOP_URL"]
      360 LOADK                            R67 K88 ["v1/user/groups/canmanage"]
      361 CONCAT                           R65 R66 R67
      362 GETTABLEKS                       R67 R27 K51 ["APIS_URL"]
      364 LOADK                            R68 K89 ["orgs/v2/groups/permissions/createassets"]
      365 CONCAT                           R66 R67 R68
      366 GETTABLEKS                       R68 R27 K51 ["APIS_URL"]
      368 LOADK                            R69 K90 ["studio-plugin-api/v1/plugins?"]
      369 CONCAT                           R67 R68 R69
      370 GETTABLEKS                       R69 R27 K53 ["BASE_URL"]
      372 LOADK                            R70 K91 ["asset/?"]
      373 CONCAT                           R68 R69 R70
      374 GETTABLEKS                       R70 R27 K92 ["GAME_ASSET_URL"]
      376 LOADK                            R71 K91 ["asset/?"]
      377 CONCAT                           R69 R70 R71
      378 GETTABLEKS                       R71 R27 K92 ["GAME_ASSET_URL"]
      380 LOADK                            R72 K93 ["asset-thumbnail/image?"]
      381 CONCAT                           R70 R71 R72
      382 GETTABLEKS                       R72 R27 K53 ["BASE_URL"]
      384 LOADK                            R73 K94 ["headshot-thumbnail/image?"]
      385 CONCAT                           R71 R72 R73
      386 GETTABLEKS                       R73 R27 K95 ["CATALOG_URL"]
      388 LOADK                            R74 K96 ["v1%s"]
      389 CONCAT                           R72 R73 R74
      390 GETTABLEKS                       R74 R27 K55 ["DEVELOP_URL"]
      392 LOADK                            R75 K97 ["v1/assets/%s/saved-versions?limit=%s&cursor=%s"]
      393 CONCAT                           R73 R74 R75
      394 GETTABLEKS                       R75 R27 K55 ["DEVELOP_URL"]
      396 LOADK                            R76 K98 ["v1/assets/%s/saved-versions?limit=%s"]
      397 CONCAT                           R74 R75 R76
      398 GETTABLEKS                       R76 R27 K55 ["DEVELOP_URL"]
      400 LOADK                            R77 K99 ["v1/assets/%s/saved-versions?cursor=%s"]
      401 CONCAT                           R75 R76 R77
      402 GETTABLEKS                       R77 R27 K55 ["DEVELOP_URL"]
      404 LOADK                            R78 K100 ["v1/assets/%s/revert-version?"]
      405 CONCAT                           R76 R77 R78
      406 GETTABLEKS                       R78 R27 K55 ["DEVELOP_URL"]
      408 LOADK                            R79 K69 ["v1/assets?"]
      409 CONCAT                           R77 R78 R79
      410 GETTABLEKS                       R79 R27 K51 ["APIS_URL"]
      412 LOADK                            R80 K101 ["packages-api/v1/packages/assets/versions/notes/get"]
      413 CONCAT                           R78 R79 R80
      414 GETTABLEKS                       R80 R27 K51 ["APIS_URL"]
      416 LOADK                            R81 K102 ["packages-api/v1/packages/assets/%s/versions/notes"]
      417 CONCAT                           R79 R80 R81
      418 GETTABLEKS                       R81 R27 K51 ["APIS_URL"]
      420 LOADK                            R82 K103 ["packages-api/v1/packages/version-note/%s/versions/%s"]
      421 CONCAT                           R80 R81 R82
      422 GETTABLEKS                       R82 R27 K51 ["APIS_URL"]
      424 LOADK                            R83 K104 ["assets/user-auth/v1/operations/%s"]
      425 CONCAT                           R81 R82 R83
      426 GETTABLEKS                       R83 R27 K51 ["APIS_URL"]
      428 LOADK                            R84 K105 ["assets/user-auth/v1/assets"]
      429 CONCAT                           R82 R83 R84
      430 GETTABLEKS                       R84 R27 K51 ["APIS_URL"]
      432 LOADK                            R85 K106 ["assets/user-auth/v1/assets/%s"]
      433 CONCAT                           R83 R84 R85
      434 GETTABLEKS                       R85 R27 K51 ["APIS_URL"]
      436 LOADK                            R86 K106 ["assets/user-auth/v1/assets/%s"]
      437 CONCAT                           R84 R85 R86
      438 GETTABLEKS                       R86 R27 K55 ["DEVELOP_URL"]
      440 LOADK                            R87 K107 ["v1/assets/%s?"]
      441 CONCAT                           R85 R86 R87
      442 GETTABLEKS                       R87 R27 K108 ["DATA_URL"]
      444 LOADK                            R88 K109 ["Data/Upload.ashx?"]
      445 CONCAT                           R86 R87 R88
      446 GETTABLEKS                       R88 R27 K60 ["GROUP_URL"]
      448 LOADK                            R89 K110 ["v2/users/%%20%%20%s/groups/roles"]
      449 CONCAT                           R87 R88 R89
      450 GETTABLEKS                       R89 R27 K55 ["DEVELOP_URL"]
      452 LOADK                            R90 K111 ["v1/user/is-verified-creator"]
      453 CONCAT                           R88 R89 R90
      454 GETTABLEKS                       R90 R27 K60 ["GROUP_URL"]
      456 LOADK                            R91 K112 ["v1/groups/%s/roles"]
      457 CONCAT                           R89 R90 R91
      458 GETTABLEKS                       R91 R27 K113 ["FRIENDS_URL"]
      460 LOADK                            R92 K114 ["v1/users/%d/friends"]
      461 CONCAT                           R90 R91 R92
      462 GETTABLEKS                       R92 R27 K53 ["BASE_URL"]
      464 LOADK                            R93 K115 ["upgrades/robux"]
      465 CONCAT                           R91 R92 R93
      466 GETTABLEKS                       R93 R27 K116 ["ECONOMY_URL"]
      468 LOADK                            R94 K117 ["v1/users/%d/currency"]
      469 CONCAT                           R92 R93 R94
      470 GETTABLEKS                       R94 R27 K55 ["DEVELOP_URL"]
      472 LOADK                            R95 K118 ["v1/user/%d/canmanage/%d"]
      473 CONCAT                           R93 R94 R95
      474 GETTABLEKS                       R95 R27 K116 ["ECONOMY_URL"]
      476 LOADK                            R96 K119 ["/v1/purchases/products/%d"]
      477 CONCAT                           R94 R95 R96
      478 GETTABLEKS                       R96 R27 K51 ["APIS_URL"]
      480 LOADK                            R97 K120 ["creator-marketplace-purchasing-service/v1/products/%d/purchase"]
      481 CONCAT                           R95 R96 R97
      482 GETTABLEKS                       R97 R27 K51 ["APIS_URL"]
      484 LOADK                            R98 K121 ["marketplace-fiat-service/v1/product/purchase"]
      485 CONCAT                           R96 R97 R98
      486 GETTABLEKS                       R98 R27 K51 ["APIS_URL"]
      488 LOADK                            R99 K122 ["marketplace-fiat-service/v1/purchaser/status"]
      489 CONCAT                           R97 R98 R99
      490 MOVE                             R99 R11
      491 CALL                             R99 0 1
      492 JUMPIFNOT                        R99 ; [+5]
      493 GETTABLEKS                       R99 R27 K51 ["APIS_URL"]
      495 LOADK                            R100 K123 ["marketplace-fiat-service/v1/seller/status"]
      496 CONCAT                           R98 R99 R100
      497 JUMP                             ; [+1]
      498 LOADNIL                          R98
      499 JUMPIFNOT                        R5 ; [+2]
      500 LOADK                            R99 K124 ["/creations/catalog/%d/configure"]
      501 JUMP                             ; [+1]
      502 LOADK                            R99 K125 ["/creations?activeTab=TShirt"]
      503 JUMPIFNOT                        R4 ; [+2]
      504 LOADK                            R100 K126 ["/creations/bundle/%d/configure"]
      505 JUMP                             ; [+1]
      506 LOADNIL                          R100
      507 GETTABLEKS                       R102 R27 K51 ["APIS_URL"]
      509 LOADK                            R103 K127 ["packages-api/v1/packages/assets/versions/metadata/get"]
      510 CONCAT                           R101 R102 R103
      511 GETTABLEKS                       R103 R27 K51 ["APIS_URL"]
      513 LOADK                            R104 K128 ["asset-permissions-api/v1/assets/%s/permissions"]
      514 CONCAT                           R102 R103 R104
      515 GETTABLEKS                       R104 R27 K51 ["APIS_URL"]
      517 LOADK                            R105 K129 ["asset-permissions-api/v1/assets/check-actions"]
      518 CONCAT                           R103 R104 R105
      519 GETTABLEKS                       R105 R27 K51 ["APIS_URL"]
      521 LOADK                            R106 K130 ["asset-permissions-api/v1/assets/check-permissions"]
      522 CONCAT                           R104 R105 R106
      523 GETTABLEKS                       R106 R27 K51 ["APIS_URL"]
      525 LOADK                            R107 K131 ["asset-permissions-api/v1/assets/permissions"]
      526 CONCAT                           R105 R106 R107
      527 GETTABLEKS                       R107 R27 K51 ["APIS_URL"]
      529 LOADK                            R108 K132 ["toolbox-service/v1"]
      530 CONCAT                           R106 R107 R108
      531 GETTABLEKS                       R108 R27 K51 ["APIS_URL"]
      533 LOADK                            R109 K133 ["toolbox-service/v1/%s?"]
      534 CONCAT                           R107 R108 R109
      535 GETTABLEKS                       R109 R27 K51 ["APIS_URL"]
      537 LOADK                            R110 K134 ["toolbox-service/v1/items/details?"]
      538 CONCAT                           R108 R109 R110
      539 GETTABLEKS                       R110 R27 K51 ["APIS_URL"]
      541 LOADK                            R111 K135 ["toolbox-service/v1/creations/group/%d/%s?"]
      542 CONCAT                           R109 R110 R111
      543 GETTABLEKS                       R111 R27 K51 ["APIS_URL"]
      545 LOADK                            R112 K136 ["toolbox-service/v1/creations/user/%d/%s?"]
      546 CONCAT                           R110 R111 R112
      547 MOVE                             R112 R106
      548 LOADK                            R113 K137 ["/voting/vote?"]
      549 CONCAT                           R111 R112 R113
      550 GETTABLEKS                       R113 R27 K49 ["ITEM_CONFIGURATION_URL"]
      552 LOADK                            R114 K138 ["v1/asset-types/%s/agents?"]
      553 CONCAT                           R112 R113 R114
      554 GETTABLEKS                       R114 R27 K51 ["APIS_URL"]
      556 LOADK                            R115 K139 ["autocomplete-studio/v2/suggest?"]
      557 CONCAT                           R113 R114 R115
      558 GETTABLEKS                       R115 R27 K51 ["APIS_URL"]
      560 LOADK                            R116 K140 ["marketplace-publishing-requirements-api/v1/requirements?"]
      561 CONCAT                           R114 R115 R116
      562 JUMPIFNOT                        R8 ; [+5]
      563 GETTABLEKS                       R116 R27 K51 ["APIS_URL"]
      565 LOADK                            R117 K141 ["asset-content-properties-service/v1/metadata/%d/%s/code-understanding-summaries"]
      566 CONCAT                           R115 R116 R117
      567 JUMP                             ; [+1]
      568 LOADNIL                          R115
      569 GETTABLEKS                       R117 R27 K51 ["APIS_URL"]
      571 LOADK                            R118 K142 ["user/cloud/v2/creator-store-products/"]
      572 CONCAT                           R116 R117 R118
      573 MOVE                             R118 R116
      574 LOADK                            R119 K143 ["PRODUCT_NAMESPACE_CREATOR_MARKETPLACE_ASSET-%s-%d"]
      575 CONCAT                           R117 R118 R119
      576 GETTABLEKS                       R119 R27 K62 ["PUBLISH_URL"]
      578 LOADK                            R120 K144 ["v1/assets/%d/media"]
      579 CONCAT                           R118 R119 R120
      580 GETTABLEKS                       R120 R27 K62 ["PUBLISH_URL"]
      582 LOADK                            R121 K145 ["v1/assets/%d/media/%d"]
      583 CONCAT                           R119 R120 R121
      584 GETTABLEKS                       R121 R27 K62 ["PUBLISH_URL"]
      586 LOADK                            R122 K146 ["v1/assets/%d/media/order"]
      587 CONCAT                           R120 R121 R122
      588 GETTABLEKS                       R122 R27 K62 ["PUBLISH_URL"]
      590 LOADK                            R123 K144 ["v1/assets/%d/media"]
      591 CONCAT                           R121 R122 R123
      592 GETTABLEKS                       R123 R27 K55 ["DEVELOP_URL"]
      594 LOADK                            R124 K147 ["v1/assets/%d/latest-saved-version"]
      595 CONCAT                           R122 R123 R124
      596 GETTABLEKS                       R124 R27 K55 ["DEVELOP_URL"]
      598 LOADK                            R125 K148 ["v1/universes/%d"]
      599 CONCAT                           R123 R124 R125
      600 GETTABLEKS                       R125 R27 K49 ["ITEM_CONFIGURATION_URL"]
      602 LOADK                            R126 K149 ["v1/permissions/groups?"]
      603 CONCAT                           R124 R125 R126
      604 GETTABLEKS                       R126 R27 K51 ["APIS_URL"]
      606 LOADK                            R127 K150 ["asset-permissions-api/v1/assets/access-properties"]
      607 CONCAT                           R125 R126 R127
      608 DUPCLOSURE                       R126 K151 [PROTO_0]
      609 CAPTURE                          VAL R108
      610 CAPTURE                          VAL R27
      611 SETTABLEKS                       R126 R32 K152 ["constructGetItemDetails"]
      613 DUPCLOSURE                       R126 K153 [PROTO_1]
      614 CAPTURE                          VAL R36
      615 CAPTURE                          VAL R27
      616 SETTABLEKS                       R126 R32 K154 ["constructGetAssetsUrl"]
      618 GETTABLEKS                       R126 R20 K155 ["new"]
      620 NEWTABLE                         R127 0 4
      622 GETTABLEKS                       R128 R26 K156 ["MUSIC"]
      624 GETTABLEKS                       R128 R128 K157 ["name"]
      626 GETTABLEKS                       R129 R26 K158 ["SOUND_EFFECTS"]
      628 GETTABLEKS                       R129 R129 K157 ["name"]
      630 GETTABLEKS                       R130 R26 K159 ["UNKNOWN_AUDIO"]
      632 GETTABLEKS                       R130 R130 K157 ["name"]
      634 GETTABLEKS                       R131 R26 K160 ["FREE_FONTS"]
      636 GETTABLEKS                       R131 R131 K157 ["name"]
      638 SETLIST                          R127 R128 4 [1]
      640 CALL                             R126 1 1
      641 DUPCLOSURE                       R127 K161 [PROTO_2]
      642 CAPTURE                          VAL R126
      643 SETTABLEKS                       R127 R32 K162 ["usesMarketplaceRoute"]
      645 DUPCLOSURE                       R127 K163 [PROTO_3]
      646 CAPTURE                          VAL R106
      647 SETTABLEKS                       R127 R32 K164 ["constructCreateSaveUrl"]
      649 DUPCLOSURE                       R127 K165 [PROTO_4]
      650 CAPTURE                          VAL R106
      651 SETTABLEKS                       R127 R32 K166 ["constructDeleteSaveUrl"]
      653 DUPCLOSURE                       R127 K167 [PROTO_5]
      654 CAPTURE                          VAL R106
      655 SETTABLEKS                       R127 R32 K168 ["constructGetSaveUrl"]
      657 DUPCLOSURE                       R127 K169 [PROTO_6]
      658 CAPTURE                          VAL R21
      659 CAPTURE                          VAL R18
      660 CAPTURE                          VAL R22
      661 CAPTURE                          VAL R30
      662 CAPTURE                          VAL R26
      663 CAPTURE                          VAL R106
      664 CAPTURE                          VAL R32
      665 CAPTURE                          VAL R27
      666 CAPTURE                          VAL R6
      667 SETTABLEKS                       R127 R32 K170 ["constructGetToolboxItemsUrl"]
      669 DUPCLOSURE                       R127 K171 [PROTO_7]
      670 CAPTURE                          VAL R37
      671 CAPTURE                          VAL R27
      672 SETTABLEKS                       R127 R32 K172 ["getDevelopAssetUrl"]
      674 DUPCLOSURE                       R127 K173 [PROTO_8]
      675 CAPTURE                          VAL R35
      676 SETTABLEKS                       R127 R32 K174 ["constructGetAssetByIdUrl"]
      678 DUPCLOSURE                       R127 K175 [PROTO_9]
      679 CAPTURE                          VAL R34
      680 CAPTURE                          VAL R27
      681 SETTABLEKS                       R127 R32 K176 ["constructGetAllowedItemTypesUrl"]
      683 DUPCLOSURE                       R127 K177 [PROTO_10]
      684 CAPTURE                          VAL R109
      685 CAPTURE                          VAL R27
      686 SETTABLEKS                       R127 R32 K178 ["constructGetAssetGroupCreationsUrl"]
      688 DUPCLOSURE                       R127 K179 [PROTO_11]
      689 CAPTURE                          VAL R110
      690 CAPTURE                          VAL R27
      691 SETTABLEKS                       R127 R32 K180 ["constructGetAssetCreationsUrlToolboxService"]
      693 DUPCLOSURE                       R127 K181 [PROTO_12]
      694 CAPTURE                          VAL R40
      695 CAPTURE                          VAL R39
      696 SETTABLEKS                       R127 R32 K182 ["constructGetCreatorInfoUrl"]
      698 DUPCLOSURE                       R127 K183 [PROTO_13]
      699 CAPTURE                          VAL R53
      700 SETTABLEKS                       R127 R32 K184 ["constructGetBundleMetadataUrl"]
      702 DUPCLOSURE                       R127 K185 [PROTO_14]
      703 CAPTURE                          VAL R54
      704 SETTABLEKS                       R127 R32 K186 ["constructPostBundleCreationContextUrl"]
      706 DUPCLOSURE                       R127 K187 [PROTO_15]
      707 CAPTURE                          VAL R56
      708 SETTABLEKS                       R127 R32 K188 ["constructPostCreateBundleUrl"]
      710 DUPCLOSURE                       R127 K189 [PROTO_16]
      711 CAPTURE                          VAL R57
      712 SETTABLEKS                       R127 R32 K190 ["constructGetBundleCreationStatusUrl"]
      714 DUPCLOSURE                       R127 K191 [PROTO_17]
      715 CAPTURE                          VAL R58
      716 SETTABLEKS                       R127 R32 K192 ["constructGetDefaultCreateBundleDataSharingUrl"]
      718 DUPCLOSURE                       R127 K193 [PROTO_18]
      719 CAPTURE                          VAL R59
      720 SETTABLEKS                       R127 R32 K194 ["constructPostCreateBundleDataSharingUrl"]
      722 DUPCLOSURE                       R127 K195 [PROTO_19]
      723 CAPTURE                          VAL R60
      724 SETTABLEKS                       R127 R32 K196 ["constructPostCreateAvatarAssetDataSharingUrl"]
      726 DUPCLOSURE                       R127 K197 [PROTO_20]
      727 CAPTURE                          VAL R48
      728 CAPTURE                          VAL R27
      729 SETTABLEKS                       R127 R32 K198 ["constructGetItemConfigurationDetailsUrl"]
      731 DUPCLOSURE                       R127 K199 [PROTO_21]
      732 CAPTURE                          VAL R55
      733 SETTABLEKS                       R127 R32 K200 ["constructPostAvatarItemUpdateContextUrl"]
      735 DUPCLOSURE                       R127 K201 [PROTO_22]
      736 CAPTURE                          VAL R47
      737 CAPTURE                          VAL R27
      738 SETTABLEKS                       R127 R32 K202 ["constructGetItemsByCreatorUrl"]
      740 DUPCLOSURE                       R127 K203 [PROTO_23]
      741 CAPTURE                          VAL R13
      742 CAPTURE                          VAL R49
      743 CAPTURE                          VAL R27
      744 SETTABLEKS                       R127 R32 K204 ["constructGetItemUploadFeeUrl"]
      746 MOVE                             R127 R7
      747 CALL                             R127 0 1
      748 JUMPIFNOT                        R127 ; [+10]
      749 DUPCLOSURE                       R127 K205 [PROTO_24]
      750 CAPTURE                          VAL R50
      751 CAPTURE                          VAL R27
      752 SETTABLEKS                       R127 R32 K206 ["constructGetPublishingPreferencesUrl"]
      754 DUPCLOSURE                       R127 K207 [PROTO_25]
      755 CAPTURE                          VAL R51
      756 CAPTURE                          VAL R27
      757 SETTABLEKS                       R127 R32 K208 ["constructGetPublishingFeePreviewUrl"]
      759 MOVE                             R127 R13
      760 CALL                             R127 0 1
      761 JUMPIFNOT                        R127 ; [+5]
      762 DUPCLOSURE                       R127 K209 [PROTO_26]
      763 CAPTURE                          VAL R52
      764 CAPTURE                          VAL R27
      765 SETTABLEKS                       R127 R32 K210 ["constructGetMetadataPermissionsUrl"]
      767 DUPCLOSURE                       R127 K211 [PROTO_27]
      768 CAPTURE                          VAL R41
      769 SETTABLEKS                       R127 R32 K212 ["constructUploadCatalogItemUrl"]
      771 DUPCLOSURE                       R127 K213 [PROTO_28]
      772 CAPTURE                          VAL R42
      773 SETTABLEKS                       R127 R32 K214 ["constructUploadAssetThumbnailUrl"]
      775 DUPCLOSURE                       R127 K215 [PROTO_29]
      776 CAPTURE                          VAL R46
      777 CAPTURE                          VAL R27
      778 SETTABLEKS                       R127 R32 K216 ["contuctGetThumbnailStatusUrl"]
      780 DUPCLOSURE                       R127 K217 [PROTO_30]
      781 CAPTURE                          VAL R44
      782 SETTABLEKS                       R127 R32 K218 ["constructConfigureSalesUrl"]
      784 DUPCLOSURE                       R127 K219 [PROTO_31]
      785 CAPTURE                          VAL R45
      786 SETTABLEKS                       R127 R32 K220 ["constructUpdateSalesUrl"]
      788 DUPCLOSURE                       R127 K221 [PROTO_32]
      789 CAPTURE                          VAL R43
      790 SETTABLEKS                       R127 R32 K222 ["constructConfigureCatalogItemUrl"]
      792 DUPCLOSURE                       R127 K223 [PROTO_33]
      793 CAPTURE                          VAL R111
      794 CAPTURE                          VAL R27
      795 SETTABLEKS                       R127 R32 K224 ["constructGetVoteUrl"]
      797 DUPCLOSURE                       R127 K225 [PROTO_34]
      798 CAPTURE                          VAL R62
      799 SETTABLEKS                       R127 R32 K226 ["constructPostVoteUrl"]
      801 DUPCLOSURE                       R127 K227 [PROTO_35]
      802 CAPTURE                          VAL R63
      803 SETTABLEKS                       R127 R32 K228 ["constructPostUnvoteUrl"]
      805 DUPCLOSURE                       R127 K229 [PROTO_36]
      806 CAPTURE                          VAL R106
      807 SETTABLEKS                       R127 R32 K230 ["constructInsertAssetUrl"]
      809 DUPCLOSURE                       R127 K231 [PROTO_37]
      810 CAPTURE                          VAL R67
      811 CAPTURE                          VAL R27
      812 SETTABLEKS                       R127 R32 K232 ["constructGetPluginInfoUrl"]
      814 DUPCLOSURE                       R127 K233 [PROTO_38]
      815 CAPTURE                          VAL R15
      816 CAPTURE                          VAL R66
      817 CAPTURE                          VAL R65
      818 SETTABLEKS                       R127 R32 K234 ["constructGetManageableGroupsUrl"]
      820 DUPCLOSURE                       R127 K235 [PROTO_39]
      821 CAPTURE                          VAL R27
      822 SETTABLEKS                       R127 R32 K236 ["constructGetGroupsForSurfaceUrl"]
      824 DUPCLOSURE                       R127 K237 [PROTO_40]
      825 CAPTURE                          VAL R27
      826 SETTABLEKS                       R127 R32 K238 ["constructAssetIdUserContextString"]
      828 DUPCLOSURE                       R127 K239 [PROTO_41]
      829 CAPTURE                          VAL R9
      830 SETTABLEKS                       R127 R32 K240 ["constructAssetIdString"]
      832 DUPCLOSURE                       R127 K241 [PROTO_42]
      833 CAPTURE                          VAL R68
      834 CAPTURE                          VAL R27
      835 SETTABLEKS                       R127 R32 K242 ["constructAssetIdUrl"]
      837 DUPCLOSURE                       R127 K243 [PROTO_43]
      838 CAPTURE                          VAL R73
      839 SETTABLEKS                       R127 R32 K244 ["constructAssetSavedVersionString"]
      841 DUPCLOSURE                       R127 K245 [PROTO_44]
      842 CAPTURE                          VAL R79
      843 SETTABLEKS                       R127 R32 K246 ["constructAssetSavedVersionWithNotesString"]
      845 DUPCLOSURE                       R127 K247 [PROTO_45]
      846 CAPTURE                          VAL R78
      847 SETTABLEKS                       R127 R32 K248 ["constructGetPackageVersionDescriptionString"]
      849 DUPCLOSURE                       R127 K249 [PROTO_46]
      850 CAPTURE                          VAL R80
      851 SETTABLEKS                       R127 R32 K250 ["constructSetPackageVersionDescriptionString"]
      853 DUPCLOSURE                       R127 K251 [PROTO_47]
      854 CAPTURE                          VAL R76
      855 CAPTURE                          VAL R27
      856 SETTABLEKS                       R127 R32 K252 ["constructRevertAssetVersionString"]
      858 DUPCLOSURE                       R127 K253 [PROTO_48]
      859 CAPTURE                          VAL R77
      860 CAPTURE                          VAL R27
      861 SETTABLEKS                       R127 R32 K254 ["constructGetDevelopAssetMetadata"]
      863 DUPCLOSURE                       R127 K255 [PROTO_49]
      864 CAPTURE                          VAL R69
      865 CAPTURE                          VAL R27
      866 SETTABLEKS                       R127 R32 K256 ["constructAssetGameAssetIdUrl"]
      868 DUPCLOSURE                       R127 K257 [PROTO_50]
      869 CAPTURE                          VAL R12
      870 SETTABLEKS                       R127 R32 K258 ["constructAssetThumbnailUrl"]
      872 DUPCLOSURE                       R127 K259 [PROTO_51]
      873 SETTABLEKS                       R127 R32 K260 ["constructRBXThumbUrl"]
      875 DUPCLOSURE                       R127 K261 [PROTO_52]
      876 CAPTURE                          VAL R27
      877 CAPTURE                          VAL R2
      878 SETTABLEKS                       R127 R32 K262 ["constructUserSearchUrl"]
      880 DUPCLOSURE                       R127 K263 [PROTO_53]
      881 CAPTURE                          VAL R71
      882 CAPTURE                          VAL R27
      883 SETTABLEKS                       R127 R32 K264 ["constructUserThumbnailUrl"]
      885 DUPCLOSURE                       R127 K265 [PROTO_54]
      886 CAPTURE                          VAL R72
      887 SETTABLEKS                       R127 R32 K266 ["constructFavoriteCountsUrl"]
      889 DUPCLOSURE                       R127 K267 [PROTO_55]
      890 CAPTURE                          VAL R72
      891 SETTABLEKS                       R127 R32 K268 ["constructGetFavoritedUrl"]
      893 DUPCLOSURE                       R127 K269 [PROTO_56]
      894 CAPTURE                          VAL R72
      895 SETTABLEKS                       R127 R32 K270 ["constructPostFavoriteUrl"]
      897 DUPCLOSURE                       R127 K271 [PROTO_57]
      898 CAPTURE                          VAL R72
      899 SETTABLEKS                       R127 R32 K272 ["constructDeleteFavoriteUrl"]
      901 DUPCLOSURE                       R127 K273 [PROTO_58]
      902 CAPTURE                          VAL R85
      903 SETTABLEKS                       R127 R32 K274 ["constructPatchAssetUrl"]
      905 DUPCLOSURE                       R127 K275 [PROTO_59]
      906 CAPTURE                          VAL R81
      907 SETTABLEKS                       R127 R32 K276 ["constructOperationUrl"]
      909 DUPCLOSURE                       R127 K277 [PROTO_60]
      910 CAPTURE                          VAL R82
      911 SETTABLEKS                       R127 R32 K278 ["constructPostUploadAnimationUrl"]
      913 DUPCLOSURE                       R127 K279 [PROTO_61]
      914 CAPTURE                          VAL R84
      915 SETTABLEKS                       R127 R32 K280 ["constructValidateAnimationUrl"]
      917 DUPCLOSURE                       R127 K281 [PROTO_62]
      918 CAPTURE                          VAL R83
      919 SETTABLEKS                       R127 R32 K282 ["constructPostOverwriteAnimationUrl"]
      921 DUPCLOSURE                       R127 K283 [PROTO_63]
      922 CAPTURE                          VAL R87
      923 SETTABLEKS                       R127 R32 K284 ["constructGetMyGroupUrl"]
      925 DUPCLOSURE                       R127 K285 [PROTO_64]
      926 CAPTURE                          VAL R88
      927 SETTABLEKS                       R127 R32 K286 ["constructIsVerifiedCreatorUrl"]
      929 DUPCLOSURE                       R127 K287 [PROTO_65]
      930 CAPTURE                          VAL R90
      931 SETTABLEKS                       R127 R32 K288 ["constructGetUserFriendsUrl"]
      933 DUPCLOSURE                       R127 K289 [PROTO_66]
      934 CAPTURE                          VAL R102
      935 SETTABLEKS                       R127 R32 K290 ["constructAssetPermissionsUrl"]
      937 DUPCLOSURE                       R127 K291 [PROTO_67]
      938 CAPTURE                          VAL R105
      939 SETTABLEKS                       R127 R32 K292 ["constructAssetBatchGrantPermissionsUrl"]
      941 DUPCLOSURE                       R127 K293 [PROTO_68]
      942 CAPTURE                          VAL R103
      943 SETTABLEKS                       R127 R32 K294 ["constructAssetCheckPermissionsUrl"]
      945 DUPCLOSURE                       R127 K295 [PROTO_69]
      946 CAPTURE                          VAL R91
      947 SETTABLEKS                       R127 R32 K296 ["getRobuxPurchaseUrl"]
      949 DUPCLOSURE                       R127 K297 [PROTO_70]
      950 CAPTURE                          VAL R101
      951 SETTABLEKS                       R127 R32 K298 ["constructPostPackageMetadata"]
      953 DUPCLOSURE                       R127 K299 [PROTO_71]
      954 CAPTURE                          VAL R92
      955 SETTABLEKS                       R127 R32 K300 ["constructGetRobuxBalanceUrl"]
      957 DUPCLOSURE                       R127 K301 [PROTO_72]
      958 CAPTURE                          VAL R89
      959 SETTABLEKS                       R127 R32 K302 ["constructGetGroupRoleInfoUrl"]
      961 DUPCLOSURE                       R127 K303 [PROTO_73]
      962 CAPTURE                          VAL R104
      963 SETTABLEKS                       R127 R32 K304 ["constructAssetCheckPermissionsBatchUrl"]
      965 DUPCLOSURE                       R127 K305 [PROTO_74]
      966 CAPTURE                          VAL R10
      967 CAPTURE                          VAL R96
      968 CAPTURE                          VAL R95
      969 CAPTURE                          VAL R94
      970 SETTABLEKS                       R127 R32 K306 ["constructAssetPurchaseUrl"]
      972 DUPCLOSURE                       R127 K307 [PROTO_75]
      973 CAPTURE                          VAL R97
      974 SETTABLEKS                       R127 R32 K308 ["constructPurchaserStatusUrl"]
      976 MOVE                             R127 R11
      977 CALL                             R127 0 1
      978 JUMPIFNOT                        R127 ; [+4]
      979 DUPCLOSURE                       R127 K309 [PROTO_76]
      980 CAPTURE                          VAL R98
      981 SETTABLEKS                       R127 R32 K310 ["constructSellerStatusUrl"]
      983 DUPCLOSURE                       R127 K311 [PROTO_77]
      984 CAPTURE                          VAL R86
      985 CAPTURE                          VAL R27
      986 SETTABLEKS                       R127 R32 K312 ["constructUploadCatalogItemFormatUrl"]
      988 DUPCLOSURE                       R127 K313 [PROTO_78]
      989 CAPTURE                          VAL R112
      990 CAPTURE                          VAL R27
      991 SETTABLEKS                       R127 R32 K314 ["constructAssetTypeAgentsUrl"]
      993 DUPCLOSURE                       R127 K315 [PROTO_79]
      994 CAPTURE                          VAL R113
      995 CAPTURE                          VAL R27
      996 SETTABLEKS                       R127 R32 K316 ["constructToolboxAutocompleteUrl"]
      998 DUPCLOSURE                       R127 K317 [PROTO_80]
      999 CAPTURE                          VAL R106
     1000 CAPTURE                          VAL R27
     1001 CAPTURE                          VAL R30
     1002 SETTABLEKS                       R127 R32 K318 ["constructGetHomeConfigurationUrl"]
     1004 DUPCLOSURE                       R127 K319 [PROTO_81]
     1005 CAPTURE                          VAL R114
     1006 CAPTURE                          VAL R27
     1007 SETTABLEKS                       R127 R32 K320 ["constructPublishingRequirementsUrl"]
     1009 DUPCLOSURE                       R127 K321 [PROTO_82]
     1010 CAPTURE                          VAL R27
     1011 SETTABLEKS                       R127 R32 K322 ["getCreatorMarketplaceQuotas"]
     1013 DUPCLOSURE                       R127 K323 [PROTO_83]
     1014 CAPTURE                          VAL R118
     1015 SETTABLEKS                       R127 R32 K324 ["constructGetAssetMediaIdsUrl"]
     1017 DUPCLOSURE                       R127 K325 [PROTO_84]
     1018 CAPTURE                          VAL R119
     1019 SETTABLEKS                       R127 R32 K326 ["constructDeleteAssetMediaUrl"]
     1021 DUPCLOSURE                       R127 K327 [PROTO_85]
     1022 CAPTURE                          VAL R120
     1023 SETTABLEKS                       R127 R32 K328 ["constructPostSetAssetMediaOrder"]
     1025 DUPCLOSURE                       R127 K329 [PROTO_86]
     1026 CAPTURE                          VAL R121
     1027 SETTABLEKS                       R127 R32 K330 ["constructPostUploadAssetMedia"]
     1029 JUMPIFNOT                        R3 ; [+4]
     1030 DUPCLOSURE                       R127 K331 [PROTO_87]
     1031 CAPTURE                          VAL R28
     1032 SETTABLEKS                       R127 R32 K332 ["constructCreatorDashboardAssetConfigUrl"]
     1034 JUMPIFNOT                        R5 ; [+6]
     1035 DUPCLOSURE                       R127 K333 [PROTO_88]
     1036 CAPTURE                          VAL R28
     1037 CAPTURE                          VAL R99
     1038 SETTABLEKS                       R127 R32 K334 ["constructCreatorDashboardConfigAvatarAssetUrl"]
     1040 JUMP                             ; [+5]
     1041 DUPCLOSURE                       R127 K335 [PROTO_89]
     1042 CAPTURE                          VAL R28
     1043 CAPTURE                          VAL R99
     1044 SETTABLEKS                       R127 R32 K336 ["constructCreatorDashboardAvatarAssetUrl"]
     1046 DUPCLOSURE                       R127 K337 [PROTO_90]
     1047 CAPTURE                          VAL R28
     1048 SETTABLEKS                       R127 R32 K338 ["constructCreatorDashboardCreationsPageUrl"]
     1050 JUMPIFNOT                        R4 ; [+5]
     1051 DUPCLOSURE                       R127 K339 [PROTO_91]
     1052 CAPTURE                          VAL R28
     1053 CAPTURE                          VAL R100
     1054 SETTABLEKS                       R127 R32 K340 ["constructCreatorDashboardBundleConfigureUrl"]
     1056 DUPCLOSURE                       R127 K341 [PROTO_92]
     1057 CAPTURE                          VAL R28
     1058 SETTABLEKS                       R127 R32 K342 ["constructCreatorStoreConfigurationUrl"]
     1060 DUPCLOSURE                       R127 K343 [PROTO_93]
     1061 CAPTURE                          VAL R123
     1062 SETTABLEKS                       R127 R32 K344 ["constructGetUniverseInfo"]
     1064 MOVE                             R127 R8
     1065 CALL                             R127 0 1
     1066 JUMPIFNOT                        R127 ; [+4]
     1067 DUPCLOSURE                       R127 K345 [PROTO_94]
     1068 CAPTURE                          VAL R115
     1069 SETTABLEKS                       R127 R32 K346 ["constructCodeUnderstandingSummaryUrl"]
     1071 DUPCLOSURE                       R127 K347 [PROTO_95]
     1072 CAPTURE                          VAL R117
     1073 CAPTURE                          VAL R29
     1074 SETTABLEKS                       R127 R32 K348 ["constructGetFiatProductUrl"]
     1076 DUPCLOSURE                       R127 K349 [PROTO_96]
     1077 CAPTURE                          VAL R124
     1078 CAPTURE                          VAL R27
     1079 SETTABLEKS                       R127 R32 K350 ["constructAllowedGroupsForActionUrl"]
     1081 DUPCLOSURE                       R127 K351 [PROTO_97]
     1082 CAPTURE                          VAL R33
     1083 SETTABLEKS                       R127 R32 K352 ["constructCreatorStoreUrl"]
     1085 DUPCLOSURE                       R127 K353 [PROTO_98]
     1086 CAPTURE                          VAL R125
     1087 SETTABLEKS                       R127 R32 K354 ["constructBatchAssetAccessPropertiesUrl"]
     1089 MOVE                             R127 R31
     1090 MOVE                             R128 R32
     1091 CALL                             R127 1 1
     1092 RETURN                           R127 1
