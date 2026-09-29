PROTO_0:
        0 LOADK                            R1 K0 ["TextureGen-"]
        1 GETUPVAL                         R2 0
        2 LOADB                            R4 0
        3 NAMECALL                         R2 R2 K1 ["GenerateGUID"]
        5 CALL                             R2 2 1
        6 CONCAT                           R0 R1 R2
        7 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R3 R2 K0 ["selectedInstanceRef"]
        2 JUMPIFEQKNIL                     R3 ; [+35]
        4 FASTCALL1                        TYPEOF R3 ; [+3]
        5 MOVE                             R7 R3
        6 GETIMPORT                        R6 K2 [typeof]
        8 CALL                             R6 1 1
        9 JUMPIFEQKS                       R6 K3 ["table"] ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 FASTCALL2K                       ASSERT R5 K4 ; [+4]
       15 LOADK                            R6 K4 ["selectedInstanceRef must be a table"]
       16 GETIMPORT                        R4 K6 [assert]
       18 CALL                             R4 2 0
       19 GETTABLEKS                       R7 R3 K7 ["uniqueId"]
       21 FASTCALL1                        TYPEOF R7 ; [+2]
       22 GETIMPORT                        R6 K2 [typeof]
       24 CALL                             R6 1 1
       25 JUMPIFEQKS                       R6 K8 ["string"] ; [+2]
       27 LOADB                            R5 0 +1
       28 LOADB                            R5 1
       29 FASTCALL2K                       ASSERT R5 K9 ; [+4]
       31 LOADK                            R6 K9 ["selectedInstanceRef.uniqueId must be a string"]
       32 GETIMPORT                        R4 K6 [assert]
       34 CALL                             R4 2 0
       35 GETTABLEKS                       R4 R3 K7 ["uniqueId"]
       37 RETURN                           R4 1
       38 GETTABLEKS                       R4 R2 K10 ["instance_path"]
       40 JUMPIFEQKNIL                     R4 ; [+44]
       42 JUMPIFEQKS                       R4 K11 [""] ; [+42]
       44 GETTABLEKS                       R5 R0 K12 ["instances"]
       46 GETTABLEKS                       R5 R5 K13 ["resolveInstanceByPathAsync"]
       48 MOVE                             R6 R4
       49 CALL                             R5 1 1
       50 JUMPIFNOTEQKNIL                  R5 ; [+10]
       52 GETIMPORT                        R6 K15 [error]
       54 LOADK                            R7 K16 ["could not resolve instance_path \"%*\"; it must point to an existing MeshPart or Model."]
       55 MOVE                             R9 R4
       56 NAMECALL                         R7 R7 K17 ["format"]
       58 CALL                             R7 2 1
       59 LOADN                            R8 0
       60 CALL                             R6 2 0
       61 GETTABLEKS                       R6 R5 K18 ["className"]
       63 JUMPIFEQKS                       R6 K19 ["MeshPart"] ; [+18]
       65 GETTABLEKS                       R6 R5 K18 ["className"]
       67 JUMPIFEQKS                       R6 K20 ["Model"] ; [+14]
       69 GETIMPORT                        R6 K15 [error]
       71 LOADK                            R7 K21 ["requires a MeshPart or Model; instance_path \"%*\" resolved to a %* (\"%*\")."]
       72 MOVE                             R9 R4
       73 GETTABLEKS                       R10 R5 K18 ["className"]
       75 GETTABLEKS                       R11 R5 K22 ["name"]
       77 NAMECALL                         R7 R7 K17 ["format"]
       79 CALL                             R7 4 1
       80 LOADN                            R8 0
       81 CALL                             R6 2 0
       82 GETTABLEKS                       R6 R5 K7 ["uniqueId"]
       84 RETURN                           R6 1
       85 GETIMPORT                        R5 K24 [pcall]
       87 GETTABLEKS                       R6 R1 K25 ["getSelectedMeshRef"]
       89 CALL                             R5 1 2
       90 MOVE                             R8 R5
       91 JUMPIFNOT                        R8 ; [+4]
       92 JUMPIFNOTEQKNIL                  R6 ; [+2]
       94 LOADB                            R8 0 +1
       95 LOADB                            R8 1
       96 FASTCALL2K                       ASSERT R8 K26 ; [+4]
       98 LOADK                            R9 K26 ["selectedInstanceRef or instance_path must be provided — texture generation requires a source MeshPart or Model"]
       99 GETIMPORT                        R7 K6 [assert]
      101 CALL                             R7 2 0
      102 GETTABLEKS                       R7 R6 K7 ["uniqueId"]
      104 RETURN                           R7 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R2 ; [+3]
        1 MOVE                             R6 R2
        2 GETIMPORT                        R5 K1 [typeof]
        4 CALL                             R5 1 1
        5 JUMPIFEQKS                       R5 K2 ["table"] ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       11 LOADK                            R5 K3 ["Tool arguments must be a table"]
       12 GETIMPORT                        R3 K5 [assert]
       14 CALL                             R3 2 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K6 ["resolveImage"]
       18 GETTABLEKS                       R4 R2 K7 ["hintImage"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R7 R2 K8 ["textPrompt"]
       23 FASTCALL1                        TYPEOF R7 ; [+2]
       24 GETIMPORT                        R6 K1 [typeof]
       26 CALL                             R6 1 1
       27 JUMPIFNOTEQKS                    R6 K9 ["string"] ; [+8]
       29 LOADB                            R5 1
       30 GETTABLEKS                       R7 R2 K8 ["textPrompt"]
       32 LENGTH                           R6 R7
       33 LOADN                            R7 0
       34 JUMPIFLT                         R7 R6 ; [+5]
       36 JUMPIFNOTEQKNIL                  R3 ; [+2]
       38 LOADB                            R5 0 +1
       39 LOADB                            R5 1
       40 FASTCALL2K                       ASSERT R5 K10 ; [+4]
       42 LOADK                            R6 K10 ["textPrompt must be a non-empty string, or hintImage must be provided"]
       43 GETIMPORT                        R4 K5 [assert]
       45 CALL                             R4 2 0
       46 GETTABLEKS                       R4 R2 K11 ["isManualRun"]
       48 JUMPIFEQKNIL                     R4 ; [+16]
       50 FASTCALL1                        TYPEOF R4 ; [+3]
       51 MOVE                             R8 R4
       52 GETIMPORT                        R7 K1 [typeof]
       54 CALL                             R7 1 1
       55 JUMPIFEQKS                       R7 K12 ["boolean"] ; [+2]
       57 LOADB                            R6 0 +1
       58 LOADB                            R6 1
       59 FASTCALL2K                       ASSERT R6 K13 ; [+4]
       61 LOADK                            R7 K13 ["isManualRun must be a boolean"]
       62 GETIMPORT                        R5 K5 [assert]
       64 CALL                             R5 2 0
       65 GETUPVAL                         R5 1
       66 MOVE                             R6 R0
       67 MOVE                             R7 R1
       68 MOVE                             R8 R2
       69 CALL                             R5 3 1
       70 GETTABLEKS                       R6 R2 K14 ["model"]
       72 GETUPVAL                         R7 2
       73 GETTABLEKS                       R7 R7 K15 ["FFlagAssistantTextureGenModelSelection"]
       75 JUMPIFNOT                        R7 ; [+42]
       76 JUMPIFEQKNIL                     R6 ; [+31]
       78 FASTCALL1                        TYPEOF R6 ; [+3]
       79 MOVE                             R10 R6
       80 GETIMPORT                        R9 K1 [typeof]
       82 CALL                             R9 1 1
       83 JUMPIFEQKS                       R9 K9 ["string"] ; [+2]
       85 LOADB                            R8 0 +1
       86 LOADB                            R8 1
       87 FASTCALL2K                       ASSERT R8 K16 ; [+4]
       89 LOADK                            R9 K16 ["model must be a string"]
       90 GETIMPORT                        R7 K5 [assert]
       92 CALL                             R7 2 0
       93 GETUPVAL                         R7 3
       94 GETTABLEKS                       R7 R7 K17 ["MODEL_BY_MODE"]
       96 GETTABLE                         R6 R7 R6
       97 JUMPIFNOTEQKNIL                  R6 ; [+2]
       99 LOADB                            R8 0 +1
      100 LOADB                            R8 1
      101 FASTCALL2K                       ASSERT R8 K18 ; [+4]
      103 LOADK                            R9 K18 ["model must be one of the values declared in the tool schema's enum"]
      104 GETIMPORT                        R7 K5 [assert]
      106 CALL                             R7 2 0
      107 JUMP                             ; [+11]
      108 GETUPVAL                         R7 3
      109 GETTABLEKS                       R7 R7 K17 ["MODEL_BY_MODE"]
      111 GETUPVAL                         R8 3
      112 GETTABLEKS                       R8 R8 K19 ["MODE"]
      114 GETTABLEKS                       R8 R8 K20 ["Quality"]
      116 GETTABLE                         R6 R7 R8
      117 JUMP                             ; [+1]
      118 LOADNIL                          R6
      119 DUPTABLE                         R7 K22 [{"textPrompt", "hintImage", "isManualRun", "selectedUniqueId", "model"}]
      120 GETTABLEKS                       R8 R2 K8 ["textPrompt"]
      122 SETTABLEKS                       R8 R7 K8 ["textPrompt"]
      124 SETTABLEKS                       R3 R7 K7 ["hintImage"]
      126 SETTABLEKS                       R4 R7 K11 ["isManualRun"]
      128 SETTABLEKS                       R5 R7 K21 ["selectedUniqueId"]
      130 SETTABLEKS                       R6 R7 K14 ["model"]
      132 RETURN                           R7 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["generateTextureAsync"]
        3 DUPTABLE                         R1 K6 [{"requestId", "textPrompt", "hintImage", "selectedUniqueId", "model"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["requestId"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["textPrompt"]
       10 SETTABLEKS                       R2 R1 K2 ["textPrompt"]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["hintImage"]
       15 SETTABLEKS                       R2 R1 K3 ["hintImage"]
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K4 ["selectedUniqueId"]
       20 SETTABLEKS                       R2 R1 K4 ["selectedUniqueId"]
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K5 ["model"]
       25 SETTABLEKS                       R2 R1 K5 ["model"]
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertTexturedModelAsync"]
        3 DUPTABLE                         R1 K2 [{"requestId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["requestId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bridges"]
        3 GETTABLEKS                       R1 R1 K1 ["TextureGen"]
        5 GETTABLEKS                       R1 R1 K2 ["createGuestContext"]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 CALL                             R1 2 1
       10 GETTABLEKS                       R1 R1 K3 ["bridge"]
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K4 ["environment"]
       16 MOVE                             R4 R1
       17 MOVE                             R5 R0
       18 CALL                             R2 3 1
       19 LOADK                            R4 K5 ["TextureGen-"]
       20 GETUPVAL                         R5 2
       21 LOADB                            R7 0
       22 NAMECALL                         R5 R5 K6 ["GenerateGUID"]
       24 CALL                             R5 2 1
       25 CONCAT                           R3 R4 R5
       26 GETIMPORT                        R4 K8 [pcall]
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R2
       32 CALL                             R4 1 2
       33 JUMPIF                           R4 ; [+11]
       34 GETIMPORT                        R6 K10 [error]
       36 LOADK                            R8 K11 ["Texture generation failed with error: "]
       37 FASTCALL1                        TOSTRING R5 ; [+3]
       38 MOVE                             R10 R5
       39 GETIMPORT                        R9 K13 [tostring]
       41 CALL                             R9 1 1
       42 CONCAT                           R7 R8 R9
       43 LOADN                            R8 0
       44 CALL                             R6 2 0
       45 GETTABLEKS                       R6 R2 K14 ["isManualRun"]
       47 JUMPIFNOT                        R6 ; [+15]
       48 DUPTABLE                         R6 K18 [{"tag", "requestId", "generationName"}]
       49 GETUPVAL                         R7 3
       50 GETTABLEKS                       R7 R7 K19 ["getLinkTag"]
       52 MOVE                             R8 R3
       53 CALL                             R7 1 1
       54 SETTABLEKS                       R7 R6 K15 ["tag"]
       56 SETTABLEKS                       R3 R6 K16 ["requestId"]
       58 GETTABLEKS                       R7 R2 K20 ["textPrompt"]
       60 SETTABLEKS                       R7 R6 K17 ["generationName"]
       62 RETURN                           R6 1
       63 GETIMPORT                        R6 K8 [pcall]
       65 NEWCLOSURE                       R7 P1
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R3
       68 CALL                             R6 1 2
       69 JUMPIF                           R6 ; [+19]
       70 GETIMPORT                        R8 K8 [pcall]
       72 GETTABLEKS                       R9 R1 K21 ["cancelGenerationAsync"]
       74 DUPTABLE                         R10 K22 [{"requestId"}]
       75 SETTABLEKS                       R3 R10 K16 ["requestId"]
       77 CALL                             R8 2 0
       78 GETIMPORT                        R8 K10 [error]
       80 LOADK                            R10 K23 ["Failed to insert textured model with error: "]
       81 FASTCALL1                        TOSTRING R7 ; [+3]
       82 MOVE                             R12 R7
       83 GETIMPORT                        R11 K13 [tostring]
       85 CALL                             R11 1 1
       86 CONCAT                           R9 R10 R11
       87 LOADN                            R10 0
       88 CALL                             R8 2 0
       89 DUPTABLE                         R8 K18 [{"tag", "requestId", "generationName"}]
       90 GETUPVAL                         R9 3
       91 GETTABLEKS                       R9 R9 K19 ["getLinkTag"]
       93 MOVE                             R10 R3
       94 CALL                             R9 1 1
       95 SETTABLEKS                       R9 R8 K15 ["tag"]
       97 SETTABLEKS                       R3 R8 K16 ["requestId"]
       99 GETTABLEKS                       R9 R2 K20 ["textPrompt"]
      101 SETTABLEKS                       R9 R8 K17 ["generationName"]
      103 RETURN                           R8 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["runWithProgressLoop"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["sendProgress"]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_7:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CALL                             R3 1 2
        8 JUMPIF                           R3 ; [+25]
        9 FASTCALL1                        TOSTRING R4 ; [+3]
       10 MOVE                             R6 R4
       11 GETIMPORT                        R5 K3 [tostring]
       13 CALL                             R5 1 1
       14 GETUPVAL                         R6 2
       15 CALL                             R6 0 1
       16 MOVE                             R8 R5
       17 NAMECALL                         R6 R6 K4 ["addText"]
       19 CALL                             R6 2 1
       20 DUPTABLE                         R8 K6 [{"errorMessage"}]
       21 SETTABLEKS                       R5 R8 K5 ["errorMessage"]
       23 NAMECALL                         R6 R6 K7 ["setStructuredContent"]
       25 CALL                             R6 2 1
       26 LOADB                            R8 1
       27 NAMECALL                         R6 R6 K8 ["setError"]
       29 CALL                             R6 2 1
       30 NAMECALL                         R6 R6 K9 ["build"]
       32 CALL                             R6 1 -1
       33 RETURN                           R6 -1
       34 GETUPVAL                         R5 2
       35 CALL                             R5 0 1
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K10 ["toString"]
       39 DUPTABLE                         R8 K13 [{"tag", "generationName"}]
       40 GETTABLEKS                       R9 R4 K11 ["tag"]
       42 SETTABLEKS                       R9 R8 K11 ["tag"]
       44 GETTABLEKS                       R9 R4 K12 ["generationName"]
       46 SETTABLEKS                       R9 R8 K12 ["generationName"]
       48 CALL                             R7 1 -1
       49 NAMECALL                         R5 R5 K4 ["addText"]
       51 CALL                             R5 -1 1
       52 MOVE                             R7 R4
       53 NAMECALL                         R5 R5 K7 ["setStructuredContent"]
       55 CALL                             R5 2 1
       56 NAMECALL                         R5 R5 K9 ["build"]
       58 CALL                             R5 1 -1
       59 RETURN                           R5 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bridges"]
        3 GETTABLEKS                       R1 R1 K1 ["TextureGen"]
        5 GETTABLEKS                       R1 R1 K2 ["createGuestContext"]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 CALL                             R1 2 1
       10 GETTABLEKS                       R1 R1 K3 ["bridge"]
       12 LOADNIL                          R2
       13 GETIMPORT                        R3 K5 [pcall]
       15 GETTABLEKS                       R4 R1 K6 ["getSelectedMeshRef"]
       17 CALL                             R3 1 2
       18 JUMPIFNOT                        R3 ; [+19]
       19 JUMPIFNOT                        R4 ; [+18]
       20 DUPTABLE                         R5 K11 [{"uniqueId", "name", "className", "isValid"}]
       21 GETTABLEKS                       R6 R4 K7 ["uniqueId"]
       23 SETTABLEKS                       R6 R5 K7 ["uniqueId"]
       25 GETTABLEKS                       R6 R4 K8 ["name"]
       27 SETTABLEKS                       R6 R5 K8 ["name"]
       29 GETTABLEKS                       R6 R4 K9 ["className"]
       31 SETTABLEKS                       R6 R5 K9 ["className"]
       33 GETTABLEKS                       R6 R4 K12 ["isTextureable"]
       35 SETTABLEKS                       R6 R5 K10 ["isValid"]
       37 MOVE                             R2 R5
       38 NEWTABLE                         R5 0 3
       40 DUPTABLE                         R6 K17 [{["name"], ["inputType"], ["initialValue"], ["required"] = True}]
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R7 R7 K18 ["SelectedInstanceRef"]
       44 SETTABLEKS                       R7 R6 K8 ["name"]
       46 GETUPVAL                         R7 2
       47 GETTABLEKS                       R7 R7 K19 ["Instance"]
       49 SETTABLEKS                       R7 R6 K13 ["inputType"]
       51 SETTABLEKS                       R2 R6 K14 ["initialValue"]
       53 DUPTABLE                         R7 K20 [{"name", "inputType", "initialValue"}]
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R8 R8 K21 ["TextPrompt"]
       57 SETTABLEKS                       R8 R7 K8 ["name"]
       59 GETUPVAL                         R8 2
       60 GETTABLEKS                       R8 R8 K22 ["String"]
       62 SETTABLEKS                       R8 R7 K13 ["inputType"]
       64 GETUPVAL                         R8 3
       65 SETTABLEKS                       R8 R7 K14 ["initialValue"]
       67 DUPTABLE                         R8 K20 [{"name", "inputType", "initialValue"}]
       68 GETUPVAL                         R9 1
       69 GETTABLEKS                       R9 R9 K23 ["HintImage"]
       71 SETTABLEKS                       R9 R8 K8 ["name"]
       73 GETUPVAL                         R9 2
       74 GETTABLEKS                       R9 R9 K24 ["Image"]
       76 SETTABLEKS                       R9 R8 K13 ["inputType"]
       78 GETUPVAL                         R9 4
       79 SETTABLEKS                       R9 R8 K14 ["initialValue"]
       81 SETLIST                          R5 R6 3 [1]
       83 GETUPVAL                         R6 5
       84 GETTABLEKS                       R6 R6 K25 ["FFlagAssistantTextureGenModelSelection"]
       86 JUMPIFNOT                        R6 ; [+40]
       87 DUPTABLE                         R8 K27 [{"name", "inputType", "initialValue", "options"}]
       88 GETUPVAL                         R9 1
       89 GETTABLEKS                       R9 R9 K28 ["Mode"]
       91 SETTABLEKS                       R9 R8 K8 ["name"]
       93 GETUPVAL                         R9 2
       94 GETTABLEKS                       R9 R9 K29 ["Option"]
       96 SETTABLEKS                       R9 R8 K13 ["inputType"]
       98 GETUPVAL                         R9 6
       99 GETTABLEKS                       R9 R9 K30 ["MODE"]
      101 GETTABLEKS                       R9 R9 K31 ["Quality"]
      103 SETTABLEKS                       R9 R8 K14 ["initialValue"]
      105 NEWTABLE                         R9 0 2
      107 GETUPVAL                         R10 6
      108 GETTABLEKS                       R10 R10 K30 ["MODE"]
      110 GETTABLEKS                       R10 R10 K32 ["Fast"]
      112 GETUPVAL                         R11 6
      113 GETTABLEKS                       R11 R11 K30 ["MODE"]
      115 GETTABLEKS                       R11 R11 K31 ["Quality"]
      117 SETLIST                          R9 R10 2 [1]
      119 SETTABLEKS                       R9 R8 K26 ["options"]
      121 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      123 MOVE                             R7 R5
      124 GETIMPORT                        R6 K35 [table.insert]
      126 CALL                             R6 2 0
      127 DUPTABLE                         R6 K39 [{"formId", "fields", "validation"}]
      128 GETUPVAL                         R7 7
      129 GETTABLEKS                       R7 R7 K36 ["formId"]
      131 SETTABLEKS                       R7 R6 K36 ["formId"]
      133 SETTABLEKS                       R5 R6 K37 ["fields"]
      135 GETUPVAL                         R7 8
      136 DUPTABLE                         R8 K42 [{"kind", "rules"}]
      137 GETUPVAL                         R9 9
      138 GETTABLEKS                       R9 R9 K43 ["All"]
      140 SETTABLEKS                       R9 R8 K40 ["kind"]
      142 NEWTABLE                         R9 0 2
      144 GETUPVAL                         R10 8
      145 DUPTABLE                         R11 K42 [{"kind", "rules"}]
      146 GETUPVAL                         R12 9
      147 GETTABLEKS                       R12 R12 K44 ["Any"]
      149 SETTABLEKS                       R12 R11 K40 ["kind"]
      151 NEWTABLE                         R12 0 2
      153 GETUPVAL                         R13 8
      154 DUPTABLE                         R14 K46 [{"kind", "field"}]
      155 GETUPVAL                         R15 9
      156 GETTABLEKS                       R15 R15 K47 ["NonEmpty"]
      158 SETTABLEKS                       R15 R14 K40 ["kind"]
      160 GETUPVAL                         R15 1
      161 GETTABLEKS                       R15 R15 K21 ["TextPrompt"]
      163 SETTABLEKS                       R15 R14 K45 ["field"]
      165 CALL                             R13 1 1
      166 GETUPVAL                         R14 8
      167 DUPTABLE                         R15 K46 [{"kind", "field"}]
      168 GETUPVAL                         R16 9
      169 GETTABLEKS                       R16 R16 K47 ["NonEmpty"]
      171 SETTABLEKS                       R16 R15 K40 ["kind"]
      173 GETUPVAL                         R16 1
      174 GETTABLEKS                       R16 R16 K23 ["HintImage"]
      176 SETTABLEKS                       R16 R15 K45 ["field"]
      178 CALL                             R14 1 -1
      179 SETLIST                          R12 R13 -1 [1]
      181 SETTABLEKS                       R12 R11 K41 ["rules"]
      183 CALL                             R10 1 1
      184 GETUPVAL                         R11 8
      185 DUPTABLE                         R12 K49 [{"kind", "rule"}]
      186 GETUPVAL                         R13 9
      187 GETTABLEKS                       R13 R13 K50 ["Not"]
      189 SETTABLEKS                       R13 R12 K40 ["kind"]
      191 GETUPVAL                         R13 8
      192 DUPTABLE                         R14 K53 [{["kind"], ["field"], ["value"] = False}]
      193 GETUPVAL                         R15 9
      194 GETTABLEKS                       R15 R15 K54 ["Equals"]
      196 SETTABLEKS                       R15 R14 K40 ["kind"]
      198 GETUPVAL                         R15 1
      199 GETTABLEKS                       R15 R15 K55 ["SelectedInstanceRefIsValid"]
      201 SETTABLEKS                       R15 R14 K45 ["field"]
      203 CALL                             R13 1 1
      204 SETTABLEKS                       R13 R12 K48 ["rule"]
      206 CALL                             R11 1 -1
      207 SETLIST                          R9 R10 -1 [1]
      209 SETTABLEKS                       R9 R8 K41 ["rules"]
      211 CALL                             R7 1 1
      212 SETTABLEKS                       R7 R6 K38 ["validation"]
      214 DUPTABLE                         R7 K57 [{"name", "arguments"}]
      215 GETUPVAL                         R8 10
      216 GETTABLEKS                       R8 R8 K58 ["AskInput"]
      218 SETTABLEKS                       R8 R7 K8 ["name"]
      220 SETTABLEKS                       R6 R7 K56 ["arguments"]
      222 RETURN                           R7 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["readAskInputValues"]
        3 LENGTH                           R3 R0
        4 GETTABLE                         R2 R0 R3
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["resolveUri"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K2 ["HintImage"]
       12 GETTABLE                         R3 R1 R4
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K3 ["Mode"]
       17 GETTABLE                         R3 R1 R4
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R5 R5 K4 ["FFlagAssistantTextureGenModelSelection"]
       21 JUMPIFNOT                        R5 ; [+9]
       22 FASTCALL1                        TYPEOF R3 ; [+3]
       23 MOVE                             R6 R3
       24 GETIMPORT                        R5 K6 [typeof]
       26 CALL                             R5 1 1
       27 JUMPIFNOTEQKS                    R5 K7 ["string"] ; [+3]
       29 MOVE                             R4 R3
       30 JUMP                             ; [+1]
       31 LOADNIL                          R4
       32 DUPTABLE                         R5 K14 [{["textPrompt"], ["hintImage"], ["isManualRun"] = True, ["selectedInstanceRef"], ["model"]}]
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R7 R7 K15 ["TextPrompt"]
       36 GETTABLE                         R6 R1 R7
       37 SETTABLEKS                       R6 R5 K8 ["textPrompt"]
       39 SETTABLEKS                       R2 R5 K9 ["hintImage"]
       41 GETUPVAL                         R7 2
       42 GETTABLEKS                       R7 R7 K16 ["SelectedInstanceRef"]
       44 GETTABLE                         R6 R1 R7
       45 SETTABLEKS                       R6 R5 K12 ["selectedInstanceRef"]
       47 SETTABLEKS                       R4 R5 K13 ["model"]
       49 DUPTABLE                         R6 K19 [{"name", "arguments"}]
       50 GETUPVAL                         R7 4
       51 GETTABLEKS                       R7 R7 K20 ["TextureGen"]
       53 SETTABLEKS                       R7 R6 K17 ["name"]
       55 SETTABLEKS                       R5 R6 K18 ["arguments"]
       57 RETURN                           R6 1

PROTO_10:
        0 JUMPIFNOT                        R1 ; [+6]
        1 LENGTH                           R3 R1
        2 LOADN                            R4 0
        3 JUMPIFNOTLT                      R4 R3 ; [+3]
        5 GETTABLEN                        R2 R1 1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R2
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          UPVAL U7
       19 CAPTURE                          UPVAL U8
       20 DUPCLOSURE                       R4 K0 [PROTO_9]
       21 CAPTURE                          UPVAL U9
       22 CAPTURE                          UPVAL U10
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U8
       26 NEWTABLE                         R5 0 2
       28 MOVE                             R6 R3
       29 MOVE                             R7 R4
       30 SETLIST                          R5 R6 2 [1]
       32 RETURN                           R5 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["TextureGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_12:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_13:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 NEWCLOSURE                       R2 P1
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U4
        9 GETUPVAL                         R3 5
       10 GETTABLEKS                       R3 R3 K0 ["define"]
       12 CALL                             R3 0 1
       13 GETUPVAL                         R5 6
       14 GETTABLEKS                       R5 R5 K1 ["TextureGen"]
       16 NAMECALL                         R3 R3 K2 ["setName"]
       18 CALL                             R3 2 1
       19 LOADK                            R5 K3 ["Re-textures an existing mesh using AI, given a text prompt describing the desired look. Requires a source MeshPart or Model. Replaces the source in place."]
       20 NAMECALL                         R3 R3 K4 ["setDescription"]
       22 CALL                             R3 2 1
       23 LOADK                            R5 K5 ["textPrompt"]
       24 DUPTABLE                         R6 K10 [{["type"] = "string", ["description"] = "Text description of the desired texture/appearance, e.g. \"rusty metal\"."}]
       25 NAMECALL                         R3 R3 K11 ["addArgument"]
       27 CALL                             R3 3 1
       28 LOADK                            R5 K12 ["hintImage"]
       29 DUPTABLE                         R6 K15 [{["type"] = "object", ["description"] = "Optional reference image guiding the texture style. When provided, textPrompt may be an empty string."}]
       30 NAMECALL                         R3 R3 K16 ["addOptionalArgument"]
       32 CALL                             R3 3 1
       33 LOADK                            R5 K17 ["instance_path"]
       34 DUPTABLE                         R6 K19 [{["type"] = "string", ["description"] = "Full Studio path to the source MeshPart or Model, e.g. \"Workspace.Model1.Part2\". Resolved directly — no live Studio selection required. If omitted, falls back to the current Studio selection (which must be exactly one MeshPart or Model)."}]
       35 NAMECALL                         R3 R3 K16 ["addOptionalArgument"]
       37 CALL                             R3 3 1
       38 GETUPVAL                         R4 7
       39 GETTABLEKS                       R4 R4 K20 ["FFlagAssistantTextureGenModelSelection"]
       41 JUMPIFNOT                        R4 ; [+21]
       42 LOADK                            R6 K21 ["model"]
       43 DUPTABLE                         R7 K24 [{["type"] = "string", ["enum"], ["description"] = "Generation mode. \"Fast\" trades quality for speed. \"Quality\" (default) is a research preview that only supports a single-MeshPart source and can vary in results."}]
       44 NEWTABLE                         R8 0 2
       46 GETUPVAL                         R9 2
       47 GETTABLEKS                       R9 R9 K25 ["MODE"]
       49 GETTABLEKS                       R9 R9 K26 ["Fast"]
       51 GETUPVAL                         R10 2
       52 GETTABLEKS                       R10 R10 K25 ["MODE"]
       54 GETTABLEKS                       R10 R10 K27 ["Quality"]
       56 SETLIST                          R8 R9 2 [1]
       58 SETTABLEKS                       R8 R7 K22 ["enum"]
       60 NAMECALL                         R4 R3 K16 ["addOptionalArgument"]
       62 CALL                             R4 3 0
       63 DUPTABLE                         R6 K35 [{["title"] = "Texture Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       64 NAMECALL                         R4 R3 K36 ["setAnnotations"]
       66 CALL                             R4 2 1
       67 MOVE                             R6 R2
       68 NAMECALL                         R4 R4 K37 ["setHandler"]
       70 CALL                             R4 2 1
       71 NAMECALL                         R4 R4 K38 ["build"]
       73 CALL                             R4 1 1
       74 NEWCLOSURE                       R5 P2
       75 CAPTURE                          VAL R0
       76 CAPTURE                          UPVAL U8
       77 CAPTURE                          UPVAL U9
       78 CAPTURE                          UPVAL U7
       79 CAPTURE                          UPVAL U2
       80 CAPTURE                          UPVAL U10
       81 CAPTURE                          UPVAL U11
       82 CAPTURE                          UPVAL U12
       83 CAPTURE                          UPVAL U6
       84 CAPTURE                          UPVAL U13
       85 CAPTURE                          UPVAL U14
       86 DUPTABLE                         R6 K43 [{["command"] = "generate_texture", ["getDescription"], ["runToolChain"]}]
       87 DUPCLOSURE                       R7 K44 [PROTO_11]
       88 CAPTURE                          UPVAL U15
       89 SETTABLEKS                       R7 R6 K41 ["getDescription"]
       91 SETTABLEKS                       R5 R6 K42 ["runToolChain"]
       93 DUPTABLE                         R7 K49 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
       94 SETTABLEKS                       R4 R7 K45 ["definition"]
       96 GETUPVAL                         R9 7
       97 GETTABLEKS                       R9 R9 K50 ["FFlagAssistantTextureGenTool"]
       99 JUMPIFNOT                        R9 ; [+6]
      100 NEWTABLE                         R8 0 1
      102 MOVE                             R9 R6
      103 SETLIST                          R8 R9 1 [1]
      105 JUMP                             ; [+1]
      106 LOADNIL                          R8
      107 SETTABLEKS                       R8 R7 K46 ["slashCommands"]
      109 DUPCLOSURE                       R8 K51 [PROTO_12]
      110 SETTABLEKS                       R8 R7 K47 ["getPreExecuteWarning"]
      112 DUPTABLE                         R8 K54 [{["resetTimeoutOnProgress"] = True}]
      113 SETTABLEKS                       R8 R7 K48 ["toolCallOptions"]
      115 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["AskInput"]
       19 GETTABLEKS                       R3 R3 K12 ["AskInputTypes"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K13 ["Guest"]
       26 GETTABLEKS                       R4 R4 K14 ["Environment"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R0 K15 ["Flags"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K10 ["Util"]
       38 GETTABLEKS                       R6 R6 K16 ["ImageContentStore"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K17 ["Parent"]
       45 GETTABLEKS                       R7 R7 K18 ["ModelContextProtocol"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R0 K10 ["Util"]
       52 GETTABLEKS                       R8 R8 K19 ["SlashCommandConfiguration"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R0 K20 ["Bridges"]
       59 GETTABLEKS                       R9 R9 K21 ["createTextureGenBridge"]
       61 GETTABLEKS                       R9 R9 K22 ["TextureGenBridgeTypes"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R10 R0 K10 ["Util"]
       68 GETTABLEKS                       R10 R10 K23 ["TextureGen"]
       70 GETTABLEKS                       R10 R10 K24 ["TextureGenTypes"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K9 [require]
       75 GETTABLEKS                       R11 R0 K25 ["Tools"]
       77 GETTABLEKS                       R11 R11 K26 ["ToolTypes"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K9 [require]
       82 GETTABLEKS                       R12 R0 K10 ["Util"]
       84 GETTABLEKS                       R12 R12 K27 ["ToolUtils"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K9 [require]
       89 GETTABLEKS                       R13 R0 K28 ["Resources"]
       91 GETTABLEKS                       R13 R13 K29 ["Localization"]
       93 GETTABLEKS                       R13 R13 K30 ["Translator"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K9 [require]
       98 GETTABLEKS                       R14 R0 K31 ["Types"]
      100 CALL                             R13 1 1
      101 GETTABLEKS                       R14 R6 K10 ["Util"]
      103 GETTABLEKS                       R14 R14 K32 ["ToolBuilder"]
      105 GETTABLEKS                       R15 R6 K10 ["Util"]
      107 GETTABLEKS                       R15 R15 K33 ["ToolResult"]
      109 GETTABLEKS                       R16 R10 K34 ["ToolNames"]
      111 GETTABLEKS                       R17 R2 K35 ["INPUT_TYPE"]
      113 GETTABLEKS                       R18 R2 K36 ["RULE_KIND"]
      115 GETTABLEKS                       R19 R2 K37 ["asRule"]
      117 GETTABLEKS                       R20 R7 K38 ["Configs"]
      119 GETTABLEKS                       R20 R20 K23 ["TextureGen"]
      121 GETTABLEKS                       R21 R20 K39 ["row"]
      123 DUPCLOSURE                       R22 K40 [PROTO_0]
      124 CAPTURE                          VAL R1
      125 DUPCLOSURE                       R23 K41 [PROTO_1]
      126 DUPCLOSURE                       R24 K42 [PROTO_2]
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R23
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R9
      131 DUPCLOSURE                       R25 K43 [PROTO_13]
      132 CAPTURE                          VAL R24
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R16
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R21
      141 CAPTURE                          VAL R17
      142 CAPTURE                          VAL R20
      143 CAPTURE                          VAL R19
      144 CAPTURE                          VAL R18
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R5
      147 CAPTURE                          VAL R12
      148 RETURN                           R25 1
