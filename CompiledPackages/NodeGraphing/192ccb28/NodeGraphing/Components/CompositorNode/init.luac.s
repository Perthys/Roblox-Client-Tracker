PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["NODE_VIEW_CHILD_WIDTH"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["NODE_VIEW_CHILD_HEIGHT"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+4]
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 RETURN                           R1 1
        6 LOADNIL                          R1
        7 RETURN                           R1 1

PROTO_3:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["plotToView"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Position"]
        5 CALL                             R1 1 1
        6 GETIMPORT                        R2 K4 [UDim2.fromScale]
        8 GETTABLEKS                       R3 R1 K5 ["X"]
       10 GETTABLEKS                       R4 R1 K6 ["Y"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+2]
        3 DIVRK                            R1 K0 [1] R0
        4 RETURN                           R1 1
        5 LOADN                            R1 1
        6 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_5]
        2 CAPTURE                          UPVAL U1
        3 NAMECALL                         R0 R0 K1 ["map"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_7:
        0 GETTABLEN                        R2 R0 1
        1 GETTABLEN                        R3 R0 2
        2 MUL                              R1 R2 R3
        3 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MUL                              R1 R2 R0
        2 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["editName"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K1 ["enable"]
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 3
       10 GETTABLEKS                       R0 R0 K2 ["current"]
       12 JUMPIFNOT                        R0 ; [+6]
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K2 ["current"]
       16 GETTABLEKS                       R0 R0 K3 ["focus"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIF                           R2 ; [+4]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["enabled"]
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K0 ["current"]
       12 JUMPIFEQKNIL                     R2 ; [+84]
       14 GETTABLEKS                       R2 R1 K2 ["X"]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K0 ["current"]
       19 GETTABLEKS                       R3 R3 K3 ["AbsolutePosition"]
       21 GETTABLEKS                       R3 R3 K2 ["X"]
       23 JUMPIFNOTLE                      R3 R2 ; [+73]
       25 GETTABLEKS                       R2 R1 K2 ["X"]
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K0 ["current"]
       30 GETTABLEKS                       R4 R4 K3 ["AbsolutePosition"]
       32 GETTABLEKS                       R4 R4 K2 ["X"]
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R5 R5 K0 ["current"]
       37 GETTABLEKS                       R5 R5 K4 ["AbsoluteSize"]
       39 GETTABLEKS                       R5 R5 K2 ["X"]
       41 ADD                              R3 R4 R5
       42 JUMPIFNOTLE                      R2 R3 ; [+54]
       44 GETTABLEKS                       R2 R1 K5 ["Y"]
       46 GETUPVAL                         R3 2
       47 GETTABLEKS                       R3 R3 K0 ["current"]
       49 GETTABLEKS                       R3 R3 K3 ["AbsolutePosition"]
       51 GETTABLEKS                       R3 R3 K5 ["Y"]
       53 JUMPIFNOTLE                      R3 R2 ; [+43]
       55 GETTABLEKS                       R2 R1 K5 ["Y"]
       57 GETUPVAL                         R4 2
       58 GETTABLEKS                       R4 R4 K0 ["current"]
       60 GETTABLEKS                       R4 R4 K3 ["AbsolutePosition"]
       62 GETTABLEKS                       R4 R4 K5 ["Y"]
       64 GETUPVAL                         R5 2
       65 GETTABLEKS                       R5 R5 K0 ["current"]
       67 GETTABLEKS                       R5 R5 K4 ["AbsoluteSize"]
       69 GETTABLEKS                       R5 R5 K5 ["Y"]
       71 ADD                              R3 R4 R5
       72 JUMPIFNOTLE                      R2 R3 ; [+24]
       74 GETUPVAL                         R2 3
       75 GETTABLEKS                       R2 R2 K0 ["current"]
       77 GETUPVAL                         R3 3
       78 GETIMPORT                        R4 K8 [os.clock]
       80 CALL                             R4 0 1
       81 SETTABLEKS                       R4 R3 K0 ["current"]
       83 GETIMPORT                        R4 K8 [os.clock]
       85 CALL                             R4 0 1
       86 SUB                              R3 R4 R2
       87 LOADK                            R4 K9 [0.5]
       88 JUMPIFNOTLE                      R3 R4 ; [+8]
       90 GETUPVAL                         R3 0
       91 LOADNIL                          R4
       92 SETTABLEKS                       R4 R3 K0 ["current"]
       94 GETUPVAL                         R3 4
       95 CALL                             R3 0 0
       96 RETURN                           R0 0
       97 GETUPVAL                         R2 0
       98 DUPTABLE                         R3 K13 [{"startTime", "dragOffset", "initialPosition"}]
       99 GETIMPORT                        R4 K8 [os.clock]
      101 CALL                             R4 0 1
      102 SETTABLEKS                       R4 R3 K10 ["startTime"]
      104 GETIMPORT                        R4 K16 [Vector2.zero]
      106 SETTABLEKS                       R4 R3 K11 ["dragOffset"]
      108 SETTABLEKS                       R1 R3 K12 ["initialPosition"]
      110 SETTABLEKS                       R3 R2 K0 ["current"]
      112 GETUPVAL                         R2 5
      113 GETTABLEKS                       R2 R2 K17 ["OnDragStart"]
      115 JUMPIFNOT                        R2 ; [+13]
      116 GETUPVAL                         R2 5
      117 GETTABLEKS                       R2 R2 K17 ["OnDragStart"]
      119 GETUPVAL                         R3 6
      120 GETTABLEKS                       R3 R3 K18 ["viewToPlot"]
      122 GETUPVAL                         R4 6
      123 GETTABLEKS                       R4 R4 K19 ["absToView"]
      125 MOVE                             R5 R1
      126 CALL                             R4 1 -1
      127 CALL                             R3 -1 -1
      128 CALL                             R2 -1 0
      129 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOT                        R2 ; [+21]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["OnDragMoved"]
        7 JUMPIFNOT                        R3 ; [+13]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["OnDragMoved"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K2 ["viewToPlot"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K3 ["absToView"]
       17 MOVE                             R6 R1
       18 CALL                             R5 1 -1
       19 CALL                             R4 -1 -1
       20 CALL                             R3 -1 0
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R3 R3 K4 ["disable"]
       24 CALL                             R3 0 0
       25 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOT                        R2 ; [+33]
        4 GETTABLEKS                       R4 R2 K1 ["initialPosition"]
        6 SUB                              R3 R4 R1
        7 GETTABLEKS                       R3 R3 K2 ["Magnitude"]
        9 GETUPVAL                         R4 0
       10 LOADNIL                          R5
       11 SETTABLEKS                       R5 R4 K0 ["current"]
       13 LOADN                            R4 5
       14 JUMPIFNOTLT                      R4 R3 ; [+5]
       16 GETUPVAL                         R4 1
       17 LOADN                            R5 0
       18 SETTABLEKS                       R5 R4 K0 ["current"]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K3 ["OnDragEnded"]
       23 JUMPIFNOT                        R4 ; [+13]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K3 ["OnDragEnded"]
       27 GETUPVAL                         R5 3
       28 GETTABLEKS                       R5 R5 K4 ["viewToPlot"]
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R6 R6 K5 ["absToView"]
       33 MOVE                             R7 R1
       34 CALL                             R6 1 -1
       35 CALL                             R5 -1 -1
       36 CALL                             R4 -1 0
       37 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 2
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeAbsoluteSize"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+10]
        6 GETTABLEKS                       R2 R1 K1 ["X"]
        8 LOADN                            R3 0
        9 JUMPIFNOTLT                      R3 R2 ; [+6]
       11 GETTABLEKS                       R2 R1 K2 ["Y"]
       13 LOADN                            R3 0
       14 JUMPIFLT                         R3 R2 ; [+2]
       16 RETURN                           R0 0
       17 GETTABLEKS                       R3 R1 K1 ["X"]
       19 GETTABLEKS                       R4 R1 K2 ["Y"]
       21 DIV                              R2 R3 R4
       22 JUMPIFNOTEQ                      R2 R2 ; [+3]
       24 JUMPIFNOTEQKN                    R2 K3 [0] ; [+2]
       26 RETURN                           R0 0
       27 GETUPVAL                         R3 1
       28 JUMPIFNOT                        R3 ; [+30]
       29 GETUPVAL                         R3 2
       30 MOVE                             R4 R0
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K6 [Vector2.new]
       34 MOVE                             R5 R3
       35 DIV                              R7 R3 R2
       36 FASTCALL1                        MATH_ROUND R7 ; [+2]
       37 GETIMPORT                        R6 K9 [math.round]
       39 CALL                             R6 1 1
       40 CALL                             R4 2 1
       41 GETUPVAL                         R5 3
       42 JUMPIFEQKNIL                     R5 ; [+8]
       44 GETUPVAL                         R6 3
       45 SUB                              R5 R6 R4
       46 GETTABLEKS                       R5 R5 K10 ["Magnitude"]
       48 LOADN                            R6 2
       49 JUMPIFNOTLT                      R6 R5 ; [+25]
       51 GETUPVAL                         R5 4
       52 GETTABLEKS                       R5 R5 K11 ["setNodeSize"]
       54 GETUPVAL                         R6 5
       55 MOVE                             R7 R4
       56 CALL                             R5 2 0
       57 SETUPVAL                         R4 3
       58 RETURN                           R0 0
       59 GETIMPORT                        R3 K6 [Vector2.new]
       61 GETUPVAL                         R4 6
       62 GETUPVAL                         R7 6
       63 DIV                              R6 R7 R2
       64 FASTCALL1                        MATH_ROUND R6 ; [+2]
       65 GETIMPORT                        R5 K9 [math.round]
       67 CALL                             R5 1 1
       68 CALL                             R3 2 1
       69 GETUPVAL                         R4 4
       70 GETTABLEKS                       R4 R4 K11 ["setNodeSize"]
       72 GETUPVAL                         R5 5
       73 MOVE                             R6 R3
       74 CALL                             R4 2 0
       75 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 LOADNIL                          R0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K0 ["createEffect"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          REF R0
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U6
       17 CALL                             R1 1 -1
       18 CLOSEUPVALS                      R0
       19 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+23]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 JUMPIFEQKNIL                     R1 ; [+18]
        8 GETUPVAL                         R3 0
        9 GETTABLE                         R2 R1 R3
       10 JUMPIFNOTEQKNIL                  R2 ; [+14]
       12 GETUPVAL                         R3 2
       13 JUMPIFNOT                        R3 ; [+9]
       14 GETIMPORT                        R2 K2 [math.map]
       16 LOADK                            R3 K3 [0.5]
       17 LOADN                            R4 0
       18 LOADN                            R5 1
       19 LOADK                            R6 K3 [0.5]
       20 LOADN                            R7 1
       21 CALL                             R2 5 1
       22 RETURN                           R2 1
       23 LOADK                            R2 K3 [0.5]
       24 RETURN                           R2 1
       25 GETUPVAL                         R1 3
       26 JUMPIFEQKNIL                     R1 ; [+18]
       28 GETUPVAL                         R2 2
       29 JUMPIFNOT                        R2 ; [+11]
       30 GETIMPORT                        R1 K2 [math.map]
       32 GETUPVAL                         R2 3
       33 MOVE                             R3 R0
       34 CALL                             R2 1 1
       35 LOADN                            R3 0
       36 LOADN                            R4 1
       37 LOADK                            R5 K3 [0.5]
       38 LOADN                            R6 1
       39 CALL                             R1 5 1
       40 RETURN                           R1 1
       41 GETUPVAL                         R1 3
       42 MOVE                             R2 R0
       43 CALL                             R1 1 1
       44 RETURN                           R1 1
       45 LOADN                            R1 1
       46 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeSpotlightedSubtree"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["observeFadeByNodeId"]
        6 JUMPIFNOT                        R2 ; [+8]
        7 GETUPVAL                         R2 2
        8 JUMPIFNOT                        R2 ; [+6]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K1 ["observeFadeByNodeId"]
       12 GETUPVAL                         R2 2
       13 CALL                             R1 1 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R1
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K2 ["createComputed"]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          VAL R1
       24 CALL                             R2 1 -1
       25 RETURN                           R2 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Collapsed"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADK                            R0 K1 ["chevron-large-right"]
        5 RETURN                           R0 1
        6 LOADK                            R0 K2 ["chevron-large-down"]
        7 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["setCollapsed"]
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["Collapsed"]
       11 NOT                              R2 R3
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 2
       14 GETTABLEKS                       R0 R0 K1 ["Collapsed"]
       16 JUMPIFNOT                        R0 ; [+4]
       17 GETUPVAL                         R0 3
       18 GETUPVAL                         R1 1
       19 GETUPVAL                         R2 0
       20 CALL                             R0 2 0
       21 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["setCollapsed"]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["Collapsed"]
        9 NOT                              R2 R3
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["getValue"]
        5 CALL                             R0 1 1
        6 JUMP                             ; [+6]
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R1 1
        9 NAMECALL                         R1 R1 K0 ["getValue"]
       11 CALL                             R1 1 -1
       12 CALL                             R0 -1 1
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R1 R1 K1 ["disable"]
       16 CALL                             R1 0 0
       17 GETUPVAL                         R1 4
       18 JUMPIFNOT                        R1 ; [+2]
       19 JUMPIFNOTEQKNIL                  R0 ; [+2]
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 5
       23 JUMPIFNOT                        R1 ; [+45]
       24 GETUPVAL                         R1 6
       25 GETTABLEKS                       R1 R1 K2 ["onRename"]
       27 JUMPIFNOT                        R1 ; [+6]
       28 GETUPVAL                         R1 6
       29 GETTABLEKS                       R1 R1 K2 ["onRename"]
       31 MOVE                             R2 R0
       32 CALL                             R1 1 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R1 6
       35 GETTABLEKS                       R1 R1 K3 ["NodeType"]
       37 GETUPVAL                         R2 7
       38 GETTABLEKS                       R2 R2 K3 ["NodeType"]
       40 GETTABLEKS                       R2 R2 K4 ["Parameter"]
       42 JUMPIFNOTEQ                      R1 R2 ; [+19]
       44 GETUPVAL                         R1 6
       45 GETTABLEKS                       R1 R1 K5 ["GraphPayload"]
       47 GETTABLEKS                       R1 R1 K6 ["name"]
       49 JUMPIFNOT                        R1 ; [+12]
       50 GETUPVAL                         R1 8
       51 GETTABLEKS                       R1 R1 K7 ["renameParameter"]
       53 GETUPVAL                         R2 6
       54 GETTABLEKS                       R2 R2 K5 ["GraphPayload"]
       56 GETTABLEKS                       R2 R2 K6 ["name"]
       58 MOVE                             R3 R0
       59 GETUPVAL                         R4 4
       60 CALL                             R1 3 0
       61 RETURN                           R0 0
       62 GETUPVAL                         R1 8
       63 GETTABLEKS                       R1 R1 K8 ["renameNode"]
       65 GETUPVAL                         R2 4
       66 MOVE                             R3 R0
       67 CALL                             R1 2 0
       68 RETURN                           R0 0
       69 GETUPVAL                         R1 6
       70 GETTABLEKS                       R1 R1 K9 ["IsParameterNode"]
       72 JUMPIFNOT                        R1 ; [+18]
       73 GETUPVAL                         R1 6
       74 GETTABLEKS                       R1 R1 K5 ["GraphPayload"]
       76 GETTABLEKS                       R1 R1 K6 ["name"]
       78 JUMPIFNOT                        R1 ; [+12]
       79 GETUPVAL                         R1 8
       80 GETTABLEKS                       R1 R1 K7 ["renameParameter"]
       82 GETUPVAL                         R2 6
       83 GETTABLEKS                       R2 R2 K5 ["GraphPayload"]
       85 GETTABLEKS                       R2 R2 K6 ["name"]
       87 MOVE                             R3 R0
       88 GETUPVAL                         R4 4
       89 CALL                             R1 3 0
       90 RETURN                           R0 0
       91 GETUPVAL                         R1 8
       92 GETTABLEKS                       R1 R1 K8 ["renameNode"]
       94 GETUPVAL                         R2 4
       95 MOVE                             R3 R0
       96 CALL                             R1 2 0
       97 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+16]
        4 LOADK                            R4 K0 ["DisplayName"]
        5 GETUPVAL                         R5 1
        6 NAMECALL                         R2 R1 K1 ["SetAttribute"]
        8 CALL                             R2 3 0
        9 LOADK                            R4 K2 ["Selected"]
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K2 ["Selected"]
       13 JUMPIFEQKB                       R6 TRUE ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 NAMECALL                         R2 R1 K1 ["SetAttribute"]
       19 CALL                             R2 3 0
       20 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_27:
        0 NEWTABLE                         R0 16 0
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["col auto-y bg-surface-200"]
        7 GETUPVAL                         R1 0
        8 CALL                             R1 0 1
        9 SETTABLEKS                       R1 R0 K1 ["col bg-surface-200"]
       11 GETUPVAL                         R1 0
       12 CALL                             R1 0 1
       13 JUMPIFNOT                        R1 ; [+2]
       14 GETUPVAL                         R2 1
       15 NOT                              R1 R2
       16 SETTABLEKS                       R1 R0 K2 ["auto-y"]
       18 LOADB                            R1 1
       19 SETTABLEKS                       R1 R0 K3 ["gap-none"]
       21 LOADB                            R1 1
       22 SETTABLEKS                       R1 R0 K4 ["stroke-standard"]
       24 GETUPVAL                         R2 0
       25 CALL                             R2 0 1
       26 JUMPIFNOT                        R2 ; [+3]
       27 GETUPVAL                         R2 2
       28 NOT                              R1 R2
       29 JUMP                             ; [+2]
       30 GETUPVAL                         R2 3
       31 NOT                              R1 R2
       32 SETTABLEKS                       R1 R0 K5 ["radius-small"]
       34 GETUPVAL                         R2 0
       35 CALL                             R2 0 1
       36 JUMPIFNOT                        R2 ; [+2]
       37 GETUPVAL                         R1 2
       38 JUMP                             ; [+1]
       39 GETUPVAL                         R1 3
       40 SETTABLEKS                       R1 R0 K6 ["radius-large"]
       42 GETUPVAL                         R2 4
       43 CALL                             R2 0 1
       44 JUMPIFNOT                        R2 ; [+2]
       45 LOADNIL                          R1
       46 JUMP                             ; [+3]
       47 GETUPVAL                         R1 5
       48 GETTABLEKS                       R1 R1 K7 ["Selected"]
       50 SETTABLEKS                       R1 R0 K8 ["stroke-system-neutral"]
       52 GETUPVAL                         R2 4
       53 CALL                             R2 0 1
       54 JUMPIFNOT                        R2 ; [+2]
       55 LOADB                            R1 1
       56 JUMP                             ; [+4]
       57 GETUPVAL                         R2 5
       58 GETTABLEKS                       R2 R2 K7 ["Selected"]
       60 NOT                              R1 R2
       61 SETTABLEKS                       R1 R0 K9 ["stroke-default"]
       63 RETURN                           R0 1

PROTO_28:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K3 ["CompositorNode"]
        7 RETURN                           R0 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 LOADK                            R1 K1 ["UIStroke"]
        4 DUPTABLE                         R2 K4 [{"Thickness", "Color"}]
        5 GETUPVAL                         R3 1
        6 SETTABLEKS                       R3 R2 K2 ["Thickness"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K3 ["Color"]
       11 GETTABLEKS                       R3 R3 K5 ["System"]
       13 GETTABLEKS                       R3 R3 K6 ["Emphasis"]
       15 GETTABLEKS                       R3 R3 K7 ["Color3"]
       17 SETTABLEKS                       R3 R2 K3 ["Color"]
       19 CALL                             R0 2 -1
       20 RETURN                           R0 -1

PROTO_30:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton2]
        4 JUMPIFNOTEQ                      R2 R3 ; [+52]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["selectNodes"]
        9 NEWTABLE                         R3 1 0
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K5 ["GraphPayload"]
       14 GETTABLEKS                       R4 R4 K6 ["id"]
       16 LOADB                            R5 1
       17 SETTABLE                         R5 R3 R4
       18 LOADB                            R4 0
       19 CALL                             R2 2 0
       20 GETUPVAL                         R2 2
       21 JUMPIFNOT                        R2 ; [+8]
       22 GETUPVAL                         R2 3
       23 GETUPVAL                         R3 0
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K5 ["GraphPayload"]
       27 GETTABLEKS                       R4 R4 K6 ["id"]
       29 CALL                             R2 2 0
       30 GETUPVAL                         R2 4
       31 JUMPIFNOT                        R2 ; [+25]
       32 GETIMPORT                        R2 K9 [Vector2.new]
       34 GETTABLEKS                       R3 R1 K10 ["Position"]
       36 GETTABLEKS                       R3 R3 K11 ["X"]
       38 GETTABLEKS                       R4 R1 K10 ["Position"]
       40 GETTABLEKS                       R4 R4 K12 ["Y"]
       42 CALL                             R2 2 1
       43 GETUPVAL                         R3 5
       44 GETTABLEKS                       R3 R3 K13 ["showMenu"]
       46 GETUPVAL                         R4 1
       47 GETTABLEKS                       R4 R4 K5 ["GraphPayload"]
       49 GETTABLEKS                       R4 R4 K6 ["id"]
       51 GETUPVAL                         R5 6
       52 GETTABLEKS                       R5 R5 K14 ["absToPlot"]
       54 MOVE                             R6 R2
       55 CALL                             R5 1 -1
       56 CALL                             R3 -1 0
       57 RETURN                           R0 0

PROTO_31:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEN                        R2 R0 1
        3 GETTABLEN                        R3 R0 2
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_32:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_33:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_34:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["createNextOrder"]
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["useContext"]
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K3 ["CanvasContext"]
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K0 ["useContext"]
       21 GETUPVAL                         R5 4
       22 GETTABLEKS                       R5 R5 K1 ["Context"]
       24 CALL                             R4 1 1
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K0 ["useContext"]
       28 GETUPVAL                         R6 5
       29 GETTABLEKS                       R6 R6 K1 ["Context"]
       31 CALL                             R5 1 1
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K0 ["useContext"]
       35 GETUPVAL                         R7 6
       36 GETTABLEKS                       R7 R7 K1 ["Context"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R8 R0 K4 ["GraphPayload"]
       41 JUMPIFNOT                        R8 ; [+5]
       42 GETTABLEKS                       R7 R0 K4 ["GraphPayload"]
       44 GETTABLEKS                       R7 R7 K5 ["id"]
       46 JUMP                             ; [+1]
       47 LOADNIL                          R7
       48 LOADNIL                          R8
       49 LOADNIL                          R9
       50 GETUPVAL                         R10 7
       51 JUMPIFNOT                        R10 ; [+40]
       52 LOADB                            R10 1
       53 GETTABLEKS                       R11 R0 K6 ["NodeType"]
       55 GETUPVAL                         R12 8
       56 GETTABLEKS                       R12 R12 K6 ["NodeType"]
       58 GETTABLEKS                       R12 R12 K7 ["Parameter"]
       60 JUMPIFEQ                         R11 R12 ; [+15]
       62 GETTABLEKS                       R10 R0 K4 ["GraphPayload"]
       64 JUMPIFNOT                        R10 ; [+11]
       65 GETTABLEKS                       R11 R0 K4 ["GraphPayload"]
       67 GETTABLEKS                       R11 R11 K8 ["className"]
       69 GETUPVAL                         R12 8
       70 GETTABLEKS                       R12 R12 K9 ["PARAMETER_NODE_CLASSNAME"]
       72 JUMPIFEQ                         R11 R12 ; [+2]
       74 LOADB                            R10 0 +1
       75 LOADB                            R10 1
       76 MOVE                             R8 R10
       77 MOVE                             R10 R8
       78 JUMPIF                           R10 ; [+11]
       79 GETTABLEKS                       R11 R0 K6 ["NodeType"]
       81 GETUPVAL                         R12 8
       82 GETTABLEKS                       R12 R12 K6 ["NodeType"]
       84 GETTABLEKS                       R12 R12 K10 ["StateMachine"]
       86 JUMPIFEQ                         R11 R12 ; [+2]
       88 LOADB                            R10 0 +1
       89 LOADB                            R10 1
       90 MOVE                             R9 R10
       91 JUMP                             ; [+19]
       92 GETTABLEKS                       R10 R0 K11 ["IsParameterNode"]
       94 JUMPIF                           R10 ; [+14]
       95 GETTABLEKS                       R10 R0 K4 ["GraphPayload"]
       97 JUMPIFNOT                        R10 ; [+11]
       98 GETTABLEKS                       R11 R0 K4 ["GraphPayload"]
      100 GETTABLEKS                       R11 R11 K8 ["className"]
      102 GETUPVAL                         R12 8
      103 GETTABLEKS                       R12 R12 K9 ["PARAMETER_NODE_CLASSNAME"]
      105 JUMPIFEQ                         R11 R12 ; [+2]
      107 LOADB                            R10 0 +1
      108 LOADB                            R10 1
      109 MOVE                             R8 R10
      110 MOVE                             R9 R8
      111 NOT                              R10 R8
      112 JUMPIF                           R10 ; [+9]
      113 GETUPVAL                         R11 9
      114 CALL                             R11 0 1
      115 JUMPIFNOT                        R11 ; [+2]
      116 GETTABLEKS                       R11 R0 K12 ["ResizableHorizontal"]
      118 JUMPIFEQKB                       R11 TRUE ; [+2]
      120 LOADB                            R10 0 +1
      121 LOADB                            R10 1
      122 GETUPVAL                         R11 9
      123 CALL                             R11 0 1
      124 JUMPIFNOT                        R11 ; [+6]
      125 GETTABLEKS                       R12 R0 K13 ["ResizableVertical"]
      127 JUMPIFEQKB                       R12 TRUE ; [+2]
      129 LOADB                            R11 0 +1
      130 LOADB                            R11 1
      131 MOVE                             R12 R11
      132 JUMPIFNOT                        R12 ; [+3]
      133 GETTABLEKS                       R13 R0 K14 ["Collapsed"]
      135 NOT                              R12 R13
      136 MOVE                             R13 R8
      137 JUMPIFNOT                        R13 ; [+7]
      138 GETTABLEKS                       R14 R0 K15 ["IsExpressionNode"]
      140 JUMPIFNOT                        R14 ; [+3]
      141 GETTABLEKS                       R15 R0 K14 ["Collapsed"]
      143 NOT                              R14 R15
      144 NOT                              R13 R14
      145 GETTABLEKS                       R14 R0 K4 ["GraphPayload"]
      147 JUMPIFNOT                        R14 ; [+11]
      148 GETTABLEKS                       R15 R0 K4 ["GraphPayload"]
      150 GETTABLEKS                       R15 R15 K8 ["className"]
      152 GETUPVAL                         R16 8
      153 GETTABLEKS                       R16 R16 K16 ["OUTPUT_NODE_CLASSNAME"]
      155 JUMPIFEQ                         R15 R16 ; [+2]
      157 LOADB                            R14 0 +1
      158 LOADB                            R14 1
      159 LOADB                            R15 1
      160 GETTABLEKS                       R16 R6 K17 ["spotlightedNodeId"]
      162 JUMPIFEQ                         R16 R7 ; [+9]
      164 MOVE                             R15 R14
      165 JUMPIFNOT                        R15 ; [+6]
      166 GETTABLEKS                       R16 R6 K17 ["spotlightedNodeId"]
      168 JUMPIFEQKNIL                     R16 ; [+2]
      170 LOADB                            R15 0 +1
      171 LOADB                            R15 1
      172 GETUPVAL                         R16 10
      173 CALL                             R16 0 1
      174 GETUPVAL                         R17 11
      175 GETTABLEKS                       R17 R17 K18 ["Hooks"]
      177 GETTABLEKS                       R17 R17 K19 ["useTokens"]
      179 CALL                             R17 0 1
      180 GETUPVAL                         R19 11
      181 GETTABLEKS                       R19 R19 K20 ["Enums"]
      183 GETTABLEKS                       R19 R19 K21 ["Theme"]
      185 GETTABLEKS                       R19 R19 K22 ["Dark"]
      187 JUMPIFNOTEQ                      R16 R19 ; [+10]
      189 GETTABLEKS                       R18 R17 K23 ["Color"]
      191 GETTABLEKS                       R18 R18 K24 ["Extended"]
      193 GETTABLEKS                       R18 R18 K25 ["Green"]
      195 GETTABLEKS                       R18 R18 K26 ["Green_1300"]
      197 JUMP                             ; [+8]
      198 GETTABLEKS                       R18 R17 K23 ["Color"]
      200 GETTABLEKS                       R18 R18 K24 ["Extended"]
      202 GETTABLEKS                       R18 R18 K25 ["Green"]
      204 GETTABLEKS                       R18 R18 K27 ["Green_100"]
      206 GETUPVAL                         R19 11
      207 GETTABLEKS                       R19 R19 K18 ["Hooks"]
      209 GETTABLEKS                       R19 R19 K28 ["useCumulativeBackground"]
      211 MOVE                             R20 R18
      212 GETTABLEKS                       R21 R17 K23 ["Color"]
      214 GETTABLEKS                       R21 R21 K29 ["Shift"]
      216 GETTABLEKS                       R21 R21 K30 ["Shift_100"]
      218 CALL                             R19 2 1
      219 GETUPVAL                         R20 0
      220 GETTABLEKS                       R20 R20 K31 ["useMemo"]
      222 DUPCLOSURE                       R21 K32 [PROTO_0]
      223 CAPTURE                          UPVAL U12
      224 CAPTURE                          UPVAL U8
      225 NEWTABLE                         R22 0 0
      227 CALL                             R20 2 2
      228 GETUPVAL                         R22 13
      229 GETTABLEKS                       R22 R22 K33 ["useSignalBinding"]
      231 MOVE                             R23 R20
      232 CALL                             R22 1 1
      233 GETUPVAL                         R23 0
      234 GETTABLEKS                       R23 R23 K31 ["useMemo"]
      236 DUPCLOSURE                       R24 K34 [PROTO_1]
      237 CAPTURE                          UPVAL U12
      238 CAPTURE                          UPVAL U8
      239 NEWTABLE                         R25 0 0
      241 CALL                             R23 2 2
      242 GETUPVAL                         R25 13
      243 GETTABLEKS                       R25 R25 K33 ["useSignalBinding"]
      245 MOVE                             R26 R23
      246 CALL                             R25 1 1
      247 GETUPVAL                         R26 0
      248 GETTABLEKS                       R26 R26 K31 ["useMemo"]
      250 NEWCLOSURE                       R27 P2
      251 CAPTURE                          VAL R12
      252 CAPTURE                          VAL R23
      253 NEWTABLE                         R28 0 2
      255 MOVE                             R29 R12
      256 MOVE                             R30 R23
      257 SETLIST                          R28 R29 2 [1]
      259 CALL                             R26 2 1
      260 GETUPVAL                         R27 0
      261 GETTABLEKS                       R27 R27 K35 ["useState"]
      263 GETUPVAL                         R28 8
      264 GETTABLEKS                       R28 R28 K36 ["NODE_VIEW_CHILD_WIDTH"]
      266 CALL                             R27 1 2
      267 GETUPVAL                         R29 14
      268 CALL                             R29 0 1
      269 GETUPVAL                         R30 3
      270 GETTABLEKS                       R30 R30 K37 ["useViewportBinding"]
      272 NEWCLOSURE                       R31 P3
      273 CAPTURE                          VAL R0
      274 NEWTABLE                         R32 0 1
      276 GETTABLEKS                       R33 R0 K38 ["Position"]
      278 SETLIST                          R32 R33 1 [1]
      280 CALL                             R30 2 1
      281 GETUPVAL                         R31 13
      282 GETTABLEKS                       R31 R31 K33 ["useSignalBinding"]
      284 GETTABLEKS                       R32 R1 K39 ["observeZoomRatio"]
      286 CALL                             R31 1 1
      287 GETUPVAL                         R32 0
      288 GETTABLEKS                       R32 R32 K31 ["useMemo"]
      290 NEWCLOSURE                       R33 P4
      291 CAPTURE                          VAL R31
      292 CAPTURE                          UPVAL U15
      293 NEWTABLE                         R34 0 1
      295 MOVE                             R35 R31
      296 SETLIST                          R34 R35 1 [1]
      298 CALL                             R32 2 1
      299 GETUPVAL                         R34 16
      300 JUMPIFNOT                        R34 ; [+15]
      301 GETUPVAL                         R33 0
      302 GETTABLEKS                       R33 R33 K40 ["joinBindings"]
      304 NEWTABLE                         R34 0 2
      306 MOVE                             R35 R22
      307 MOVE                             R36 R31
      308 SETLIST                          R34 R35 2 [1]
      310 CALL                             R33 1 1
      311 DUPCLOSURE                       R35 K41 [PROTO_7]
      312 NAMECALL                         R33 R33 K42 ["map"]
      314 CALL                             R33 2 1
      315 JUMP                             ; [+5]
      316 NEWCLOSURE                       R35 P6
      317 CAPTURE                          VAL R27
      318 NAMECALL                         R33 R31 K42 ["map"]
      320 CALL                             R33 2 1
      321 GETUPVAL                         R34 0
      322 GETTABLEKS                       R34 R34 K43 ["useBinding"]
      324 GETTABLEKS                       R35 R0 K44 ["editName"]
      326 CALL                             R34 1 2
      327 GETUPVAL                         R36 2
      328 GETTABLEKS                       R36 R36 K45 ["useToggleState"]
      330 LOADB                            R37 0
      331 CALL                             R36 1 1
      332 GETUPVAL                         R37 0
      333 GETTABLEKS                       R37 R37 K46 ["useRef"]
      335 LOADNIL                          R38
      336 CALL                             R37 1 1
      337 GETUPVAL                         R38 2
      338 GETTABLEKS                       R38 R38 K47 ["useEventCallback"]
      340 NEWCLOSURE                       R39 P7
      341 CAPTURE                          VAL R35
      342 CAPTURE                          VAL R0
      343 CAPTURE                          VAL R36
      344 CAPTURE                          VAL R37
      345 CALL                             R38 1 1
      346 GETUPVAL                         R39 0
      347 GETTABLEKS                       R39 R39 K46 ["useRef"]
      349 LOADNIL                          R40
      350 CALL                             R39 1 1
      351 GETUPVAL                         R40 0
      352 GETTABLEKS                       R40 R40 K46 ["useRef"]
      354 LOADN                            R41 0
      355 CALL                             R40 1 1
      356 GETUPVAL                         R41 0
      357 GETTABLEKS                       R41 R41 K46 ["useRef"]
      359 LOADNIL                          R42
      360 CALL                             R41 1 1
      361 GETUPVAL                         R42 0
      362 GETTABLEKS                       R42 R42 K48 ["useCallback"]
      364 NEWCLOSURE                       R43 P8
      365 CAPTURE                          VAL R39
      366 CAPTURE                          VAL R36
      367 CAPTURE                          VAL R41
      368 CAPTURE                          VAL R40
      369 CAPTURE                          VAL R38
      370 CAPTURE                          VAL R0
      371 CAPTURE                          VAL R3
      372 NEWTABLE                         R44 0 4
      374 MOVE                             R45 R3
      375 GETTABLEKS                       R46 R36 K49 ["enabled"]
      377 GETTABLEKS                       R47 R0 K50 ["OnDragStart"]
      379 MOVE                             R48 R38
      380 SETLIST                          R44 R45 4 [1]
      382 CALL                             R42 2 1
      383 GETUPVAL                         R43 0
      384 GETTABLEKS                       R43 R43 K48 ["useCallback"]
      386 NEWCLOSURE                       R44 P9
      387 CAPTURE                          VAL R39
      388 CAPTURE                          VAL R0
      389 CAPTURE                          VAL R3
      390 CAPTURE                          VAL R36
      391 NEWTABLE                         R45 0 5
      393 MOVE                             R46 R3
      394 MOVE                             R47 R39
      395 GETTABLEKS                       R48 R0 K51 ["OnDragMoved"]
      397 MOVE                             R49 R7
      398 GETTABLEKS                       R50 R36 K52 ["disable"]
      400 SETLIST                          R45 R46 5 [1]
      402 CALL                             R43 2 1
      403 GETUPVAL                         R44 0
      404 GETTABLEKS                       R44 R44 K48 ["useCallback"]
      406 NEWCLOSURE                       R45 P10
      407 CAPTURE                          VAL R39
      408 CAPTURE                          VAL R40
      409 CAPTURE                          VAL R0
      410 CAPTURE                          VAL R3
      411 NEWTABLE                         R46 0 4
      413 MOVE                             R47 R3
      414 MOVE                             R48 R39
      415 GETTABLEKS                       R49 R0 K53 ["OnDragEnded"]
      417 MOVE                             R50 R7
      418 SETLIST                          R46 R47 4 [1]
      420 CALL                             R44 2 1
      421 GETUPVAL                         R45 0
      422 GETTABLEKS                       R45 R45 K48 ["useCallback"]
      424 NEWCLOSURE                       R46 P11
      425 CAPTURE                          VAL R28
      426 NEWTABLE                         R47 0 1
      428 MOVE                             R48 R28
      429 SETLIST                          R47 R48 1 [1]
      431 CALL                             R45 2 1
      432 GETUPVAL                         R46 0
      433 GETTABLEKS                       R46 R46 K48 ["useCallback"]
      435 NEWCLOSURE                       R47 P12
      436 CAPTURE                          UPVAL U16
      437 CAPTURE                          VAL R21
      438 CAPTURE                          VAL R28
      439 NEWTABLE                         R48 0 2
      441 MOVE                             R49 R21
      442 MOVE                             R50 R28
      443 SETLIST                          R48 R49 2 [1]
      445 CALL                             R46 2 1
      446 GETUPVAL                         R47 0
      447 GETTABLEKS                       R47 R47 K48 ["useCallback"]
      449 NEWCLOSURE                       R48 P13
      450 CAPTURE                          VAL R24
      451 NEWTABLE                         R49 0 1
      453 MOVE                             R50 R24
      454 SETLIST                          R49 R50 1 [1]
      456 CALL                             R47 2 1
      457 GETUPVAL                         R48 0
      458 GETTABLEKS                       R48 R48 K54 ["useEffect"]
      460 NEWCLOSURE                       R49 P14
      461 CAPTURE                          VAL R7
      462 CAPTURE                          UPVAL U12
      463 CAPTURE                          VAL R29
      464 CAPTURE                          UPVAL U16
      465 CAPTURE                          VAL R20
      466 CAPTURE                          VAL R4
      467 CAPTURE                          VAL R27
      468 NEWTABLE                         R50 0 4
      470 GETTABLEKS                       R51 R4 K55 ["setNodeSize"]
      472 GETTABLEKS                       R52 R29 K56 ["observeAbsoluteSize"]
      474 MOVE                             R53 R7
      475 GETUPVAL                         R55 16
      476 JUMPIFNOT                        R55 ; [+2]
      477 MOVE                             R54 R20
      478 JUMP                             ; [+1]
      479 MOVE                             R54 R27
      480 SETLIST                          R50 R51 4 [1]
      482 CALL                             R48 2 0
      483 GETUPVAL                         R48 0
      484 GETTABLEKS                       R48 R48 K31 ["useMemo"]
      486 NEWCLOSURE                       R49 P15
      487 CAPTURE                          VAL R6
      488 CAPTURE                          VAL R4
      489 CAPTURE                          VAL R7
      490 CAPTURE                          UPVAL U12
      491 CAPTURE                          UPVAL U17
      492 NEWTABLE                         R50 0 3
      494 GETTABLEKS                       R51 R6 K57 ["observeSpotlightedSubtree"]
      496 GETTABLEKS                       R52 R4 K58 ["observeFadeByNodeId"]
      498 MOVE                             R53 R7
      499 SETLIST                          R50 R51 3 [1]
      501 CALL                             R48 2 1
      502 GETUPVAL                         R49 0
      503 GETTABLEKS                       R49 R49 K31 ["useMemo"]
      505 NEWCLOSURE                       R50 P16
      506 CAPTURE                          VAL R0
      507 NEWTABLE                         R51 0 1
      509 GETTABLEKS                       R52 R0 K14 ["Collapsed"]
      511 SETLIST                          R51 R52 1 [1]
      513 CALL                             R49 2 1
      514 GETUPVAL                         R51 18
      515 JUMPIFNOT                        R51 ; [+10]
      516 GETUPVAL                         R50 2
      517 GETTABLEKS                       R50 R50 K47 ["useEventCallback"]
      519 NEWCLOSURE                       R51 P17
      520 CAPTURE                          VAL R7
      521 CAPTURE                          VAL R4
      522 CAPTURE                          VAL R0
      523 CAPTURE                          UPVAL U19
      524 CALL                             R50 1 1
      525 JUMP                             ; [+17]
      526 GETUPVAL                         R50 0
      527 GETTABLEKS                       R50 R50 K48 ["useCallback"]
      529 NEWCLOSURE                       R51 P18
      530 CAPTURE                          VAL R7
      531 CAPTURE                          VAL R4
      532 CAPTURE                          VAL R0
      533 NEWTABLE                         R52 0 3
      535 GETTABLEKS                       R53 R4 K59 ["setCollapsed"]
      537 MOVE                             R54 R7
      538 GETTABLEKS                       R55 R0 K14 ["Collapsed"]
      540 SETLIST                          R52 R53 3 [1]
      542 CALL                             R50 2 1
      543 GETTABLEKS                       R51 R0 K60 ["text"]
      545 JUMPIF                           R51 ; [+6]
      546 GETTABLEKS                       R51 R0 K4 ["GraphPayload"]
      548 GETTABLEKS                       R51 R51 K61 ["name"]
      550 JUMPIF                           R51 ; [+1]
      551 LOADK                            R51 K62 [""]
      552 GETUPVAL                         R52 0
      553 GETTABLEKS                       R52 R52 K48 ["useCallback"]
      555 NEWCLOSURE                       R53 P19
      556 CAPTURE                          UPVAL U20
      557 CAPTURE                          VAL R34
      558 CAPTURE                          UPVAL U21
      559 CAPTURE                          VAL R36
      560 CAPTURE                          VAL R7
      561 CAPTURE                          UPVAL U7
      562 CAPTURE                          VAL R0
      563 CAPTURE                          UPVAL U8
      564 CAPTURE                          VAL R4
      565 NEWTABLE                         R54 0 8
      567 MOVE                             R55 R7
      568 GETTABLEKS                       R56 R36 K52 ["disable"]
      570 GETTABLEKS                       R57 R0 K11 ["IsParameterNode"]
      572 GETTABLEKS                       R58 R0 K6 ["NodeType"]
      574 GETTABLEKS                       R59 R0 K63 ["onRename"]
      576 GETTABLEKS                       R60 R0 K4 ["GraphPayload"]
      578 GETTABLEKS                       R60 R60 K61 ["name"]
      580 GETTABLEKS                       R61 R4 K64 ["renameParameter"]
      582 GETTABLEKS                       R62 R4 K65 ["renameNode"]
      584 SETLIST                          R54 R55 8 [1]
      586 CALL                             R52 2 1
      587 MOVE                             R53 R2
      588 CALL                             R53 0 1
      589 GETUPVAL                         R54 0
      590 GETTABLEKS                       R54 R54 K31 ["useMemo"]
      592 DUPCLOSURE                       R55 K66 [PROTO_24]
      593 CAPTURE                          UPVAL U12
      594 NEWTABLE                         R56 0 0
      596 CALL                             R54 2 2
      597 GETUPVAL                         R56 22
      598 JUMPIFNOT                        R56 ; [+17]
      599 GETUPVAL                         R56 0
      600 GETTABLEKS                       R56 R56 K54 ["useEffect"]
      602 NEWCLOSURE                       R57 P21
      603 CAPTURE                          UPVAL U12
      604 CAPTURE                          VAL R54
      605 CAPTURE                          VAL R51
      606 CAPTURE                          VAL R0
      607 NEWTABLE                         R58 0 3
      609 MOVE                             R59 R54
      610 MOVE                             R60 R51
      611 GETTABLEKS                       R61 R0 K67 ["Selected"]
      613 SETLIST                          R58 R59 3 [1]
      615 CALL                             R56 2 0
      616 GETUPVAL                         R56 13
      617 GETTABLEKS                       R56 R56 K33 ["useSignalBinding"]
      619 MOVE                             R57 R48
      620 CALL                             R56 1 1
      621 GETUPVAL                         R57 0
      622 GETTABLEKS                       R57 R57 K31 ["useMemo"]
      624 NEWCLOSURE                       R58 P22
      625 CAPTURE                          UPVAL U9
      626 CAPTURE                          VAL R12
      627 CAPTURE                          VAL R13
      628 CAPTURE                          REF R8
      629 CAPTURE                          UPVAL U15
      630 CAPTURE                          VAL R0
      631 NEWTABLE                         R59 0 5
      633 GETTABLEKS                       R60 R0 K14 ["Collapsed"]
      635 MOVE                             R61 R8
      636 GETTABLEKS                       R62 R0 K67 ["Selected"]
      638 MOVE                             R63 R11
      639 MOVE                             R64 R13
      640 SETLIST                          R59 R60 5 [1]
      642 CALL                             R57 2 1
      643 GETUPVAL                         R58 0
      644 GETTABLEKS                       R58 R58 K31 ["useMemo"]
      646 NEWCLOSURE                       R59 P23
      647 CAPTURE                          VAL R57
      648 NEWTABLE                         R60 0 1
      650 MOVE                             R61 R57
      651 SETLIST                          R60 R61 1 [1]
      653 CALL                             R58 2 1
      654 GETUPVAL                         R59 0
      655 GETTABLEKS                       R59 R59 K31 ["useMemo"]
      657 NEWCLOSURE                       R60 P24
      658 CAPTURE                          UPVAL U0
      659 CAPTURE                          VAL R32
      660 CAPTURE                          VAL R17
      661 NEWTABLE                         R61 0 2
      663 MOVE                             R62 R32
      664 GETTABLEKS                       R63 R17 K23 ["Color"]
      666 GETTABLEKS                       R63 R63 K68 ["System"]
      668 GETTABLEKS                       R63 R63 K69 ["Neutral"]
      670 GETTABLEKS                       R63 R63 K70 ["Color3"]
      672 SETLIST                          R61 R62 2 [1]
      674 CALL                             R59 2 1
      675 GETUPVAL                         R61 23
      676 JUMPIFNOT                        R61 ; [+13]
      677 GETUPVAL                         R60 2
      678 GETTABLEKS                       R60 R60 K47 ["useEventCallback"]
      680 NEWCLOSURE                       R61 P25
      681 CAPTURE                          VAL R4
      682 CAPTURE                          VAL R0
      683 CAPTURE                          UPVAL U18
      684 CAPTURE                          UPVAL U19
      685 CAPTURE                          UPVAL U24
      686 CAPTURE                          VAL R5
      687 CAPTURE                          VAL R3
      688 CALL                             R60 1 1
      689 JUMP                             ; [+1]
      690 LOADNIL                          R60
      691 JUMPIFNOT                        R12 ; [+15]
      692 GETUPVAL                         R61 0
      693 GETTABLEKS                       R61 R61 K40 ["joinBindings"]
      695 NEWTABLE                         R62 0 2
      697 MOVE                             R63 R22
      698 MOVE                             R64 R25
      699 SETLIST                          R62 R63 2 [1]
      701 CALL                             R61 1 1
      702 DUPCLOSURE                       R63 K71 [PROTO_31]
      703 NAMECALL                         R61 R61 K42 ["map"]
      705 CALL                             R61 2 1
      706 JUMP                             ; [+12]
      707 GETUPVAL                         R62 16
      708 JUMPIFNOT                        R62 ; [+5]
      709 DUPCLOSURE                       R63 K72 [PROTO_32]
      710 NAMECALL                         R61 R22 K42 ["map"]
      712 CALL                             R61 2 1
      713 JUMP                             ; [+5]
      714 GETIMPORT                        R61 K75 [UDim2.fromOffset]
      716 MOVE                             R62 R27
      717 LOADN                            R63 0
      718 CALL                             R61 2 1
      719 GETUPVAL                         R62 0
      720 GETTABLEKS                       R62 R62 K76 ["createElement"]
      722 GETUPVAL                         R63 11
      723 GETTABLEKS                       R63 R63 K77 ["View"]
      725 DUPTABLE                         R64 K87 [{["tag"] = "auto-y", ["Size"], ["LayoutOrder"], ["ZIndex"], ["Position"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      726 GETUPVAL                         R66 16
      727 JUMPIFNOT                        R66 ; [+5]
      728 DUPCLOSURE                       R67 K88 [PROTO_33]
      729 NAMECALL                         R65 R22 K42 ["map"]
      731 CALL                             R65 2 1
      732 JUMP                             ; [+5]
      733 GETIMPORT                        R65 K75 [UDim2.fromOffset]
      735 MOVE                             R66 R27
      736 LOADN                            R67 0
      737 CALL                             R65 2 1
      738 SETTABLEKS                       R65 R64 K80 ["Size"]
      740 GETTABLEKS                       R65 R0 K81 ["LayoutOrder"]
      742 SETTABLEKS                       R65 R64 K81 ["LayoutOrder"]
      744 GETTABLEKS                       R65 R0 K82 ["ZIndex"]
      746 SETTABLEKS                       R65 R64 K82 ["ZIndex"]
      748 SETTABLEKS                       R30 R64 K38 ["Position"]
      750 DUPTABLE                         R65 K91 [{"UIScale", "ComponentContext"}]
      751 GETUPVAL                         R66 0
      752 GETTABLEKS                       R66 R66 K76 ["createElement"]
      754 LOADK                            R67 K89 ["UIScale"]
      755 DUPTABLE                         R68 K93 [{"Scale"}]
      756 SETTABLEKS                       R31 R68 K92 ["Scale"]
      758 CALL                             R66 2 1
      759 SETTABLEKS                       R66 R65 K89 ["UIScale"]
      761 GETUPVAL                         R66 0
      762 GETTABLEKS                       R66 R66 K76 ["createElement"]
      764 GETUPVAL                         R67 25
      765 GETTABLEKS                       R67 R67 K94 ["Provider"]
      767 DUPTABLE                         R68 K97 [{"absoluteSizeHook", "observeControlledHeight"}]
      768 SETTABLEKS                       R29 R68 K95 ["absoluteSizeHook"]
      770 SETTABLEKS                       R26 R68 K96 ["observeControlledHeight"]
      772 DUPTABLE                         R69 K102 [{"Node", "DebugMarker", "DragDetector", "RightClickCapture"}]
      773 GETUPVAL                         R70 0
      774 GETTABLEKS                       R70 R70 K76 ["createElement"]
      776 GETUPVAL                         R71 11
      777 GETTABLEKS                       R71 R71 K77 ["View"]
      779 DUPTABLE                         R72 K104 [{["tag"], ["Size"], ["ref"], ["ZIndex"] = 1}]
      780 SETTABLEKS                       R58 R72 K78 ["tag"]
      782 GETUPVAL                         R74 9
      783 CALL                             R74 0 1
      784 JUMPIFNOT                        R74 ; [+2]
      785 MOVE                             R73 R61
      786 JUMP                             ; [+12]
      787 GETUPVAL                         R74 16
      788 JUMPIFNOT                        R74 ; [+5]
      789 DUPCLOSURE                       R75 K105 [PROTO_34]
      790 NAMECALL                         R73 R22 K42 ["map"]
      792 CALL                             R73 2 1
      793 JUMP                             ; [+5]
      794 GETIMPORT                        R73 K75 [UDim2.fromOffset]
      796 MOVE                             R74 R27
      797 LOADN                            R75 0
      798 CALL                             R73 2 1
      799 SETTABLEKS                       R73 R72 K80 ["Size"]
      801 GETTABLEKS                       R73 R29 K106 ["setFrame"]
      803 SETTABLEKS                       R73 R72 K103 ["ref"]
      805 DUPTABLE                         R73 K113 [{"CoverContainer", "CompositorNodeHeader", "TitleDivider", "CompositorNodeContent", "ContextToolbar", "SelectionHighlightContainer"}]
      806 GETUPVAL                         R74 0
      807 GETTABLEKS                       R74 R74 K76 ["createElement"]
      809 LOADK                            R75 K114 ["Folder"]
      810 NEWTABLE                         R76 0 0
      812 DUPTABLE                         R77 K116 [{"Cover"}]
      813 GETUPVAL                         R78 0
      814 GETTABLEKS                       R78 R78 K76 ["createElement"]
      816 GETUPVAL                         R79 11
      817 GETTABLEKS                       R79 R79 K77 ["View"]
      819 DUPTABLE                         R80 K120 [{["tag"], ["Size"], ["GroupTransparency"], ["ZIndex"], ["testId"] = "CompositorNodeCover"}]
      820 SETTABLEKS                       R57 R80 K78 ["tag"]
      822 GETIMPORT                        R81 K122 [UDim2.fromScale]
      824 LOADN                            R82 1
      825 LOADN                            R83 1
      826 CALL                             R81 2 1
      827 SETTABLEKS                       R81 R80 K80 ["Size"]
      829 SETTABLEKS                       R56 R80 K117 ["GroupTransparency"]
      831 GETUPVAL                         R82 26
      832 CALL                             R82 0 1
      833 JUMPIFNOT                        R82 ; [+2]
      834 LOADN                            R81 2
      835 JUMP                             ; [+1]
      836 LOADN                            R81 1
      837 SETTABLEKS                       R81 R80 K82 ["ZIndex"]
      839 CALL                             R78 2 1
      840 SETTABLEKS                       R78 R77 K115 ["Cover"]
      842 CALL                             R74 3 1
      843 SETTABLEKS                       R74 R73 K107 ["CoverContainer"]
      845 GETUPVAL                         R74 0
      846 GETTABLEKS                       R74 R74 K76 ["createElement"]
      848 GETUPVAL                         R75 11
      849 GETTABLEKS                       R75 R75 K77 ["View"]
      851 DUPTABLE                         R76 K124 [{"tag", "backgroundStyle", "LayoutOrder", "ref"}]
      852 NEWTABLE                         R77 4 0
      854 LOADB                            R78 1
      855 SETTABLEKS                       R78 R77 K125 ["size-full-700 align-y-center padding-x-xxsmall row flex-x-fill"]
      857 GETUPVAL                         R79 27
      858 NOT                              R78 R79
      859 JUMPIFNOT                        R78 ; [+1]
      860 NOT                              R78 R9
      861 SETTABLEKS                       R78 R77 K126 ["radius-small bg-shift-200"]
      863 JUMPIFNOT                        R8 ; [+4]
      864 GETTABLEKS                       R79 R0 K14 ["Collapsed"]
      866 NOT                              R78 R79
      867 JUMPIF                           R78 ; [+3]
      868 MOVE                             R78 R9
      869 JUMPIFNOT                        R78 ; [+1]
      870 NOT                              R78 R8
      871 SETTABLEKS                       R78 R77 K127 ["radius-small"]
      873 MOVE                             R78 R8
      874 JUMPIFNOT                        R78 ; [+2]
      875 GETTABLEKS                       R78 R0 K14 ["Collapsed"]
      877 SETTABLEKS                       R78 R77 K128 ["radius-large"]
      879 SETTABLEKS                       R77 R76 K78 ["tag"]
      881 JUMPIFNOT                        R9 ; [+2]
      882 MOVE                             R77 R19
      883 JUMP                             ; [+1]
      884 LOADNIL                          R77
      885 SETTABLEKS                       R77 R76 K123 ["backgroundStyle"]
      887 SETTABLEKS                       R53 R76 K81 ["LayoutOrder"]
      889 SETTABLEKS                       R41 R76 K103 ["ref"]
      891 DUPTABLE                         R77 K134 [{"DEPRECATED_ToggleButton", "Title", "TitleInput", "ToggleButton", "Children"}]
      892 GETTABLEKS                       R79 R0 K135 ["Collapsible"]
      894 JUMPIFEQKB                       R79 FALSE ; [+47]
      896 GETUPVAL                         R79 27
      897 JUMPIF                           R79 ; [+44]
      898 GETUPVAL                         R78 0
      899 GETTABLEKS                       R78 R78 K76 ["createElement"]
      901 GETUPVAL                         R79 11
      902 GETTABLEKS                       R79 R79 K136 ["Button"]
      904 DUPTABLE                         R80 K142 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      905 SETTABLEKS                       R49 R80 K137 ["icon"]
      907 GETUPVAL                         R81 11
      908 GETTABLEKS                       R81 R81 K20 ["Enums"]
      910 GETTABLEKS                       R81 R81 K143 ["ButtonVariant"]
      912 GETTABLEKS                       R81 R81 K144 ["Text"]
      914 SETTABLEKS                       R81 R80 K138 ["variant"]
      916 SETTABLEKS                       R50 R80 K139 ["onActivated"]
      918 GETUPVAL                         R81 11
      919 GETTABLEKS                       R81 R81 K20 ["Enums"]
      921 GETTABLEKS                       R81 R81 K145 ["InputSize"]
      923 GETTABLEKS                       R81 R81 K146 ["XSmall"]
      925 SETTABLEKS                       R81 R80 K140 ["size"]
      927 MOVE                             R81 R2
      928 CALL                             R81 0 1
      929 SETTABLEKS                       R81 R80 K81 ["LayoutOrder"]
      931 GETUPVAL                         R81 11
      932 GETTABLEKS                       R81 R81 K20 ["Enums"]
      934 GETTABLEKS                       R81 R81 K147 ["FillBehavior"]
      936 GETTABLEKS                       R81 R81 K148 ["Fit"]
      938 SETTABLEKS                       R81 R80 K141 ["fillBehavior"]
      940 CALL                             R78 2 1
      941 JUMP                             ; [+1]
      942 LOADNIL                          R78
      943 SETTABLEKS                       R78 R77 K129 ["DEPRECATED_ToggleButton"]
      945 GETUPVAL                         R78 0
      946 GETTABLEKS                       R78 R78 K76 ["createElement"]
      948 GETUPVAL                         R79 11
      949 GETTABLEKS                       R79 R79 K144 ["Text"]
      951 DUPTABLE                         R80 K153 [{["tag"], ["Text"], ["RichText"] = True, ["LayoutOrder"], ["Visible"], ["testId"] = "CompositorNode-Title"}]
      952 NEWTABLE                         R81 2 0
      954 LOADB                            R82 1
      955 SETTABLEKS                       R82 R81 K154 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      957 GETUPVAL                         R82 27
      958 JUMPIF                           R82 ; [+6]
      959 GETTABLEKS                       R83 R0 K135 ["Collapsible"]
      961 JUMPIFEQKB                       R83 FALSE ; [+2]
      963 LOADB                            R82 0 +1
      964 LOADB                            R82 1
      965 SETTABLEKS                       R82 R81 K155 ["padding-left-small"]
      967 SETTABLEKS                       R81 R80 K78 ["tag"]
      969 SETTABLEKS                       R51 R80 K144 ["Text"]
      971 MOVE                             R81 R2
      972 CALL                             R81 0 1
      973 SETTABLEKS                       R81 R80 K81 ["LayoutOrder"]
      975 GETTABLEKS                       R82 R36 K49 ["enabled"]
      977 NOT                              R81 R82
      978 SETTABLEKS                       R81 R80 K151 ["Visible"]
      980 CALL                             R78 2 1
      981 SETTABLEKS                       R78 R77 K130 ["Title"]
      983 GETUPVAL                         R78 0
      984 GETTABLEKS                       R78 R78 K76 ["createElement"]
      986 GETUPVAL                         R79 11
      987 GETTABLEKS                       R79 R79 K156 ["TextInput"]
      989 DUPTABLE                         R80 K163 [{["tag"], ["text"], ["LayoutOrder"], ["onChanged"], ["label"] = "", ["size"], ["focusBehavior"], ["textBoxRef"], ["onFocusLost"], ["ref"], ["width"], ["Visible"]}]
      990 NEWTABLE                         R81 1 0
      992 LOADB                            R82 1
      993 SETTABLEKS                       R82 R81 K154 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      995 SETTABLEKS                       R81 R80 K78 ["tag"]
      997 SETTABLEKS                       R34 R80 K60 ["text"]
      999 MOVE                             R81 R2
     1000 CALL                             R81 0 1
     1001 SETTABLEKS                       R81 R80 K81 ["LayoutOrder"]
     1003 SETTABLEKS                       R35 R80 K157 ["onChanged"]
     1005 GETUPVAL                         R81 11
     1006 GETTABLEKS                       R81 R81 K20 ["Enums"]
     1008 GETTABLEKS                       R81 R81 K145 ["InputSize"]
     1010 GETTABLEKS                       R81 R81 K146 ["XSmall"]
     1012 SETTABLEKS                       R81 R80 K140 ["size"]
     1014 GETUPVAL                         R81 11
     1015 GETTABLEKS                       R81 R81 K20 ["Enums"]
     1017 GETTABLEKS                       R81 R81 K164 ["InputFocusBehavior"]
     1019 GETTABLEKS                       R81 R81 K165 ["Highlight"]
     1021 SETTABLEKS                       R81 R80 K159 ["focusBehavior"]
     1023 SETTABLEKS                       R37 R80 K160 ["textBoxRef"]
     1025 SETTABLEKS                       R52 R80 K161 ["onFocusLost"]
     1027 SETTABLEKS                       R37 R80 K103 ["ref"]
     1029 GETIMPORT                        R81 K168 [UDim.new]
     1031 LOADN                            R82 0
     1032 LOADN                            R83 100
     1033 CALL                             R81 2 1
     1034 SETTABLEKS                       R81 R80 K162 ["width"]
     1036 GETTABLEKS                       R81 R36 K49 ["enabled"]
     1038 SETTABLEKS                       R81 R80 K151 ["Visible"]
     1040 CALL                             R78 2 1
     1041 SETTABLEKS                       R78 R77 K131 ["TitleInput"]
     1043 GETTABLEKS                       R79 R0 K135 ["Collapsible"]
     1045 JUMPIFEQKB                       R79 FALSE ; [+47]
     1047 GETUPVAL                         R79 27
     1048 JUMPIFNOT                        R79 ; [+44]
     1049 GETUPVAL                         R78 0
     1050 GETTABLEKS                       R78 R78 K76 ["createElement"]
     1052 GETUPVAL                         R79 11
     1053 GETTABLEKS                       R79 R79 K136 ["Button"]
     1055 DUPTABLE                         R80 K142 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
     1056 SETTABLEKS                       R49 R80 K137 ["icon"]
     1058 GETUPVAL                         R81 11
     1059 GETTABLEKS                       R81 R81 K20 ["Enums"]
     1061 GETTABLEKS                       R81 R81 K143 ["ButtonVariant"]
     1063 GETTABLEKS                       R81 R81 K144 ["Text"]
     1065 SETTABLEKS                       R81 R80 K138 ["variant"]
     1067 SETTABLEKS                       R50 R80 K139 ["onActivated"]
     1069 GETUPVAL                         R81 11
     1070 GETTABLEKS                       R81 R81 K20 ["Enums"]
     1072 GETTABLEKS                       R81 R81 K145 ["InputSize"]
     1074 GETTABLEKS                       R81 R81 K146 ["XSmall"]
     1076 SETTABLEKS                       R81 R80 K140 ["size"]
     1078 MOVE                             R81 R2
     1079 CALL                             R81 0 1
     1080 SETTABLEKS                       R81 R80 K81 ["LayoutOrder"]
     1082 GETUPVAL                         R81 11
     1083 GETTABLEKS                       R81 R81 K20 ["Enums"]
     1085 GETTABLEKS                       R81 R81 K147 ["FillBehavior"]
     1087 GETTABLEKS                       R81 R81 K148 ["Fit"]
     1089 SETTABLEKS                       R81 R80 K141 ["fillBehavior"]
     1091 CALL                             R78 2 1
     1092 JUMP                             ; [+1]
     1093 LOADNIL                          R78
     1094 SETTABLEKS                       R78 R77 K132 ["ToggleButton"]
     1096 GETUPVAL                         R78 0
     1097 GETTABLEKS                       R78 R78 K76 ["createElement"]
     1099 LOADK                            R79 K114 ["Folder"]
     1100 NEWTABLE                         R80 0 0
     1102 GETTABLEKS                       R81 R0 K169 ["HeaderChildren"]
     1104 CALL                             R78 3 1
     1105 SETTABLEKS                       R78 R77 K133 ["Children"]
     1107 CALL                             R74 3 1
     1108 SETTABLEKS                       R74 R73 K108 ["CompositorNodeHeader"]
     1110 GETUPVAL                         R74 27
     1111 JUMPIFNOT                        R74 ; [+16]
     1112 GETTABLEKS                       R75 R0 K14 ["Collapsed"]
     1114 NOT                              R74 R75
     1115 JUMPIFNOT                        R74 ; [+12]
     1116 GETUPVAL                         R74 0
     1117 GETTABLEKS                       R74 R74 K76 ["createElement"]
     1119 GETUPVAL                         R75 11
     1120 GETTABLEKS                       R75 R75 K170 ["Divider"]
     1122 DUPTABLE                         R76 K171 [{"LayoutOrder"}]
     1123 MOVE                             R77 R2
     1124 CALL                             R77 0 1
     1125 SETTABLEKS                       R77 R76 K81 ["LayoutOrder"]
     1127 CALL                             R74 2 1
     1128 SETTABLEKS                       R74 R73 K109 ["TitleDivider"]
     1130 GETUPVAL                         R75 0
     1131 GETTABLEKS                       R75 R75 K133 ["Children"]
     1133 GETTABLEKS                       R75 R75 K172 ["count"]
     1135 GETTABLEKS                       R76 R0 K173 ["children"]
     1137 CALL                             R75 1 1
     1138 LOADN                            R76 0
     1139 JUMPIFNOTLT                      R76 R75 ; [+139]
     1141 GETUPVAL                         R74 0
     1142 GETTABLEKS                       R74 R74 K76 ["createElement"]
     1144 GETUPVAL                         R75 11
     1145 GETTABLEKS                       R75 R75 K77 ["View"]
     1147 DUPTABLE                         R76 K174 [{"tag", "LayoutOrder"}]
     1148 JUMPIFNOT                        R11 ; [+2]
     1149 LOADK                            R77 K175 ["size-full-0 grow"]
     1150 JUMP                             ; [+1]
     1151 LOADK                            R77 K176 ["size-full-700 auto-y"]
     1152 SETTABLEKS                       R77 R76 K78 ["tag"]
     1154 MOVE                             R77 R2
     1155 CALL                             R77 0 1
     1156 SETTABLEKS                       R77 R76 K81 ["LayoutOrder"]
     1158 DUPTABLE                         R77 K179 [{"Contents", "ResizeBars"}]
     1159 GETUPVAL                         R78 0
     1160 GETTABLEKS                       R78 R78 K76 ["createElement"]
     1162 GETUPVAL                         R79 11
     1163 GETTABLEKS                       R79 R79 K77 ["View"]
     1165 DUPTABLE                         R80 K182 [{["tag"] = "col size-full-0 auto-y padding-y-xsmall radius-small", ["ZIndex"], ["testId"] = "CompositorNodeContents"}]
     1166 GETUPVAL                         R82 26
     1167 CALL                             R82 0 1
     1168 JUMPIFNOT                        R82 ; [+2]
     1169 LOADN                            R81 1
     1170 JUMP                             ; [+1]
     1171 LOADN                            R81 2
     1172 SETTABLEKS                       R81 R80 K82 ["ZIndex"]
     1174 DUPTABLE                         R81 K184 [{"NodeProperties"}]
     1175 GETUPVAL                         R82 0
     1176 GETTABLEKS                       R82 R82 K76 ["createElement"]
     1178 GETUPVAL                         R83 0
     1179 GETTABLEKS                       R83 R83 K185 ["Fragment"]
     1181 NEWTABLE                         R84 0 0
     1183 GETTABLEKS                       R85 R0 K173 ["children"]
     1185 CALL                             R82 3 1
     1186 SETTABLEKS                       R82 R81 K183 ["NodeProperties"]
     1188 CALL                             R78 3 1
     1189 SETTABLEKS                       R78 R77 K177 ["Contents"]
     1191 GETUPVAL                         R79 9
     1192 CALL                             R79 0 1
     1193 JUMPIFNOT                        R79 ; [+43]
     1194 JUMPIF                           R10 ; [+1]
     1195 JUMPIFNOT                        R11 ; [+39]
     1196 GETUPVAL                         R78 0
     1197 GETTABLEKS                       R78 R78 K76 ["createElement"]
     1199 GETUPVAL                         R79 28
     1200 DUPTABLE                         R80 K195 [{["tag"] = "radius-small", ["showHorizontal"], ["showVertical"], ["DEPRECATED_nodeWidth"], ["nodeWidthBinding"], ["OnResized"], ["nodeHeightBinding"], ["OnResizedVertical"], ["Style"], ["ZIndex"] = 4}]
     1201 SETTABLEKS                       R10 R80 K186 ["showHorizontal"]
     1203 SETTABLEKS                       R11 R80 K187 ["showVertical"]
     1205 SETTABLEKS                       R27 R80 K188 ["DEPRECATED_nodeWidth"]
     1207 SETTABLEKS                       R22 R80 K189 ["nodeWidthBinding"]
     1209 SETTABLEKS                       R46 R80 K190 ["OnResized"]
     1211 SETTABLEKS                       R25 R80 K191 ["nodeHeightBinding"]
     1213 SETTABLEKS                       R47 R80 K192 ["OnResizedVertical"]
     1215 GETTABLEKS                       R82 R0 K67 ["Selected"]
     1217 JUMPIFNOT                        R82 ; [+7]
     1218 GETTABLEKS                       R81 R17 K23 ["Color"]
     1220 GETTABLEKS                       R81 R81 K68 ["System"]
     1222 GETTABLEKS                       R81 R81 K69 ["Neutral"]
     1224 JUMP                             ; [+6]
     1225 GETTABLEKS                       R81 R17 K23 ["Color"]
     1227 GETTABLEKS                       R81 R81 K196 ["Stroke"]
     1229 GETTABLEKS                       R81 R81 K197 ["Default"]
     1231 SETTABLEKS                       R81 R80 K193 ["Style"]
     1233 CALL                             R78 2 1
     1234 JUMP                             ; [+40]
     1235 LOADNIL                          R78
     1236 JUMP                             ; [+38]
     1237 JUMPIF                           R8 ; [+36]
     1238 GETUPVAL                         R78 0
     1239 GETTABLEKS                       R78 R78 K76 ["createElement"]
     1241 GETUPVAL                         R79 28
     1242 DUPTABLE                         R80 K198 [{["tag"] = "radius-small", ["DEPRECATED_nodeWidth"], ["nodeWidthBinding"], ["OnResized"], ["Style"], ["ZIndex"] = 4}]
     1243 SETTABLEKS                       R27 R80 K188 ["DEPRECATED_nodeWidth"]
     1245 SETTABLEKS                       R22 R80 K189 ["nodeWidthBinding"]
     1247 GETUPVAL                         R82 16
     1248 JUMPIFNOT                        R82 ; [+2]
     1249 MOVE                             R81 R21
     1250 JUMP                             ; [+1]
     1251 MOVE                             R81 R45
     1252 SETTABLEKS                       R81 R80 K190 ["OnResized"]
     1254 GETTABLEKS                       R82 R0 K67 ["Selected"]
     1256 JUMPIFNOT                        R82 ; [+7]
     1257 GETTABLEKS                       R81 R17 K23 ["Color"]
     1259 GETTABLEKS                       R81 R81 K68 ["System"]
     1261 GETTABLEKS                       R81 R81 K69 ["Neutral"]
     1263 JUMP                             ; [+6]
     1264 GETTABLEKS                       R81 R17 K23 ["Color"]
     1266 GETTABLEKS                       R81 R81 K196 ["Stroke"]
     1268 GETTABLEKS                       R81 R81 K197 ["Default"]
     1270 SETTABLEKS                       R81 R80 K193 ["Style"]
     1272 CALL                             R78 2 1
     1273 JUMP                             ; [+1]
     1274 LOADNIL                          R78
     1275 SETTABLEKS                       R78 R77 K178 ["ResizeBars"]
     1277 CALL                             R74 3 1
     1278 JUMP                             ; [+1]
     1279 LOADNIL                          R74
     1280 SETTABLEKS                       R74 R73 K110 ["CompositorNodeContent"]
     1282 GETTABLEKS                       R74 R0 K111 ["ContextToolbar"]
     1284 JUMPIFNOT                        R74 ; [+21]
     1285 GETTABLEKS                       R75 R0 K67 ["Selected"]
     1287 JUMPIF                           R75 ; [+2]
     1288 MOVE                             R74 R15
     1289 JUMPIFNOT                        R74 ; [+16]
     1290 GETUPVAL                         R74 0
     1291 GETTABLEKS                       R74 R74 K76 ["createElement"]
     1293 GETUPVAL                         R75 29
     1294 DUPTABLE                         R76 K202 [{"Buttons", "positionBinding", "widthBinding"}]
     1295 GETTABLEKS                       R77 R0 K111 ["ContextToolbar"]
     1297 GETTABLEKS                       R77 R77 K199 ["Buttons"]
     1299 SETTABLEKS                       R77 R76 K199 ["Buttons"]
     1301 SETTABLEKS                       R30 R76 K200 ["positionBinding"]
     1303 SETTABLEKS                       R33 R76 K201 ["widthBinding"]
     1305 CALL                             R74 2 1
     1306 SETTABLEKS                       R74 R73 K111 ["ContextToolbar"]
     1308 GETUPVAL                         R74 15
     1309 CALL                             R74 0 1
     1310 JUMPIFNOT                        R74 ; [+124]
     1311 GETUPVAL                         R74 0
     1312 GETTABLEKS                       R74 R74 K76 ["createElement"]
     1314 LOADK                            R75 K114 ["Folder"]
     1315 NEWTABLE                         R76 0 0
     1317 DUPTABLE                         R77 K204 [{"SelectionHighlight"}]
     1318 GETTABLEKS                       R79 R0 K67 ["Selected"]
     1320 JUMPIFNOT                        R79 ; [+110]
     1321 GETUPVAL                         R79 27
     1322 JUMPIFNOT                        R79 ; [+58]
     1323 GETUPVAL                         R78 0
     1324 GETTABLEKS                       R78 R78 K76 ["createElement"]
     1326 GETUPVAL                         R79 11
     1327 GETTABLEKS                       R79 R79 K77 ["View"]
     1329 DUPTABLE                         R80 K206 [{["tag"] = "size-full-full position-center-center anchor-center-center"}]
     1330 GETUPVAL                         R81 0
     1331 GETTABLEKS                       R81 R81 K76 ["createElement"]
     1333 GETUPVAL                         R82 11
     1334 GETTABLEKS                       R82 R82 K77 ["View"]
     1336 DUPTABLE                         R83 K208 [{["tag"], ["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 3, ["testId"] = "SelectionHighlight"}]
     1337 NEWTABLE                         R84 4 0
     1339 LOADB                            R85 1
     1340 SETTABLEKS                       R85 R84 K209 ["position-center-center anchor-center-center"]
     1342 GETUPVAL                         R86 9
     1343 CALL                             R86 0 1
     1344 JUMPIFNOT                        R86 ; [+2]
     1345 NOT                              R85 R13
     1346 JUMP                             ; [+1]
     1347 NOT                              R85 R8
     1348 SETTABLEKS                       R85 R84 K127 ["radius-small"]
     1350 GETUPVAL                         R86 9
     1351 CALL                             R86 0 1
     1352 JUMPIFNOT                        R86 ; [+2]
     1353 MOVE                             R85 R13
     1354 JUMP                             ; [+1]
     1355 MOVE                             R85 R8
     1356 SETTABLEKS                       R85 R84 K128 ["radius-large"]
     1358 SETTABLEKS                       R84 R83 K78 ["tag"]
     1360 GETIMPORT                        R84 K210 [UDim2.new]
     1362 LOADN                            R85 1
     1363 GETTABLEKS                       R86 R17 K211 ["Padding"]
     1365 GETTABLEKS                       R86 R86 K212 ["Small"]
     1367 LOADN                            R87 1
     1368 GETTABLEKS                       R88 R17 K211 ["Padding"]
     1370 GETTABLEKS                       R88 R88 K212 ["Small"]
     1372 CALL                             R84 4 1
     1373 SETTABLEKS                       R84 R83 K80 ["Size"]
     1375 DUPTABLE                         R84 K214 [{"UIStroke"}]
     1376 SETTABLEKS                       R59 R84 K213 ["UIStroke"]
     1378 CALL                             R81 3 -1
     1379 CALL                             R78 -1 1
     1380 JUMP                             ; [+51]
     1381 GETUPVAL                         R78 0
     1382 GETTABLEKS                       R78 R78 K76 ["createElement"]
     1384 GETUPVAL                         R79 11
     1385 GETTABLEKS                       R79 R79 K77 ["View"]
     1387 DUPTABLE                         R80 K208 [{["tag"], ["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 3, ["testId"] = "SelectionHighlight"}]
     1388 NEWTABLE                         R81 4 0
     1390 LOADB                            R82 1
     1391 SETTABLEKS                       R82 R81 K209 ["position-center-center anchor-center-center"]
     1393 GETUPVAL                         R83 9
     1394 CALL                             R83 0 1
     1395 JUMPIFNOT                        R83 ; [+2]
     1396 NOT                              R82 R13
     1397 JUMP                             ; [+1]
     1398 NOT                              R82 R8
     1399 SETTABLEKS                       R82 R81 K127 ["radius-small"]
     1401 GETUPVAL                         R83 9
     1402 CALL                             R83 0 1
     1403 JUMPIFNOT                        R83 ; [+2]
     1404 MOVE                             R82 R13
     1405 JUMP                             ; [+1]
     1406 MOVE                             R82 R8
     1407 SETTABLEKS                       R82 R81 K128 ["radius-large"]
     1409 SETTABLEKS                       R81 R80 K78 ["tag"]
     1411 GETIMPORT                        R81 K210 [UDim2.new]
     1413 LOADN                            R82 1
     1414 GETTABLEKS                       R83 R17 K211 ["Padding"]
     1416 GETTABLEKS                       R83 R83 K212 ["Small"]
     1418 LOADN                            R84 1
     1419 GETTABLEKS                       R85 R17 K211 ["Padding"]
     1421 GETTABLEKS                       R85 R85 K212 ["Small"]
     1423 CALL                             R81 4 1
     1424 SETTABLEKS                       R81 R80 K80 ["Size"]
     1426 DUPTABLE                         R81 K214 [{"UIStroke"}]
     1427 SETTABLEKS                       R59 R81 K213 ["UIStroke"]
     1429 CALL                             R78 3 1
     1430 JUMP                             ; [+1]
     1431 LOADNIL                          R78
     1432 SETTABLEKS                       R78 R77 K203 ["SelectionHighlight"]
     1434 CALL                             R74 3 1
     1435 SETTABLEKS                       R74 R73 K112 ["SelectionHighlightContainer"]
     1437 CALL                             R70 3 1
     1438 SETTABLEKS                       R70 R69 K98 ["Node"]
     1440 GETUPVAL                         R71 22
     1441 JUMPIFNOT                        R71 ; [+15]
     1442 GETUPVAL                         R70 0
     1443 GETTABLEKS                       R70 R70 K76 ["createElement"]
     1445 GETUPVAL                         R71 11
     1446 GETTABLEKS                       R71 R71 K77 ["View"]
     1448 DUPTABLE                         R72 K217 [{["tag"] = "size-full", ["testId"] = "CompositorNode-DebugMarker", ["LayoutOrder"], ["ref"]}]
     1449 MOVE                             R73 R2
     1450 CALL                             R73 0 1
     1451 SETTABLEKS                       R73 R72 K81 ["LayoutOrder"]
     1453 SETTABLEKS                       R55 R72 K103 ["ref"]
     1455 CALL                             R70 2 1
     1456 JUMP                             ; [+1]
     1457 LOADNIL                          R70
     1458 SETTABLEKS                       R70 R69 K99 ["DebugMarker"]
     1460 GETUPVAL                         R71 30
     1461 CALL                             R71 0 1
     1462 JUMPIFNOT                        R71 ; [+5]
     1463 LOADB                            R70 0
     1464 GETTABLEKS                       R71 R0 K218 ["CanDrag"]
     1466 JUMPIFEQKB                       R71 FALSE ; [+39]
     1468 GETUPVAL                         R70 0
     1469 GETTABLEKS                       R70 R70 K76 ["createElement"]
     1471 LOADK                            R71 K219 ["UIDragDetector"]
     1472 NEWTABLE                         R72 8 0
     1474 GETIMPORT                        R73 K223 [Enum.UIDragDetectorDragStyle.TranslatePlane]
     1476 SETTABLEKS                       R73 R72 K224 ["DragStyle"]
     1478 GETIMPORT                        R73 K227 [Enum.UIDragDetectorResponseStyle.CustomOffset]
     1480 SETTABLEKS                       R73 R72 K228 ["ResponseStyle"]
     1482 GETTABLEKS                       R73 R3 K229 ["getViewport"]
     1484 CALL                             R73 0 1
     1485 SETTABLEKS                       R73 R72 K230 ["ReferenceUIInstance"]
     1487 GETUPVAL                         R73 0
     1488 GETTABLEKS                       R73 R73 K231 ["Event"]
     1490 GETTABLEKS                       R73 R73 K232 ["DragStart"]
     1492 SETTABLE                         R42 R72 R73
     1493 GETUPVAL                         R73 0
     1494 GETTABLEKS                       R73 R73 K231 ["Event"]
     1496 GETTABLEKS                       R73 R73 K233 ["DragContinue"]
     1498 SETTABLE                         R43 R72 R73
     1499 GETUPVAL                         R73 0
     1500 GETTABLEKS                       R73 R73 K231 ["Event"]
     1502 GETTABLEKS                       R73 R73 K234 ["DragEnd"]
     1504 SETTABLE                         R44 R72 R73
     1505 CALL                             R70 2 1
     1506 SETTABLEKS                       R70 R69 K100 ["DragDetector"]
     1508 GETUPVAL                         R70 23
     1509 JUMPIFNOT                        R70 ; [+26]
     1510 GETUPVAL                         R70 0
     1511 GETTABLEKS                       R70 R70 K76 ["createElement"]
     1513 LOADK                            R71 K235 ["Frame"]
     1514 NEWTABLE                         R72 4 0
     1516 LOADN                            R73 1
     1517 SETTABLEKS                       R73 R72 K83 ["BackgroundTransparency"]
     1519 GETIMPORT                        R73 K122 [UDim2.fromScale]
     1521 LOADN                            R74 1
     1522 LOADN                            R75 1
     1523 CALL                             R73 2 1
     1524 SETTABLEKS                       R73 R72 K80 ["Size"]
     1526 LOADN                            R73 -10
     1527 SETTABLEKS                       R73 R72 K82 ["ZIndex"]
     1529 GETUPVAL                         R73 0
     1530 GETTABLEKS                       R73 R73 K231 ["Event"]
     1532 GETTABLEKS                       R73 R73 K236 ["InputBegan"]
     1534 SETTABLE                         R60 R72 R73
     1535 CALL                             R70 2 1
     1536 SETTABLEKS                       R70 R69 K101 ["RightClickCapture"]
     1538 CALL                             R66 3 1
     1539 SETTABLEKS                       R66 R65 K90 ["ComponentContext"]
     1541 CALL                             R62 3 -1
     1542 CLOSEUPVALS                      R8
     1543 RETURN                           R62 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["CompositorNodeComponentContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K7 ["CompositorNodeTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Constants"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETIMPORT                        R5 K1 [script]
       30 GETTABLEKS                       R5 R5 K9 ["ContextToolbar"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K10 ["Util"]
       37 GETTABLEKS                       R6 R6 K11 ["DEPRECATED_sanitizeParameterNames"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K12 ["Flags"]
       44 GETTABLEKS                       R7 R7 K13 ["FFlagAnimGraphUIShowInExplorer"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K12 ["Flags"]
       51 GETTABLEKS                       R8 R8 K14 ["FFlagAnimGraphUI_DynamicZIndex"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K12 ["Flags"]
       58 GETTABLEKS                       R9 R9 K15 ["FFlagAnimGraphUI_NodesHaveSpaces"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K12 ["Flags"]
       65 GETTABLEKS                       R10 R10 K16 ["FFlagAnimGraphUI_NoodleColorLerping"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K12 ["Flags"]
       72 GETTABLEKS                       R11 R11 K17 ["FFlagAnimGraphUI_PerfFixes_7123"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K12 ["Flags"]
       79 GETTABLEKS                       R12 R12 K18 ["FFlagAnimGraphUI_RightClickSelects"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K12 ["Flags"]
       86 GETTABLEKS                       R13 R13 K19 ["FFlagAnimGraphUI_StateMachineNodeType"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R14 R0 K12 ["Flags"]
       93 GETTABLEKS                       R14 R14 K20 ["FFlagAnimGraphUI_StyleTouches"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R15 R0 K21 ["Parent"]
      100 GETTABLEKS                       R15 R15 K22 ["Foundation"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K5 [require]
      105 GETTABLEKS                       R16 R0 K23 ["Components"]
      107 GETTABLEKS                       R16 R16 K24 ["GraphContext"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R17 R0 K21 ["Parent"]
      114 GETTABLEKS                       R17 R17 K25 ["Graphing"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K5 [require]
      119 GETTABLEKS                       R18 R0 K23 ["Components"]
      121 GETTABLEKS                       R18 R18 K26 ["NodeRightClickMenuContext"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K5 [require]
      126 GETTABLEKS                       R19 R0 K21 ["Parent"]
      128 GETTABLEKS                       R19 R19 K27 ["React"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K5 [require]
      133 GETTABLEKS                       R20 R0 K21 ["Parent"]
      135 GETTABLEKS                       R20 R20 K28 ["ReactUtils"]
      137 CALL                             R19 1 1
      138 GETIMPORT                        R20 K5 [require]
      140 GETIMPORT                        R21 K1 [script]
      142 GETTABLEKS                       R21 R21 K29 ["ResizeBars"]
      144 CALL                             R20 1 1
      145 GETIMPORT                        R21 K5 [require]
      147 GETTABLEKS                       R22 R0 K21 ["Parent"]
      149 GETTABLEKS                       R22 R22 K30 ["Signals"]
      151 CALL                             R21 1 1
      152 GETIMPORT                        R22 K5 [require]
      154 GETTABLEKS                       R23 R0 K21 ["Parent"]
      156 GETTABLEKS                       R23 R23 K31 ["SignalsReact"]
      158 CALL                             R22 1 1
      159 GETIMPORT                        R23 K5 [require]
      161 GETTABLEKS                       R24 R0 K23 ["Components"]
      163 GETTABLEKS                       R24 R24 K32 ["SpotlightedNodeContext"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K5 [require]
      168 GETTABLEKS                       R25 R0 K21 ["Parent"]
      170 GETTABLEKS                       R25 R25 K33 ["TestLoader"]
      172 CALL                             R24 1 1
      173 GETIMPORT                        R25 K5 [require]
      175 GETTABLEKS                       R26 R0 K23 ["Components"]
      177 GETTABLEKS                       R26 R26 K34 ["ViewportRectContext"]
      179 CALL                             R25 1 1
      180 GETIMPORT                        R26 K5 [require]
      182 GETTABLEKS                       R27 R0 K10 ["Util"]
      184 GETTABLEKS                       R27 R27 K35 ["bumpNodeZIndex"]
      186 CALL                             R26 1 1
      187 GETIMPORT                        R27 K5 [require]
      189 GETTABLEKS                       R28 R0 K12 ["Flags"]
      191 GETTABLEKS                       R28 R28 K36 ["getFFlagAnimGraphUIEnableExpressionNodes"]
      193 CALL                             R27 1 1
      194 GETIMPORT                        R28 K5 [require]
      196 GETTABLEKS                       R29 R0 K12 ["Flags"]
      198 GETTABLEKS                       R29 R29 K37 ["getFFlagAnimGraphUIPinOffset"]
      200 CALL                             R28 1 1
      201 GETIMPORT                        R29 K5 [require]
      203 GETTABLEKS                       R30 R0 K12 ["Flags"]
      205 GETTABLEKS                       R30 R30 K38 ["getFFlagAnimGraphUIShowSelectionOutlineAcrossZoom"]
      207 CALL                             R29 1 1
      208 GETIMPORT                        R30 K5 [require]
      210 GETTABLEKS                       R31 R0 K12 ["Flags"]
      212 GETTABLEKS                       R31 R31 K39 ["getFFlagAnimGraphUI_RunTimeDebug"]
      214 CALL                             R30 1 1
      215 GETIMPORT                        R31 K5 [require]
      217 GETTABLEKS                       R32 R0 K40 ["Hooks"]
      219 GETTABLEKS                       R32 R32 K41 ["useAbsoluteSize"]
      221 CALL                             R31 1 1
      222 GETIMPORT                        R32 K5 [require]
      224 GETTABLEKS                       R33 R0 K40 ["Hooks"]
      226 GETTABLEKS                       R33 R33 K42 ["useFoundationStudioTheme"]
      228 CALL                             R32 1 1
      229 GETTABLEKS                       R33 R24 K43 ["isCli"]
      231 CALL                             R33 0 1
      232 JUMPIF                           R33 ; [+3]
      233 GETTABLEKS                       R33 R24 K44 ["isFTF"]
      235 CALL                             R33 0 1
      236 DUPCLOSURE                       R34 K45 [PROTO_35]
      237 CAPTURE                          VAL R18
      238 CAPTURE                          VAL R25
      239 CAPTURE                          VAL R19
      240 CAPTURE                          VAL R16
      241 CAPTURE                          VAL R15
      242 CAPTURE                          VAL R17
      243 CAPTURE                          VAL R23
      244 CAPTURE                          VAL R12
      245 CAPTURE                          VAL R3
      246 CAPTURE                          VAL R27
      247 CAPTURE                          VAL R32
      248 CAPTURE                          VAL R14
      249 CAPTURE                          VAL R21
      250 CAPTURE                          VAL R22
      251 CAPTURE                          VAL R31
      252 CAPTURE                          VAL R29
      253 CAPTURE                          VAL R10
      254 CAPTURE                          VAL R9
      255 CAPTURE                          VAL R7
      256 CAPTURE                          VAL R26
      257 CAPTURE                          VAL R8
      258 CAPTURE                          VAL R5
      259 CAPTURE                          VAL R33
      260 CAPTURE                          VAL R11
      261 CAPTURE                          VAL R6
      262 CAPTURE                          VAL R1
      263 CAPTURE                          VAL R28
      264 CAPTURE                          VAL R13
      265 CAPTURE                          VAL R20
      266 CAPTURE                          VAL R4
      267 CAPTURE                          VAL R30
      268 RETURN                           R34 1
