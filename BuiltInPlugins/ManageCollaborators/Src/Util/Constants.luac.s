MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 64 0
        3 LOADK                            R1 K0 ["Users"]
        4 SETTABLEKS                       R1 R0 K1 ["COLLABORATORTYPE_USER"]
        6 LOADK                            R1 K2 ["Groups"]
        7 SETTABLEKS                       R1 R0 K3 ["COLLABORATORTYPE_GROUP"]
        9 LOADK                            R1 K4 ["Access"]
       10 SETTABLEKS                       R1 R0 K5 ["AUDIENCE_TAB_ACCESS"]
       12 LOADK                            R1 K6 ["EarlyTesters"]
       13 SETTABLEKS                       R1 R0 K7 ["AUDIENCE_TAB_EARLY_TESTERS"]
       15 LOADK                            R1 K8 ["edit"]
       16 SETTABLEKS                       R1 R0 K9 ["LINKTYPE_EDIT"]
       18 LOADK                            R1 K10 ["teamTest"]
       19 SETTABLEKS                       R1 R0 K11 ["LINKTYPE_TEAM_TEST"]
       21 LOADK                            R1 K12 ["primary"]
       22 SETTABLEKS                       R1 R0 K13 ["BUTTONTYPE_PRIMARY"]
       24 LOADK                            R1 K14 ["secondary"]
       25 SETTABLEKS                       R1 R0 K15 ["BUTTONTYPE_SECONDARY"]
       27 LOADN                            R1 4
       28 SETTABLEKS                       R1 R0 K16 ["COPIED_INDICATOR_DURATION"]
       30 LOADN                            R1 192
       31 SETTABLEKS                       R1 R0 K17 ["MENU_BAR_WIDTH"]
       33 LOADN                            R1 42
       34 SETTABLEKS                       R1 R0 K18 ["MENU_ENTRY_HEIGHT"]
       36 LOADN                            R1 36
       37 SETTABLEKS                       R1 R0 K19 ["FRAME_PADDING"]
       39 LOADN                            R1 180
       40 SETTABLEKS                       R1 R0 K20 ["CENTER_GUTTER"]
       42 LOADN                            R1 32
       43 SETTABLEKS                       R1 R0 K21 ["ELEMENT_PADDING"]
       45 LOADN                            R1 20
       46 SETTABLEKS                       R1 R0 K22 ["RADIO_BUTTON_SIZE"]
       48 LOADN                            R1 10
       49 SETTABLEKS                       R1 R0 K23 ["RADIO_BUTTON_PADDING"]
       51 LOADN                            R1 20
       52 SETTABLEKS                       R1 R0 K24 ["CHECKBOX_SIZE"]
       54 LOADN                            R1 8
       55 SETTABLEKS                       R1 R0 K25 ["CHECKBOX_PADDING"]
       57 LOADN                            R1 125
       58 SETTABLEKS                       R1 R0 K26 ["BUTTON_WIDTH"]
       60 LOADN                            R1 35
       61 SETTABLEKS                       R1 R0 K27 ["BUTTON_HEIGHT"]
       63 LOADN                            R1 45
       64 SETTABLEKS                       R1 R0 K28 ["HEADER_HEIGHT"]
       66 GETIMPORT                        R1 K31 [Color3.fromRGB]
       68 LOADN                            R2 0
       69 LOADN                            R3 162
       70 LOADN                            R4 255
       71 CALL                             R1 3 1
       72 SETTABLEKS                       R1 R0 K32 ["BLUE"]
       74 GETIMPORT                        R1 K31 [Color3.fromRGB]
       76 LOADN                            R2 153
       77 LOADN                            R3 218
       78 LOADN                            R4 255
       79 CALL                             R1 3 1
       80 SETTABLEKS                       R1 R0 K33 ["BLUE_DISABLED"]
       82 GETIMPORT                        R1 K35 [Color3.new]
       84 LOADN                            R2 0
       85 LOADN                            R3 0
       86 LOADN                            R4 0
       87 CALL                             R1 3 1
       88 SETTABLEKS                       R1 R0 K36 ["BLACK"]
       90 GETIMPORT                        R1 K35 [Color3.new]
       92 LOADN                            R2 1
       93 LOADN                            R3 1
       94 LOADN                            R4 1
       95 CALL                             R1 3 1
       96 SETTABLEKS                       R1 R0 K37 ["WHITE"]
       98 LOADK                            R1 K38 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
       99 SETTABLEKS                       R1 R0 K39 ["ROUNDED_BACKGROUND_IMAGE"]
      101 LOADK                            R1 K40 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
      102 SETTABLEKS                       R1 R0 K41 ["ROUNDED_BORDER_IMAGE"]
      104 GETIMPORT                        R1 K43 [Rect.new]
      106 LOADN                            R2 3
      107 LOADN                            R3 3
      108 LOADN                            R4 13
      109 LOADN                            R5 13
      110 CALL                             R1 4 1
      111 SETTABLEKS                       R1 R0 K44 ["ROUNDED_FRAME_SLICE"]
      113 LOADN                            R1 42
      114 SETTABLEKS                       R1 R0 K45 ["ROUND_TEXT_BOX_DEFAULT_HEIGHT"]
      116 LOADK                            R1 K46 ["rbxasset://textures/gradient.png"]
      117 SETTABLEKS                       R1 R0 K47 ["GRADIENT_IMAGE"]
      119 GETIMPORT                        R1 K49 [Vector2.new]
      121 LOADN                            R2 512
      122 LOADN                            R3 256
      123 CALL                             R1 2 1
      124 SETTABLEKS                       R1 R0 K50 ["GRADIENT_RECT_SIZE"]
      126 LOADK                            R1 K51 ["rbxasset://textures/GameSettings/ErrorIcon.png"]
      127 SETTABLEKS                       R1 R0 K52 ["ERROR_IMAGE"]
      129 GETIMPORT                        R1 K35 [Color3.new]
      131 LOADN                            R2 1
      132 LOADK                            R3 K53 [0.266]
      133 LOADK                            R4 K53 [0.266]
      134 CALL                             R1 3 1
      135 SETTABLEKS                       R1 R0 K54 ["ERROR_COLOR"]
      137 LOADK                            R1 K55 ["rbxasset://textures/GameSettings/Warning.png"]
      138 SETTABLEKS                       R1 R0 K56 ["WARNING_IMAGE"]
      140 LOADN                            R1 10
      141 SETTABLEKS                       R1 R0 K57 ["MAX_THUMBNAILS"]
      143 LOADK                            R1 K58 ["rbxasset://textures/GameSettings/placeholder.png"]
      144 SETTABLEKS                       R1 R0 K59 ["VIDEO_PLACEHOLDER"]
      146 GETIMPORT                        R1 K61 [UDim2.new]
      148 LOADN                            R2 0
      149 LOADN                            R3 267
      150 LOADN                            R4 0
      151 LOADN                            R5 150
      152 CALL                             R1 4 1
      153 SETTABLEKS                       R1 R0 K62 ["THUMBNAIL_SIZE"]
      155 LOADN                            R1 400
      156 SETTABLEKS                       R1 R0 K63 ["BAD_REQUEST"]
      158 NEWTABLE                         R1 0 3
      160 LOADK                            R2 K64 ["jpg"]
      161 LOADK                            R3 K65 ["jpeg"]
      162 LOADK                            R4 K66 ["png"]
      163 SETLIST                          R1 R2 3 [1]
      165 SETTABLEKS                       R1 R0 K67 ["IMAGE_TYPES"]
      167 LOADN                            R1 22
      168 SETTABLEKS                       R1 R0 K68 ["TEXT_SIZE"]
      170 GETIMPORT                        R1 K72 [Enum.Font.BuilderSansBold]
      172 SETTABLEKS                       R1 R0 K73 ["FOUNDATION_BUTTON_FONT"]
      174 LOADN                            R1 17
      175 SETTABLEKS                       R1 R0 K74 ["FOUNDATION_BUTTON_TEXT_SIZE"]
      177 LOADN                            R1 20
      178 SETTABLEKS                       R1 R0 K75 ["FOUNDATION_BUTTON_ICON_WIDTH"]
      180 LOADN                            R1 8
      181 SETTABLEKS                       R1 R0 K76 ["FOUNDATION_BUTTON_ICON_TEXT_PADDING"]
      183 LOADN                            R1 24
      184 SETTABLEKS                       R1 R0 K77 ["FOUNDATION_BUTTON_PADDING"]
      186 RETURN                           R0 1
