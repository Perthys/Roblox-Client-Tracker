PROTO_0:
        0 LOADK                            R1 K0 ["SegmentMesh-"]
        1 GETUPVAL                         R2 0
        2 LOADB                            R4 0
        3 NAMECALL                         R2 R2 K1 ["GenerateGUID"]
        5 CALL                             R2 2 1
        6 CONCAT                           R0 R1 R2
        7 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FIntAssistantSegmentMeshMaxUserParts"]
        3 RETURN                           R0 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K2 [string.gmatch]
        4 MOVE                             R3 R0
        5 LOADK                            R4 K3 ["([^,]+)"]
        6 CALL                             R2 2 3
        7 FORGPREP                         R2
        8 GETIMPORT                        R7 K5 [string.match]
       10 MOVE                             R8 R5
       11 LOADK                            R9 K6 ["^%s*(.-)%s*$"]
       12 CALL                             R7 2 1
       13 JUMPIFNOT                        R7 ; [+9]
       14 JUMPIFEQKS                       R7 K7 [""] ; [+8]
       16 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       18 MOVE                             R9 R1
       19 MOVE                             R10 R7
       20 GETIMPORT                        R8 K10 [table.insert]
       22 CALL                             R8 2 0
       23 FORGLOOP                         R2 1 ; [-16]
       25 RETURN                           R1 1

PROTO_3:
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
       98 LOADK                            R9 K26 ["selectedInstanceRef or instance_path must be provided — mesh segmentation requires a source MeshPart or Model"]
       99 GETIMPORT                        R7 K6 [assert]
      101 CALL                             R7 2 0
      102 GETTABLEKS                       R7 R6 K7 ["uniqueId"]
      104 RETURN                           R7 1

