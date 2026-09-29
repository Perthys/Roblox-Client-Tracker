PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Tool arguments must be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K6 ["textPrompt"]
       17 FASTCALL1                        TYPEOF R1 ; [+3]
       18 MOVE                             R5 R1
       19 GETIMPORT                        R4 K1 [typeof]
       21 CALL                             R4 1 1
       22 JUMPIFEQKS                       R4 K7 ["string"] ; [+2]
       24 LOADB                            R3 0 +1
       25 LOADB                            R3 1
       26 FASTCALL2K                       ASSERT R3 K8 ; [+4]
       28 LOADK                            R4 K8 ["textPrompt must be a string"]
       29 GETIMPORT                        R2 K5 [assert]
       31 CALL                             R2 2 0
       32 GETTABLEKS                       R2 R0 K9 ["selectedRigRef"]
       34 GETTABLEKS                       R3 R0 K10 ["duration"]
       36 JUMPIFEQKNIL                     R3 ; [+16]
       38 FASTCALL1                        TYPEOF R3 ; [+3]
       39 MOVE                             R7 R3
       40 GETIMPORT                        R6 K1 [typeof]
       42 CALL                             R6 1 1
       43 JUMPIFEQKS                       R6 K11 ["number"] ; [+2]
       45 LOADB                            R5 0 +1
       46 LOADB                            R5 1
       47 FASTCALL2K                       ASSERT R5 K12 ; [+4]
       49 LOADK                            R6 K12 ["duration must be a number"]
       50 GETIMPORT                        R4 K5 [assert]
       52 CALL                             R4 2 0
       53 GETTABLEKS                       R4 R0 K13 ["loop"]
       55 JUMPIFEQKNIL                     R4 ; [+16]
       57 FASTCALL1                        TYPEOF R4 ; [+3]
       58 MOVE                             R8 R4
       59 GETIMPORT                        R7 K1 [typeof]
       61 CALL                             R7 1 1
       62 JUMPIFEQKS                       R7 K14 ["boolean"] ; [+2]
       64 LOADB                            R6 0 +1
       65 LOADB                            R6 1
       66 FASTCALL2K                       ASSERT R6 K15 ; [+4]
       68 LOADK                            R7 K15 ["loop must be a boolean"]
       69 GETIMPORT                        R5 K5 [assert]
       71 CALL                             R5 2 0
       72 DUPTABLE                         R5 K18 [{"textPrompt", "selectedRigRef", "duration", "loop", "editSourceId", "isFromFormUI"}]
       73 SETTABLEKS                       R1 R5 K6 ["textPrompt"]
       75 SETTABLEKS                       R2 R5 K9 ["selectedRigRef"]
       77 SETTABLEKS                       R3 R5 K10 ["duration"]
       79 SETTABLEKS                       R4 R5 K13 ["loop"]
       81 GETTABLEKS                       R6 R0 K16 ["editSourceId"]
       83 SETTABLEKS                       R6 R5 K16 ["editSourceId"]
       85 GETTABLEKS                       R6 R0 K17 ["isFromFormUI"]
       87 SETTABLEKS                       R6 R5 K17 ["isFromFormUI"]
       89 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 LOADB                            R3 0
        4 GETTABLEKS                       R4 R2 K0 ["editSourceId"]
        6 JUMPIFEQKNIL                     R4 ; [+7]
        8 GETTABLEKS                       R4 R2 K0 ["editSourceId"]
       10 JUMPIFNOTEQKS                    R4 K1 [""] ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 GETTABLEKS                       R4 R2 K2 ["textPrompt"]
       16 JUMPIFNOTEQKS                    R4 K1 [""] ; [+11]
       18 JUMPIF                           R3 ; [+9]
       19 DUPTABLE                         R5 K4 [{"failureReason"}]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K5 ["FailureReasons"]
       23 GETTABLEKS                       R6 R6 K6 ["NoPromptProvided"]
       25 SETTABLEKS                       R6 R5 K3 ["failureReason"]
       27 RETURN                           R5 1
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R5 R5 K7 ["bridges"]
       31 GETTABLEKS                       R5 R5 K8 ["AnimationGen"]
       33 GETTABLEKS                       R5 R5 K9 ["createGuestContext"]
       35 LOADNIL                          R6
       36 LOADNIL                          R7
       37 CALL                             R5 2 1
       38 GETTABLEKS                       R5 R5 K10 ["bridge"]
       40 LOADNIL                          R6
       41 GETTABLEKS                       R7 R2 K11 ["isFromFormUI"]
       43 JUMPIFNOT                        R7 ; [+3]
       44 GETTABLEKS                       R6 R2 K12 ["selectedRigRef"]
       46 JUMP                             ; [+4]
       47 GETTABLEKS                       R7 R5 K13 ["getSelectedRigRef"]
       49 CALL                             R7 0 1
       50 MOVE                             R6 R7
       51 GETTABLEKS                       R7 R5 K14 ["generateAndSaveAnimationAsync"]
       53 DUPTABLE                         R8 K20 [{"toolUseId", "prompt", "rigUniqueId", "duration", "loop"}]
       54 SETTABLEKS                       R1 R8 K15 ["toolUseId"]
       56 GETTABLEKS                       R9 R2 K2 ["textPrompt"]
       58 SETTABLEKS                       R9 R8 K16 ["prompt"]
       60 MOVE                             R9 R6
       61 JUMPIFNOT                        R9 ; [+2]
       62 GETTABLEKS                       R9 R6 K21 ["uniqueId"]
       64 SETTABLEKS                       R9 R8 K17 ["rigUniqueId"]
       66 GETTABLEKS                       R9 R2 K18 ["duration"]
       68 SETTABLEKS                       R9 R8 K18 ["duration"]
       70 GETTABLEKS                       R9 R2 K19 ["loop"]
       72 SETTABLEKS                       R9 R8 K19 ["loop"]
       74 CALL                             R7 1 1
       75 GETTABLEKS                       R8 R7 K3 ["failureReason"]
       77 JUMPIFEQKNIL                     R8 ; [+7]
       79 DUPTABLE                         R8 K4 [{"failureReason"}]
       80 GETTABLEKS                       R9 R7 K3 ["failureReason"]
       82 SETTABLEKS                       R9 R8 K3 ["failureReason"]
       84 RETURN                           R8 1
       85 GETTABLEKS                       R9 R7 K22 ["generationId"]
       87 JUMPIFEQKNIL                     R9 ; [+8]
       89 GETUPVAL                         R8 1
       90 GETTABLEKS                       R8 R8 K23 ["getLinkTag"]
       92 GETTABLEKS                       R9 R7 K22 ["generationId"]
       94 CALL                             R8 1 1
       95 JUMP                             ; [+1]
       96 LOADNIL                          R8
       97 DUPTABLE                         R9 K26 [{"tag", "generationId", "generationName", "duration"}]
       98 SETTABLEKS                       R8 R9 K24 ["tag"]
      100 GETTABLEKS                       R10 R7 K22 ["generationId"]
      102 SETTABLEKS                       R10 R9 K22 ["generationId"]
      104 GETTABLEKS                       R10 R7 K27 ["name"]
      106 SETTABLEKS                       R10 R9 K25 ["generationName"]
      108 GETTABLEKS                       R10 R7 K18 ["duration"]
      110 SETTABLEKS                       R10 R9 K18 ["duration"]
      112 RETURN                           R9 1

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R3 R1 K0 ["toolId"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R3
        5 LOADB                            R5 0
        6 FASTCALL1                        TYPEOF R3 ; [+3]
        7 MOVE                             R7 R3
        8 GETIMPORT                        R6 K2 [typeof]
       10 CALL                             R6 1 1
       11 JUMPIFNOTEQKS                    R6 K3 ["string"] ; [+5]
       13 JUMPIFNOTEQKS                    R3 K4 [""] ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       19 LOADK                            R6 K5 ["AnimationGenTool handler requires meta.toolId"]
       20 GETIMPORT                        R4 K7 [assert]
       22 CALL                             R4 2 0
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K8 ["runWithProgressLoop"]
       26 GETTABLEKS                       R5 R2 K9 ["sendProgress"]
       28 GETUPVAL                         R6 1
       29 MOVE                             R7 R0
       30 MOVE                             R8 R3
       31 CALL                             R4 4 1
       32 LOADNIL                          R5
       33 GETTABLEKS                       R6 R4 K10 ["failureReason"]
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R7 R7 K11 ["FailureReasons"]
       38 GETTABLEKS                       R7 R7 K12 ["NoPromptProvided"]
       40 JUMPIFNOTEQ                      R6 R7 ; [+3]
       42 LOADK                            R5 K13 ["No prompt provided, please provide a prompt"]
       43 JUMP                             ; [+23]
       44 GETTABLEKS                       R6 R4 K10 ["failureReason"]
       46 GETUPVAL                         R7 2
       47 GETTABLEKS                       R7 R7 K11 ["FailureReasons"]
       49 GETTABLEKS                       R7 R7 K14 ["GenerationFailed"]
       51 JUMPIFNOTEQ                      R6 R7 ; [+3]
       53 LOADK                            R5 K15 ["Animation generation failed"]
       54 JUMP                             ; [+12]
       55 GETTABLEKS                       R6 R4 K10 ["failureReason"]
       57 GETUPVAL                         R7 2
       58 GETTABLEKS                       R7 R7 K11 ["FailureReasons"]
       60 GETTABLEKS                       R7 R7 K16 ["RigInsertFailed"]
       62 JUMPIFNOTEQ                      R6 R7 ; [+3]
       64 LOADK                            R5 K17 ["Rig insert failed"]
       65 JUMP                             ; [+1]
       66 LOADK                            R5 K18 ["Animation generated successfully"]
       67 DUPTABLE                         R6 K23 [{"tag", "generationId", "generationName", "duration", "failureReason"}]
       68 GETTABLEKS                       R7 R4 K19 ["tag"]
       70 SETTABLEKS                       R7 R6 K19 ["tag"]
       72 GETTABLEKS                       R7 R4 K20 ["generationId"]
       74 SETTABLEKS                       R7 R6 K20 ["generationId"]
       76 GETTABLEKS                       R7 R4 K21 ["generationName"]
       78 SETTABLEKS                       R7 R6 K21 ["generationName"]
       80 GETTABLEKS                       R7 R4 K22 ["duration"]
       82 SETTABLEKS                       R7 R6 K22 ["duration"]
       84 GETTABLEKS                       R7 R4 K10 ["failureReason"]
       86 SETTABLEKS                       R7 R6 K10 ["failureReason"]
       88 GETUPVAL                         R7 3
       89 CALL                             R7 0 1
       90 MOVE                             R9 R5
       91 NAMECALL                         R7 R7 K24 ["addText"]
       93 CALL                             R7 2 1
       94 MOVE                             R9 R6
       95 NAMECALL                         R7 R7 K25 ["setStructuredContent"]
       97 CALL                             R7 2 1
       98 NAMECALL                         R7 R7 K26 ["build"]
      100 CALL                             R7 1 -1
      101 RETURN                           R7 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["parseSlashCommandArgs"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 LOADK                            R5 K2 ["%s*%S+=%S+"]
        6 LOADK                            R6 K1 [""]
        7 NAMECALL                         R3 R0 K3 ["gsub"]
        9 CALL                             R3 3 1
       10 LOADK                            R5 K4 ["^%s*(.-)%s*$"]
       11 NAMECALL                         R3 R3 K5 ["match"]
       13 CALL                             R3 2 1
       14 ORK                              R2 R3 K1 [""]
       15 DUPTABLE                         R3 K14 [{["textPrompt"], ["selectedRigRef"] = , ["duration"], ["loop"], ["editSourceId"], ["isFromFormUI"] = True}]
       16 SETTABLEKS                       R2 R3 K6 ["textPrompt"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K15 ["getOptionalNumber"]
       21 GETTABLEKS                       R5 R1 K9 ["duration"]
       23 CALL                             R4 1 1
       24 SETTABLEKS                       R4 R3 K9 ["duration"]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K16 ["getOptionalBoolean"]
       29 GETTABLEKS                       R5 R1 K10 ["loop"]
       31 CALL                             R4 1 1
       32 SETTABLEKS                       R4 R3 K10 ["loop"]
       34 GETTABLEKS                       R4 R1 K11 ["editSourceId"]
       36 SETTABLEKS                       R4 R3 K11 ["editSourceId"]
       38 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["editSourceId"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantEditScrubbarPropertyRow"]
        6 JUMPIFNOT                        R2 ; [+70]
        7 JUMPIFEQKNIL                     R1 ; [+69]
        9 JUMPIFEQKS                       R1 K2 [""] ; [+67]
       11 NEWTABLE                         R2 0 3
       13 DUPTABLE                         R3 K6 [{"name", "inputType", "initialValue"}]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K7 ["TextPrompt"]
       17 SETTABLEKS                       R4 R3 K3 ["name"]
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K8 ["String"]
       22 SETTABLEKS                       R4 R3 K4 ["inputType"]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K9 ["textPrompt"]
       27 SETTABLEKS                       R4 R3 K5 ["initialValue"]
       29 DUPTABLE                         R4 K6 [{"name", "inputType", "initialValue"}]
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R5 R5 K10 ["EditSourceId"]
       33 SETTABLEKS                       R5 R4 K3 ["name"]
       35 GETUPVAL                         R5 3
       36 GETTABLEKS                       R5 R5 K8 ["String"]
       38 SETTABLEKS                       R5 R4 K4 ["inputType"]
       40 SETTABLEKS                       R1 R4 K5 ["initialValue"]
       42 DUPTABLE                         R5 K6 [{"name", "inputType", "initialValue"}]
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R6 R6 K11 ["Duration"]
       46 SETTABLEKS                       R6 R5 K3 ["name"]
       48 GETUPVAL                         R6 3
       49 GETTABLEKS                       R6 R6 K12 ["Number"]
       51 SETTABLEKS                       R6 R5 K4 ["inputType"]
       53 GETUPVAL                         R6 0
       54 GETTABLEKS                       R6 R6 K13 ["duration"]
       56 SETTABLEKS                       R6 R5 K5 ["initialValue"]
       58 SETLIST                          R2 R3 3 [1]
       60 DUPTABLE                         R3 K15 [{"name", "arguments"}]
       61 GETUPVAL                         R4 4
       62 GETTABLEKS                       R4 R4 K16 ["AskInput"]
       64 SETTABLEKS                       R4 R3 K3 ["name"]
       66 DUPTABLE                         R4 K19 [{"formId", "fields"}]
       67 GETUPVAL                         R5 5
       68 GETTABLEKS                       R5 R5 K17 ["formId"]
       70 SETTABLEKS                       R5 R4 K17 ["formId"]
       72 SETTABLEKS                       R2 R4 K18 ["fields"]
       74 SETTABLEKS                       R4 R3 K14 ["arguments"]
       76 RETURN                           R3 1
       77 GETUPVAL                         R2 6
       78 GETTABLEKS                       R2 R2 K20 ["bridges"]
       80 GETTABLEKS                       R2 R2 K21 ["AnimationGen"]
       82 GETTABLEKS                       R2 R2 K22 ["createGuestContext"]
       84 LOADNIL                          R3
       85 LOADNIL                          R4
       86 CALL                             R2 2 1
       87 GETTABLEKS                       R2 R2 K23 ["bridge"]
       89 GETTABLEKS                       R3 R2 K24 ["getSelectedRigRef"]
       91 CALL                             R3 0 1
       92 NEWTABLE                         R4 0 3
       94 DUPTABLE                         R5 K6 [{"name", "inputType", "initialValue"}]
       95 GETUPVAL                         R6 7
       96 GETTABLEKS                       R6 R6 K7 ["TextPrompt"]
       98 SETTABLEKS                       R6 R5 K3 ["name"]
      100 GETUPVAL                         R6 3
      101 GETTABLEKS                       R6 R6 K8 ["String"]
      103 SETTABLEKS                       R6 R5 K4 ["inputType"]
      105 GETUPVAL                         R6 0
      106 GETTABLEKS                       R6 R6 K9 ["textPrompt"]
      108 SETTABLEKS                       R6 R5 K5 ["initialValue"]
      110 DUPTABLE                         R6 K6 [{"name", "inputType", "initialValue"}]
      111 GETUPVAL                         R7 7
      112 GETTABLEKS                       R7 R7 K25 ["SelectedRigRef"]
      114 SETTABLEKS                       R7 R6 K3 ["name"]
      116 GETUPVAL                         R7 3
      117 GETTABLEKS                       R7 R7 K26 ["Instance"]
      119 SETTABLEKS                       R7 R6 K4 ["inputType"]
      121 JUMPIFNOT                        R3 ; [+14]
      122 DUPTABLE                         R7 K29 [{"uniqueId", "name", "className"}]
      123 GETTABLEKS                       R8 R3 K27 ["uniqueId"]
      125 SETTABLEKS                       R8 R7 K27 ["uniqueId"]
      127 GETTABLEKS                       R8 R3 K3 ["name"]
      129 SETTABLEKS                       R8 R7 K3 ["name"]
      131 GETTABLEKS                       R8 R3 K28 ["className"]
      133 SETTABLEKS                       R8 R7 K28 ["className"]
      135 JUMP                             ; [+1]
      136 LOADNIL                          R7
      137 SETTABLEKS                       R7 R6 K5 ["initialValue"]
      139 DUPTABLE                         R7 K34 [{["name"], ["inputType"], ["initialValue"], ["min"] = 1, ["max"] = 10}]
      140 GETUPVAL                         R8 7
      141 GETTABLEKS                       R8 R8 K11 ["Duration"]
      143 SETTABLEKS                       R8 R7 K3 ["name"]
      145 GETUPVAL                         R8 3
      146 GETTABLEKS                       R8 R8 K12 ["Number"]
      148 SETTABLEKS                       R8 R7 K4 ["inputType"]
      150 GETUPVAL                         R8 0
      151 GETTABLEKS                       R8 R8 K13 ["duration"]
      153 SETTABLEKS                       R8 R7 K5 ["initialValue"]
      155 SETLIST                          R4 R5 3 [1]
      157 DUPTABLE                         R5 K19 [{"formId", "fields"}]
      158 GETUPVAL                         R6 8
      159 GETTABLEKS                       R6 R6 K17 ["formId"]
      161 SETTABLEKS                       R6 R5 K17 ["formId"]
      163 SETTABLEKS                       R4 R5 K18 ["fields"]
      165 DUPTABLE                         R6 K15 [{"name", "arguments"}]
      166 GETUPVAL                         R7 4
      167 GETTABLEKS                       R7 R7 K16 ["AskInput"]
      169 SETTABLEKS                       R7 R6 K3 ["name"]
      171 SETTABLEKS                       R5 R6 K14 ["arguments"]
      173 RETURN                           R6 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["readAskInputValues"]
        3 LENGTH                           R3 R0
        4 GETTABLE                         R2 R0 R3
        5 CALL                             R1 1 1
        6 GETIMPORT                        R2 K3 [table.clone]
        8 GETUPVAL                         R3 1
        9 CALL                             R2 1 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K4 ["TextPrompt"]
       13 GETTABLE                         R3 R1 R4
       14 JUMPIF                           R3 ; [+3]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K5 ["textPrompt"]
       18 SETTABLEKS                       R3 R2 K5 ["textPrompt"]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K6 ["SelectedRigRef"]
       23 GETTABLE                         R3 R1 R4
       24 SETTABLEKS                       R3 R2 K7 ["selectedRigRef"]
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R4 R4 K8 ["Duration"]
       29 GETTABLE                         R3 R1 R4
       30 SETTABLEKS                       R3 R2 K9 ["duration"]
       32 DUPTABLE                         R3 K12 [{"name", "arguments"}]
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R4 R4 K13 ["AnimationGen"]
       36 SETTABLEKS                       R4 R3 K10 ["name"]
       38 SETTABLEKS                       R2 R3 K11 ["arguments"]
       40 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 NEWCLOSURE                       R3 P1
       14 CAPTURE                          UPVAL U9
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U7
       17 CAPTURE                          UPVAL U4
       18 NEWTABLE                         R4 0 2
       20 MOVE                             R5 R2
       21 MOVE                             R6 R3
       22 SETLIST                          R4 R5 2 [1]
       24 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["AnimationGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 DUPTABLE                         R2 K2 [{[1] = True}]
        1 RETURN                           R2 1

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 NEWCLOSURE                       R2 P1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U3
        9 GETIMPORT                        R3 K2 [table.concat]
       11 NEWTABLE                         R4 0 10
       13 LOADK                            R5 K3 ["Generates character animations from natural language descriptions using an AI motion generation model."]
       14 LOADK                            R6 K4 ["Use this tool whenever the user wants to create, generate, or make an animation, motion, or movement for a character or avatar."]
       15 LOADK                            R7 K5 ["The 'prompt' parameter accepts a natural language description of the motion, and an optional 'duration'."]
       16 LOADK                            R8 K6 ["You should interpret the prompt to understand the intended action, and adjust the 'duration' appropriately instead of always using the default value."]
       17 LOADK                            R9 K7 ["The duration should typically be within a range of 1 to 10 seconds."]
       18 LOADK                            R10 K8 ["For example, very short actions (e.g., 'blink', 'nod') should use around 1-2 seconds,"]
       19 LOADK                            R11 K9 ["simple actions (e.g., 'wave', 'jump') around 2-4 seconds,"]
       20 LOADK                            R12 K10 ["and longer or complex actions (e.g., 'dance sequence', 'walk across the room') around 5-10 seconds."]
       21 LOADK                            R13 K11 ["Avoid unnecessarily long durations for simple actions, and ensure the duration matches the natural timing of the described motion."]
       22 LOADK                            R14 K12 ["Parameters: textPrompt (the motion description), duration (length in seconds, infer from the motion), loop (true if the motion should repeat seamlessly)."]
       23 SETLIST                          R4 R5 10 [1]
       25 LOADK                            R5 K13 ["\n"]
       26 CALL                             R3 2 1
       27 GETUPVAL                         R4 4
       28 GETTABLEKS                       R4 R4 K14 ["define"]
       30 CALL                             R4 0 1
       31 GETUPVAL                         R6 5
       32 GETTABLEKS                       R6 R6 K15 ["AnimationGen"]
       34 NAMECALL                         R4 R4 K16 ["setName"]
       36 CALL                             R4 2 1
       37 MOVE                             R6 R3
       38 NAMECALL                         R4 R4 K17 ["setDescription"]
       40 CALL                             R4 2 1
       41 LOADK                            R6 K18 ["textPrompt"]
       42 DUPTABLE                         R7 K23 [{["type"] = "string", ["description"] = "The text prompt describing the animation to generate."}]
       43 NAMECALL                         R4 R4 K24 ["addArgument"]
       45 CALL                             R4 3 1
       46 LOADK                            R6 K25 ["duration"]
       47 DUPTABLE                         R7 K28 [{["type"] = "number", ["description"] = "Length of the animation in seconds. Animation will be 30 fps."}]
       48 NAMECALL                         R4 R4 K29 ["addOptionalArgument"]
       50 CALL                             R4 3 1
       51 LOADK                            R6 K30 ["loop"]
       52 DUPTABLE                         R7 K33 [{["type"] = "boolean", ["description"] = "Whether the animation should loop."}]
       53 NAMECALL                         R4 R4 K29 ["addOptionalArgument"]
       55 CALL                             R4 3 1
       56 DUPTABLE                         R6 K41 [{["title"] = "Animation Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       57 NAMECALL                         R4 R4 K42 ["setAnnotations"]
       59 CALL                             R4 2 1
       60 MOVE                             R6 R2
       61 NAMECALL                         R4 R4 K43 ["setHandler"]
       63 CALL                             R4 2 1
       64 NAMECALL                         R4 R4 K44 ["build"]
       66 CALL                             R4 1 1
       67 DUPCLOSURE                       R5 K45 [PROTO_3]
       68 CAPTURE                          UPVAL U6
       69 NEWCLOSURE                       R6 P3
       70 CAPTURE                          VAL R5
       71 CAPTURE                          UPVAL U7
       72 CAPTURE                          UPVAL U8
       73 CAPTURE                          UPVAL U9
       74 CAPTURE                          UPVAL U5
       75 CAPTURE                          UPVAL U10
       76 CAPTURE                          VAL R0
       77 CAPTURE                          UPVAL U11
       78 CAPTURE                          UPVAL U12
       79 CAPTURE                          UPVAL U13
       80 DUPTABLE                         R7 K50 [{["command"] = "generate_animation", ["getDescription"], ["runToolChain"]}]
       81 DUPCLOSURE                       R8 K51 [PROTO_7]
       82 CAPTURE                          UPVAL U14
       83 SETTABLEKS                       R8 R7 K48 ["getDescription"]
       85 SETTABLEKS                       R6 R7 K49 ["runToolChain"]
       87 DUPCLOSURE                       R8 K52 [PROTO_8]
       88 DUPTABLE                         R9 K57 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
       89 SETTABLEKS                       R4 R9 K53 ["definition"]
       91 NEWTABLE                         R10 0 1
       93 MOVE                             R11 R7
       94 SETLIST                          R10 R11 1 [1]
       96 SETTABLEKS                       R10 R9 K54 ["slashCommands"]
       98 SETTABLEKS                       R8 R9 K55 ["getPreExecuteWarning"]
      100 DUPTABLE                         R10 K60 [{["resetTimeoutOnProgress"] = True}]
      101 SETTABLEKS                       R10 R9 K56 ["toolCallOptions"]
      103 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["ModelContextProtocol"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R4 K9 ["AnimationGen"]
       20 GETTABLEKS                       R4 R4 K10 ["AnimationGenTypes"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Util"]
       27 GETTABLEKS                       R5 R5 K11 ["AskInput"]
       29 GETTABLEKS                       R5 R5 K12 ["AskInputTypes"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K13 ["Flags"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K8 ["Util"]
       41 GETTABLEKS                       R7 R7 K14 ["SlashCommandArgs"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K8 ["Util"]
       48 GETTABLEKS                       R8 R8 K15 ["SlashCommandConfiguration"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K16 ["Tools"]
       55 GETTABLEKS                       R9 R9 K17 ["ToolTypes"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K8 ["Util"]
       62 GETTABLEKS                       R10 R10 K18 ["ToolUtils"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K19 ["Resources"]
       69 GETTABLEKS                       R11 R11 K20 ["Localization"]
       71 GETTABLEKS                       R11 R11 K21 ["Translator"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETTABLEKS                       R12 R0 K22 ["Types"]
       78 CALL                             R11 1 1
       79 GETTABLEKS                       R12 R2 K8 ["Util"]
       81 GETTABLEKS                       R12 R12 K23 ["ToolBuilder"]
       83 GETTABLEKS                       R13 R2 K8 ["Util"]
       85 GETTABLEKS                       R13 R13 K24 ["ToolResult"]
       87 GETTABLEKS                       R14 R8 K25 ["ToolNames"]
       89 GETTABLEKS                       R15 R4 K26 ["INPUT_TYPE"]
       91 GETTABLEKS                       R16 R7 K27 ["Configs"]
       93 GETTABLEKS                       R16 R16 K9 ["AnimationGen"]
       95 GETTABLEKS                       R17 R16 K28 ["row"]
       97 GETTABLEKS                       R18 R7 K27 ["Configs"]
       99 GETTABLEKS                       R18 R18 K29 ["AnimationGenEdit"]
      101 GETTABLEKS                       R19 R18 K28 ["row"]
      103 DUPCLOSURE                       R20 K30 [PROTO_0]
      104 DUPCLOSURE                       R21 K31 [PROTO_9]
      105 CAPTURE                          VAL R20
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R19
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R18
      116 CAPTURE                          VAL R17
      117 CAPTURE                          VAL R16
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R10
      120 RETURN                           R21 1
