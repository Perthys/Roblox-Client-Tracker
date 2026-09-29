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
       22 JUMPIFNOT                        R1 ; [+1]
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
       42 JUMPIFNOT                        R2 ; [+5]
       43 GETIMPORT                        R2 K18 [error]
       45 LOADK                            R3 K19 ["roblox-cli should not be loading standalone plugins"]
       46 CALL                             R2 1 0
       47 RETURN                           R0 0
       48 GETIMPORT                        R2 K21 [plugin]
       50 GETTABLEKS                       R3 R0 K22 ["Name"]
       52 SETTABLEKS                       R3 R2 K22 ["Name"]
       54 GETIMPORT                        R2 K5 [require]
       56 GETTABLEKS                       R3 R0 K14 ["Packages"]
       58 GETTABLEKS                       R3 R3 K23 ["PluginLoader"]
       60 CALL                             R2 1 1
       61 GETTABLEKS                       R3 R2 K24 ["PluginLoaderBuilder"]
       63 DUPTABLE                         R4 K32 [{["getName"], ["getDescription"], ["icon"] = "", ["enabled"] = True, ["clickableWhenViewportHidden"] = True}]
       64 DUPCLOSURE                       R5 K33 [PROTO_0]
       65 SETTABLEKS                       R5 R4 K25 ["getName"]
       67 DUPCLOSURE                       R5 K34 [PROTO_1]
       68 SETTABLEKS                       R5 R4 K26 ["getDescription"]
       70 GETTABLEKS                       R5 R0 K35 ["Src"]
       72 GETTABLEKS                       R5 R5 K36 ["Resources"]
       74 GETTABLEKS                       R5 R5 K37 ["Localization"]
       76 GETTABLEKS                       R5 R5 K38 ["SourceStrings"]
       78 GETTABLEKS                       R6 R0 K35 ["Src"]
       80 GETTABLEKS                       R6 R6 K36 ["Resources"]
       82 GETTABLEKS                       R6 R6 K37 ["Localization"]
       84 GETTABLEKS                       R6 R6 K39 ["LocalizedStrings"]
       86 DUPTABLE                         R7 K45 [{["plugin"], ["pluginName"] = "AssetManager", ["getToolbarName"], ["translationResourceTable"], ["fallbackResourceTable"], ["buttonInfo"]}]
       87 GETIMPORT                        R8 K21 [plugin]
       89 SETTABLEKS                       R8 R7 K20 ["plugin"]
       91 DUPCLOSURE                       R8 K46 [PROTO_2]
       92 SETTABLEKS                       R8 R7 K41 ["getToolbarName"]
       94 SETTABLEKS                       R6 R7 K42 ["translationResourceTable"]
       96 SETTABLEKS                       R5 R7 K43 ["fallbackResourceTable"]
       98 SETTABLEKS                       R4 R7 K44 ["buttonInfo"]
      100 DUPTABLE                         R8 K51 [{["id"] = "AssetManager", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
      101 GETIMPORT                        R9 K54 [DockWidgetPluginGuiInfo.new]
      103 GETIMPORT                        R10 K58 [Enum.InitialDockState.Bottom]
      105 LOADB                            R11 0
      106 LOADB                            R12 0
      107 LOADN                            R13 640
      108 LOADN                            R14 480
      109 LOADN                            R15 250
      110 LOADN                            R16 200
      111 CALL                             R9 7 1
      112 SETTABLEKS                       R9 R8 K48 ["dockWidgetPluginGuiInfo"]
      114 DUPCLOSURE                       R9 K59 [PROTO_3]
      115 SETTABLEKS                       R9 R8 K49 ["getDockTitle"]
      117 GETIMPORT                        R9 K62 [Enum.ZIndexBehavior.Sibling]
      119 SETTABLEKS                       R9 R8 K50 ["zIndexBehavior"]
      121 SETTABLEKS                       R8 R7 K63 ["dockWidgetInfo"]
      123 GETTABLEKS                       R8 R3 K64 ["build"]
      125 MOVE                             R9 R7
      126 CALL                             R8 1 1
      127 GETTABLEKS                       R9 R8 K65 ["pluginLoader"]
      129 NAMECALL                         R9 R9 K66 ["waitForUserInteraction"]
      131 CALL                             R9 1 1
      132 JUMPIF                           R9 ; [+1]
      133 RETURN                           R0 0
      134 GETIMPORT                        R10 K5 [require]
      136 GETTABLEKS                       R11 R0 K6 ["Bin"]
      138 GETTABLEKS                       R11 R11 K7 ["Common"]
      140 GETTABLEKS                       R11 R11 K67 ["main"]
      142 CALL                             R10 1 1
      143 MOVE                             R11 R10
      144 GETIMPORT                        R12 K21 [plugin]
      146 MOVE                             R13 R8
      147 CALL                             R11 2 0
      148 RETURN                           R0 0