PROTO_4:
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
       15 GETTABLEKS                       R3 R2 K6 ["parts"]
       17 LOADNIL                          R4
       18 FASTCALL1                        TYPEOF R3 ; [+3]
       19 MOVE                             R6 R3
       20 GETIMPORT                        R5 K1 [typeof]
       22 CALL                             R5 1 1
       23 JUMPIFNOTEQKS                    R5 K7 ["string"] ; [+6]
       25 GETUPVAL                         R5 0
       26 MOVE                             R6 R3
       27 CALL                             R5 1 1
       28 MOVE                             R4 R5
       29 JUMP                             ; [+16]
       30 FASTCALL1                        TYPEOF R3 ; [+3]
       31 MOVE                             R8 R3
       32 GETIMPORT                        R7 K1 [typeof]
       34 CALL                             R7 1 1
       35 JUMPIFEQKS                       R7 K2 ["table"] ; [+2]
       37 LOADB                            R6 0 +1
       38 LOADB                            R6 1
       39 FASTCALL2K                       ASSERT R6 K8 ; [+4]
       41 LOADK                            R7 K8 ["parts must be a comma-separated string or an array of part names"]
       42 GETIMPORT                        R5 K5 [assert]
       44 CALL                             R5 2 0
       45 MOVE                             R4 R3
       46 LENGTH                           R7 R4
       47 LOADN                            R8 2
       48 JUMPIFLE                         R8 R7 ; [+2]
       50 LOADB                            R6 0 +1
       51 LOADB                            R6 1
       52 LOADK                            R7 K9 ["parts must contain at least %* entries"]
       53 LOADN                            R9 2
       54 NAMECALL                         R7 R7 K10 ["format"]
       56 CALL                             R7 2 1
       57 FASTCALL2                        ASSERT R6 R7 ; [+3]
       59 GETIMPORT                        R5 K5 [assert]
       61 CALL                             R5 2 0
       62 GETUPVAL                         R5 1
       63 GETTABLEKS                       R5 R5 K11 ["FIntAssistantSegmentMeshMaxUserParts"]
       65 LENGTH                           R8 R4
       66 JUMPIFLE                         R8 R5 ; [+2]
       68 LOADB                            R7 0 +1
       69 LOADB                            R7 1
       70 LOADK                            R8 K12 ["parts must contain at most %* entries"]
       71 MOVE                             R10 R5
       72 NAMECALL                         R8 R8 K10 ["format"]
       74 CALL                             R8 2 1
       75 FASTCALL2                        ASSERT R7 R8 ; [+3]
       77 GETIMPORT                        R6 K5 [assert]
       79 CALL                             R6 2 0
       80 GETTABLEKS                       R6 R2 K13 ["isManualRun"]
       82 JUMPIFEQKNIL                     R6 ; [+16]
       84 FASTCALL1                        TYPEOF R6 ; [+3]
       85 MOVE                             R10 R6
       86 GETIMPORT                        R9 K1 [typeof]
       88 CALL                             R9 1 1
       89 JUMPIFEQKS                       R9 K14 ["boolean"] ; [+2]
       91 LOADB                            R8 0 +1
       92 LOADB                            R8 1
       93 FASTCALL2K                       ASSERT R8 K15 ; [+4]
       95 LOADK                            R9 K15 ["isManualRun must be a boolean"]
       96 GETIMPORT                        R7 K5 [assert]
       98 CALL                             R7 2 0
       99 GETUPVAL                         R7 2
      100 MOVE                             R8 R0
      101 MOVE                             R9 R1
      102 MOVE                             R10 R2
      103 CALL                             R7 3 1
      104 DUPTABLE                         R8 K18 [{"partNames", "isManualRun", "selectedUniqueId"}]
      105 SETTABLEKS                       R4 R8 K16 ["partNames"]
      107 SETTABLEKS                       R6 R8 K13 ["isManualRun"]
      109 SETTABLEKS                       R7 R8 K17 ["selectedUniqueId"]
      111 RETURN                           R8 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["generateSegmentMeshAsync"]
        3 DUPTABLE                         R1 K4 [{"requestId", "partNames", "selectedUniqueId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["requestId"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["partNames"]
       10 SETTABLEKS                       R2 R1 K2 ["partNames"]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["selectedUniqueId"]
       15 SETTABLEKS                       R2 R1 K3 ["selectedUniqueId"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertSegmentedModelAsync"]
        3 DUPTABLE                         R1 K2 [{"requestId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["requestId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bridges"]
        3 GETTABLEKS                       R1 R1 K1 ["SegmentMesh"]
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
       19 LOADK                            R4 K5 ["SegmentMesh-"]
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
       36 LOADK                            R8 K11 ["Mesh segmentation failed with error: "]
       37 FASTCALL1                        TOSTRING R5 ; [+3]
       38 MOVE                             R10 R5
       39 GETIMPORT                        R9 K13 [tostring]
       41 CALL                             R9 1 1
       42 CONCAT                           R7 R8 R9
       43 LOADN                            R8 0
       44 CALL                             R6 2 0
       45 GETIMPORT                        R6 K8 [pcall]
       47 NEWCLOSURE                       R7 P1
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R3
       50 CALL                             R6 1 2
       51 JUMPIF                           R6 ; [+19]
       52 GETIMPORT                        R8 K8 [pcall]
       54 GETTABLEKS                       R9 R1 K14 ["cancelSegmentationAsync"]
       56 DUPTABLE                         R10 K16 [{"requestId"}]
       57 SETTABLEKS                       R3 R10 K15 ["requestId"]
       59 CALL                             R8 2 0
       60 GETIMPORT                        R8 K10 [error]
       62 LOADK                            R10 K17 ["Failed to insert segmented model with error: "]
       63 FASTCALL1                        TOSTRING R7 ; [+3]
       64 MOVE                             R12 R7
       65 GETIMPORT                        R11 K13 [tostring]
       67 CALL                             R11 1 1
       68 CONCAT                           R9 R10 R11
       69 LOADN                            R10 0
       70 CALL                             R8 2 0
       71 GETIMPORT                        R8 K20 [table.concat]
       73 GETTABLEKS                       R9 R2 K21 ["partNames"]
       75 LOADK                            R10 K22 [", "]
       76 CALL                             R8 2 1
       77 DUPTABLE                         R9 K25 [{"tag", "requestId", "generationName"}]
       78 GETUPVAL                         R10 3
       79 GETTABLEKS                       R10 R10 K26 ["getLinkTag"]
       81 MOVE                             R11 R3
       82 CALL                             R10 1 1
       83 SETTABLEKS                       R10 R9 K23 ["tag"]
       85 SETTABLEKS                       R3 R9 K15 ["requestId"]
       87 SETTABLEKS                       R8 R9 K24 ["generationName"]
       89 RETURN                           R9 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["runWithProgressLoop"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["sendProgress"]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bridges"]
        3 GETTABLEKS                       R1 R1 K1 ["SegmentMesh"]
        5 GETTABLEKS                       R1 R1 K2 ["createGuestContext"]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 CALL                             R1 2 1
       10 GETTABLEKS                       R1 R1 K3 ["bridge"]
       12 LOADNIL                          R2
       13 GETIMPORT                        R3 K5 [pcall]
       15 GETTABLEKS                       R4 R1 K6 ["getSelectedMeshRef"]
       17 CALL                             R3 1 2
       18 JUMPIFNOT                        R3 ; [+2]
       19 MOVE                             R2 R4
       20 JUMP                             ; [+9]
       21 GETIMPORT                        R5 K8 [warn]
       23 LOADK                            R6 K9 ["[SegmentMesh] getSelectedMeshRef failed:"]
       24 FASTCALL1                        TOSTRING R4 ; [+3]
       25 MOVE                             R8 R4
       26 GETIMPORT                        R7 K11 [tostring]
       28 CALL                             R7 1 1
       29 CALL                             R5 2 0
       30 JUMPIFNOT                        R2 ; [+18]
       31 DUPTABLE                         R5 K16 [{"uniqueId", "name", "className", "isValid"}]
       32 GETTABLEKS                       R6 R2 K12 ["uniqueId"]
       34 SETTABLEKS                       R6 R5 K12 ["uniqueId"]
       36 GETTABLEKS                       R6 R2 K13 ["name"]
       38 SETTABLEKS                       R6 R5 K13 ["name"]
       40 GETTABLEKS                       R6 R2 K14 ["className"]
       42 SETTABLEKS                       R6 R5 K14 ["className"]
       44 GETTABLEKS                       R6 R2 K17 ["isSegmentable"]
       46 SETTABLEKS                       R6 R5 K15 ["isValid"]
       48 JUMP                             ; [+1]
       49 LOADNIL                          R5
       50 NEWTABLE                         R6 0 2
       52 DUPTABLE                         R7 K22 [{["name"], ["inputType"], ["initialValue"], ["required"] = True}]
       53 GETUPVAL                         R8 1
       54 GETTABLEKS                       R8 R8 K23 ["SelectedInstanceRef"]
       56 SETTABLEKS                       R8 R7 K13 ["name"]
       58 GETUPVAL                         R8 2
       59 GETTABLEKS                       R8 R8 K24 ["Instance"]
       61 SETTABLEKS                       R8 R7 K18 ["inputType"]
       63 SETTABLEKS                       R5 R7 K19 ["initialValue"]
       65 DUPTABLE                         R8 K29 [{["name"], ["inputType"], ["initialValue"] = , ["required"] = True, ["min"] = 2, ["max"]}]
       66 GETUPVAL                         R9 1
       67 GETTABLEKS                       R9 R9 K30 ["Parts"]
       69 SETTABLEKS                       R9 R8 K13 ["name"]
       71 GETUPVAL                         R9 2
       72 GETTABLEKS                       R9 R9 K31 ["Array"]
       74 SETTABLEKS                       R9 R8 K18 ["inputType"]
       76 GETUPVAL                         R9 3
       77 SETTABLEKS                       R9 R8 K28 ["max"]
       79 SETLIST                          R6 R7 2 [1]
       81 DUPTABLE                         R7 K35 [{"formId", "fields", "validation"}]
       82 GETUPVAL                         R8 4
       83 GETTABLEKS                       R8 R8 K32 ["formId"]
       85 SETTABLEKS                       R8 R7 K32 ["formId"]
       87 SETTABLEKS                       R6 R7 K33 ["fields"]
       89 GETUPVAL                         R8 5
       90 DUPTABLE                         R9 K38 [{"kind", "rule"}]
       91 GETUPVAL                         R10 6
       92 GETTABLEKS                       R10 R10 K39 ["Not"]
       94 SETTABLEKS                       R10 R9 K36 ["kind"]
       96 GETUPVAL                         R10 5
       97 DUPTABLE                         R11 K43 [{["kind"], ["field"], ["value"] = False}]
       98 GETUPVAL                         R12 6
       99 GETTABLEKS                       R12 R12 K44 ["Equals"]
      101 SETTABLEKS                       R12 R11 K36 ["kind"]
      103 GETUPVAL                         R12 1
      104 GETTABLEKS                       R12 R12 K45 ["SelectedInstanceRefIsValid"]
      106 SETTABLEKS                       R12 R11 K40 ["field"]
      108 CALL                             R10 1 1
      109 SETTABLEKS                       R10 R9 K37 ["rule"]
      111 CALL                             R8 1 1
      112 SETTABLEKS                       R8 R7 K34 ["validation"]
      114 DUPTABLE                         R8 K47 [{"name", "arguments"}]
      115 GETUPVAL                         R9 7
      116 GETTABLEKS                       R9 R9 K48 ["AskInput"]
      118 SETTABLEKS                       R9 R8 K13 ["name"]
      120 SETTABLEKS                       R7 R8 K46 ["arguments"]
      122 RETURN                           R8 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["readAskInputValues"]
        3 LENGTH                           R3 R0
        4 GETTABLE                         R2 R0 R3
        5 CALL                             R1 1 1
        6 DUPTABLE                         R2 K5 [{["parts"], ["isManualRun"] = True, ["selectedInstanceRef"]}]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K6 ["Parts"]
       10 GETTABLE                         R3 R1 R4
       11 SETTABLEKS                       R3 R2 K1 ["parts"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K7 ["SelectedInstanceRef"]
       16 GETTABLE                         R3 R1 R4
       17 SETTABLEKS                       R3 R2 K4 ["selectedInstanceRef"]
       19 DUPTABLE                         R3 K10 [{"name", "arguments"}]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K11 ["SegmentMesh"]
       23 SETTABLEKS                       R4 R3 K8 ["name"]
       25 SETTABLEKS                       R2 R3 K9 ["arguments"]
       27 RETURN                           R3 1

PROTO_12:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 DUPCLOSURE                       R2 K0 [PROTO_11]
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U7
       13 NEWTABLE                         R3 0 2
       15 MOVE                             R4 R1
       16 MOVE                             R5 R2
       17 SETLIST                          R3 R4 2 [1]
       19 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["SegmentMesh"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_14:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_15:
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
       10 GETTABLEKS                       R3 R3 K0 ["FIntAssistantSegmentMeshMaxUserParts"]
       12 GETUPVAL                         R4 6
       13 GETTABLEKS                       R4 R4 K1 ["define"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R6 7
       17 GETTABLEKS                       R6 R6 K2 ["SegmentMesh"]
       19 NAMECALL                         R4 R4 K3 ["setName"]
       21 CALL                             R4 2 1
       22 LOADK                            R6 K4 ["Segments an existing mesh into named sub-parts using AI. Requires a source MeshPart or Model and up to %* comma-separated part names (e.g. \"head, body, tail\"). Returns a new Model containing the segmented parts, inserted as a sibling of the source."]
       23 MOVE                             R8 R3
       24 NAMECALL                         R6 R6 K5 ["format"]
       26 CALL                             R6 2 1
       27 NAMECALL                         R4 R4 K6 ["setDescription"]
       29 CALL                             R4 2 1
       30 LOADK                            R6 K7 ["parts"]
       31 DUPTABLE                         R7 K11 [{["type"] = "string", ["description"]}]
       32 LOADK                            R8 K12 ["Comma-separated list of part names to segment the mesh into (max %*). Example: \"head, body, tail\"."]
       33 MOVE                             R10 R3
       34 NAMECALL                         R8 R8 K5 ["format"]
       36 CALL                             R8 2 1
       37 SETTABLEKS                       R8 R7 K10 ["description"]
       39 NAMECALL                         R4 R4 K13 ["addArgument"]
       41 CALL                             R4 3 1
       42 LOADK                            R6 K14 ["instance_path"]
       43 DUPTABLE                         R7 K16 [{["type"] = "string", ["description"] = "Full Studio path to the source MeshPart or Model, e.g. \"Workspace.Model1.Part2\". Resolved directly — no live Studio selection required. If omitted, falls back to the current Studio selection (which must be exactly one MeshPart or Model)."}]
       44 NAMECALL                         R4 R4 K17 ["addOptionalArgument"]
       46 CALL                             R4 3 1
       47 DUPTABLE                         R6 K25 [{["title"] = "Mesh Segmentation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       48 NAMECALL                         R4 R4 K26 ["setAnnotations"]
       50 CALL                             R4 2 1
       51 MOVE                             R6 R2
       52 NAMECALL                         R4 R4 K27 ["setHandler"]
       54 CALL                             R4 2 1
       55 NAMECALL                         R4 R4 K28 ["build"]
       57 CALL                             R4 1 1
       58 NEWCLOSURE                       R5 P2
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U8
       61 CAPTURE                          UPVAL U9
       62 CAPTURE                          VAL R3
       63 CAPTURE                          UPVAL U10
       64 CAPTURE                          UPVAL U11
       65 CAPTURE                          UPVAL U12
       66 CAPTURE                          UPVAL U7
       67 CAPTURE                          UPVAL U13
       68 DUPTABLE                         R6 K33 [{["command"] = "segment_mesh", ["getDescription"], ["runToolChain"]}]
       69 DUPCLOSURE                       R7 K34 [PROTO_13]
       70 CAPTURE                          UPVAL U14
       71 SETTABLEKS                       R7 R6 K31 ["getDescription"]
       73 SETTABLEKS                       R5 R6 K32 ["runToolChain"]
       75 DUPTABLE                         R7 K39 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
       76 SETTABLEKS                       R4 R7 K35 ["definition"]
       78 GETUPVAL                         R9 5
       79 GETTABLEKS                       R9 R9 K40 ["FFlagAssistantSegmentMeshTool"]
       81 JUMPIFNOT                        R9 ; [+6]
       82 NEWTABLE                         R8 0 1
       84 MOVE                             R9 R6
       85 SETLIST                          R8 R9 1 [1]
       87 JUMP                             ; [+1]
       88 LOADNIL                          R8
       89 SETTABLEKS                       R8 R7 K36 ["slashCommands"]
       91 DUPCLOSURE                       R8 K41 [PROTO_14]
       92 SETTABLEKS                       R8 R7 K37 ["getPreExecuteWarning"]
       94 DUPTABLE                         R8 K44 [{["resetTimeoutOnProgress"] = True}]
       95 SETTABLEKS                       R8 R7 K38 ["toolCallOptions"]
       97 RETURN                           R7 1

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
       36 GETTABLEKS                       R6 R0 K16 ["Parent"]
       38 GETTABLEKS                       R6 R6 K17 ["ModelContextProtocol"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K10 ["Util"]
       45 GETTABLEKS                       R7 R7 K18 ["SlashCommandConfiguration"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R0 K19 ["Tools"]
       52 GETTABLEKS                       R8 R8 K20 ["ToolTypes"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R0 K10 ["Util"]
       59 GETTABLEKS                       R9 R9 K21 ["ToolUtils"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETTABLEKS                       R10 R0 K22 ["Resources"]
       66 GETTABLEKS                       R10 R10 K23 ["Localization"]
       68 GETTABLEKS                       R10 R10 K24 ["Translator"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K9 [require]
       73 GETTABLEKS                       R11 R0 K25 ["Types"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K9 [require]
       78 GETTABLEKS                       R12 R0 K26 ["Bridges"]
       80 GETTABLEKS                       R12 R12 K27 ["createSegmentMeshBridge"]
       82 GETTABLEKS                       R12 R12 K28 ["SegmentMeshBridgeTypes"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K9 [require]
       87 GETTABLEKS                       R13 R0 K10 ["Util"]
       89 GETTABLEKS                       R13 R13 K29 ["SegmentMesh"]
       91 GETTABLEKS                       R13 R13 K30 ["SegmentMeshTypes"]
       93 CALL                             R12 1 1
       94 GETTABLEKS                       R13 R5 K10 ["Util"]
       96 GETTABLEKS                       R13 R13 K31 ["ToolBuilder"]
       98 GETTABLEKS                       R14 R5 K10 ["Util"]
      100 GETTABLEKS                       R14 R14 K32 ["ToolResult"]
      102 GETTABLEKS                       R15 R7 K33 ["ToolNames"]
      104 GETTABLEKS                       R16 R2 K34 ["INPUT_TYPE"]
      106 GETTABLEKS                       R17 R2 K35 ["RULE_KIND"]
      108 GETTABLEKS                       R18 R2 K36 ["asRule"]
      110 GETTABLEKS                       R19 R6 K37 ["Configs"]
      112 GETTABLEKS                       R19 R19 K29 ["SegmentMesh"]
      114 GETTABLEKS                       R20 R19 K38 ["row"]
      116 DUPCLOSURE                       R21 K39 [PROTO_0]
      117 CAPTURE                          VAL R1
      118 DUPCLOSURE                       R22 K40 [PROTO_1]
      119 CAPTURE                          VAL R4
      120 DUPCLOSURE                       R23 K41 [PROTO_2]
      121 DUPCLOSURE                       R24 K42 [PROTO_3]
      122 DUPCLOSURE                       R25 K43 [PROTO_4]
      123 CAPTURE                          VAL R23
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R24
      126 DUPCLOSURE                       R26 K44 [PROTO_15]
      127 CAPTURE                          VAL R25
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R20
      136 CAPTURE                          VAL R16
      137 CAPTURE                          VAL R19
      138 CAPTURE                          VAL R18
      139 CAPTURE                          VAL R17
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R9
      142 RETURN                           R26 1
