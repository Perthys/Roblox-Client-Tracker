PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setVersionMismatch"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 JUMPIFNOT                        R1 ; [+9]
        6 GETIMPORT                        R2 K1 [warn]
        8 LOADK                            R3 K2 ["Assistant plugin version changed from %* to %*. This may cause instability when using Assistant or the MCP server. Please restart Roblox Studio to fix."]
        9 MOVE                             R5 R0
       10 GETUPVAL                         R6 0
       11 NAMECALL                         R3 R3 K3 ["format"]
       13 CALL                             R3 3 1
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 1
       16 LOADK                            R4 K4 ["AssistantVersionMismatch"]
       17 MOVE                             R5 R1
       18 NAMECALL                         R2 R2 K5 ["SetItem"]
       20 CALL                             R2 3 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsGuest"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+27]
        5 DUPCLOSURE                       R0 K1 [PROTO_0]
        6 CAPTURE                          UPVAL U1
        7 GETUPVAL                         R1 2
        8 LOADK                            R3 K2 ["AssistantVersionMismatch"]
        9 MOVE                             R4 R0
       10 NAMECALL                         R1 R1 K3 ["OnSetItem"]
       12 CALL                             R1 3 0
       13 GETUPVAL                         R1 2
       14 LOADK                            R3 K2 ["AssistantVersionMismatch"]
       15 LOADB                            R4 0
       16 NAMECALL                         R1 R1 K4 ["GetItem"]
       18 CALL                             R1 3 1
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K5 ["setVersionMismatch"]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 GETUPVAL                         R1 2
       25 LOADK                            R3 K6 ["AssistantVersion"]
       26 GETUPVAL                         R4 3
       27 NAMECALL                         R1 R1 K7 ["SetItem"]
       29 CALL                             R1 3 0
       30 LOADNIL                          R1
       31 RETURN                           R1 1
       32 NEWCLOSURE                       R0 P1
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U2
       35 GETUPVAL                         R1 2
       36 LOADK                            R3 K6 ["AssistantVersion"]
       37 MOVE                             R4 R0
       38 NAMECALL                         R1 R1 K3 ["OnSetItem"]
       40 CALL                             R1 3 0
       41 GETUPVAL                         R1 2
       42 LOADK                            R3 K6 ["AssistantVersion"]
       43 LOADNIL                          R4
       44 NAMECALL                         R1 R1 K4 ["GetItem"]
       46 CALL                             R1 3 1
       47 GETUPVAL                         R3 3
       48 JUMPIFNOTEQ                      R1 R3 ; [+2]
       50 LOADB                            R2 0 +1
       51 LOADB                            R2 1
       52 JUMPIFNOT                        R2 ; [+9]
       53 GETIMPORT                        R3 K9 [warn]
       55 LOADK                            R4 K10 ["Assistant plugin version changed from %* to %*. This may cause instability when using Assistant or the MCP server. Please restart Roblox Studio to fix."]
       56 MOVE                             R6 R1
       57 GETUPVAL                         R7 3
       58 NAMECALL                         R4 R4 K11 ["format"]
       60 CALL                             R4 3 1
       61 CALL                             R3 1 0
       62 GETUPVAL                         R3 2
       63 LOADK                            R5 K2 ["AssistantVersionMismatch"]
       64 MOVE                             R6 R2
       65 NAMECALL                         R3 R3 K7 ["SetItem"]
       67 CALL                             R3 3 0
       68 LOADNIL                          R1
       69 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R2
        7 CALL                             R3 1 2
        8 JUMPIF                           R3 ; [+8]
        9 GETIMPORT                        R5 K3 [warn]
       11 LOADK                            R6 K4 ["Failed to track Assistant plugin version mismatch: %*"]
       12 MOVE                             R8 R4
       13 NAMECALL                         R6 R6 K5 ["format"]
       15 CALL                             R6 2 1
       16 CALL                             R5 1 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R4 K1 ["%*Mode"]
        3 MOVE                             R6 R0
        4 NAMECALL                         R4 R4 K2 ["format"]
        6 CALL                             R4 2 1
        7 NAMECALL                         R1 R1 K3 ["getText"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+21]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["Types"]
        6 GETTABLEKS                       R1 R1 K1 ["Edit"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+14]
       10 GETUPVAL                         R0 3
       11 GETUPVAL                         R2 4
       12 GETTABLEKS                       R2 R2 K2 ["EditDataModelAvailabilityChangedEventKey"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K0 ["Types"]
       17 GETTABLEKS                       R3 R3 K3 ["Standalone"]
       19 LOADB                            R4 0
       20 NAMECALL                         R0 R0 K4 ["FireGuest"]
       22 CALL                             R0 4 0
       23 GETUPVAL                         R0 5
       24 GETTABLEKS                       R0 R0 K5 ["Destroy"]
       26 CALL                             R0 0 0
       27 GETUPVAL                         R0 6
       28 GETTABLEKS                       R0 R0 K6 ["destroy"]
       30 CALL                             R0 0 0
       31 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["printToStudioLogAsync"]
        3 LOADK                            R1 K1 ["AssistantVersion: %*"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["getVersion"]
        7 CALL                             R3 0 1
        8 NAMECALL                         R1 R1 K3 ["format"]
       10 CALL                             R1 2 1
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKS                       R2 K0 ["<dev>"] ; [+6]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["setVersionOverride"]
        6 GETUPVAL                         R3 0
        7 CALL                             R2 1 0
        8 NAMECALL                         R2 R1 K2 ["IsGuest"]
       10 CALL                             R2 1 1
       11 JUMPIFNOT                        R2 ; [+10]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["create"]
       15 GETUPVAL                         R3 3
       16 CALL                             R2 1 1
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R3 R3 K4 ["set"]
       20 MOVE                             R4 R2
       21 CALL                             R3 1 0
       22 GETUPVAL                         R2 5
       23 MOVE                             R3 R0
       24 MOVE                             R4 R1
       25 CALL                             R2 2 1
       26 GETUPVAL                         R3 6
       27 GETTABLEKS                       R3 R3 K5 ["FFlagAssistantVersionMismatchWarning"]
       29 JUMPIFNOT                        R3 ; [+21]
       30 GETUPVAL                         R3 1
       31 GETTABLEKS                       R3 R3 K6 ["getVersion"]
       33 CALL                             R3 0 1
       34 GETIMPORT                        R4 K8 [pcall]
       36 NEWCLOSURE                       R5 P0
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R3
       41 CALL                             R4 1 2
       42 JUMPIF                           R4 ; [+8]
       43 GETIMPORT                        R6 K10 [warn]
       45 LOADK                            R7 K11 ["Failed to track Assistant plugin version mismatch: %*"]
       46 MOVE                             R9 R5
       47 NAMECALL                         R7 R7 K12 ["format"]
       49 CALL                             R7 2 1
       50 CALL                             R6 1 0
       51 GETUPVAL                         R3 7
       52 MOVE                             R4 R1
       53 CALL                             R3 1 1
       54 GETUPVAL                         R4 8
       55 MOVE                             R5 R1
       56 MOVE                             R6 R2
       57 CALL                             R4 2 0
       58 GETUPVAL                         R4 9
       59 MOVE                             R5 R1
       60 MOVE                             R6 R2
       61 CALL                             R4 2 0
       62 GETUPVAL                         R4 10
       63 GETTABLEKS                       R4 R4 K13 ["initialize"]
       65 MOVE                             R5 R1
       66 MOVE                             R6 R0
       67 CALL                             R4 2 0
       68 GETUPVAL                         R4 11
       69 GETTABLEKS                       R4 R4 K13 ["initialize"]
       71 MOVE                             R5 R1
       72 CALL                             R4 1 0
       73 GETUPVAL                         R4 12
       74 CALL                             R4 0 1
       75 JUMPIFNOT                        R4 ; [+5]
       76 GETUPVAL                         R4 13
       77 GETTABLEKS                       R4 R4 K13 ["initialize"]
       79 MOVE                             R5 R1
       80 CALL                             R4 1 0
       81 GETUPVAL                         R4 14
       82 GETTABLEKS                       R4 R4 K14 ["getDataModelType"]
       84 CALL                             R4 0 1
       85 GETUPVAL                         R5 12
       86 CALL                             R5 0 1
       87 JUMPIF                           R5 ; [+4]
       88 GETUPVAL                         R6 6
       89 GETTABLEKS                       R6 R6 K15 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
       91 NOT                              R5 R6
       92 JUMPIFNOT                        R5 ; [+19]
       93 GETUPVAL                         R6 14
       94 GETTABLEKS                       R6 R6 K16 ["Types"]
       96 GETTABLEKS                       R6 R6 K17 ["Edit"]
       98 JUMPIFNOTEQ                      R4 R6 ; [+13]
      100 GETUPVAL                         R8 15
      101 GETTABLEKS                       R8 R8 K18 ["EditDataModelAvailabilityChangedEventKey"]
      103 GETUPVAL                         R9 14
      104 GETTABLEKS                       R9 R9 K16 ["Types"]
      106 GETTABLEKS                       R9 R9 K19 ["Standalone"]
      108 LOADB                            R10 1
      109 NAMECALL                         R6 R1 K20 ["FireGuest"]
      111 CALL                             R6 4 0
      112 GETUPVAL                         R6 16
      113 GETTABLEKS                       R6 R6 K21 ["Guest"]
      115 GETTABLEKS                       R6 R6 K22 ["startGuest"]
      117 DUPTABLE                         R7 K27 [{"clientIdentifier", "networking", "LLMRequestNetworking", "EnvironmentOverride"}]
      118 GETUPVAL                         R8 17
      119 GETTABLEKS                       R8 R8 K28 ["MCP_CLIENT_IDENTIFIER"]
      121 SETTABLEKS                       R8 R7 K23 ["clientIdentifier"]
      123 SETTABLEKS                       R1 R7 K24 ["networking"]
      125 GETUPVAL                         R9 6
      126 GETTABLEKS                       R9 R9 K29 ["FFlagAssistantMultiPlayerAgents"]
      128 JUMPIFNOT                        R9 ; [+14]
      129 GETUPVAL                         R8 18
      130 GETTABLEKS                       R8 R8 K30 ["new"]
      132 GETUPVAL                         R9 18
      133 GETTABLEKS                       R9 R9 K31 ["Implementations"]
      135 GETTABLEKS                       R9 R9 K32 ["CallbackNetworking"]
      137 GETTABLEKS                       R9 R9 K30 ["new"]
      139 DUPTABLE                         R10 K36 [{["isGuest"] = True, ["isHost"] = True}]
      140 CALL                             R9 1 -1
      141 CALL                             R8 -1 1
      142 JUMP                             ; [+1]
      143 MOVE                             R8 R1
      144 SETTABLEKS                       R8 R7 K25 ["LLMRequestNetworking"]
      146 SETTABLEKS                       R2 R7 K26 ["EnvironmentOverride"]
      148 CALL                             R6 1 2
      149 GETUPVAL                         R8 19
      150 GETTABLEKS                       R8 R8 K37 ["configureModelContextProtocol"]
      152 CALL                             R8 0 0
      153 NAMECALL                         R8 R1 K2 ["IsGuest"]
      155 CALL                             R8 1 1
      156 JUMPIFNOT                        R8 ; [+29]
      157 GETUPVAL                         R8 16
      158 GETTABLEKS                       R8 R8 K38 ["Skills"]
      160 GETTABLEKS                       R8 R8 K39 ["getDisabledSetAsync"]
      162 MOVE                             R9 R2
      163 CALL                             R8 1 1
      164 GETUPVAL                         R9 16
      165 GETTABLEKS                       R9 R9 K38 ["Skills"]
      167 GETTABLEKS                       R9 R9 K40 ["getEnabledSetAsync"]
      169 MOVE                             R10 R2
      170 CALL                             R9 1 1
      171 GETUPVAL                         R10 16
      172 GETTABLEKS                       R10 R10 K38 ["Skills"]
      174 GETTABLEKS                       R10 R10 K41 ["registerAll"]
      176 MOVE                             R11 R8
      177 MOVE                             R12 R9
      178 CALL                             R10 2 0
      179 GETUPVAL                         R10 16
      180 GETTABLEKS                       R10 R10 K38 ["Skills"]
      182 GETTABLEKS                       R10 R10 K42 ["loadUserSkillsAsync"]
      184 MOVE                             R11 R2
      185 CALL                             R10 1 0
      186 GETUPVAL                         R8 16
      187 GETTABLEKS                       R8 R8 K43 ["Subagents"]
      189 GETTABLEKS                       R8 R8 K41 ["registerAll"]
      191 CALL                             R8 0 0
      192 GETUPVAL                         R8 16
      193 GETTABLEKS                       R8 R8 K43 ["Subagents"]
      195 GETTABLEKS                       R8 R8 K44 ["setRequestHandler"]
      197 GETUPVAL                         R10 6
      198 GETTABLEKS                       R10 R10 K45 ["FFlagDebugEnableTestLLMAdapter"]
      200 JUMPIFNOT                        R10 ; [+4]
      201 GETUPVAL                         R9 20
      202 GETTABLEKS                       R9 R9 K46 ["requestHandler"]
      204 JUMP                             ; [+5]
      205 GETUPVAL                         R9 21
      206 GETTABLEKS                       R9 R9 K47 ["createRequestHandler"]
      208 MOVE                             R10 R0
      209 CALL                             R9 1 1
      210 CALL                             R8 1 0
      211 GETTABLEKS                       R8 R7 K48 ["bridges"]
      213 GETUPVAL                         R9 16
      214 GETTABLEKS                       R9 R9 K49 ["Tools"]
      216 GETTABLEKS                       R9 R9 K50 ["createTools"]
      218 DUPTABLE                         R10 K52 [{"tools", "networking", "bridges"}]
      219 GETUPVAL                         R11 22
      220 GETTABLEKS                       R11 R11 K53 ["DefaultTools"]
      222 SETTABLEKS                       R11 R10 K51 ["tools"]
      224 SETTABLEKS                       R1 R10 K24 ["networking"]
      226 SETTABLEKS                       R8 R10 K48 ["bridges"]
      228 CALL                             R9 1 1
      229 NAMECALL                         R10 R1 K2 ["IsGuest"]
      231 CALL                             R10 1 1
      232 JUMPIFNOT                        R10 ; [+7]
      233 GETUPVAL                         R10 16
      234 GETTABLEKS                       R10 R10 K49 ["Tools"]
      236 GETTABLEKS                       R10 R10 K54 ["registerTools"]
      238 MOVE                             R11 R9
      239 CALL                             R10 1 0
      240 GETUPVAL                         R10 16
      241 GETTABLEKS                       R10 R10 K55 ["UIToolRegistry"]
      243 GETTABLEKS                       R10 R10 K56 ["registerModeCommands"]
      245 GETUPVAL                         R11 16
      246 GETTABLEKS                       R11 R11 K16 ["Types"]
      248 GETTABLEKS                       R11 R11 K57 ["getAssistantModeOrdered"]
      250 CALL                             R11 0 1
      251 DUPCLOSURE                       R12 K58 [PROTO_4]
      252 CAPTURE                          UPVAL U23
      253 CALL                             R10 2 0
      254 GETUPVAL                         R10 24
      255 GETTABLEKS                       R10 R10 K30 ["new"]
      257 GETUPVAL                         R11 25
      258 MOVE                             R12 R1
      259 GETUPVAL                         R13 22
      260 GETTABLEKS                       R13 R13 K59 ["ExperimentalTools"]
      262 GETUPVAL                         R14 22
      263 GETTABLEKS                       R14 R14 K60 ["ExperimentFeatureTools"]
      265 MOVE                             R15 R8
      266 CALL                             R10 5 1
      267 GETTABLEKS                       R11 R10 K61 ["trackUserLoggedIn"]
      269 CALL                             R11 0 0
      270 GETUPVAL                         R11 26
      271 GETTABLEKS                       R11 R11 K62 ["connect"]
      273 MOVE                             R12 R0
      274 MOVE                             R13 R1
      275 MOVE                             R14 R2
      276 CALL                             R11 3 0
      277 LOADNIL                          R11
      278 GETUPVAL                         R12 6
      279 GETTABLEKS                       R12 R12 K63 ["FFlagAssistantStartMcpServerWithoutUI"]
      281 JUMPIFNOT                        R12 ; [+26]
      282 NAMECALL                         R12 R1 K2 ["IsGuest"]
      284 CALL                             R12 1 1
      285 JUMPIFNOT                        R12 ; [+22]
      286 GETUPVAL                         R12 27
      287 GETTABLEKS                       R12 R12 K30 ["new"]
      289 CALL                             R12 0 1
      290 MOVE                             R11 R12
      291 FASTCALL2K                       ASSERT R11 K64 ; [+5]
      293 MOVE                             R13 R11
      294 LOADK                            R14 K64 ["Failed to create external server controller"]
      295 GETIMPORT                        R12 K66 [assert]
      297 CALL                             R12 2 0
      298 GETTABLEKS                       R12 R11 K67 ["init"]
      300 CALL                             R12 0 0
      301 GETTABLEKS                       R12 R0 K68 ["Unloading"]
      303 NEWCLOSURE                       R14 P2
      304 CAPTURE                          REF R11
      305 NAMECALL                         R12 R12 K69 ["Connect"]
      307 CALL                             R12 2 0
      308 GETTABLEKS                       R12 R0 K68 ["Unloading"]
      310 NEWCLOSURE                       R14 P3
      311 CAPTURE                          VAL R5
      312 CAPTURE                          VAL R4
      313 CAPTURE                          UPVAL U14
      314 CAPTURE                          VAL R1
      315 CAPTURE                          UPVAL U15
      316 CAPTURE                          UPVAL U28
      317 CAPTURE                          UPVAL U4
      318 NAMECALL                         R12 R12 K69 ["Connect"]
      320 CALL                             R12 2 0
      321 GETIMPORT                        R12 K8 [pcall]
      323 NEWCLOSURE                       R13 P4
      324 CAPTURE                          VAL R2
      325 CAPTURE                          UPVAL U1
      326 CALL                             R12 1 0
      327 MOVE                             R12 R3
      328 CALL                             R12 0 0
      329 DUPTABLE                         R12 K71 [{"bridges", "externalServerController"}]
      330 SETTABLEKS                       R8 R12 K48 ["bridges"]
      332 SETTABLEKS                       R11 R12 K70 ["externalServerController"]
      334 CLOSEUPVALS                      R11
      335 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["IXPService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["NotificationService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 GETTABLEKS                       R4 R4 K12 ["Version"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K13 ["Packages"]
       30 GETTABLEKS                       R5 R5 K14 ["AssistantUI"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Src"]
       37 GETTABLEKS                       R6 R6 K15 ["Constants"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Packages"]
       44 GETTABLEKS                       R7 R7 K16 ["DMNetworking"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETTABLEKS                       R8 R0 K11 ["Src"]
       51 GETTABLEKS                       R8 R8 K17 ["Host"]
       53 GETTABLEKS                       R8 R8 K18 ["ExternalServerController"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETTABLEKS                       R9 R0 K11 ["Src"]
       60 GETTABLEKS                       R9 R9 K19 ["Flags"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R9 R4 K20 ["Utils"]
       65 GETTABLEKS                       R9 R9 K21 ["DataModelType"]
       67 GETIMPORT                        R10 K10 [require]
       69 GETTABLEKS                       R11 R0 K11 ["Src"]
       71 GETTABLEKS                       R11 R11 K22 ["Util"]
       73 GETTABLEKS                       R11 R11 K23 ["NotificationManagerStore"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K10 [require]
       78 GETTABLEKS                       R12 R0 K11 ["Src"]
       80 GETTABLEKS                       R12 R12 K22 ["Util"]
       82 GETTABLEKS                       R12 R12 K24 ["StudioExperimentalToolsListener"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K10 [require]
       87 GETTABLEKS                       R13 R0 K11 ["Src"]
       89 GETTABLEKS                       R13 R13 K22 ["Util"]
       91 GETTABLEKS                       R13 R13 K25 ["StudioGameMetadata"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K10 [require]
       96 GETTABLEKS                       R14 R0 K11 ["Src"]
       98 GETTABLEKS                       R14 R14 K22 ["Util"]
      100 GETTABLEKS                       R14 R14 K26 ["StudioIdentification"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K10 [require]
      105 GETTABLEKS                       R15 R0 K11 ["Src"]
      107 GETTABLEKS                       R15 R15 K27 ["Components"]
      109 GETTABLEKS                       R15 R15 K28 ["Contexts"]
      111 GETTABLEKS                       R15 R15 K29 ["StudioLLM"]
      113 GETTABLEKS                       R15 R15 K30 ["StudioLLMRequest"]
      115 CALL                             R14 1 1
      116 GETIMPORT                        R15 K10 [require]
      118 GETTABLEKS                       R16 R0 K11 ["Src"]
      120 GETTABLEKS                       R16 R16 K22 ["Util"]
      122 GETTABLEKS                       R16 R16 K31 ["StudioNetworking"]
      124 CALL                             R15 1 1
      125 GETIMPORT                        R16 K10 [require]
      127 GETTABLEKS                       R17 R0 K11 ["Src"]
      129 GETTABLEKS                       R17 R17 K22 ["Util"]
      131 GETTABLEKS                       R17 R17 K32 ["StudioNotificationManager"]
      133 CALL                             R16 1 1
      134 GETIMPORT                        R17 K10 [require]
      136 GETTABLEKS                       R18 R0 K11 ["Src"]
      138 GETTABLEKS                       R18 R18 K22 ["Util"]
      140 GETTABLEKS                       R18 R18 K33 ["StudioPersistence"]
      142 CALL                             R17 1 1
      143 GETIMPORT                        R18 K10 [require]
      145 GETTABLEKS                       R19 R0 K11 ["Src"]
      147 GETTABLEKS                       R19 R19 K22 ["Util"]
      149 GETTABLEKS                       R19 R19 K34 ["StudioScriptHelper"]
      151 CALL                             R18 1 1
      152 GETIMPORT                        R19 K10 [require]
      154 GETTABLEKS                       R20 R0 K11 ["Src"]
      156 GETTABLEKS                       R20 R20 K22 ["Util"]
      158 GETTABLEKS                       R20 R20 K35 ["StudioTools"]
      160 CALL                             R19 1 1
      161 GETIMPORT                        R20 K10 [require]
      163 GETTABLEKS                       R21 R0 K11 ["Src"]
      165 GETTABLEKS                       R21 R21 K36 ["Types"]
      167 CALL                             R20 1 1
      168 GETIMPORT                        R21 K10 [require]
      170 GETTABLEKS                       R22 R0 K11 ["Src"]
      172 GETTABLEKS                       R22 R22 K22 ["Util"]
      174 GETTABLEKS                       R22 R22 K37 ["Resources"]
      176 GETTABLEKS                       R22 R22 K38 ["StudioEnvironment"]
      178 CALL                             R21 1 1
      179 GETIMPORT                        R22 K10 [require]
      181 GETTABLEKS                       R23 R0 K11 ["Src"]
      183 GETTABLEKS                       R23 R23 K17 ["Host"]
      185 GETTABLEKS                       R23 R23 K39 ["startMcpHost"]
      187 CALL                             R22 1 1
      188 GETIMPORT                        R23 K10 [require]
      190 GETTABLEKS                       R24 R0 K11 ["Src"]
      192 GETTABLEKS                       R24 R24 K22 ["Util"]
      194 GETTABLEKS                       R24 R24 K40 ["waitForGuestReady"]
      196 CALL                             R23 1 1
      197 GETTABLEKS                       R24 R4 K27 ["Components"]
      199 GETTABLEKS                       R24 R24 K41 ["TestLLM"]
      201 GETTABLEKS                       R24 R24 K42 ["TestLLMRequest"]
      203 GETTABLEKS                       R25 R4 K37 ["Resources"]
      205 GETTABLEKS                       R25 R25 K43 ["Localization"]
      207 GETTABLEKS                       R25 R25 K44 ["Translator"]
      209 GETTABLEKS                       R26 R4 K20 ["Utils"]
      211 GETTABLEKS                       R26 R26 K45 ["VersionResolver"]
      213 GETTABLEKS                       R27 R4 K46 ["FlagUtils"]
      215 GETTABLEKS                       R27 R27 K47 ["getIsAssistantUseRemoteService"]
      217 GETTABLEKS                       R27 R27 K48 ["get"]
      219 GETTABLEKS                       R28 R4 K46 ["FlagUtils"]
      221 GETTABLEKS                       R28 R28 K47 ["getIsAssistantUseRemoteService"]
      223 GETTABLEKS                       R28 R28 K49 ["resolveAcrossDataModels"]
      225 GETTABLEKS                       R29 R4 K46 ["FlagUtils"]
      227 GETTABLEKS                       R29 R29 K50 ["getIsCreditMeteringLocalBackend"]
      229 GETTABLEKS                       R29 R29 K49 ["resolveAcrossDataModels"]
      231 DUPCLOSURE                       R30 K51 [PROTO_3]
      232 CAPTURE                          VAL R26
      233 DUPCLOSURE                       R31 K52 [PROTO_8]
      234 CAPTURE                          VAL R3
      235 CAPTURE                          VAL R26
      236 CAPTURE                          VAL R16
      237 CAPTURE                          VAL R2
      238 CAPTURE                          VAL R10
      239 CAPTURE                          VAL R21
      240 CAPTURE                          VAL R8
      241 CAPTURE                          VAL R23
      242 CAPTURE                          VAL R28
      243 CAPTURE                          VAL R29
      244 CAPTURE                          VAL R13
      245 CAPTURE                          VAL R18
      246 CAPTURE                          VAL R27
      247 CAPTURE                          VAL R12
      248 CAPTURE                          VAL R9
      249 CAPTURE                          VAL R5
      250 CAPTURE                          VAL R4
      251 CAPTURE                          VAL R20
      252 CAPTURE                          VAL R6
      253 CAPTURE                          VAL R22
      254 CAPTURE                          VAL R24
      255 CAPTURE                          VAL R14
      256 CAPTURE                          VAL R19
      257 CAPTURE                          VAL R25
      258 CAPTURE                          VAL R11
      259 CAPTURE                          VAL R1
      260 CAPTURE                          VAL R17
      261 CAPTURE                          VAL R7
      262 CAPTURE                          VAL R15
      263 RETURN                           R31 1
