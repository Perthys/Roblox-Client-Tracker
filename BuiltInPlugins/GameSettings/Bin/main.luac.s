PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+17]
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R2 0
        5 NAMECALL                         R2 R2 K2 ["GetDescendants"]
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 3
        9 FORGPREP_NEXT                    R1
       10 LOADK                            R8 K3 ["GuiObject"]
       11 NAMECALL                         R6 R5 K4 ["IsA"]
       13 CALL                             R6 2 1
       14 JUMPIFNOT                        R6 ; [+2]
       15 SETTABLEKS                       R0 R5 K5 ["Active"]
       17 FORGLOOP                         R1 2 ; [-8]
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["unmount"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 2
        6 NAMECALL                         R1 R1 K1 ["Destroy"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 3
       10 LOADB                            R2 1
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 4
       13 MOVE                             R2 R0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["unmount"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 NAMECALL                         R0 R0 K1 ["Destroy"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 LOADB                            R1 1
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 4
       13 LOADB                            R1 0
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 LOADNIL                          R0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["Size"]
        7 JUMPIF                           R1 ; [+5]
        8 GETIMPORT                        R1 K3 [Vector2.new]
       10 LOADN                            R2 473
       11 LOADN                            R3 197
       12 CALL                             R1 2 1
       13 LOADNIL                          R2
       14 GETUPVAL                         R3 2
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K4 ["Title"]
       18 GETUPVAL                         R7 3
       19 NAMECALL                         R7 R7 K5 ["GenerateGUID"]
       21 CALL                             R7 1 1
       22 CONCAT                           R5 R6 R7
       23 DUPTABLE                         R6 K7 [{"Size", "Modal"}]
       24 SETTABLEKS                       R1 R6 K0 ["Size"]
       26 GETUPVAL                         R8 4
       27 NOT                              R7 R8
       28 SETTABLEKS                       R7 R6 K6 ["Modal"]
       30 NAMECALL                         R3 R3 K8 ["CreateQWidgetPluginGui"]
       32 CALL                             R3 3 1
       33 MOVE                             R2 R3
       34 LOADB                            R3 1
       35 SETTABLEKS                       R3 R2 K9 ["Enabled"]
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R3 R3 K4 ["Title"]
       40 SETTABLEKS                       R3 R2 K4 ["Title"]
       42 GETUPVAL                         R3 5
       43 GETTABLEKS                       R3 R3 K10 ["createElement"]
       45 GETUPVAL                         R4 6
       46 DUPTABLE                         R5 K16 [{"theme", "mouse", "localization", "pluginGui", "plugin"}]
       47 GETUPVAL                         R6 7
       48 CALL                             R6 0 1
       49 SETTABLEKS                       R6 R5 K11 ["theme"]
       51 GETUPVAL                         R6 2
       52 NAMECALL                         R6 R6 K17 ["GetMouse"]
       54 CALL                             R6 1 1
       55 SETTABLEKS                       R6 R5 K12 ["mouse"]
       57 GETUPVAL                         R6 8
       58 SETTABLEKS                       R6 R5 K13 ["localization"]
       60 GETUPVAL                         R6 9
       61 SETTABLEKS                       R6 R5 K14 ["pluginGui"]
       63 GETUPVAL                         R6 2
       64 SETTABLEKS                       R6 R5 K15 ["plugin"]
       66 DUPTABLE                         R6 K19 [{"Content"}]
       67 GETUPVAL                         R7 5
       68 GETTABLEKS                       R7 R7 K10 ["createElement"]
       70 GETUPVAL                         R8 10
       71 GETUPVAL                         R9 11
       72 GETTABLEKS                       R9 R9 K20 ["Dictionary"]
       74 GETTABLEKS                       R9 R9 K21 ["join"]
       76 GETUPVAL                         R10 1
       77 DUPTABLE                         R11 K23 [{"OnResult"}]
       78 NEWCLOSURE                       R12 P0
       79 CAPTURE                          UPVAL U5
       80 CAPTURE                          REF R0
       81 CAPTURE                          REF R2
       82 CAPTURE                          UPVAL U0
       83 CAPTURE                          UPVAL U12
       84 SETTABLEKS                       R12 R11 K22 ["OnResult"]
       86 CALL                             R9 2 -1
       87 CALL                             R7 -1 1
       88 SETTABLEKS                       R7 R6 K18 ["Content"]
       90 CALL                             R3 3 1
       91 NEWCLOSURE                       R6 P1
       92 CAPTURE                          UPVAL U5
       93 CAPTURE                          REF R0
       94 CAPTURE                          REF R2
       95 CAPTURE                          UPVAL U0
       96 CAPTURE                          UPVAL U12
       97 NAMECALL                         R4 R2 K24 ["BindToClose"]
       99 CALL                             R4 2 0
      100 GETUPVAL                         R4 5
      101 GETTABLEKS                       R4 R4 K25 ["mount"]
      103 MOVE                             R5 R3
      104 MOVE                             R6 R2
      105 CALL                             R4 2 1
      106 MOVE                             R0 R4
      107 CLOSEUPVALS                      R0
      108 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R2 K1 [spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          VAL R0
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          UPVAL U9
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U10
       16 CALL                             R2 1 -1
       17 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+16]
        2 GETIMPORT                        R2 K1 [tick]
        4 CALL                             R2 0 1
        5 GETUPVAL                         R3 0
        6 SUB                              R1 R2 R3
        7 LOADNIL                          R2
        8 SETUPVAL                         R2 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["onCloseEvent"]
       12 JUMPIFNOT                        R0 ; [+2]
       13 LOADK                            R3 K3 ["Save"]
       14 JUMP                             ; [+1]
       15 LOADK                            R3 K4 ["Cancel"]
       16 MOVE                             R4 R1
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["dispatch"]
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R3 R3 K1 ["Closed"]
       11 CALL                             R2 1 -1
       12 NAMECALL                         R0 R0 K0 ["dispatch"]
       14 CALL                             R0 -1 0
       15 GETUPVAL                         R0 4
       16 LOADB                            R1 0
       17 SETTABLEKS                       R1 R0 K2 ["Enabled"]
       19 GETUPVAL                         R0 5
       20 GETTABLEKS                       R0 R0 K3 ["unmount"]
       22 GETUPVAL                         R1 6
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 7
       25 JUMPIFNOT                        R0 ; [+6]
       26 GETUPVAL                         R0 8
       27 JUMPIFNOT                        R0 ; [+4]
       28 GETUPVAL                         R0 8
       29 NAMECALL                         R0 R0 K4 ["destroy"]
       31 CALL                             R0 1 0
       32 GETUPVAL                         R0 9
       33 GETUPVAL                         R1 10
       34 JUMPIFNOT                        R1 ; [+16]
       35 GETIMPORT                        R2 K6 [tick]
       37 CALL                             R2 0 1
       38 GETUPVAL                         R3 10
       39 SUB                              R1 R2 R3
       40 LOADNIL                          R2
       41 SETUPVAL                         R2 10
       42 GETUPVAL                         R2 11
       43 GETTABLEKS                       R2 R2 K7 ["onCloseEvent"]
       45 JUMPIFNOT                        R0 ; [+2]
       46 LOADK                            R3 K8 ["Save"]
       47 JUMP                             ; [+1]
       48 LOADK                            R3 K9 ["Cancel"]
       49 MOVE                             R4 R1
       50 CALL                             R2 2 0
       51 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 0
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R3 2
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R4 R4 K0 ["Open"]
        9 CALL                             R3 1 -1
       10 NAMECALL                         R1 R1 K1 ["dispatch"]
       12 CALL                             R1 -1 0
       13 GETUPVAL                         R1 4
       14 GETTABLEKS                       R1 R1 K2 ["Enabled"]
       16 JUMPIF                           R1 ; [+4]
       17 GETUPVAL                         R1 4
       18 LOADB                            R2 1
       19 SETTABLEKS                       R2 R1 K2 ["Enabled"]
       21 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getState"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K1 ["Status"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          UPVAL U8
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U10
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K2 ["Working"]
       22 JUMPIFNOTEQ                      R2 R4 ; [+5]
       24 JUMPIF                           R0 ; [+3]
       25 MOVE                             R4 R3
       26 CALL                             R4 0 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R4 3
       29 GETTABLEKS                       R4 R4 K3 ["Closed"]
       31 JUMPIFEQ                         R2 R4 ; [+147]
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R4 R4 K4 ["Error"]
       36 JUMPIFNOTEQ                      R2 R4 ; [+12]
       38 JUMPIFNOT                        R0 ; [+10]
       39 GETUPVAL                         R4 0
       40 GETUPVAL                         R6 2
       41 GETUPVAL                         R7 3
       42 GETTABLEKS                       R7 R7 K5 ["Open"]
       44 CALL                             R6 1 -1
       45 NAMECALL                         R4 R4 K6 ["dispatch"]
       47 CALL                             R4 -1 0
       48 RETURN                           R0 0
       49 GETTABLEKS                       R4 R1 K7 ["Settings"]
       51 GETTABLEKS                       R4 R4 K8 ["Changed"]
       53 MOVE                             R5 R4
       54 JUMPIFNOT                        R5 ; [+4]
       55 GETUPVAL                         R6 11
       56 MOVE                             R7 R4
       57 CALL                             R6 1 1
       58 NOT                              R5 R6
       59 JUMPIFNOT                        R5 ; [+75]
       60 JUMPIF                           R0 ; [+74]
       61 LOADNIL                          R6
       62 DUPTABLE                         R7 K13 [{"Size", "Title", "Header", "Buttons"}]
       63 GETIMPORT                        R8 K16 [Vector2.new]
       65 LOADN                            R9 343
       66 LOADN                            R10 145
       67 CALL                             R8 2 1
       68 SETTABLEKS                       R8 R7 K9 ["Size"]
       70 GETUPVAL                         R8 12
       71 LOADK                            R10 K17 ["General"]
       72 LOADK                            R11 K18 ["CancelDialogHeader"]
       73 NAMECALL                         R8 R8 K19 ["getText"]
       75 CALL                             R8 3 1
       76 SETTABLEKS                       R8 R7 K10 ["Title"]
       78 GETUPVAL                         R8 12
       79 LOADK                            R10 K17 ["General"]
       80 LOADK                            R11 K20 ["CancelDialogBody"]
       81 NAMECALL                         R8 R8 K19 ["getText"]
       83 CALL                             R8 3 1
       84 SETTABLEKS                       R8 R7 K11 ["Header"]
       86 NEWTABLE                         R8 0 2
       88 GETUPVAL                         R9 12
       89 LOADK                            R11 K17 ["General"]
       90 LOADK                            R12 K21 ["ReplyNo"]
       91 NAMECALL                         R9 R9 K19 ["getText"]
       93 CALL                             R9 3 1
       94 GETUPVAL                         R10 12
       95 LOADK                            R12 K17 ["General"]
       96 LOADK                            R13 K22 ["ReplyYes"]
       97 NAMECALL                         R10 R10 K19 ["getText"]
       99 CALL                             R10 3 -1
      100 SETLIST                          R8 R9 -1 [1]
      102 SETTABLEKS                       R8 R7 K12 ["Buttons"]
      104 MOVE                             R6 R7
      105 GETUPVAL                         R8 13
      106 MOVE                             R9 R6
      107 GETUPVAL                         R10 14
      108 GETTABLEKS                       R10 R10 K15 ["new"]
      110 NEWCLOSURE                       R11 P1
      111 CAPTURE                          UPVAL U15
      112 CAPTURE                          VAL R9
      113 CAPTURE                          UPVAL U16
      114 CAPTURE                          UPVAL U17
      115 CAPTURE                          UPVAL U18
      116 CAPTURE                          UPVAL U5
      117 CAPTURE                          UPVAL U19
      118 CAPTURE                          UPVAL U20
      119 CAPTURE                          UPVAL U12
      120 CAPTURE                          UPVAL U4
      121 CAPTURE                          VAL R8
      122 CAPTURE                          UPVAL U21
      123 CALL                             R10 1 1
      124 MOVE                             R7 R10
      125 NEWCLOSURE                       R9 P2
      126 CAPTURE                          VAL R3
      127 CAPTURE                          UPVAL U0
      128 CAPTURE                          UPVAL U2
      129 CAPTURE                          UPVAL U3
      130 CAPTURE                          UPVAL U4
      131 NAMECALL                         R7 R7 K23 ["andThen"]
      133 CALL                             R7 2 0
      134 RETURN                           R0 0
      135 GETUPVAL                         R6 0
      136 GETUPVAL                         R8 2
      137 GETUPVAL                         R9 3
      138 GETTABLEKS                       R9 R9 K3 ["Closed"]
      140 CALL                             R8 1 -1
      141 NAMECALL                         R6 R6 K6 ["dispatch"]
      143 CALL                             R6 -1 0
      144 GETUPVAL                         R6 4
      145 LOADB                            R7 0
      146 SETTABLEKS                       R7 R6 K24 ["Enabled"]
      148 GETUPVAL                         R6 5
      149 GETTABLEKS                       R6 R6 K25 ["unmount"]
      151 GETUPVAL                         R7 6
      152 CALL                             R6 1 0
      153 GETUPVAL                         R6 7
      154 JUMPIFNOT                        R6 ; [+6]
      155 GETUPVAL                         R6 8
      156 JUMPIFNOT                        R6 ; [+4]
      157 GETUPVAL                         R6 8
      158 NAMECALL                         R6 R6 K26 ["destroy"]
      160 CALL                             R6 1 0
      161 GETUPVAL                         R6 9
      162 JUMPIFNOT                        R6 ; [+16]
      163 GETIMPORT                        R7 K28 [tick]
      165 CALL                             R7 0 1
      166 GETUPVAL                         R8 9
      167 SUB                              R6 R7 R8
      168 LOADNIL                          R7
      169 SETUPVAL                         R7 9
      170 GETUPVAL                         R7 10
      171 GETTABLEKS                       R7 R7 K29 ["onCloseEvent"]
      173 JUMPIFNOT                        R0 ; [+2]
      174 LOADK                            R8 K30 ["Save"]
      175 JUMP                             ; [+1]
      176 LOADK                            R8 K31 ["Cancel"]
      177 MOVE                             R9 R6
      178 CALL                             R7 2 0
      179 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Name"]
        3 GETIMPORT                        R1 K3 [Vector2.new]
        5 LOADN                            R2 960
        6 LOADN                            R3 600
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 2
        9 MOVE                             R4 R0
       10 DUPTABLE                         R5 K11 [{["Size"], ["MinSize"], ["Resizable"] = True, ["Modal"], ["InitialEnabled"] = False}]
       11 SETTABLEKS                       R1 R5 K4 ["Size"]
       13 SETTABLEKS                       R1 R5 K5 ["MinSize"]
       15 GETUPVAL                         R7 3
       16 NOT                              R6 R7
       17 SETTABLEKS                       R6 R5 K8 ["Modal"]
       19 NAMECALL                         R2 R2 K12 ["CreateQWidgetPluginGui"]
       21 CALL                             R2 3 1
       22 SETUPVAL                         R2 1
       23 GETUPVAL                         R2 1
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K0 ["Name"]
       27 SETTABLEKS                       R3 R2 K0 ["Name"]
       29 GETUPVAL                         R2 1
       30 GETUPVAL                         R4 4
       31 JUMPIFNOT                        R4 ; [+7]
       32 GETUPVAL                         R3 5
       33 LOADK                            R5 K13 ["General"]
       34 LOADK                            R6 K14 ["PluginNameExp"]
       35 NAMECALL                         R3 R3 K15 ["getText"]
       37 CALL                             R3 3 1
       38 JUMP                             ; [+6]
       39 GETUPVAL                         R3 5
       40 LOADK                            R5 K13 ["General"]
       41 LOADK                            R6 K16 ["PluginName"]
       42 NAMECALL                         R3 R3 K15 ["getText"]
       44 CALL                             R3 3 1
       45 SETTABLEKS                       R3 R2 K17 ["Title"]
       47 GETUPVAL                         R2 1
       48 GETIMPORT                        R3 K21 [Enum.ZIndexBehavior.Sibling]
       50 SETTABLEKS                       R3 R2 K19 ["ZIndexBehavior"]
       52 GETUPVAL                         R2 1
       53 NEWCLOSURE                       R4 P0
       54 CAPTURE                          UPVAL U6
       55 NAMECALL                         R2 R2 K22 ["BindToClose"]
       57 CALL                             R2 2 0
       58 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R3 K1 [game]
        2 LOADK                            R5 K2 ["TeamCreateService"]
        3 NAMECALL                         R3 R3 K3 ["GetService"]
        5 CALL                             R3 2 1
        6 NAMECALL                         R3 R3 K4 ["CloseGameIfUserDoesntHavePerms"]
        8 CALL                             R3 1 0
        9 GETUPVAL                         R3 0
       10 JUMPIFNOT                        R3 ; [+12]
       11 GETUPVAL                         R3 0
       12 NAMECALL                         R3 R3 K5 ["getState"]
       14 CALL                             R3 1 1
       15 GETTABLEKS                       R4 R3 K6 ["Status"]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K7 ["Closed"]
       20 JUMPIFEQ                         R4 R5 ; [+2]
       22 RETURN                           R0 0
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R3 R3 K8 ["createElement"]
       26 GETUPVAL                         R4 3
       27 DUPTABLE                         R5 K17 [{"store", "showDialog", "theme", "mouse", "localization", "pluginGui", "plugin", "worldRootPhysics"}]
       28 GETUPVAL                         R6 0
       29 SETTABLEKS                       R6 R5 K9 ["store"]
       31 GETUPVAL                         R6 4
       32 SETTABLEKS                       R6 R5 K10 ["showDialog"]
       34 GETUPVAL                         R6 5
       35 CALL                             R6 0 1
       36 SETTABLEKS                       R6 R5 K11 ["theme"]
       38 GETUPVAL                         R6 6
       39 NAMECALL                         R6 R6 K18 ["GetMouse"]
       41 CALL                             R6 1 1
       42 SETTABLEKS                       R6 R5 K12 ["mouse"]
       44 GETUPVAL                         R6 7
       45 SETTABLEKS                       R6 R5 K13 ["localization"]
       47 GETUPVAL                         R6 8
       48 SETTABLEKS                       R6 R5 K14 ["pluginGui"]
       50 GETUPVAL                         R6 6
       51 SETTABLEKS                       R6 R5 K15 ["plugin"]
       53 GETUPVAL                         R6 9
       54 SETTABLEKS                       R6 R5 K16 ["worldRootPhysics"]
       56 DUPTABLE                         R6 K20 [{"mainView"}]
       57 GETUPVAL                         R7 2
       58 GETTABLEKS                       R7 R7 K8 ["createElement"]
       60 GETUPVAL                         R8 10
       61 DUPTABLE                         R9 K23 [{"OnClose", "FirstSelectedId"}]
       62 GETUPVAL                         R10 11
       63 SETTABLEKS                       R10 R9 K21 ["OnClose"]
       65 SETTABLEKS                       R2 R9 K22 ["FirstSelectedId"]
       67 CALL                             R7 2 1
       68 SETTABLEKS                       R7 R6 K19 ["mainView"]
       70 CALL                             R3 3 1
       71 GETUPVAL                         R4 0
       72 GETUPVAL                         R6 12
       73 CALL                             R6 0 -1
       74 NAMECALL                         R4 R4 K24 ["dispatch"]
       76 CALL                             R4 -1 0
       77 GETUPVAL                         R4 0
       78 GETUPVAL                         R6 13
       79 MOVE                             R7 R0
       80 CALL                             R6 1 -1
       81 NAMECALL                         R4 R4 K24 ["dispatch"]
       83 CALL                             R4 -1 0
       84 GETUPVAL                         R4 0
       85 GETUPVAL                         R6 14
       86 MOVE                             R7 R1
       87 CALL                             R6 1 -1
       88 NAMECALL                         R4 R4 K24 ["dispatch"]
       90 CALL                             R4 -1 0
       91 GETUPVAL                         R4 0
       92 GETUPVAL                         R6 15
       93 GETUPVAL                         R7 1
       94 GETTABLEKS                       R7 R7 K25 ["Open"]
       96 CALL                             R6 1 -1
       97 NAMECALL                         R4 R4 K24 ["dispatch"]
       99 CALL                             R4 -1 0
      100 GETUPVAL                         R4 2
      101 GETTABLEKS                       R4 R4 K26 ["mount"]
      103 MOVE                             R5 R3
      104 GETUPVAL                         R6 8
      105 CALL                             R4 2 1
      106 SETUPVAL                         R4 16
      107 GETUPVAL                         R4 8
      108 LOADB                            R5 1
      109 SETTABLEKS                       R5 R4 K27 ["Enabled"]
      111 GETUPVAL                         R4 17
      112 JUMPIFNOT                        R4 ; [+28]
      113 GETIMPORT                        R4 K1 [game]
      115 LOADK                            R6 K28 ["StudioService"]
      116 NAMECALL                         R4 R4 K3 ["GetService"]
      118 CALL                             R4 2 1
      119 NAMECALL                         R4 R4 K29 ["HasInternalPermission"]
      121 CALL                             R4 1 1
      122 JUMPIFNOT                        R4 ; [+18]
      123 GETUPVAL                         R4 19
      124 GETTABLEKS                       R4 R4 K30 ["Packages"]
      126 GETTABLEKS                       R4 R4 K31 ["DeveloperTools"]
      128 GETTABLEKS                       R4 R4 K32 ["forPlugin"]
      130 LOADK                            R5 K33 ["Game Settings"]
      131 GETUPVAL                         R6 6
      132 CALL                             R4 2 1
      133 SETUPVAL                         R4 18
      134 GETUPVAL                         R4 18
      135 LOADK                            R6 K34 ["Roact tree"]
      136 GETUPVAL                         R7 16
      137 GETUPVAL                         R8 2
      138 NAMECALL                         R4 R4 K35 ["addRoactTree"]
      140 CALL                             R4 4 0
      141 GETUPVAL                         R4 20
      142 GETTABLEKS                       R4 R4 K36 ["onOpenEvent"]
      144 GETUPVAL                         R5 6
      145 NAMECALL                         R5 R5 K37 ["GetStudioUserId"]
      147 CALL                             R5 1 1
      148 MOVE                             R6 R0
      149 CALL                             R4 2 0
      150 GETIMPORT                        R4 K39 [tick]
      152 CALL                             R4 0 1
      153 SETUPVAL                         R4 21
      154 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K1 [game]
        3 GETTABLEKS                       R1 R1 K2 ["GameId"]
        5 GETIMPORT                        R2 K1 [game]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["Status"]
        2 GETUPVAL                         R2 0
        3 JUMPIFEQ                         R1 R2 ; [+28]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R4 R0 K0 ["Status"]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K1 ["Closed"]
       11 JUMPIFNOTEQ                      R4 R5 ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 NAMECALL                         R1 R1 K2 ["SetActive"]
       17 CALL                             R1 2 0
       18 GETUPVAL                         R1 3
       19 GETTABLEKS                       R3 R0 K0 ["Status"]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K3 ["Working"]
       24 JUMPIFNOTEQ                      R3 R4 ; [+2]
       26 LOADB                            R2 0 +1
       27 LOADB                            R2 1
       28 CALL                             R1 1 0
       29 GETTABLEKS                       R1 R0 K0 ["Status"]
       31 SETUPVAL                         R1 0
       32 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K1 [game]
        3 GETTABLEKS                       R2 R2 K2 ["GameId"]
        5 GETIMPORT                        R3 K1 [game]
        7 MOVE                             R4 R0
        8 CALL                             R1 3 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Name"]
        4 SETTABLEKS                       R1 R0 K0 ["Name"]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["mainButton"]
        9 GETUPVAL                         R1 3
       10 NAMECALL                         R1 R1 K2 ["IsEdit"]
       12 CALL                             R1 1 1
       13 JUMPIFNOT                        R1 ; [+38]
       14 GETUPVAL                         R1 4
       15 CALL                             R1 0 0
       16 LOADB                            R1 1
       17 SETTABLEKS                       R1 R0 K3 ["ClickableWhenViewportHidden"]
       19 LOADB                            R1 1
       20 SETTABLEKS                       R1 R0 K4 ["Enabled"]
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R1 R1 K5 ["mainButtonClickedSignal"]
       25 NEWCLOSURE                       R3 P0
       26 CAPTURE                          UPVAL U5
       27 NAMECALL                         R1 R1 K6 ["Connect"]
       29 CALL                             R1 2 0
       30 GETUPVAL                         R1 6
       31 GETTABLEKS                       R1 R1 K7 ["changed"]
       33 NEWCLOSURE                       R3 P1
       34 CAPTURE                          UPVAL U7
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U8
       37 CAPTURE                          UPVAL U9
       38 NAMECALL                         R1 R1 K8 ["connect"]
       40 CALL                             R1 2 0
       41 GETUPVAL                         R2 2
       42 GETTABLEKS                       R2 R2 K10 ["signals"]
       44 GETTABLEKS                       R1 R2 K9 ["StudioService.OnOpenGameSettings"]
       46 NEWCLOSURE                       R3 P2
       47 CAPTURE                          UPVAL U5
       48 NAMECALL                         R1 R1 K6 ["Connect"]
       50 CALL                             R1 2 0
       51 RETURN                           R0 0
       52 LOADB                            R1 0
       53 SETTABLEKS                       R1 R0 K4 ["Enabled"]
       55 RETURN                           R0 0

PROTO_17:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R2 K1 [script]
        4 GETTABLEKS                       R2 R2 K2 ["Parent"]
        6 GETTABLEKS                       R2 R2 K2 ["Parent"]
        8 GETIMPORT                        R3 K4 [game]
       10 LOADK                            R5 K5 ["DebugBuiltInPluginModalsNotBlocking"]
       11 NAMECALL                         R3 R3 K6 ["GetFastFlag"]
       13 CALL                             R3 2 1
       14 GETIMPORT                        R4 K4 [game]
       16 LOADK                            R6 K7 ["DeveloperSubscriptionsEnabled"]
       17 NAMECALL                         R4 R4 K6 ["GetFastFlag"]
       19 CALL                             R4 2 1
       20 GETIMPORT                        R5 K4 [game]
       22 LOADK                            R7 K8 ["GameSettingsRoactInspector"]
       23 LOADB                            R8 0
       24 NAMECALL                         R5 R5 K9 ["DefineFastFlag"]
       26 CALL                             R5 3 1
       27 GETIMPORT                        R6 K4 [game]
       29 LOADK                            R8 K10 ["TranslateGameModeratedErrors"]
       30 LOADB                            R9 0
       31 NAMECALL                         R6 R6 K9 ["DefineFastFlag"]
       33 CALL                             R6 3 1
       34 GETIMPORT                        R7 K4 [game]
       36 LOADK                            R9 K11 ["RemoveGameSettingsMonetizationPage"]
       37 NAMECALL                         R7 R7 K6 ["GetFastFlag"]
       39 CALL                             R7 2 1
       40 GETIMPORT                        R8 K13 [require]
       42 GETTABLEKS                       R9 R2 K14 ["Src"]
       44 GETTABLEKS                       R9 R9 K15 ["Flags"]
       46 GETTABLEKS                       R9 R9 K16 ["getFFlagGameSettingsGameToExperience"]
       48 CALL                             R8 1 1
       49 CALL                             R8 0 1
       50 GETIMPORT                        R9 K4 [game]
       52 LOADK                            R11 K17 ["RunService"]
       53 NAMECALL                         R9 R9 K18 ["GetService"]
       55 CALL                             R9 2 1
       56 GETIMPORT                        R10 K4 [game]
       58 LOADK                            R12 K19 ["HttpService"]
       59 NAMECALL                         R10 R10 K18 ["GetService"]
       61 CALL                             R10 2 1
       62 GETIMPORT                        R11 K13 [require]
       64 GETTABLEKS                       R12 R2 K20 ["Packages"]
       66 GETTABLEKS                       R12 R12 K21 ["Roact"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K13 [require]
       71 GETTABLEKS                       R13 R2 K20 ["Packages"]
       73 GETTABLEKS                       R13 R13 K22 ["Rodux"]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K13 [require]
       78 GETTABLEKS                       R14 R2 K20 ["Packages"]
       80 GETTABLEKS                       R14 R14 K23 ["Cryo"]
       82 CALL                             R13 1 1
       83 GETIMPORT                        R14 K13 [require]
       85 GETTABLEKS                       R15 R2 K20 ["Packages"]
       87 GETTABLEKS                       R15 R15 K24 ["Framework"]
       89 CALL                             R14 1 1
       90 GETTABLEKS                       R15 R14 K25 ["ContextServices"]
       92 GETTABLEKS                       R16 R14 K26 ["Util"]
       94 GETTABLEKS                       R17 R16 K27 ["Promise"]
       96 GETIMPORT                        R18 K13 [require]
       98 GETTABLEKS                       R19 R2 K14 ["Src"]
      100 GETTABLEKS                       R19 R19 K28 ["Components"]
      102 GETTABLEKS                       R19 R19 K29 ["MainView"]
      104 CALL                             R18 1 1
      105 GETIMPORT                        R19 K13 [require]
      107 GETTABLEKS                       R20 R2 K14 ["Src"]
      109 GETTABLEKS                       R20 R20 K28 ["Components"]
      111 GETTABLEKS                       R20 R20 K30 ["Dialog"]
      113 GETTABLEKS                       R20 R20 K31 ["SimpleDialog"]
      115 CALL                             R19 1 1
      116 GETIMPORT                        R20 K13 [require]
      118 GETTABLEKS                       R21 R2 K14 ["Src"]
      120 GETTABLEKS                       R21 R21 K32 ["Reducers"]
      122 GETTABLEKS                       R21 R21 K33 ["MainReducer"]
      124 CALL                             R20 1 1
      125 GETIMPORT                        R21 K13 [require]
      127 GETTABLEKS                       R22 R2 K14 ["Src"]
      129 GETTABLEKS                       R22 R22 K28 ["Components"]
      131 GETTABLEKS                       R22 R22 K34 ["ExternalServicesWrapper"]
      133 CALL                             R21 1 1
      134 GETIMPORT                        R22 K13 [require]
      136 GETTABLEKS                       R23 R2 K14 ["Src"]
      138 GETTABLEKS                       R23 R23 K26 ["Util"]
      140 GETTABLEKS                       R23 R23 K35 ["MakeTheme"]
      142 CALL                             R22 1 1
      143 GETIMPORT                        R23 K13 [require]
      145 GETTABLEKS                       R24 R2 K14 ["Src"]
      147 GETTABLEKS                       R24 R24 K25 ["ContextServices"]
      149 GETTABLEKS                       R24 R24 K36 ["Networking"]
      151 CALL                             R23 1 1
      152 GETIMPORT                        R24 K13 [require]
      154 GETTABLEKS                       R25 R2 K37 ["Pages"]
      156 GETTABLEKS                       R25 R25 K38 ["WorldPage"]
      158 GETTABLEKS                       R25 R25 K25 ["ContextServices"]
      160 GETTABLEKS                       R25 R25 K39 ["WorldRootPhysics"]
      162 CALL                             R24 1 1
      163 GETIMPORT                        R25 K13 [require]
      165 GETTABLEKS                       R26 R2 K14 ["Src"]
      167 GETTABLEKS                       R26 R26 K40 ["Controllers"]
      169 GETTABLEKS                       R26 R26 K41 ["GameInfoController"]
      171 CALL                             R25 1 1
      172 GETIMPORT                        R26 K13 [require]
      174 GETTABLEKS                       R27 R2 K14 ["Src"]
      176 GETTABLEKS                       R27 R27 K40 ["Controllers"]
      178 GETTABLEKS                       R27 R27 K42 ["GameMetadataController"]
      180 CALL                             R26 1 1
      181 GETIMPORT                        R27 K13 [require]
      183 GETTABLEKS                       R28 R2 K14 ["Src"]
      185 GETTABLEKS                       R28 R28 K40 ["Controllers"]
      187 GETTABLEKS                       R28 R28 K43 ["GroupMetadataController"]
      189 CALL                             R27 1 1
      190 GETIMPORT                        R28 K13 [require]
      192 GETTABLEKS                       R29 R2 K37 ["Pages"]
      194 GETTABLEKS                       R29 R29 K44 ["PermissionsPage"]
      196 GETTABLEKS                       R29 R29 K40 ["Controllers"]
      198 GETTABLEKS                       R29 R29 K45 ["GamePermissionsController"]
      200 CALL                             R28 1 1
      201 GETIMPORT                        R29 K13 [require]
      203 GETTABLEKS                       R30 R2 K37 ["Pages"]
      205 GETTABLEKS                       R30 R30 K46 ["OptionsPage"]
      207 GETTABLEKS                       R30 R30 K40 ["Controllers"]
      209 GETTABLEKS                       R30 R30 K47 ["GameOptionsController"]
      211 CALL                             R29 1 1
      212 GETIMPORT                        R30 K13 [require]
      214 GETTABLEKS                       R31 R2 K37 ["Pages"]
      216 GETTABLEKS                       R31 R31 K48 ["CommunicationPage"]
      218 GETTABLEKS                       R31 R31 K40 ["Controllers"]
      220 GETTABLEKS                       R31 R31 K49 ["CommunicationController"]
      222 CALL                             R30 1 1
      223 GETIMPORT                        R31 K13 [require]
      225 GETTABLEKS                       R32 R2 K37 ["Pages"]
      227 GETTABLEKS                       R32 R32 K50 ["MonetizationPage"]
      229 GETTABLEKS                       R32 R32 K40 ["Controllers"]
      231 GETTABLEKS                       R32 R32 K51 ["MonetizationController"]
      233 CALL                             R31 1 1
      234 GETIMPORT                        R32 K13 [require]
      236 GETTABLEKS                       R33 R2 K37 ["Pages"]
      238 GETTABLEKS                       R33 R33 K50 ["MonetizationPage"]
      240 GETTABLEKS                       R33 R33 K40 ["Controllers"]
      242 GETTABLEKS                       R33 R33 K52 ["DevSubsController"]
      244 CALL                             R32 1 1
      245 GETIMPORT                        R33 K13 [require]
      247 GETTABLEKS                       R34 R2 K37 ["Pages"]
      249 GETTABLEKS                       R34 R34 K53 ["PlacesPage"]
      251 GETTABLEKS                       R34 R34 K40 ["Controllers"]
      253 GETTABLEKS                       R34 R34 K54 ["PlacesController"]
      255 CALL                             R33 1 1
      256 GETIMPORT                        R34 K13 [require]
      258 GETTABLEKS                       R35 R2 K14 ["Src"]
      260 GETTABLEKS                       R35 R35 K40 ["Controllers"]
      262 GETTABLEKS                       R35 R35 K55 ["PolicyInfoController"]
      264 CALL                             R34 1 1
      265 GETIMPORT                        R35 K13 [require]
      267 GETTABLEKS                       R36 R2 K37 ["Pages"]
      269 GETTABLEKS                       R36 R36 K56 ["SecurityPage"]
      271 GETTABLEKS                       R36 R36 K40 ["Controllers"]
      273 GETTABLEKS                       R36 R36 K57 ["SecurityController"]
      275 CALL                             R35 1 1
      276 GETIMPORT                        R36 K13 [require]
      278 GETTABLEKS                       R37 R2 K37 ["Pages"]
      280 GETTABLEKS                       R37 R37 K58 ["LocalizationPage"]
      282 GETTABLEKS                       R37 R37 K40 ["Controllers"]
      284 GETTABLEKS                       R37 R37 K59 ["LocalizationPageController"]
      286 CALL                             R36 1 1
      287 GETIMPORT                        R37 K13 [require]
      289 GETTABLEKS                       R38 R2 K14 ["Src"]
      291 GETTABLEKS                       R38 R38 K26 ["Util"]
      293 GETTABLEKS                       R38 R38 K60 ["CurrentStatus"]
      295 CALL                             R37 1 1
      296 GETIMPORT                        R38 K13 [require]
      298 GETTABLEKS                       R39 R2 K14 ["Src"]
      300 GETTABLEKS                       R39 R39 K61 ["Actions"]
      302 GETTABLEKS                       R39 R39 K62 ["ResetStore"]
      304 CALL                             R38 1 1
      305 GETIMPORT                        R39 K13 [require]
      307 GETTABLEKS                       R40 R2 K14 ["Src"]
      309 GETTABLEKS                       R40 R40 K61 ["Actions"]
      311 GETTABLEKS                       R40 R40 K63 ["SetCurrentStatus"]
      313 CALL                             R39 1 1
      314 GETIMPORT                        R40 K13 [require]
      316 GETTABLEKS                       R41 R2 K14 ["Src"]
      318 GETTABLEKS                       R41 R41 K61 ["Actions"]
      320 GETTABLEKS                       R41 R41 K64 ["DiscardChanges"]
      322 CALL                             R40 1 1
      323 GETIMPORT                        R41 K13 [require]
      325 GETTABLEKS                       R42 R2 K14 ["Src"]
      327 GETTABLEKS                       R42 R42 K61 ["Actions"]
      329 GETTABLEKS                       R42 R42 K65 ["SetGameId"]
      331 CALL                             R41 1 1
      332 GETIMPORT                        R42 K13 [require]
      334 GETTABLEKS                       R43 R2 K14 ["Src"]
      336 GETTABLEKS                       R43 R43 K61 ["Actions"]
      338 GETTABLEKS                       R43 R43 K66 ["SetGame"]
      340 CALL                             R42 1 1
      341 GETIMPORT                        R43 K13 [require]
      343 GETTABLEKS                       R44 R2 K14 ["Src"]
      345 GETTABLEKS                       R44 R44 K26 ["Util"]
      347 GETTABLEKS                       R44 R44 K67 ["isEmpty"]
      349 CALL                             R43 1 1
      350 GETIMPORT                        R44 K13 [require]
      352 GETTABLEKS                       R45 R2 K14 ["Src"]
      354 GETTABLEKS                       R45 R45 K26 ["Util"]
      356 GETTABLEKS                       R45 R45 K68 ["Analytics"]
      358 CALL                             R44 1 1
      359 LOADNIL                          R45
      360 LOADNIL                          R46
      361 LOADNIL                          R47
      362 LOADNIL                          R48
      363 GETTABLEKS                       R49 R24 K69 ["new"]
      365 CALL                             R49 0 1
      366 NEWTABLE                         R50 16 0
      368 GETTABLEKS                       R51 R23 K69 ["new"]
      370 CALL                             R51 0 1
      371 GETTABLEKS                       R52 R25 K69 ["new"]
      373 NAMECALL                         R53 R51 K70 ["get"]
      375 CALL                             R53 1 -1
      376 CALL                             R52 -1 1
      377 GETTABLEKS                       R53 R26 K69 ["new"]
      379 NAMECALL                         R54 R51 K70 ["get"]
      381 CALL                             R54 1 -1
      382 CALL                             R53 -1 1
      383 GETTABLEKS                       R54 R27 K69 ["new"]
      385 NAMECALL                         R55 R51 K70 ["get"]
      387 CALL                             R55 1 -1
      388 CALL                             R54 -1 1
      389 JUMPIFNOT                        R7 ; [+2]
      390 LOADNIL                          R55
      391 JUMP                             ; [+6]
      392 GETTABLEKS                       R55 R28 K69 ["new"]
      394 NAMECALL                         R56 R51 K70 ["get"]
      396 CALL                             R56 1 -1
      397 CALL                             R55 -1 1
      398 JUMPIFNOT                        R7 ; [+2]
      399 LOADNIL                          R56
      400 JUMP                             ; [+6]
      401 GETTABLEKS                       R56 R31 K69 ["new"]
      403 NAMECALL                         R57 R51 K70 ["get"]
      405 CALL                             R57 1 -1
      406 CALL                             R56 -1 1
      407 JUMPIFNOT                        R7 ; [+2]
      408 LOADNIL                          R57
      409 JUMP                             ; [+9]
      410 JUMPIFNOT                        R4 ; [+7]
      411 GETTABLEKS                       R57 R32 K69 ["new"]
      413 NAMECALL                         R58 R51 K70 ["get"]
      415 CALL                             R58 1 -1
      416 CALL                             R57 -1 1
      417 JUMPIF                           R57 ; [+1]
      418 LOADNIL                          R57
      419 GETTABLEKS                       R58 R29 K69 ["new"]
      421 NAMECALL                         R59 R51 K70 ["get"]
      423 CALL                             R59 1 -1
      424 CALL                             R58 -1 1
      425 GETTABLEKS                       R59 R30 K69 ["new"]
      427 NAMECALL                         R60 R51 K70 ["get"]
      429 CALL                             R60 1 -1
      430 CALL                             R59 -1 1
      431 GETTABLEKS                       R60 R35 K69 ["new"]
      433 NAMECALL                         R61 R51 K70 ["get"]
      435 CALL                             R61 1 -1
      436 CALL                             R60 -1 1
      437 GETTABLEKS                       R61 R33 K69 ["new"]
      439 NAMECALL                         R62 R51 K70 ["get"]
      441 CALL                             R62 1 -1
      442 CALL                             R61 -1 1
      443 GETTABLEKS                       R62 R36 K69 ["new"]
      445 NAMECALL                         R63 R51 K70 ["get"]
      447 CALL                             R63 1 -1
      448 CALL                             R62 -1 1
      449 GETTABLEKS                       R63 R34 K69 ["new"]
      451 NAMECALL                         R64 R51 K70 ["get"]
      453 CALL                             R64 1 -1
      454 CALL                             R63 -1 1
      455 NAMECALL                         R64 R51 K70 ["get"]
      457 CALL                             R64 1 1
      458 SETTABLEKS                       R64 R50 K71 ["networking"]
      460 NAMECALL                         R64 R49 K70 ["get"]
      462 CALL                             R64 1 1
      463 SETTABLEKS                       R64 R50 K72 ["worldRootPhysicsController"]
      465 SETTABLEKS                       R52 R50 K73 ["gameInfoController"]
      467 SETTABLEKS                       R53 R50 K74 ["gameMetadataController"]
      469 SETTABLEKS                       R54 R50 K75 ["groupMetadataController"]
      471 SETTABLEKS                       R55 R50 K76 ["gamePermissionsController"]
      473 SETTABLEKS                       R58 R50 K77 ["gameOptionsController"]
      475 SETTABLEKS                       R59 R50 K78 ["communicationController"]
      477 SETTABLEKS                       R56 R50 K79 ["monetizationController"]
      479 SETTABLEKS                       R57 R50 K80 ["devSubsController"]
      481 SETTABLEKS                       R60 R50 K81 ["universePermissionsController"]
      483 SETTABLEKS                       R61 R50 K82 ["placesController"]
      485 SETTABLEKS                       R62 R50 K83 ["localizationPageController"]
      487 SETTABLEKS                       R63 R50 K84 ["policyInfoController"]
      489 GETTABLEKS                       R64 R16 K85 ["ThunkWithArgsMiddleware"]
      491 MOVE                             R65 R50
      492 CALL                             R64 1 1
      493 NEWTABLE                         R65 0 1
      495 MOVE                             R66 R64
      496 SETLIST                          R65 R66 1 [1]
      498 GETTABLEKS                       R66 R12 K86 ["Store"]
      500 GETTABLEKS                       R66 R66 K69 ["new"]
      502 MOVE                             R67 R20
      503 LOADNIL                          R68
      504 MOVE                             R69 R65
      505 CALL                             R66 3 1
      506 GETTABLEKS                       R67 R37 K87 ["Open"]
      508 GETTABLEKS                       R68 R2 K14 ["Src"]
      510 GETTABLEKS                       R68 R68 K88 ["Resources"]
      512 GETTABLEKS                       R68 R68 K89 ["SourceStrings"]
      514 GETTABLEKS                       R69 R2 K14 ["Src"]
      516 GETTABLEKS                       R69 R69 K88 ["Resources"]
      518 GETTABLEKS                       R69 R69 K90 ["LocalizedStrings"]
      520 GETTABLEKS                       R70 R15 K91 ["Localization"]
      522 GETTABLEKS                       R70 R70 K69 ["new"]
      524 DUPTABLE                         R71 K97 [{["pluginName"] = "GameSettings", ["stringResourceTable"], ["translationResourceTable"], ["libraries"]}]
      525 SETTABLEKS                       R68 R71 K94 ["stringResourceTable"]
      527 SETTABLEKS                       R69 R71 K95 ["translationResourceTable"]
      529 NEWTABLE                         R72 1 0
      531 GETTABLEKS                       R73 R14 K88 ["Resources"]
      533 GETTABLEKS                       R73 R73 K98 ["LOCALIZATION_PROJECT_NAME"]
      535 DUPTABLE                         R74 K99 [{"stringResourceTable", "translationResourceTable"}]
      536 GETTABLEKS                       R75 R14 K88 ["Resources"]
      538 GETTABLEKS                       R75 R75 K89 ["SourceStrings"]
      540 SETTABLEKS                       R75 R74 K94 ["stringResourceTable"]
      542 GETTABLEKS                       R75 R14 K88 ["Resources"]
      544 GETTABLEKS                       R75 R75 K90 ["LocalizedStrings"]
      546 SETTABLEKS                       R75 R74 K95 ["translationResourceTable"]
      548 SETTABLE                         R74 R72 R73
      549 SETTABLEKS                       R72 R71 K96 ["libraries"]
      551 CALL                             R70 1 1
      552 JUMPIFNOT                        R6 ; [+2]
      553 SETTABLEKS                       R70 R50 K100 ["localization"]
      555 NEWCLOSURE                       R71 P0
      556 CAPTURE                          REF R46
      557 NEWCLOSURE                       R72 P1
      558 CAPTURE                          VAL R17
      559 CAPTURE                          VAL R71
      560 CAPTURE                          VAL R0
      561 CAPTURE                          VAL R10
      562 CAPTURE                          VAL R3
      563 CAPTURE                          VAL R11
      564 CAPTURE                          VAL R21
      565 CAPTURE                          VAL R22
      566 CAPTURE                          VAL R70
      567 CAPTURE                          REF R46
      568 CAPTURE                          VAL R13
      569 NEWCLOSURE                       R73 P2
      570 CAPTURE                          REF R47
      571 CAPTURE                          VAL R44
      572 NEWCLOSURE                       R74 P3
      573 CAPTURE                          VAL R66
      574 CAPTURE                          VAL R40
      575 CAPTURE                          VAL R39
      576 CAPTURE                          VAL R37
      577 CAPTURE                          REF R46
      578 CAPTURE                          VAL R11
      579 CAPTURE                          REF R45
      580 CAPTURE                          VAL R5
      581 CAPTURE                          REF R48
      582 CAPTURE                          REF R47
      583 CAPTURE                          VAL R44
      584 CAPTURE                          VAL R43
      585 CAPTURE                          VAL R70
      586 CAPTURE                          VAL R19
      587 CAPTURE                          VAL R17
      588 CAPTURE                          VAL R71
      589 CAPTURE                          VAL R0
      590 CAPTURE                          VAL R10
      591 CAPTURE                          VAL R3
      592 CAPTURE                          VAL R21
      593 CAPTURE                          VAL R22
      594 CAPTURE                          VAL R13
      595 NEWCLOSURE                       R75 P4
      596 CAPTURE                          VAL R2
      597 CAPTURE                          REF R46
      598 CAPTURE                          VAL R0
      599 CAPTURE                          VAL R3
      600 CAPTURE                          VAL R8
      601 CAPTURE                          VAL R70
      602 CAPTURE                          VAL R74
      603 NEWCLOSURE                       R76 P5
      604 CAPTURE                          VAL R66
      605 CAPTURE                          VAL R37
      606 CAPTURE                          VAL R11
      607 CAPTURE                          VAL R21
      608 CAPTURE                          VAL R72
      609 CAPTURE                          VAL R22
      610 CAPTURE                          VAL R0
      611 CAPTURE                          VAL R70
      612 CAPTURE                          REF R46
      613 CAPTURE                          VAL R49
      614 CAPTURE                          VAL R18
      615 CAPTURE                          VAL R74
      616 CAPTURE                          VAL R38
      617 CAPTURE                          VAL R41
      618 CAPTURE                          VAL R42
      619 CAPTURE                          VAL R39
      620 CAPTURE                          REF R45
      621 CAPTURE                          VAL R5
      622 CAPTURE                          REF R48
      623 CAPTURE                          VAL R2
      624 CAPTURE                          VAL R44
      625 CAPTURE                          REF R47
      626 NEWCLOSURE                       R77 P6
      627 CAPTURE                          VAL R0
      628 CAPTURE                          VAL R2
      629 CAPTURE                          VAL R1
      630 CAPTURE                          VAL R9
      631 CAPTURE                          VAL R75
      632 CAPTURE                          VAL R76
      633 CAPTURE                          VAL R66
      634 CAPTURE                          REF R67
      635 CAPTURE                          VAL R37
      636 CAPTURE                          VAL R71
      637 MOVE                             R78 R77
      638 CALL                             R78 0 0
      639 CLOSEUPVALS                      R45
      640 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_17]
        2 RETURN                           R0 1
