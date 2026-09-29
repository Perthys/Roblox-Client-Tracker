PROTO_0:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R4 R0 K0 ["X"]
        3 GETTABLEKS                       R5 R0 K1 ["Y"]
        5 MUL                              R3 R4 R5
        6 GETTABLEKS                       R4 R0 K2 ["Z"]
        8 MUL                              R2 R3 R4
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["MaxImportVolume"]
       12 JUMPIFNOTLE                      R2 R3 ; [+26]
       14 LOADB                            R1 0
       15 GETTABLEKS                       R2 R0 K0 ["X"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K4 ["VoxelResolution"]
       20 JUMPIFNOTLE                      R3 R2 ; [+18]
       22 LOADB                            R1 0
       23 GETTABLEKS                       R2 R0 K1 ["Y"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K4 ["VoxelResolution"]
       28 JUMPIFNOTLE                      R3 R2 ; [+10]
       30 GETTABLEKS                       R2 R0 K2 ["Z"]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K4 ["VoxelResolution"]
       35 JUMPIFLE                         R3 R2 ; [+2]
       37 LOADB                            R1 0 +1
       38 LOADB                            R1 1
       39 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["finishOperation"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["startOperation"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 NAMECALL                         R2 R0 K1 ["getPayload"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R0 K2 ["_localization"]
       11 LOADK                            R5 K3 ["Operations"]
       12 LOADK                            R6 K4 ["ImportName"]
       13 NAMECALL                         R3 R3 K5 ["getText"]
       15 CALL                             R3 3 1
       16 GETTABLEKS                       R4 R0 K2 ["_localization"]
       18 LOADK                            R6 K3 ["Operations"]
       19 LOADK                            R7 K6 ["ImportDescription"]
       20 NAMECALL                         R4 R4 K5 ["getText"]
       22 CALL                             R4 3 1
       23 GETUPVAL                         R5 1
       24 GETUPVAL                         R8 2
       25 GETTABLEKS                       R8 R8 K7 ["SelectionSettings"]
       27 GETTABLE                         R7 R2 R8
       28 GETUPVAL                         R8 3
       29 GETTABLEKS                       R8 R8 K8 ["Transform"]
       31 GETTABLE                         R6 R7 R8
       32 GETUPVAL                         R9 2
       33 GETTABLEKS                       R9 R9 K7 ["SelectionSettings"]
       35 GETTABLE                         R8 R2 R9
       36 GETUPVAL                         R9 3
       37 GETTABLEKS                       R9 R9 K9 ["Size"]
       39 GETTABLE                         R7 R8 R9
       40 LOADB                            R8 1
       41 CALL                             R5 3 1
       42 SETTABLEKS                       R5 R0 K10 ["_region"]
       44 GETTABLEKS                       R5 R0 K11 ["_services"]
       46 GETTABLEKS                       R5 R5 K12 ["Terrain"]
       48 GETTABLEKS                       R7 R0 K10 ["_region"]
       50 NAMECALL                         R5 R5 K13 ["CopyRegion"]
       52 CALL                             R5 2 1
       53 SETTABLEKS                       R5 R0 K14 ["_terrainRegion"]
       55 GETUPVAL                         R5 4
       56 MOVE                             R6 R3
       57 MOVE                             R7 R4
       58 GETTABLEKS                       R8 R0 K11 ["_services"]
       60 CALL                             R5 3 1
       61 SETTABLEKS                       R5 R0 K15 ["_operation"]
       63 GETTABLEKS                       R5 R0 K15 ["_operation"]
       65 GETTABLEKS                       R5 R5 K16 ["Finished"]
       67 NEWCLOSURE                       R7 P0
       68 CAPTURE                          VAL R0
       69 NAMECALL                         R5 R5 K17 ["Connect"]
       71 CALL                             R5 2 1
       72 SETTABLEKS                       R5 R0 K18 ["_operationFinishedConnection"]
       74 GETTABLEKS                       R5 R0 K15 ["_operation"]
       76 GETUPVAL                         R7 5
       77 GETTABLEKS                       R7 R7 K19 ["join"]
       79 DUPTABLE                         R8 K21 [{"Payload"}]
       80 SETTABLEKS                       R2 R8 K20 ["Payload"]
       82 MOVE                             R9 R1
       83 CALL                             R7 2 -1
       84 NAMECALL                         R5 R5 K22 ["start"]
       86 CALL                             R5 -1 0
       87 GETTABLEKS                       R5 R0 K23 ["OnOperationChanged"]
       89 NAMECALL                         R5 R5 K24 ["Fire"]
       91 CALL                             R5 1 0
       92 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["setDisabledState"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["OnInternalsChanged"]
        7 NAMECALL                         R0 R0 K2 ["Fire"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 1 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["HeightmapSettings"]
        6 NEWTABLE                         R5 1 0
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K1 ["DefaultMaterialSlot"]
       11 SETTABLE                         R0 R5 R6
       12 SETTABLE                         R5 R3 R4
       13 NAMECALL                         R1 R1 K2 ["setPayload"]
       15 CALL                             R1 2 0
       16 GETIMPORT                        R1 K5 [task.spawn]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["setDisabledState"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["OnInternalsChanged"]
        7 NAMECALL                         R0 R0 K2 ["Fire"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_pluginController"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["HeightmapSettings"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K2 ["DefaultMaterialSlot"]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K3 ["PlacePersistent"]
       12 NAMECALL                         R0 R0 K4 ["clearGlobal"]
       14 CALL                             R0 4 0
       15 GETIMPORT                        R0 K7 [task.spawn]
       17 NEWCLOSURE                       R1 P0
       18 CAPTURE                          UPVAL U0
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["getPayload"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["HeightmapSettings"]
        7 GETTABLE                         R1 R2 R3
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["_terrainMaterialPickerRequester"]
       11 DUPTABLE                         R4 K9 [{["allowAir"] = False, ["allowWater"] = True, ["anchorWidgetUri"], ["selectedSlotIndex"]}]
       12 SETTABLEKS                       R0 R4 K7 ["anchorWidgetUri"]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K10 ["DefaultMaterialSlot"]
       17 GETTABLE                         R5 R1 R6
       18 SETTABLEKS                       R5 R4 K8 ["selectedSlotIndex"]
       20 NAMECALL                         R2 R2 K11 ["request"]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETIMPORT                        R1 K3 [Enum.PropertyStatus.Error]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K4 ["_localization"]
        9 LOADK                            R4 K5 ["SelectionWarning"]
       10 LOADK                            R5 K6 ["NaN"]
       11 NAMECALL                         R2 R2 K7 ["getText"]
       13 CALL                             R2 3 -1
       14 RETURN                           R1 -1
       15 GETTABLEKS                       R1 R0 K8 ["X"]
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K9 ["VoxelResolution"]
       20 JUMPIFLT                         R1 R2 ; [+15]
       22 GETTABLEKS                       R1 R0 K10 ["Y"]
       24 GETUPVAL                         R2 2
       25 GETTABLEKS                       R2 R2 K9 ["VoxelResolution"]
       27 JUMPIFLT                         R1 R2 ; [+8]
       29 GETTABLEKS                       R1 R0 K11 ["Z"]
       31 GETUPVAL                         R2 2
       32 GETTABLEKS                       R2 R2 K9 ["VoxelResolution"]
       34 JUMPIFNOTLT                      R1 R2 ; [+12]
       36 GETIMPORT                        R1 K3 [Enum.PropertyStatus.Error]
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R2 R2 K4 ["_localization"]
       41 LOADK                            R4 K5 ["SelectionWarning"]
       42 LOADK                            R5 K12 ["Size"]
       43 NAMECALL                         R2 R2 K7 ["getText"]
       45 CALL                             R2 3 -1
       46 RETURN                           R1 -1
       47 GETTABLEKS                       R3 R0 K8 ["X"]
       49 GETTABLEKS                       R4 R0 K10 ["Y"]
       51 MUL                              R2 R3 R4
       52 GETTABLEKS                       R3 R0 K11 ["Z"]
       54 MUL                              R1 R2 R3
       55 GETUPVAL                         R2 2
       56 GETTABLEKS                       R2 R2 K13 ["MaxImportVolume"]
       58 JUMPIFNOTLT                      R2 R1 ; [+12]
       60 GETIMPORT                        R1 K3 [Enum.PropertyStatus.Error]
       62 GETUPVAL                         R2 1
       63 GETTABLEKS                       R2 R2 K4 ["_localization"]
       65 LOADK                            R4 K14 ["ImportWarning"]
       66 LOADK                            R5 K15 ["Volume"]
       67 NAMECALL                         R2 R2 K7 ["getText"]
       69 CALL                             R2 3 -1
       70 RETURN                           R1 -1
       71 GETUPVAL                         R3 1
       72 GETTABLEKS                       R3 R3 K16 ["_sessionUserSettings"]
       74 GETUPVAL                         R4 3
       75 GETTABLEKS                       R4 R4 K17 ["HeightmapSettings"]
       77 GETTABLE                         R2 R3 R4
       78 GETUPVAL                         R3 4
       79 GETTABLEKS                       R3 R3 K18 ["Heightmap"]
       81 GETTABLE                         R1 R2 R3
       82 GETTABLEKS                       R1 R1 K19 ["Image"]
       84 JUMPIF                           R1 ; [+4]
       85 GETIMPORT                        R2 K21 [Enum.PropertyStatus.Ok]
       87 LOADK                            R3 K22 [""]
       88 RETURN                           R2 2
       89 GETUPVAL                         R2 5
       90 MOVE                             R3 R1
       91 MOVE                             R4 R0
       92 CALL                             R2 2 2
       93 JUMPIF                           R2 ; [+22]
       94 GETIMPORT                        R4 K24 [Enum.PropertyStatus.Warning]
       96 GETUPVAL                         R5 1
       97 GETTABLEKS                       R5 R5 K4 ["_localization"]
       99 LOADK                            R7 K14 ["ImportWarning"]
      100 LOADK                            R8 K25 ["AspectRatio"]
      101 DUPTABLE                         R9 K29 [{"ImageAspectRatio", "RegionWidth", "RegionHeight"}]
      102 SETTABLEKS                       R3 R9 K26 ["ImageAspectRatio"]
      104 GETTABLEKS                       R10 R0 K8 ["X"]
      106 SETTABLEKS                       R10 R9 K27 ["RegionWidth"]
      108 GETTABLEKS                       R10 R0 K11 ["Z"]
      110 SETTABLEKS                       R10 R9 K28 ["RegionHeight"]
      112 NAMECALL                         R5 R5 K7 ["getText"]
      114 CALL                             R5 4 -1
      115 RETURN                           R4 -1
      116 GETUPVAL                         R4 6
      117 MOVE                             R5 R1
      118 MOVE                             R6 R0
      119 CALL                             R4 2 1
      120 JUMPIF                           R4 ; [+28]
      121 GETIMPORT                        R5 K24 [Enum.PropertyStatus.Warning]
      123 GETUPVAL                         R6 1
      124 GETTABLEKS                       R6 R6 K4 ["_localization"]
      126 LOADK                            R8 K14 ["ImportWarning"]
      127 LOADK                            R9 K30 ["Scaling"]
      128 DUPTABLE                         R10 K33 [{"ImageWidth", "ImageHeight", "RegionWidth", "RegionHeight"}]
      129 GETTABLEKS                       R11 R1 K34 ["Width"]
      131 SETTABLEKS                       R11 R10 K31 ["ImageWidth"]
      133 GETTABLEKS                       R11 R1 K35 ["Height"]
      135 SETTABLEKS                       R11 R10 K32 ["ImageHeight"]
      137 GETTABLEKS                       R11 R0 K8 ["X"]
      139 SETTABLEKS                       R11 R10 K27 ["RegionWidth"]
      141 GETTABLEKS                       R11 R0 K11 ["Z"]
      143 SETTABLEKS                       R11 R10 K28 ["RegionHeight"]
      145 NAMECALL                         R6 R6 K7 ["getText"]
      147 CALL                             R6 4 -1
      148 RETURN                           R5 -1
      149 GETIMPORT                        R5 K21 [Enum.PropertyStatus.Ok]
      151 LOADK                            R6 K22 [""]
      152 RETURN                           R5 2

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["startOperation"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["init"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 GETTABLEKS                       R3 R0 K1 ["_terrainMaterialPickerRequester"]
        9 JUMPIFNOT                        R3 ; [+8]
       10 GETTABLEKS                       R3 R0 K1 ["_terrainMaterialPickerRequester"]
       12 NAMECALL                         R3 R3 K2 ["destroy"]
       14 CALL                             R3 1 0
       15 LOADNIL                          R3
       16 SETTABLEKS                       R3 R0 K1 ["_terrainMaterialPickerRequester"]
       18 NAMECALL                         R3 R0 K3 ["getPayload"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K4 ["SelectionSettings"]
       24 GETTABLE                         R5 R3 R6
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K5 ["Size"]
       28 GETTABLE                         R4 R5 R6
       29 LOADNIL                          R5
       30 GETUPVAL                         R6 3
       31 CALL                             R6 0 1
       32 JUMPIFNOT                        R6 ; [+37]
       33 GETUPVAL                         R6 4
       34 GETTABLEKS                       R6 R6 K6 ["new"]
       36 NEWCLOSURE                       R7 P0
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          UPVAL U5
       40 CALL                             R6 1 1
       41 SETTABLEKS                       R6 R0 K1 ["_terrainMaterialPickerRequester"]
       43 DUPTABLE                         R6 K12 [{["DataId"], ["Height"] = 24, ["Layout"], ["Schema"]}]
       44 GETUPVAL                         R7 5
       45 GETTABLEKS                       R7 R7 K13 ["DefaultMaterialSlot"]
       47 SETTABLEKS                       R7 R6 K7 ["DataId"]
       49 GETIMPORT                        R7 K17 [Enum.FillDirection.Horizontal]
       51 SETTABLEKS                       R7 R6 K10 ["Layout"]
       53 DUPTABLE                         R7 K28 [{["AllowAir"] = False, ["AllowWater"] = True, ["OnClear"], ["OnActivated"], ["PickerId"] = "Import/DefaultMaterial", ["Type"] = "TerrainMaterialPicker"}]
       54 NEWCLOSURE                       R8 P1
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U1
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          UPVAL U6
       59 SETTABLEKS                       R8 R7 K22 ["OnClear"]
       61 NEWCLOSURE                       R8 P2
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U1
       64 CAPTURE                          UPVAL U5
       65 SETTABLEKS                       R8 R7 K23 ["OnActivated"]
       67 SETTABLEKS                       R7 R6 K11 ["Schema"]
       69 MOVE                             R5 R6
       70 NEWTABLE                         R6 2 0
       72 GETUPVAL                         R7 1
       73 GETTABLEKS                       R7 R7 K4 ["SelectionSettings"]
       75 NEWTABLE                         R8 1 0
       77 GETUPVAL                         R9 2
       78 GETTABLEKS                       R9 R9 K5 ["Size"]
       80 DUPTABLE                         R10 K30 [{"Validate"}]
       81 NEWCLOSURE                       R11 P3
       82 CAPTURE                          UPVAL U7
       83 CAPTURE                          VAL R0
       84 CAPTURE                          UPVAL U8
       85 CAPTURE                          UPVAL U1
       86 CAPTURE                          UPVAL U5
       87 CAPTURE                          UPVAL U9
       88 CAPTURE                          UPVAL U10
       89 SETTABLEKS                       R11 R10 K29 ["Validate"]
       91 SETTABLE                         R10 R8 R9
       92 SETTABLE                         R8 R6 R7
       93 GETUPVAL                         R7 1
       94 GETTABLEKS                       R7 R7 K31 ["HeightmapSettings"]
       96 NEWTABLE                         R8 2 0
       98 GETUPVAL                         R9 5
       99 GETTABLEKS                       R9 R9 K32 ["DefaultMaterial"]
      101 SETTABLE                         R5 R8 R9
      102 GETUPVAL                         R9 5
      103 GETTABLEKS                       R9 R9 K33 ["Import"]
      105 DUPTABLE                         R10 K37 [{["Hidden"] = False, ["Label"] = "", ["Schema"]}]
      106 DUPTABLE                         R11 K39 [{"OnClick"}]
      107 NEWCLOSURE                       R12 P4
      108 CAPTURE                          VAL R0
      109 SETTABLEKS                       R12 R11 K38 ["OnClick"]
      111 SETTABLEKS                       R11 R10 K11 ["Schema"]
      113 SETTABLE                         R10 R8 R9
      114 SETTABLE                         R8 R6 R7
      115 SETTABLEKS                       R6 R0 K40 ["_overrides"]
      117 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_operation"]
        2 RETURN                           R1 1

PROTO_12:
        0 NAMECALL                         R1 R0 K0 ["hasError"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+93]
        6 NAMECALL                         R2 R0 K1 ["getPayload"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["HeightmapSettings"]
       12 GETTABLE                         R3 R2 R4
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K3 ["SelectionSettings"]
       16 GETTABLE                         R5 R2 R6
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K4 ["Size"]
       20 GETTABLE                         R4 R5 R6
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R6 R6 K5 ["DefaultMaterialSlot"]
       24 GETTABLE                         R5 R3 R6
       25 GETUPVAL                         R8 3
       26 GETTABLEKS                       R8 R8 K6 ["Heightmap"]
       28 GETTABLE                         R7 R3 R8
       29 GETTABLEKS                       R7 R7 K7 ["Image"]
       31 JUMPIFNOTEQKNIL                  R7 ; [+2]
       33 LOADB                            R6 0 +1
       34 LOADB                            R6 1
       35 LOADB                            R7 0
       36 FASTCALL1                        TYPEOF R5 ; [+3]
       37 MOVE                             R9 R5
       38 GETIMPORT                        R8 K9 [typeof]
       40 CALL                             R8 1 1
       41 JUMPIFNOTEQKS                    R8 K10 ["number"] ; [+10]
       43 GETUPVAL                         R7 4
       44 GETTABLEKS                       R7 R7 K11 ["isSlotValid"]
       46 GETTABLEKS                       R8 R0 K12 ["_services"]
       48 GETTABLEKS                       R8 R8 K13 ["Terrain"]
       50 MOVE                             R9 R5
       51 CALL                             R7 2 1
       52 MOVE                             R8 R1
       53 JUMPIF                           R8 ; [+44]
       54 NOT                              R8 R6
       55 JUMPIF                           R8 ; [+42]
       56 LOADB                            R9 0
       57 GETTABLEKS                       R12 R4 K14 ["X"]
       59 GETTABLEKS                       R13 R4 K15 ["Y"]
       61 MUL                              R11 R12 R13
       62 GETTABLEKS                       R12 R4 K16 ["Z"]
       64 MUL                              R10 R11 R12
       65 GETUPVAL                         R11 5
       66 GETTABLEKS                       R11 R11 K17 ["MaxImportVolume"]
       68 JUMPIFNOTLE                      R10 R11 ; [+26]
       70 LOADB                            R9 0
       71 GETTABLEKS                       R10 R4 K14 ["X"]
       73 GETUPVAL                         R11 5
       74 GETTABLEKS                       R11 R11 K18 ["VoxelResolution"]
       76 JUMPIFNOTLE                      R11 R10 ; [+18]
       78 LOADB                            R9 0
       79 GETTABLEKS                       R10 R4 K15 ["Y"]
       81 GETUPVAL                         R11 5
       82 GETTABLEKS                       R11 R11 K18 ["VoxelResolution"]
       84 JUMPIFNOTLE                      R11 R10 ; [+10]
       86 GETTABLEKS                       R10 R4 K16 ["Z"]
       88 GETUPVAL                         R11 5
       89 GETTABLEKS                       R11 R11 K18 ["VoxelResolution"]
       91 JUMPIFLE                         R11 R10 ; [+2]
       93 LOADB                            R9 0 +1
       94 LOADB                            R9 1
       95 NOT                              R8 R9
       96 JUMPIF                           R8 ; [+1]
       97 NOT                              R8 R7
       98 MOVE                             R1 R8
       99 GETTABLEKS                       R4 R0 K19 ["_overrides"]
      101 GETUPVAL                         R5 1
      102 GETTABLEKS                       R5 R5 K2 ["HeightmapSettings"]
      104 GETTABLE                         R3 R4 R5
      105 GETUPVAL                         R4 3
      106 GETTABLEKS                       R4 R4 K20 ["Import"]
      108 GETTABLE                         R2 R3 R4
      109 GETTABLEKS                       R2 R2 K21 ["Disabled"]
      111 JUMPIFEQ                         R2 R1 ; [+18]
      113 GETTABLEKS                       R4 R0 K19 ["_overrides"]
      115 GETUPVAL                         R5 1
      116 GETTABLEKS                       R5 R5 K2 ["HeightmapSettings"]
      118 GETTABLE                         R3 R4 R5
      119 GETUPVAL                         R4 3
      120 GETTABLEKS                       R4 R4 K20 ["Import"]
      122 GETTABLE                         R2 R3 R4
      123 SETTABLEKS                       R1 R2 K21 ["Disabled"]
      125 GETTABLEKS                       R2 R0 K22 ["OnInternalsChanged"]
      127 NAMECALL                         R2 R2 K23 ["Fire"]
      129 CALL                             R2 1 0
      130 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["saveForm"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 NAMECALL                         R2 R0 K1 ["setDisabledState"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["activate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 JUMPIF                           R1 ; [+79]
        8 NAMECALL                         R1 R0 K1 ["getPayload"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K2 ["HeightmapSettings"]
       14 GETTABLE                         R2 R1 R3
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K3 ["SelectionSettings"]
       18 GETTABLE                         R4 R1 R5
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K4 ["Size"]
       22 GETTABLE                         R3 R4 R5
       23 GETUPVAL                         R6 4
       24 GETTABLEKS                       R6 R6 K5 ["Heightmap"]
       26 GETTABLE                         R5 R2 R6
       27 GETTABLEKS                       R5 R5 K6 ["Image"]
       29 JUMPIFNOTEQKNIL                  R5 ; [+2]
       31 LOADB                            R4 0 +1
       32 LOADB                            R4 1
       33 GETTABLEKS                       R7 R0 K7 ["_overrides"]
       35 GETUPVAL                         R8 2
       36 GETTABLEKS                       R8 R8 K2 ["HeightmapSettings"]
       38 GETTABLE                         R6 R7 R8
       39 GETUPVAL                         R7 4
       40 GETTABLEKS                       R7 R7 K8 ["Import"]
       42 GETTABLE                         R5 R6 R7
       43 NOT                              R6 R4
       44 JUMPIF                           R6 ; [+40]
       45 LOADB                            R7 0
       46 GETTABLEKS                       R10 R3 K9 ["X"]
       48 GETTABLEKS                       R11 R3 K10 ["Y"]
       50 MUL                              R9 R10 R11
       51 GETTABLEKS                       R10 R3 K11 ["Z"]
       53 MUL                              R8 R9 R10
       54 GETUPVAL                         R9 5
       55 GETTABLEKS                       R9 R9 K12 ["MaxImportVolume"]
       57 JUMPIFNOTLE                      R8 R9 ; [+26]
       59 LOADB                            R7 0
       60 GETTABLEKS                       R8 R3 K9 ["X"]
       62 GETUPVAL                         R9 5
       63 GETTABLEKS                       R9 R9 K13 ["VoxelResolution"]
       65 JUMPIFNOTLE                      R9 R8 ; [+18]
       67 LOADB                            R7 0
       68 GETTABLEKS                       R8 R3 K10 ["Y"]
       70 GETUPVAL                         R9 5
       71 GETTABLEKS                       R9 R9 K13 ["VoxelResolution"]
       73 JUMPIFNOTLE                      R9 R8 ; [+10]
       75 GETTABLEKS                       R8 R3 K11 ["Z"]
       77 GETUPVAL                         R9 5
       78 GETTABLEKS                       R9 R9 K13 ["VoxelResolution"]
       80 JUMPIFLE                         R9 R8 ; [+2]
       82 LOADB                            R7 0 +1
       83 LOADB                            R7 1
       84 NOT                              R6 R7
       85 SETTABLEKS                       R6 R5 K14 ["Disabled"]
       87 GETTABLEKS                       R1 R0 K15 ["OnGizmoChanged"]
       89 NAMECALL                         R1 R1 K16 ["Fire"]
       91 CALL                             R1 1 0
       92 GETTABLEKS                       R1 R0 K17 ["_analytics"]
       94 LOADK                            R3 K18 ["Activated"]
       95 GETUPVAL                         R4 6
       96 GETTABLEKS                       R4 R4 K8 ["Import"]
       98 NAMECALL                         R1 R1 K19 ["report"]
      100 CALL                             R1 3 0
      101 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_terrainMaterialPickerRequester"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["_terrainMaterialPickerRequester"]
        5 NAMECALL                         R1 R1 K1 ["cancel"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["deactivate"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["BaseTool"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R0 K10 ["Src"]
       25 GETTABLEKS                       R3 R3 K11 ["Util"]
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R3 K12 ["ConvertTransformToRegion"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R3 K13 ["hasCorrectAspectRatio"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R7 R3 K14 ["hasCorrectScaling"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K5 [require]
       44 GETTABLEKS                       R8 R3 K15 ["TerrainMaterialPickerRequester"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R9 R3 K16 ["TerrainVoxelChannels"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R10 R0 K10 ["Src"]
       56 GETTABLEKS                       R10 R10 K11 ["Util"]
       58 GETTABLEKS                       R10 R10 K17 ["Operations"]
       60 GETTABLEKS                       R10 R10 K18 ["ImportOperation"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R11 R0 K10 ["Src"]
       67 GETTABLEKS                       R11 R11 K11 ["Util"]
       69 GETTABLEKS                       R11 R11 K19 ["isVectorNaNOrInf"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K5 [require]
       74 GETTABLEKS                       R12 R0 K10 ["Src"]
       76 GETTABLEKS                       R12 R12 K20 ["Resources"]
       78 GETTABLEKS                       R12 R12 K21 ["Constants"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K5 [require]
       83 GETTABLEKS                       R13 R0 K10 ["Src"]
       85 GETTABLEKS                       R13 R13 K22 ["Types"]
       87 CALL                             R12 1 1
       88 GETTABLEKS                       R13 R12 K23 ["Category"]
       90 GETTABLEKS                       R14 R12 K24 ["Gizmo"]
       92 GETTABLEKS                       R15 R12 K25 ["HeightmapSettings"]
       94 GETTABLEKS                       R16 R12 K26 ["SelectionSettings"]
       96 GETTABLEKS                       R17 R12 K27 ["Storage"]
       98 GETTABLEKS                       R18 R12 K28 ["Tab"]
      100 GETTABLEKS                       R19 R12 K29 ["Tool"]
      102 GETIMPORT                        R20 K5 [require]
      104 GETTABLEKS                       R21 R0 K10 ["Src"]
      106 GETTABLEKS                       R21 R21 K30 ["Flags"]
      108 GETTABLEKS                       R21 R21 K31 ["getFFlagEnableTerrainPalette"]
      110 CALL                             R20 1 1
      111 NEWTABLE                         R21 0 2
      113 DUPTABLE                         R22 K34 [{"Defaults", "Id"}]
      114 NEWTABLE                         R23 0 0
      116 SETTABLEKS                       R23 R22 K32 ["Defaults"]
      118 GETTABLEKS                       R23 R13 K26 ["SelectionSettings"]
      120 SETTABLEKS                       R23 R22 K33 ["Id"]
      122 DUPTABLE                         R23 K34 [{"Defaults", "Id"}]
      123 NEWTABLE                         R24 4 0
      125 GETTABLEKS                       R25 R15 K35 ["Colormap"]
      127 DUPTABLE                         R26 K38 [{["Error"] = ""}]
      128 SETTABLE                         R26 R24 R25
      129 GETTABLEKS                       R25 R15 K39 ["DefaultMaterial"]
      131 GETIMPORT                        R26 K43 [Enum.Material.Grass]
      133 SETTABLE                         R26 R24 R25
      134 GETTABLEKS                       R25 R15 K44 ["Heightmap"]
      136 DUPTABLE                         R26 K38 [{["Error"] = ""}]
      137 SETTABLE                         R26 R24 R25
      138 GETTABLEKS                       R25 R15 K45 ["Import"]
      140 LOADB                            R26 1
      141 SETTABLE                         R26 R24 R25
      142 SETTABLEKS                       R24 R23 K32 ["Defaults"]
      144 GETTABLEKS                       R24 R13 K25 ["HeightmapSettings"]
      146 SETTABLEKS                       R24 R23 K33 ["Id"]
      148 SETLIST                          R21 R22 2 [1]
      150 NEWTABLE                         R22 0 1
      152 DUPTABLE                         R23 K47 [{"Id", "Schema"}]
      153 GETTABLEKS                       R24 R14 K48 ["Region"]
      155 SETTABLEKS                       R24 R23 K33 ["Id"]
      157 DUPTABLE                         R24 K53 [{["Type"], ["Wireframe"] = False, ["Rotation"] = False}]
      158 GETTABLEKS                       R25 R14 K48 ["Region"]
      160 SETTABLEKS                       R25 R24 K49 ["Type"]
      162 SETTABLEKS                       R24 R23 K46 ["Schema"]
      164 SETLIST                          R22 R23 1 [1]
      166 GETTABLEKS                       R25 R19 K45 ["Import"]
      168 GETTABLEKS                       R26 R18 K54 ["Create"]
      170 MOVE                             R27 R21
      171 MOVE                             R28 R22
      172 NAMECALL                         R23 R2 K55 ["new"]
      174 CALL                             R23 5 1
      175 DUPCLOSURE                       R24 K56 [PROTO_0]
      176 CAPTURE                          VAL R11
      177 DUPCLOSURE                       R25 K57 [PROTO_2]
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R4
      180 CAPTURE                          VAL R13
      181 CAPTURE                          VAL R16
      182 CAPTURE                          VAL R9
      183 CAPTURE                          VAL R1
      184 SETTABLEKS                       R25 R23 K58 ["startOperation"]
      186 DUPCLOSURE                       R25 K59 [PROTO_10]
      187 CAPTURE                          VAL R2
      188 CAPTURE                          VAL R13
      189 CAPTURE                          VAL R16
      190 CAPTURE                          VAL R20
      191 CAPTURE                          VAL R7
      192 CAPTURE                          VAL R15
      193 CAPTURE                          VAL R17
      194 CAPTURE                          VAL R10
      195 CAPTURE                          VAL R11
      196 CAPTURE                          VAL R5
      197 CAPTURE                          VAL R6
      198 SETTABLEKS                       R25 R23 K60 ["init"]
      200 DUPCLOSURE                       R25 K61 [PROTO_11]
      201 SETTABLEKS                       R25 R23 K62 ["operation"]
      203 DUPCLOSURE                       R25 K63 [PROTO_12]
      204 CAPTURE                          VAL R20
      205 CAPTURE                          VAL R13
      206 CAPTURE                          VAL R16
      207 CAPTURE                          VAL R15
      208 CAPTURE                          VAL R8
      209 CAPTURE                          VAL R11
      210 SETTABLEKS                       R25 R23 K64 ["setDisabledState"]
      212 DUPCLOSURE                       R25 K65 [PROTO_13]
      213 CAPTURE                          VAL R2
      214 SETTABLEKS                       R25 R23 K66 ["saveForm"]
      216 DUPCLOSURE                       R25 K67 [PROTO_14]
      217 CAPTURE                          VAL R2
      218 CAPTURE                          VAL R20
      219 CAPTURE                          VAL R13
      220 CAPTURE                          VAL R16
      221 CAPTURE                          VAL R15
      222 CAPTURE                          VAL R11
      223 CAPTURE                          VAL R19
      224 SETTABLEKS                       R25 R23 K68 ["activate"]
      226 DUPCLOSURE                       R25 K69 [PROTO_15]
      227 CAPTURE                          VAL R2
      228 SETTABLEKS                       R25 R23 K70 ["deactivate"]
      230 RETURN                           R23 1
