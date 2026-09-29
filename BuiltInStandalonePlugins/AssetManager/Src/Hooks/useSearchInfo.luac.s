PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnShowSearchOptionsChanged"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["Connect"]
        6 CALL                             R0 2 1
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnPendingSearchTermChanged"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["Connect"]
        6 CALL                             R0 2 1
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnActiveSearchTermChanged"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["Connect"]
        6 CALL                             R0 2 1
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSearchOptionsChanged"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["Connect"]
        6 CALL                             R0 2 1
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnIsDefaultSearchStateChanged"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["Connect"]
        6 CALL                             R0 2 1
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R2 R0 K1 ["getShowSearchOptions"]
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 2
        9 GETUPVAL                         R3 1
       10 NAMECALL                         R4 R0 K2 ["getIsDefaultSearchState"]
       12 CALL                             R4 1 -1
       13 CALL                             R3 -1 2
       14 GETUPVAL                         R5 1
       15 NAMECALL                         R6 R0 K3 ["getPendingSearchTerm"]
       17 CALL                             R6 1 -1
       18 CALL                             R5 -1 2
       19 GETUPVAL                         R7 1
       20 NAMECALL                         R8 R0 K4 ["getActiveSearchTerm"]
       22 CALL                             R8 1 -1
       23 CALL                             R7 -1 2
       24 GETUPVAL                         R9 1
       25 NAMECALL                         R10 R0 K5 ["getSearchOptions"]
       27 CALL                             R10 1 -1
       28 CALL                             R9 -1 2
       29 DUPTABLE                         R11 K11 [{"ShowSearchOptions", "PendingSearchTerm", "ActiveSearchTerm", "SearchOptions", "IsDefaultSearchState"}]
       30 SETTABLEKS                       R1 R11 K6 ["ShowSearchOptions"]
       32 SETTABLEKS                       R5 R11 K7 ["PendingSearchTerm"]
       34 SETTABLEKS                       R7 R11 K8 ["ActiveSearchTerm"]
       36 SETTABLEKS                       R9 R11 K9 ["SearchOptions"]
       38 SETTABLEKS                       R3 R11 K10 ["IsDefaultSearchState"]
       40 GETUPVAL                         R12 2
       41 NEWCLOSURE                       R13 P0
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R2
       44 NEWTABLE                         R14 0 0
       46 CALL                             R12 2 0
       47 GETUPVAL                         R12 2
       48 NEWCLOSURE                       R13 P1
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R6
       51 NEWTABLE                         R14 0 0
       53 CALL                             R12 2 0
       54 GETUPVAL                         R12 2
       55 NEWCLOSURE                       R13 P2
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R8
       58 NEWTABLE                         R14 0 0
       60 CALL                             R12 2 0
       61 GETUPVAL                         R12 2
       62 NEWCLOSURE                       R13 P3
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R10
       65 NEWTABLE                         R14 0 0
       67 CALL                             R12 2 0
       68 GETUPVAL                         R12 2
       69 NEWCLOSURE                       R13 P4
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R4
       72 NEWTABLE                         R14 0 0
       74 CALL                             R12 2 0
       75 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K10 ["useState"]
       23 GETTABLEKS                       R4 R2 K11 ["useEffect"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Controllers"]
       31 GETTABLEKS                       R6 R6 K13 ["SearchController"]
       33 CALL                             R5 1 1
       34 DUPCLOSURE                       R6 K14 [PROTO_10]
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 RETURN                           R6 1
