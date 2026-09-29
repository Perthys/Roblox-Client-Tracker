PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertAssetAsync"]
        3 DUPTABLE                         R1 K5 [{"assetId", "assetName", "assetType", "parentPath"}]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["assetId"]
        7 SETTABLEKS                       R2 R1 K1 ["assetId"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["assetName"]
       12 SETTABLEKS                       R2 R1 K2 ["assetName"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K3 ["assetType"]
       17 SETTABLEKS                       R2 R1 K3 ["assetType"]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K4 ["parentPath"]
       22 SETTABLEKS                       R2 R1 K4 ["parentPath"]
       24 CALL                             R0 1 -1
       25 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bridges"]
        3 GETTABLEKS                       R1 R1 K1 ["AssetInsert"]
        5 GETTABLEKS                       R1 R1 K2 ["createGuestContext"]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 CALL                             R1 2 1
       10 GETTABLEKS                       R1 R1 K3 ["bridge"]
       12 GETIMPORT                        R2 K5 [pcall]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R0
       17 CALL                             R2 1 2
       18 JUMPIF                           R2 ; [+33]
       19 GETUPVAL                         R4 1
       20 LOADK                            R5 K6 ["[AssetInsertTool] insertAssetAsync: ERROR: %*"]
       21 FASTCALL1                        TOSTRING R3 ; [+3]
       22 MOVE                             R8 R3
       23 GETIMPORT                        R7 K8 [tostring]
       25 CALL                             R7 1 1
       26 NAMECALL                         R5 R5 K9 ["format"]
       28 CALL                             R5 2 1
       29 CALL                             R4 1 0
       30 GETUPVAL                         R4 2
       31 CALL                             R4 0 1
       32 LOADK                            R6 K10 ["Failed to insert asset: %*"]
       33 FASTCALL1                        TOSTRING R3 ; [+3]
       34 MOVE                             R9 R3
       35 GETIMPORT                        R8 K8 [tostring]
       37 CALL                             R8 1 1
       38 NAMECALL                         R6 R6 K9 ["format"]
       40 CALL                             R6 2 1
       41 NAMECALL                         R4 R4 K11 ["addText"]
       43 CALL                             R4 2 1
       44 LOADB                            R6 1
       45 NAMECALL                         R4 R4 K12 ["setError"]
       47 CALL                             R4 2 1
       48 NAMECALL                         R4 R4 K13 ["build"]
       50 CALL                             R4 1 -1
       51 RETURN                           R4 -1
       52 GETTABLEKS                       R4 R3 K14 ["responseInfo"]
       54 JUMPIFNOT                        R4 ; [+26]
       55 GETTABLEKS                       R4 R3 K14 ["responseInfo"]
       57 DUPTABLE                         R5 K17 [{"tag", "assetName"}]
       58 GETTABLEKS                       R6 R4 K15 ["tag"]
       60 SETTABLEKS                       R6 R5 K15 ["tag"]
       62 GETTABLEKS                       R6 R4 K16 ["assetName"]
       64 SETTABLEKS                       R6 R5 K16 ["assetName"]
       66 GETUPVAL                         R6 2
       67 CALL                             R6 0 1
       68 GETTABLEKS                       R8 R3 K18 ["result"]
       70 NAMECALL                         R6 R6 K11 ["addText"]
       72 CALL                             R6 2 1
       73 MOVE                             R8 R5
       74 NAMECALL                         R6 R6 K19 ["setStructuredContent"]
       76 CALL                             R6 2 1
       77 NAMECALL                         R6 R6 K13 ["build"]
       79 CALL                             R6 1 -1
       80 RETURN                           R6 -1
       81 GETUPVAL                         R4 2
       82 CALL                             R4 0 1
       83 GETTABLEKS                       R6 R3 K18 ["result"]
       85 NAMECALL                         R4 R4 K11 ["addText"]
       87 CALL                             R4 2 1
       88 LOADB                            R6 1
       89 NAMECALL                         R4 R4 K12 ["setError"]
       91 CALL                             R4 2 1
       92 NAMECALL                         R4 R4 K13 ["build"]
       94 CALL                             R4 1 -1
       95 RETURN                           R4 -1

PROTO_2:
        0 LOADK                            R0 K0 ["Insert an asset into the scene by ID"]
        1 RETURN                           R0 1

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["AssetInsert"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K5 [{"assetId"}]
        7 GETUPVAL                         R3 1
        8 SETTABLEKS                       R3 R2 K4 ["assetId"]
       10 SETTABLEKS                       R2 R1 K1 ["arguments"]
       12 RETURN                           R1 1

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R1
        6 SETLIST                          R2 R3 1 [1]
        8 RETURN                           R2 1

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["define"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R4 R4 K1 ["AssetInsert"]
       11 NAMECALL                         R2 R2 K2 ["setName"]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K3 ["replaceTokens"]
       17 LOADK                            R5 K4 ["Inserts an asset into the game by its numeric Roblox asset ID.\nUse this tool when you have a specific asset ID to insert directly, rather than searching the Creator Store.\nThe asset will be loaded, validated, and placed in the scene.\nAlways provide assetName when you know the name of the asset (e.g. from search results or user request). The inserted instance will be named using assetName — if omitted, it defaults to a generic name.\nSupports models, meshes, images/decals, audio, video, animations, and packages.\n"]
       18 CALL                             R4 1 -1
       19 NAMECALL                         R2 R2 K5 ["setDescription"]
       21 CALL                             R2 -1 1
       22 LOADK                            R4 K6 ["assetId"]
       23 DUPTABLE                         R5 K11 [{["type"] = "string", ["description"] = "Numeric Roblox asset ID to insert."}]
       24 NAMECALL                         R2 R2 K12 ["addArgument"]
       26 CALL                             R2 3 1
       27 LOADK                            R4 K13 ["assetName"]
       28 DUPTABLE                         R5 K15 [{["type"] = "string", ["description"] = "Name for the inserted instance in the game tree. Always provide this when you know the asset name (e.g. from search_asset results). If omitted, defaults to a generic name."}]
       29 NAMECALL                         R2 R2 K16 ["addOptionalArgument"]
       31 CALL                             R2 3 1
       32 LOADK                            R4 K17 ["assetType"]
       33 DUPTABLE                         R5 K20 [{["type"] = "string", ["enum"], ["description"] = "Asset type hint. If provided, skips the metadata API lookup and uses this type directly. Use when the caller already knows the asset type (e.g. from inventory search results). 'Image' and 'Decal' both insert as a Decal instance."}]
       34 NEWTABLE                         R6 0 9
       36 LOADK                            R7 K21 ["Model"]
       37 LOADK                            R8 K22 ["Package"]
       38 LOADK                            R9 K23 ["Mesh"]
       39 LOADK                            R10 K24 ["MeshPart"]
       40 LOADK                            R11 K25 ["Image"]
       41 LOADK                            R12 K26 ["Decal"]
       42 LOADK                            R13 K27 ["Audio"]
       43 LOADK                            R14 K28 ["Video"]
       44 LOADK                            R15 K29 ["Animation"]
       45 SETLIST                          R6 R7 9 [1]
       47 SETTABLEKS                       R6 R5 K18 ["enum"]
       49 NAMECALL                         R2 R2 K16 ["addOptionalArgument"]
       51 CALL                             R2 3 1
       52 LOADK                            R4 K30 ["parentPath"]
       53 DUPTABLE                         R5 K32 [{["type"] = "string", ["description"] = "DataModel path to parent the asset under (e.g. game.Workspace.Folder1). Defaults to workspace."}]
       54 NAMECALL                         R2 R2 K16 ["addOptionalArgument"]
       56 CALL                             R2 3 1
       57 MOVE                             R4 R1
       58 NAMECALL                         R2 R2 K33 ["setHandler"]
       60 CALL                             R2 2 1
       61 DUPTABLE                         R4 K41 [{["title"] = "Insert Asset", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       62 NAMECALL                         R2 R2 K42 ["setAnnotations"]
       64 CALL                             R2 2 1
       65 NAMECALL                         R2 R2 K43 ["build"]
       67 CALL                             R2 1 1
       68 DUPTABLE                         R3 K48 [{["command"] = "insert_asset", ["getDescription"], ["runToolChain"]}]
       69 DUPCLOSURE                       R4 K49 [PROTO_2]
       70 SETTABLEKS                       R4 R3 K46 ["getDescription"]
       72 DUPCLOSURE                       R4 K50 [PROTO_4]
       73 CAPTURE                          UPVAL U3
       74 SETTABLEKS                       R4 R3 K47 ["runToolChain"]
       76 DUPTABLE                         R4 K53 [{"definition", "slashCommands"}]
       77 SETTABLEKS                       R2 R4 K51 ["definition"]
       79 NEWTABLE                         R5 0 1
       81 MOVE                             R6 R3
       82 SETLIST                          R5 R6 1 [1]
       84 SETTABLEKS                       R5 R4 K52 ["slashCommands"]
       86 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 GETTABLEKS                       R2 R2 K8 ["AssetManagementUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["ModelContextProtocol"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Tools"]
       27 GETTABLEKS                       R4 R4 K12 ["ToolTypes"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K13 ["Types"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K6 ["Util"]
       37 GETTABLEKS                       R5 R5 K14 ["ToolBuilder"]
       39 GETTABLEKS                       R6 R2 K6 ["Util"]
       41 GETTABLEKS                       R6 R6 K15 ["ToolResult"]
       43 GETTABLEKS                       R7 R3 K16 ["ToolNames"]
       45 GETTABLEKS                       R8 R1 K17 ["debugPrint"]
       47 DUPCLOSURE                       R9 K18 [PROTO_5]
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R7
       52 RETURN                           R9 1
