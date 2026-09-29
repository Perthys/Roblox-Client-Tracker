PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 FASTCALL1                        ASSERT R1 ; [+2]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["isAvatarTypeEqual"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["current"]
       13 CALL                             R1 1 1
       14 NOT                              R0 R1
       15 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 FASTCALL1                        ASSERT R1 ; [+2]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["isEqualToCurrentSettings"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["current"]
       13 CALL                             R1 1 1
       14 NOT                              R0 R1
       15 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["onAvatarSettingsPublish"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["discardSettings"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 2
        8 CALL                             R0 0 1
        9 JUMPIFNOT                        R0 ; [+18]
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K2 ["current"]
       13 FASTCALL1                        ASSERT R1 ; [+2]
       14 GETIMPORT                        R0 K4 [assert]
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 4
       18 GETTABLEKS                       R0 R0 K5 ["discardUnpublishedSettings"]
       20 GETUPVAL                         R1 3
       21 GETTABLEKS                       R1 R1 K2 ["current"]
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 5
       25 NEWTABLE                         R1 0 0
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["initialize"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+14]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["current"]
        4 FASTCALL1                        ASSERT R2 ; [+2]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["saveUnpublishedSettings"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K0 ["current"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K4 ["set"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 3
       21 NEWTABLE                         R2 0 0
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 FASTCALL1                        ASSERT R1 ; [+2]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K3 ["saveUnpublishedSettings"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["current"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K4 ["set"]
       17 LOADB                            R1 1
       18 CALL                             R0 1 0
       19 GETUPVAL                         R0 3
       20 NEWTABLE                         R1 0 0
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 FASTCALL1                        ASSERT R1 ; [+2]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K3 ["saveUnpublishedSettings"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["current"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 2
       15 NEWTABLE                         R1 0 0
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 FASTCALL1                        ASSERT R1 ; [+2]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K3 ["hasUnpublishedChanges"]
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K4 ["isEqualToCurrentSettings"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K0 ["current"]
       17 CALL                             R4 1 1
       18 NOT                              R3 R4
       19 NAMECALL                         R0 R0 K5 ["Invoke"]
       21 CALL                             R0 3 0
       22 GETUPVAL                         R0 1
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R2 R2 K6 ["hasUnpublishedAvatarTypeChanges"]
       26 GETUPVAL                         R4 3
       27 GETTABLEKS                       R4 R4 K7 ["isAvatarTypeEqual"]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K0 ["current"]
       32 CALL                             R4 1 1
       33 NOT                              R3 R4
       34 NAMECALL                         R0 R0 K5 ["Invoke"]
       36 CALL                             R0 3 0
       37 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["onInitializationStarted"]
        4 DUPCLOSURE                       R3 K1 [PROTO_4]
        5 CAPTURE                          UPVAL U2
        6 NAMECALL                         R0 R0 K2 ["OnInvoke"]
        8 CALL                             R0 3 0
        9 GETUPVAL                         R0 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K3 ["databaseLoaded"]
       13 NEWCLOSURE                       R3 P1
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 NAMECALL                         R0 R0 K2 ["OnInvoke"]
       20 CALL                             R0 3 0
       21 GETUPVAL                         R0 0
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K4 ["refreshPluginState"]
       25 NEWCLOSURE                       R3 P2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U5
       30 NAMECALL                         R0 R0 K2 ["OnInvoke"]
       32 CALL                             R0 3 0
       33 GETUPVAL                         R0 0
       34 GETUPVAL                         R2 1
       35 GETTABLEKS                       R2 R2 K5 ["onSettingsPublished"]
       37 NEWCLOSURE                       R3 P3
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U5
       41 NAMECALL                         R0 R0 K2 ["OnInvoke"]
       43 CALL                             R0 3 0
       44 GETUPVAL                         R0 6
       45 CALL                             R0 0 1
       46 JUMPIFNOT                        R0 ; [+16]
       47 GETUPVAL                         R0 0
       48 GETUPVAL                         R2 1
       49 GETTABLEKS                       R2 R2 K6 ["hasPlaceOverridableChanges"]
       51 NEWCLOSURE                       R3 P4
       52 CAPTURE                          UPVAL U7
       53 NAMECALL                         R0 R0 K2 ["OnInvoke"]
       55 CALL                             R0 3 0
       56 GETUPVAL                         R0 0
       57 GETUPVAL                         R2 1
       58 GETTABLEKS                       R2 R2 K7 ["requestPlaceOverridableChangesStatus"]
       60 NAMECALL                         R0 R0 K8 ["Invoke"]
       62 CALL                             R0 2 0
       63 GETUPVAL                         R0 0
       64 GETUPVAL                         R2 1
       65 GETTABLEKS                       R2 R2 K9 ["requestUnpublishedChangesStatus"]
       67 NEWCLOSURE                       R3 P5
       68 CAPTURE                          UPVAL U3
       69 CAPTURE                          UPVAL U0
       70 CAPTURE                          UPVAL U1
       71 CAPTURE                          UPVAL U2
       72 NAMECALL                         R0 R0 K2 ["OnInvoke"]
       74 CALL                             R0 3 0
       75 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R4 R1 K1 ["settings"]
        7 JUMPIFNOTEQKNIL                  R4 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       13 LOADK                            R4 K2 ["Settings must not be nil in AvatarSettingsContext"]
       14 GETIMPORT                        R2 K4 [assert]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K0 ["useContext"]
       20 GETUPVAL                         R3 2
       21 CALL                             R2 1 1
       22 GETUPVAL                         R3 3
       23 NAMECALL                         R3 R3 K5 ["use"]
       25 CALL                             R3 1 1
       26 NAMECALL                         R3 R3 K6 ["get"]
       28 CALL                             R3 1 1
       29 GETUPVAL                         R4 4
       30 LOADB                            R5 0
       31 CALL                             R4 1 1
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K7 ["useState"]
       35 LOADB                            R6 0
       36 CALL                             R5 1 2
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R7 R7 K7 ["useState"]
       40 NEWTABLE                         R8 0 0
       42 CALL                             R7 1 2
       43 GETUPVAL                         R9 0
       44 GETTABLEKS                       R9 R9 K8 ["useRef"]
       46 MOVE                             R10 R1
       47 CALL                             R9 1 1
       48 SETTABLEKS                       R1 R9 K9 ["current"]
       50 GETTABLEKS                       R12 R9 K9 ["current"]
       52 JUMPIFNOTEQKNIL                  R12 ; [+2]
       54 LOADB                            R11 0 +1
       55 LOADB                            R11 1
       56 FASTCALL2K                       ASSERT R11 K10 ; [+4]
       58 LOADK                            R12 K10 ["AvatarSettingsContext must not be nil"]
       59 GETIMPORT                        R10 K4 [assert]
       61 CALL                             R10 2 0
       62 DUPTABLE                         R10 K12 [{"content"}]
       63 DUPTABLE                         R11 K21 [{["databaseLoaded"], ["canPublish"] = False, ["canCreatePlaceSettings"] = False, ["isAvatarTypeOutOfSync"], ["isSettingOutOfSync"], ["saveUnpublishedSettings"], ["discardUnpublishedSettings"]}]
       64 SETTABLEKS                       R4 R11 K13 ["databaseLoaded"]
       66 NEWCLOSURE                       R12 P0
       67 CAPTURE                          VAL R9
       68 CAPTURE                          UPVAL U5
       69 SETTABLEKS                       R12 R11 K17 ["isAvatarTypeOutOfSync"]
       71 NEWCLOSURE                       R12 P1
       72 CAPTURE                          VAL R9
       73 CAPTURE                          UPVAL U5
       74 SETTABLEKS                       R12 R11 K18 ["isSettingOutOfSync"]
       76 NEWCLOSURE                       R12 P2
       77 CAPTURE                          VAL R3
       78 CAPTURE                          UPVAL U6
       79 SETTABLEKS                       R12 R11 K19 ["saveUnpublishedSettings"]
       81 NEWCLOSURE                       R12 P3
       82 CAPTURE                          VAL R3
       83 CAPTURE                          UPVAL U6
       84 CAPTURE                          UPVAL U7
       85 CAPTURE                          VAL R9
       86 CAPTURE                          UPVAL U5
       87 CAPTURE                          VAL R8
       88 SETTABLEKS                       R12 R11 K20 ["discardUnpublishedSettings"]
       90 SETTABLEKS                       R11 R10 K11 ["content"]
       92 GETTABLEKS                       R13 R10 K11 ["content"]
       94 JUMPIFNOTEQKNIL                  R13 ; [+2]
       96 LOADB                            R12 0 +1
       97 LOADB                            R12 1
       98 FASTCALL2K                       ASSERT R12 K22 ; [+4]
      100 LOADK                            R13 K22 ["Content must not be nil in PublishContext"]
      101 GETIMPORT                        R11 K4 [assert]
      103 CALL                             R11 2 0
      104 GETUPVAL                         R12 5
      105 GETTABLEKS                       R12 R12 K23 ["isEqualToCurrentSettings"]
      107 MOVE                             R13 R1
      108 CALL                             R12 1 1
      109 NOT                              R11 R12
      110 GETUPVAL                         R13 5
      111 GETTABLEKS                       R13 R13 K24 ["isAvatarTypeEqual"]
      113 MOVE                             R14 R1
      114 CALL                             R13 1 1
      115 NOT                              R12 R13
      116 GETUPVAL                         R15 6
      117 GETTABLEKS                       R15 R15 K25 ["hasUnpublishedChanges"]
      119 MOVE                             R16 R11
      120 NAMECALL                         R13 R3 K26 ["Invoke"]
      122 CALL                             R13 3 0
      123 GETUPVAL                         R15 6
      124 GETTABLEKS                       R15 R15 K27 ["hasUnpublishedAvatarTypeChanges"]
      126 MOVE                             R16 R12
      127 NAMECALL                         R13 R3 K26 ["Invoke"]
      129 CALL                             R13 3 0
      130 GETUPVAL                         R13 0
      131 GETTABLEKS                       R13 R13 K28 ["useEffect"]
      133 NEWCLOSURE                       R14 P4
      134 CAPTURE                          VAL R3
      135 CAPTURE                          UPVAL U6
      136 CAPTURE                          UPVAL U5
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R8
      140 CAPTURE                          UPVAL U8
      141 CAPTURE                          VAL R6
      142 NEWTABLE                         R15 0 0
      144 CALL                             R13 2 0
      145 GETTABLEKS                       R13 R10 K11 ["content"]
      147 GETTABLEKS                       R15 R4 K29 ["value"]
      149 AND                              R14 R15 R11
      150 SETTABLEKS                       R14 R13 K14 ["canPublish"]
      152 GETTABLEKS                       R13 R10 K11 ["content"]
      154 GETTABLEKS                       R15 R4 K29 ["value"]
      156 AND                              R14 R15 R5
      157 SETTABLEKS                       R14 R13 K16 ["canCreatePlaceSettings"]
      159 GETUPVAL                         R13 9
      160 CALL                             R13 0 1
      161 JUMPIFNOT                        R13 ; [+14]
      162 GETTABLEKS                       R13 R2 K30 ["currentGameId"]
      164 JUMPIFNOTEQKN                    R13 K31 [0] ; [+11]
      166 GETTABLEKS                       R13 R10 K11 ["content"]
      168 LOADB                            R14 0
      169 SETTABLEKS                       R14 R13 K14 ["canPublish"]
      171 GETTABLEKS                       R13 R10 K11 ["content"]
      173 LOADB                            R14 0
      174 SETTABLEKS                       R14 R13 K16 ["canCreatePlaceSettings"]
      176 GETUPVAL                         R13 10
      177 GETUPVAL                         R14 11
      178 GETTABLEKS                       R14 R14 K32 ["Provider"]
      180 DUPTABLE                         R15 K33 [{"value"}]
      181 SETTABLEKS                       R10 R15 K29 ["value"]
      183 GETTABLEKS                       R16 R0 K34 ["children"]
      185 CALL                             R13 3 -1
      186 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R2 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Components"]
       24 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       26 GETTABLEKS                       R3 R3 K10 ["EnableAvatarSettingsContext"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K11 ["Packages"]
       33 GETTABLEKS                       R4 R4 K12 ["Framework"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K6 ["Src"]
       40 GETTABLEKS                       R5 R5 K7 ["Components"]
       42 GETTABLEKS                       R5 R5 K8 ["Contexts"]
       44 GETTABLEKS                       R5 R5 K13 ["PublishProvider"]
       46 GETTABLEKS                       R5 R5 K14 ["PublishContext"]
       48 CALL                             R4 1 1
       49 GETIMPORT                        R5 K5 [require]
       51 GETTABLEKS                       R6 R0 K11 ["Packages"]
       53 GETTABLEKS                       R6 R6 K15 ["React"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K5 [require]
       58 GETTABLEKS                       R7 R0 K6 ["Src"]
       60 GETTABLEKS                       R7 R7 K16 ["Flags"]
       62 GETTABLEKS                       R7 R7 K17 ["getFFlagAvatarSettingsEditUnsavedPlace"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R7 K5 [require]
       67 GETTABLEKS                       R8 R0 K6 ["Src"]
       69 GETTABLEKS                       R8 R8 K18 ["Util"]
       71 GETTABLEKS                       R8 R8 K19 ["InvokeKeys"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K5 [require]
       76 GETTABLEKS                       R9 R0 K6 ["Src"]
       78 GETTABLEKS                       R9 R9 K7 ["Components"]
       80 GETTABLEKS                       R9 R9 K8 ["Contexts"]
       82 GETTABLEKS                       R9 R9 K13 ["PublishProvider"]
       84 GETTABLEKS                       R9 R9 K20 ["publishedSettingsManager"]
       86 CALL                             R8 1 1
       87 GETIMPORT                        R9 K5 [require]
       89 GETTABLEKS                       R10 R0 K6 ["Src"]
       91 GETTABLEKS                       R10 R10 K18 ["Util"]
       93 GETTABLEKS                       R10 R10 K21 ["settingUtil"]
       95 CALL                             R9 1 1
       96 GETIMPORT                        R10 K5 [require]
       98 GETTABLEKS                       R11 R0 K6 ["Src"]
      100 GETTABLEKS                       R11 R11 K16 ["Flags"]
      102 GETTABLEKS                       R11 R11 K22 ["getEngineFeatureAvatarSettingsPlaceAvatarRules"]
      104 CALL                             R10 1 1
      105 GETIMPORT                        R11 K5 [require]
      107 GETTABLEKS                       R12 R0 K6 ["Src"]
      109 GETTABLEKS                       R12 R12 K16 ["Flags"]
      111 GETTABLEKS                       R12 R12 K23 ["getFFlagAvatarSettingsFixRevertButtonStuck"]
      113 CALL                             R11 1 1
      114 GETTABLEKS                       R12 R3 K24 ["ContextServices"]
      116 GETTABLEKS                       R13 R12 K25 ["Plugin"]
      118 GETTABLEKS                       R14 R9 K26 ["useSetting"]
      120 GETTABLEKS                       R15 R5 K27 ["createElement"]
      122 DUPCLOSURE                       R16 K28 [PROTO_11]
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R4
      135 RETURN                           R16 1
