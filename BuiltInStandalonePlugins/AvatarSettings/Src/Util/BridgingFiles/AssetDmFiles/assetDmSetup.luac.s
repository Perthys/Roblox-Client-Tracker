PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createPlaceAvatarRules"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 LOADNIL                          R1
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["createPlaceAvatarRules"]
        8 GETTABLEKS                       R3 R3 K1 ["fromPlugin"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 NAMECALL                         R1 R0 K2 ["OnInvoke"]
       15 CALL                             R1 3 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["gameIdChanged"]
        4 GETIMPORT                        R3 K2 [game]
        6 GETTABLEKS                       R3 R3 K3 ["GameId"]
        8 NAMECALL                         R0 R0 K4 ["Invoke"]
       10 CALL                             R0 3 0
       11 GETUPVAL                         R0 2
       12 CALL                             R0 0 1
       13 JUMPIFNOT                        R0 ; [+11]
       14 GETUPVAL                         R0 0
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K5 ["gameId"]
       18 GETIMPORT                        R3 K2 [game]
       20 GETTABLEKS                       R3 R3 K3 ["GameId"]
       22 NAMECALL                         R0 R0 K6 ["SetItem"]
       24 CALL                             R0 3 0
       25 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["gameIdChanged"]
        4 GETIMPORT                        R3 K2 [game]
        6 GETTABLEKS                       R3 R3 K3 ["GameId"]
        8 NAMECALL                         R0 R0 K4 ["Invoke"]
       10 CALL                             R0 3 0
       11 GETUPVAL                         R0 2
       12 CALL                             R0 0 1
       13 JUMPIFNOT                        R0 ; [+11]
       14 GETUPVAL                         R0 0
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K5 ["gameId"]
       18 GETIMPORT                        R3 K2 [game]
       20 GETTABLEKS                       R3 R3 K3 ["GameId"]
       22 NAMECALL                         R0 R0 K6 ["SetItem"]
       24 CALL                             R0 3 0
       25 GETIMPORT                        R0 K2 [game]
       27 GETTABLEKS                       R0 R0 K3 ["GameId"]
       29 JUMPIFEQKN                       R0 K7 [0] ; [+11]
       31 GETUPVAL                         R0 4
       32 JUMPIFNOT                        R0 ; [+8]
       33 GETUPVAL                         R0 4
       34 GETTABLEKS                       R0 R0 K8 ["Connected"]
       36 JUMPIFNOT                        R0 ; [+4]
       37 GETUPVAL                         R0 4
       38 NAMECALL                         R0 R0 K9 ["Disconnect"]
       40 CALL                             R0 1 0
       41 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["gameIdChanged"]
        4 GETIMPORT                        R3 K2 [game]
        6 GETTABLEKS                       R3 R3 K3 ["GameId"]
        8 NAMECALL                         R0 R0 K4 ["Invoke"]
       10 CALL                             R0 3 0
       11 GETUPVAL                         R0 2
       12 CALL                             R0 0 1
       13 JUMPIFNOT                        R0 ; [+11]
       14 GETUPVAL                         R0 0
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K5 ["gameId"]
       18 GETIMPORT                        R3 K2 [game]
       20 GETTABLEKS                       R3 R3 K3 ["GameId"]
       22 NAMECALL                         R0 R0 K6 ["SetItem"]
       24 CALL                             R0 3 0
       25 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["showSaveOrPublishPlaceToRoblox"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["deactivePreviewOnDescendantAdded"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["CreateAvatarRules"]
       11 GETTABLEKS                       R2 R2 K3 ["fromAssetDm"]
       13 NAMECALL                         R0 R0 K1 ["Invoke"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clearConnections"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["createAvatarBodyRules"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K2 ["createAvatarCollisionRules"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K3 ["createAvatarAbilityRules"]
       15 CALL                             R0 0 0
       16 GETUPVAL                         R0 1
       17 GETTABLEKS                       R0 R0 K4 ["createAvatarAnimationRules"]
       19 CALL                             R0 0 0
       20 GETUPVAL                         R0 1
       21 GETTABLEKS                       R0 R0 K5 ["createAvatarAccessoryRules"]
       23 CALL                             R0 0 0
       24 GETUPVAL                         R0 1
       25 GETTABLEKS                       R0 R0 K6 ["createAvatarClothingRules"]
       27 CALL                             R0 0 0
       28 GETUPVAL                         R0 2
       29 GETTABLEKS                       R0 R0 K7 ["DescendantAdded"]
       31 NEWCLOSURE                       R2 P0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U4
       34 NAMECALL                         R0 R0 K8 ["Connect"]
       36 CALL                             R0 2 1
       37 GETUPVAL                         R1 0
       38 GETTABLEKS                       R1 R1 K9 ["addRBXScriptConnection"]
       40 MOVE                             R2 R0
       41 CALL                             R1 1 0
       42 GETUPVAL                         R1 3
       43 GETUPVAL                         R3 4
       44 GETTABLEKS                       R3 R3 K10 ["syncAvatarSettings"]
       46 GETUPVAL                         R4 5
       47 CALL                             R4 0 -1
       48 NAMECALL                         R1 R1 K11 ["Invoke"]
       50 CALL                             R1 -1 0
       51 GETUPVAL                         R1 6
       52 GETUPVAL                         R2 3
       53 CALL                             R1 1 0
       54 GETUPVAL                         R1 7
       55 GETUPVAL                         R2 3
       56 CALL                             R1 1 0
       57 GETUPVAL                         R1 8
       58 GETUPVAL                         R2 3
       59 CALL                             R1 1 0
       60 GETUPVAL                         R1 9
       61 GETUPVAL                         R2 3
       62 CALL                             R1 1 0
       63 GETUPVAL                         R1 10
       64 GETUPVAL                         R2 3
       65 CALL                             R1 1 0
       66 GETUPVAL                         R1 11
       67 GETUPVAL                         R2 3
       68 CALL                             R1 1 0
       69 GETUPVAL                         R1 12
       70 GETUPVAL                         R2 3
       71 CALL                             R1 1 0
       72 GETUPVAL                         R1 13
       73 GETUPVAL                         R2 3
       74 CALL                             R1 1 0
       75 GETUPVAL                         R1 14
       76 GETUPVAL                         R2 3
       77 CALL                             R1 1 0
       78 LOADNIL                          R1
       79 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onPublishSettings"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["setLatestPublishSuccess"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+6]
       12 JUMPIFNOT                        R0 ; [+5]
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R1 R1 K2 ["captureBaseline"]
       16 GETUPVAL                         R2 4
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 4
       19 GETUPVAL                         R3 5
       20 GETTABLEKS                       R3 R3 K3 ["onSettingsPublished"]
       22 NAMECALL                         R1 R1 K4 ["Invoke"]
       24 CALL                             R1 2 0
       25 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onDiscardSettings"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["onInitializationStarted"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K2 ["sendDatabaseLoadedOnInitialization"]
       10 GETUPVAL                         R1 0
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K3 ["listenToHasUnpublishedChanges"]
       15 GETUPVAL                         R1 0
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 3
       18 CALL                             R0 0 1
       19 JUMPIFNOT                        R0 ; [+22]
       20 GETUPVAL                         R0 4
       21 GETTABLEKS                       R0 R0 K4 ["connect"]
       23 GETUPVAL                         R1 0
       24 CALL                             R0 1 0
       25 GETUPVAL                         R0 0
       26 GETUPVAL                         R1 5
       27 JUMPIFNOT                        R1 ; [+1]
       28 JUMP                             ; [+13]
       29 LOADB                            R1 1
       30 SETUPVAL                         R1 5
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K5 ["createPlaceAvatarRules"]
       34 GETTABLEKS                       R3 R3 K6 ["fromPlugin"]
       36 NEWCLOSURE                       R4 P0
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          VAL R0
       39 NAMECALL                         R1 R0 K7 ["OnInvoke"]
       41 CALL                             R1 3 0
       42 GETUPVAL                         R0 2
       43 GETTABLEKS                       R0 R0 K8 ["setLatestPublishSuccess"]
       45 LOADB                            R1 0
       46 CALL                             R0 1 0
       47 GETUPVAL                         R0 6
       48 CALL                             R0 0 1
       49 JUMPIFNOT                        R0 ; [+2]
       50 GETUPVAL                         R0 7
       51 JUMPIF                           R0 ; [+19]
       52 GETUPVAL                         R0 6
       53 CALL                             R0 0 1
       54 JUMPIFNOT                        R0 ; [+2]
       55 LOADB                            R0 1
       56 SETUPVAL                         R0 7
       57 GETUPVAL                         R0 0
       58 GETUPVAL                         R2 1
       59 GETTABLEKS                       R2 R2 K9 ["publishSettings"]
       61 NEWCLOSURE                       R3 P1
       62 CAPTURE                          UPVAL U8
       63 CAPTURE                          UPVAL U2
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          UPVAL U0
       67 CAPTURE                          UPVAL U1
       68 NAMECALL                         R0 R0 K7 ["OnInvoke"]
       70 CALL                             R0 3 0
       71 GETUPVAL                         R0 0
       72 GETUPVAL                         R2 1
       73 GETTABLEKS                       R2 R2 K10 ["discardSettings"]
       75 DUPCLOSURE                       R3 K11 [PROTO_9]
       76 CAPTURE                          UPVAL U8
       77 NAMECALL                         R0 R0 K7 ["OnInvoke"]
       79 CALL                             R0 3 0
       80 GETUPVAL                         R0 8
       81 GETTABLEKS                       R0 R0 K12 ["setupHolds"]
       83 GETUPVAL                         R1 0
       84 CALL                             R0 1 0
       85 GETUPVAL                         R0 8
       86 GETTABLEKS                       R0 R0 K13 ["connectRefreshPluginState"]
       88 GETUPVAL                         R1 0
       89 CALL                             R0 1 0
       90 GETUPVAL                         R0 9
       91 LOADK                            R2 K14 ["AvatarSettings Initialization"]
       92 NAMECALL                         R0 R0 K15 ["SetWaypoint"]
       94 CALL                             R0 2 0
       95 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["registerPluginStyles"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K1 ["gameIdChanged"]
       13 GETIMPORT                        R5 K3 [game]
       15 GETTABLEKS                       R5 R5 K4 ["GameId"]
       17 NAMECALL                         R2 R0 K5 ["Invoke"]
       19 CALL                             R2 3 0
       20 GETUPVAL                         R2 2
       21 CALL                             R2 0 1
       22 JUMPIFNOT                        R2 ; [+10]
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R4 R4 K6 ["gameId"]
       26 GETIMPORT                        R5 K3 [game]
       28 GETTABLEKS                       R5 R5 K4 ["GameId"]
       30 NAMECALL                         R2 R0 K7 ["SetItem"]
       32 CALL                             R2 3 0
       33 GETIMPORT                        R2 K3 [game]
       35 GETTABLEKS                       R2 R2 K4 ["GameId"]
       37 JUMPIFNOTEQKN                    R2 K8 [0] ; [+19]
       39 LOADNIL                          R2
       40 GETIMPORT                        R3 K3 [game]
       42 LOADK                            R5 K4 ["GameId"]
       43 NAMECALL                         R3 R3 K9 ["GetPropertyChangedSignal"]
       45 CALL                             R3 2 1
       46 NEWCLOSURE                       R5 P1
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U1
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          REF R2
       52 NAMECALL                         R3 R3 K10 ["Connect"]
       54 CALL                             R3 2 1
       55 MOVE                             R2 R3
       56 CLOSEUPVALS                      R2
       57 GETUPVAL                         R4 1
       58 GETTABLEKS                       R4 R4 K11 ["requestLatestGameId"]
       60 NEWCLOSURE                       R5 P2
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U1
       63 CAPTURE                          UPVAL U2
       64 CAPTURE                          UPVAL U3
       65 NAMECALL                         R2 R0 K12 ["OnInvoke"]
       67 CALL                             R2 3 0
       68 GETUPVAL                         R4 1
       69 GETTABLEKS                       R4 R4 K13 ["requestSaveToRoblox"]
       71 NEWCLOSURE                       R5 P3
       72 CAPTURE                          UPVAL U4
       73 CAPTURE                          VAL R0
       74 NAMECALL                         R2 R0 K12 ["OnInvoke"]
       76 CALL                             R2 3 0
       77 GETUPVAL                         R4 1
       78 GETTABLEKS                       R4 R4 K14 ["CreateAvatarRules"]
       80 GETTABLEKS                       R4 R4 K15 ["fromPlugin"]
       82 NEWCLOSURE                       R5 P4
       83 CAPTURE                          UPVAL U5
       84 CAPTURE                          UPVAL U6
       85 CAPTURE                          UPVAL U7
       86 CAPTURE                          VAL R0
       87 CAPTURE                          UPVAL U1
       88 CAPTURE                          UPVAL U8
       89 CAPTURE                          UPVAL U9
       90 CAPTURE                          UPVAL U10
       91 CAPTURE                          UPVAL U11
       92 CAPTURE                          UPVAL U12
       93 CAPTURE                          UPVAL U13
       94 CAPTURE                          UPVAL U14
       95 CAPTURE                          UPVAL U15
       96 CAPTURE                          UPVAL U16
       97 CAPTURE                          UPVAL U17
       98 NAMECALL                         R2 R0 K12 ["OnInvoke"]
      100 CALL                             R2 3 0
      101 GETUPVAL                         R4 1
      102 GETTABLEKS                       R4 R4 K14 ["CreateAvatarRules"]
      104 GETTABLEKS                       R4 R4 K16 ["fromAssetDm"]
      106 NAMECALL                         R2 R0 K5 ["Invoke"]
      108 CALL                             R2 2 0
      109 GETUPVAL                         R4 1
      110 GETTABLEKS                       R4 R4 K17 ["onInitialization"]
      112 GETTABLEKS                       R4 R4 K15 ["fromPlugin"]
      114 NEWCLOSURE                       R5 P5
      115 CAPTURE                          VAL R0
      116 CAPTURE                          UPVAL U1
      117 CAPTURE                          UPVAL U18
      118 CAPTURE                          UPVAL U19
      119 CAPTURE                          UPVAL U20
      120 CAPTURE                          UPVAL U21
      121 CAPTURE                          UPVAL U22
      122 CAPTURE                          UPVAL U23
      123 CAPTURE                          UPVAL U4
      124 CAPTURE                          UPVAL U24
      125 NAMECALL                         R2 R0 K12 ["OnInvoke"]
      127 CALL                             R2 3 0
      128 GETUPVAL                         R4 1
      129 GETTABLEKS                       R4 R4 K17 ["onInitialization"]
      131 GETTABLEKS                       R4 R4 K16 ["fromAssetDm"]
      133 NAMECALL                         R2 R0 K5 ["Invoke"]
      135 CALL                             R2 2 0
      136 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K2 ["AvatarSettings"]
       10 NAMECALL                         R1 R1 K6 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K7 ["ChangeHistoryService"]
       16 NAMECALL                         R2 R2 K6 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R4 R0 K10 ["Src"]
       23 GETTABLEKS                       R4 R4 K11 ["Util"]
       25 GETTABLEKS                       R4 R4 K12 ["BridgingFiles"]
       27 GETTABLEKS                       R4 R4 K13 ["AssetDmFiles"]
       29 GETTABLEKS                       R4 R4 K14 ["assetDmConnectionManager"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K9 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Util"]
       38 GETTABLEKS                       R5 R5 K15 ["Interfaces"]
       40 GETTABLEKS                       R5 R5 K16 ["PublishingInterface"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K9 [require]
       45 GETTABLEKS                       R6 R0 K10 ["Src"]
       47 GETTABLEKS                       R6 R6 K11 ["Util"]
       49 GETTABLEKS                       R6 R6 K15 ["Interfaces"]
       51 GETTABLEKS                       R6 R6 K17 ["RegisterPluginStylesInterface"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K9 [require]
       56 GETTABLEKS                       R7 R0 K10 ["Src"]
       58 GETTABLEKS                       R7 R7 K11 ["Util"]
       60 GETTABLEKS                       R7 R7 K12 ["BridgingFiles"]
       62 GETTABLEKS                       R7 R7 K13 ["AssetDmFiles"]
       64 GETTABLEKS                       R7 R7 K18 ["assetDmDatabaseLoadedManager"]
       66 CALL                             R6 1 1
       67 GETIMPORT                        R7 K9 [require]
       69 GETTABLEKS                       R8 R0 K10 ["Src"]
       71 GETTABLEKS                       R8 R8 K11 ["Util"]
       73 GETTABLEKS                       R8 R8 K12 ["BridgingFiles"]
       75 GETTABLEKS                       R8 R8 K13 ["AssetDmFiles"]
       77 GETTABLEKS                       R8 R8 K19 ["assetDmPlaceSettingsStatus"]
       79 CALL                             R7 1 1
       80 GETIMPORT                        R8 K9 [require]
       82 GETTABLEKS                       R9 R0 K10 ["Src"]
       84 GETTABLEKS                       R9 R9 K11 ["Util"]
       86 GETTABLEKS                       R9 R9 K12 ["BridgingFiles"]
       88 GETTABLEKS                       R9 R9 K13 ["AssetDmFiles"]
       90 GETTABLEKS                       R9 R9 K20 ["assetDmUtils"]
       92 CALL                             R8 1 1
       93 GETIMPORT                        R9 K9 [require]
       95 GETTABLEKS                       R10 R0 K10 ["Src"]
       97 GETTABLEKS                       R10 R10 K11 ["Util"]
       99 GETTABLEKS                       R10 R10 K12 ["BridgingFiles"]
      101 GETTABLEKS                       R10 R10 K13 ["AssetDmFiles"]
      103 GETTABLEKS                       R10 R10 K21 ["assetDmAbilitySettingBridge"]
      105 CALL                             R9 1 1
      106 GETIMPORT                        R10 K9 [require]
      108 GETTABLEKS                       R11 R0 K10 ["Src"]
      110 GETTABLEKS                       R11 R11 K11 ["Util"]
      112 GETTABLEKS                       R11 R11 K12 ["BridgingFiles"]
      114 GETTABLEKS                       R11 R11 K13 ["AssetDmFiles"]
      116 GETTABLEKS                       R11 R11 K22 ["assetDmAccessoriesSettingBridge"]
      118 CALL                             R10 1 1
      119 GETIMPORT                        R11 K9 [require]
      121 GETTABLEKS                       R12 R0 K10 ["Src"]
      123 GETTABLEKS                       R12 R12 K11 ["Util"]
      125 GETTABLEKS                       R12 R12 K12 ["BridgingFiles"]
      127 GETTABLEKS                       R12 R12 K13 ["AssetDmFiles"]
      129 GETTABLEKS                       R12 R12 K23 ["assetDmAnimationSettingBridge"]
      131 CALL                             R11 1 1
      132 GETIMPORT                        R12 K9 [require]
      134 GETTABLEKS                       R13 R0 K10 ["Src"]
      136 GETTABLEKS                       R13 R13 K11 ["Util"]
      138 GETTABLEKS                       R13 R13 K12 ["BridgingFiles"]
      140 GETTABLEKS                       R13 R13 K13 ["AssetDmFiles"]
      142 GETTABLEKS                       R13 R13 K24 ["assetDmAvatarRulesSettingBridge"]
      144 CALL                             R12 1 1
      145 GETIMPORT                        R13 K9 [require]
      147 GETTABLEKS                       R14 R0 K10 ["Src"]
      149 GETTABLEKS                       R14 R14 K11 ["Util"]
      151 GETTABLEKS                       R14 R14 K12 ["BridgingFiles"]
      153 GETTABLEKS                       R14 R14 K13 ["AssetDmFiles"]
      155 GETTABLEKS                       R14 R14 K25 ["assetDmBodySettingBridge"]
      157 CALL                             R13 1 1
      158 GETIMPORT                        R14 K9 [require]
      160 GETTABLEKS                       R15 R0 K10 ["Src"]
      162 GETTABLEKS                       R15 R15 K11 ["Util"]
      164 GETTABLEKS                       R15 R15 K12 ["BridgingFiles"]
      166 GETTABLEKS                       R15 R15 K13 ["AssetDmFiles"]
      168 GETTABLEKS                       R15 R15 K26 ["assetDmClothingSettingBridge"]
      170 CALL                             R14 1 1
      171 GETIMPORT                        R15 K9 [require]
      173 GETTABLEKS                       R16 R0 K10 ["Src"]
      175 GETTABLEKS                       R16 R16 K11 ["Util"]
      177 GETTABLEKS                       R16 R16 K12 ["BridgingFiles"]
      179 GETTABLEKS                       R16 R16 K13 ["AssetDmFiles"]
      181 GETTABLEKS                       R16 R16 K27 ["assetDmCollisionSettingBridge"]
      183 CALL                             R15 1 1
      184 GETIMPORT                        R16 K9 [require]
      186 GETTABLEKS                       R17 R0 K10 ["Src"]
      188 GETTABLEKS                       R17 R17 K11 ["Util"]
      190 GETTABLEKS                       R17 R17 K12 ["BridgingFiles"]
      192 GETTABLEKS                       R17 R17 K13 ["AssetDmFiles"]
      194 GETTABLEKS                       R17 R17 K28 ["assetDmPreviewFunctionalityBridge"]
      196 CALL                             R16 1 1
      197 GETIMPORT                        R17 K9 [require]
      199 GETTABLEKS                       R18 R0 K10 ["Src"]
      201 GETTABLEKS                       R18 R18 K11 ["Util"]
      203 GETTABLEKS                       R18 R18 K12 ["BridgingFiles"]
      205 GETTABLEKS                       R18 R18 K13 ["AssetDmFiles"]
      207 GETTABLEKS                       R18 R18 K29 ["assetDmWorkspaceSettingBridge"]
      209 CALL                             R17 1 1
      210 GETIMPORT                        R18 K9 [require]
      212 GETTABLEKS                       R19 R0 K10 ["Src"]
      214 GETTABLEKS                       R19 R19 K30 ["Flags"]
      216 GETTABLEKS                       R19 R19 K31 ["getFFlagAvatarSettingsEditUnsavedPlace"]
      218 CALL                             R18 1 1
      219 GETIMPORT                        R19 K9 [require]
      221 GETTABLEKS                       R20 R0 K10 ["Src"]
      223 GETTABLEKS                       R20 R20 K11 ["Util"]
      225 GETTABLEKS                       R20 R20 K12 ["BridgingFiles"]
      227 GETTABLEKS                       R20 R20 K13 ["AssetDmFiles"]
      229 GETTABLEKS                       R20 R20 K32 ["getPropertiesTable"]
      231 CALL                             R19 1 1
      232 GETIMPORT                        R20 K9 [require]
      234 GETTABLEKS                       R21 R0 K10 ["Src"]
      236 GETTABLEKS                       R21 R21 K11 ["Util"]
      238 GETTABLEKS                       R21 R21 K33 ["InvokeKeys"]
      240 CALL                             R20 1 1
      241 GETIMPORT                        R21 K9 [require]
      243 GETTABLEKS                       R22 R0 K10 ["Src"]
      245 GETTABLEKS                       R22 R22 K11 ["Util"]
      247 GETTABLEKS                       R22 R22 K34 ["PluginItemKeys"]
      249 CALL                             R21 1 1
      250 GETIMPORT                        R22 K9 [require]
      252 GETTABLEKS                       R23 R0 K10 ["Src"]
      254 GETTABLEKS                       R23 R23 K30 ["Flags"]
      256 GETTABLEKS                       R23 R23 K35 ["getEngineFeatureAvatarSettingsPlaceAvatarRules"]
      258 CALL                             R22 1 1
      259 GETIMPORT                        R23 K9 [require]
      261 GETTABLEKS                       R24 R0 K10 ["Src"]
      263 GETTABLEKS                       R24 R24 K30 ["Flags"]
      265 GETTABLEKS                       R24 R24 K36 ["getFFlagPluginInvokeGuard"]
      267 CALL                             R23 1 1
      268 LOADB                            R24 0
      269 LOADB                            R25 0
      270 NEWCLOSURE                       R26 P0
      271 CAPTURE                          REF R25
      272 CAPTURE                          VAL R20
      273 CAPTURE                          VAL R7
      274 NEWCLOSURE                       R27 P1
      275 CAPTURE                          VAL R5
      276 CAPTURE                          VAL R20
      277 CAPTURE                          VAL R18
      278 CAPTURE                          VAL R21
      279 CAPTURE                          VAL R4
      280 CAPTURE                          VAL R3
      281 CAPTURE                          VAL R8
      282 CAPTURE                          VAL R1
      283 CAPTURE                          VAL R19
      284 CAPTURE                          VAL R12
      285 CAPTURE                          VAL R13
      286 CAPTURE                          VAL R15
      287 CAPTURE                          VAL R9
      288 CAPTURE                          VAL R11
      289 CAPTURE                          VAL R10
      290 CAPTURE                          VAL R14
      291 CAPTURE                          VAL R16
      292 CAPTURE                          VAL R17
      293 CAPTURE                          VAL R6
      294 CAPTURE                          VAL R22
      295 CAPTURE                          VAL R7
      296 CAPTURE                          REF R25
      297 CAPTURE                          VAL R23
      298 CAPTURE                          REF R24
      299 CAPTURE                          VAL R2
      300 CLOSEUPVALS                      R24
      301 RETURN                           R27 1
