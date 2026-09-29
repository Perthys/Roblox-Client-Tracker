PROTO_0:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Enabled"]
        4 GETTABLEKS                       R3 R1 K2 ["OnClicked"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETTABLEKS                       R6 R0 K4 ["state"]
       10 GETTABLEKS                       R6 R6 K5 ["isHovered"]
       12 JUMPIFNOT                        R6 ; [+2]
       13 LOADN                            R5 0
       14 JUMP                             ; [+1]
       15 LOADN                            R5 1
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K6 ["createElement"]
       19 LOADK                            R7 K7 ["ImageButton"]
       20 NEWTABLE                         R8 16 0
       22 GETIMPORT                        R9 K10 [UDim2.new]
       24 LOADN                            R10 0
       25 GETTABLEKS                       R11 R4 K11 ["collaboratorItem"]
       27 GETTABLEKS                       R11 R11 K12 ["deleteButton"]
       29 GETTABLEKS                       R11 R11 K13 ["size"]
       31 LOADN                            R12 0
       32 GETTABLEKS                       R13 R4 K11 ["collaboratorItem"]
       34 GETTABLEKS                       R13 R13 K12 ["deleteButton"]
       36 GETTABLEKS                       R13 R13 K13 ["size"]
       38 CALL                             R9 4 1
       39 SETTABLEKS                       R9 R8 K14 ["Size"]
       41 GETIMPORT                        R9 K10 [UDim2.new]
       43 LOADN                            R10 1
       44 GETTABLEKS                       R11 R4 K11 ["collaboratorItem"]
       46 GETTABLEKS                       R11 R11 K15 ["xOffset"]
       48 LOADK                            R12 K16 [0.5]
       49 LOADN                            R13 0
       50 CALL                             R9 4 1
       51 SETTABLEKS                       R9 R8 K17 ["Position"]
       53 GETIMPORT                        R9 K19 [Vector2.new]
       55 LOADN                            R10 1
       56 LOADK                            R11 K16 [0.5]
       57 CALL                             R9 2 1
       58 SETTABLEKS                       R9 R8 K20 ["AnchorPoint"]
       60 GETTABLEKS                       R9 R4 K21 ["deleteIcon"]
       62 SETTABLEKS                       R9 R8 K22 ["Image"]
       64 SETTABLEKS                       R5 R8 K23 ["BackgroundTransparency"]
       66 GETTABLEKS                       R9 R4 K11 ["collaboratorItem"]
       68 GETTABLEKS                       R9 R9 K12 ["deleteButton"]
       70 GETTABLEKS                       R9 R9 K24 ["hovered"]
       72 SETTABLEKS                       R9 R8 K25 ["BackgroundColor3"]
       74 GETUPVAL                         R9 0
       75 GETTABLEKS                       R9 R9 K26 ["Event"]
       77 GETTABLEKS                       R9 R9 K27 ["Activated"]
       79 NEWCLOSURE                       R10 P0
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R3
       82 SETTABLE                         R10 R8 R9
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R9 R9 K26 ["Event"]
       86 GETTABLEKS                       R9 R9 K28 ["MouseEnter"]
       88 NEWCLOSURE                       R10 P1
       89 CAPTURE                          VAL R0
       90 SETTABLE                         R10 R8 R9
       91 GETUPVAL                         R9 0
       92 GETTABLEKS                       R9 R9 K26 ["Event"]
       94 GETTABLEKS                       R9 R9 K29 ["MouseLeave"]
       96 NEWCLOSURE                       R10 P2
       97 CAPTURE                          VAL R0
       98 SETTABLE                         R10 R8 R9
       99 CALL                             R6 2 -1
      100 RETURN                           R6 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["HidePermissionEditor"]
        4 JUMPIFNOT                        R2 ; [+2]
        5 LOADK                            R2 K2 [""]
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R1 K3 ["CurrentPermission"]
        9 GETTABLEKS                       R3 R1 K4 ["AvailablePermissions"]
       11 GETTABLEKS                       R4 R1 K5 ["Localization"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K6 ["MultipleKey"]
       16 JUMPIFNOTEQ                      R2 R5 ; [+7]
       18 LOADK                            R7 K7 ["PermissionLabels"]
       19 LOADK                            R8 K8 ["Multiple"]
       20 NAMECALL                         R5 R4 K9 ["getText"]
       22 CALL                             R5 3 -1
       23 RETURN                           R5 -1
       24 MOVE                             R5 R3
       25 LOADNIL                          R6
       26 LOADNIL                          R7
       27 FORGPREP                         R5
       28 GETTABLEKS                       R10 R9 K10 ["Key"]
       30 JUMPIFNOTEQ                      R10 R2 ; [+4]
       32 GETTABLEKS                       R10 R9 K11 ["Display"]
       34 RETURN                           R10 1
       35 FORGLOOP                         R5 2 ; [-8]
       37 GETUPVAL                         R5 1
       38 JUMPIFNOT                        R5 ; [+34]
       39 GETUPVAL                         R5 2
       40 JUMPIFNOT                        R5 ; [+26]
       41 GETUPVAL                         R6 3
       42 GETTABLE                         R5 R6 R2
       43 NEWTABLE                         R6 0 0
       45 MOVE                             R7 R3
       46 LOADNIL                          R8
       47 LOADNIL                          R9
       48 FORGPREP                         R7
       49 GETUPVAL                         R15 3
       50 GETTABLEKS                       R16 R11 K10 ["Key"]
       52 GETTABLE                         R14 R15 R16
       53 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
       55 MOVE                             R13 R6
       56 GETIMPORT                        R12 K14 [table.insert]
       58 CALL                             R12 2 0
       59 FORGLOOP                         R7 2 ; [-11]
       61 GETUPVAL                         R7 4
       62 GETTABLEKS                       R7 R7 K15 ["reportUnknownPermission"]
       64 MOVE                             R8 R5
       65 MOVE                             R9 R6
       66 CALL                             R7 2 0
       67 LOADK                            R7 K7 ["PermissionLabels"]
       68 LOADK                            R8 K16 ["Edit"]
       69 NAMECALL                         R5 R4 K9 ["getText"]
       71 CALL                             R5 3 -1
       72 RETURN                           R5 -1
       73 LOADB                            R6 0
       74 FASTCALL1                        ASSERT R6 ; [+2]
       75 GETIMPORT                        R5 K18 [assert]
       77 CALL                             R5 1 0
       78 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["createElement"]
        3 GETUPVAL                         R6 1
        4 DUPTABLE                         R7 K8 [{["LayoutOrder"], ["Size"], ["Style"], ["Text"], ["TextWrapped"] = True, ["TextXAlignment"]}]
        5 SETTABLEKS                       R4 R7 K1 ["LayoutOrder"]
        7 GETIMPORT                        R8 K11 [UDim2.new]
        9 LOADN                            R9 1
       10 LOADN                            R10 0
       11 LOADN                            R11 0
       12 MOVE                             R12 R2
       13 CALL                             R8 4 1
       14 SETTABLEKS                       R8 R7 K2 ["Size"]
       16 SETTABLEKS                       R1 R7 K3 ["Style"]
       18 SETTABLEKS                       R0 R7 K4 ["Text"]
       20 GETIMPORT                        R8 K14 [Enum.TextXAlignment.Left]
       22 SETTABLEKS                       R8 R7 K7 ["TextXAlignment"]
       24 DUPTABLE                         R8 K16 [{"Padding"}]
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R9 R9 K0 ["createElement"]
       28 LOADK                            R10 K17 ["UIPadding"]
       29 DUPTABLE                         R11 K20 [{"PaddingTop", "PaddingLeft"}]
       30 GETIMPORT                        R12 K22 [UDim.new]
       32 LOADN                            R13 0
       33 MOVE                             R14 R3
       34 CALL                             R12 2 1
       35 SETTABLEKS                       R12 R11 K18 ["PaddingTop"]
       37 GETIMPORT                        R12 K22 [UDim.new]
       39 LOADN                            R13 0
       40 MOVE                             R14 R3
       41 CALL                             R12 2 1
       42 SETTABLEKS                       R12 R11 K19 ["PaddingLeft"]
       44 CALL                             R9 2 1
       45 SETTABLEKS                       R9 R8 K15 ["Padding"]
       47 CALL                             R5 3 -1
       48 RETURN                           R5 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["Writable"]
        5 JUMPIFNOT                        R1 ; [+17]
        6 GETTABLEKS                       R1 R0 K2 ["Key"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["props"]
       11 GETTABLEKS                       R2 R2 K3 ["CurrentPermission"]
       13 JUMPIFEQ                         R1 R2 ; [+9]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K0 ["props"]
       18 GETTABLEKS                       R1 R1 K4 ["OnPermissionChanged"]
       20 GETTABLEKS                       R2 R0 K2 ["Key"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["Stylizer"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["props"]
        8 GETTABLEKS                       R4 R4 K2 ["DropdownItemTooltipText"]
       10 GETTABLEKS                       R5 R0 K3 ["Display"]
       12 GETTABLEKS                       R6 R0 K4 ["Description"]
       14 DUPTABLE                         R7 K8 [{"UILayout", "MainTextLabel", "DescriptionTextLabel"}]
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R8 R8 K9 ["createElement"]
       18 LOADK                            R9 K10 ["UIListLayout"]
       19 DUPTABLE                         R10 K15 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
       20 GETIMPORT                        R11 K18 [Enum.FillDirection.Vertical]
       22 SETTABLEKS                       R11 R10 K11 ["FillDirection"]
       24 GETIMPORT                        R11 K21 [UDim.new]
       26 LOADN                            R12 0
       27 LOADN                            R13 0
       28 CALL                             R11 2 1
       29 SETTABLEKS                       R11 R10 K12 ["Padding"]
       31 GETIMPORT                        R11 K23 [Enum.SortOrder.LayoutOrder]
       33 SETTABLEKS                       R11 R10 K13 ["SortOrder"]
       35 GETIMPORT                        R11 K25 [Enum.VerticalAlignment.Top]
       37 SETTABLEKS                       R11 R10 K14 ["VerticalAlignment"]
       39 CALL                             R8 2 1
       40 SETTABLEKS                       R8 R7 K5 ["UILayout"]
       42 GETGLOBAL                        R8 K26 ["createTextLabel"]
       44 MOVE                             R9 R5
       45 LOADK                            R10 K27 ["Normal"]
       46 GETTABLEKS                       R11 R3 K28 ["fontStyle"]
       48 GETTABLEKS                       R11 R11 K27 ["Normal"]
       50 GETTABLEKS                       R11 R11 K29 ["TextSize"]
       52 GETTABLEKS                       R12 R3 K30 ["selectInput"]
       54 GETTABLEKS                       R12 R12 K31 ["padding"]
       56 LOADN                            R13 0
       57 CALL                             R8 5 1
       58 SETTABLEKS                       R8 R7 K6 ["MainTextLabel"]
       60 GETGLOBAL                        R8 K26 ["createTextLabel"]
       62 MOVE                             R9 R6
       63 LOADK                            R10 K32 ["SubText"]
       64 GETTABLEKS                       R11 R3 K28 ["fontStyle"]
       66 GETTABLEKS                       R11 R11 K33 ["Subtext"]
       68 GETTABLEKS                       R11 R11 K29 ["TextSize"]
       70 GETTABLEKS                       R12 R3 K30 ["selectInput"]
       72 GETTABLEKS                       R12 R12 K31 ["padding"]
       74 LOADN                            R13 1
       75 CALL                             R8 5 1
       76 SETTABLEKS                       R8 R7 K7 ["DescriptionTextLabel"]
       78 GETUPVAL                         R8 0
       79 GETTABLEKS                       R8 R8 K0 ["props"]
       81 GETTABLEKS                       R8 R8 K34 ["DropdownTooltipItemKey"]
       83 JUMPIFNOT                        R4 ; [+57]
       84 JUMPIFNOT                        R8 ; [+56]
       85 GETTABLEKS                       R9 R0 K35 ["Key"]
       87 JUMPIFNOTEQ                      R9 R8 ; [+53]
       89 GETUPVAL                         R9 1
       90 GETTABLEKS                       R9 R9 K9 ["createElement"]
       92 LOADK                            R10 K36 ["Frame"]
       93 DUPTABLE                         R11 K40 [{["Size"], ["LayoutOrder"], ["BackgroundTransparency"] = 1}]
       94 GETIMPORT                        R12 K42 [UDim2.new]
       96 LOADN                            R13 1
       97 LOADN                            R14 0
       98 LOADN                            R15 0
       99 GETTABLEKS                       R16 R3 K30 ["selectInput"]
      101 GETTABLEKS                       R16 R16 K43 ["button"]
      103 GETTABLEKS                       R16 R16 K44 ["height"]
      105 CALL                             R12 4 1
      106 SETTABLEKS                       R12 R11 K37 ["Size"]
      108 SETTABLEKS                       R1 R11 K22 ["LayoutOrder"]
      110 DUPTABLE                         R12 K47 [{"ItemButton", "ItemTooltip"}]
      111 GETUPVAL                         R13 1
      112 GETTABLEKS                       R13 R13 K9 ["createElement"]
      114 GETUPVAL                         R14 2
      115 DUPTABLE                         R15 K49 [{"Size", "OnClick"}]
      116 GETIMPORT                        R16 K51 [UDim2.fromScale]
      118 LOADN                            R17 1
      119 LOADN                            R18 1
      120 CALL                             R16 2 1
      121 SETTABLEKS                       R16 R15 K37 ["Size"]
      123 SETTABLEKS                       R2 R15 K48 ["OnClick"]
      125 MOVE                             R16 R7
      126 CALL                             R13 3 1
      127 SETTABLEKS                       R13 R12 K45 ["ItemButton"]
      129 GETUPVAL                         R13 1
      130 GETTABLEKS                       R13 R13 K9 ["createElement"]
      132 GETUPVAL                         R14 3
      133 DUPTABLE                         R15 K53 [{"Text"}]
      134 SETTABLEKS                       R4 R15 K52 ["Text"]
      136 CALL                             R13 2 1
      137 SETTABLEKS                       R13 R12 K46 ["ItemTooltip"]
      139 CALL                             R9 3 -1
      140 RETURN                           R9 -1
      141 GETUPVAL                         R9 1
      142 GETTABLEKS                       R9 R9 K9 ["createElement"]
      144 GETUPVAL                         R10 2
      145 DUPTABLE                         R11 K54 [{"Size", "LayoutOrder", "OnClick"}]
      146 GETIMPORT                        R12 K42 [UDim2.new]
      148 LOADN                            R13 1
      149 LOADN                            R14 0
      150 LOADN                            R15 0
      151 GETTABLEKS                       R16 R3 K30 ["selectInput"]
      153 GETTABLEKS                       R16 R16 K43 ["button"]
      155 GETTABLEKS                       R16 R16 K44 ["height"]
      157 CALL                             R12 4 1
      158 SETTABLEKS                       R12 R11 K37 ["Size"]
      160 SETTABLEKS                       R1 R11 K22 ["LayoutOrder"]
      162 SETTABLEKS                       R2 R11 K48 ["OnClick"]
      164 MOVE                             R12 R7
      165 CALL                             R9 3 -1
      166 RETURN                           R9 -1

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onItemActivated"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 SETTABLEKS                       R1 R0 K1 ["onRenderItem"]
       11 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["fflagManageCollaboratorsAgeGatingTelemetry"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R1 K1 ["CanCollaborateResponse"]
        7 JUMPIFNOTEQKNIL                  R2 ; [+7]
        9 GETTABLEKS                       R2 R0 K2 ["props"]
       11 GETTABLEKS                       R2 R2 K1 ["CanCollaborateResponse"]
       13 JUMPIFNOTEQKNIL                  R2 ; [+2]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R2 R0 K2 ["props"]
       18 GETUPVAL                         R4 1
       19 JUMPIF                           R4 ; [+3]
       20 GETTABLEKS                       R3 R2 K3 ["hidePermissionsForNonGroupOwner"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R3
       24 GETUPVAL                         R5 1
       25 JUMPIFNOT                        R5 ; [+4]
       26 NAMECALL                         R4 R0 K4 ["getCurrentPermissionLabel"]
       28 CALL                             R4 1 1
       29 JUMP                             ; [+6]
       30 JUMPIFNOT                        R3 ; [+2]
       31 LOADK                            R4 K5 [""]
       32 JUMP                             ; [+3]
       33 NAMECALL                         R4 R0 K4 ["getCurrentPermissionLabel"]
       35 CALL                             R4 1 1
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K6 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       39 JUMPIFNOT                        R5 ; [+12]
       40 LOADB                            R5 0
       41 GETTABLEKS                       R6 R2 K7 ["CanCollaborateErrorEnum"]
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R7 R7 K8 ["AgeVerificationCountryBlocked"]
       46 JUMPIFNOTEQ                      R6 R7 ; [+5]
       48 JUMPIFEQKS                       R4 K9 ["Edit"] ; [+2]
       50 LOADB                            R5 0 +1
       51 LOADB                            R5 1
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R7 R7 K10 ["fflagManageCollaboratorsActionNeededLabel"]
       55 JUMPIFNOT                        R7 ; [+10]
       56 LOADB                            R6 0
       57 GETTABLEKS                       R7 R2 K1 ["CanCollaborateResponse"]
       59 JUMPIFNOTEQKB                    R7 FALSE ; [+7]
       61 LOADB                            R6 0
       62 JUMPIFNOTEQKS                    R4 K9 ["Edit"] ; [+4]
       64 NOT                              R6 R5
       65 JUMP                             ; [+1]
       66 LOADB                            R6 0
       67 JUMPIFNOT                        R5 ; [+24]
       68 GETUPVAL                         R7 3
       69 GETUPVAL                         R9 4
       70 DUPTABLE                         R10 K18 [{["userId"], ["telemetryType"] = "load", ["upsellEntrySurface"] = "manage_collaborators_region_not_supported_label", ["placeId"], ["universeId"]}]
       71 GETUPVAL                         R11 5
       72 NAMECALL                         R11 R11 K19 ["GetUserId"]
       74 CALL                             R11 1 1
       75 SETTABLEKS                       R11 R10 K11 ["userId"]
       77 GETIMPORT                        R11 K21 [game]
       79 GETTABLEKS                       R11 R11 K22 ["PlaceId"]
       81 SETTABLEKS                       R11 R10 K16 ["placeId"]
       83 GETIMPORT                        R11 K21 [game]
       85 GETTABLEKS                       R11 R11 K23 ["GameId"]
       87 SETTABLEKS                       R11 R10 K17 ["universeId"]
       89 NAMECALL                         R7 R7 K24 ["logRobloxTelemetryEvent"]
       91 CALL                             R7 3 0
       92 JUMPIFNOT                        R6 ; [+24]
       93 GETUPVAL                         R7 3
       94 GETUPVAL                         R9 4
       95 DUPTABLE                         R10 K26 [{["userId"], ["telemetryType"] = "load", ["upsellEntrySurface"] = "manage_collaborators_action_needed_label", ["placeId"], ["universeId"]}]
       96 GETUPVAL                         R11 5
       97 NAMECALL                         R11 R11 K19 ["GetUserId"]
       99 CALL                             R11 1 1
      100 SETTABLEKS                       R11 R10 K11 ["userId"]
      102 GETIMPORT                        R11 K21 [game]
      104 GETTABLEKS                       R11 R11 K22 ["PlaceId"]
      106 SETTABLEKS                       R11 R10 K16 ["placeId"]
      108 GETIMPORT                        R11 K21 [game]
      110 GETTABLEKS                       R11 R11 K23 ["GameId"]
      112 SETTABLEKS                       R11 R10 K17 ["universeId"]
      114 NAMECALL                         R7 R7 K24 ["logRobloxTelemetryEvent"]
      116 CALL                             R7 3 0
      117 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["Name"]
        6 GETTABLEKS                       R4 R1 K3 ["Icon"]
        8 GETTABLEKS                       R5 R1 K4 ["Writable"]
       10 GETTABLEKS                       R6 R1 K5 ["Loading"]
       12 GETTABLEKS                       R7 R1 K6 ["Removable"]
       14 GETTABLEKS                       R8 R1 K7 ["OnRemoved"]
       16 GETTABLEKS                       R9 R1 K8 ["AvailablePermissions"]
       18 GETTABLEKS                       R10 R1 K9 ["IsRolesetCollaborator"]
       20 GETTABLEKS                       R11 R1 K10 ["HideSeparator"]
       22 GETUPVAL                         R13 0
       23 JUMPIF                           R13 ; [+3]
       24 GETTABLEKS                       R12 R1 K11 ["hidePermissionsForNonGroupOwner"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R12
       28 GETUPVAL                         R14 0
       29 JUMPIFNOT                        R14 ; [+3]
       30 GETTABLEKS                       R13 R1 K12 ["TooltipText"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R13
       34 GETUPVAL                         R15 0
       35 JUMPIFNOT                        R15 ; [+3]
       36 GETTABLEKS                       R14 R1 K13 ["IsOwner"]
       38 JUMP                             ; [+1]
       39 LOADNIL                          R14
       40 GETTABLEKS                       R15 R1 K14 ["SubText"]
       42 GETTABLEKS                       R16 R1 K15 ["Localization"]
       44 GETTABLEKS                       R17 R1 K16 ["Stylizer"]
       46 GETUPVAL                         R19 1
       47 GETTABLEKS                       R19 R19 K17 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       49 JUMPIF                           R19 ; [+4]
       50 GETUPVAL                         R19 1
       51 GETTABLEKS                       R19 R19 K18 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
       53 JUMPIFNOT                        R19 ; [+3]
       54 GETTABLEKS                       R18 R1 K19 ["DisableEditPermission"]
       56 JUMP                             ; [+1]
       57 LOADB                            R18 0
       58 GETUPVAL                         R20 0
       59 JUMPIFNOT                        R20 ; [+4]
       60 MOVE                             R19 R5
       61 JUMPIFNOT                        R19 ; [+10]
       62 NOT                              R19 R18
       63 JUMP                             ; [+8]
       64 MOVE                             R19 R5
       65 JUMPIFNOT                        R19 ; [+6]
       66 LOADB                            R19 0
       67 LENGTH                           R20 R9
       68 LOADN                            R21 1
       69 JUMPIFNOTLT                      R21 R20 ; [+2]
       71 NOT                              R19 R18
       72 GETUPVAL                         R21 0
       73 JUMPIFNOT                        R21 ; [+2]
       74 MOVE                             R20 R7
       75 JUMP                             ; [+1]
       76 AND                              R20 R5 R7
       77 JUMPIFNOT                        R10 ; [+5]
       78 GETTABLEKS                       R21 R17 K20 ["collaboratorItem"]
       80 GETTABLEKS                       R21 R21 K21 ["rolesetFrame"]
       82 JUMP                             ; [+4]
       83 GETTABLEKS                       R21 R17 K20 ["collaboratorItem"]
       85 GETTABLEKS                       R21 R21 K22 ["nonRolesetFrame"]
       87 JUMPIF                           R10 ; [+1]
       88 JUMPIF                           R20 ; [+2]
       89 LOADN                            R22 0
       90 JUMP                             ; [+1]
       91 LOADN                            R22 -24
       92 JUMPIFNOT                        R4 ; [+9]
       93 GETTABLEKS                       R23 R17 K20 ["collaboratorItem"]
       95 GETTABLEKS                       R23 R23 K23 ["collaboratorName"]
       97 GETTABLEKS                       R23 R23 K24 ["withIcon"]
       99 GETTABLEKS                       R23 R23 K25 ["xOffset"]
      101 JUMP                             ; [+8]
      102 GETTABLEKS                       R23 R17 K20 ["collaboratorItem"]
      104 GETTABLEKS                       R23 R23 K23 ["collaboratorName"]
      106 GETTABLEKS                       R23 R23 K26 ["withoutIcon"]
      108 GETTABLEKS                       R23 R23 K25 ["xOffset"]
      110 JUMPIFNOT                        R15 ; [+9]
      111 GETTABLEKS                       R24 R17 K20 ["collaboratorItem"]
      113 GETTABLEKS                       R24 R24 K23 ["collaboratorName"]
      115 GETTABLEKS                       R24 R24 K27 ["withSubtext"]
      117 GETTABLEKS                       R24 R24 K28 ["yOffset"]
      119 JUMP                             ; [+8]
      120 GETTABLEKS                       R24 R17 K20 ["collaboratorItem"]
      122 GETTABLEKS                       R24 R24 K23 ["collaboratorName"]
      124 GETTABLEKS                       R24 R24 K29 ["withoutSubtext"]
      126 GETTABLEKS                       R24 R24 K28 ["yOffset"]
      128 JUMPIFNOT                        R4 ; [+9]
      129 GETTABLEKS                       R25 R17 K20 ["collaboratorItem"]
      131 GETTABLEKS                       R25 R25 K30 ["collaboratorSubText"]
      133 GETTABLEKS                       R25 R25 K24 ["withIcon"]
      135 GETTABLEKS                       R25 R25 K25 ["xOffset"]
      137 JUMP                             ; [+8]
      138 GETTABLEKS                       R25 R17 K20 ["collaboratorItem"]
      140 GETTABLEKS                       R25 R25 K30 ["collaboratorSubText"]
      142 GETTABLEKS                       R25 R25 K26 ["withoutIcon"]
      144 GETTABLEKS                       R25 R25 K25 ["xOffset"]
      146 JUMPIFNOT                        R4 ; [+9]
      147 GETTABLEKS                       R26 R17 K20 ["collaboratorItem"]
      149 GETTABLEKS                       R26 R26 K30 ["collaboratorSubText"]
      151 GETTABLEKS                       R26 R26 K24 ["withIcon"]
      153 GETTABLEKS                       R26 R26 K31 ["size"]
      155 JUMP                             ; [+8]
      156 GETTABLEKS                       R26 R17 K20 ["collaboratorItem"]
      158 GETTABLEKS                       R26 R26 K30 ["collaboratorSubText"]
      160 GETTABLEKS                       R26 R26 K26 ["withoutIcon"]
      162 GETTABLEKS                       R26 R26 K31 ["size"]
      164 GETTABLEKS                       R27 R17 K20 ["collaboratorItem"]
      166 GETTABLEKS                       R27 R27 K30 ["collaboratorSubText"]
      168 GETTABLEKS                       R27 R27 K28 ["yOffset"]
      170 GETUPVAL                         R28 2
      171 GETTABLEKS                       R28 R28 K32 ["new"]
      173 CALL                             R28 0 1
      174 LOADNIL                          R29
      175 LOADNIL                          R30
      176 GETUPVAL                         R31 0
      177 JUMPIF                           R31 ; [+27]
      178 MOVE                             R31 R12
      179 JUMPIF                           R31 ; [+1]
      180 NOT                              R31 R19
      181 MOVE                             R29 R31
      182 JUMPIFNOT                        R12 ; [+7]
      183 LOADK                            R33 K33 ["PermissionDescriptions"]
      184 LOADK                            R34 K34 ["CannotViewGroupRoles"]
      185 NAMECALL                         R31 R16 K35 ["getText"]
      187 CALL                             R31 3 1
      188 MOVE                             R30 R31
      189 JUMP                             ; [+15]
      190 GETUPVAL                         R31 3
      191 JUMPIFNOT                        R31 ; [+7]
      192 LOADK                            R33 K33 ["PermissionDescriptions"]
      193 LOADK                            R34 K36 ["ConnectionToEdit"]
      194 NAMECALL                         R31 R16 K35 ["getText"]
      196 CALL                             R31 3 1
      197 MOVE                             R30 R31
      198 JUMP                             ; [+6]
      199 LOADK                            R33 K33 ["PermissionDescriptions"]
      200 LOADK                            R34 K37 ["FriendToEdit"]
      201 NAMECALL                         R31 R16 K35 ["getText"]
      203 CALL                             R31 3 1
      204 MOVE                             R30 R31
      205 GETUPVAL                         R32 0
      206 JUMPIFNOT                        R32 ; [+2]
      207 MOVE                             R31 R14
      208 JUMP                             ; [+3]
      209 NOT                              R31 R7
      210 JUMPIFNOT                        R31 ; [+1]
      211 NOT                              R31 R10
      212 GETUPVAL                         R33 0
      213 JUMPIFNOT                        R33 ; [+4]
      214 NAMECALL                         R32 R0 K38 ["getCurrentPermissionLabel"]
      216 CALL                             R32 1 1
      217 JUMP                             ; [+6]
      218 JUMPIFNOT                        R12 ; [+2]
      219 LOADK                            R32 K39 [""]
      220 JUMP                             ; [+3]
      221 NAMECALL                         R32 R0 K38 ["getCurrentPermissionLabel"]
      223 CALL                             R32 1 1
      224 GETUPVAL                         R33 1
      225 GETTABLEKS                       R33 R33 K17 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      227 JUMPIFNOT                        R33 ; [+12]
      228 LOADB                            R33 0
      229 GETTABLEKS                       R34 R1 K40 ["CanCollaborateErrorEnum"]
      231 GETUPVAL                         R35 4
      232 GETTABLEKS                       R35 R35 K41 ["AgeVerificationCountryBlocked"]
      234 JUMPIFNOTEQ                      R34 R35 ; [+5]
      236 JUMPIFEQKS                       R32 K42 ["Edit"] ; [+2]
      238 LOADB                            R33 0 +1
      239 LOADB                            R33 1
      240 GETUPVAL                         R35 1
      241 GETTABLEKS                       R35 R35 K43 ["fflagManageCollaboratorsActionNeededLabel"]
      243 JUMPIFNOT                        R35 ; [+10]
      244 LOADB                            R34 0
      245 GETTABLEKS                       R35 R1 K44 ["CanCollaborateResponse"]
      247 JUMPIFNOTEQKB                    R35 FALSE ; [+7]
      249 LOADB                            R34 0
      250 JUMPIFNOTEQKS                    R32 K42 ["Edit"] ; [+4]
      252 NOT                              R34 R33
      253 JUMP                             ; [+1]
      254 LOADB                            R34 0
      255 OR                               R35 R34 R33
      256 GETTABLEKS                       R37 R1 K45 ["HidePermissionEditor"]
      258 JUMPIFEQKB                       R37 TRUE ; [+2]
      260 LOADB                            R36 0 +1
      261 LOADB                            R36 1
      262 JUMPIFNOT                        R36 ; [+2]
      263 LOADB                            R37 0
      264 JUMP                             ; [+10]
      265 GETUPVAL                         R38 0
      266 JUMPIFNOT                        R38 ; [+4]
      267 NOT                              R37 R14
      268 JUMPIFNOT                        R37 ; [+6]
      269 NOT                              R37 R35
      270 JUMP                             ; [+4]
      271 JUMPIF                           R7 ; [+2]
      272 MOVE                             R37 R10
      273 JUMPIFNOT                        R37 ; [+1]
      274 NOT                              R37 R35
      275 GETUPVAL                         R39 0
      276 JUMPIFNOT                        R39 ; [+2]
      277 MOVE                             R38 R13
      278 JUMP                             ; [+1]
      279 MOVE                             R38 R29
      280 GETUPVAL                         R39 5
      281 GETTABLEKS                       R39 R39 K46 ["createElement"]
      283 LOADK                            R40 K47 ["Frame"]
      284 DUPTABLE                         R41 K55 [{["Size"], ["LayoutOrder"], ["BackgroundTransparency"] = 1, ["Position"], ["AnchorPoint"], ["BorderSizePixel"] = 0}]
      285 GETIMPORT                        R42 K57 [UDim2.new]
      287 LOADN                            R43 0
      288 GETTABLEKS                       R44 R21 K58 ["width"]
      290 LOADN                            R45 0
      291 GETTABLEKS                       R46 R21 K59 ["height"]
      293 CALL                             R42 4 1
      294 SETTABLEKS                       R42 R41 K48 ["Size"]
      296 SETTABLEKS                       R2 R41 K1 ["LayoutOrder"]
      298 GETTABLEKS                       R42 R21 K60 ["position"]
      300 SETTABLEKS                       R42 R41 K51 ["Position"]
      302 GETTABLEKS                       R42 R21 K61 ["anchorPoint"]
      304 SETTABLEKS                       R42 R41 K52 ["AnchorPoint"]
      306 DUPTABLE                         R42 K71 [{"IconContainer", "CollaboratorName", "CollaboratorSubText", "OwnerLabel", "ActionNeededLabel", "RegionNotSupportedLabel", "PermissionEditor", "Delete", "Separator"}]
      307 MOVE                             R43 R4
      308 JUMPIFNOT                        R43 ; [+71]
      309 GETUPVAL                         R43 5
      310 GETTABLEKS                       R43 R43 K46 ["createElement"]
      312 GETUPVAL                         R45 1
      313 GETTABLEKS                       R45 R45 K43 ["fflagManageCollaboratorsActionNeededLabel"]
      315 JUMPIF                           R45 ; [+4]
      316 GETUPVAL                         R45 1
      317 GETTABLEKS                       R45 R45 K17 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      319 JUMPIFNOT                        R45 ; [+2]
      320 LOADK                            R44 K72 ["CanvasGroup"]
      321 JUMP                             ; [+1]
      322 LOADK                            R44 K47 ["Frame"]
      323 DUPTABLE                         R45 K74 [{["LayoutOrder"], ["Size"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["GroupTransparency"]}]
      324 NAMECALL                         R46 R28 K75 ["getNextOrder"]
      326 CALL                             R46 1 1
      327 SETTABLEKS                       R46 R45 K1 ["LayoutOrder"]
      329 GETIMPORT                        R46 K57 [UDim2.new]
      331 LOADN                            R47 0
      332 GETTABLEKS                       R48 R17 K20 ["collaboratorItem"]
      334 GETTABLEKS                       R48 R48 K76 ["iconContainerSize"]
      336 LOADN                            R49 0
      337 GETTABLEKS                       R50 R17 K20 ["collaboratorItem"]
      339 GETTABLEKS                       R50 R50 K76 ["iconContainerSize"]
      341 CALL                             R46 4 1
      342 SETTABLEKS                       R46 R45 K48 ["Size"]
      344 GETIMPORT                        R46 K57 [UDim2.new]
      346 LOADN                            R47 0
      347 LOADN                            R48 0
      348 LOADK                            R49 K77 [0.5]
      349 LOADN                            R50 0
      350 CALL                             R46 4 1
      351 SETTABLEKS                       R46 R45 K51 ["Position"]
      353 GETIMPORT                        R46 K79 [Vector2.new]
      355 LOADN                            R47 0
      356 LOADK                            R48 K77 [0.5]
      357 CALL                             R46 2 1
      358 SETTABLEKS                       R46 R45 K52 ["AnchorPoint"]
      360 GETUPVAL                         R47 1
      361 GETTABLEKS                       R47 R47 K43 ["fflagManageCollaboratorsActionNeededLabel"]
      363 JUMPIF                           R47 ; [+4]
      364 GETUPVAL                         R47 1
      365 GETTABLEKS                       R47 R47 K17 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      367 JUMPIFNOT                        R47 ; [+5]
      368 JUMPIFNOT                        R35 ; [+2]
      369 LOADK                            R46 K80 [0.6]
      370 JUMP                             ; [+3]
      371 LOADN                            R46 0
      372 JUMP                             ; [+1]
      373 LOADNIL                          R46
      374 SETTABLEKS                       R46 R45 K73 ["GroupTransparency"]
      376 DUPTABLE                         R46 K81 [{"Icon"}]
      377 SETTABLEKS                       R4 R46 K3 ["Icon"]
      379 CALL                             R43 3 1
      380 SETTABLEKS                       R43 R42 K62 ["IconContainer"]
      382 GETUPVAL                         R43 5
      383 GETTABLEKS                       R43 R43 K46 ["createElement"]
      385 LOADK                            R44 K82 ["TextLabel"]
      386 GETUPVAL                         R45 6
      387 GETTABLEKS                       R45 R45 K83 ["Dictionary"]
      389 GETTABLEKS                       R45 R45 K84 ["join"]
      391 GETTABLEKS                       R46 R17 K85 ["fontStyle"]
      393 GETTABLEKS                       R46 R46 K86 ["Normal"]
      395 DUPTABLE                         R47 K90 [{["LayoutOrder"], ["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1, ["Text"], ["TextXAlignment"], ["TextTransparency"]}]
      396 NAMECALL                         R48 R28 K75 ["getNextOrder"]
      398 CALL                             R48 1 1
      399 SETTABLEKS                       R48 R47 K1 ["LayoutOrder"]
      401 JUMPIFNOT                        R4 ; [+9]
      402 GETTABLEKS                       R48 R17 K20 ["collaboratorItem"]
      404 GETTABLEKS                       R48 R48 K23 ["collaboratorName"]
      406 GETTABLEKS                       R48 R48 K24 ["withIcon"]
      408 GETTABLEKS                       R48 R48 K31 ["size"]
      410 JUMP                             ; [+8]
      411 GETTABLEKS                       R48 R17 K20 ["collaboratorItem"]
      413 GETTABLEKS                       R48 R48 K23 ["collaboratorName"]
      415 GETTABLEKS                       R48 R48 K26 ["withoutIcon"]
      417 GETTABLEKS                       R48 R48 K31 ["size"]
      419 SETTABLEKS                       R48 R47 K48 ["Size"]
      421 GETIMPORT                        R48 K79 [Vector2.new]
      423 LOADN                            R49 0
      424 LOADK                            R50 K77 [0.5]
      425 CALL                             R48 2 1
      426 SETTABLEKS                       R48 R47 K52 ["AnchorPoint"]
      428 GETIMPORT                        R48 K57 [UDim2.new]
      430 LOADN                            R49 0
      431 MOVE                             R50 R23
      432 LOADK                            R51 K77 [0.5]
      433 MOVE                             R52 R24
      434 CALL                             R48 4 1
      435 SETTABLEKS                       R48 R47 K51 ["Position"]
      437 SETTABLEKS                       R3 R47 K87 ["Text"]
      439 GETIMPORT                        R48 K93 [Enum.TextXAlignment.Left]
      441 SETTABLEKS                       R48 R47 K88 ["TextXAlignment"]
      443 GETUPVAL                         R49 1
      444 GETTABLEKS                       R49 R49 K43 ["fflagManageCollaboratorsActionNeededLabel"]
      446 JUMPIF                           R49 ; [+4]
      447 GETUPVAL                         R49 1
      448 GETTABLEKS                       R49 R49 K17 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      450 JUMPIFNOT                        R49 ; [+5]
      451 JUMPIFNOT                        R35 ; [+2]
      452 LOADK                            R48 K80 [0.6]
      453 JUMP                             ; [+3]
      454 LOADN                            R48 0
      455 JUMP                             ; [+1]
      456 LOADNIL                          R48
      457 SETTABLEKS                       R48 R47 K89 ["TextTransparency"]
      459 CALL                             R45 2 -1
      460 CALL                             R43 -1 1
      461 SETTABLEKS                       R43 R42 K63 ["CollaboratorName"]
      463 JUMPIFNOT                        R15 ; [+46]
      464 GETUPVAL                         R43 5
      465 GETTABLEKS                       R43 R43 K46 ["createElement"]
      467 LOADK                            R44 K82 ["TextLabel"]
      468 GETUPVAL                         R45 6
      469 GETTABLEKS                       R45 R45 K83 ["Dictionary"]
      471 GETTABLEKS                       R45 R45 K84 ["join"]
      473 GETTABLEKS                       R46 R17 K85 ["fontStyle"]
      475 GETTABLEKS                       R46 R46 K94 ["Subtext"]
      477 DUPTABLE                         R47 K95 [{["LayoutOrder"], ["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1, ["Text"], ["TextXAlignment"]}]
      478 NAMECALL                         R48 R28 K75 ["getNextOrder"]
      480 CALL                             R48 1 1
      481 SETTABLEKS                       R48 R47 K1 ["LayoutOrder"]
      483 SETTABLEKS                       R26 R47 K48 ["Size"]
      485 GETIMPORT                        R48 K79 [Vector2.new]
      487 LOADN                            R49 0
      488 LOADK                            R50 K77 [0.5]
      489 CALL                             R48 2 1
      490 SETTABLEKS                       R48 R47 K52 ["AnchorPoint"]
      492 GETIMPORT                        R48 K57 [UDim2.new]
      494 LOADN                            R49 0
      495 MOVE                             R50 R25
      496 LOADK                            R51 K77 [0.5]
      497 MOVE                             R52 R27
      498 CALL                             R48 4 1
      499 SETTABLEKS                       R48 R47 K51 ["Position"]
      501 SETTABLEKS                       R15 R47 K87 ["Text"]
      503 GETIMPORT                        R48 K93 [Enum.TextXAlignment.Left]
      505 SETTABLEKS                       R48 R47 K88 ["TextXAlignment"]
      507 CALL                             R45 2 -1
      508 CALL                             R43 -1 1
      509 JUMP                             ; [+1]
      510 LOADNIL                          R43
      511 SETTABLEKS                       R43 R42 K64 ["CollaboratorSubText"]
      513 JUMPIFNOT                        R31 ; [+64]
      514 GETUPVAL                         R43 5
      515 GETTABLEKS                       R43 R43 K46 ["createElement"]
      517 LOADK                            R44 K82 ["TextLabel"]
      518 GETUPVAL                         R45 6
      519 GETTABLEKS                       R45 R45 K83 ["Dictionary"]
      521 GETTABLEKS                       R45 R45 K84 ["join"]
      523 GETTABLEKS                       R46 R17 K85 ["fontStyle"]
      525 GETTABLEKS                       R46 R46 K86 ["Normal"]
      527 DUPTABLE                         R47 K96 [{["LayoutOrder"], ["Size"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Text"], ["TextXAlignment"]}]
      528 NAMECALL                         R48 R28 K75 ["getNextOrder"]
      530 CALL                             R48 1 1
      531 SETTABLEKS                       R48 R47 K1 ["LayoutOrder"]
      533 JUMPIFNOT                        R4 ; [+7]
      534 GETTABLEKS                       R48 R17 K20 ["collaboratorItem"]
      536 GETTABLEKS                       R48 R48 K97 ["ownerLabel"]
      538 GETTABLEKS                       R48 R48 K98 ["withIconSize"]
      540 JUMP                             ; [+6]
      541 GETTABLEKS                       R48 R17 K20 ["collaboratorItem"]
      543 GETTABLEKS                       R48 R48 K97 ["ownerLabel"]
      545 GETTABLEKS                       R48 R48 K99 ["withoutIconSize"]
      547 SETTABLEKS                       R48 R47 K48 ["Size"]
      549 GETTABLEKS                       R48 R17 K20 ["collaboratorItem"]
      551 GETTABLEKS                       R48 R48 K97 ["ownerLabel"]
      553 GETTABLEKS                       R48 R48 K60 ["position"]
      555 SETTABLEKS                       R48 R47 K51 ["Position"]
      557 GETIMPORT                        R48 K79 [Vector2.new]
      559 LOADN                            R49 1
      560 LOADK                            R50 K77 [0.5]
      561 CALL                             R48 2 1
      562 SETTABLEKS                       R48 R47 K52 ["AnchorPoint"]
      564 LOADK                            R50 K100 ["CollaboratorTypes"]
      565 LOADK                            R51 K101 ["Owner"]
      566 NAMECALL                         R48 R16 K35 ["getText"]
      568 CALL                             R48 3 1
      569 SETTABLEKS                       R48 R47 K87 ["Text"]
      571 GETIMPORT                        R48 K103 [Enum.TextXAlignment.Right]
      573 SETTABLEKS                       R48 R47 K88 ["TextXAlignment"]
      575 CALL                             R45 2 -1
      576 CALL                             R43 -1 1
      577 JUMP                             ; [+1]
      578 LOADNIL                          R43
      579 SETTABLEKS                       R43 R42 K65 ["OwnerLabel"]
      581 GETUPVAL                         R44 1
      582 GETTABLEKS                       R44 R44 K43 ["fflagManageCollaboratorsActionNeededLabel"]
      584 JUMPIFNOT                        R44 ; [+58]
      585 JUMPIFNOT                        R34 ; [+57]
      586 GETUPVAL                         R43 5
      587 GETTABLEKS                       R43 R43 K46 ["createElement"]
      589 LOADK                            R44 K82 ["TextLabel"]
      590 GETUPVAL                         R45 6
      591 GETTABLEKS                       R45 R45 K83 ["Dictionary"]
      593 GETTABLEKS                       R45 R45 K84 ["join"]
      595 GETTABLEKS                       R46 R17 K85 ["fontStyle"]
      597 GETTABLEKS                       R46 R46 K86 ["Normal"]
      599 DUPTABLE                         R47 K104 [{["LayoutOrder"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Text"], ["TextXAlignment"]}]
      600 NAMECALL                         R48 R28 K75 ["getNextOrder"]
      602 CALL                             R48 1 1
      603 SETTABLEKS                       R48 R47 K1 ["LayoutOrder"]
      605 JUMPIFNOT                        R20 ; [+8]
      606 GETIMPORT                        R48 K57 [UDim2.new]
      608 LOADN                            R49 1
      609 LOADN                            R50 -20
      610 LOADK                            R51 K77 [0.5]
      611 LOADN                            R52 0
      612 CALL                             R48 4 1
      613 JUMP                             ; [+6]
      614 GETTABLEKS                       R48 R17 K20 ["collaboratorItem"]
      616 GETTABLEKS                       R48 R48 K97 ["ownerLabel"]
      618 GETTABLEKS                       R48 R48 K60 ["position"]
      620 SETTABLEKS                       R48 R47 K51 ["Position"]
      622 GETIMPORT                        R48 K79 [Vector2.new]
      624 LOADN                            R49 1
      625 LOADK                            R50 K77 [0.5]
      626 CALL                             R48 2 1
      627 SETTABLEKS                       R48 R47 K52 ["AnchorPoint"]
      629 LOADK                            R50 K100 ["CollaboratorTypes"]
      630 LOADK                            R51 K105 ["ActionNeeded"]
      631 NAMECALL                         R48 R16 K35 ["getText"]
      633 CALL                             R48 3 1
      634 SETTABLEKS                       R48 R47 K87 ["Text"]
      636 GETIMPORT                        R48 K103 [Enum.TextXAlignment.Right]
      638 SETTABLEKS                       R48 R47 K88 ["TextXAlignment"]
      640 CALL                             R45 2 -1
      641 CALL                             R43 -1 1
      642 JUMP                             ; [+1]
      643 LOADNIL                          R43
      644 SETTABLEKS                       R43 R42 K66 ["ActionNeededLabel"]
      646 GETUPVAL                         R44 1
      647 GETTABLEKS                       R44 R44 K17 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      649 JUMPIFNOT                        R44 ; [+58]
      650 JUMPIFNOT                        R33 ; [+57]
      651 GETUPVAL                         R43 5
      652 GETTABLEKS                       R43 R43 K46 ["createElement"]
      654 LOADK                            R44 K82 ["TextLabel"]
      655 GETUPVAL                         R45 6
      656 GETTABLEKS                       R45 R45 K83 ["Dictionary"]
      658 GETTABLEKS                       R45 R45 K84 ["join"]
      660 GETTABLEKS                       R46 R17 K85 ["fontStyle"]
      662 GETTABLEKS                       R46 R46 K86 ["Normal"]
      664 DUPTABLE                         R47 K104 [{["LayoutOrder"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Text"], ["TextXAlignment"]}]
      665 NAMECALL                         R48 R28 K75 ["getNextOrder"]
      667 CALL                             R48 1 1
      668 SETTABLEKS                       R48 R47 K1 ["LayoutOrder"]
      670 JUMPIFNOT                        R20 ; [+8]
      671 GETIMPORT                        R48 K57 [UDim2.new]
      673 LOADN                            R49 1
      674 LOADN                            R50 -20
      675 LOADK                            R51 K77 [0.5]
      676 LOADN                            R52 0
      677 CALL                             R48 4 1
      678 JUMP                             ; [+6]
      679 GETTABLEKS                       R48 R17 K20 ["collaboratorItem"]
      681 GETTABLEKS                       R48 R48 K97 ["ownerLabel"]
      683 GETTABLEKS                       R48 R48 K60 ["position"]
      685 SETTABLEKS                       R48 R47 K51 ["Position"]
      687 GETIMPORT                        R48 K79 [Vector2.new]
      689 LOADN                            R49 1
      690 LOADK                            R50 K77 [0.5]
      691 CALL                             R48 2 1
      692 SETTABLEKS                       R48 R47 K52 ["AnchorPoint"]
      694 LOADK                            R50 K100 ["CollaboratorTypes"]
      695 LOADK                            R51 K106 ["RegionNotSupported"]
      696 NAMECALL                         R48 R16 K35 ["getText"]
      698 CALL                             R48 3 1
      699 SETTABLEKS                       R48 R47 K87 ["Text"]
      701 GETIMPORT                        R48 K103 [Enum.TextXAlignment.Right]
      703 SETTABLEKS                       R48 R47 K88 ["TextXAlignment"]
      705 CALL                             R45 2 -1
      706 CALL                             R43 -1 1
      707 JUMP                             ; [+1]
      708 LOADNIL                          R43
      709 SETTABLEKS                       R43 R42 K67 ["RegionNotSupportedLabel"]
      711 JUMPIFNOT                        R37 ; [+130]
      712 GETUPVAL                         R43 5
      713 GETTABLEKS                       R43 R43 K46 ["createElement"]
      715 LOADK                            R44 K47 ["Frame"]
      716 DUPTABLE                         R45 K107 [{["LayoutOrder"], ["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["AnchorPoint"]}]
      717 NAMECALL                         R46 R28 K75 ["getNextOrder"]
      719 CALL                             R46 1 1
      720 SETTABLEKS                       R46 R45 K1 ["LayoutOrder"]
      722 GETIMPORT                        R46 K57 [UDim2.new]
      724 LOADN                            R47 0
      725 GETTABLEKS                       R48 R17 K108 ["selectInput"]
      727 GETTABLEKS                       R48 R48 K58 ["width"]
      729 LOADN                            R49 0
      730 GETTABLEKS                       R50 R17 K20 ["collaboratorItem"]
      732 GETTABLEKS                       R50 R50 K109 ["permissionEditor"]
      734 GETTABLEKS                       R50 R50 K110 ["heightOffset"]
      736 CALL                             R46 4 1
      737 SETTABLEKS                       R46 R45 K48 ["Size"]
      739 GETIMPORT                        R46 K57 [UDim2.new]
      741 LOADN                            R47 1
      742 LOADN                            R48 0
      743 LOADK                            R49 K77 [0.5]
      744 GETTABLEKS                       R50 R17 K20 ["collaboratorItem"]
      746 GETTABLEKS                       R50 R50 K109 ["permissionEditor"]
      748 GETTABLEKS                       R50 R50 K28 ["yOffset"]
      750 CALL                             R46 4 1
      751 SETTABLEKS                       R46 R45 K51 ["Position"]
      753 GETIMPORT                        R46 K79 [Vector2.new]
      755 LOADN                            R47 1
      756 LOADK                            R48 K77 [0.5]
      757 CALL                             R46 2 1
      758 SETTABLEKS                       R46 R45 K52 ["AnchorPoint"]
      760 DUPTABLE                         R46 K114 [{"LoadingIndicator", "PermissionsDropdown", "Tooltip"}]
      761 MOVE                             R47 R6
      762 JUMPIFNOT                        R47 ; [+13]
      763 GETUPVAL                         R47 5
      764 GETTABLEKS                       R47 R47 K46 ["createElement"]
      766 GETUPVAL                         R48 7
      767 DUPTABLE                         R49 K115 [{"Size"}]
      768 GETIMPORT                        R50 K117 [UDim2.fromScale]
      770 LOADN                            R51 1
      771 LOADN                            R52 1
      772 CALL                             R50 2 1
      773 SETTABLEKS                       R50 R49 K48 ["Size"]
      775 CALL                             R47 2 1
      776 SETTABLEKS                       R47 R46 K111 ["LoadingIndicator"]
      778 JUMPIF                           R6 ; [+40]
      779 GETUPVAL                         R47 5
      780 GETTABLEKS                       R47 R47 K46 ["createElement"]
      782 GETUPVAL                         R48 8
      783 DUPTABLE                         R49 K125 [{"Enabled", "Items", "OnItemActivated", "OnRenderItem", "PlaceholderText", "Width", "Style"}]
      784 GETUPVAL                         R51 0
      785 JUMPIFNOT                        R51 ; [+2]
      786 MOVE                             R50 R19
      787 JUMP                             ; [+2]
      788 NOT                              R51 R12
      789 AND                              R50 R51 R19
      790 SETTABLEKS                       R50 R49 K118 ["Enabled"]
      792 SETTABLEKS                       R9 R49 K119 ["Items"]
      794 GETTABLEKS                       R50 R0 K126 ["onItemActivated"]
      796 SETTABLEKS                       R50 R49 K120 ["OnItemActivated"]
      798 GETTABLEKS                       R50 R0 K127 ["onRenderItem"]
      800 SETTABLEKS                       R50 R49 K121 ["OnRenderItem"]
      802 SETTABLEKS                       R32 R49 K122 ["PlaceholderText"]
      804 GETTABLEKS                       R51 R17 K108 ["selectInput"]
      806 GETTABLEKS                       R51 R51 K58 ["width"]
      808 ADD                              R50 R51 R22
      809 SETTABLEKS                       R50 R49 K123 ["Width"]
      811 JUMPIFNOT                        R19 ; [+2]
      812 LOADK                            R50 K128 ["Editable"]
      813 JUMP                             ; [+1]
      814 LOADK                            R50 K129 ["NonEditable"]
      815 SETTABLEKS                       R50 R49 K124 ["Style"]
      817 CALL                             R47 2 1
      818 JUMPIF                           R47 ; [+1]
      819 LOADNIL                          R47
      820 SETTABLEKS                       R47 R46 K112 ["PermissionsDropdown"]
      822 JUMPIFNOT                        R38 ; [+14]
      823 GETUPVAL                         R47 5
      824 GETTABLEKS                       R47 R47 K46 ["createElement"]
      826 GETUPVAL                         R48 9
      827 DUPTABLE                         R49 K130 [{"Text"}]
      828 GETUPVAL                         R51 0
      829 JUMPIFNOT                        R51 ; [+2]
      830 MOVE                             R50 R13
      831 JUMP                             ; [+1]
      832 MOVE                             R50 R30
      833 SETTABLEKS                       R50 R49 K87 ["Text"]
      835 CALL                             R47 2 1
      836 JUMP                             ; [+1]
      837 LOADNIL                          R47
      838 SETTABLEKS                       R47 R46 K113 ["Tooltip"]
      840 CALL                             R43 3 1
      841 JUMP                             ; [+1]
      842 LOADNIL                          R43
      843 SETTABLEKS                       R43 R42 K68 ["PermissionEditor"]
      845 MOVE                             R43 R20
      846 JUMPIFNOT                        R43 ; [+22]
      847 GETUPVAL                         R43 5
      848 GETTABLEKS                       R43 R43 K46 ["createElement"]
      850 GETUPVAL                         R44 10
      851 DUPTABLE                         R45 K132 [{"LayoutOrder", "Enabled", "OnClicked"}]
      852 NAMECALL                         R46 R28 K75 ["getNextOrder"]
      854 CALL                             R46 1 1
      855 SETTABLEKS                       R46 R45 K1 ["LayoutOrder"]
      857 GETUPVAL                         R47 0
      858 JUMPIFNOT                        R47 ; [+2]
      859 NOT                              R46 R6
      860 JUMP                             ; [+3]
      861 MOVE                             R46 R5
      862 JUMPIFNOT                        R46 ; [+1]
      863 NOT                              R46 R6
      864 SETTABLEKS                       R46 R45 K118 ["Enabled"]
      866 SETTABLEKS                       R8 R45 K131 ["OnClicked"]
      868 CALL                             R43 2 1
      869 SETTABLEKS                       R43 R42 K69 ["Delete"]
      871 GETUPVAL                         R44 11
      872 NOT                              R43 R44
      873 JUMPIFNOT                        R43 ; [+22]
      874 NOT                              R43 R11
      875 JUMPIFNOT                        R43 ; [+20]
      876 GETUPVAL                         R43 5
      877 GETTABLEKS                       R43 R43 K46 ["createElement"]
      879 GETUPVAL                         R44 12
      880 DUPTABLE                         R45 K133 [{"Position", "LayoutOrder"}]
      881 GETIMPORT                        R46 K57 [UDim2.new]
      883 LOADK                            R47 K77 [0.5]
      884 LOADN                            R48 0
      885 LOADN                            R49 1
      886 LOADN                            R50 0
      887 CALL                             R46 4 1
      888 SETTABLEKS                       R46 R45 K51 ["Position"]
      890 NAMECALL                         R46 R28 K75 ["getNextOrder"]
      892 CALL                             R46 1 1
      893 SETTABLEKS                       R46 R45 K1 ["LayoutOrder"]
      895 CALL                             R43 2 1
      896 SETTABLEKS                       R43 R42 K70 ["Separator"]
      898 CALL                             R39 3 -1
      899 RETURN                           R39 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["COLLAB2850_FixMcTooltips"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Collab7855_HandleUnknownPermission2"]
       10 NAMECALL                         R1 R1 K3 ["GetFastFlag"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["Collab7855_LogUnknownPermissions"]
       16 NAMECALL                         R2 R2 K3 ["GetFastFlag"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 GETTABLEKS                       R3 R3 K8 ["Parent"]
       23 GETTABLEKS                       R3 R3 K8 ["Parent"]
       25 GETTABLEKS                       R3 R3 K8 ["Parent"]
       27 GETIMPORT                        R4 K10 [require]
       29 GETTABLEKS                       R5 R3 K11 ["Packages"]
       31 GETTABLEKS                       R5 R5 K12 ["Roact"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K10 [require]
       36 GETTABLEKS                       R6 R3 K11 ["Packages"]
       38 GETTABLEKS                       R6 R6 K13 ["Cryo"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K10 [require]
       43 GETTABLEKS                       R7 R3 K14 ["Bin"]
       45 GETTABLEKS                       R7 R7 K15 ["defineLuaFlags"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K10 [require]
       50 GETTABLEKS                       R8 R3 K11 ["Packages"]
       52 GETTABLEKS                       R8 R8 K16 ["Framework"]
       54 CALL                             R7 1 1
       55 GETTABLEKS                       R8 R7 K17 ["Style"]
       57 GETTABLEKS                       R8 R8 K18 ["Stylizer"]
       59 GETTABLEKS                       R9 R7 K19 ["ContextServices"]
       61 GETTABLEKS                       R10 R9 K20 ["withContext"]
       63 GETTABLEKS                       R11 R9 K21 ["Localization"]
       65 GETTABLEKS                       R12 R7 K22 ["UI"]
       67 GETTABLEKS                       R13 R7 K23 ["Util"]
       69 GETTABLEKS                       R14 R12 K24 ["SelectInput"]
       71 GETTABLEKS                       R15 R12 K25 ["Button"]
       73 GETTABLEKS                       R16 R12 K26 ["TextLabel"]
       75 GETTABLEKS                       R17 R12 K27 ["Separator"]
       77 GETTABLEKS                       R18 R12 K28 ["Tooltip"]
       79 GETTABLEKS                       R19 R7 K22 ["UI"]
       81 GETTABLEKS                       R19 R19 K29 ["LoadingIndicator"]
       83 GETTABLEKS                       R20 R13 K30 ["LayoutOrderIterator"]
       85 JUMPIFNOT                        R1 ; [+10]
       86 GETIMPORT                        R21 K10 [require]
       88 GETTABLEKS                       R22 R3 K31 ["Src"]
       90 GETTABLEKS                       R22 R22 K23 ["Util"]
       92 GETTABLEKS                       R22 R22 K32 ["Analytics"]
       94 CALL                             R21 1 1
       95 JUMP                             ; [+1]
       96 LOADNIL                          R21
       97 GETIMPORT                        R22 K1 [game]
       99 LOADK                            R24 K33 ["StudioService"]
      100 NAMECALL                         R22 R22 K34 ["GetService"]
      102 CALL                             R22 2 1
      103 GETIMPORT                        R23 K10 [require]
      105 GETTABLEKS                       R24 R3 K11 ["Packages"]
      107 GETTABLEKS                       R24 R24 K35 ["TelemetryProtocol"]
      109 CALL                             R23 1 1
      110 GETIMPORT                        R24 K10 [require]
      112 GETTABLEKS                       R25 R3 K31 ["Src"]
      114 GETTABLEKS                       R25 R25 K23 ["Util"]
      116 GETTABLEKS                       R25 R25 K36 ["Telemetry"]
      118 GETTABLEKS                       R25 R25 K37 ["SafetyUpsellBannerShownEvent"]
      120 CALL                             R24 1 1
      121 GETTABLEKS                       R25 R23 K38 ["new"]
      123 CALL                             R25 0 1
      124 GETIMPORT                        R26 K10 [require]
      126 GETTABLEKS                       R27 R3 K31 ["Src"]
      128 GETTABLEKS                       R27 R27 K23 ["Util"]
      130 GETTABLEKS                       R27 R27 K39 ["PermissionsConstants"]
      132 CALL                             R26 1 1
      133 GETIMPORT                        R27 K10 [require]
      135 GETTABLEKS                       R28 R3 K31 ["Src"]
      137 GETTABLEKS                       R28 R28 K40 ["Enums"]
      139 GETTABLEKS                       R28 R28 K41 ["CanCollaborateError"]
      141 CALL                             R27 1 1
      142 GETTABLEKS                       R28 R4 K42 ["PureComponent"]
      144 LOADK                            R30 K43 ["DeleteButton"]
      145 NAMECALL                         R28 R28 K44 ["extend"]
      147 CALL                             R28 2 1
      148 GETIMPORT                        R29 K1 [game]
      150 LOADK                            R31 K45 ["StudioFriendToConnection"]
      151 NAMECALL                         R29 R29 K3 ["GetFastFlag"]
      153 CALL                             R29 2 1
      154 GETIMPORT                        R30 K1 [game]
      156 LOADK                            R32 K46 ["UpsellCollabSafety2"]
      157 NAMECALL                         R30 R30 K3 ["GetFastFlag"]
      159 CALL                             R30 2 1
      160 NEWTABLE                         R31 8 0
      162 GETTABLEKS                       R32 R26 K47 ["OwnerKey"]
      164 LOADK                            R33 K48 ["Owner"]
      165 SETTABLE                         R33 R31 R32
      166 GETTABLEKS                       R32 R26 K49 ["PlayKey"]
      168 LOADK                            R33 K50 ["Play"]
      169 SETTABLE                         R33 R31 R32
      170 GETTABLEKS                       R32 R26 K51 ["PlayTestKey"]
      172 LOADK                            R33 K52 ["PlayTest"]
      173 SETTABLE                         R33 R31 R32
      174 GETTABLEKS                       R32 R26 K53 ["EditKey"]
      176 LOADK                            R33 K54 ["Edit"]
      177 SETTABLE                         R33 R31 R32
      178 GETTABLEKS                       R32 R26 K55 ["NoAccessKey"]
      180 LOADK                            R33 K56 ["NoAccess"]
      181 SETTABLE                         R33 R31 R32
      182 GETTABLEKS                       R32 R26 K57 ["AdminKey"]
      184 LOADK                            R33 K58 ["Admin"]
      185 SETTABLE                         R33 R31 R32
      186 DUPCLOSURE                       R32 K59 [PROTO_0]
      187 SETTABLEKS                       R32 R28 K60 ["init"]
      189 DUPCLOSURE                       R32 K61 [PROTO_4]
      190 CAPTURE                          VAL R4
      191 SETTABLEKS                       R32 R28 K62 ["render"]
      193 MOVE                             R32 R10
      194 DUPTABLE                         R33 K63 [{"Stylizer"}]
      195 SETTABLEKS                       R8 R33 K18 ["Stylizer"]
      197 CALL                             R32 1 1
      198 MOVE                             R33 R28
      199 CALL                             R32 1 1
      200 MOVE                             R28 R32
      201 GETTABLEKS                       R32 R4 K42 ["PureComponent"]
      203 LOADK                            R34 K64 ["CollaboratorItem"]
      204 NAMECALL                         R32 R32 K44 ["extend"]
      206 CALL                             R32 2 1
      207 DUPTABLE                         R33 K69 [{["Writable"] = True, ["Loading"] = False}]
      208 SETTABLEKS                       R33 R32 K70 ["defaultProps"]
      210 DUPCLOSURE                       R33 K71 [PROTO_5]
      211 CAPTURE                          VAL R26
      212 CAPTURE                          VAL R1
      213 CAPTURE                          VAL R2
      214 CAPTURE                          VAL R31
      215 CAPTURE                          VAL R21
      216 SETTABLEKS                       R33 R32 K72 ["getCurrentPermissionLabel"]
      218 DUPCLOSURE                       R33 K73 [PROTO_6]
      219 CAPTURE                          VAL R4
      220 CAPTURE                          VAL R16
      221 SETGLOBAL                        R33 K74 ["createTextLabel"]
      223 DUPCLOSURE                       R33 K75 [PROTO_9]
      224 CAPTURE                          VAL R4
      225 CAPTURE                          VAL R15
      226 CAPTURE                          VAL R18
      227 SETTABLEKS                       R33 R32 K60 ["init"]
      229 DUPCLOSURE                       R33 K76 [PROTO_10]
      230 CAPTURE                          VAL R6
      231 CAPTURE                          VAL R0
      232 CAPTURE                          VAL R27
      233 CAPTURE                          VAL R25
      234 CAPTURE                          VAL R24
      235 CAPTURE                          VAL R22
      236 SETTABLEKS                       R33 R32 K77 ["didUpdate"]
      238 NEWCLOSURE                       R33 P6
      239 CAPTURE                          VAL R0
      240 CAPTURE                          VAL R6
      241 CAPTURE                          VAL R20
      242 CAPTURE                          VAL R29
      243 CAPTURE                          VAL R27
      244 CAPTURE                          VAL R4
      245 CAPTURE                          VAL R5
      246 CAPTURE                          VAL R19
      247 CAPTURE                          VAL R14
      248 CAPTURE                          VAL R18
      249 CAPTURE                          REF R28
      250 CAPTURE                          VAL R30
      251 CAPTURE                          VAL R17
      252 SETTABLEKS                       R33 R32 K62 ["render"]
      254 MOVE                             R33 R10
      255 DUPTABLE                         R34 K78 [{"Stylizer", "Localization"}]
      256 SETTABLEKS                       R8 R34 K18 ["Stylizer"]
      258 SETTABLEKS                       R11 R34 K21 ["Localization"]
      260 CALL                             R33 1 1
      261 MOVE                             R34 R32
      262 CALL                             R33 1 1
      263 MOVE                             R32 R33
      264 CLOSEUPVALS                      R28
      265 RETURN                           R32 1
