PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["getJob"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R0
        9 JUMPIFNOT                        R0 ; [+5]
       10 GETIMPORT                        R1 K3 [table.clone]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 1
       14 RETURN                           R1 1
       15 LOADNIL                          R1
       16 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 JUMPIFNOT                        R3 ; [+6]
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R2 R2 K0 ["getJob"]
        6 GETUPVAL                         R3 1
        7 CALL                             R2 1 1
        8 JUMP                             ; [+1]
        9 LOADNIL                          R2
       10 JUMPIFNOT                        R2 ; [+6]
       11 GETIMPORT                        R3 K3 [table.clone]
       13 MOVE                             R4 R2
       14 CALL                             R3 1 1
       15 MOVE                             R1 R3
       16 JUMP                             ; [+1]
       17 LOADNIL                          R1
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R3 0
        8 JUMPIFNOT                        R3 ; [+6]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K0 ["getJob"]
       12 GETUPVAL                         R3 0
       13 CALL                             R2 1 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 JUMPIFNOT                        R2 ; [+6]
       17 GETIMPORT                        R3 K3 [table.clone]
       19 MOVE                             R4 R2
       20 CALL                             R3 1 1
       21 MOVE                             R1 R3
       22 JUMP                             ; [+1]
       23 LOADNIL                          R1
       24 CALL                             R0 1 0
       25 GETUPVAL                         R0 2
       26 GETTABLEKS                       R0 R0 K4 ["subscribe"]
       28 GETUPVAL                         R1 0
       29 NEWCLOSURE                       R2 P0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          UPVAL U2
       33 CALL                             R0 2 -1
       34 RETURN                           R0 -1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["useState"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 2
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K1 ["useEffect"]
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R3
       14 CAPTURE                          UPVAL U0
       15 NEWTABLE                         R6 0 1
       17 MOVE                             R7 R0
       18 SETLIST                          R6 R7 1 [1]
       20 CALL                             R4 2 0
       21 RETURN                           R2 1

PROTO_4:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETIMPORT                        R0 K2 [task.cancel]
        4 GETUPVAL                         R1 1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0
        6 LOADB                            R0 0
        7 GETIMPORT                        R1 K2 [task.delay]
        9 LOADN                            R2 5
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          REF R0
       12 CAPTURE                          UPVAL U1
       13 CALL                             R1 2 1
       14 NEWCLOSURE                       R2 P1
       15 CAPTURE                          REF R0
       16 CAPTURE                          VAL R1
       17 CLOSEUPVALS                      R0
       18 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useEffect"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R2
       11 NEWTABLE                         R5 0 1
       13 MOVE                             R6 R0
       14 SETLIST                          R5 R6 1 [1]
       16 CALL                             R3 2 0
       17 RETURN                           R1 1

PROTO_8:
        0 JUMPIFNOT                        R0 ; [+2]
        1 JUMPIFNOT                        R1 ; [+1]
        2 JUMPIF                           R2 ; [+2]
        3 LOADNIL                          R3
        4 RETURN                           R3 1
        5 DUPTABLE                         R3 K10 [{[1] = "tool_result", ["id"], ["name"], ["content"], ["isError"], ["structuredContent"], ["startTime"] = 0, ["startTimeAfterConfirmation"] = 0}]
        6 SETTABLEKS                       R1 R3 K2 ["id"]
        8 SETTABLEKS                       R2 R3 K3 ["name"]
       10 GETTABLEKS                       R4 R0 K4 ["content"]
       12 SETTABLEKS                       R4 R3 K4 ["content"]
       14 GETTABLEKS                       R4 R0 K5 ["isError"]
       16 SETTABLEKS                       R4 R3 K5 ["isError"]
       18 GETTABLEKS                       R4 R0 K6 ["structuredContent"]
       20 SETTABLEKS                       R4 R3 K6 ["structuredContent"]
       22 RETURN                           R3 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["id"]
        5 JUMPIF                           R2 ; [+1]
        6 LOADNIL                          R2
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R3 R1 K2 ["input"]
       10 JUMPIF                           R3 ; [+1]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R4 R3 K3 ["toolName"]
       14 GETTABLEKS                       R5 R0 K4 ["toolResult"]
       16 JUMPIFNOT                        R5 ; [+3]
       17 GETTABLEKS                       R6 R5 K5 ["structuredContent"]
       19 JUMPIF                           R6 ; [+1]
       20 LOADNIL                          R6
       21 JUMPIFNOT                        R6 ; [+3]
       22 GETTABLEKS                       R7 R6 K6 ["jobId"]
       24 JUMPIF                           R7 ; [+1]
       25 LOADNIL                          R7
       26 GETUPVAL                         R8 1
       27 MOVE                             R9 R7
       28 CALL                             R8 1 1
       29 JUMPIFNOT                        R8 ; [+3]
       30 GETTABLEKS                       R9 R8 K7 ["status"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R9
       34 LOADB                            R10 0
       35 JUMPIFEQKNIL                     R8 ; [+4]
       37 GETTABLEKS                       R11 R8 K8 ["inSession"]
       39 NOT                              R10 R11
       40 LOADB                            R11 0
       41 JUMPIFEQKNIL                     R9 ; [+9]
       43 GETUPVAL                         R12 2
       44 GETTABLEKS                       R12 R12 K9 ["isTerminal"]
       46 MOVE                             R13 R9
       47 CALL                             R12 1 1
       48 NOT                              R11 R12
       49 JUMPIFNOT                        R11 ; [+1]
       50 NOT                              R11 R10
       51 JUMPIFNOT                        R8 ; [+3]
       52 GETTABLEKS                       R12 R8 K4 ["toolResult"]
       54 JUMPIF                           R12 ; [+5]
       55 JUMPIFNOT                        R6 ; [+3]
       56 GETTABLEKS                       R12 R6 K10 ["jobResult"]
       58 JUMPIF                           R12 ; [+1]
       59 LOADNIL                          R12
       60 JUMPIFNOT                        R4 ; [+6]
       61 GETUPVAL                         R13 3
       62 GETTABLEKS                       R13 R13 K11 ["get"]
       64 MOVE                             R14 R4
       65 CALL                             R13 1 1
       66 JUMP                             ; [+1]
       67 LOADNIL                          R13
       68 LOADB                            R14 0
       69 JUMPIFEQKNIL                     R13 ; [+17]
       71 LOADB                            R14 0
       72 GETUPVAL                         R15 3
       73 GETTABLEKS                       R15 R15 K12 ["None"]
       75 JUMPIFEQ                         R13 R15 ; [+11]
       77 LOADB                            R14 0
       78 JUMPIFEQKNIL                     R7 ; [+8]
       80 LOADB                            R14 0
       81 JUMPIFNOTEQKNIL                  R8 ; [+5]
       83 JUMPIFEQKNIL                     R12 ; [+2]
       85 LOADB                            R14 0 +1
       86 LOADB                            R14 1
       87 GETUPVAL                         R15 4
       88 MOVE                             R16 R14
       89 CALL                             R15 1 1
       90 GETUPVAL                         R16 3
       91 GETTABLEKS                       R16 R16 K12 ["None"]
       93 JUMPIFNOTEQ                      R13 R16 ; [+5]
       95 GETUPVAL                         R16 5
       96 GETTABLEKS                       R16 R16 K12 ["None"]
       98 RETURN                           R16 1
       99 JUMPIFNOT                        R2 ; [+14]
      100 JUMPIFNOT                        R4 ; [+13]
      101 DUPTABLE                         R16 K16 [{["type"] = "tool_use", ["id"], ["name"], ["input"]}]
      102 SETTABLEKS                       R2 R16 K1 ["id"]
      104 SETTABLEKS                       R4 R16 K15 ["name"]
      106 GETTABLEKS                       R17 R3 K17 ["arguments"]
      108 JUMPIF                           R17 ; [+2]
      109 NEWTABLE                         R17 0 0
      111 SETTABLEKS                       R17 R16 K2 ["input"]
      113 JUMP                             ; [+1]
      114 LOADNIL                          R16
      115 LOADNIL                          R17
      116 LOADNIL                          R18
      117 JUMPIFNOT                        R1 ; [+30]
      118 JUMPIFNOT                        R12 ; [+29]
      119 MOVE                             R19 R13
      120 JUMPIF                           R19 ; [+3]
      121 GETUPVAL                         R19 6
      122 GETTABLEKS                       R19 R19 K18 ["Type"]
      124 MOVE                             R17 R19
      125 JUMPIFNOT                        R12 ; [+2]
      126 JUMPIFNOT                        R2 ; [+1]
      127 JUMPIF                           R4 ; [+2]
      128 LOADNIL                          R18
      129 JUMP                             ; [+33]
      130 DUPTABLE                         R18 K25 [{["type"] = "tool_result", ["id"], ["name"], ["content"], ["isError"], ["structuredContent"], ["startTime"] = 0, ["startTimeAfterConfirmation"] = 0}]
      131 SETTABLEKS                       R2 R18 K1 ["id"]
      133 SETTABLEKS                       R4 R18 K15 ["name"]
      135 GETTABLEKS                       R19 R12 K20 ["content"]
      137 SETTABLEKS                       R19 R18 K20 ["content"]
      139 GETTABLEKS                       R19 R12 K21 ["isError"]
      141 SETTABLEKS                       R19 R18 K21 ["isError"]
      143 GETTABLEKS                       R19 R12 K5 ["structuredContent"]
      145 SETTABLEKS                       R19 R18 K5 ["structuredContent"]
      147 JUMP                             ; [+15]
      148 JUMPIF                           R11 ; [+2]
      149 JUMPIFNOT                        R14 ; [+9]
      150 JUMPIF                           R15 ; [+8]
      151 MOVE                             R19 R13
      152 JUMPIF                           R19 ; [+3]
      153 GETUPVAL                         R19 6
      154 GETTABLEKS                       R19 R19 K18 ["Type"]
      156 MOVE                             R17 R19
      157 LOADNIL                          R18
      158 JUMP                             ; [+4]
      159 GETUPVAL                         R19 6
      160 GETTABLEKS                       R17 R19 K18 ["Type"]
      162 MOVE                             R18 R5
      163 GETUPVAL                         R19 7
      164 GETTABLEKS                       R19 R19 K11 ["get"]
      166 MOVE                             R20 R17
      167 CALL                             R19 1 1
      168 GETUPVAL                         R20 8
      169 MOVE                             R21 R19
      170 GETUPVAL                         R22 9
      171 GETTABLEKS                       R22 R22 K26 ["join"]
      173 MOVE                             R23 R0
      174 DUPTABLE                         R24 K27 [{"type", "toolUse", "toolResult"}]
      175 SETTABLEKS                       R17 R24 K13 ["type"]
      177 MOVE                             R25 R16
      178 JUMPIF                           R25 ; [+3]
      179 GETUPVAL                         R25 9
      180 GETTABLEKS                       R25 R25 K12 ["None"]
      182 SETTABLEKS                       R25 R24 K0 ["toolUse"]
      184 MOVE                             R25 R18
      185 JUMPIF                           R25 ; [+3]
      186 GETUPVAL                         R25 9
      187 GETTABLEKS                       R25 R25 K12 ["None"]
      189 SETTABLEKS                       R25 R24 K4 ["toolResult"]
      191 CALL                             R22 2 -1
      192 CALL                             R20 -1 -1
      193 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["ContentWidgets"]
       13 GETTABLEKS                       R2 R2 K8 ["ContentWidgetRegistry"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["Dash"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Components"]
       27 GETTABLEKS                       R4 R4 K7 ["ContentWidgets"]
       29 GETTABLEKS                       R4 R4 K12 ["GenericToolContentWidget"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Util"]
       36 GETTABLEKS                       R5 R5 K13 ["Jobs"]
       38 GETTABLEKS                       R5 R5 K14 ["JobStore"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K9 ["Parent"]
       45 GETTABLEKS                       R6 R6 K15 ["ModelContextProtocol"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Parent"]
       52 GETTABLEKS                       R7 R7 K16 ["React"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Util"]
       59 GETTABLEKS                       R8 R8 K7 ["ContentWidgets"]
       61 GETTABLEKS                       R8 R8 K17 ["ToolWidgetMappingRegistry"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K18 ["Types"]
       68 CALL                             R8 1 1
       69 GETTABLEKS                       R9 R6 K19 ["createElement"]
       71 NEWTABLE                         R10 0 0
       73 DUPCLOSURE                       R11 K20 [PROTO_3]
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R6
       76 DUPCLOSURE                       R12 K21 [PROTO_7]
       77 CAPTURE                          VAL R6
       78 DUPCLOSURE                       R13 K22 [PROTO_8]
       79 DUPCLOSURE                       R14 K23 [PROTO_9]
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R2
       90 DUPTABLE                         R15 K27 [{["Type"] = "JobRun", ["ContentWidget"]}]
       91 GETTABLEKS                       R16 R6 K28 ["memo"]
       93 MOVE                             R17 R14
       94 CALL                             R16 1 1
       95 SETTABLEKS                       R16 R15 K26 ["ContentWidget"]
       97 RETURN                           R15 1
