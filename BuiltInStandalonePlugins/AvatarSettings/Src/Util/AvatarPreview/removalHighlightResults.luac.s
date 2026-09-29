PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+4]
        2 GETIMPORT                        R1 K2 [Instance.new]
        4 LOADK                            R2 K3 ["BindableEvent"]
        5 CALL                             R1 1 1
        6 SETUPVAL                         R1 0
        7 GETTABLEKS                       R2 R1 K4 ["Event"]
        9 MOVE                             R4 R0
       10 NAMECALL                         R2 R2 K5 ["Connect"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 SETTABLE                         R3 R2 R0
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+7]
        5 JUMPIFEQKB                       R1 FALSE ; [+6]
        7 GETUPVAL                         R2 1
        8 MOVE                             R4 R0
        9 NAMECALL                         R2 R2 K0 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 2
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 GETTABLE                         R2 R3 R4
        7 GETUPVAL                         R3 3
        8 JUMPIFNOTEQ                      R2 R3 ; [+7]
       10 GETUPVAL                         R3 3
       11 GETUPVAL                         R4 4
       12 GETTABLE                         R2 R3 R4
       13 GETUPVAL                         R3 5
       14 JUMPIFEQ                         R2 R3 ; [+2]
       16 RETURN                           R0 0
       17 JUMPIFNOT                        R0 ; [+11]
       18 FASTCALL1                        TYPEOF R1 ; [+3]
       19 MOVE                             R3 R1
       20 GETIMPORT                        R2 K3 [typeof]
       22 CALL                             R2 1 1
       23 JUMPIFNOTEQKS                    R2 K4 ["boolean"] ; [+5]
       25 GETUPVAL                         R2 5
       26 SETTABLEKS                       R1 R2 K5 ["limited"]
       28 JUMP                             ; [+4]
       29 GETUPVAL                         R2 3
       30 GETUPVAL                         R3 4
       31 LOADNIL                          R4
       32 SETTABLE                         R4 R2 R3
       33 GETUPVAL                         R2 5
       34 GETTABLEKS                       R2 R2 K6 ["callbacks"]
       36 GETUPVAL                         R3 5
       37 NEWTABLE                         R4 0 0
       39 SETTABLEKS                       R4 R3 K6 ["callbacks"]
       41 MOVE                             R3 R2
       42 LOADNIL                          R4
       43 LOADNIL                          R5
       44 FORGPREP                         R3
       45 MOVE                             R8 R7
       46 MOVE                             R9 R0
       47 JUMPIFNOT                        R9 ; [+4]
       48 JUMPIFEQKB                       R1 TRUE ; [+2]
       50 LOADB                            R9 0 +1
       51 LOADB                            R9 1
       52 CALL                             R8 1 0
       53 FORGLOOP                         R3 2 ; [-9]
       55 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R6 0
        1 GETTABLE                         R5 R6 R0
        2 MOVE                             R6 R5
        3 JUMPIFNOT                        R6 ; [+1]
        4 GETTABLE                         R6 R5 R1
        5 JUMPIFNOT                        R6 ; [+22]
        6 GETTABLEKS                       R7 R6 K0 ["bounds"]
        8 JUMPIFNOTEQ                      R7 R2 ; [+19]
       10 GETTABLEKS                       R7 R6 K1 ["limited"]
       12 JUMPIFEQKNIL                     R7 ; [+6]
       14 MOVE                             R7 R4
       15 GETTABLEKS                       R8 R6 K1 ["limited"]
       17 CALL                             R7 1 0
       18 RETURN                           R0 0
       19 GETTABLEKS                       R8 R6 K2 ["callbacks"]
       21 FASTCALL2                        TABLE_INSERT R8 R4 ; [+4]
       23 MOVE                             R9 R4
       24 GETIMPORT                        R7 K5 [table.insert]
       26 CALL                             R7 2 0
       27 RETURN                           R0 0
       28 JUMPIF                           R5 ; [+11]
       29 NEWTABLE                         R8 0 0
       31 DUPTABLE                         R9 K8 [{["__mode"] = "k"}]
       32 FASTCALL2                        SETMETATABLE R8 R9 ; [+3]
       34 GETIMPORT                        R7 K10 [setmetatable]
       36 CALL                             R7 2 1
       37 MOVE                             R5 R7
       38 GETUPVAL                         R7 0
       39 SETTABLE                         R5 R7 R0
       40 DUPTABLE                         R7 K12 [{[1], ["limited"] = , ["callbacks"]}]
       41 SETTABLEKS                       R2 R7 K0 ["bounds"]
       43 NEWTABLE                         R8 0 1
       45 MOVE                             R9 R4
       46 SETLIST                          R8 R9 1 [1]
       48 SETTABLEKS                       R8 R7 K2 ["callbacks"]
       50 SETTABLE                         R7 R5 R1
       51 MOVE                             R8 R5
       52 GETIMPORT                        R9 K15 [task.spawn]
       54 NEWCLOSURE                       R10 P0
       55 CAPTURE                          VAL R3
       56 CAPTURE                          UPVAL U0
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R7
       61 CALL                             R9 1 0
       62 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R1 0 0
        3 DUPTABLE                         R2 K2 [{[1] = "k"}]
        4 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        6 GETIMPORT                        R0 K4 [setmetatable]
        8 CALL                             R0 2 1
        9 LOADNIL                          R1
       10 NEWTABLE                         R2 4 0
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          REF R1
       14 SETTABLEKS                       R3 R2 K5 ["connectInvalidated"]
       16 NEWCLOSURE                       R3 P1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          REF R1
       19 SETTABLEKS                       R3 R2 K6 ["invalidate"]
       21 DUPCLOSURE                       R3 K7 [PROTO_3]
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R3 R2 K8 ["request"]
       25 CLOSEUPVALS                      R1
       26 RETURN                           R2 1
