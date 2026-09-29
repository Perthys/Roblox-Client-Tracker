PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getSelection"]
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K2 [next]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 JUMPIFEQKNIL                     R2 ; [+8]
        9 GETIMPORT                        R3 K2 [next]
       11 MOVE                             R4 R1
       12 MOVE                             R5 R2
       13 CALL                             R3 2 1
       14 JUMPIFEQKNIL                     R3 ; [+3]
       16 LOADNIL                          R3
       17 RETURN                           R3 1
       18 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
