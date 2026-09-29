PROTO_0:
        0 DUPTABLE                         R2 K4 [{[1], ["isCatalog"] = True, ["isUploadable"]}]
        1 SETTABLEKS                       R0 R2 K0 ["type"]
        3 JUMPIFEQKB                       R1 TRUE ; [+2]
        5 LOADB                            R3 0 +1
        6 LOADB                            R3 1
        7 SETTABLEKS                       R3 R2 K3 ["isUploadable"]
        9 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R2 K4 [{[1], ["isMarketplace"] = True, ["isBuyable"]}]
        1 SETTABLEKS                       R0 R2 K0 ["type"]
        3 JUMPIFEQKB                       R1 TRUE ; [+2]
        5 LOADB                            R3 0 +1
        6 LOADB                            R3 1
        7 SETTABLEKS                       R3 R2 K3 ["isBuyable"]
        9 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["getNormalizedAssetString"]
        3 GETUPVAL                         R1 0
        4 CALL                             R0 1 1
        5 SETUPVAL                         R0 0
        6 GETIMPORT                        R1 K3 [Enum.AssetType]
        8 GETUPVAL                         R2 0
        9 GETTABLE                         R0 R1 R2
       10 JUMPIFEQKNIL                     R0 ; [+8]
       12 GETUPVAL                         R2 2
       13 GETUPVAL                         R3 0
       14 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       16 GETIMPORT                        R1 K6 [table.insert]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["ASSET_TYPE_INFO"]
        4 LENGTH                           R1 R2
        5 JUMPIFEQKN                       R1 K1 [0] ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 NEWTABLE                         R2 0 9
       11 GETIMPORT                        R4 K5 [Enum.AssetType.Model]
       13 DUPTABLE                         R3 K11 [{["type"], ["isMarketplace"] = True, ["isBuyable"] = False}]
       14 SETTABLEKS                       R4 R3 K6 ["type"]
       16 GETIMPORT                        R5 K13 [Enum.AssetType.Decal]
       18 DUPTABLE                         R4 K11 [{["type"], ["isMarketplace"] = True, ["isBuyable"] = False}]
       19 SETTABLEKS                       R5 R4 K6 ["type"]
       21 GETIMPORT                        R6 K15 [Enum.AssetType.Mesh]
       23 DUPTABLE                         R5 K11 [{["type"], ["isMarketplace"] = True, ["isBuyable"] = False}]
       24 SETTABLEKS                       R6 R5 K6 ["type"]
       26 GETIMPORT                        R7 K17 [Enum.AssetType.MeshPart]
       28 DUPTABLE                         R6 K11 [{["type"], ["isMarketplace"] = True, ["isBuyable"] = False}]
       29 SETTABLEKS                       R7 R6 K6 ["type"]
       31 GETIMPORT                        R8 K19 [Enum.AssetType.Audio]
       33 DUPTABLE                         R7 K11 [{["type"], ["isMarketplace"] = True, ["isBuyable"] = False}]
       34 SETTABLEKS                       R8 R7 K6 ["type"]
       36 GETIMPORT                        R9 K21 [Enum.AssetType.Animation]
       38 DUPTABLE                         R8 K11 [{["type"], ["isMarketplace"] = True, ["isBuyable"] = False}]
       39 SETTABLEKS                       R9 R8 K6 ["type"]
       41 GETIMPORT                        R10 K23 [Enum.AssetType.Video]
       43 DUPTABLE                         R9 K11 [{["type"], ["isMarketplace"] = True, ["isBuyable"] = False}]
       44 SETTABLEKS                       R10 R9 K6 ["type"]
       46 GETIMPORT                        R11 K25 [Enum.AssetType.Plugin]
       48 DUPTABLE                         R10 K26 [{["type"], ["isMarketplace"] = True, ["isBuyable"] = True}]
       49 SETTABLEKS                       R11 R10 K6 ["type"]
       51 GETIMPORT                        R12 K28 [Enum.AssetType.Package]
       53 DUPTABLE                         R11 K11 [{["type"], ["isMarketplace"] = True, ["isBuyable"] = False}]
       54 SETTABLEKS                       R12 R11 K6 ["type"]
       56 SETLIST                          R2 R3 9 [1]
       58 SETTABLEKS                       R2 R1 K0 ["ASSET_TYPE_INFO"]
       60 NEWTABLE                         R1 0 0
       62 GETUPVAL                         R2 1
       63 CALL                             R2 0 1
       64 JUMPIFNOT                        R2 ; [+16]
       65 GETIMPORT                        R2 K30 [ipairs]
       67 MOVE                             R3 R0
       68 CALL                             R2 1 3
       69 FORGPREP_INEXT                   R2
       70 GETIMPORT                        R7 K32 [pcall]
       72 NEWCLOSURE                       R8 P0
       73 CAPTURE                          REF R6
       74 CAPTURE                          UPVAL U0
       75 CAPTURE                          REF R1
       76 CALL                             R7 1 1
       77 CLOSEUPVALS                      R6
       78 FORGLOOP                         R2 2 [inext] ; [-9]
       80 JUMP                             ; [+1]
       81 MOVE                             R1 R0
       82 GETIMPORT                        R2 K30 [ipairs]
       84 MOVE                             R3 R1
       85 CALL                             R2 1 3
       86 FORGPREP_INEXT                   R2
       87 GETUPVAL                         R7 1
       88 CALL                             R7 0 1
       89 JUMPIF                           R7 ; [+6]
       90 GETUPVAL                         R7 0
       91 GETTABLEKS                       R7 R7 K33 ["getNormalizedAssetString"]
       93 MOVE                             R8 R6
       94 CALL                             R7 1 1
       95 MOVE                             R6 R7
       96 GETIMPORT                        R8 K34 [Enum.AssetType]
       98 GETTABLE                         R7 R8 R6
       99 JUMPIFNOT                        R7 ; [+25]
      100 GETIMPORT                        R8 K37 [table.find]
      102 GETUPVAL                         R9 0
      103 GETTABLEKS                       R9 R9 K38 ["ASSET_TYPES_2D"]
      105 MOVE                             R10 R7
      106 CALL                             R8 2 1
      107 GETUPVAL                         R10 0
      108 GETTABLEKS                       R10 R10 K0 ["ASSET_TYPE_INFO"]
      110 NOT                              R12 R8
      111 DUPTABLE                         R11 K41 [{["type"], ["isCatalog"] = True, ["isUploadable"]}]
      112 SETTABLEKS                       R7 R11 K6 ["type"]
      114 JUMPIFEQKB                       R12 TRUE ; [+2]
      116 LOADB                            R13 0 +1
      117 LOADB                            R13 1
      118 SETTABLEKS                       R13 R11 K40 ["isUploadable"]
      120 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
      122 GETIMPORT                        R9 K43 [table.insert]
      124 CALL                             R9 2 0
      125 FORGLOOP                         R2 2 [inext] ; [-39]
      127 GETIMPORT                        R2 K30 [ipairs]
      129 GETUPVAL                         R3 0
      130 GETTABLEKS                       R3 R3 K0 ["ASSET_TYPE_INFO"]
      132 CALL                             R2 1 3
      133 FORGPREP_INEXT                   R2
      134 GETIMPORT                        R8 K45 [next]
      136 MOVE                             R9 R6
      137 CALL                             R8 1 1
      138 JUMPIFNOTEQKNIL                  R8 ; [+2]
      140 LOADB                            R7 0 +1
      141 LOADB                            R7 1
      142 JUMPIFNOT                        R7 ; [+42]
      143 GETTABLEKS                       R8 R6 K39 ["isCatalog"]
      145 JUMPIFNOT                        R8 ; [+15]
      146 GETTABLEKS                       R8 R6 K7 ["isMarketplace"]
      148 JUMPIFNOT                        R8 ; [+12]
      149 GETIMPORT                        R8 K47 [error]
      151 GETTABLEKS                       R13 R6 K6 ["type"]
      153 FASTCALL1                        TOSTRING R13 ; [+2]
      154 GETIMPORT                        R12 K49 [tostring]
      156 CALL                             R12 1 1
      157 MOVE                             R10 R12
      158 LOADK                            R11 K50 [" cannot be both a catalog and marketplace asset"]
      159 CONCAT                           R9 R10 R11
      160 CALL                             R8 1 0
      161 GETUPVAL                         R9 0
      162 GETTABLEKS                       R9 R9 K0 ["ASSET_TYPE_INFO"]
      164 GETTABLEKS                       R10 R6 K6 ["type"]
      166 GETTABLE                         R8 R9 R10
      167 JUMPIFNOT                        R8 ; [+11]
      168 GETIMPORT                        R8 K47 [error]
      170 LOADK                            R10 K51 ["AssetConfigConstants.ASSET_TYPE_INFO contains a duplicate of "]
      171 GETTABLEKS                       R12 R6 K6 ["type"]
      173 FASTCALL1                        TOSTRING R12 ; [+2]
      174 GETIMPORT                        R11 K49 [tostring]
      176 CALL                             R11 1 1
      177 CONCAT                           R9 R10 R11
      178 CALL                             R8 1 0
      179 GETUPVAL                         R8 0
      180 GETTABLEKS                       R8 R8 K0 ["ASSET_TYPE_INFO"]
      182 GETTABLEKS                       R9 R6 K6 ["type"]
      184 SETTABLE                         R6 R8 R9
      185 FORGLOOP                         R2 2 [inext] ; [-52]
      187 CLOSEUPVALS                      R1
      188 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOTEQKS                    R0 K0 ["Tshirt"] ; [+3]
        2 LOADK                            R1 K1 ["TShirt"]
        3 RETURN                           R1 1
        4 JUMPIFNOTEQKS                    R0 K2 ["TshirtAccessory"] ; [+3]
        6 LOADK                            R1 K3 ["TShirtAccessory"]
        7 RETURN                           R1 1
        8 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Name"]
        3 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["enumerate"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R0 K7 ["Src"]
       18 GETTABLEKS                       R2 R2 K8 ["Util"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R2 K9 ["SharedFlags"]
       24 GETTABLEKS                       R4 R4 K10 ["getFFlagEnableUGCBundleUploadBodyScale"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R0 K7 ["Src"]
       31 GETTABLEKS                       R5 R5 K11 ["Flags"]
       33 GETTABLEKS                       R5 R5 K12 ["getFFlagEnableAvatarBackgroundCatalogAsset"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K4 [require]
       38 GETTABLEKS                       R6 R0 K7 ["Src"]
       40 GETTABLEKS                       R6 R6 K11 ["Flags"]
       42 GETTABLEKS                       R6 R6 K13 ["getFFlagUsePublishMarketplaceActionType"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K4 [require]
       47 GETTABLEKS                       R7 R2 K14 ["convertArrayToTable"]
       49 CALL                             R6 1 1
       50 NEWTABLE                         R7 64 0
       52 LOADN                            R8 1100
       53 SETTABLEKS                       R8 R7 K15 ["WIDTH"]
       55 LOADN                            R8 860
       56 SETTABLEKS                       R8 R7 K16 ["HEIGHT"]
       58 LOADN                            R8 900
       59 SETTABLEKS                       R8 R7 K17 ["MIN_WIDTH"]
       61 LOADN                            R8 500
       62 SETTABLEKS                       R8 R7 K18 ["MIN_HEIGHT"]
       64 LOADK                            R8 K19 ["https://en.help.roblox.com/hc/en-us/articles/115004647846-Roblox-Terms-of-Use"]
       65 SETTABLEKS                       R8 R7 K20 ["TERM_OF_USE_URL"]
       67 LOADK                            R8 K21 ["https://www.roblox.com/my/account#!/info"]
       68 SETTABLEKS                       R8 R7 K22 ["ACCOUNT_SETTING_URL"]
       70 LOADN                            R8 50
       71 SETTABLEKS                       R8 R7 K23 ["NAME_CHARACTER_LIMIT"]
       73 LOADN                            R8 1000
       74 SETTABLEKS                       R8 R7 K24 ["DESCRIPTION_CHARACTER_LIMIT"]
       76 LOADN                            R8 500
       77 SETTABLEKS                       R8 R7 K25 ["PACKAGE_NOTE_CHARACTER_LIMIT"]
       79 LOADN                            R8 180
       80 SETTABLEKS                       R8 R7 K26 ["TITLE_GUTTER_WIDTH"]
       82 GETIMPORT                        R8 K29 [UDim2.new]
       84 LOADN                            R9 0
       85 LOADN                            R10 150
       86 LOADN                            R11 0
       87 LOADN                            R12 200
       88 CALL                             R8 4 1
       89 SETTABLEKS                       R8 R7 K30 ["OverrideAssetItemSize"]
       91 MOVE                             R8 R6
       92 NEWTABLE                         R9 0 3
       94 LOADK                            R10 K31 ["ImagePicker"]
       95 LOADK                            R11 K32 ["Thumbnail"]
       96 LOADK                            R12 K33 ["ModelPreview"]
       97 SETLIST                          R9 R10 3 [1]
       99 CALL                             R8 1 1
      100 SETTABLEKS                       R8 R7 K34 ["PreviewTypes"]
      102 MOVE                             R8 R6
      103 NEWTABLE                         R9 0 5
      105 LOADK                            R10 K35 ["Sales"]
      106 LOADK                            R11 K36 ["General"]
      107 LOADK                            R12 K37 ["Versions"]
      108 LOADK                            R13 K38 ["Override"]
      109 LOADK                            R14 K39 ["Permissions"]
      110 SETLIST                          R9 R10 5 [1]
      112 CALL                             R8 1 1
      113 SETTABLEKS                       R8 R7 K40 ["SIDE_TABS"]
      115 MOVE                             R8 R6
      116 NEWTABLE                         R9 0 3
      118 LOADK                            R10 K41 ["Title"]
      119 LOADK                            R11 K42 ["Description"]
      120 LOADK                            R12 K43 ["Price"]
      121 SETLIST                          R9 R10 3 [1]
      123 CALL                             R8 1 1
      124 SETTABLEKS                       R8 R7 K44 ["FIELD_NAMES"]
      126 NEWTABLE                         R8 0 14
      128 DUPTABLE                         R9 K46 [{"name"}]
      129 GETIMPORT                        R10 K50 [Enum.Genre.All]
      131 GETTABLEKS                       R10 R10 K51 ["Name"]
      133 SETTABLEKS                       R10 R9 K45 ["name"]
      135 DUPTABLE                         R10 K46 [{"name"}]
      136 GETIMPORT                        R11 K53 [Enum.Genre.TownAndCity]
      138 GETTABLEKS                       R11 R11 K51 ["Name"]
      140 SETTABLEKS                       R11 R10 K45 ["name"]
      142 DUPTABLE                         R11 K46 [{"name"}]
      143 GETIMPORT                        R12 K55 [Enum.Genre.Fantasy]
      145 GETTABLEKS                       R12 R12 K51 ["Name"]
      147 SETTABLEKS                       R12 R11 K45 ["name"]
      149 DUPTABLE                         R12 K46 [{"name"}]
      150 GETIMPORT                        R13 K57 [Enum.Genre.SciFi]
      152 GETTABLEKS                       R13 R13 K51 ["Name"]
      154 SETTABLEKS                       R13 R12 K45 ["name"]
      156 DUPTABLE                         R13 K46 [{"name"}]
      157 GETIMPORT                        R14 K59 [Enum.Genre.Ninja]
      159 GETTABLEKS                       R14 R14 K51 ["Name"]
      161 SETTABLEKS                       R14 R13 K45 ["name"]
      163 DUPTABLE                         R14 K46 [{"name"}]
      164 GETIMPORT                        R15 K61 [Enum.Genre.Scary]
      166 GETTABLEKS                       R15 R15 K51 ["Name"]
      168 SETTABLEKS                       R15 R14 K45 ["name"]
      170 DUPTABLE                         R15 K46 [{"name"}]
      171 GETIMPORT                        R16 K63 [Enum.Genre.Pirate]
      173 GETTABLEKS                       R16 R16 K51 ["Name"]
      175 SETTABLEKS                       R16 R15 K45 ["name"]
      177 DUPTABLE                         R16 K46 [{"name"}]
      178 GETIMPORT                        R17 K65 [Enum.Genre.Adventure]
      180 GETTABLEKS                       R17 R17 K51 ["Name"]
      182 SETTABLEKS                       R17 R16 K45 ["name"]
      184 DUPTABLE                         R17 K46 [{"name"}]
      185 GETIMPORT                        R18 K67 [Enum.Genre.Sports]
      187 GETTABLEKS                       R18 R18 K51 ["Name"]
      189 SETTABLEKS                       R18 R17 K45 ["name"]
      191 DUPTABLE                         R18 K46 [{"name"}]
      192 GETIMPORT                        R19 K69 [Enum.Genre.Funny]
      194 GETTABLEKS                       R19 R19 K51 ["Name"]
      196 SETTABLEKS                       R19 R18 K45 ["name"]
      198 DUPTABLE                         R19 K46 [{"name"}]
      199 GETIMPORT                        R20 K71 [Enum.Genre.WildWest]
      201 GETTABLEKS                       R20 R20 K51 ["Name"]
      203 SETTABLEKS                       R20 R19 K45 ["name"]
      205 DUPTABLE                         R20 K46 [{"name"}]
      206 GETIMPORT                        R21 K73 [Enum.Genre.War]
      208 GETTABLEKS                       R21 R21 K51 ["Name"]
      210 SETTABLEKS                       R21 R20 K45 ["name"]
      212 DUPTABLE                         R21 K46 [{"name"}]
      213 GETIMPORT                        R22 K75 [Enum.Genre.SkatePark]
      215 GETTABLEKS                       R22 R22 K51 ["Name"]
      217 SETTABLEKS                       R22 R21 K45 ["name"]
      219 DUPTABLE                         R22 K46 [{"name"}]
      220 GETIMPORT                        R23 K77 [Enum.Genre.Tutorial]
      222 GETTABLEKS                       R23 R23 K51 ["Name"]
      224 SETTABLEKS                       R23 R22 K45 ["name"]
      226 SETLIST                          R8 R9 14 [1]
      228 SETTABLEKS                       R8 R7 K78 ["GENRE_TYPE"]
      230 MOVE                             R8 R6
      231 NEWTABLE                         R9 0 3
      233 LOADK                            R10 K79 ["EDIT_FLOW"]
      234 LOADK                            R11 K80 ["UPLOAD_FLOW"]
      235 LOADK                            R12 K81 ["DOWNLOAD_FLOW"]
      236 SETLIST                          R9 R10 3 [1]
      238 CALL                             R8 1 1
      239 SETTABLEKS                       R8 R7 K82 ["FLOW_TYPE"]
      241 MOVE                             R8 R6
      242 NEWTABLE                         R9 0 4
      244 LOADK                            R10 K83 ["ASSET_TYPE_SELECTION"]
      245 LOADK                            R11 K84 ["CONFIGURE_ASSET"]
      246 LOADK                            R12 K85 ["UPLOADING_ASSET"]
      247 LOADK                            R13 K86 ["UPLOAD_ASSET_RESULT"]
      248 SETLIST                          R9 R10 4 [1]
      250 CALL                             R8 1 1
      251 SETTABLEKS                       R8 R7 K87 ["SCREENS"]
      253 MOVE                             R8 R6
      254 NEWTABLE                         R9 0 8
      256 LOADK                            R10 K88 ["Unknown"]
      257 LOADK                            R11 K89 ["ReviewPending"]
      258 LOADK                            R12 K90 ["Moderated"]
      259 LOADK                            R13 K91 ["ReviewApproved"]
      260 LOADK                            R14 K92 ["OnSale"]
      261 LOADK                            R15 K93 ["OffSale"]
      262 LOADK                            R16 K94 ["DelayedRelease"]
      263 LOADK                            R17 K95 ["Free"]
      264 SETLIST                          R9 R10 8 [1]
      266 CALL                             R8 1 1
      267 SETTABLEKS                       R8 R7 K96 ["ASSET_STATUS"]
      269 MOVE                             R8 R6
      270 NEWTABLE                         R9 0 10
      272 LOADK                            R10 K97 ["AssetType"]
      273 LOADK                            R11 K98 ["Authorization"]
      274 LOADK                            R12 K99 ["Invalid"]
      275 LOADK                            R13 K100 ["KillSwitch"]
      276 LOADK                            R14 K101 ["Quota"]
      277 LOADK                            R15 K102 ["SafetyStatus"]
      278 LOADK                            R16 K103 ["SellerAccountNotOnboarded"]
      279 LOADK                            R17 K104 ["SellerAccountRestricted"]
      280 LOADK                            R18 K105 ["UnsupportedAssetOwner"]
      281 LOADK                            R19 K106 ["Verification"]
      282 SETLIST                          R9 R10 10 [1]
      284 CALL                             R8 1 1
      285 SETTABLEKS                       R8 R7 K107 ["RESTRICTION_TYPE"]
      287 MOVE                             R8 R6
      288 NEWTABLE                         R9 0 1
      290 LOADK                            R10 K92 ["OnSale"]
      291 SETLIST                          R9 R10 1 [1]
      293 CALL                             R8 1 1
      294 SETTABLEKS                       R8 R7 K108 ["SALES_STATUS_FOR_PRICE"]
      296 DUPCLOSURE                       R8 K109 [PROTO_0]
      297 DUPCLOSURE                       R9 K110 [PROTO_1]
      298 NEWTABLE                         R10 0 0
      300 SETTABLEKS                       R10 R7 K111 ["ASSET_TYPE_INFO"]
      302 NEWTABLE                         R10 0 3
      304 GETIMPORT                        R11 K113 [Enum.AssetType.TShirt]
      306 GETIMPORT                        R12 K115 [Enum.AssetType.Shirt]
      308 GETIMPORT                        R13 K117 [Enum.AssetType.Pants]
      310 SETLIST                          R10 R11 3 [1]
      312 SETTABLEKS                       R10 R7 K118 ["ASSET_TYPES_2D"]
      314 DUPCLOSURE                       R10 K119 [PROTO_3]
      315 CAPTURE                          VAL R7
      316 CAPTURE                          VAL R5
      317 SETTABLEKS                       R10 R7 K120 ["populateAssetTypeInfoFromNetwork"]
      319 DUPCLOSURE                       R10 K121 [PROTO_4]
      320 SETTABLEKS                       R10 R7 K122 ["getNormalizedAssetString"]
      322 MOVE                             R10 R6
      323 NEWTABLE                         R11 0 3
      325 LOADK                            R12 K123 ["WhitelistedPlugins"]
      326 LOADK                            R13 K124 ["MyPlugins"]
      327 LOADK                            R14 K125 ["GroupPlugins"]
      328 SETLIST                          R11 R12 3 [1]
      330 CALL                             R10 1 1
      331 SETTABLEKS                       R10 R7 K126 ["developCategoryType"]
      333 MOVE                             R10 R6
      334 NEWTABLE                         R11 0 2
      336 LOADK                            R12 K127 ["MyPackages"]
      337 LOADK                            R13 K128 ["GroupPackages"]
      338 SETLIST                          R11 R12 2 [1]
      340 CALL                             R10 1 1
      341 SETTABLEKS                       R10 R7 K129 ["packagesCategoryType"]
      343 MOVE                             R10 R6
      344 NEWTABLE                         R11 0 9
      346 LOADK                            R12 K130 ["Asset"]
      347 LOADK                            R13 K131 ["Avatar"]
      348 LOADK                            R14 K132 ["AvatarHeadShot"]
      349 LOADK                            R15 K133 ["BadgeIcon"]
      350 LOADK                            R16 K134 ["BundleThumbnail"]
      351 LOADK                            R17 K135 ["GameIcon"]
      352 LOADK                            R18 K136 ["GamePass"]
      353 LOADK                            R19 K137 ["GroupIcon"]
      354 LOADK                            R20 K138 ["Outfit"]
      355 SETLIST                          R11 R12 9 [1]
      357 CALL                             R10 1 1
      358 SETTABLEKS                       R10 R7 K139 ["rbxThumbTypes"]
      360 DUPTABLE                         R10 K146 [{["AvatarHeadshotImageSize"] = 60, ["GroupIconImageSize"] = 150, ["AssetThumbnailSize"] = 420}]
      361 SETTABLEKS                       R10 R7 K147 ["rbxThumbSizes"]
      363 DUPTABLE                         R10 K158 [{["MaxThumbnails"] = 5, ["AspectRatioHeight"] = 9, ["AspectRatioWidth"] = 16, ["RecommendedHeight"] = 432, ["RecommendedWidth"] = 768}]
      364 SETTABLEKS                       R10 R7 K159 ["additionalImages"]
      366 NEWTABLE                         R10 0 3
      368 LOADK                            R11 K160 ["jpg"]
      369 LOADK                            R12 K161 ["jpeg"]
      370 LOADK                            R13 K162 ["png"]
      371 SETLIST                          R10 R11 3 [1]
      373 SETTABLEKS                       R10 R7 K163 ["IMAGE_TYPES"]
      375 LOADK                            R10 K164 ["Success"]
      376 SETTABLEKS                       R10 R7 K165 ["TAGS_SUGGESTION_SUCCESS"]
      378 LOADN                            R10 5
      379 SETTABLEKS                       R10 R7 K166 ["MAX_DISPLAY_SUGGESTIONS"]
      381 LOADN                            R10 10
      382 SETTABLEKS                       R10 R7 K167 ["MAX_FETCH_SUGGESTIONS"]
      384 LOADK                            R10 K168 ["avatar_meshpart_accessory"]
      385 SETTABLEKS                       R10 R7 K169 ["AVATAR_MESHPART_ACCESSORY_FORMAT"]
      387 LOADK                            R10 K170 ["EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E"]
      388 SETTABLEKS                       R10 R7 K171 ["MULTIPART_FORM_BOUNDARY"]
      390 LOADK                            R10 K172 ["OverrideAssetId"]
      391 SETTABLEKS                       R10 R7 K173 ["OVERRIDE_ASSET_ID"]
      393 DUPTABLE                         R10 K178 [{["Public"] = True, ["Private"] = False}]
      394 SETTABLEKS                       R10 R7 K179 ["SHARING_KEYS"]
      396 NEWTABLE                         R10 0 4
      398 LOADK                            R11 K180 ["Body"]
      399 LOADK                            R12 K181 ["DynamicHead"]
      400 LOADK                            R13 K182 ["Shoes"]
      401 LOADK                            R14 K183 ["AvatarAnimations"]
      402 SETLIST                          R10 R11 4 [1]
      404 NEWTABLE                         R11 0 0
      406 SETTABLEKS                       R11 R7 K184 ["UGCBundleTypes"]
      408 GETIMPORT                        R11 K186 [ipairs]
      410 MOVE                             R12 R10
      411 CALL                             R11 1 3
      412 FORGPREP_INEXT                   R11
      413 DUPTABLE                         R16 K188 [{"Name", "Value"}]
      414 SETTABLEKS                       R15 R16 K51 ["Name"]
      416 SETTABLEKS                       R14 R16 K187 ["Value"]
      418 GETTABLEKS                       R17 R7 K184 ["UGCBundleTypes"]
      420 SETTABLE                         R16 R17 R15
      421 NEWCLOSURE                       R17 P4
      422 CAPTURE                          VAL R16
      423 SETTABLEKS                       R17 R16 K189 ["rawValue"]
      425 FORGLOOP                         R11 2 [inext] ; [-13]
      427 NEWTABLE                         R11 4 0
      429 GETTABLEKS                       R12 R7 K184 ["UGCBundleTypes"]
      431 GETTABLEKS                       R12 R12 K180 ["Body"]
      433 GETTABLEKS                       R12 R12 K189 ["rawValue"]
      435 CALL                             R12 0 1
      436 GETTABLEKS                       R13 R7 K184 ["UGCBundleTypes"]
      438 GETTABLEKS                       R13 R13 K180 ["Body"]
      440 SETTABLE                         R13 R11 R12
      441 GETTABLEKS                       R12 R7 K184 ["UGCBundleTypes"]
      443 GETTABLEKS                       R12 R12 K181 ["DynamicHead"]
      445 GETTABLEKS                       R12 R12 K189 ["rawValue"]
      447 CALL                             R12 0 1
      448 GETTABLEKS                       R13 R7 K184 ["UGCBundleTypes"]
      450 GETTABLEKS                       R13 R13 K181 ["DynamicHead"]
      452 SETTABLE                         R13 R11 R12
      453 GETTABLEKS                       R12 R7 K184 ["UGCBundleTypes"]
      455 GETTABLEKS                       R12 R12 K182 ["Shoes"]
      457 GETTABLEKS                       R12 R12 K189 ["rawValue"]
      459 CALL                             R12 0 1
      460 GETTABLEKS                       R13 R7 K184 ["UGCBundleTypes"]
      462 GETTABLEKS                       R13 R13 K182 ["Shoes"]
      464 SETTABLE                         R13 R11 R12
      465 GETTABLEKS                       R12 R7 K184 ["UGCBundleTypes"]
      467 GETTABLEKS                       R12 R12 K183 ["AvatarAnimations"]
      469 GETTABLEKS                       R12 R12 K189 ["rawValue"]
      471 CALL                             R12 0 1
      472 GETTABLEKS                       R13 R7 K184 ["UGCBundleTypes"]
      474 GETTABLEKS                       R13 R13 K183 ["AvatarAnimations"]
      476 SETTABLE                         R13 R11 R12
      477 SETTABLEKS                       R11 R7 K190 ["UGCBundleTypeStringToEnumeration"]
      479 NEWTABLE                         R11 32 0
      481 GETIMPORT                        R12 K191 [Enum.AssetType.DynamicHead]
      483 SETTABLEKS                       R12 R11 K181 ["DynamicHead"]
      485 GETIMPORT                        R12 K193 [Enum.AssetType.LeftArm]
      487 SETTABLEKS                       R12 R11 K192 ["LeftArm"]
      489 GETIMPORT                        R12 K195 [Enum.AssetType.LeftLeg]
      491 SETTABLEKS                       R12 R11 K194 ["LeftLeg"]
      493 GETIMPORT                        R12 K197 [Enum.AssetType.RightArm]
      495 SETTABLEKS                       R12 R11 K196 ["RightArm"]
      497 GETIMPORT                        R12 K199 [Enum.AssetType.RightLeg]
      499 SETTABLEKS                       R12 R11 K198 ["RightLeg"]
      501 GETIMPORT                        R12 K201 [Enum.AssetType.Torso]
      503 SETTABLEKS                       R12 R11 K200 ["Torso"]
      505 GETIMPORT                        R12 K203 [Enum.AssetType.EyebrowAccessory]
      507 SETTABLEKS                       R12 R11 K202 ["EyebrowAccessory"]
      509 GETIMPORT                        R12 K205 [Enum.AssetType.EyelashAccessory]
      511 SETTABLEKS                       R12 R11 K204 ["EyelashAccessory"]
      513 GETIMPORT                        R12 K207 [Enum.AssetType.HairAccessory]
      515 SETTABLEKS                       R12 R11 K206 ["HairAccessory"]
      517 GETIMPORT                        R12 K209 [Enum.AssetType.LeftShoeAccessory]
      519 SETTABLEKS                       R12 R11 K208 ["LeftShoeAccessory"]
      521 GETIMPORT                        R12 K211 [Enum.AssetType.RightShoeAccessory]
      523 SETTABLEKS                       R12 R11 K210 ["RightShoeAccessory"]
      525 GETIMPORT                        R12 K213 [Enum.AssetType.ClimbAnimation]
      527 SETTABLEKS                       R12 R11 K212 ["ClimbAnimation"]
      529 GETIMPORT                        R12 K215 [Enum.AssetType.FallAnimation]
      531 SETTABLEKS                       R12 R11 K214 ["FallAnimation"]
      533 GETIMPORT                        R12 K217 [Enum.AssetType.IdleAnimation]
      535 SETTABLEKS                       R12 R11 K216 ["IdleAnimation"]
      537 GETIMPORT                        R12 K219 [Enum.AssetType.JumpAnimation]
      539 SETTABLEKS                       R12 R11 K218 ["JumpAnimation"]
      541 GETIMPORT                        R12 K221 [Enum.AssetType.RunAnimation]
      543 SETTABLEKS                       R12 R11 K220 ["RunAnimation"]
      545 GETIMPORT                        R12 K223 [Enum.AssetType.SwimAnimation]
      547 SETTABLEKS                       R12 R11 K222 ["SwimAnimation"]
      549 GETIMPORT                        R12 K225 [Enum.AssetType.WalkAnimation]
      551 SETTABLEKS                       R12 R11 K224 ["WalkAnimation"]
      553 SETTABLEKS                       R11 R7 K226 ["AllowedAssetStringsMetadataToAssetTypeMap"]
      555 DUPTABLE                         R11 K242 [{["Head"] = "Head", ["UpperTorso"] = "UpperTorso", ["LowerTorso"] = "LowerTorso", ["LeftUpperLeg"] = "LeftUpperLeg", ["LeftLowerLeg"] = "LeftLowerLeg", ["LeftHand"] = "LeftHand", ["RightUpperArm"] = "RightUpperArm", ["RightLowerArm"] = "RightLowerArm", ["RightHand"] = "RightHand", ["LeftUpperArm"] = "LeftUpperArm", ["LeftLowerArm"] = "LeftLowerArm", ["LeftFoot"] = "LeftFoot", ["RightUpperLeg"] = "RightUpperLeg", ["RightLowerLeg"] = "RightLowerLeg", ["RightFoot"] = "RightFoot", ["EyebrowAccessory"] = "EyebrowAccessory", ["EyelashAccessory"] = "EyelashAccessory", ["HairAccessory"] = "HairAccessory"}]
      556 SETTABLEKS                       R11 R7 K243 ["UGC_BODY_PARTS"]
      558 DUPTABLE                         R11 K244 [{["LeftShoeAccessory"] = "LeftShoeAccessory", ["RightShoeAccessory"] = "RightShoeAccessory"}]
      559 SETTABLEKS                       R11 R7 K245 ["UGC_BUNDLE_PARTS"]
      561 NEWTABLE                         R11 32 0
      563 GETTABLEKS                       R12 R7 K243 ["UGC_BODY_PARTS"]
      565 GETTABLEKS                       R12 R12 K227 ["Head"]
      567 GETIMPORT                        R13 K191 [Enum.AssetType.DynamicHead]
      569 SETTABLE                         R13 R11 R12
      570 GETTABLEKS                       R12 R7 K243 ["UGC_BODY_PARTS"]
      572 GETTABLEKS                       R12 R12 K228 ["UpperTorso"]
      574 GETIMPORT                        R13 K201 [Enum.AssetType.Torso]
      576 SETTABLE                         R13 R11 R12
      577 GETTABLEKS                       R12 R7 K243 ["UGC_BODY_PARTS"]
      579 GETTABLEKS                       R12 R12 K229 ["LowerTorso"]
      581 GETIMPORT                        R13 K201 [Enum.AssetType.Torso]
      583 SETTABLE                         R13 R11 R12
      584 GETTABLEKS                       R12 R7 K243 ["UGC_BODY_PARTS"]
      586 GETTABLEKS                       R12 R12 K236 ["LeftUpperArm"]
      588 GETIMPORT                        R13 K193 [Enum.AssetType.LeftArm]
      590 SETTABLE                         R13 R11 R12
      591 GETTABLEKS                       R12 R7 K243 ["UGC_BODY_PARTS"]
      593 GETTABLEKS                       R12 R12 K237 ["LeftLowerArm"]
      595 GETIMPORT                        R13 K193 [Enum.AssetType.LeftArm]
      597 SETTABLE                         R13 R11 R12
      598 GETTABLEKS                       R12 R7 K243 ["UGC_BODY_PARTS"]
      600 GETTABLEKS                       R12 R12 K232 ["LeftHand"]
      602 GETIMPORT                        R13 K193 [Enum.AssetType.LeftArm]
      604 SETTABLE                         R13 R11 R12
      605 GETTABLEKS                       R12 R7 K243 ["UGC_BODY_PARTS"]
      607 GETTABLEKS                       R12 R12 K233 ["RightUpperArm"]
      609 GETIMPORT                        R13 K197 [Enum.AssetType.RightArm]
      611 SETTABLE                         R13 R11 R12
      612 GETTABLEKS                       R12 R7 K243 ["UGC_BODY_PARTS"]
      614 GETTABLEKS                       R12 R12 K234 ["RightLowerArm"]
      616 GETIMPORT                        R13 K197 [Enum.AssetType.RightArm]
      618 SETTABLE                         R13 R11 R12
      619 GETTABLEKS                       R12 R7 K243 ["UGC_BODY_PARTS"]
      621 GETTABLEKS                       R12 R12 K235 ["RightHand"]
      623 GETIMPORT                        R13 K197 [Enum.AssetType.RightArm]
      625 SETTABLE                         R13 R11 R12
      626 GETTABLEKS                       R12 R7 K243 ["UGC_BODY_PARTS"]
      628 GETTABLEKS                       R12 R12 K230 ["LeftUpperLeg"]
      630 GETIMPORT                        R13 K195 [Enum.AssetType.LeftLeg]
      632 SETTABLE                         R13 R11 R12
      633 GETTABLEKS                       R12 R7 K243 ["UGC_BODY_PARTS"]
      635 GETTABLEKS                       R12 R12 K231 ["LeftLowerLeg"]
      637 GETIMPORT                        R13 K195 [Enum.AssetType.LeftLeg]
      639 SETTABLE                         R13 R11 R12
      640 GETTABLEKS                       R12 R7 K243 ["UGC_BODY_PARTS"]
      642 GETTABLEKS                       R12 R12 K238 ["LeftFoot"]
      644 GETIMPORT                        R13 K195 [Enum.AssetType.LeftLeg]
      646 SETTABLE                         R13 R11 R12
      647 GETTABLEKS                       R12 R7 K243 ["UGC_BODY_PARTS"]
      649 GETTABLEKS                       R12 R12 K239 ["RightUpperLeg"]
      651 GETIMPORT                        R13 K199 [Enum.AssetType.RightLeg]
      653 SETTABLE                         R13 R11 R12
      654 GETTABLEKS                       R12 R7 K243 ["UGC_BODY_PARTS"]
      656 GETTABLEKS                       R12 R12 K240 ["RightLowerLeg"]
      658 GETIMPORT                        R13 K199 [Enum.AssetType.RightLeg]
      660 SETTABLE                         R13 R11 R12
      661 GETTABLEKS                       R12 R7 K243 ["UGC_BODY_PARTS"]
      663 GETTABLEKS                       R12 R12 K241 ["RightFoot"]
      665 GETIMPORT                        R13 K199 [Enum.AssetType.RightLeg]
      667 SETTABLE                         R13 R11 R12
      668 GETTABLEKS                       R12 R7 K243 ["UGC_BODY_PARTS"]
      670 GETTABLEKS                       R12 R12 K202 ["EyebrowAccessory"]
      672 GETIMPORT                        R13 K203 [Enum.AssetType.EyebrowAccessory]
      674 SETTABLE                         R13 R11 R12
      675 GETTABLEKS                       R12 R7 K243 ["UGC_BODY_PARTS"]
      677 GETTABLEKS                       R12 R12 K204 ["EyelashAccessory"]
      679 GETIMPORT                        R13 K205 [Enum.AssetType.EyelashAccessory]
      681 SETTABLE                         R13 R11 R12
      682 GETTABLEKS                       R12 R7 K243 ["UGC_BODY_PARTS"]
      684 GETTABLEKS                       R12 R12 K206 ["HairAccessory"]
      686 GETIMPORT                        R13 K207 [Enum.AssetType.HairAccessory]
      688 SETTABLE                         R13 R11 R12
      689 SETTABLEKS                       R11 R7 K246 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
      691 NEWTABLE                         R11 2 0
      693 GETTABLEKS                       R12 R7 K245 ["UGC_BUNDLE_PARTS"]
      695 GETTABLEKS                       R12 R12 K208 ["LeftShoeAccessory"]
      697 GETIMPORT                        R13 K209 [Enum.AssetType.LeftShoeAccessory]
      699 SETTABLE                         R13 R11 R12
      700 GETTABLEKS                       R12 R7 K245 ["UGC_BUNDLE_PARTS"]
      702 GETTABLEKS                       R12 R12 K210 ["RightShoeAccessory"]
      704 GETIMPORT                        R13 K211 [Enum.AssetType.RightShoeAccessory]
      706 SETTABLE                         R13 R11 R12
      707 SETTABLEKS                       R11 R7 K247 ["UGC_BUNDLE_PART_NAMES_TO_ASSET_TYPE"]
      709 DUPTABLE                         R11 K248 [{["ClimbAnimation"] = "ClimbAnimation", ["FallAnimation"] = "FallAnimation", ["IdleAnimation"] = "IdleAnimation", ["JumpAnimation"] = "JumpAnimation", ["RunAnimation"] = "RunAnimation", ["SwimAnimation"] = "SwimAnimation", ["WalkAnimation"] = "WalkAnimation"}]
      710 SETTABLEKS                       R11 R7 K249 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      712 NEWTABLE                         R11 8 0
      714 GETTABLEKS                       R12 R7 K249 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      716 GETTABLEKS                       R12 R12 K212 ["ClimbAnimation"]
      718 GETIMPORT                        R13 K213 [Enum.AssetType.ClimbAnimation]
      720 SETTABLE                         R13 R11 R12
      721 GETTABLEKS                       R12 R7 K249 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      723 GETTABLEKS                       R12 R12 K214 ["FallAnimation"]
      725 GETIMPORT                        R13 K215 [Enum.AssetType.FallAnimation]
      727 SETTABLE                         R13 R11 R12
      728 GETTABLEKS                       R12 R7 K249 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      730 GETTABLEKS                       R12 R12 K216 ["IdleAnimation"]
      732 GETIMPORT                        R13 K217 [Enum.AssetType.IdleAnimation]
      734 SETTABLE                         R13 R11 R12
      735 GETTABLEKS                       R12 R7 K249 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      737 GETTABLEKS                       R12 R12 K218 ["JumpAnimation"]
      739 GETIMPORT                        R13 K219 [Enum.AssetType.JumpAnimation]
      741 SETTABLE                         R13 R11 R12
      742 GETTABLEKS                       R12 R7 K249 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      744 GETTABLEKS                       R12 R12 K220 ["RunAnimation"]
      746 GETIMPORT                        R13 K221 [Enum.AssetType.RunAnimation]
      748 SETTABLE                         R13 R11 R12
      749 GETTABLEKS                       R12 R7 K249 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      751 GETTABLEKS                       R12 R12 K222 ["SwimAnimation"]
      753 GETIMPORT                        R13 K223 [Enum.AssetType.SwimAnimation]
      755 SETTABLE                         R13 R11 R12
      756 GETTABLEKS                       R12 R7 K249 ["UGC_AVATAR_ANIMATIONS_PARTS"]
      758 GETTABLEKS                       R12 R12 K224 ["WalkAnimation"]
      760 GETIMPORT                        R13 K225 [Enum.AssetType.WalkAnimation]
      762 SETTABLE                         R13 R11 R12
      763 SETTABLEKS                       R11 R7 K250 ["UGC_AVATAR_ANIMATIONS_PART_NAMES_TO_ASSET_TYPE"]
      765 DUPTABLE                         R11 K251 [{"ClimbAnimation", "FallAnimation", "IdleAnimation", "JumpAnimation", "RunAnimation", "SwimAnimation", "WalkAnimation"}]
      766 NEWTABLE                         R12 0 1
      768 LOADK                            R13 K252 ["climb"]
      769 SETLIST                          R12 R13 1 [1]
      771 SETTABLEKS                       R12 R11 K212 ["ClimbAnimation"]
      773 NEWTABLE                         R12 0 1
      775 LOADK                            R13 K253 ["fall"]
      776 SETLIST                          R12 R13 1 [1]
      778 SETTABLEKS                       R12 R11 K214 ["FallAnimation"]
      780 NEWTABLE                         R12 0 1
      782 LOADK                            R13 K254 ["idle"]
      783 SETLIST                          R12 R13 1 [1]
      785 SETTABLEKS                       R12 R11 K216 ["IdleAnimation"]
      787 NEWTABLE                         R12 0 1
      789 LOADK                            R13 K255 ["jump"]
      790 SETLIST                          R12 R13 1 [1]
      792 SETTABLEKS                       R12 R11 K218 ["JumpAnimation"]
      794 NEWTABLE                         R12 0 1
      796 LOADK                            R13 K256 ["run"]
      797 SETLIST                          R12 R13 1 [1]
      799 SETTABLEKS                       R12 R11 K220 ["RunAnimation"]
      801 NEWTABLE                         R12 0 2
      803 LOADK                            R13 K257 ["swim"]
      804 LOADK                            R14 K258 ["swimidle"]
      805 SETLIST                          R12 R13 2 [1]
      807 SETTABLEKS                       R12 R11 K222 ["SwimAnimation"]
      809 NEWTABLE                         R12 0 1
      811 LOADK                            R13 K259 ["walk"]
      812 SETLIST                          R12 R13 1 [1]
      814 SETTABLEKS                       R12 R11 K224 ["WalkAnimation"]
      816 SETTABLEKS                       R11 R7 K260 ["AVATAR_ANIMATION_SUB_NAMES"]
      818 DUPTABLE                         R11 K251 [{"ClimbAnimation", "FallAnimation", "IdleAnimation", "JumpAnimation", "RunAnimation", "SwimAnimation", "WalkAnimation"}]
      819 DUPTABLE                         R12 K262 [{["climb"] = "ClimbAnim"}]
      820 SETTABLEKS                       R12 R11 K212 ["ClimbAnimation"]
      822 DUPTABLE                         R12 K264 [{["fall"] = "FallAnim"}]
      823 SETTABLEKS                       R12 R11 K214 ["FallAnimation"]
      825 DUPTABLE                         R12 K266 [{["idle"] = }]
      826 SETTABLEKS                       R12 R11 K216 ["IdleAnimation"]
      828 DUPTABLE                         R12 K268 [{["jump"] = "JumpAnim"}]
      829 SETTABLEKS                       R12 R11 K218 ["JumpAnimation"]
      831 DUPTABLE                         R12 K270 [{["run"] = "RunAnim"}]
      832 SETTABLEKS                       R12 R11 K220 ["RunAnimation"]
      834 DUPTABLE                         R12 K273 [{["swim"] = "SwimAnim", ["swimidle"] = "SwimIdleAnim"}]
      835 SETTABLEKS                       R12 R11 K222 ["SwimAnimation"]
      837 DUPTABLE                         R12 K275 [{["walk"] = "WalkAnim"}]
      838 SETTABLEKS                       R12 R11 K224 ["WalkAnimation"]
      840 SETTABLEKS                       R11 R7 K276 ["AVATAR_ANIMATION_INSTANCE_NAMES"]
      842 MOVE                             R11 R3
      843 CALL                             R11 0 1
      844 JUMPIFNOT                        R11 ; [+18]
      845 DUPTABLE                         R11 K280 [{["Classic"] = "Classic", ["ProportionsNormal"] = "ProportionsNormal", ["ProportionsSlender"] = "ProportionsSlender", ["Unknown"] = "Unknown"}]
      846 SETTABLEKS                       R11 R7 K281 ["BodyScaleTypes"]
      848 DUPTABLE                         R11 K282 [{"Classic", "ProportionsNormal", "ProportionsSlender"}]
      849 DUPTABLE                         R12 K290 [{["height"] = 1, ["width"] = 1, ["head"] = 1, ["proportion"] = 0, ["bodyType"] = 0}]
      850 SETTABLEKS                       R12 R11 K277 ["Classic"]
      852 DUPTABLE                         R12 K291 [{["height"] = 1, ["width"] = 1, ["head"] = 1, ["proportion"] = 0, ["bodyType"] = 1}]
      853 SETTABLEKS                       R12 R11 K278 ["ProportionsNormal"]
      855 DUPTABLE                         R12 K292 [{["height"] = 1, ["width"] = 1, ["head"] = 1, ["proportion"] = 1, ["bodyType"] = 1}]
      856 SETTABLEKS                       R12 R11 K279 ["ProportionsSlender"]
      858 SETTABLEKS                       R11 R7 K293 ["BodyScaleDefaults"]
      860 DUPTABLE                         R11 K299 [{["height"] = "BodyHeightScale", ["width"] = "BodyWidthScale", ["head"] = "HeadScale", ["bodyType"] = "BodyTypeScale", ["proportion"] = "BodyProportionScale"}]
      861 SETTABLEKS                       R11 R7 K300 ["bodyScaleNameToString"]
      863 DUPTABLE                         R11 K310 [{["NONE"] = "None", ["BEGIN"] = "Begin", ["VALIDATING"] = "Validating", ["SUCCESS"] = "Success", ["FAILURE"] = "Failure"}]
      864 SETTABLEKS                       R11 R7 K311 ["VALIDATION_STATE"]
      866 NEWTABLE                         R11 0 2
      868 LOADK                            R12 K312 ["rbxassetid://"]
      869 LOADK                            R13 K313 ["https://assetdelivery"]
      870 SETLIST                          R11 R12 2 [1]
      872 SETTABLEKS                       R11 R7 K314 ["assetIdStringPatterns"]
      874 NEWTABLE                         R11 0 10
      876 GETIMPORT                        R12 K191 [Enum.AssetType.DynamicHead]
      878 GETIMPORT                        R13 K203 [Enum.AssetType.EyebrowAccessory]
      880 GETIMPORT                        R14 K205 [Enum.AssetType.EyelashAccessory]
      882 GETIMPORT                        R15 K193 [Enum.AssetType.LeftArm]
      884 GETIMPORT                        R16 K195 [Enum.AssetType.LeftLeg]
      886 GETIMPORT                        R17 K209 [Enum.AssetType.LeftShoeAccessory]
      888 GETIMPORT                        R18 K197 [Enum.AssetType.RightArm]
      890 GETIMPORT                        R19 K199 [Enum.AssetType.RightLeg]
      892 GETIMPORT                        R20 K211 [Enum.AssetType.RightShoeAccessory]
      894 GETIMPORT                        R21 K201 [Enum.AssetType.Torso]
      896 SETLIST                          R11 R12 10 [1]
      898 SETTABLEKS                       R11 R7 K315 ["BODY_PARTS"]
      900 NEWTABLE                         R11 0 9
      902 GETIMPORT                        R12 K191 [Enum.AssetType.DynamicHead]
      904 GETIMPORT                        R13 K201 [Enum.AssetType.Torso]
      906 GETIMPORT                        R14 K193 [Enum.AssetType.LeftArm]
      908 GETIMPORT                        R15 K197 [Enum.AssetType.RightArm]
      910 GETIMPORT                        R16 K195 [Enum.AssetType.LeftLeg]
      912 GETIMPORT                        R17 K199 [Enum.AssetType.RightLeg]
      914 GETIMPORT                        R18 K207 [Enum.AssetType.HairAccessory]
      916 GETIMPORT                        R19 K203 [Enum.AssetType.EyebrowAccessory]
      918 GETIMPORT                        R20 K205 [Enum.AssetType.EyelashAccessory]
      920 SETLIST                          R11 R12 9 [1]
      922 SETTABLEKS                       R11 R7 K316 ["VAAS_SORTED_ASSET_TYPES"]
      924 NEWTABLE                         R11 0 7
      926 GETIMPORT                        R12 K213 [Enum.AssetType.ClimbAnimation]
      928 GETIMPORT                        R13 K215 [Enum.AssetType.FallAnimation]
      930 GETIMPORT                        R14 K217 [Enum.AssetType.IdleAnimation]
      932 GETIMPORT                        R15 K219 [Enum.AssetType.JumpAnimation]
      934 GETIMPORT                        R16 K221 [Enum.AssetType.RunAnimation]
      936 GETIMPORT                        R17 K223 [Enum.AssetType.SwimAnimation]
      938 GETIMPORT                        R18 K225 [Enum.AssetType.WalkAnimation]
      940 SETLIST                          R11 R12 7 [1]
      942 SETTABLEKS                       R11 R7 K317 ["ANIMATION_ASSET_TYPES_IN_DISPLAY_ORDER"]
      944 NEWTABLE                         R11 0 5
      946 GETIMPORT                        R12 K203 [Enum.AssetType.EyebrowAccessory]
      948 GETIMPORT                        R13 K205 [Enum.AssetType.EyelashAccessory]
      950 GETIMPORT                        R14 K319 [Enum.AssetType.FaceMakeup]
      952 GETIMPORT                        R15 K321 [Enum.AssetType.LipMakeup]
      954 GETIMPORT                        R16 K323 [Enum.AssetType.EyeMakeup]
      956 SETLIST                          R11 R12 5 [1]
      958 SETTABLEKS                       R11 R7 K324 ["MAKEUP_ASSET_TYPES"]
      960 NEWTABLE                         R11 0 20
      962 GETIMPORT                        R12 K326 [Enum.AssetType.Hat]
      964 GETIMPORT                        R13 K207 [Enum.AssetType.HairAccessory]
      966 GETIMPORT                        R14 K328 [Enum.AssetType.FaceAccessory]
      968 GETIMPORT                        R15 K330 [Enum.AssetType.NeckAccessory]
      970 GETIMPORT                        R16 K332 [Enum.AssetType.ShoulderAccessory]
      972 GETIMPORT                        R17 K334 [Enum.AssetType.FrontAccessory]
      974 GETIMPORT                        R18 K336 [Enum.AssetType.BackAccessory]
      976 GETIMPORT                        R19 K338 [Enum.AssetType.WaistAccessory]
      978 GETIMPORT                        R20 K340 [Enum.AssetType.TShirtAccessory]
      980 GETIMPORT                        R21 K342 [Enum.AssetType.ShirtAccessory]
      982 GETIMPORT                        R22 K344 [Enum.AssetType.PantsAccessory]
      984 GETIMPORT                        R23 K346 [Enum.AssetType.JacketAccessory]
      986 GETIMPORT                        R24 K348 [Enum.AssetType.SweaterAccessory]
      988 GETIMPORT                        R25 K350 [Enum.AssetType.ShortsAccessory]
      990 GETIMPORT                        R26 K352 [Enum.AssetType.DressSkirtAccessory]
      992 GETIMPORT                        R27 K203 [Enum.AssetType.EyebrowAccessory]
      994 SETLIST                          R11 R12 16 [1]
      996 GETIMPORT                        R12 K205 [Enum.AssetType.EyelashAccessory]
      998 GETIMPORT                        R13 K319 [Enum.AssetType.FaceMakeup]
     1000 GETIMPORT                        R14 K321 [Enum.AssetType.LipMakeup]
     1002 GETIMPORT                        R15 K323 [Enum.AssetType.EyeMakeup]
     1004 SETLIST                          R11 R12 4 [17]
     1006 SETTABLEKS                       R11 R7 K353 ["AVATAR_ITEM_UPDATE_ASSET_TYPES"]
     1008 MOVE                             R11 R4
     1009 CALL                             R11 0 1
     1010 JUMPIFNOT                        R11 ; [+9]
     1011 GETTABLEKS                       R12 R7 K118 ["ASSET_TYPES_2D"]
     1013 GETIMPORT                        R13 K355 [Enum.AssetType.AvatarBackground]
     1015 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
     1017 GETIMPORT                        R11 K358 [table.insert]
     1019 CALL                             R11 2 0
     1020 RETURN                           R7 1
