PROTO_0:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 LOADN                            R1 0
        3 JUMPIFNOTLT                      R1 R0 ; [+14]
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R2 K1 [{"items"}]
        7 GETUPVAL                         R3 0
        8 SETTABLEKS                       R3 R2 K0 ["items"]
       10 FASTCALL2                        TABLE_INSERT R1 R2 ; [+3]
       12 GETIMPORT                        R0 K4 [table.insert]
       14 CALL                             R0 2 0
       15 NEWTABLE                         R0 0 0
       17 SETUPVAL                         R0 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R4 0 0
        2 NEWTABLE                         R5 0 0
        4 ORK                              R6 R3 K0 ["Menu"]
        5 NEWCLOSURE                       R7 P0
        6 CAPTURE                          REF R5
        7 CAPTURE                          VAL R4
        8 MOVE                             R8 R0
        9 LOADNIL                          R9
       10 LOADNIL                          R10
       11 FORGPREP                         R8
       12 LOADK                            R13 K1 ["%*/%*"]
       13 MOVE                             R15 R6
       14 GETTABLEKS                       R17 R12 K2 ["Id"]
       16 OR                               R16 R17 R11
       17 NAMECALL                         R13 R13 K3 ["format"]
       19 CALL                             R13 3 1
       20 GETTABLEKS                       R14 R12 K4 ["Type"]
       22 JUMPIFNOTEQKS                    R14 K5 ["Separator"] ; [+17]
       24 LENGTH                           R14 R5
       25 LOADN                            R15 0
       26 JUMPIFNOTLT                      R15 R14 ; [+182]
       28 DUPTABLE                         R16 K7 [{"items"}]
       29 SETTABLEKS                       R5 R16 K6 ["items"]
       31 FASTCALL2                        TABLE_INSERT R4 R16 ; [+4]
       33 MOVE                             R15 R4
       34 GETIMPORT                        R14 K10 [table.insert]
       36 CALL                             R14 2 0
       37 NEWTABLE                         R5 0 0
       39 JUMP                             ; [+169]
       40 GETTABLEKS                       R14 R12 K4 ["Type"]
       42 JUMPIFNOTEQKS                    R14 K11 ["SubMenu"] ; [+36]
       44 GETUPVAL                         R14 0
       45 GETTABLEKS                       R15 R12 K12 ["Items"]
       47 JUMPIF                           R15 ; [+2]
       48 NEWTABLE                         R15 0 0
       50 MOVE                             R16 R1
       51 MOVE                             R17 R2
       52 MOVE                             R18 R13
       53 CALL                             R14 4 1
       54 LENGTH                           R15 R14
       55 LOADN                            R16 0
       56 JUMPIFNOTLT                      R16 R15 ; [+152]
       58 DUPTABLE                         R17 K15 [{"id", "text", "items"}]
       59 SETTABLEKS                       R13 R17 K13 ["id"]
       61 GETTABLEKS                       R18 R12 K16 ["Text"]
       63 JUMPIF                           R18 ; [+4]
       64 GETTABLEKS                       R18 R12 K2 ["Id"]
       66 JUMPIF                           R18 ; [+1]
       67 LOADK                            R18 K17 [""]
       68 SETTABLEKS                       R18 R17 K14 ["text"]
       70 SETTABLEKS                       R14 R17 K6 ["items"]
       72 FASTCALL2                        TABLE_INSERT R5 R17 ; [+4]
       74 MOVE                             R16 R5
       75 GETIMPORT                        R15 K10 [table.insert]
       77 CALL                             R15 2 0
       78 JUMP                             ; [+130]
       79 GETTABLEKS                       R14 R12 K4 ["Type"]
       81 JUMPIFNOTEQKS                    R14 K18 ["Action"] ; [+127]
       83 GETTABLEKS                       R15 R12 K18 ["Action"]
       85 JUMPIFNOT                        R15 ; [+10]
       86 GETTABLEKS                       R15 R1 K19 ["Actions"]
       88 GETUPVAL                         R16 1
       89 GETTABLEKS                       R16 R16 K20 ["toString"]
       91 GETTABLEKS                       R17 R12 K18 ["Action"]
       93 CALL                             R16 1 1
       94 GETTABLE                         R14 R15 R16
       95 JUMP                             ; [+1]
       96 LOADNIL                          R14
       97 GETTABLEKS                       R15 R12 K18 ["Action"]
       99 JUMPIFNOT                        R15 ; [+6]
      100 GETUPVAL                         R16 1
      101 GETTABLEKS                       R16 R16 K20 ["toString"]
      103 MOVE                             R17 R15
      104 CALL                             R16 1 1
      105 JUMP                             ; [+1]
      106 LOADNIL                          R16
      107 LOADB                            R17 0
      108 JUMPIFEQKNIL                     R16 ; [+9]
      110 LOADB                            R17 0
      111 GETTABLEKS                       R18 R1 K21 ["NonexistentActions"]
      113 JUMPIFEQKNIL                     R18 ; [+4]
      115 GETTABLEKS                       R18 R1 K21 ["NonexistentActions"]
      117 GETTABLE                         R17 R18 R16
      118 JUMPIFEQKNIL                     R14 ; [+7]
      120 GETTABLEKS                       R18 R14 K22 ["Exists"]
      122 JUMPIFNOT                        R18 ; [+86]
      123 GETTABLEKS                       R18 R14 K23 ["Visible"]
      125 JUMPIFNOT                        R18 ; [+83]
      126 JUMPIF                           R17 ; [+82]
      127 JUMPIFNOT                        R14 ; [+7]
      128 GETTABLEKS                       R19 R14 K24 ["Shortcuts"]
      130 JUMPIFNOT                        R19 ; [+4]
      131 GETTABLEKS                       R19 R14 K24 ["Shortcuts"]
      133 GETTABLEN                        R18 R19 1
      134 JUMP                             ; [+1]
      135 LOADNIL                          R18
      136 DUPTABLE                         R21 K30 [{"id", "text", "icon", "isDisabled", "isChecked", "trailing", "onActivated"}]
      137 SETTABLEKS                       R13 R21 K13 ["id"]
      139 JUMPIFNOT                        R14 ; [+7]
      140 GETTABLEKS                       R23 R14 K16 ["Text"]
      142 JUMPIFEQKS                       R23 K17 [""] ; [+4]
      144 GETTABLEKS                       R22 R14 K16 ["Text"]
      146 JUMP                             ; [+7]
      147 GETTABLEKS                       R22 R12 K16 ["Text"]
      149 JUMPIF                           R22 ; [+4]
      150 GETTABLEKS                       R22 R12 K2 ["Id"]
      152 JUMPIF                           R22 ; [+1]
      153 LOADK                            R22 K17 [""]
      154 SETTABLEKS                       R22 R21 K14 ["text"]
      156 GETTABLEKS                       R23 R12 K31 ["ShowIcon"]
      158 JUMPIFNOT                        R23 ; [+4]
      159 JUMPIFNOT                        R14 ; [+3]
      160 GETTABLEKS                       R22 R14 K32 ["Icon"]
      162 JUMP                             ; [+1]
      163 LOADNIL                          R22
      164 SETTABLEKS                       R22 R21 K25 ["icon"]
      166 JUMPIFNOT                        R14 ; [+4]
      167 GETTABLEKS                       R23 R14 K33 ["Enabled"]
      169 NOT                              R22 R23
      170 JUMP                             ; [+4]
      171 JUMPIFEQKNIL                     R15 ; [+2]
      173 LOADB                            R22 0 +1
      174 LOADB                            R22 1
      175 SETTABLEKS                       R22 R21 K26 ["isDisabled"]
      177 JUMPIFNOT                        R14 ; [+6]
      178 GETTABLEKS                       R23 R14 K34 ["Checkable"]
      180 JUMPIFNOT                        R23 ; [+3]
      181 GETTABLEKS                       R22 R14 K35 ["Checked"]
      183 JUMP                             ; [+1]
      184 LOADNIL                          R22
      185 SETTABLEKS                       R22 R21 K27 ["isChecked"]
      187 JUMPIFNOT                        R18 ; [+4]
      188 DUPTABLE                         R22 K38 [{["type"] = "Hint", ["text"]}]
      189 SETTABLEKS                       R18 R22 K14 ["text"]
      191 JUMP                             ; [+1]
      192 LOADNIL                          R22
      193 SETTABLEKS                       R22 R21 K28 ["trailing"]
      195 JUMPIFNOT                        R15 ; [+4]
      196 NEWCLOSURE                       R22 P1
      197 CAPTURE                          VAL R2
      198 CAPTURE                          VAL R15
      199 JUMP                             ; [+1]
      200 LOADNIL                          R22
      201 SETTABLEKS                       R22 R21 K29 ["onActivated"]
      203 FASTCALL2                        TABLE_INSERT R5 R21 ; [+4]
      205 MOVE                             R20 R5
      206 GETIMPORT                        R19 K10 [table.insert]
      208 CALL                             R19 2 0
      209 FORGLOOP                         R8 2 ; [-198]
      211 LENGTH                           R8 R5
      212 LOADN                            R9 0
      213 JUMPIFNOTLT                      R9 R8 ; [+12]
      215 DUPTABLE                         R10 K7 [{"items"}]
      216 SETTABLEKS                       R5 R10 K6 ["items"]
      218 FASTCALL2                        TABLE_INSERT R4 R10 ; [+4]
      220 MOVE                             R9 R4
      221 GETIMPORT                        R8 K10 [table.insert]
      223 CALL                             R8 2 0
      224 NEWTABLE                         R5 0 0
      226 LENGTH                           R8 R4
      227 JUMPIFNOTEQKN                    R8 K39 [1] ; [+6]
      229 GETTABLEN                        R8 R4 1
      230 GETTABLEKS                       R8 R8 K6 ["items"]
      232 CLOSEUPVALS                      R5
      233 RETURN                           R8 1
      234 CLOSEUPVALS                      R5
      235 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["StudioFoundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Util"]
       23 GETTABLEKS                       R3 R3 K10 ["StudioUri"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Types"]
       31 CALL                             R4 1 1
       32 DUPCLOSURE                       R5 K13 [PROTO_2]
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R3
       35 RETURN                           R5 1
