PROTO_0:
        0 JUMPIFEQKS                       R0 K0 ["ASSET_TYPE_TEXT_DOCUMENT"] ; [+8]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["AssetType"]
        5 GETTABLEKS                       R1 R1 K2 ["TextDocument"]
        7 JUMPIFNOTEQ                      R0 R1 ; [+12]
        9 GETUPVAL                         R2 1
       10 CALL                             R2 0 1
       11 JUMPIFNOT                        R2 ; [+6]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K1 ["AssetType"]
       15 GETTABLEKS                       R1 R1 K2 ["TextDocument"]
       17 RETURN                           R1 1
       18 LOADNIL                          R1
       19 RETURN                           R1 1
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K1 ["AssetType"]
       23 GETTABLE                         R1 R2 R0
       24 JUMPIFNOT                        R1 ; [+5]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K1 ["AssetType"]
       28 GETTABLE                         R1 R2 R0
       29 RETURN                           R1 1
       30 JUMPIFNOTEQKS                    R0 K3 ["ASSET_TYPE_MODEL"] ; [+7]
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K1 ["AssetType"]
       35 GETTABLEKS                       R1 R1 K4 ["Model"]
       37 RETURN                           R1 1
       38 JUMPIFNOTEQKS                    R0 K5 ["ASSET_TYPE_DECAL"] ; [+7]
       40 GETUPVAL                         R1 0
       41 GETTABLEKS                       R1 R1 K1 ["AssetType"]
       43 GETTABLEKS                       R1 R1 K6 ["Decal"]
       45 RETURN                           R1 1
       46 JUMPIFNOTEQKS                    R0 K7 ["ASSET_TYPE_AUDIO"] ; [+7]
       48 GETUPVAL                         R1 0
       49 GETTABLEKS                       R1 R1 K1 ["AssetType"]
       51 GETTABLEKS                       R1 R1 K8 ["Audio"]
       53 RETURN                           R1 1
       54 JUMPIFNOTEQKS                    R0 K9 ["ASSET_TYPE_ANIMATION"] ; [+7]
       56 GETUPVAL                         R1 0
       57 GETTABLEKS                       R1 R1 K1 ["AssetType"]
       59 GETTABLEKS                       R1 R1 K10 ["Animation"]
       61 RETURN                           R1 1
       62 JUMPIFNOTEQKS                    R0 K11 ["ASSET_TYPE_PLUGIN"] ; [+7]
       64 GETUPVAL                         R1 0
       65 GETTABLEKS                       R1 R1 K1 ["AssetType"]
       67 GETTABLEKS                       R1 R1 K12 ["Plugin"]
       69 RETURN                           R1 1
       70 JUMPIFNOTEQKS                    R0 K13 ["ASSET_TYPE_MESH_PART"] ; [+7]
       72 GETUPVAL                         R1 0
       73 GETTABLEKS                       R1 R1 K1 ["AssetType"]
       75 GETTABLEKS                       R1 R1 K14 ["MeshPart"]
       77 RETURN                           R1 1
       78 JUMPIFNOTEQKS                    R0 K15 ["ASSET_TYPE_VIDEO"] ; [+7]
       80 GETUPVAL                         R1 0
       81 GETTABLEKS                       R1 R1 K1 ["AssetType"]
       83 GETTABLEKS                       R1 R1 K16 ["Video"]
       85 RETURN                           R1 1
       86 JUMPIFNOTEQKS                    R0 K17 ["ASSET_TYPE_FONT_FAMILY"] ; [+7]
       88 GETUPVAL                         R1 0
       89 GETTABLEKS                       R1 R1 K1 ["AssetType"]
       91 GETTABLEKS                       R1 R1 K18 ["FontFamily"]
       93 RETURN                           R1 1
       94 JUMPIFNOTEQKS                    R0 K19 ["ASSET_TYPE_IMAGE"] ; [+7]
       96 GETUPVAL                         R1 0
       97 GETTABLEKS                       R1 R1 K1 ["AssetType"]
       99 GETTABLEKS                       R1 R1 K20 ["Image"]
      101 RETURN                           R1 1
      102 JUMPIFNOTEQKS                    R0 K21 ["ASSET_TYPE_MESH"] ; [+7]
      104 GETUPVAL                         R1 0
      105 GETTABLEKS                       R1 R1 K1 ["AssetType"]
      107 GETTABLEKS                       R1 R1 K22 ["Mesh"]
      109 RETURN                           R1 1
      110 LOADNIL                          R1
      111 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Flags"]
       20 GETTABLEKS                       R3 R3 K9 ["getFFlagAmrEnableTextDocuments"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 SETGLOBAL                        R3 K11 ["convertAssetTypeStringToEnum"]
       28 GETGLOBAL                        R3 K11 ["convertAssetTypeStringToEnum"]
       30 RETURN                           R3 1
