PROTO_0:
        0 LOADK                            R3 K0 ["^%s*(.-)%s*$"]
        1 LOADK                            R4 K1 ["%1"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [Enum.AssetType]
        2 GETUPVAL                         R2 0
        3 GETTABLE                         R0 R1 R2
        4 RETURN                           R0 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 JUMPIFNOTEQKNIL                  R0 ; [+2]
        4 RETURN                           R1 1
        5 LOADK                            R4 K0 ["([^,]+),?"]
        6 NAMECALL                         R2 R0 K1 ["gmatch"]
        8 CALL                             R2 2 3
        9 FORGPREP                         R2
       10 LOADK                            R9 K2 ["^%s*(.-)%s*$"]
       11 LOADK                            R10 K3 ["%1"]
       12 NAMECALL                         R7 R5 K4 ["gsub"]
       14 CALL                             R7 3 1
       15 JUMPIFEQKS                       R7 K5 [""] ; [+30]
       17 GETIMPORT                        R8 K7 [pcall]
       19 NEWCLOSURE                       R9 P0
       20 CAPTURE                          VAL R7
       21 CALL                             R8 1 2
       22 JUMPIFNOT                        R8 ; [+7]
       23 FASTCALL1                        TYPEOF R9 ; [+3]
       24 MOVE                             R11 R9
       25 GETIMPORT                        R10 K9 [typeof]
       27 CALL                             R10 1 1
       28 JUMPIFEQKS                       R10 K10 ["EnumItem"] ; [+13]
       30 GETIMPORT                        R10 K12 [warn]
       32 LOADK                            R14 K13 ["Ignoring \"%*\" in FStringToolboxPublishDraftAssetTypesCSV: it is not an "]
       33 MOVE                             R16 R7
       34 NAMECALL                         R14 R14 K14 ["format"]
       36 CALL                             R14 2 1
       37 MOVE                             R12 R14
       38 LOADK                            R13 K15 ["Enum.AssetType name. Drafts of that type will be exposed without being published."]
       39 CONCAT                           R11 R12 R13
       40 CALL                             R10 1 0
       41 JUMP                             ; [+4]
       42 GETTABLEKS                       R10 R9 K16 ["Value"]
       44 LOADB                            R11 1
       45 SETTABLE                         R11 R1 R10
       46 FORGLOOP                         R2 1 ; [-37]
       48 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_2]
        3 RETURN                           R1 1
