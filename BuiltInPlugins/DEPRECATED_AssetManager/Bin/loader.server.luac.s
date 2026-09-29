PROTO_0:
        0 LOADK                            R0 K0 ["assetManagerToolbar"]
        1 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R0 K0 ["assetManagerToolButton"]
        1 RETURN                           R0 1

PROTO_2:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Main"]
        4 LOADK                            R7 K1 ["Tooltip"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Main"]
        4 LOADK                            R7 K1 ["ToolbarButton"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_4:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Main"]
        4 LOADK                            R7 K1 ["Title"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_5:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Meta"]
        4 LOADK                            R7 K1 ["PluginName"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["BulkImportStarted"]
        3 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["BulkImportFinished"]
        3 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AssetImported"]
        3 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GameNameUpdated"]
        3 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AssetImportedSignal"]
        3 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ImportSessionStarted"]
        3 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ImportSessionFinished"]
        3 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["EnableAssetManager"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+1]
        8 RETURN                           R0 0
        9 GETIMPORT                        R0 K5 [require]
       11 GETIMPORT                        R1 K7 [script]
       13 GETTABLEKS                       R1 R1 K8 ["Parent"]
       15 GETTABLEKS                       R1 R1 K9 ["defineLuaFlags"]
       17 CALL                             R0 1 0
       18 GETIMPORT                        R0 K1 [game]
       20 LOADK                            R2 K10 ["EnableAssetManagerSortButton"]
       21 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
       23 CALL                             R0 2 1
       24 GETIMPORT                        R1 K7 [script]
       26 GETTABLEKS                       R1 R1 K8 ["Parent"]
       28 GETTABLEKS                       R1 R1 K8 ["Parent"]
       30 GETIMPORT                        R2 K5 [require]
       32 GETTABLEKS                       R3 R1 K11 ["Packages"]
       34 GETTABLEKS                       R3 R3 K12 ["PluginLoader"]
       36 CALL                             R2 1 1
       37 GETTABLEKS                       R3 R2 K13 ["PluginLoaderBuilder"]
       39 GETIMPORT                        R4 K1 [game]
       41 LOADK                            R6 K14 ["AssetManagerService"]
       42 NAMECALL                         R4 R4 K15 ["GetService"]
       44 CALL                             R4 2 1
       45 GETIMPORT                        R5 K1 [game]
       47 LOADK                            R7 K16 ["BulkImportService"]
       48 NAMECALL                         R5 R5 K15 ["GetService"]
       50 CALL                             R5 2 1
       51 GETIMPORT                        R6 K1 [game]
       53 LOADK                            R8 K17 ["StudioPublishService"]
       54 NAMECALL                         R6 R6 K15 ["GetService"]
       56 CALL                             R6 2 1
       57 GETTABLEKS                       R7 R1 K18 ["Src"]
       59 GETTABLEKS                       R7 R7 K19 ["Resources"]
       61 GETTABLEKS                       R7 R7 K20 ["SourceStrings"]
       63 GETTABLEKS                       R8 R1 K18 ["Src"]
       65 GETTABLEKS                       R8 R8 K19 ["Resources"]
       67 GETTABLEKS                       R8 R8 K21 ["LocalizedStrings"]
       69 DUPTABLE                         R9 K34 [{["plugin"], ["pluginName"] = "AssetManager", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"], ["extraTriggers"]}]
       70 GETIMPORT                        R10 K35 [plugin]
       72 SETTABLEKS                       R10 R9 K22 ["plugin"]
       74 SETTABLEKS                       R8 R9 K25 ["translationResourceTable"]
       76 SETTABLEKS                       R7 R9 K26 ["fallbackResourceTable"]
       78 DUPCLOSURE                       R10 K36 [PROTO_0]
       79 SETTABLEKS                       R10 R9 K30 ["getToolbarName"]
       81 DUPTABLE                         R10 K44 [{["getName"], ["getDescription"], ["icon"] = "rbxlocaltheme://AssetManager", ["text"], ["clickableWhenViewportHidden"] = True}]
       82 DUPCLOSURE                       R11 K45 [PROTO_1]
       83 SETTABLEKS                       R11 R10 K37 ["getName"]
       85 DUPCLOSURE                       R11 K46 [PROTO_2]
       86 SETTABLEKS                       R11 R10 K38 ["getDescription"]
       88 DUPCLOSURE                       R11 K47 [PROTO_3]
       89 SETTABLEKS                       R11 R10 K41 ["text"]
       91 SETTABLEKS                       R10 R9 K31 ["buttonInfo"]
       93 DUPTABLE                         R10 K54 [{["id"] = "AssetManager_PluginGui", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["name"], ["zIndexBehavior"]}]
       94 GETIMPORT                        R11 K57 [DockWidgetPluginGuiInfo.new]
       96 GETIMPORT                        R12 K61 [Enum.InitialDockState.Left]
       98 LOADB                            R13 0
       99 LOADB                            R14 0
      100 JUMPIFNOT                        R0 ; [+2]
      101 LOADN                            R15 350
      102 JUMP                             ; [+1]
      103 LOADN                            R15 300
      104 LOADN                            R16 600
      105 JUMPIFNOT                        R0 ; [+2]
      106 LOADN                            R17 350
      107 JUMP                             ; [+1]
      108 LOADN                            R17 270
      109 LOADN                            R18 256
      110 CALL                             R11 7 1
      111 SETTABLEKS                       R11 R10 K50 ["dockWidgetPluginGuiInfo"]
      113 DUPCLOSURE                       R11 K62 [PROTO_4]
      114 SETTABLEKS                       R11 R10 K51 ["getDockTitle"]
      116 DUPCLOSURE                       R11 K63 [PROTO_5]
      117 SETTABLEKS                       R11 R10 K52 ["name"]
      119 GETIMPORT                        R11 K66 [Enum.ZIndexBehavior.Sibling]
      121 SETTABLEKS                       R11 R10 K53 ["zIndexBehavior"]
      123 SETTABLEKS                       R10 R9 K32 ["dockWidgetInfo"]
      125 NEWTABLE                         R10 8 0
      127 DUPCLOSURE                       R11 K67 [PROTO_6]
      128 CAPTURE                          VAL R5
      129 SETTABLEKS                       R11 R10 K68 ["BulkImportService.BulkImportStarted"]
      131 DUPCLOSURE                       R11 K69 [PROTO_7]
      132 CAPTURE                          VAL R5
      133 SETTABLEKS                       R11 R10 K70 ["BulkImportService.BulkImportFinished"]
      135 DUPCLOSURE                       R11 K71 [PROTO_8]
      136 CAPTURE                          VAL R5
      137 SETTABLEKS                       R11 R10 K72 ["BulkImportService.AssetImported"]
      139 DUPCLOSURE                       R11 K73 [PROTO_9]
      140 CAPTURE                          VAL R6
      141 SETTABLEKS                       R11 R10 K74 ["StudioPublishService.GameNameUpdated"]
      143 DUPCLOSURE                       R11 K75 [PROTO_10]
      144 CAPTURE                          VAL R4
      145 SETTABLEKS                       R11 R10 K76 ["AssetManagerService.AssetImportedSignal"]
      147 DUPCLOSURE                       R11 K77 [PROTO_11]
      148 CAPTURE                          VAL R4
      149 SETTABLEKS                       R11 R10 K78 ["AssetManagerService.ImportSessionStarted"]
      151 DUPCLOSURE                       R11 K79 [PROTO_12]
      152 CAPTURE                          VAL R4
      153 SETTABLEKS                       R11 R10 K80 ["AssetManagerService.ImportSessionFinished"]
      155 SETTABLEKS                       R10 R9 K33 ["extraTriggers"]
      157 GETTABLEKS                       R10 R3 K81 ["build"]
      159 MOVE                             R11 R9
      160 CALL                             R10 1 1
      161 GETTABLEKS                       R11 R10 K82 ["pluginLoader"]
      163 NAMECALL                         R11 R11 K83 ["waitForUserInteraction"]
      165 CALL                             R11 1 1
      166 JUMPIF                           R11 ; [+1]
      167 RETURN                           R0 0
      168 GETIMPORT                        R12 K5 [require]
      170 GETIMPORT                        R13 K7 [script]
      172 GETTABLEKS                       R13 R13 K8 ["Parent"]
      174 GETTABLEKS                       R13 R13 K84 ["main"]
      176 CALL                             R12 1 1
      177 MOVE                             R13 R12
      178 GETIMPORT                        R14 K35 [plugin]
      180 MOVE                             R15 R10
      181 CALL                             R13 2 0
      182 RETURN                           R0 0
