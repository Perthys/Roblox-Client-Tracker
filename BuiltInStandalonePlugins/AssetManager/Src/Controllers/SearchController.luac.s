PROTO_0:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["Type"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["ScopeType"]
        6 GETTABLEKS                       R3 R3 K2 ["ProjectPlaces"]
        8 JUMPIFEQ                         R2 R3 ; [+12]
       10 GETTABLEKS                       R2 R0 K0 ["Type"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K1 ["ScopeType"]
       15 GETTABLEKS                       R3 R3 K3 ["Universe"]
       17 JUMPIFEQ                         R2 R3 ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["_pluginController"]
        5 NAMECALL                         R1 R1 K1 ["getGameInfo"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R2 R1 K2 ["Id"]
       10 JUMPIFEQKN                       R2 K3 [0] ; [+9]
       12 GETTABLEKS                       R4 R1 K4 ["Uid"]
       14 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       16 MOVE                             R3 R0
       17 GETIMPORT                        R2 K7 [table.insert]
       19 CALL                             R2 2 0
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K0 ["_pluginController"]
       23 NAMECALL                         R2 R2 K8 ["getUser"]
       25 CALL                             R2 1 1
       26 GETTABLEKS                       R2 R2 K4 ["Uid"]
       28 FASTCALL2                        TABLE_INSERT R0 R2 ; [+5]
       30 MOVE                             R4 R0
       31 MOVE                             R5 R2
       32 GETIMPORT                        R3 K7 [table.insert]
       34 CALL                             R3 2 0
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R3 R3 K9 ["append"]
       38 MOVE                             R4 R0
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R5 R5 K10 ["filter"]
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R6 R6 K11 ["_explorerController"]
       45 NAMECALL                         R6 R6 K12 ["getVisibleInventories"]
       47 CALL                             R6 1 1
       48 NEWCLOSURE                       R7 P0
       49 CAPTURE                          VAL R2
       50 CALL                             R5 2 -1
       51 CALL                             R3 -1 0
       52 GETUPVAL                         R3 0
       53 GETTABLEKS                       R3 R3 K11 ["_explorerController"]
       55 GETUPVAL                         R5 0
       56 GETTABLEKS                       R5 R5 K13 ["_searchOptions"]
       58 GETTABLEKS                       R5 R5 K14 ["ScopeInfo"]
       60 GETTABLEKS                       R5 R5 K4 ["Uid"]
       62 NAMECALL                         R3 R3 K15 ["getScopeWithUid"]
       64 CALL                             R3 2 1
       65 JUMPIF                           R3 ; [+5]
       66 GETUPVAL                         R3 0
       67 MOVE                             R5 R2
       68 NAMECALL                         R3 R3 K16 ["setScope"]
       70 CALL                             R3 2 0
       71 GETUPVAL                         R3 0
       72 SETTABLEKS                       R0 R3 K17 ["_sourceList"]
       74 GETUPVAL                         R3 0
       75 GETTABLEKS                       R3 R3 K18 ["OnSourceListChanged"]
       77 GETUPVAL                         R5 0
       78 GETTABLEKS                       R5 R5 K17 ["_sourceList"]
       80 NAMECALL                         R3 R3 K19 ["Fire"]
       82 CALL                             R3 2 0
       83 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_updateSourceList"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 JUMPIF                           R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["hideSearchOptions"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 MOVE                             R3 R0
        8 NAMECALL                         R1 R1 K1 ["_restoreSearchState"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["PluginController"]
        2 NAMECALL                         R2 R2 K1 ["getCurrentScope"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R0 K2 ["ExplorerController"]
        7 MOVE                             R5 R2
        8 NAMECALL                         R3 R3 K3 ["getScopeRoot"]
       10 CALL                             R3 2 1
       11 DUPTABLE                         R4 K29 [{["_isMock"], ["_networking"], ["_pluginController"], ["_explorerController"], ["_ixpController"], ["_pendingSearchTerm"] = "", ["_activeSearchTerm"] = "", ["_searchHistory"], ["_searchOptions"], ["_sourceList"], ["_showSearchOptions"] = False, ["_isDefaultSearchState"] = True, ["_searchSessionId"] = "", ["_connections"], ["OnSearchRequested"], ["OnPendingSearchTermChanged"], ["OnActiveSearchTermChanged"], ["OnSearchOptionsChanged"], ["OnSourceListChanged"], ["OnShowSearchOptionsChanged"], ["OnIsDefaultSearchStateChanged"], ["OnSearchHistoryChanged"]}]
       12 SETTABLEKS                       R1 R4 K4 ["_isMock"]
       14 GETTABLEKS                       R5 R0 K30 ["Networking"]
       16 SETTABLEKS                       R5 R4 K5 ["_networking"]
       18 GETTABLEKS                       R5 R0 K0 ["PluginController"]
       20 SETTABLEKS                       R5 R4 K6 ["_pluginController"]
       22 GETTABLEKS                       R5 R0 K2 ["ExplorerController"]
       24 SETTABLEKS                       R5 R4 K7 ["_explorerController"]
       26 GETTABLEKS                       R5 R0 K31 ["IxpController"]
       28 SETTABLEKS                       R5 R4 K8 ["_ixpController"]
       30 NEWTABLE                         R5 0 0
       32 SETTABLEKS                       R5 R4 K12 ["_searchHistory"]
       34 DUPTABLE                         R5 K34 [{"AssetType", "ScopeInfo"}]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K32 ["AssetType"]
       38 GETTABLEKS                       R6 R6 K35 ["Model"]
       40 SETTABLEKS                       R6 R5 K32 ["AssetType"]
       42 MOVE                             R6 R3
       43 JUMPIF                           R6 ; [+5]
       44 GETTABLEKS                       R6 R0 K0 ["PluginController"]
       46 NAMECALL                         R6 R6 K36 ["getUser"]
       48 CALL                             R6 1 1
       49 SETTABLEKS                       R6 R5 K33 ["ScopeInfo"]
       51 SETTABLEKS                       R5 R4 K13 ["_searchOptions"]
       53 NEWTABLE                         R5 0 0
       55 SETTABLEKS                       R5 R4 K14 ["_sourceList"]
       57 NEWTABLE                         R5 0 0
       59 SETTABLEKS                       R5 R4 K20 ["_connections"]
       61 GETUPVAL                         R5 1
       62 GETTABLEKS                       R5 R5 K37 ["new"]
       64 CALL                             R5 0 1
       65 SETTABLEKS                       R5 R4 K21 ["OnSearchRequested"]
       67 GETUPVAL                         R5 1
       68 GETTABLEKS                       R5 R5 K37 ["new"]
       70 CALL                             R5 0 1
       71 SETTABLEKS                       R5 R4 K22 ["OnPendingSearchTermChanged"]
       73 GETUPVAL                         R5 1
       74 GETTABLEKS                       R5 R5 K37 ["new"]
       76 CALL                             R5 0 1
       77 SETTABLEKS                       R5 R4 K23 ["OnActiveSearchTermChanged"]
       79 GETUPVAL                         R5 1
       80 GETTABLEKS                       R5 R5 K37 ["new"]
       82 CALL                             R5 0 1
       83 SETTABLEKS                       R5 R4 K24 ["OnSearchOptionsChanged"]
       85 GETUPVAL                         R5 1
       86 GETTABLEKS                       R5 R5 K37 ["new"]
       88 CALL                             R5 0 1
       89 SETTABLEKS                       R5 R4 K25 ["OnSourceListChanged"]
       91 GETUPVAL                         R5 1
       92 GETTABLEKS                       R5 R5 K37 ["new"]
       94 CALL                             R5 0 1
       95 SETTABLEKS                       R5 R4 K26 ["OnShowSearchOptionsChanged"]
       97 GETUPVAL                         R5 1
       98 GETTABLEKS                       R5 R5 K37 ["new"]
      100 CALL                             R5 0 1
      101 SETTABLEKS                       R5 R4 K27 ["OnIsDefaultSearchStateChanged"]
      103 GETUPVAL                         R5 1
      104 GETTABLEKS                       R5 R5 K37 ["new"]
      106 CALL                             R5 0 1
      107 SETTABLEKS                       R5 R4 K28 ["OnSearchHistoryChanged"]
      109 GETUPVAL                         R7 2
      110 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
      112 MOVE                             R6 R4
      113 GETIMPORT                        R5 K39 [setmetatable]
      115 CALL                             R5 2 0
      116 NEWCLOSURE                       R5 P0
      117 CAPTURE                          VAL R4
      118 CAPTURE                          UPVAL U3
      119 SETTABLEKS                       R5 R4 K40 ["_updateSourceList"]
      121 GETTABLEKS                       R6 R4 K20 ["_connections"]
      123 GETTABLEKS                       R7 R4 K7 ["_explorerController"]
      125 GETTABLEKS                       R7 R7 K41 ["OnExplorerItemsChanged"]
      127 NEWCLOSURE                       R9 P1
      128 CAPTURE                          VAL R4
      129 NAMECALL                         R7 R7 K42 ["Connect"]
      131 CALL                             R7 2 -1
      132 FASTCALL                         TABLE_INSERT ; [+2]
      133 GETIMPORT                        R5 K45 [table.insert]
      135 CALL                             R5 -1 0
      136 GETTABLEKS                       R6 R4 K20 ["_connections"]
      138 GETTABLEKS                       R7 R4 K7 ["_explorerController"]
      140 GETTABLEKS                       R7 R7 K46 ["OnRestoreSearchState"]
      142 NEWCLOSURE                       R9 P2
      143 CAPTURE                          VAL R4
      144 NAMECALL                         R7 R7 K42 ["Connect"]
      146 CALL                             R7 2 -1
      147 FASTCALL                         TABLE_INSERT ; [+2]
      148 GETIMPORT                        R5 K45 [table.insert]
      150 CALL                             R5 -1 0
      151 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_connections"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R1 K0 ["SearchTerm"]
        2 SETTABLEKS                       R2 R0 K1 ["_pendingSearchTerm"]
        4 SETTABLEKS                       R2 R0 K2 ["_activeSearchTerm"]
        6 GETIMPORT                        R3 K5 [table.clone]
        8 GETTABLEKS                       R4 R1 K6 ["SearchOptions"]
       10 CALL                             R3 1 1
       11 SETTABLEKS                       R3 R0 K7 ["_searchOptions"]
       13 GETTABLEKS                       R3 R1 K8 ["SearchSessionId"]
       15 SETTABLEKS                       R3 R0 K9 ["_searchSessionId"]
       17 JUMPIFEQKS                       R2 K10 [""] ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 SETTABLEKS                       R3 R0 K11 ["_isDefaultSearchState"]
       23 GETTABLEKS                       R3 R0 K12 ["_showSearchOptions"]
       25 JUMPIF                           R3 ; [+9]
       26 LOADB                            R3 1
       27 SETTABLEKS                       R3 R0 K12 ["_showSearchOptions"]
       29 GETTABLEKS                       R3 R0 K13 ["OnShowSearchOptionsChanged"]
       31 LOADB                            R5 1
       32 NAMECALL                         R3 R3 K14 ["Fire"]
       34 CALL                             R3 2 0
       35 GETTABLEKS                       R3 R0 K15 ["OnPendingSearchTermChanged"]
       37 GETTABLEKS                       R5 R0 K1 ["_pendingSearchTerm"]
       39 NAMECALL                         R3 R3 K14 ["Fire"]
       41 CALL                             R3 2 0
       42 GETTABLEKS                       R3 R0 K16 ["OnActiveSearchTermChanged"]
       44 GETTABLEKS                       R5 R0 K2 ["_activeSearchTerm"]
       46 NAMECALL                         R3 R3 K14 ["Fire"]
       48 CALL                             R3 2 0
       49 GETTABLEKS                       R3 R0 K17 ["OnSearchOptionsChanged"]
       51 GETTABLEKS                       R5 R0 K7 ["_searchOptions"]
       53 NAMECALL                         R3 R3 K14 ["Fire"]
       55 CALL                             R3 2 0
       56 GETTABLEKS                       R3 R0 K18 ["OnIsDefaultSearchStateChanged"]
       58 GETTABLEKS                       R5 R0 K11 ["_isDefaultSearchState"]
       60 NAMECALL                         R3 R3 K14 ["Fire"]
       62 CALL                             R3 2 0
       63 GETTABLEKS                       R3 R0 K11 ["_isDefaultSearchState"]
       65 JUMPIF                           R3 ; [+5]
       66 GETTABLEKS                       R3 R0 K19 ["OnSearchRequested"]
       68 NAMECALL                         R3 R3 K14 ["Fire"]
       70 CALL                             R3 1 0
       71 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_pendingSearchTerm"]
        2 RETURN                           R1 1

PROTO_10:
        0 SETTABLEKS                       R1 R0 K0 ["_pendingSearchTerm"]
        2 GETTABLEKS                       R2 R0 K1 ["OnPendingSearchTermChanged"]
        4 GETTABLEKS                       R4 R0 K0 ["_pendingSearchTerm"]
        6 NAMECALL                         R2 R2 K2 ["Fire"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_activeSearchTerm"]
        2 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_sourceList"]
        2 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_pendingSearchTerm"]
        2 JUMPIFNOTEQKS                    R1 K1 [""] ; [+15]
        4 GETTABLEKS                       R1 R0 K2 ["_isDefaultSearchState"]
        6 JUMPIF                           R1 ; [+10]
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K2 ["_isDefaultSearchState"]
       10 GETTABLEKS                       R1 R0 K3 ["OnIsDefaultSearchStateChanged"]
       12 GETTABLEKS                       R3 R0 K2 ["_isDefaultSearchState"]
       14 NAMECALL                         R1 R1 K4 ["Fire"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0
       18 GETTABLEKS                       R1 R0 K2 ["_isDefaultSearchState"]
       20 JUMPIFNOT                        R1 ; [+10]
       21 LOADB                            R1 0
       22 SETTABLEKS                       R1 R0 K2 ["_isDefaultSearchState"]
       24 GETTABLEKS                       R1 R0 K3 ["OnIsDefaultSearchStateChanged"]
       26 GETTABLEKS                       R3 R0 K2 ["_isDefaultSearchState"]
       28 NAMECALL                         R1 R1 K4 ["Fire"]
       30 CALL                             R1 2 0
       31 GETTABLEKS                       R1 R0 K0 ["_pendingSearchTerm"]
       33 SETTABLEKS                       R1 R0 K5 ["_activeSearchTerm"]
       35 GETTABLEKS                       R1 R0 K6 ["OnActiveSearchTermChanged"]
       37 GETTABLEKS                       R3 R0 K5 ["_activeSearchTerm"]
       39 NAMECALL                         R1 R1 K4 ["Fire"]
       41 CALL                             R1 2 0
       42 GETTABLEKS                       R1 R0 K7 ["OnSearchRequested"]
       44 NAMECALL                         R1 R1 K4 ["Fire"]
       46 CALL                             R1 1 0
       47 GETTABLEKS                       R1 R0 K8 ["_explorerController"]
       49 DUPTABLE                         R3 K10 [{"SearchState"}]
       50 NAMECALL                         R4 R0 K11 ["_getSearchState"]
       52 CALL                             R4 1 1
       53 SETTABLEKS                       R4 R3 K9 ["SearchState"]
       55 NAMECALL                         R1 R1 K12 ["updateCurrentHistoryItem"]
       57 CALL                             R1 2 0
       58 NAMECALL                         R1 R0 K13 ["_pushSearchHistoryItem"]
       60 CALL                             R1 1 0
       61 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_searchOptions"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["_searchOptions"]
        2 GETTABLEKS                       R2 R2 K1 ["ScopeInfo"]
        4 GETTABLEKS                       R2 R2 K2 ["Uid"]
        6 JUMPIFNOTEQ                      R1 R2 ; [+2]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R2 R0 K3 ["_explorerController"]
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K4 ["getScopeWithUid"]
       14 CALL                             R2 2 1
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 RETURN                           R0 0
       18 GETTABLEKS                       R3 R2 K5 ["Type"]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K6 ["ScopeType"]
       23 GETTABLEKS                       R4 R4 K7 ["ProjectPlaces"]
       25 JUMPIFNOTEQ                      R3 R4 ; [+10]
       27 GETTABLEKS                       R3 R0 K0 ["_searchOptions"]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K8 ["AssetType"]
       32 GETTABLEKS                       R4 R4 K9 ["Place"]
       34 SETTABLEKS                       R4 R3 K8 ["AssetType"]
       36 MOVE                             R5 R2
       37 NAMECALL                         R3 R0 K10 ["_getValidScope"]
       39 CALL                             R3 2 1
       40 MOVE                             R2 R3
       41 GETTABLEKS                       R3 R0 K0 ["_searchOptions"]
       43 SETTABLEKS                       R2 R3 K1 ["ScopeInfo"]
       45 GETTABLEKS                       R5 R0 K0 ["_searchOptions"]
       47 NAMECALL                         R3 R0 K11 ["setSearchOptions"]
       49 CALL                             R3 2 0
       50 RETURN                           R0 0

PROTO_16:
        0 MOVE                             R2 R1
        1 GETTABLEKS                       R3 R1 K0 ["Type"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["ScopeType"]
        6 GETTABLEKS                       R4 R4 K2 ["RecentUploads"]
        8 JUMPIFNOTEQ                      R3 R4 ; [+8]
       10 GETTABLEKS                       R3 R0 K3 ["_pluginController"]
       12 NAMECALL                         R3 R3 K4 ["getUser"]
       14 CALL                             R3 1 1
       15 MOVE                             R2 R3
       16 RETURN                           R2 1
       17 LOADB                            R3 1
       18 GETTABLEKS                       R4 R1 K0 ["Type"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K1 ["ScopeType"]
       23 GETTABLEKS                       R5 R5 K5 ["ProjectPlaces"]
       25 JUMPIFEQ                         R4 R5 ; [+12]
       27 GETTABLEKS                       R4 R1 K0 ["Type"]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K1 ["ScopeType"]
       32 GETTABLEKS                       R5 R5 K6 ["Universe"]
       34 JUMPIFEQ                         R4 R5 ; [+2]
       36 LOADB                            R3 0 +1
       37 LOADB                            R3 1
       38 JUMPIFNOT                        R3 ; [+6]
       39 GETTABLEKS                       R3 R0 K3 ["_pluginController"]
       41 NAMECALL                         R3 R3 K7 ["getGameInfo"]
       43 CALL                             R3 1 1
       44 MOVE                             R2 R3
       45 RETURN                           R2 1

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["_searchOptions"]
        2 GETTABLEKS                       R2 R2 K1 ["AssetType"]
        4 JUMPIFNOTEQ                      R1 R2 ; [+2]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R0 K0 ["_searchOptions"]
        9 SETTABLEKS                       R1 R2 K1 ["AssetType"]
       11 GETTABLEKS                       R4 R0 K0 ["_searchOptions"]
       13 NAMECALL                         R2 R0 K2 ["setSearchOptions"]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_18:
        0 SETTABLEKS                       R1 R0 K0 ["_searchOptions"]
        2 GETTABLEKS                       R2 R0 K1 ["OnSearchOptionsChanged"]
        4 GETIMPORT                        R4 K4 [table.clone]
        6 GETTABLEKS                       R5 R0 K0 ["_searchOptions"]
        8 CALL                             R4 1 -1
        9 NAMECALL                         R2 R2 K5 ["Fire"]
       11 CALL                             R2 -1 0
       12 NAMECALL                         R2 R0 K6 ["requestSearch"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["_isDefaultSearchState"]
        2 RETURN                           R1 1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_showSearchOptions"]
        2 RETURN                           R1 1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["_showSearchOptions"]
        2 JUMPIFNOTEQKB                    R1 TRUE ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K1 ["_explorerController"]
        7 GETTABLEKS                       R3 R0 K2 ["_pluginController"]
        9 NAMECALL                         R3 R3 K3 ["getCurrentScope"]
       11 CALL                             R3 1 -1
       12 NAMECALL                         R1 R1 K4 ["getScopeRoot"]
       14 CALL                             R1 -1 1
       15 JUMPIF                           R1 ; [+5]
       16 GETTABLEKS                       R1 R0 K2 ["_pluginController"]
       18 NAMECALL                         R1 R1 K5 ["getUser"]
       20 CALL                             R1 1 1
       21 GETTABLEKS                       R4 R1 K6 ["Uid"]
       23 NAMECALL                         R2 R0 K7 ["setScope"]
       25 CALL                             R2 2 0
       26 LOADB                            R2 1
       27 SETTABLEKS                       R2 R0 K0 ["_showSearchOptions"]
       29 LOADB                            R2 1
       30 SETTABLEKS                       R2 R0 K8 ["_isDefaultSearchState"]
       32 GETTABLEKS                       R2 R0 K9 ["OnIsDefaultSearchStateChanged"]
       34 GETTABLEKS                       R4 R0 K8 ["_isDefaultSearchState"]
       36 NAMECALL                         R2 R2 K10 ["Fire"]
       38 CALL                             R2 2 0
       39 GETTABLEKS                       R2 R0 K11 ["OnShowSearchOptionsChanged"]
       41 LOADB                            R4 1
       42 NAMECALL                         R2 R2 K10 ["Fire"]
       44 CALL                             R2 2 0
       45 GETUPVAL                         R2 0
       46 NAMECALL                         R2 R2 K12 ["GenerateGUID"]
       48 CALL                             R2 1 1
       49 SETTABLEKS                       R2 R0 K13 ["_searchSessionId"]
       51 GETTABLEKS                       R2 R0 K1 ["_explorerController"]
       53 DUPTABLE                         R4 K15 [{"SearchState"}]
       54 NAMECALL                         R5 R0 K16 ["_getSearchState"]
       56 CALL                             R5 1 1
       57 SETTABLEKS                       R5 R4 K14 ["SearchState"]
       59 NAMECALL                         R2 R2 K17 ["addToHistory"]
       61 CALL                             R2 2 0
       62 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["_showSearchOptions"]
        2 JUMPIFEQKB                       R1 FALSE ; [+84]
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K0 ["_showSearchOptions"]
        7 GETTABLEKS                       R1 R0 K1 ["OnShowSearchOptionsChanged"]
        9 LOADB                            R3 0
       10 NAMECALL                         R1 R1 K2 ["Fire"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K3 ["AssetType"]
       16 GETTABLEKS                       R1 R1 K4 ["Model"]
       18 GETTABLEKS                       R2 R0 K5 ["_pluginController"]
       20 NAMECALL                         R2 R2 K6 ["getCurrentScope"]
       22 CALL                             R2 1 1
       23 JUMPIF                           R2 ; [+11]
       24 GETUPVAL                         R3 1
       25 LOADK                            R4 K7 ["SearchController:hideSearchOptions - no current scope found, defaulting to user scope"]
       26 LOADK                            R5 K8 ["WARN"]
       27 CALL                             R3 2 0
       28 GETTABLEKS                       R3 R0 K5 ["_pluginController"]
       30 NAMECALL                         R3 R3 K9 ["getUser"]
       32 CALL                             R3 1 1
       33 MOVE                             R2 R3
       34 JUMP                             ; [+19]
       35 GETTABLEKS                       R3 R2 K10 ["Type"]
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R4 R4 K11 ["ScopeType"]
       40 GETTABLEKS                       R4 R4 K12 ["ProjectPlaces"]
       42 JUMPIFNOTEQ                      R3 R4 ; [+6]
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R3 R3 K3 ["AssetType"]
       47 GETTABLEKS                       R1 R3 K13 ["Place"]
       49 MOVE                             R5 R2
       50 NAMECALL                         R3 R0 K14 ["_getValidScope"]
       52 CALL                             R3 2 1
       53 MOVE                             R2 R3
       54 LOADK                            R5 K15 [""]
       55 NAMECALL                         R3 R0 K16 ["setPendingSearchTerm"]
       57 CALL                             R3 2 0
       58 LOADK                            R3 K15 [""]
       59 SETTABLEKS                       R3 R0 K17 ["_activeSearchTerm"]
       61 GETTABLEKS                       R3 R0 K18 ["OnActiveSearchTermChanged"]
       63 LOADK                            R5 K15 [""]
       64 NAMECALL                         R3 R3 K2 ["Fire"]
       66 CALL                             R3 2 0
       67 DUPTABLE                         R3 K20 [{"AssetType", "ScopeInfo"}]
       68 SETTABLEKS                       R1 R3 K3 ["AssetType"]
       70 SETTABLEKS                       R2 R3 K19 ["ScopeInfo"]
       72 SETTABLEKS                       R3 R0 K21 ["_searchOptions"]
       74 GETTABLEKS                       R3 R0 K22 ["OnSearchOptionsChanged"]
       76 GETIMPORT                        R5 K25 [table.clone]
       78 GETTABLEKS                       R6 R0 K21 ["_searchOptions"]
       80 CALL                             R5 1 -1
       81 NAMECALL                         R3 R3 K2 ["Fire"]
       83 CALL                             R3 -1 0
       84 LOADK                            R3 K15 [""]
       85 SETTABLEKS                       R3 R0 K26 ["_searchSessionId"]
       87 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["_searchSessionId"]
        2 RETURN                           R1 1

PROTO_24:
        0 DUPTABLE                         R1 K3 [{"SearchTerm", "SearchOptions", "SearchSessionId"}]
        1 GETTABLEKS                       R2 R0 K4 ["_activeSearchTerm"]
        3 SETTABLEKS                       R2 R1 K0 ["SearchTerm"]
        5 GETIMPORT                        R2 K7 [table.clone]
        7 GETTABLEKS                       R3 R0 K8 ["_searchOptions"]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K1 ["SearchOptions"]
       12 GETTABLEKS                       R2 R0 K9 ["_searchSessionId"]
       14 SETTABLEKS                       R2 R1 K2 ["SearchSessionId"]
       16 RETURN                           R1 1

PROTO_25:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["SearchOptions"]
        3 GETTABLEKS                       R2 R2 K1 ["AssetType"]
        5 GETUPVAL                         R3 0
        6 JUMPIFNOTEQ                      R2 R3 ; [+8]
        8 GETTABLEKS                       R2 R0 K2 ["SearchTerm"]
       10 GETUPVAL                         R3 1
       11 JUMPIFEQ                         R2 R3 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["_activeSearchTerm"]
        2 LOADK                            R5 K1 ["^%s*(.-)%s*$"]
        3 NAMECALL                         R3 R1 K2 ["match"]
        5 CALL                             R3 2 1
        6 LENGTH                           R2 R3
        7 JUMPIFNOTEQKN                    R2 K3 [0] ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R2 R0 K4 ["_searchOptions"]
       12 GETTABLEKS                       R2 R2 K5 ["AssetType"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K6 ["findIndex"]
       17 GETTABLEKS                       R4 R0 K7 ["_searchHistory"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R1
       22 CALL                             R3 2 1
       23 JUMPIFEQKNIL                     R3 ; [+7]
       25 GETIMPORT                        R4 K10 [table.remove]
       27 GETTABLEKS                       R5 R0 K7 ["_searchHistory"]
       29 MOVE                             R6 R3
       30 CALL                             R4 2 0
       31 GETTABLEKS                       R5 R0 K7 ["_searchHistory"]
       33 LOADN                            R6 1
       34 DUPTABLE                         R7 K13 [{"SearchTerm", "SearchOptions"}]
       35 SETTABLEKS                       R1 R7 K11 ["SearchTerm"]
       37 GETIMPORT                        R8 K15 [table.clone]
       39 GETTABLEKS                       R9 R0 K4 ["_searchOptions"]
       41 CALL                             R8 1 1
       42 SETTABLEKS                       R8 R7 K12 ["SearchOptions"]
       44 FASTCALL                         TABLE_INSERT ; [+2]
       45 GETIMPORT                        R4 K17 [table.insert]
       47 CALL                             R4 3 0
       48 GETTABLEKS                       R5 R0 K7 ["_searchHistory"]
       50 LENGTH                           R4 R5
       51 LOADN                            R5 5
       52 JUMPIFNOTLT                      R5 R4 ; [+9]
       54 GETIMPORT                        R4 K10 [table.remove]
       56 GETTABLEKS                       R5 R0 K7 ["_searchHistory"]
       58 GETTABLEKS                       R7 R0 K7 ["_searchHistory"]
       60 LENGTH                           R6 R7
       61 CALL                             R4 2 0
       62 GETIMPORT                        R4 K15 [table.clone]
       64 GETTABLEKS                       R5 R0 K7 ["_searchHistory"]
       66 CALL                             R4 1 1
       67 SETTABLEKS                       R4 R0 K7 ["_searchHistory"]
       69 GETTABLEKS                       R4 R0 K18 ["OnSearchHistoryChanged"]
       71 GETTABLEKS                       R6 R0 K7 ["_searchHistory"]
       73 NAMECALL                         R4 R4 K19 ["Fire"]
       75 CALL                             R4 2 0
       76 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["_searchHistory"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssetManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Dash"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R2 K13 ["ContextServices"]
       29 GETTABLEKS                       R5 R4 K14 ["ContextItem"]
       31 GETTABLEKS                       R6 R2 K15 ["Util"]
       33 GETTABLEKS                       R6 R6 K16 ["Signal"]
       35 GETIMPORT                        R7 K9 [require]
       37 GETTABLEKS                       R8 R1 K17 ["Src"]
       39 GETTABLEKS                       R8 R8 K15 ["Util"]
       41 GETTABLEKS                       R8 R8 K18 ["cleanConnections"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K9 [require]
       46 GETTABLEKS                       R9 R1 K17 ["Src"]
       48 GETTABLEKS                       R9 R9 K19 ["Types"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K9 [require]
       53 GETTABLEKS                       R10 R1 K17 ["Src"]
       55 GETTABLEKS                       R10 R10 K15 ["Util"]
       57 GETTABLEKS                       R10 R10 K20 ["logIfDebug"]
       59 CALL                             R9 1 1
       60 LOADK                            R12 K21 ["SearchController"]
       61 NAMECALL                         R10 R5 K22 ["extend"]
       63 CALL                             R10 2 1
       64 DUPCLOSURE                       R11 K23 [PROTO_0]
       65 CAPTURE                          VAL R8
       66 DUPCLOSURE                       R12 K24 [PROTO_5]
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R3
       71 SETTABLEKS                       R12 R10 K25 ["new"]
       73 DUPCLOSURE                       R12 K26 [PROTO_6]
       74 CAPTURE                          VAL R10
       75 SETTABLEKS                       R12 R10 K27 ["mock"]
       77 DUPCLOSURE                       R12 K28 [PROTO_7]
       78 CAPTURE                          VAL R7
       79 SETTABLEKS                       R12 R10 K29 ["destroy"]
       81 DUPCLOSURE                       R12 K30 [PROTO_8]
       82 SETTABLEKS                       R12 R10 K31 ["_restoreSearchState"]
       84 DUPCLOSURE                       R12 K32 [PROTO_9]
       85 SETTABLEKS                       R12 R10 K33 ["getPendingSearchTerm"]
       87 DUPCLOSURE                       R12 K34 [PROTO_10]
       88 SETTABLEKS                       R12 R10 K35 ["setPendingSearchTerm"]
       90 DUPCLOSURE                       R12 K36 [PROTO_11]
       91 SETTABLEKS                       R12 R10 K37 ["getActiveSearchTerm"]
       93 DUPCLOSURE                       R12 K38 [PROTO_12]
       94 SETTABLEKS                       R12 R10 K39 ["getSourceList"]
       96 DUPCLOSURE                       R12 K40 [PROTO_13]
       97 SETTABLEKS                       R12 R10 K41 ["requestSearch"]
       99 DUPCLOSURE                       R12 K42 [PROTO_14]
      100 SETTABLEKS                       R12 R10 K43 ["getSearchOptions"]
      102 DUPCLOSURE                       R12 K44 [PROTO_15]
      103 CAPTURE                          VAL R8
      104 SETTABLEKS                       R12 R10 K45 ["setScope"]
      106 DUPCLOSURE                       R12 K46 [PROTO_16]
      107 CAPTURE                          VAL R8
      108 SETTABLEKS                       R12 R10 K47 ["_getValidScope"]
      110 DUPCLOSURE                       R12 K48 [PROTO_17]
      111 SETTABLEKS                       R12 R10 K49 ["setAssetTypeFilter"]
      113 DUPCLOSURE                       R12 K50 [PROTO_18]
      114 SETTABLEKS                       R12 R10 K51 ["setSearchOptions"]
      116 DUPCLOSURE                       R12 K52 [PROTO_19]
      117 SETTABLEKS                       R12 R10 K53 ["getIsDefaultSearchState"]
      119 DUPCLOSURE                       R12 K54 [PROTO_20]
      120 SETTABLEKS                       R12 R10 K55 ["getShowSearchOptions"]
      122 DUPCLOSURE                       R12 K56 [PROTO_21]
      123 CAPTURE                          VAL R0
      124 SETTABLEKS                       R12 R10 K57 ["showSearchOptions"]
      126 DUPCLOSURE                       R12 K58 [PROTO_22]
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R9
      129 SETTABLEKS                       R12 R10 K59 ["hideSearchOptions"]
      131 DUPCLOSURE                       R12 K60 [PROTO_23]
      132 SETTABLEKS                       R12 R10 K61 ["getSearchId"]
      134 DUPCLOSURE                       R12 K62 [PROTO_24]
      135 SETTABLEKS                       R12 R10 K63 ["_getSearchState"]
      137 DUPCLOSURE                       R12 K64 [PROTO_26]
      138 CAPTURE                          VAL R3
      139 SETTABLEKS                       R12 R10 K65 ["_pushSearchHistoryItem"]
      141 DUPCLOSURE                       R12 K66 [PROTO_27]
      142 SETTABLEKS                       R12 R10 K67 ["getSearchHistory"]
      144 RETURN                           R10 1
