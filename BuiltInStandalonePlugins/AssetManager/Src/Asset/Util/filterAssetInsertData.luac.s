PROTO_0:
        0 NEWTABLE                         R5 0 0
        2 NEWTABLE                         R6 0 0
        4 NEWTABLE                         R7 0 0
        6 NEWTABLE                         R8 0 0
        8 MOVE                             R9 R1
        9 LOADNIL                          R10
       10 LOADNIL                          R11
       11 FORGPREP                         R9
       12 GETTABLE                         R14 R0 R13
       13 JUMPIF                           R14 ; [+28]
       14 FASTCALL2                        TABLE_INSERT R5 R13 ; [+5]
       16 MOVE                             R15 R5
       17 MOVE                             R16 R13
       18 GETIMPORT                        R14 K2 [table.insert]
       20 CALL                             R14 2 0
       21 GETTABLE                         R16 R2 R12
       22 FASTCALL2                        TABLE_INSERT R6 R16 ; [+4]
       24 MOVE                             R15 R6
       25 GETIMPORT                        R14 K2 [table.insert]
       27 CALL                             R14 2 0
       28 GETTABLE                         R16 R3 R12
       29 FASTCALL2                        TABLE_INSERT R7 R16 ; [+4]
       31 MOVE                             R15 R7
       32 GETIMPORT                        R14 K2 [table.insert]
       34 CALL                             R14 2 0
       35 GETTABLE                         R16 R4 R12
       36 FASTCALL2                        TABLE_INSERT R8 R16 ; [+4]
       38 MOVE                             R15 R8
       39 GETIMPORT                        R14 K2 [table.insert]
       41 CALL                             R14 2 0
       42 FORGLOOP                         R9 2 ; [-31]
       44 RETURN                           R5 4

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
