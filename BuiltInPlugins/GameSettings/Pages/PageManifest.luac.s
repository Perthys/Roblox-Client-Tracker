MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["BasicInfoPage"]
        9 GETTABLEKS                       R1 R1 K6 ["BasicInfo"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K7 ["MonetizationPage"]
       20 GETTABLEKS                       R2 R2 K8 ["Monetization"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R3 K3 [script]
       27 GETTABLEKS                       R3 R3 K4 ["Parent"]
       29 GETTABLEKS                       R3 R3 K9 ["OptionsPage"]
       31 GETTABLEKS                       R3 R3 K10 ["Options"]
       33 CALL                             R2 1 1
       34 GETIMPORT                        R3 K1 [require]
       36 GETIMPORT                        R4 K3 [script]
       38 GETTABLEKS                       R4 R4 K4 ["Parent"]
       40 GETTABLEKS                       R4 R4 K11 ["PlacesPage"]
       42 GETTABLEKS                       R4 R4 K12 ["Places"]
       44 CALL                             R3 1 1
       45 GETIMPORT                        R4 K1 [require]
       47 GETIMPORT                        R5 K3 [script]
       49 GETTABLEKS                       R5 R5 K4 ["Parent"]
       51 GETTABLEKS                       R5 R5 K13 ["SecurityPage"]
       53 GETTABLEKS                       R5 R5 K14 ["Security"]
       55 CALL                             R4 1 1
       56 GETIMPORT                        R5 K1 [require]
       58 GETIMPORT                        R6 K3 [script]
       60 GETTABLEKS                       R6 R6 K4 ["Parent"]
       62 GETTABLEKS                       R6 R6 K15 ["WorldPage"]
       64 GETTABLEKS                       R6 R6 K16 ["World"]
       66 CALL                             R5 1 1
       67 GETIMPORT                        R6 K1 [require]
       69 GETIMPORT                        R7 K3 [script]
       71 GETTABLEKS                       R7 R7 K4 ["Parent"]
       73 GETTABLEKS                       R7 R7 K17 ["LocalizationPage"]
       75 GETTABLEKS                       R7 R7 K18 ["Localization"]
       77 CALL                             R6 1 1
       78 GETIMPORT                        R7 K1 [require]
       80 GETIMPORT                        R8 K3 [script]
       82 GETTABLEKS                       R8 R8 K4 ["Parent"]
       84 GETTABLEKS                       R8 R8 K19 ["CommunicationPage"]
       86 GETTABLEKS                       R8 R8 K20 ["Communication"]
       88 CALL                             R7 1 1
       89 GETIMPORT                        R8 K1 [require]
       91 GETIMPORT                        R9 K3 [script]
       93 GETTABLEKS                       R9 R9 K4 ["Parent"]
       95 GETTABLEKS                       R9 R9 K21 ["CreatorHubPage"]
       97 GETTABLEKS                       R9 R9 K22 ["CreatorHub"]
       99 CALL                             R8 1 1
      100 GETIMPORT                        R9 K24 [game]
      102 LOADK                            R11 K25 ["RemoveGameSettingsMonetizationPage"]
      103 NAMECALL                         R9 R9 K26 ["GetFastFlag"]
      105 CALL                             R9 2 1
      106 GETIMPORT                        R10 K1 [require]
      108 GETIMPORT                        R11 K3 [script]
      110 GETTABLEKS                       R11 R11 K4 ["Parent"]
      112 GETTABLEKS                       R11 R11 K4 ["Parent"]
      114 GETTABLEKS                       R11 R11 K27 ["Src"]
      116 GETTABLEKS                       R11 R11 K28 ["Flags"]
      118 GETTABLEKS                       R11 R11 K29 ["getFFlagPruneGameSettings"]
      120 CALL                             R10 1 1
      121 CALL                             R10 0 1
      122 NEWTABLE                         R11 0 0
      124 JUMPIFNOT                        R10 ; [+10]
      125 NEWTABLE                         R12 0 4
      127 MOVE                             R13 R0
      128 MOVE                             R14 R7
      129 MOVE                             R15 R4
      130 MOVE                             R16 R8
      131 SETLIST                          R12 R13 4 [1]
      133 MOVE                             R11 R12
      134 RETURN                           R11 1
      135 JUMPIFNOT                        R9 ; [+13]
      136 NEWTABLE                         R12 0 7
      138 MOVE                             R13 R0
      139 MOVE                             R14 R7
      140 MOVE                             R15 R4
      141 MOVE                             R16 R3
      142 MOVE                             R17 R6
      143 MOVE                             R18 R5
      144 MOVE                             R19 R2
      145 SETLIST                          R12 R13 7 [1]
      147 MOVE                             R11 R12
      148 RETURN                           R11 1
      149 NEWTABLE                         R12 0 8
      151 MOVE                             R13 R0
      152 MOVE                             R14 R7
      153 MOVE                             R15 R1
      154 MOVE                             R16 R4
      155 MOVE                             R17 R3
      156 MOVE                             R18 R6
      157 MOVE                             R19 R5
      158 MOVE                             R20 R2
      159 SETLIST                          R12 R13 8 [1]
      161 MOVE                             R11 R12
      162 RETURN                           R11 1
