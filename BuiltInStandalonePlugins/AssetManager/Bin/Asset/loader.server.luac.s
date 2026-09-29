PROTO_0:
        0 LOADK                            R3 K0 ["assetManagerToolButton"]
        1 RETURN                           R3 1

PROTO_1:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_2:
        0 LOADK                            R3 K0 ["assetManagerToolbar"]
        1 RETURN                           R3 1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 0
       16 GETIMPORT                        R1 K10 [game]
       18 LOADK                            R3 K11 ["DebugAssetMgInAssetDm"]
       19 NAMECALL                         R1 R1 K12 ["GetFastFlag"]
       21 CALL                             R1 2 1
       22 JUMPIF                           R1 ; [+1]
       23 RETURN                           R0 0
       24 GETIMPORT                        R1 K10 [game]
       26 LOADK                            R3 K13 ["EnableAssetManager"]
       27 NAMECALL                         R1 R1 K12 ["GetFastFlag"]
       29 CALL                             R1 2 1
       30 JUMPIF                           R1 ; [+1]
       31 RETURN                           R0 0
       32 GETIMPORT                        R1 K5 [require]
       34 GETTABLEKS                       R2 R0 K14 ["Packages"]
       36 GETTABLEKS                       R2 R2 K15 ["TestLoader"]
       38 CALL                             R1 1 1
       39 GETTABLEKS                       R2 R1 K16 ["isCli"]
       41 CALL                             R2 0 1
       42 JUMPIFNOT                        R2 ; [+1]
       43 RETURN                           R0 0
       44 GETIMPORT                        R2 K18 [plugin]
       46 GETTABLEKS                       R3 R0 K19 ["Name"]
       48 SETTABLEKS                       R3 R2 K19 ["Name"]
       50 GETIMPORT                        R2 K5 [require]
       52 GETTABLEKS                       R3 R0 K14 ["Packages"]
       54 GETTABLEKS                       R3 R3 K20 ["PluginLoader"]
       56 CALL                             R2 1 1
       57 GETTABLEKS                       R3 R2 K21 ["PluginLoaderBuilder"]
       59 DUPTABLE                         R4 K29 [{["getName"], ["getDescription"], ["icon"] = "", ["enabled"] = True, ["clickableWhenViewportHidden"] = True}]
       60 DUPCLOSURE                       R5 K30 [PROTO_0]
       61 SETTABLEKS                       R5 R4 K22 ["getName"]
       63 DUPCLOSURE                       R5 K31 [PROTO_1]
       64 SETTABLEKS                       R5 R4 K23 ["getDescription"]
       66 GETTABLEKS                       R5 R0 K32 ["Src"]
       68 GETTABLEKS                       R5 R5 K33 ["Resources"]
       70 GETTABLEKS                       R5 R5 K34 ["Localization"]
       72 GETTABLEKS                       R5 R5 K35 ["SourceStrings"]
       74 GETTABLEKS                       R6 R0 K32 ["Src"]
       76 GETTABLEKS                       R6 R6 K33 ["Resources"]
       78 GETTABLEKS                       R6 R6 K34 ["Localization"]
       80 GETTABLEKS                       R6 R6 K36 ["LocalizedStrings"]
       82 DUPTABLE                         R7 K42 [{["plugin"], ["pluginName"] = "AssetManager", ["getToolbarName"], ["translationResourceTable"], ["fallbackResourceTable"], ["buttonInfo"]}]
       83 GETIMPORT                        R8 K18 [plugin]
       85 SETTABLEKS                       R8 R7 K17 ["plugin"]
       87 DUPCLOSURE                       R8 K43 [PROTO_2]
       88 SETTABLEKS                       R8 R7 K38 ["getToolbarName"]
       90 SETTABLEKS                       R6 R7 K39 ["translationResourceTable"]
       92 SETTABLEKS                       R5 R7 K40 ["fallbackResourceTable"]
       94 SETTABLEKS                       R4 R7 K41 ["buttonInfo"]
       96 DUPTABLE                         R8 K48 [{["id"] = "AssetManager", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       97 GETIMPORT                        R9 K51 [DockWidgetPluginGuiInfo.new]
       99 GETIMPORT                        R10 K55 [Enum.InitialDockState.Bottom]
      101 LOADB                            R11 0
      102 LOADB                            R12 0
      103 LOADN                            R13 640
      104 LOADN                            R14 480
      105 LOADN                            R15 250
      106 LOADN                            R16 200
      107 CALL                             R9 7 1
      108 SETTABLEKS                       R9 R8 K45 ["dockWidgetPluginGuiInfo"]
      110 DUPCLOSURE                       R9 K56 [PROTO_3]
      111 SETTABLEKS                       R9 R8 K46 ["getDockTitle"]
      113 GETIMPORT                        R9 K59 [Enum.ZIndexBehavior.Sibling]
      115 SETTABLEKS                       R9 R8 K47 ["zIndexBehavior"]
      117 SETTABLEKS                       R8 R7 K60 ["dockWidgetInfo"]
      119 GETTABLEKS                       R8 R3 K61 ["build"]
      121 MOVE                             R9 R7
      122 CALL                             R8 1 1
      123 GETTABLEKS                       R9 R8 K62 ["pluginLoader"]
      125 NAMECALL                         R9 R9 K63 ["waitForUserInteraction"]
      127 CALL                             R9 1 1
      128 JUMPIF                           R9 ; [+1]
      129 RETURN                           R0 0
      130 GETIMPORT                        R10 K5 [require]
      132 GETTABLEKS                       R11 R0 K32 ["Src"]
      134 GETTABLEKS                       R11 R11 K64 ["Asset"]
      136 GETTABLEKS                       R11 R11 K65 ["setupAssetsDm"]
      138 CALL                             R10 1 1
      139 MOVE                             R11 R10
      140 GETIMPORT                        R12 K18 [plugin]
      142 CALL                             R11 1 0
      143 GETIMPORT                        R11 K5 [require]
      145 GETTABLEKS                       R12 R0 K6 ["Bin"]
      147 GETTABLEKS                       R12 R12 K7 ["Common"]
      149 GETTABLEKS                       R12 R12 K66 ["main"]
      151 CALL                             R11 1 1
      152 MOVE                             R12 R11
      153 GETIMPORT                        R13 K18 [plugin]
      155 MOVE                             R14 R8
      156 CALL                             R12 2 0
      157 RETURN                           R0 0
