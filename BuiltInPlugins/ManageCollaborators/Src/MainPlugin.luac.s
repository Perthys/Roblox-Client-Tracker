PROTO_0:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["store"]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 -1
        5 NAMECALL                         R0 R0 K1 ["dispatch"]
        7 CALL                             R0 -1 0
        8 GETUPVAL                         R0 0
        9 DUPTABLE                         R2 K4 [{["enabled"] = False}]
       10 NAMECALL                         R0 R0 K5 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["enabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["pendingGameLinkFetch"]
        4 GETUPVAL                         R1 0
        5 SETTABLEKS                       R0 R1 K1 ["gameLink"]
        7 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["pendingGameLinkFetch"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["reject"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["gameLink"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["resolve"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["gameLink"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K2 ["pendingGameLinkFetch"]
       15 JUMPIFNOT                        R0 ; [+4]
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K2 ["pendingGameLinkFetch"]
       19 RETURN                           R0 1
       20 GETUPVAL                         R0 2
       21 GETIMPORT                        R2 K4 [game]
       23 GETTABLEKS                       R2 R2 K5 ["GameId"]
       25 NAMECALL                         R0 R0 K6 ["createPrivateShareLink"]
       27 CALL                             R0 2 1
       28 NEWCLOSURE                       R2 P0
       29 CAPTURE                          UPVAL U0
       30 NEWCLOSURE                       R3 P1
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          UPVAL U1
       33 NAMECALL                         R0 R0 K7 ["andThen"]
       35 CALL                             R0 3 1
       36 GETUPVAL                         R1 0
       37 SETTABLEKS                       R0 R1 K2 ["pendingGameLinkFetch"]
       39 RETURN                           R0 1

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleEnabled"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R5 0
        1 JUMPIFNOT                        R5 ; [+18]
        2 GETUPVAL                         R5 1
        3 JUMPIFNOT                        R5 ; [+16]
        4 GETUPVAL                         R5 2
        5 JUMPIFNOT                        R5 ; [+14]
        6 GETUPVAL                         R5 1
        7 GETUPVAL                         R7 2
        8 DUPTABLE                         R8 K6 [{[1], ["statusCode"], ["errorDetails"], ["linkType"], ["requestType"] = "POST"}]
        9 SETTABLEKS                       R0 R8 K0 ["url"]
       11 SETTABLEKS                       R1 R8 K1 ["statusCode"]
       13 SETTABLEKS                       R2 R8 K2 ["errorDetails"]
       15 SETTABLEKS                       R3 R8 K3 ["linkType"]
       17 NAMECALL                         R5 R5 K7 ["logRobloxTelemetryEvent"]
       19 CALL                             R5 3 0
       20 GETIMPORT                        R5 K9 [warn]
       22 MOVE                             R7 R4
       23 LOADK                            R8 K10 [" "]
       24 GETUPVAL                         R10 3
       25 GETTABLEKS                       R10 R10 K11 ["LINKTYPE_EDIT"]
       27 JUMPIFNOTEQ                      R3 R10 ; [+3]
       29 LOADK                            R9 K12 ["Edit"]
       30 JUMP                             ; [+4]
       31 LOADK                            R10 K13 ["Team Test"]
       32 LOADK                            R11 K14 [" link: "]
       33 MOVE                             R12 R2
       34 CONCAT                           R9 R10 R12
       35 CONCAT                           R6 R7 R9
       36 CALL                             R5 1 0
       37 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["links"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K4 ["link"]
        9 SETTABLE                         R3 R1 R2
       10 DUPTABLE                         R2 K5 [{"links"}]
       11 SETTABLEKS                       R1 R2 K3 ["links"]
       13 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["pendingLinkFetches"]
        3 GETUPVAL                         R2 1
        4 LOADNIL                          R3
        5 SETTABLE                         R3 R1 R2
        6 GETTABLEKS                       R2 R0 K1 ["Body"]
        8 OR                               R1 R2 R0
        9 GETTABLEKS                       R2 R0 K2 ["StatusCode"]
       11 JUMPIF                           R2 ; [+4]
       12 GETTABLEKS                       R2 R0 K3 ["responseCode"]
       14 JUMPIF                           R2 ; [+1]
       15 LOADN                            R2 200
       16 LOADN                            R3 400
       17 JUMPIFNOTLE                      R3 R2 ; [+24]
       19 GETUPVAL                         R3 2
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K4 ["Url"]
       23 MOVE                             R5 R2
       24 FASTCALL1                        TOSTRING R1 ; [+3]
       25 MOVE                             R7 R1
       26 GETIMPORT                        R6 K6 [tostring]
       28 CALL                             R6 1 1
       29 GETUPVAL                         R7 1
       30 LOADK                            R9 K7 ["HTTP error "]
       31 FASTCALL1                        TOSTRING R2 ; [+3]
       32 MOVE                             R13 R2
       33 GETIMPORT                        R12 K6 [tostring]
       35 CALL                             R12 1 1
       36 MOVE                             R10 R12
       37 LOADK                            R11 K8 [" while generating"]
       38 CONCAT                           R8 R9 R11
       39 CALL                             R3 5 0
       40 LOADNIL                          R3
       41 RETURN                           R3 1
       42 GETIMPORT                        R3 K10 [pcall]
       44 GETUPVAL                         R4 4
       45 GETTABLEKS                       R4 R4 K11 ["JSONDecode"]
       47 GETUPVAL                         R5 4
       48 MOVE                             R6 R1
       49 CALL                             R3 3 2
       50 JUMPIFNOT                        R3 ; [+14]
       51 JUMPIFNOT                        R4 ; [+13]
       52 GETTABLEKS                       R5 R4 K12 ["link"]
       54 JUMPIFNOT                        R5 ; [+10]
       55 GETUPVAL                         R5 0
       56 NEWCLOSURE                       R7 P0
       57 CAPTURE                          UPVAL U1
       58 CAPTURE                          VAL R4
       59 NAMECALL                         R5 R5 K13 ["setState"]
       61 CALL                             R5 2 0
       62 GETTABLEKS                       R5 R4 K12 ["link"]
       64 RETURN                           R5 1
       65 GETUPVAL                         R5 2
       66 GETUPVAL                         R6 3
       67 GETTABLEKS                       R6 R6 K4 ["Url"]
       69 MOVE                             R7 R2
       70 JUMPIF                           R3 ; [+8]
       71 LOADK                            R9 K14 ["JSON decode failed: "]
       72 FASTCALL1                        TOSTRING R1 ; [+3]
       73 MOVE                             R11 R1
       74 GETIMPORT                        R10 K6 [tostring]
       76 CALL                             R10 1 1
       77 CONCAT                           R8 R9 R10
       78 JUMP                             ; [+7]
       79 LOADK                            R9 K15 ["Missing or invalid link field: "]
       80 FASTCALL1                        TOSTRING R1 ; [+3]
       81 MOVE                             R11 R1
       82 GETIMPORT                        R10 K6 [tostring]
       84 CALL                             R10 1 1
       85 CONCAT                           R8 R9 R10
       86 GETUPVAL                         R9 1
       87 JUMPIF                           R3 ; [+2]
       88 LOADK                            R10 K16 ["Failed to decode"]
       89 JUMP                             ; [+1]
       90 LOADK                            R10 K17 ["Failed to get valid"]
       91 CALL                             R5 5 0
       92 LOADNIL                          R5
       93 RETURN                           R5 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["pendingLinkFetches"]
        3 GETUPVAL                         R2 1
        4 LOADNIL                          R3
        5 SETTABLE                         R3 R1 R2
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R2 R2 K1 ["Url"]
       10 LOADN                            R3 -1
       11 FASTCALL1                        TOSTRING R0 ; [+3]
       12 MOVE                             R5 R0
       13 GETIMPORT                        R4 K3 [tostring]
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 1
       17 LOADK                            R6 K4 ["Failed to generate"]
       18 CALL                             R1 5 0
       19 LOADNIL                          R1
       20 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["state"]
        3 GETTABLEKS                       R2 R2 K1 ["links"]
        5 GETTABLE                         R1 R2 R0
        6 JUMPIFNOT                        R1 ; [+11]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["resolve"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["state"]
       13 GETTABLEKS                       R3 R3 K1 ["links"]
       15 GETTABLE                         R2 R3 R0
       16 CALL                             R1 1 -1
       17 RETURN                           R1 -1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K3 ["pendingLinkFetches"]
       21 GETTABLE                         R1 R2 R0
       22 JUMPIFNOT                        R1 ; [+5]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K3 ["pendingLinkFetches"]
       26 GETTABLE                         R1 R2 R0
       27 RETURN                           R1 1
       28 DUPTABLE                         R1 K8 [{["Url"], ["Method"] = "POST", ["Body"]}]
       29 GETUPVAL                         R2 2
       30 GETTABLEKS                       R2 R2 K9 ["BuildRobloxUrl"]
       32 LOADK                            R3 K10 ["apis"]
       33 LOADK                            R4 K11 ["deeplinks/v2/get-or-create-static"]
       34 CALL                             R2 2 1
       35 SETTABLEKS                       R2 R1 K4 ["Url"]
       37 GETUPVAL                         R2 3
       38 DUPTABLE                         R4 K14 [{"linkType", "targetId"}]
       39 GETUPVAL                         R6 4
       40 GETTABLEKS                       R6 R6 K15 ["LINKTYPE_EDIT"]
       42 JUMPIFNOTEQ                      R0 R6 ; [+3]
       44 LOADK                            R5 K16 ["STUDIOEDIT"]
       45 JUMP                             ; [+1]
       46 LOADK                            R5 K17 ["STUDIOTEAMTEST"]
       47 SETTABLEKS                       R5 R4 K12 ["linkType"]
       49 GETIMPORT                        R6 K19 [game]
       51 GETTABLEKS                       R6 R6 K20 ["PlaceId"]
       53 FASTCALL1                        TOSTRING R6 ; [+2]
       54 GETIMPORT                        R5 K22 [tostring]
       56 CALL                             R5 1 1
       57 SETTABLEKS                       R5 R4 K13 ["targetId"]
       59 NAMECALL                         R2 R2 K23 ["JSONEncode"]
       61 CALL                             R2 2 1
       62 SETTABLEKS                       R2 R1 K7 ["Body"]
       64 GETUPVAL                         R2 2
       65 GETTABLEKS                       R2 R2 K24 ["Request"]
       67 MOVE                             R3 R1
       68 CALL                             R2 1 1
       69 NEWCLOSURE                       R4 P0
       70 CAPTURE                          UPVAL U0
       71 CAPTURE                          VAL R0
       72 CAPTURE                          UPVAL U5
       73 CAPTURE                          VAL R1
       74 CAPTURE                          UPVAL U3
       75 NAMECALL                         R2 R2 K25 ["andThen"]
       77 CALL                             R2 2 1
       78 NEWCLOSURE                       R4 P1
       79 CAPTURE                          UPVAL U0
       80 CAPTURE                          VAL R0
       81 CAPTURE                          UPVAL U5
       82 CAPTURE                          VAL R1
       83 NAMECALL                         R2 R2 K26 ["catch"]
       85 CALL                             R2 2 1
       86 GETUPVAL                         R3 0
       87 GETTABLEKS                       R3 R3 K3 ["pendingLinkFetches"]
       89 SETTABLE                         R2 R3 R0
       90 RETURN                           R2 1

PROTO_15:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["PlaceId"]
        4 JUMPIFEQKN                       R0 K3 [0] ; [+4]
        6 GETUPVAL                         R0 0
        7 CALL                             R0 0 1
        8 JUMPIF                           R0 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 1
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K4 ["LINKTYPE_EDIT"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["UpdateAsync"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_17:
        0 JUMPIFNOT                        R0 ; [+10]
        1 GETTABLEKS                       R2 R1 K0 ["StatusCode"]
        3 LOADN                            R3 200
        4 JUMPIFLT                         R2 R3 ; [+6]
        6 GETTABLEKS                       R2 R1 K0 ["StatusCode"]
        8 LOADN                            R3 300
        9 JUMPIFNOTLE                      R3 R2 ; [+30]
       11 GETUPVAL                         R2 0
       12 GETUPVAL                         R4 1
       13 DUPTABLE                         R5 K7 [{["url"], ["statusCode"], ["errorDetails"], ["user"], ["ampresponse"] = ""}]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K8 ["Url"]
       17 SETTABLEKS                       R6 R5 K1 ["url"]
       19 GETTABLEKS                       R6 R1 K0 ["StatusCode"]
       21 SETTABLEKS                       R6 R5 K2 ["statusCode"]
       23 GETTABLEKS                       R6 R1 K9 ["Body"]
       25 SETTABLEKS                       R6 R5 K3 ["errorDetails"]
       27 GETUPVAL                         R6 3
       28 NAMECALL                         R6 R6 K10 ["GetUserId"]
       30 CALL                             R6 1 1
       31 SETTABLEKS                       R6 R5 K4 ["user"]
       33 NAMECALL                         R2 R2 K11 ["logRobloxTelemetryEvent"]
       35 CALL                             R2 3 0
       36 GETUPVAL                         R2 4
       37 LOADK                            R3 K12 ["Failed to fetch AMP collab auth status"]
       38 CALL                             R2 1 -1
       39 RETURN                           R2 -1
       40 GETUPVAL                         R2 5
       41 GETTABLEKS                       R4 R1 K9 ["Body"]
       43 NAMECALL                         R2 R2 K13 ["JSONDecode"]
       45 CALL                             R2 2 1
       46 GETTABLEKS                       R3 R2 K14 ["access"]
       48 JUMPIFNOTEQKS                    R3 K15 ["Granted"] ; [+3]
       50 LOADB                            R4 1
       51 JUMP                             ; [+1]
       52 LOADB                            R4 0
       53 JUMPIFEQKS                       R3 K15 ["Granted"] ; [+30]
       55 JUMPIFEQKS                       R3 K16 ["Denied"] ; [+28]
       57 GETUPVAL                         R5 0
       58 GETUPVAL                         R7 1
       59 DUPTABLE                         R8 K17 [{"url", "statusCode", "errorDetails", "user", "ampresponse"}]
       60 GETUPVAL                         R9 2
       61 GETTABLEKS                       R9 R9 K8 ["Url"]
       63 SETTABLEKS                       R9 R8 K1 ["url"]
       65 GETTABLEKS                       R9 R1 K0 ["StatusCode"]
       67 SETTABLEKS                       R9 R8 K2 ["statusCode"]
       69 GETTABLEKS                       R9 R1 K9 ["Body"]
       71 SETTABLEKS                       R9 R8 K3 ["errorDetails"]
       73 GETUPVAL                         R9 3
       74 NAMECALL                         R9 R9 K10 ["GetUserId"]
       76 CALL                             R9 1 1
       77 SETTABLEKS                       R9 R8 K4 ["user"]
       79 SETTABLEKS                       R3 R8 K5 ["ampresponse"]
       81 NAMECALL                         R5 R5 K11 ["logRobloxTelemetryEvent"]
       83 CALL                             R5 3 0
       84 JUMPIFNOTEQKS                    R3 K18 ["Error"] ; [+4]
       86 GETUPVAL                         R5 6
       87 JUMPIFNOT                        R5 ; [+1]
       88 LOADB                            R4 1
       89 JUMPIFNOTEQKS                    R3 K19 ["Actionable"] ; [+4]
       91 GETUPVAL                         R5 7
       92 JUMPIFNOT                        R5 ; [+1]
       93 LOADB                            R4 1
       94 GETUPVAL                         R5 8
       95 JUMPIFNOT                        R5 ; [+17]
       96 GETUPVAL                         R5 9
       97 GETTABLEKS                       R5 R5 K20 ["Plugin"]
       99 LOADK                            R7 K21 ["Settings"]
      100 NAMECALL                         R5 R5 K22 ["GetPluginComponent"]
      102 CALL                             R5 2 1
      103 GETUPVAL                         R6 10
      104 NOT                              R7 R4
      105 SETTABLEKS                       R7 R6 K23 ["Value"]
      107 GETIMPORT                        R6 K26 [task.spawn]
      109 NEWCLOSURE                       R7 P0
      110 CAPTURE                          VAL R5
      111 CAPTURE                          UPVAL U10
      112 CALL                             R6 1 0
      113 JUMPIFNOT                        R4 ; [+12]
      114 GETUPVAL                         R5 0
      115 GETUPVAL                         R7 11
      116 DUPTABLE                         R8 K32 [{["userid"], ["telemetryType"] = "load", ["upsellEntrySurface"] = "manage_collaborators"}]
      117 GETUPVAL                         R9 3
      118 NAMECALL                         R9 R9 K10 ["GetUserId"]
      120 CALL                             R9 1 1
      121 SETTABLEKS                       R9 R8 K27 ["userid"]
      123 NAMECALL                         R5 R5 K11 ["logRobloxTelemetryEvent"]
      125 CALL                             R5 3 0
      126 GETUPVAL                         R5 12
      127 MOVE                             R6 R4
      128 CALL                             R5 1 -1
      129 RETURN                           R5 -1

PROTO_18:
        0 DUPTABLE                         R2 K4 [{[1] = "GET", ["Url"], ["Headers"]}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K5 ["BuildRobloxUrl"]
        4 LOADK                            R4 K6 ["apis"]
        5 LOADK                            R5 K7 ["access-management/v1/upsell-feature-access?featureName=ShouldShowCollabBanner&nameSpace=studio/CollaborationSettings"]
        6 CALL                             R3 2 1
        7 SETTABLEKS                       R3 R2 K2 ["Url"]
        9 NEWTABLE                         R3 1 0
       11 LOADK                            R4 K8 ["application/json"]
       12 SETTABLEKS                       R4 R3 K9 ["Content-Type"]
       14 SETTABLEKS                       R3 R2 K3 ["Headers"]
       16 GETUPVAL                         R3 1
       17 MOVE                             R5 R2
       18 NAMECALL                         R3 R3 K10 ["RequestInternal"]
       20 CALL                             R3 2 1
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          VAL R1
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          UPVAL U8
       32 CAPTURE                          UPVAL U9
       33 CAPTURE                          UPVAL U10
       34 CAPTURE                          VAL R0
       35 NAMECALL                         R3 R3 K11 ["Start"]
       37 CALL                             R3 2 -1
       38 RETURN                           R3 -1

PROTO_19:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["PlaceId"]
        4 JUMPIFEQKN                       R0 K3 [0] ; [+4]
        6 GETUPVAL                         R0 0
        7 CALL                             R0 0 1
        8 JUMPIF                           R0 ; [+6]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K4 ["resolve"]
       12 LOADB                            R1 0
       13 CALL                             R0 1 -1
       14 RETURN                           R0 -1
       15 GETUPVAL                         R0 1
       16 GETTABLEKS                       R0 R0 K5 ["new"]
       18 NEWCLOSURE                       R1 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          UPVAL U7
       25 CAPTURE                          UPVAL U8
       26 CAPTURE                          UPVAL U9
       27 CAPTURE                          UPVAL U10
       28 CAPTURE                          UPVAL U11
       29 CAPTURE                          UPVAL U12
       30 CALL                             R0 1 -1
       31 RETURN                           R0 -1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 GETTABLEKS                       R3 R1 K1 ["Plugin"]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R0 K2 ["plugin"]
        8 DUPTABLE                         R2 K7 [{["enabled"] = False, ["links"], ["shouldPromptCollabAuth"] = False}]
        9 NEWTABLE                         R3 2 0
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K8 ["LINKTYPE_EDIT"]
       14 LOADNIL                          R5
       15 SETTABLE                         R5 R3 R4
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K9 ["LINKTYPE_TEAM_TEST"]
       19 LOADNIL                          R5
       20 SETTABLE                         R5 R3 R4
       21 SETTABLEKS                       R3 R2 K5 ["links"]
       23 SETTABLEKS                       R2 R0 K10 ["state"]
       25 NEWTABLE                         R2 0 0
       27 SETTABLEKS                       R2 R0 K11 ["pendingLinkFetches"]
       29 NEWCLOSURE                       R2 P0
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R2 R0 K12 ["toggleEnabled"]
       33 NEWCLOSURE                       R2 P1
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U2
       36 SETTABLEKS                       R2 R0 K13 ["onClose"]
       38 NEWCLOSURE                       R2 P2
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R2 R0 K14 ["onRestore"]
       42 NEWCLOSURE                       R2 P3
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R2 R0 K15 ["onWidgetEnabledChanged"]
       46 NEWTABLE                         R2 16 0
       48 GETUPVAL                         R3 3
       49 GETTABLEKS                       R3 R3 K0 ["new"]
       51 CALL                             R3 0 1
       52 GETUPVAL                         R4 4
       53 GETTABLEKS                       R4 R4 K16 ["fflagAddPlayTesterPermission"]
       55 JUMPIFNOT                        R4 ; [+22]
       56 GETUPVAL                         R4 5
       57 GETTABLEKS                       R4 R4 K0 ["new"]
       59 NAMECALL                         R5 R3 K17 ["get"]
       61 CALL                             R5 1 -1
       62 CALL                             R4 -1 1
       63 LOADNIL                          R5
       64 SETTABLEKS                       R5 R0 K18 ["gameLink"]
       66 LOADNIL                          R5
       67 SETTABLEKS                       R5 R0 K19 ["pendingGameLinkFetch"]
       69 LOADB                            R5 0
       70 SETTABLEKS                       R5 R0 K20 ["hasPrefetchedGameLink"]
       72 NEWCLOSURE                       R5 P4
       73 CAPTURE                          VAL R0
       74 CAPTURE                          UPVAL U6
       75 CAPTURE                          VAL R4
       76 SETTABLEKS                       R5 R0 K21 ["fetchGameLink"]
       78 GETUPVAL                         R4 7
       79 GETTABLEKS                       R4 R4 K0 ["new"]
       81 NAMECALL                         R5 R3 K17 ["get"]
       83 CALL                             R5 1 -1
       84 CALL                             R4 -1 1
       85 GETUPVAL                         R5 8
       86 GETTABLEKS                       R5 R5 K0 ["new"]
       88 NAMECALL                         R6 R3 K17 ["get"]
       90 CALL                             R6 1 -1
       91 CALL                             R5 -1 1
       92 GETUPVAL                         R6 9
       93 GETTABLEKS                       R6 R6 K0 ["new"]
       95 NAMECALL                         R7 R3 K17 ["get"]
       97 CALL                             R7 1 -1
       98 CALL                             R6 -1 1
       99 GETUPVAL                         R7 10
      100 GETTABLEKS                       R7 R7 K0 ["new"]
      102 NAMECALL                         R8 R3 K17 ["get"]
      104 CALL                             R8 1 -1
      105 CALL                             R7 -1 1
      106 GETUPVAL                         R8 11
      107 GETTABLEKS                       R8 R8 K0 ["new"]
      109 NAMECALL                         R9 R3 K17 ["get"]
      111 CALL                             R9 1 -1
      112 CALL                             R8 -1 1
      113 GETUPVAL                         R9 12
      114 GETTABLEKS                       R9 R9 K0 ["new"]
      116 NAMECALL                         R10 R3 K17 ["get"]
      118 CALL                             R10 1 -1
      119 CALL                             R9 -1 1
      120 LOADNIL                          R10
      121 GETUPVAL                         R11 13
      122 JUMPIFNOT                        R11 ; [+8]
      123 GETUPVAL                         R11 14
      124 GETTABLEKS                       R11 R11 K0 ["new"]
      126 NAMECALL                         R12 R3 K17 ["get"]
      128 CALL                             R12 1 -1
      129 CALL                             R11 -1 1
      130 MOVE                             R10 R11
      131 NAMECALL                         R11 R3 K17 ["get"]
      133 CALL                             R11 1 1
      134 SETTABLEKS                       R11 R2 K22 ["networking"]
      136 SETTABLEKS                       R4 R2 K23 ["groupMetadataController"]
      138 SETTABLEKS                       R5 R2 K24 ["groupRolePermisionsController"]
      140 SETTABLEKS                       R6 R2 K25 ["gamePermissionsController"]
      142 GETUPVAL                         R11 4
      143 GETTABLEKS                       R11 R11 K16 ["fflagAddPlayTesterPermission"]
      145 JUMPIFNOT                        R11 ; [+9]
      146 GETUPVAL                         R11 15
      147 GETTABLEKS                       R11 R11 K0 ["new"]
      149 NAMECALL                         R12 R3 K17 ["get"]
      151 CALL                             R12 1 -1
      152 CALL                             R11 -1 1
      153 SETTABLEKS                       R11 R2 K26 ["playTestersController"]
      155 SETTABLEKS                       R7 R2 K27 ["granularPermissionsController"]
      157 SETTABLEKS                       R8 R2 K28 ["gameMetadataController"]
      159 SETTABLEKS                       R9 R2 K29 ["socialController"]
      161 GETUPVAL                         R11 13
      162 JUMPIFNOT                        R11 ; [+2]
      163 SETTABLEKS                       R10 R2 K30 ["likelyCollaboratorsController"]
      165 GETUPVAL                         R11 16
      166 GETTABLEKS                       R11 R11 K31 ["ThunkWithArgsMiddleware"]
      168 MOVE                             R12 R2
      169 CALL                             R11 1 1
      170 NEWTABLE                         R12 0 1
      172 MOVE                             R13 R11
      173 SETLIST                          R12 R13 1 [1]
      175 GETUPVAL                         R13 17
      176 GETTABLEKS                       R13 R13 K32 ["Store"]
      178 GETTABLEKS                       R13 R13 K0 ["new"]
      180 GETUPVAL                         R14 18
      181 LOADNIL                          R15
      182 MOVE                             R16 R12
      183 CALL                             R13 3 1
      184 SETTABLEKS                       R13 R0 K33 ["store"]
      186 GETUPVAL                         R13 19
      187 GETTABLEKS                       R13 R13 K34 ["Localization"]
      189 GETTABLEKS                       R13 R13 K0 ["new"]
      191 DUPTABLE                         R14 K39 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "ManageCollaborators"}]
      192 GETUPVAL                         R15 20
      193 SETTABLEKS                       R15 R14 K35 ["stringResourceTable"]
      195 GETUPVAL                         R15 21
      196 SETTABLEKS                       R15 R14 K36 ["translationResourceTable"]
      198 CALL                             R13 1 1
      199 SETTABLEKS                       R13 R0 K40 ["localization"]
      201 GETUPVAL                         R13 19
      202 GETTABLEKS                       R13 R13 K41 ["Analytics"]
      204 GETTABLEKS                       R13 R13 K0 ["new"]
      206 DUPCLOSURE                       R14 K42 [PROTO_8]
      207 NEWTABLE                         R15 0 0
      209 CALL                             R13 2 1
      210 SETTABLEKS                       R13 R0 K43 ["analytics"]
      212 GETTABLEKS                       R13 R1 K1 ["Plugin"]
      214 LOADK                            R15 K44 ["Actions"]
      215 NAMECALL                         R13 R13 K45 ["GetPluginComponent"]
      217 CALL                             R13 2 1
      218 DUPTABLE                         R16 K54 [{["DataModel"] = "Standalone", ["PluginId"] = "ManageCollaborators", ["PluginType"] = "Unknown", ["Category"] = "Actions", ["ItemId"] = "Open"}]
      219 NAMECALL                         R14 R13 K55 ["BindToActivatedAsync"]
      221 CALL                             R14 2 1
      222 NEWCLOSURE                       R16 P6
      223 CAPTURE                          VAL R0
      224 NAMECALL                         R14 R14 K56 ["Connect"]
      226 CALL                             R14 2 1
      227 SETTABLEKS                       R14 R0 K57 ["onActionActivated"]
      229 GETUPVAL                         R14 22
      230 GETTABLEKS                       R14 R14 K58 ["Util"]
      232 GETTABLEKS                       R14 R14 K59 ["createFoundationDesignBinding"]
      234 CALL                             R14 0 2
      235 SETTABLEKS                       R15 R0 K60 ["onFoundationStyleSheetChange"]
      237 GETUPVAL                         R16 23
      238 GETTABLEKS                       R16 R16 K0 ["new"]
      240 GETUPVAL                         R17 24
      241 GETTABLEKS                       R18 R1 K1 ["Plugin"]
      243 LOADNIL                          R19
      244 LOADNIL                          R20
      245 NEWTABLE                         R21 0 1
      247 MOVE                             R22 R14
      248 SETLIST                          R21 R22 1 [1]
      250 CALL                             R17 4 -1
      251 CALL                             R16 -1 1
      252 SETTABLEKS                       R16 R0 K61 ["design"]
      254 GETUPVAL                         R16 25
      255 JUMPIFNOT                        R16 ; [+33]
      256 NEWCLOSURE                       R16 P7
      257 CAPTURE                          UPVAL U26
      258 CAPTURE                          UPVAL U27
      259 CAPTURE                          UPVAL U28
      260 CAPTURE                          UPVAL U1
      261 NEWCLOSURE                       R17 P8
      262 CAPTURE                          VAL R0
      263 CAPTURE                          UPVAL U6
      264 CAPTURE                          UPVAL U29
      265 CAPTURE                          UPVAL U30
      266 CAPTURE                          UPVAL U1
      267 CAPTURE                          VAL R16
      268 SETTABLEKS                       R17 R0 K62 ["fetchLink"]
      270 NEWCLOSURE                       R18 P9
      271 CAPTURE                          UPVAL U31
      272 CAPTURE                          VAL R17
      273 CAPTURE                          UPVAL U1
      274 GETIMPORT                        R19 K64 [game]
      276 GETTABLEKS                       R19 R19 K65 ["PlaceId"]
      278 JUMPIFEQKN                       R19 K66 [0] ; [+10]
      280 GETUPVAL                         R19 31
      281 CALL                             R19 0 1
      282 JUMPIF                           R19 ; [+1]
      283 JUMP                             ; [+5]
      284 MOVE                             R19 R17
      285 GETUPVAL                         R20 1
      286 GETTABLEKS                       R20 R20 K8 ["LINKTYPE_EDIT"]
      288 CALL                             R19 1 0
      289 GETUPVAL                         R17 32
      290 NOT                              R16 R17
      291 JUMPIFNOT                        R16 ; [+14]
      292 NEWCLOSURE                       R16 P10
      293 CAPTURE                          UPVAL U31
      294 CAPTURE                          UPVAL U6
      295 CAPTURE                          UPVAL U29
      296 CAPTURE                          UPVAL U30
      297 CAPTURE                          UPVAL U27
      298 CAPTURE                          UPVAL U33
      299 CAPTURE                          UPVAL U34
      300 CAPTURE                          UPVAL U35
      301 CAPTURE                          UPVAL U36
      302 CAPTURE                          UPVAL U37
      303 CAPTURE                          VAL R1
      304 CAPTURE                          UPVAL U38
      305 CAPTURE                          UPVAL U39
      306 SETTABLEKS                       R16 R0 K67 ["getCollabAuthStatus"]
      308 RETURN                           R0 0

PROTO_21:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Failed to prefetch game link: "]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K4 [tostring]
        7 CALL                             R4 1 1
        8 CONCAT                           R2 R3 R4
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_22:
        0 DUPTABLE                         R1 K1 [{"shouldPromptCollabAuth"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["shouldPromptCollabAuth"]
        4 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R1 R1 K0 ["setState"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_24:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R3 K0 [PROTO_24]
        2 NAMECALL                         R1 R1 K1 ["setState"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["fflagAddPlayTesterPermission"]
        3 JUMPIFNOT                        R3 ; [+30]
        4 GETTABLEKS                       R3 R0 K1 ["hasPrefetchedGameLink"]
        6 JUMPIF                           R3 ; [+27]
        7 GETTABLEKS                       R3 R2 K2 ["enabled"]
        9 JUMPIF                           R3 ; [+24]
       10 GETTABLEKS                       R3 R0 K3 ["state"]
       12 GETTABLEKS                       R3 R3 K2 ["enabled"]
       14 JUMPIFNOT                        R3 ; [+19]
       15 GETIMPORT                        R3 K5 [game]
       17 GETTABLEKS                       R3 R3 K6 ["PlaceId"]
       19 JUMPIFEQKN                       R3 K7 [0] ; [+14]
       21 GETUPVAL                         R3 1
       22 CALL                             R3 0 1
       23 JUMPIFNOT                        R3 ; [+10]
       24 LOADB                            R3 1
       25 SETTABLEKS                       R3 R0 K1 ["hasPrefetchedGameLink"]
       27 GETTABLEKS                       R3 R0 K8 ["fetchGameLink"]
       29 CALL                             R3 0 1
       30 DUPCLOSURE                       R5 K9 [PROTO_21]
       31 NAMECALL                         R3 R3 K10 ["catch"]
       33 CALL                             R3 2 0
       34 GETUPVAL                         R3 2
       35 JUMPIFNOT                        R3 ; [+28]
       36 GETUPVAL                         R3 3
       37 JUMPIF                           R3 ; [+26]
       38 GETTABLEKS                       R3 R2 K2 ["enabled"]
       40 GETTABLEKS                       R4 R0 K3 ["state"]
       42 GETTABLEKS                       R4 R4 K2 ["enabled"]
       44 JUMPIFEQ                         R3 R4 ; [+19]
       46 GETTABLEKS                       R3 R0 K3 ["state"]
       48 GETTABLEKS                       R3 R3 K2 ["enabled"]
       50 JUMPIFNOT                        R3 ; [+13]
       51 NAMECALL                         R3 R0 K11 ["getCollabAuthStatus"]
       53 CALL                             R3 1 1
       54 NEWCLOSURE                       R5 P1
       55 CAPTURE                          VAL R0
       56 NAMECALL                         R3 R3 K12 ["andThen"]
       58 CALL                             R3 2 1
       59 NEWCLOSURE                       R5 P2
       60 CAPTURE                          VAL R0
       61 NAMECALL                         R3 R3 K10 ["catch"]
       63 CALL                             R3 2 0
       64 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["onActionActivated"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R2 K2 ["enabled"]
        6 GETIMPORT                        R5 K4 [game]
        8 GETTABLEKS                       R5 R5 K5 ["GameId"]
       10 JUMPIFNOTEQKN                    R5 K6 [0] ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 GETUPVAL                         R5 0
       15 CALL                             R5 0 1
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K7 ["provide"]
       19 NEWTABLE                         R7 0 7
       21 GETTABLEKS                       R8 R0 K8 ["plugin"]
       23 GETUPVAL                         R9 2
       24 GETTABLEKS                       R9 R9 K9 ["new"]
       26 GETTABLEKS                       R10 R0 K10 ["store"]
       28 CALL                             R9 1 1
       29 GETUPVAL                         R10 3
       30 GETTABLEKS                       R10 R10 K9 ["new"]
       32 GETTABLEKS                       R11 R1 K11 ["Plugin"]
       34 NAMECALL                         R11 R11 K12 ["getMouse"]
       36 CALL                             R11 1 -1
       37 CALL                             R10 -1 1
       38 MOVE                             R11 R5
       39 GETTABLEKS                       R12 R0 K13 ["localization"]
       41 GETTABLEKS                       R13 R0 K14 ["analytics"]
       43 GETTABLEKS                       R14 R0 K15 ["design"]
       45 SETLIST                          R7 R8 7 [1]
       47 DUPTABLE                         R8 K17 [{"Dialog"}]
       48 GETUPVAL                         R9 4
       49 GETTABLEKS                       R9 R9 K18 ["createElement"]
       51 GETUPVAL                         R10 5
       52 DUPTABLE                         R11 K26 [{["CreateWidgetImmediately"] = True, ["Enabled"], ["Modal"], ["Title"], ["Size"], ["OnClose"]}]
       53 SETTABLEKS                       R3 R11 K21 ["Enabled"]
       55 GETUPVAL                         R13 6
       56 NOT                              R12 R13
       57 SETTABLEKS                       R12 R11 K22 ["Modal"]
       59 GETTABLEKS                       R12 R0 K13 ["localization"]
       61 LOADK                            R14 K11 ["Plugin"]
       62 LOADK                            R15 K23 ["Title"]
       63 NAMECALL                         R12 R12 K27 ["getText"]
       65 CALL                             R12 3 1
       66 SETTABLEKS                       R12 R11 K23 ["Title"]
       68 GETIMPORT                        R12 K29 [Vector2.new]
       70 LOADN                            R13 800
       71 LOADN                            R14 571
       72 CALL                             R12 2 1
       73 SETTABLEKS                       R12 R11 K24 ["Size"]
       75 GETTABLEKS                       R12 R0 K30 ["onClose"]
       77 SETTABLEKS                       R12 R11 K25 ["OnClose"]
       79 GETUPVAL                         R12 7
       80 GETTABLEKS                       R12 R12 K18 ["createElement"]
       82 GETUPVAL                         R13 8
       83 DUPTABLE                         R14 K32 [{"onStyleSheetChange"}]
       84 GETTABLEKS                       R15 R0 K33 ["onFoundationStyleSheetChange"]
       86 SETTABLEKS                       R15 R14 K31 ["onStyleSheetChange"]
       88 DUPTABLE                         R15 K36 [{"PermissionsView", "SaveToRobloxView"}]
       89 JUMPIFNOT                        R4 ; [+42]
       90 GETUPVAL                         R16 4
       91 GETTABLEKS                       R16 R16 K18 ["createElement"]
       93 GETUPVAL                         R17 9
       94 DUPTABLE                         R18 K42 [{"CloseWidget", "Plugin", "Enabled", "Links", "FetchLink", "FetchGameLink", "ShowSafetyBanner"}]
       95 GETTABLEKS                       R19 R0 K30 ["onClose"]
       97 SETTABLEKS                       R19 R18 K37 ["CloseWidget"]
       99 GETTABLEKS                       R19 R0 K8 ["plugin"]
      101 SETTABLEKS                       R19 R18 K11 ["Plugin"]
      103 SETTABLEKS                       R3 R18 K21 ["Enabled"]
      105 GETTABLEKS                       R19 R0 K1 ["state"]
      107 GETTABLEKS                       R19 R19 K43 ["links"]
      109 SETTABLEKS                       R19 R18 K38 ["Links"]
      111 GETTABLEKS                       R19 R0 K44 ["fetchLink"]
      113 SETTABLEKS                       R19 R18 K39 ["FetchLink"]
      115 GETTABLEKS                       R19 R0 K45 ["fetchGameLink"]
      117 SETTABLEKS                       R19 R18 K40 ["FetchGameLink"]
      119 GETUPVAL                         R19 10
      120 JUMPIFNOT                        R19 ; [+7]
      121 GETUPVAL                         R20 11
      122 NOT                              R19 R20
      123 JUMPIFNOT                        R19 ; [+4]
      124 GETTABLEKS                       R19 R0 K1 ["state"]
      126 GETTABLEKS                       R19 R19 K46 ["shouldPromptCollabAuth"]
      128 SETTABLEKS                       R19 R18 K41 ["ShowSafetyBanner"]
      130 CALL                             R16 2 1
      131 JUMPIF                           R16 ; [+1]
      132 LOADNIL                          R16
      133 SETTABLEKS                       R16 R15 K34 ["PermissionsView"]
      135 NOT                              R16 R4
      136 JUMPIFNOT                        R16 ; [+10]
      137 GETUPVAL                         R16 4
      138 GETTABLEKS                       R16 R16 K18 ["createElement"]
      140 GETUPVAL                         R17 12
      141 DUPTABLE                         R18 K47 [{"CloseWidget"}]
      142 GETTABLEKS                       R19 R0 K30 ["onClose"]
      144 SETTABLEKS                       R19 R18 K37 ["CloseWidget"]
      146 CALL                             R16 2 1
      147 SETTABLEKS                       R16 R15 K35 ["SaveToRobloxView"]
      149 CALL                             R12 3 -1
      150 CALL                             R9 -1 1
      151 SETTABLEKS                       R9 R8 K16 ["Dialog"]
      153 CALL                             R6 2 -1
      154 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [game]
        9 LOADK                            R3 K5 ["DebugBuiltInPluginModalsNotBlocking"]
       10 NAMECALL                         R1 R1 K6 ["GetFastFlag"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R0 K9 ["Bin"]
       17 GETTABLEKS                       R3 R3 K10 ["defineLuaFlags"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R4 R0 K11 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Roact"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R5 R0 K11 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["Rodux"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K8 [require]
       36 GETTABLEKS                       R6 R0 K11 ["Packages"]
       38 GETTABLEKS                       R6 R6 K14 ["Framework"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R5 K15 ["Util"]
       43 GETTABLEKS                       R7 R6 K16 ["Promise"]
       45 GETIMPORT                        R8 K4 [game]
       47 LOADK                            R10 K17 ["Collab8864_ShowCopyLinkButton"]
       48 NAMECALL                         R8 R8 K6 ["GetFastFlag"]
       50 CALL                             R8 2 1
       51 GETIMPORT                        R9 K4 [game]
       53 LOADK                            R11 K18 ["Collab9119_LogLinkFetchFailures"]
       54 NAMECALL                         R9 R9 K6 ["GetFastFlag"]
       56 CALL                             R9 2 1
       57 GETIMPORT                        R10 K8 [require]
       59 GETTABLEKS                       R11 R0 K11 ["Packages"]
       61 GETTABLEKS                       R11 R11 K19 ["React"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K8 [require]
       66 GETTABLEKS                       R12 R0 K11 ["Packages"]
       68 GETTABLEKS                       R12 R12 K20 ["StudioFoundation"]
       70 CALL                             R11 1 1
       71 GETTABLEKS                       R12 R11 K21 ["Components"]
       73 GETTABLEKS                       R12 R12 K22 ["FoundationProviderAdapter"]
       75 GETTABLEKS                       R13 R5 K23 ["Styling"]
       77 GETTABLEKS                       R13 R13 K24 ["registerPluginStyles"]
       79 GETTABLEKS                       R14 R5 K25 ["ContextServices"]
       81 GETTABLEKS                       R14 R14 K26 ["Design"]
       83 GETTABLEKS                       R15 R5 K27 ["UI"]
       85 GETTABLEKS                       R16 R15 K28 ["Dialog"]
       87 GETTABLEKS                       R17 R5 K25 ["ContextServices"]
       89 GETTABLEKS                       R18 R17 K29 ["Plugin"]
       91 GETTABLEKS                       R19 R17 K30 ["Mouse"]
       93 GETTABLEKS                       R20 R17 K31 ["Store"]
       95 GETIMPORT                        R21 K8 [require]
       97 GETTABLEKS                       R22 R0 K32 ["Src"]
       99 GETTABLEKS                       R22 R22 K33 ["Reducers"]
      101 GETTABLEKS                       R22 R22 K34 ["MainReducer"]
      103 CALL                             R21 1 1
      104 GETIMPORT                        R22 K8 [require]
      106 GETTABLEKS                       R23 R0 K32 ["Src"]
      108 GETTABLEKS                       R23 R23 K35 ["Resources"]
      110 GETTABLEKS                       R23 R23 K36 ["MakeTheme"]
      112 CALL                             R22 1 1
      113 GETTABLEKS                       R23 R0 K32 ["Src"]
      115 GETTABLEKS                       R23 R23 K35 ["Resources"]
      117 GETTABLEKS                       R23 R23 K37 ["Localization"]
      119 GETTABLEKS                       R23 R23 K38 ["SourceStrings"]
      121 GETTABLEKS                       R24 R0 K32 ["Src"]
      123 GETTABLEKS                       R24 R24 K35 ["Resources"]
      125 GETTABLEKS                       R24 R24 K37 ["Localization"]
      127 GETTABLEKS                       R24 R24 K39 ["LocalizedStrings"]
      129 GETTABLEKS                       R25 R0 K32 ["Src"]
      131 GETTABLEKS                       R25 R25 K21 ["Components"]
      133 GETIMPORT                        R26 K8 [require]
      135 GETTABLEKS                       R27 R25 K40 ["PermissionsView"]
      137 CALL                             R26 1 1
      138 GETIMPORT                        R27 K8 [require]
      140 GETTABLEKS                       R28 R25 K41 ["SaveToRobloxView"]
      142 CALL                             R27 1 1
      143 GETTABLEKS                       R28 R3 K42 ["PureComponent"]
      145 LOADK                            R30 K43 ["MainPlugin"]
      146 NAMECALL                         R28 R28 K44 ["extend"]
      148 CALL                             R28 2 1
      149 GETIMPORT                        R29 K8 [require]
      151 GETTABLEKS                       R30 R0 K32 ["Src"]
      153 GETTABLEKS                       R30 R30 K45 ["Networking"]
      155 GETTABLEKS                       R30 R30 K45 ["Networking"]
      157 CALL                             R29 1 1
      158 GETIMPORT                        R30 K8 [require]
      160 GETTABLEKS                       R31 R0 K32 ["Src"]
      162 GETTABLEKS                       R31 R31 K46 ["Controllers"]
      164 GETTABLEKS                       R31 R31 K47 ["GroupMetadataController"]
      166 CALL                             R30 1 1
      167 GETIMPORT                        R31 K8 [require]
      169 GETTABLEKS                       R32 R0 K32 ["Src"]
      171 GETTABLEKS                       R32 R32 K46 ["Controllers"]
      173 GETTABLEKS                       R32 R32 K48 ["GroupRolePermissionsController"]
      175 CALL                             R31 1 1
      176 GETIMPORT                        R32 K8 [require]
      178 GETTABLEKS                       R33 R0 K32 ["Src"]
      180 GETTABLEKS                       R33 R33 K46 ["Controllers"]
      182 GETTABLEKS                       R33 R33 K49 ["GamePermissionsController"]
      184 CALL                             R32 1 1
      185 GETTABLEKS                       R34 R2 K50 ["fflagAddPlayTesterPermission"]
      187 JUMPIFNOT                        R34 ; [+10]
      188 GETIMPORT                        R33 K8 [require]
      190 GETTABLEKS                       R34 R0 K32 ["Src"]
      192 GETTABLEKS                       R34 R34 K46 ["Controllers"]
      194 GETTABLEKS                       R34 R34 K51 ["PlayTestersController"]
      196 CALL                             R33 1 1
      197 JUMP                             ; [+1]
      198 LOADNIL                          R33
      199 GETTABLEKS                       R35 R2 K50 ["fflagAddPlayTesterPermission"]
      201 JUMPIFNOT                        R35 ; [+10]
      202 GETIMPORT                        R34 K8 [require]
      204 GETTABLEKS                       R35 R0 K32 ["Src"]
      206 GETTABLEKS                       R35 R35 K46 ["Controllers"]
      208 GETTABLEKS                       R35 R35 K52 ["ShareLinksController"]
      210 CALL                             R34 1 1
      211 JUMP                             ; [+1]
      212 LOADNIL                          R34
      213 GETIMPORT                        R35 K8 [require]
      215 GETTABLEKS                       R36 R0 K32 ["Src"]
      217 GETTABLEKS                       R36 R36 K46 ["Controllers"]
      219 GETTABLEKS                       R36 R36 K53 ["GranularPermissionsController"]
      221 CALL                             R35 1 1
      222 GETIMPORT                        R36 K8 [require]
      224 GETTABLEKS                       R37 R0 K32 ["Src"]
      226 GETTABLEKS                       R37 R37 K46 ["Controllers"]
      228 GETTABLEKS                       R37 R37 K54 ["GameMetadataController"]
      230 CALL                             R36 1 1
      231 GETIMPORT                        R37 K8 [require]
      233 GETTABLEKS                       R38 R0 K32 ["Src"]
      235 GETTABLEKS                       R38 R38 K46 ["Controllers"]
      237 GETTABLEKS                       R38 R38 K55 ["SocialController"]
      239 CALL                             R37 1 1
      240 GETIMPORT                        R38 K8 [require]
      242 GETTABLEKS                       R39 R0 K32 ["Src"]
      244 GETTABLEKS                       R39 R39 K15 ["Util"]
      246 GETTABLEKS                       R39 R39 K56 ["IsLikelyCollaboratorPrefetchEnabled"]
      248 CALL                             R38 1 1
      249 MOVE                             R39 R38
      250 CALL                             R39 0 1
      251 LOADNIL                          R40
      252 JUMPIFNOT                        R39 ; [+10]
      253 GETIMPORT                        R41 K8 [require]
      255 GETTABLEKS                       R42 R0 K32 ["Src"]
      257 GETTABLEKS                       R42 R42 K46 ["Controllers"]
      259 GETTABLEKS                       R42 R42 K57 ["LikelyCollaboratorsController"]
      261 CALL                             R41 1 1
      262 MOVE                             R40 R41
      263 GETIMPORT                        R41 K8 [require]
      265 GETTABLEKS                       R42 R0 K32 ["Src"]
      267 GETTABLEKS                       R42 R42 K58 ["Actions"]
      269 GETTABLEKS                       R42 R42 K59 ["ResetStore"]
      271 CALL                             R41 1 1
      272 GETIMPORT                        R42 K8 [require]
      274 GETTABLEKS                       R43 R0 K32 ["Src"]
      276 GETTABLEKS                       R43 R43 K15 ["Util"]
      278 GETTABLEKS                       R43 R43 K60 ["Constants"]
      280 CALL                             R42 1 1
      281 LOADNIL                          R43
      282 GETIMPORT                        R44 K4 [game]
      284 LOADK                            R46 K61 ["StudioService"]
      285 NAMECALL                         R44 R44 K62 ["GetService"]
      287 CALL                             R44 2 1
      288 GETIMPORT                        R45 K8 [require]
      290 GETTABLEKS                       R46 R0 K32 ["Src"]
      292 GETTABLEKS                       R46 R46 K45 ["Networking"]
      294 GETTABLEKS                       R46 R46 K63 ["Http"]
      296 CALL                             R45 1 1
      297 GETIMPORT                        R46 K4 [game]
      299 LOADK                            R48 K64 ["HttpService"]
      300 NAMECALL                         R46 R46 K62 ["GetService"]
      302 CALL                             R46 2 1
      303 GETIMPORT                        R47 K8 [require]
      305 GETTABLEKS                       R48 R0 K32 ["Src"]
      307 GETTABLEKS                       R48 R48 K15 ["Util"]
      309 GETTABLEKS                       R48 R48 K65 ["IsTeamCreateEnabled"]
      311 CALL                             R47 1 1
      312 GETIMPORT                        R48 K8 [require]
      314 GETTABLEKS                       R49 R0 K11 ["Packages"]
      316 GETTABLEKS                       R49 R49 K66 ["TelemetryProtocol"]
      318 CALL                             R48 1 1
      319 GETTABLEKS                       R49 R48 K67 ["new"]
      321 CALL                             R49 0 1
      322 JUMPIFNOT                        R9 ; [+12]
      323 GETIMPORT                        R50 K8 [require]
      325 GETTABLEKS                       R51 R0 K32 ["Src"]
      327 GETTABLEKS                       R51 R51 K15 ["Util"]
      329 GETTABLEKS                       R51 R51 K68 ["Telemetry"]
      331 GETTABLEKS                       R51 R51 K69 ["LinkFetchFailureEvent"]
      333 CALL                             R50 1 1
      334 MOVE                             R43 R50
      335 GETIMPORT                        R50 K4 [game]
      337 LOADK                            R52 K70 ["AddVerifyAgeActionToLogoutMenu"]
      338 NAMECALL                         R50 R50 K6 ["GetFastFlag"]
      340 CALL                             R50 2 1
      341 GETIMPORT                        R51 K4 [game]
      343 LOADK                            R53 K71 ["UpsellCollabSafety2"]
      344 NAMECALL                         R51 R51 K6 ["GetFastFlag"]
      346 CALL                             R51 2 1
      347 GETIMPORT                        R52 K8 [require]
      349 GETTABLEKS                       R53 R0 K32 ["Src"]
      351 GETTABLEKS                       R53 R53 K15 ["Util"]
      353 GETTABLEKS                       R53 R53 K68 ["Telemetry"]
      355 GETTABLEKS                       R53 R53 K72 ["FetchAMPStatusFailureEvent"]
      357 CALL                             R52 1 1
      358 GETIMPORT                        R53 K8 [require]
      360 GETTABLEKS                       R54 R0 K32 ["Src"]
      362 GETTABLEKS                       R54 R54 K15 ["Util"]
      364 GETTABLEKS                       R54 R54 K68 ["Telemetry"]
      366 GETTABLEKS                       R54 R54 K73 ["SafetyUpsellBannerShownEvent"]
      368 CALL                             R53 1 1
      369 DUPTABLE                         R54 K79 [{["Uri"], ["Text"] = "placeholder", ["Enabled"] = True}]
      370 DUPTABLE                         R55 K88 [{["DataModel"] = "Standalone", ["PluginId"] = "LogoutMenu", ["Category"] = "Settings", ["ItemId"] = "UserIsAMPAgeVerified"}]
      371 SETTABLEKS                       R55 R54 K74 ["Uri"]
      373 GETIMPORT                        R55 K4 [game]
      375 LOADK                            R57 K89 ["UpsellTreatAMPErrorAsShowBanner"]
      376 NAMECALL                         R55 R55 K6 ["GetFastFlag"]
      378 CALL                             R55 2 1
      379 GETIMPORT                        R56 K4 [game]
      381 LOADK                            R58 K90 ["UpsellTreatAMPActionableAsShowBanner"]
      382 NAMECALL                         R56 R56 K6 ["GetFastFlag"]
      384 CALL                             R56 2 1
      385 GETIMPORT                        R57 K4 [game]
      387 LOADK                            R59 K91 ["UpsellCollabTrustedConnection2"]
      388 NAMECALL                         R57 R57 K6 ["GetFastFlag"]
      390 CALL                             R57 2 1
      391 NEWCLOSURE                       R58 P0
      392 CAPTURE                          VAL R18
      393 CAPTURE                          VAL R42
      394 CAPTURE                          VAL R41
      395 CAPTURE                          VAL R29
      396 CAPTURE                          VAL R2
      397 CAPTURE                          VAL R34
      398 CAPTURE                          VAL R7
      399 CAPTURE                          VAL R30
      400 CAPTURE                          VAL R31
      401 CAPTURE                          VAL R32
      402 CAPTURE                          VAL R35
      403 CAPTURE                          VAL R36
      404 CAPTURE                          VAL R37
      405 CAPTURE                          VAL R39
      406 CAPTURE                          REF R40
      407 CAPTURE                          VAL R33
      408 CAPTURE                          VAL R6
      409 CAPTURE                          VAL R4
      410 CAPTURE                          VAL R21
      411 CAPTURE                          VAL R17
      412 CAPTURE                          VAL R23
      413 CAPTURE                          VAL R24
      414 CAPTURE                          VAL R11
      415 CAPTURE                          VAL R14
      416 CAPTURE                          VAL R13
      417 CAPTURE                          VAL R8
      418 CAPTURE                          VAL R9
      419 CAPTURE                          VAL R49
      420 CAPTURE                          REF R43
      421 CAPTURE                          VAL R45
      422 CAPTURE                          VAL R46
      423 CAPTURE                          VAL R47
      424 CAPTURE                          VAL R57
      425 CAPTURE                          VAL R52
      426 CAPTURE                          VAL R44
      427 CAPTURE                          VAL R55
      428 CAPTURE                          VAL R56
      429 CAPTURE                          VAL R50
      430 CAPTURE                          VAL R54
      431 CAPTURE                          VAL R53
      432 SETTABLEKS                       R58 R28 K92 ["init"]
      434 DUPCLOSURE                       R58 K93 [PROTO_26]
      435 CAPTURE                          VAL R2
      436 CAPTURE                          VAL R47
      437 CAPTURE                          VAL R51
      438 CAPTURE                          VAL R57
      439 SETTABLEKS                       R58 R28 K94 ["didUpdate"]
      441 DUPCLOSURE                       R58 K95 [PROTO_27]
      442 SETTABLEKS                       R58 R28 K96 ["componentWillUnmount"]
      444 DUPCLOSURE                       R58 K97 [PROTO_28]
      445 CAPTURE                          VAL R22
      446 CAPTURE                          VAL R17
      447 CAPTURE                          VAL R20
      448 CAPTURE                          VAL R19
      449 CAPTURE                          VAL R3
      450 CAPTURE                          VAL R16
      451 CAPTURE                          VAL R1
      452 CAPTURE                          VAL R10
      453 CAPTURE                          VAL R12
      454 CAPTURE                          VAL R26
      455 CAPTURE                          VAL R51
      456 CAPTURE                          VAL R57
      457 CAPTURE                          VAL R27
      458 SETTABLEKS                       R58 R28 K98 ["render"]
      460 CLOSEUPVALS                      R40
      461 RETURN                           R28 1
