PROTO_0:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+12]
        8 GETIMPORT                        R2 K4 [string.find]
       10 MOVE                             R3 R0
       11 LOADK                            R4 K5 ["not available for this component"]
       12 LOADN                            R5 1
       13 LOADB                            R6 1
       14 CALL                             R2 4 1
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["EnumItem"] ; [+4]
        7 GETTABLEKS                       R1 R0 K3 ["Name"]
        9 RETURN                           R1 1
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R2 R0
       12 GETIMPORT                        R1 K5 [type]
       14 CALL                             R1 1 1
       15 JUMPIFNOTEQKS                    R1 K6 ["string"] ; [+2]
       17 RETURN                           R0 1
       18 LOADNIL                          R1
       19 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["CreatorId"]
        2 FASTCALL1                        TYPE R3 ; [+3]
        3 MOVE                             R5 R3
        4 GETIMPORT                        R4 K2 [type]
        6 CALL                             R4 1 1
        7 JUMPIFNOTEQKS                    R4 K3 ["number"] ; [+5]
        9 JUMPIFEQKN                       R3 K4 [0] ; [+3]
       11 JUMPIFNOTEQKN                    R2 K4 [0] ; [+3]
       13 LOADB                            R4 0
       14 RETURN                           R4 1
       15 GETTABLEKS                       R5 R0 K5 ["CreatorType"]
       17 FASTCALL1                        TYPEOF R5 ; [+3]
       18 MOVE                             R7 R5
       19 GETIMPORT                        R6 K7 [typeof]
       21 CALL                             R6 1 1
       22 JUMPIFNOTEQKS                    R6 K8 ["EnumItem"] ; [+4]
       24 GETTABLEKS                       R4 R5 K9 ["Name"]
       26 JUMP                             ; [+10]
       27 FASTCALL1                        TYPE R5 ; [+3]
       28 MOVE                             R7 R5
       29 GETIMPORT                        R6 K2 [type]
       31 CALL                             R6 1 1
       32 JUMPIFNOTEQKS                    R6 K10 ["string"] ; [+3]
       34 MOVE                             R4 R5
       35 JUMP                             ; [+1]
       36 LOADNIL                          R4
       37 FASTCALL1                        TYPEOF R1 ; [+3]
       38 MOVE                             R7 R1
       39 GETIMPORT                        R6 K7 [typeof]
       41 CALL                             R6 1 1
       42 JUMPIFNOTEQKS                    R6 K8 ["EnumItem"] ; [+4]
       44 GETTABLEKS                       R5 R1 K9 ["Name"]
       46 JUMP                             ; [+10]
       47 FASTCALL1                        TYPE R1 ; [+3]
       48 MOVE                             R7 R1
       49 GETIMPORT                        R6 K2 [type]
       51 CALL                             R6 1 1
       52 JUMPIFNOTEQKS                    R6 K10 ["string"] ; [+3]
       54 MOVE                             R5 R1
       55 JUMP                             ; [+1]
       56 LOADNIL                          R5
       57 JUMPIFEQKNIL                     R4 ; [+3]
       59 JUMPIFNOTEQKNIL                  R5 ; [+3]
       61 LOADB                            R6 0
       62 RETURN                           R6 1
       63 GETUPVAL                         R7 0
       64 GETTABLE                         R6 R7 R4
       65 JUMPIFNOT                        R6 ; [+3]
       66 GETUPVAL                         R7 0
       67 GETTABLE                         R6 R7 R5
       68 JUMPIF                           R6 ; [+2]
       69 LOADB                            R6 0
       70 RETURN                           R6 1
       71 LOADB                            R6 0
       72 JUMPIFNOTEQ                      R4 R5 ; [+5]
       74 JUMPIFEQ                         R3 R2 ; [+2]
       76 LOADB                            R6 0 +1
       77 LOADB                            R6 1
       78 RETURN                           R6 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["PublishLatestDraftsAndWaitAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 NEWTABLE                         R5 0 0
        2 GETUPVAL                         R6 0
        3 CALL                             R6 0 1
        4 JUMPIF                           R6 ; [+4]
        5 GETUPVAL                         R6 1
        6 LOADK                            R7 K0 ["publish: gate is off (FFlagAmrPublishDraftAssetsOnInsert)"]
        7 CALL                             R6 1 0
        8 RETURN                           R5 1
        9 GETUPVAL                         R6 1
       10 LOADK                            R10 K1 ["publish: gate entered for %* asset(s), destination is "]
       11 LENGTH                           R12 R1
       12 NAMECALL                         R10 R10 K2 ["format"]
       14 CALL                             R10 2 1
       15 MOVE                             R8 R10
       16 LOADK                            R9 K3 ["%*:%*"]
       17 FASTCALL1                        TYPEOF R2 ; [+3]
       18 MOVE                             R14 R2
       19 GETIMPORT                        R13 K6 [typeof]
       21 CALL                             R13 1 1
       22 JUMPIFNOTEQKS                    R13 K7 ["EnumItem"] ; [+4]
       24 GETTABLEKS                       R12 R2 K8 ["Name"]
       26 JUMP                             ; [+10]
       27 FASTCALL1                        TYPE R2 ; [+3]
       28 MOVE                             R14 R2
       29 GETIMPORT                        R13 K10 [type]
       31 CALL                             R13 1 1
       32 JUMPIFNOTEQKS                    R13 K11 ["string"] ; [+3]
       34 MOVE                             R12 R2
       35 JUMP                             ; [+1]
       36 LOADNIL                          R12
       37 ORK                              R11 R12 K4 ["unknown"]
       38 MOVE                             R12 R3
       39 NAMECALL                         R9 R9 K2 ["format"]
       41 CALL                             R9 3 1
       42 CONCAT                           R7 R8 R9
       43 CALL                             R6 1 0
       44 JUMPIFNOT                        R0 ; [+3]
       45 LENGTH                           R6 R1
       46 JUMPIFNOTEQKN                    R6 K12 [0] ; [+5]
       48 GETUPVAL                         R6 1
       49 LOADK                            R7 K13 ["publish: skipped, no AssetAccessController or no asset ids"]
       50 CALL                             R6 1 0
       51 RETURN                           R5 1
       52 MOVE                             R6 R1
       53 JUMPIFNOT                        R4 ; [+48]
       54 NEWTABLE                         R6 0 0
       56 MOVE                             R7 R1
       57 LOADNIL                          R8
       58 LOADNIL                          R9
       59 FORGPREP                         R7
       60 GETTABLE                         R12 R4 R11
       61 JUMPIFEQKNIL                     R12 ; [+7]
       63 GETUPVAL                         R13 2
       64 MOVE                             R14 R12
       65 MOVE                             R15 R2
       66 MOVE                             R16 R3
       67 CALL                             R13 3 1
       68 JUMPIF                           R13 ; [+7]
       69 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       71 MOVE                             R14 R6
       72 MOVE                             R15 R11
       73 GETIMPORT                        R13 K16 [table.insert]
       75 CALL                             R13 2 0
       76 FORGLOOP                         R7 2 ; [-17]
       78 GETUPVAL                         R7 1
       79 LOADK                            R11 K17 ["publish: %* of %* asset(s) need publish state, "]
       80 LENGTH                           R13 R6
       81 LENGTH                           R14 R1
       82 NAMECALL                         R11 R11 K2 ["format"]
       84 CALL                             R11 3 1
       85 MOVE                             R9 R11
       86 LOADK                            R10 K18 ["%* already known to be same account"]
       87 LENGTH                           R13 R1
       88 LENGTH                           R14 R6
       89 SUB                              R12 R13 R14
       90 NAMECALL                         R10 R10 K2 ["format"]
       92 CALL                             R10 2 1
       93 CONCAT                           R8 R9 R10
       94 CALL                             R7 1 0
       95 LENGTH                           R7 R6
       96 JUMPIFNOTEQKN                    R7 K12 [0] ; [+5]
       98 GETUPVAL                         R7 1
       99 LOADK                            R8 K19 ["publish: nothing to do, every asset is owned by this experience's account"]
      100 CALL                             R7 1 0
      101 RETURN                           R5 1
      102 LOADN                            R9 1
      103 LENGTH                           R7 R6
      104 LOADN                            R8 50
      105 FORNPREP                         R7
      106 GETIMPORT                        R10 K21 [table.move]
      108 MOVE                             R11 R6
      109 MOVE                             R12 R9
      110 ADDK                             R15 R9 K23 [50]
      111 SUBK                             R14 R15 K22 [1]
      112 LENGTH                           R15 R6
      113 FASTCALL2                        MATH_MIN R14 R15 ; [+3]
      115 GETIMPORT                        R13 K26 [math.min]
      117 CALL                             R13 2 1
      118 LOADN                            R14 1
      119 NEWTABLE                         R15 0 0
      121 CALL                             R10 5 1
      122 GETUPVAL                         R11 1
      123 LOADK                            R12 K27 ["publish: publishing drafts among %* asset(s), waiting for each to settle"]
      124 LENGTH                           R14 R10
      125 NAMECALL                         R12 R12 K2 ["format"]
      127 CALL                             R12 2 1
      128 CALL                             R11 1 0
      129 GETIMPORT                        R11 K29 [pcall]
      131 NEWCLOSURE                       R12 P0
      132 CAPTURE                          VAL R0
      133 CAPTURE                          VAL R10
      134 CALL                             R11 1 2
      135 JUMPIFNOT                        R11 ; [+7]
      136 FASTCALL1                        TYPE R12 ; [+3]
      137 MOVE                             R14 R12
      138 GETIMPORT                        R13 K10 [type]
      140 CALL                             R13 1 1
      141 JUMPIFEQKS                       R13 K14 ["table"] ; [+34]
      143 LOADB                            R13 0
      144 FASTCALL1                        TYPE R12 ; [+3]
      145 MOVE                             R15 R12
      146 GETIMPORT                        R14 K10 [type]
      148 CALL                             R14 1 1
      149 JUMPIFNOTEQKS                    R14 K11 ["string"] ; [+12]
      151 GETIMPORT                        R14 K31 [string.find]
      153 MOVE                             R15 R12
      154 LOADK                            R16 K32 ["not available for this component"]
      155 LOADN                            R17 1
      156 LOADB                            R18 1
      157 CALL                             R14 4 1
      158 JUMPIFNOTEQKNIL                  R14 ; [+2]
      160 LOADB                            R13 0 +1
      161 LOADB                            R13 1
      162 JUMPIFNOT                        R13 ; [+4]
      163 GETUPVAL                         R13 1
      164 LOADK                            R14 K33 ["publish: skipped, PublishLatestDraftsAndWaitAsync is not registered on this Studio"]
      165 CALL                             R13 1 0
      166 RETURN                           R5 1
      167 GETIMPORT                        R13 K35 [warn]
      169 LOADK                            R14 K36 ["Failed to publish draft assets before insertion: %*"]
      170 MOVE                             R16 R12
      171 NAMECALL                         R14 R14 K2 ["format"]
      173 CALL                             R14 2 1
      174 CALL                             R13 1 0
      175 JUMP                             ; [+15]
      176 MOVE                             R13 R12
      177 LOADNIL                          R14
      178 LOADNIL                          R15
      179 FORGPREP                         R13
      180 FASTCALL1                        TYPE R17 ; [+3]
      181 MOVE                             R19 R17
      182 GETIMPORT                        R18 K10 [type]
      184 CALL                             R18 1 1
      185 JUMPIFNOTEQKS                    R18 K37 ["number"] ; [+3]
      187 LOADB                            R18 1
      188 SETTABLE                         R18 R5 R17
      189 FORGLOOP                         R13 2 ; [-10]
      191 FORNLOOP                         R7
      192 LOADN                            R7 0
      193 MOVE                             R8 R5
      194 LOADNIL                          R9
      195 LOADNIL                          R10
      196 FORGPREP                         R8
      197 ADDK                             R7 R7 K22 [1]
      198 FORGLOOP                         R8 1 ; [-2]
      200 JUMPIFNOTEQKN                    R7 K12 [0] ; [+5]
      202 GETUPVAL                         R8 1
      203 LOADK                            R9 K38 ["publish: every asset is publishable and servable, proceeding to the grant"]
      204 CALL                             R8 1 0
      205 RETURN                           R5 1
      206 GETIMPORT                        R8 K35 [warn]
      208 LOADK                            R9 K39 ["%* asset(s) could not be published and will not be inserted"]
      209 MOVE                             R11 R7
      210 NAMECALL                         R9 R9 K2 ["format"]
      212 CALL                             R9 2 1
      213 CALL                             R8 1 0
      214 GETUPVAL                         R8 1
      215 LOADK                            R9 K40 ["publish: %* asset(s) will not be inserted"]
      216 MOVE                             R11 R7
      217 NAMECALL                         R9 R9 K2 ["format"]
      219 CALL                             R9 2 1
      220 CALL                             R8 1 0
      221 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["logIfDebug"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Flags"]
       22 GETTABLEKS                       R3 R3 K10 ["getFFlagAmrPublishDraftAssetsOnInsert"]
       24 CALL                             R2 1 1
       25 DUPTABLE                         R3 K14 [{["User"] = True, ["Group"] = True}]
       26 DUPCLOSURE                       R4 K15 [PROTO_0]
       27 DUPCLOSURE                       R5 K16 [PROTO_1]
       28 DUPCLOSURE                       R6 K17 [PROTO_2]
       29 CAPTURE                          VAL R3
       30 DUPCLOSURE                       R7 K18 [PROTO_4]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R6
       34 RETURN                           R7 1
