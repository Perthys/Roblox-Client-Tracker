PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeAbsoluteSize"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["setAbsoluteSize"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 2
        5 LOADB                            R3 0
        6 CALL                             R2 1 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 NEWCLOSURE                       R0 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeRenderedGraphRect"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["observeViewportRect"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K2 ["current"]
       13 JUMPIFNOT                        R3 ; [+5]
       14 GETTABLEKS                       R4 R3 K3 ["update"]
       16 MOVE                             R5 R1
       17 MOVE                             R6 R2
       18 CALL                             R4 2 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["setFrame"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+4]
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R1 R0 K1 ["Size"]
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 JUMPIFEQKNIL                     R0 ; [+5]
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 2
       13 JUMPIFEQKNIL                     R0 ; [+3]
       15 GETUPVAL                         R0 2
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nodeRenderInfoDispatcher"]
        3 GETTABLEKS                       R1 R1 K1 ["observeMap"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 LOADN                            R1 0
        8 SETUPVAL                         R1 1
        9 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 1
        4 ADDK                             R0 R0 K0 [1]
        5 SETUPVAL                         R0 1
        6 GETUPVAL                         R0 0
        7 LOADN                            R1 2
        8 JUMPIFLE                         R1 R0 ; [+5]
       10 GETUPVAL                         R0 1
       11 LOADN                            R1 15
       12 JUMPIFNOTLE                      R1 R0 ; [+26]
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K1 ["current"]
       17 JUMPIFEQKNIL                     R0 ; [+4]
       19 GETUPVAL                         R1 3
       20 SETTABLEKS                       R1 R0 K2 ["Size"]
       22 GETUPVAL                         R0 4
       23 JUMPIFNOT                        R0 ; [+1]
       24 RETURN                           R0 0
       25 LOADB                            R0 1
       26 SETUPVAL                         R0 4
       27 GETUPVAL                         R0 5
       28 JUMPIFEQKNIL                     R0 ; [+5]
       30 GETUPVAL                         R0 5
       31 NAMECALL                         R0 R0 K3 ["Disconnect"]
       33 CALL                             R0 1 0
       34 GETUPVAL                         R0 6
       35 JUMPIFEQKNIL                     R0 ; [+3]
       37 GETUPVAL                         R0 6
       38 CALL                             R0 0 0
       39 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+4]
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R1 R0 K1 ["Size"]
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+1]
       10 RETURN                           R0 0
       11 LOADB                            R0 1
       12 SETUPVAL                         R0 2
       13 GETUPVAL                         R0 3
       14 JUMPIFEQKNIL                     R0 ; [+5]
       16 GETUPVAL                         R0 3
       17 NAMECALL                         R0 R0 K2 ["Disconnect"]
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 4
       21 JUMPIFEQKNIL                     R0 ; [+3]
       23 GETUPVAL                         R0 4
       24 CALL                             R0 0 0
       25 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+10]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["isCli"]
        6 CALL                             R0 0 1
        7 JUMPIF                           R0 ; [+5]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["isFTF"]
       11 CALL                             R0 0 1
       12 JUMPIFNOT                        R0 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K2 ["current"]
       17 JUMPIFNOTEQKNIL                  R0 ; [+2]
       19 RETURN                           R0 0
       20 GETTABLEKS                       R1 R0 K3 ["Size"]
       22 GETIMPORT                        R3 K6 [UDim2.fromOffset]
       24 LOADN                            R4 0
       25 LOADN                            R5 1
       26 CALL                             R3 2 1
       27 SUB                              R2 R1 R3
       28 SETTABLEKS                       R2 R0 K3 ["Size"]
       30 NEWCLOSURE                       R2 P0
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R1
       33 LOADN                            R3 0
       34 LOADN                            R4 0
       35 LOADNIL                          R5
       36 LOADNIL                          R6
       37 LOADB                            R7 0
       38 NEWCLOSURE                       R8 P1
       39 CAPTURE                          REF R7
       40 CAPTURE                          REF R5
       41 CAPTURE                          REF R6
       42 GETUPVAL                         R9 3
       43 GETTABLEKS                       R9 R9 K7 ["createEffect"]
       45 NEWCLOSURE                       R10 P2
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          REF R3
       48 CALL                             R9 1 1
       49 MOVE                             R6 R9
       50 GETUPVAL                         R9 5
       51 GETTABLEKS                       R9 R9 K8 ["Heartbeat"]
       53 NEWCLOSURE                       R11 P3
       54 CAPTURE                          REF R3
       55 CAPTURE                          REF R4
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          VAL R1
       58 CAPTURE                          REF R7
       59 CAPTURE                          REF R5
       60 CAPTURE                          REF R6
       61 NAMECALL                         R9 R9 K9 ["Connect"]
       63 CALL                             R9 2 1
       64 MOVE                             R5 R9
       65 NEWCLOSURE                       R9 P4
       66 CAPTURE                          UPVAL U2
       67 CAPTURE                          VAL R1
       68 CAPTURE                          REF R7
       69 CAPTURE                          REF R5
       70 CAPTURE                          REF R6
       71 CLOSEUPVALS                      R3
       72 RETURN                           R9 1

PROTO_13:
        0 DUPTABLE                         R0 K1 [{"layer"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["layer"]
        4 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 3
       15 JUMPIFNOT                        R4 ; [+5]
       16 GETUPVAL                         R3 4
       17 GETTABLEKS                       R3 R3 K2 ["useConsumerHasParameters"]
       19 CALL                             R3 0 1
       20 JUMP                             ; [+1]
       21 LOADNIL                          R3
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K3 ["useRef"]
       25 LOADNIL                          R5
       26 CALL                             R4 1 1
       27 GETUPVAL                         R5 5
       28 CALL                             R5 0 1
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K4 ["useEffect"]
       32 NEWCLOSURE                       R7 P0
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R1
       36 NEWTABLE                         R8 0 2
       38 GETTABLEKS                       R9 R1 K5 ["setAbsoluteSize"]
       40 GETTABLEKS                       R10 R5 K6 ["observeAbsoluteSize"]
       42 SETLIST                          R8 R9 2 [1]
       44 CALL                             R6 2 0
       45 GETTABLEKS                       R6 R0 K7 ["onSaveViewState"]
       47 GETTABLEKS                       R7 R1 K8 ["observeViewportPosition"]
       49 GETTABLEKS                       R8 R1 K9 ["observeZoomRatio"]
       51 GETUPVAL                         R9 0
       52 GETTABLEKS                       R9 R9 K4 ["useEffect"]
       54 NEWCLOSURE                       R10 P1
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R8
       58 NEWTABLE                         R11 0 3
       60 MOVE                             R12 R6
       61 MOVE                             R13 R7
       62 MOVE                             R14 R8
       63 SETLIST                          R11 R12 3 [1]
       65 CALL                             R9 2 0
       66 GETUPVAL                         R9 0
       67 GETTABLEKS                       R9 R9 K10 ["useLayoutEffect"]
       69 NEWCLOSURE                       R10 P2
       70 CAPTURE                          UPVAL U6
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R4
       73 NEWTABLE                         R11 0 2
       75 GETTABLEKS                       R12 R1 K11 ["observeViewportRect"]
       77 GETTABLEKS                       R13 R1 K12 ["observeRenderedGraphRect"]
       79 SETLIST                          R11 R12 2 [1]
       81 CALL                             R9 2 0
       82 GETUPVAL                         R10 7
       83 JUMPIFNOT                        R10 ; [+2]
       84 LOADNIL                          R9
       85 JUMP                             ; [+6]
       86 GETUPVAL                         R9 8
       87 GETTABLEKS                       R9 R9 K13 ["useSignalState"]
       89 GETTABLEKS                       R10 R1 K11 ["observeViewportRect"]
       91 CALL                             R9 1 1
       92 GETUPVAL                         R11 7
       93 JUMPIFNOT                        R11 ; [+2]
       94 LOADNIL                          R10
       95 JUMP                             ; [+6]
       96 GETUPVAL                         R10 8
       97 GETTABLEKS                       R10 R10 K13 ["useSignalState"]
       99 GETTABLEKS                       R11 R1 K12 ["observeRenderedGraphRect"]
      101 CALL                             R10 1 1
      102 GETUPVAL                         R11 0
      103 GETTABLEKS                       R11 R11 K3 ["useRef"]
      105 LOADNIL                          R12
      106 CALL                             R11 1 1
      107 GETUPVAL                         R12 0
      108 GETTABLEKS                       R12 R12 K14 ["useCallback"]
      110 NEWCLOSURE                       R13 P3
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R5
      113 NEWTABLE                         R14 0 1
      115 GETTABLEKS                       R15 R5 K15 ["setFrame"]
      117 SETLIST                          R14 R15 1 [1]
      119 CALL                             R12 2 1
      120 GETUPVAL                         R13 0
      121 GETTABLEKS                       R13 R13 K4 ["useEffect"]
      123 NEWCLOSURE                       R14 P4
      124 CAPTURE                          UPVAL U9
      125 CAPTURE                          UPVAL U10
      126 CAPTURE                          VAL R11
      127 CAPTURE                          UPVAL U6
      128 CAPTURE                          VAL R2
      129 CAPTURE                          UPVAL U11
      130 NEWTABLE                         R15 0 1
      132 GETTABLEKS                       R16 R2 K16 ["nodeRenderInfoDispatcher"]
      134 GETTABLEKS                       R16 R16 K17 ["observeMap"]
      136 SETLIST                          R15 R16 1 [1]
      138 CALL                             R13 2 0
      139 GETUPVAL                         R13 0
      140 GETTABLEKS                       R13 R13 K18 ["useState"]
      142 LOADNIL                          R14
      143 CALL                             R13 1 2
      144 GETUPVAL                         R15 0
      145 GETTABLEKS                       R15 R15 K19 ["useMemo"]
      147 NEWCLOSURE                       R16 P5
      148 CAPTURE                          VAL R13
      149 NEWTABLE                         R17 0 1
      151 MOVE                             R18 R13
      152 SETLIST                          R17 R18 1 [1]
      154 CALL                             R15 2 1
      155 GETUPVAL                         R16 12
      156 GETTABLEKS                       R16 R16 K20 ["Hooks"]
      158 GETTABLEKS                       R16 R16 K21 ["useTokens"]
      160 CALL                             R16 0 1
      161 GETUPVAL                         R17 13
      162 GETTABLEKS                       R17 R17 K22 ["createNextOrder"]
      164 CALL                             R17 0 1
      165 NEWTABLE                         R18 16 0
      167 GETUPVAL                         R19 0
      168 GETTABLEKS                       R19 R19 K23 ["createElement"]
      170 GETUPVAL                         R20 14
      171 DUPTABLE                         R21 K25 [{"ZIndex"}]
      172 MOVE                             R22 R17
      173 CALL                             R22 0 1
      174 SETTABLEKS                       R22 R21 K24 ["ZIndex"]
      176 CALL                             R19 2 1
      177 SETTABLEKS                       R19 R18 K26 ["GraphingCanvasBackground"]
      179 GETUPVAL                         R19 0
      180 GETTABLEKS                       R19 R19 K23 ["createElement"]
      182 GETUPVAL                         R20 15
      183 DUPTABLE                         R21 K25 [{"ZIndex"}]
      184 MOVE                             R22 R17
      185 CALL                             R22 0 1
      186 SETTABLEKS                       R22 R21 K24 ["ZIndex"]
      188 CALL                             R19 2 1
      189 SETTABLEKS                       R19 R18 K27 ["GraphingCanvasBackgroundDragger"]
      191 GETUPVAL                         R19 0
      192 GETTABLEKS                       R19 R19 K23 ["createElement"]
      194 GETUPVAL                         R20 16
      195 DUPTABLE                         R21 K25 [{"ZIndex"}]
      196 MOVE                             R22 R17
      197 CALL                             R22 0 1
      198 SETTABLEKS                       R22 R21 K24 ["ZIndex"]
      200 CALL                             R19 2 1
      201 SETTABLEKS                       R19 R18 K28 ["NodeSelectionBox"]
      203 GETTABLEKS                       R19 R0 K29 ["childrenBehindNodes"]
      205 JUMPIFNOT                        R19 ; [+21]
      206 GETUPVAL                         R19 0
      207 GETTABLEKS                       R19 R19 K23 ["createElement"]
      209 LOADK                            R20 K30 ["Frame"]
      210 DUPTABLE                         R21 K34 [{["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"]}]
      211 GETIMPORT                        R22 K37 [UDim2.fromScale]
      213 LOADN                            R23 1
      214 LOADN                            R24 1
      215 CALL                             R22 2 1
      216 SETTABLEKS                       R22 R21 K31 ["Size"]
      218 MOVE                             R22 R17
      219 CALL                             R22 0 1
      220 SETTABLEKS                       R22 R21 K24 ["ZIndex"]
      222 GETTABLEKS                       R22 R0 K29 ["childrenBehindNodes"]
      224 CALL                             R19 3 1
      225 SETTABLEKS                       R19 R18 K38 ["ChildrenBehindNodes"]
      227 GETUPVAL                         R19 0
      228 GETTABLEKS                       R19 R19 K23 ["createElement"]
      230 GETUPVAL                         R20 17
      231 DUPTABLE                         R21 K25 [{"ZIndex"}]
      232 MOVE                             R22 R17
      233 CALL                             R22 0 1
      234 SETTABLEKS                       R22 R21 K24 ["ZIndex"]
      236 CALL                             R19 2 1
      237 SETTABLEKS                       R19 R18 K39 ["CompositorNodes"]
      239 GETUPVAL                         R19 0
      240 GETTABLEKS                       R19 R19 K23 ["createElement"]
      242 GETUPVAL                         R20 18
      243 CALL                             R19 1 1
      244 SETTABLEKS                       R19 R18 K40 ["GraphingCanvasContextMenuAnchor"]
      246 GETUPVAL                         R19 0
      247 GETTABLEKS                       R19 R19 K23 ["createElement"]
      249 GETUPVAL                         R20 19
      250 CALL                             R19 1 1
      251 SETTABLEKS                       R19 R18 K41 ["NodeRightClickMenuAnchor"]
      253 GETUPVAL                         R19 0
      254 GETTABLEKS                       R19 R19 K23 ["createElement"]
      256 GETUPVAL                         R20 20
      257 DUPTABLE                         R21 K25 [{"ZIndex"}]
      258 MOVE                             R22 R17
      259 CALL                             R22 0 1
      260 SETTABLEKS                       R22 R21 K24 ["ZIndex"]
      262 CALL                             R19 2 1
      263 SETTABLEKS                       R19 R18 K42 ["GraphingCanvasKeyboardInput"]
      265 GETUPVAL                         R19 0
      266 GETTABLEKS                       R19 R19 K23 ["createElement"]
      268 GETUPVAL                         R20 21
      269 DUPTABLE                         R21 K25 [{"ZIndex"}]
      270 MOVE                             R22 R17
      271 CALL                             R22 0 1
      272 SETTABLEKS                       R22 R21 K24 ["ZIndex"]
      274 CALL                             R19 2 1
      275 SETTABLEKS                       R19 R18 K43 ["GraphingCanvasScroller"]
      277 GETUPVAL                         R19 22
      278 JUMPIFNOT                        R19 ; [+14]
      279 GETUPVAL                         R19 0
      280 GETTABLEKS                       R19 R19 K23 ["createElement"]
      282 GETUPVAL                         R20 23
      283 GETTABLEKS                       R20 R20 K44 ["InputDetector"]
      285 DUPTABLE                         R21 K25 [{"ZIndex"}]
      286 MOVE                             R22 R17
      287 CALL                             R22 0 1
      288 SETTABLEKS                       R22 R21 K24 ["ZIndex"]
      290 CALL                             R19 2 1
      291 SETTABLEKS                       R19 R18 K45 ["CompositorConnectionInputDetector"]
      293 GETUPVAL                         R19 24
      294 CALL                             R19 0 1
      295 JUMPIFNOT                        R19 ; [+16]
      296 GETUPVAL                         R19 0
      297 GETTABLEKS                       R19 R19 K23 ["createElement"]
      299 GETUPVAL                         R20 12
      300 GETTABLEKS                       R20 R20 K46 ["View"]
      302 DUPTABLE                         R21 K50 [{["tag"] = "size-full-full", ["ZIndex"], ["ref"]}]
      303 MOVE                             R22 R17
      304 CALL                             R22 0 1
      305 SETTABLEKS                       R22 R21 K24 ["ZIndex"]
      307 SETTABLEKS                       R14 R21 K49 ["ref"]
      309 CALL                             R19 2 1
      310 SETTABLEKS                       R19 R18 K51 ["CanvasOverlayLayer"]
      312 GETUPVAL                         R19 0
      313 GETTABLEKS                       R19 R19 K23 ["createElement"]
      315 GETUPVAL                         R20 12
      316 GETTABLEKS                       R20 R20 K46 ["View"]
      318 DUPTABLE                         R21 K52 [{["tag"] = "size-full-full", ["ref"]}]
      319 SETTABLEKS                       R12 R21 K49 ["ref"]
      321 DUPTABLE                         R22 K54 [{"Contexts"}]
      322 GETUPVAL                         R23 0
      323 GETTABLEKS                       R23 R23 K23 ["createElement"]
      325 GETUPVAL                         R24 13
      326 GETTABLEKS                       R24 R24 K55 ["ContextStack"]
      328 DUPTABLE                         R25 K57 [{"providers"}]
      329 NEWTABLE                         R26 0 4
      331 GETUPVAL                         R27 0
      332 GETTABLEKS                       R27 R27 K23 ["createElement"]
      334 GETUPVAL                         R28 25
      335 GETTABLEKS                       R28 R28 K1 ["Context"]
      337 GETTABLEKS                       R28 R28 K58 ["Provider"]
      339 DUPTABLE                         R29 K60 [{"value"}]
      340 SETTABLEKS                       R15 R29 K59 ["value"]
      342 CALL                             R27 2 1
      343 GETUPVAL                         R28 0
      344 GETTABLEKS                       R28 R28 K23 ["createElement"]
      346 GETUPVAL                         R29 26
      347 GETTABLEKS                       R29 R29 K58 ["Provider"]
      349 CALL                             R28 1 1
      350 GETUPVAL                         R29 0
      351 GETTABLEKS                       R29 R29 K23 ["createElement"]
      353 GETUPVAL                         R30 27
      354 GETTABLEKS                       R30 R30 K58 ["Provider"]
      356 CALL                             R29 1 1
      357 GETUPVAL                         R31 22
      358 JUMPIFNOT                        R31 ; [+8]
      359 GETUPVAL                         R30 0
      360 GETTABLEKS                       R30 R30 K23 ["createElement"]
      362 GETUPVAL                         R31 0
      363 GETTABLEKS                       R31 R31 K61 ["Fragment"]
      365 CALL                             R30 1 1
      366 JUMP                             ; [+7]
      367 GETUPVAL                         R30 0
      368 GETTABLEKS                       R30 R30 K23 ["createElement"]
      370 GETUPVAL                         R31 23
      371 GETTABLEKS                       R31 R31 K58 ["Provider"]
      373 CALL                             R30 1 1
      374 SETLIST                          R26 R27 4 [1]
      376 SETTABLEKS                       R26 R25 K56 ["providers"]
      378 DUPTABLE                         R26 K65 [{"Canvas", "ParameterPane", "Children"}]
      379 GETUPVAL                         R27 0
      380 GETTABLEKS                       R27 R27 K23 ["createElement"]
      382 GETUPVAL                         R28 28
      383 GETTABLEKS                       R28 R28 K62 ["Canvas"]
      385 DUPTABLE                         R29 K77 [{"ref", "GraphRect", "ViewportRect", "Size", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundColor3", "CanvasBackgroundTransparency", "ViewportBackgroundColor3", "ViewportBackgroundTransparency", "childrenUnclipped"}]
      386 SETTABLEKS                       R4 R29 K49 ["ref"]
      388 GETUPVAL                         R31 7
      389 JUMPIFNOT                        R31 ; [+2]
      390 LOADNIL                          R30
      391 JUMP                             ; [+1]
      392 MOVE                             R30 R10
      393 SETTABLEKS                       R30 R29 K66 ["GraphRect"]
      395 GETUPVAL                         R31 7
      396 JUMPIFNOT                        R31 ; [+2]
      397 LOADNIL                          R30
      398 JUMP                             ; [+1]
      399 MOVE                             R30 R9
      400 SETTABLEKS                       R30 R29 K67 ["ViewportRect"]
      402 GETIMPORT                        R30 K37 [UDim2.fromScale]
      404 LOADN                            R31 1
      405 LOADN                            R32 1
      406 CALL                             R30 2 1
      407 SETTABLEKS                       R30 R29 K31 ["Size"]
      409 GETIMPORT                        R30 K80 [UDim.new]
      411 LOADN                            R31 0
      412 LOADN                            R32 0
      413 CALL                             R30 2 1
      414 SETTABLEKS                       R30 R29 K68 ["ViewportPaddingLeft"]
      416 GETIMPORT                        R30 K80 [UDim.new]
      418 LOADN                            R31 0
      419 LOADN                            R32 0
      420 CALL                             R30 2 1
      421 SETTABLEKS                       R30 R29 K69 ["ViewportPaddingRight"]
      423 GETIMPORT                        R30 K80 [UDim.new]
      425 LOADN                            R31 0
      426 LOADN                            R32 0
      427 CALL                             R30 2 1
      428 SETTABLEKS                       R30 R29 K70 ["ViewportPaddingBottom"]
      430 GETIMPORT                        R30 K80 [UDim.new]
      432 LOADN                            R31 0
      433 LOADN                            R32 0
      434 CALL                             R30 2 1
      435 SETTABLEKS                       R30 R29 K71 ["ViewportPaddingTop"]
      437 GETTABLEKS                       R30 R16 K81 ["Color"]
      439 GETTABLEKS                       R30 R30 K82 ["Surface"]
      441 GETTABLEKS                       R30 R30 K83 ["Surface_100"]
      443 GETTABLEKS                       R30 R30 K84 ["Color3"]
      445 SETTABLEKS                       R30 R29 K72 ["CanvasBackgroundColor3"]
      447 GETTABLEKS                       R30 R16 K81 ["Color"]
      449 GETTABLEKS                       R30 R30 K82 ["Surface"]
      451 GETTABLEKS                       R30 R30 K83 ["Surface_100"]
      453 GETTABLEKS                       R30 R30 K85 ["Transparency"]
      455 SETTABLEKS                       R30 R29 K73 ["CanvasBackgroundTransparency"]
      457 GETTABLEKS                       R30 R16 K81 ["Color"]
      459 GETTABLEKS                       R30 R30 K82 ["Surface"]
      461 GETTABLEKS                       R30 R30 K83 ["Surface_100"]
      463 GETTABLEKS                       R30 R30 K84 ["Color3"]
      465 SETTABLEKS                       R30 R29 K74 ["ViewportBackgroundColor3"]
      467 GETTABLEKS                       R30 R16 K81 ["Color"]
      469 GETTABLEKS                       R30 R30 K82 ["Surface"]
      471 GETTABLEKS                       R30 R30 K83 ["Surface_100"]
      473 GETTABLEKS                       R30 R30 K85 ["Transparency"]
      475 SETTABLEKS                       R30 R29 K75 ["ViewportBackgroundTransparency"]
      477 DUPTABLE                         R30 K87 [{"ConnectionContexts"}]
      478 GETUPVAL                         R31 0
      479 GETTABLEKS                       R31 R31 K23 ["createElement"]
      481 GETUPVAL                         R32 13
      482 GETTABLEKS                       R32 R32 K55 ["ContextStack"]
      484 DUPTABLE                         R33 K57 [{"providers"}]
      485 NEWTABLE                         R34 0 4
      487 GETUPVAL                         R35 0
      488 GETTABLEKS                       R35 R35 K23 ["createElement"]
      490 GETUPVAL                         R36 23
      491 GETTABLEKS                       R36 R36 K58 ["Provider"]
      493 CALL                             R35 1 1
      494 GETUPVAL                         R36 0
      495 GETTABLEKS                       R36 R36 K23 ["createElement"]
      497 GETUPVAL                         R37 29
      498 GETTABLEKS                       R37 R37 K58 ["Provider"]
      500 CALL                             R36 1 1
      501 GETUPVAL                         R37 0
      502 GETTABLEKS                       R37 R37 K23 ["createElement"]
      504 GETUPVAL                         R38 30
      505 GETTABLEKS                       R38 R38 K58 ["Provider"]
      507 CALL                             R37 1 1
      508 GETUPVAL                         R38 0
      509 GETTABLEKS                       R38 R38 K23 ["createElement"]
      511 GETUPVAL                         R39 31
      512 GETTABLEKS                       R39 R39 K58 ["Provider"]
      514 CALL                             R38 1 -1
      515 SETLIST                          R34 R35 -1 [1]
      517 SETTABLEKS                       R34 R33 K56 ["providers"]
      519 MOVE                             R34 R18
      520 CALL                             R31 3 1
      521 SETTABLEKS                       R31 R30 K86 ["ConnectionContexts"]
      523 SETTABLEKS                       R30 R29 K76 ["childrenUnclipped"]
      525 CALL                             R27 2 1
      526 SETTABLEKS                       R27 R26 K62 ["Canvas"]
      528 GETUPVAL                         R28 3
      529 JUMPIFNOT                        R28 ; [+2]
      530 MOVE                             R27 R3
      531 JUMPIFNOT                        R27 ; [+12]
      532 GETUPVAL                         R27 0
      533 GETTABLEKS                       R27 R27 K23 ["createElement"]
      535 GETUPVAL                         R28 32
      536 DUPTABLE                         R29 K89 [{"canvasFrameRef", "ZIndex"}]
      537 SETTABLEKS                       R11 R29 K88 ["canvasFrameRef"]
      539 MOVE                             R30 R17
      540 CALL                             R30 0 1
      541 SETTABLEKS                       R30 R29 K24 ["ZIndex"]
      543 CALL                             R27 2 1
      544 SETTABLEKS                       R27 R26 K63 ["ParameterPane"]
      546 GETUPVAL                         R27 0
      547 GETTABLEKS                       R27 R27 K23 ["createElement"]
      549 GETUPVAL                         R28 0
      550 GETTABLEKS                       R28 R28 K61 ["Fragment"]
      552 NEWTABLE                         R29 0 0
      554 GETTABLEKS                       R30 R0 K90 ["children"]
      556 CALL                             R27 3 1
      557 SETTABLEKS                       R27 R26 K64 ["Children"]
      559 CALL                             R23 3 1
      560 SETTABLEKS                       R23 R22 K53 ["Contexts"]
      562 CALL                             R19 3 -1
      563 RETURN                           R19 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K6 [{"initialGraphRect", "initialViewportPosition", "initialZoomRatio", "renderStepped"}]
        7 GETTABLEKS                       R4 R0 K2 ["initialGraphRect"]
        9 SETTABLEKS                       R4 R3 K2 ["initialGraphRect"]
       11 GETTABLEKS                       R4 R0 K3 ["initialViewportPosition"]
       13 SETTABLEKS                       R4 R3 K3 ["initialViewportPosition"]
       15 GETTABLEKS                       R4 R0 K4 ["initialZoomRatio"]
       17 SETTABLEKS                       R4 R3 K4 ["initialZoomRatio"]
       19 GETTABLEKS                       R4 R0 K5 ["renderStepped"]
       21 SETTABLEKS                       R4 R3 K5 ["renderStepped"]
       23 DUPTABLE                         R4 K8 [{"Inner"}]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K0 ["createElement"]
       27 GETUPVAL                         R6 2
       28 DUPTABLE                         R7 K11 [{"childrenBehindNodes", "onSaveViewState"}]
       29 GETTABLEKS                       R8 R0 K9 ["childrenBehindNodes"]
       31 SETTABLEKS                       R8 R7 K9 ["childrenBehindNodes"]
       33 GETTABLEKS                       R8 R0 K10 ["onSaveViewState"]
       35 SETTABLEKS                       R8 R7 K10 ["onSaveViewState"]
       37 GETTABLEKS                       R8 R0 K12 ["children"]
       39 CALL                             R5 3 1
       40 SETTABLEKS                       R5 R4 K7 ["Inner"]
       42 CALL                             R1 3 -1
       43 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["NodeGraphing"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Components"]
       17 GETTABLEKS                       R3 R3 K11 ["CanvasOverlayContext"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Components"]
       24 GETTABLEKS                       R4 R4 K12 ["CompositorConnectionContext"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Components"]
       31 GETTABLEKS                       R5 R5 K13 ["CompositorCurveDragContext"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K10 ["Components"]
       38 GETTABLEKS                       R6 R6 K14 ["CompositorNodes"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R1 K15 ["Flags"]
       45 GETTABLEKS                       R7 R7 K16 ["FFlagAnimGraphUI_AllowNoParameters"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R1 K15 ["Flags"]
       52 GETTABLEKS                       R8 R8 K17 ["FFlagAnimGraphUI_ClickTogglePins"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R1 K15 ["Flags"]
       59 GETTABLEKS                       R9 R9 K18 ["FFlagAnimGraphUI_PerfFixes_7123"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETTABLEKS                       R10 R1 K19 ["Parent"]
       66 GETTABLEKS                       R10 R10 K20 ["Foundation"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K9 [require]
       71 GETTABLEKS                       R11 R1 K10 ["Components"]
       73 GETTABLEKS                       R11 R11 K21 ["GraphContext"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K9 [require]
       78 GETTABLEKS                       R12 R1 K19 ["Parent"]
       80 GETTABLEKS                       R12 R12 K22 ["Graphing"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K9 [require]
       85 GETIMPORT                        R13 K5 [script]
       87 GETTABLEKS                       R13 R13 K23 ["GraphingCanvasBackground"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K9 [require]
       92 GETTABLEKS                       R14 R1 K10 ["Components"]
       94 GETTABLEKS                       R14 R14 K24 ["GraphingCanvasBackgroundDragContext"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K9 [require]
       99 GETTABLEKS                       R15 R1 K10 ["Components"]
      101 GETTABLEKS                       R15 R15 K25 ["GraphingCanvasBackgroundDragger"]
      103 CALL                             R14 1 1
      104 GETIMPORT                        R15 K9 [require]
      106 GETIMPORT                        R16 K5 [script]
      108 GETTABLEKS                       R16 R16 K26 ["GraphingCanvasContextMenuAnchor"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R16 K9 [require]
      113 GETIMPORT                        R17 K5 [script]
      115 GETTABLEKS                       R17 R17 K27 ["GraphingCanvasKeyboardInput"]
      117 CALL                             R16 1 1
      118 GETIMPORT                        R17 K9 [require]
      120 GETIMPORT                        R18 K5 [script]
      122 GETTABLEKS                       R18 R18 K28 ["GraphingCanvasScroller"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K9 [require]
      127 GETTABLEKS                       R19 R1 K10 ["Components"]
      129 GETTABLEKS                       R19 R19 K29 ["InsertNodeContext"]
      131 CALL                             R18 1 1
      132 GETIMPORT                        R19 K9 [require]
      134 GETTABLEKS                       R20 R1 K10 ["Components"]
      136 GETTABLEKS                       R20 R20 K30 ["ModifierKeysContext"]
      138 CALL                             R19 1 1
      139 GETIMPORT                        R20 K9 [require]
      141 GETIMPORT                        R21 K5 [script]
      143 GETTABLEKS                       R21 R21 K31 ["NodeRightClickMenuAnchor"]
      145 CALL                             R20 1 1
      146 GETIMPORT                        R21 K9 [require]
      148 GETTABLEKS                       R22 R1 K10 ["Components"]
      150 GETTABLEKS                       R22 R22 K32 ["NodeSelectionBox"]
      152 CALL                             R21 1 1
      153 GETIMPORT                        R22 K9 [require]
      155 GETTABLEKS                       R23 R1 K10 ["Components"]
      157 GETTABLEKS                       R23 R23 K33 ["NodeSelectionBoxDragContext"]
      159 CALL                             R22 1 1
      160 GETIMPORT                        R23 K9 [require]
      162 GETTABLEKS                       R24 R1 K10 ["Components"]
      164 GETTABLEKS                       R24 R24 K34 ["ParameterContext"]
      166 CALL                             R23 1 1
      167 GETIMPORT                        R24 K9 [require]
      169 GETTABLEKS                       R25 R1 K10 ["Components"]
      171 GETTABLEKS                       R25 R25 K35 ["ParameterPane"]
      173 CALL                             R24 1 1
      174 GETIMPORT                        R25 K9 [require]
      176 GETTABLEKS                       R26 R1 K19 ["Parent"]
      178 GETTABLEKS                       R26 R26 K36 ["React"]
      180 CALL                             R25 1 1
      181 GETIMPORT                        R26 K9 [require]
      183 GETTABLEKS                       R27 R1 K19 ["Parent"]
      185 GETTABLEKS                       R27 R27 K37 ["ReactUtils"]
      187 CALL                             R26 1 1
      188 GETIMPORT                        R27 K9 [require]
      190 GETTABLEKS                       R28 R1 K19 ["Parent"]
      192 GETTABLEKS                       R28 R28 K38 ["Signals"]
      194 CALL                             R27 1 1
      195 GETIMPORT                        R28 K9 [require]
      197 GETTABLEKS                       R29 R1 K19 ["Parent"]
      199 GETTABLEKS                       R29 R29 K39 ["SignalsReact"]
      201 CALL                             R28 1 1
      202 GETIMPORT                        R29 K9 [require]
      204 GETTABLEKS                       R30 R1 K19 ["Parent"]
      206 GETTABLEKS                       R30 R30 K40 ["TestLoader"]
      208 CALL                             R29 1 1
      209 GETIMPORT                        R30 K9 [require]
      211 GETTABLEKS                       R31 R1 K10 ["Components"]
      213 GETTABLEKS                       R31 R31 K41 ["ViewportRectContext"]
      215 CALL                             R30 1 1
      216 GETIMPORT                        R31 K9 [require]
      218 GETTABLEKS                       R32 R1 K42 ["Hooks"]
      220 GETTABLEKS                       R32 R32 K43 ["useAbsoluteSize"]
      222 CALL                             R31 1 1
      223 GETIMPORT                        R32 K9 [require]
      225 GETTABLEKS                       R33 R1 K15 ["Flags"]
      227 GETTABLEKS                       R33 R33 K44 ["getFFlagAnimGraphUISpotlightClipping"]
      229 CALL                             R32 1 1
      230 GETIMPORT                        R33 K9 [require]
      232 GETTABLEKS                       R34 R1 K15 ["Flags"]
      234 GETTABLEKS                       R34 R34 K45 ["getFFlagAnimGraphUI_FixCanvasRepaintOnRemount"]
      236 CALL                             R33 1 1
      237 DUPCLOSURE                       R34 K46 [PROTO_14]
      238 CAPTURE                          VAL R25
      239 CAPTURE                          VAL R30
      240 CAPTURE                          VAL R10
      241 CAPTURE                          VAL R6
      242 CAPTURE                          VAL R23
      243 CAPTURE                          VAL R31
      244 CAPTURE                          VAL R27
      245 CAPTURE                          VAL R8
      246 CAPTURE                          VAL R28
      247 CAPTURE                          VAL R33
      248 CAPTURE                          VAL R29
      249 CAPTURE                          VAL R0
      250 CAPTURE                          VAL R9
      251 CAPTURE                          VAL R26
      252 CAPTURE                          VAL R12
      253 CAPTURE                          VAL R14
      254 CAPTURE                          VAL R21
      255 CAPTURE                          VAL R5
      256 CAPTURE                          VAL R15
      257 CAPTURE                          VAL R20
      258 CAPTURE                          VAL R16
      259 CAPTURE                          VAL R17
      260 CAPTURE                          VAL R7
      261 CAPTURE                          VAL R3
      262 CAPTURE                          VAL R32
      263 CAPTURE                          VAL R2
      264 CAPTURE                          VAL R19
      265 CAPTURE                          VAL R18
      266 CAPTURE                          VAL R11
      267 CAPTURE                          VAL R4
      268 CAPTURE                          VAL R22
      269 CAPTURE                          VAL R13
      270 CAPTURE                          VAL R24
      271 DUPCLOSURE                       R35 K47 [PROTO_15]
      272 CAPTURE                          VAL R25
      273 CAPTURE                          VAL R30
      274 CAPTURE                          VAL R34
      275 RETURN                           R35 1
