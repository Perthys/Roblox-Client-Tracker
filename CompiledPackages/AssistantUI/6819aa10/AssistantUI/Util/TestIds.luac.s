PROTO_0:
        0 LOADK                            R1 K0 ["Assistant-Skills-Row-%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R1 K0 ["Assistant-Skills-Toggle-%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R1 K0 ["Assistant-IntegrationItem-ToolPill-%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R1 K0 ["Assistant-ScopePermissions-PresetItem-%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R1 K0 ["Assistant-ScopePermissions-ScopeCheckbox-%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_5:
        0 LOADK                            R1 K0 ["Assistant-QuickConnect-Toggle-%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_6:
        0 LOADK                            R1 K0 ["Assistant-QuickConnect-CommandLabel-%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_7:
        0 LOADK                            R1 K0 ["Assistant-QuickConnect-CommandCopy-%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_8:
        0 LOADK                            R1 K0 ["Assistant-ProviderCheckbox-%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_9:
        0 LOADK                            R1 K0 ["Assistant-APIKey-Display-%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_10:
        0 LOADK                            R1 K0 ["Assistant-APIKey-EditButton-%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_11:
        0 LOADK                            R1 K0 ["Assistant-APIKey-Input-%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_12:
        0 LOADK                            R1 K0 ["Assistant-APIKey-SaveButton-%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_13:
        0 LOADK                            R1 K0 ["Assistant-APIKey-CancelButton-%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_14:
        0 LOADK                            R1 K0 ["Assistant-RobuxPackageModal-PackageOption-%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_15:
        0 LOADK                            R1 K0 ["Assistant-PropRow-Row-%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_16:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 FASTCALL1                        TYPEOF R5 ; [+3]
        5 MOVE                             R7 R5
        6 GETIMPORT                        R6 K1 [typeof]
        8 CALL                             R6 1 1
        9 JUMPIFNOTEQKS                    R6 K2 ["table"] ; [+5]
       11 GETUPVAL                         R6 0
       12 MOVE                             R7 R5
       13 CALL                             R6 1 0
       14 JUMP                             ; [+47]
       15 LOADNIL                          R6
       16 FASTCALL1                        TYPEOF R5 ; [+3]
       17 MOVE                             R8 R5
       18 GETIMPORT                        R7 K1 [typeof]
       20 CALL                             R7 1 1
       21 JUMPIFNOTEQKS                    R7 K3 ["string"] ; [+3]
       23 MOVE                             R6 R5
       24 JUMP                             ; [+23]
       25 FASTCALL1                        TYPEOF R5 ; [+3]
       26 MOVE                             R8 R5
       27 GETIMPORT                        R7 K1 [typeof]
       29 CALL                             R7 1 1
       30 JUMPIFNOTEQKS                    R7 K4 ["function"] ; [+5]
       32 MOVE                             R7 R5
       33 CALL                             R7 0 1
       34 MOVE                             R6 R7
       35 JUMP                             ; [+12]
       36 GETIMPORT                        R7 K6 [error]
       38 LOADK                            R8 K7 ["Unexpected value type: %*"]
       39 FASTCALL1                        TYPEOF R5 ; [+3]
       40 MOVE                             R11 R5
       41 GETIMPORT                        R10 K1 [typeof]
       43 CALL                             R10 1 1
       44 NAMECALL                         R8 R8 K8 ["format"]
       46 CALL                             R8 2 1
       47 CALL                             R7 1 0
       48 GETUPVAL                         R8 1
       49 GETTABLE                         R7 R8 R6
       50 JUMPIFNOT                        R7 ; [+8]
       51 GETIMPORT                        R7 K6 [error]
       53 LOADK                            R8 K9 ["Duplicate test id found: %*"]
       54 MOVE                             R10 R6
       55 NAMECALL                         R8 R8 K8 ["format"]
       57 CALL                             R8 2 1
       58 CALL                             R7 1 0
       59 GETUPVAL                         R7 1
       60 LOADB                            R8 1
       61 SETTABLE                         R8 R7 R6
       62 FORGLOOP                         R1 2 ; [-59]
       64 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 64 0
        3 DUPTABLE                         R1 K12 [{[1] = "Assistant-Header-ToggleThreadsMenu", ["SettingsButton"] = "Assistant-Header-SettingsButton", ["SettingsContent"] = "Assistant-Header-SettingsContent", ["VersionMismatchIcon"] = "Assistant-Header-VersionMismatchIcon", ["HarnessSplitTag"] = "Assistant-Header-HarnessSplitTag", ["AcpSessionIdTag"] = "Assistant-Header-AcpSessionIdTag"}]
        4 SETTABLEKS                       R1 R0 K13 ["Header"]
        6 DUPTABLE                         R1 K20 [{["Container"] = "Assistant-ThreadsMenu-Container", ["ExistingThreadButton"] = "Assistant-ThreadsMenu-ExistingThreadButton", ["AddThreadButton"] = "Assistant-ThreadsMenu-AddThreadButton"}]
        7 SETTABLEKS                       R1 R0 K21 ["ThreadsMenu"]
        9 DUPTABLE                         R1 K28 [{["OptionsButton"] = "Assistant-ThreadEntry-OptionsButton", ["RenameInput"] = "Assistant-ThreadEntry-RenameInput", ["SharedWithBuildTag"] = "Assistant-ThreadEntry-SharedWithBuildTag"}]
       10 SETTABLEKS                       R1 R0 K29 ["ThreadEntry"]
       12 DUPTABLE                         R1 K31 [{["Container"] = "Assistant-ThreadOptionsMenu-Container"}]
       13 SETTABLEKS                       R1 R0 K32 ["ThreadOptionsMenu"]
       15 DUPTABLE                         R1 K47 [{["Container"] = "Assistant-InputArea-Container", ["SendButton"] = "Assistant-InputArea-SendButton", ["StopButton"] = "Assistant-InputArea-StopButton", ["AttachImageButton"] = "Assistant-InputArea-AttachImageButton", ["AttachedImagesPreview"] = "Assistant-InputArea-AttachedImagesPreview", ["AssistantModeDropdown"] = "Assistant-InputArea-AssistantModeDropdown", ["AssistantModeDropdownMenu"] = "Assistant-InputArea-AssistantModeDropdownMenu", ["Footer"]}]
       16 DUPTABLE                         R2 K51 [{["Container"] = "Assistant-InputArea-Footer-Container", ["Icon"] = "Assistant-InputArea-Footer-Icon"}]
       17 SETTABLEKS                       R2 R1 K46 ["Footer"]
       19 SETTABLEKS                       R1 R0 K52 ["InputArea"]
       21 DUPTABLE                         R1 K62 [{["Container"] = "Assistant-MessageActions-Container", ["ThumbsUp"] = "Assistant-MessageActions-ThumbsUp", ["ThumbsDown"] = "Assistant-MessageActions-ThumbsDown", ["Copy"] = "Assistant-MessageActions-Copy", ["Retry"] = "Assistant-MessageActions-Retry"}]
       22 SETTABLEKS                       R1 R0 K63 ["MessageActions"]
       24 DUPTABLE                         R1 K66 [{["Bubble"] = "Assistant-UserMessage-Bubble"}]
       25 SETTABLEKS                       R1 R0 K67 ["UserMessage"]
       27 DUPTABLE                         R1 K77 [{["Container"] = "Assistant-FeedbackView-Container", ["Dropdown"] = "Assistant-FeedbackView-Dropdown", ["TextArea"] = "Assistant-FeedbackView-TextArea", ["Close"] = "Assistant-FeedbackView-Close", ["Submit"] = "Assistant-FeedbackView-Submit"}]
       28 SETTABLEKS                       R1 R0 K78 ["FeedbackView"]
       30 LOADK                            R1 K79 ["Assistant-GenerationIndicator"]
       31 SETTABLEKS                       R1 R0 K80 ["GenerationIndicator"]
       33 LOADK                            R1 K81 ["Assistant-ModelQualityWarning"]
       34 SETTABLEKS                       R1 R0 K82 ["ModelQualityWarning"]
       36 DUPTABLE                         R1 K85 [{["Button"] = "Assistant-ServerManagement-Button"}]
       37 SETTABLEKS                       R1 R0 K86 ["ServerManagement"]
       39 DUPTABLE                         R1 K91 [{["Checkbox"] = "Assistant-McpServer-Checkbox", ["CheckboxInput"] = "Assistant-McpServer-Checkbox--container"}]
       40 SETTABLEKS                       R1 R0 K92 ["McpServer"]
       42 DUPTABLE                         R1 K95 [{["Container"] = "Assistant-SlashCommandMenu-Container", ["Item"]}]
       43 DUPTABLE                         R2 K99 [{["Container"] = "Assistant-SlashCommandMenu-Item-Container", ["Command"] = "Assistant-SlashCommandMenu-Item-Command"}]
       44 SETTABLEKS                       R2 R1 K94 ["Item"]
       46 SETTABLEKS                       R1 R0 K100 ["SlashCommandMenu"]
       48 DUPTABLE                         R1 K103 [{["Container"] = "Assistant-ToolMenuView-Container", ["Option"]}]
       49 DUPTABLE                         R2 K106 [{["Container"] = "Assistant-ToolMenuView-Option-Container", ["Checkbox"] = "Assistant-ToolMenuView-Option-Checkbox"}]
       50 SETTABLEKS                       R2 R1 K102 ["Option"]
       52 SETTABLEKS                       R1 R0 K107 ["ToolMenuView"]
       54 DUPTABLE                         R1 K110 [{["Container"] = "Assistant-ModelPicker-Container", ["Dropdown"] = "Assistant-ModelPicker-Dropdown"}]
       55 SETTABLEKS                       R1 R0 K111 ["ModelPicker"]
       57 DUPTABLE                         R1 K115 [{["Root"] = "Assistant-Carousel-Root", ["Container"] = "Assistant-Carousel-Container"}]
       58 SETTABLEKS                       R1 R0 K116 ["Carousel"]
       60 DUPTABLE                         R1 K120 [{["Root"] = "Assistant-CarouselItem-Root", ["Selected"] = "Assistant-CarouselItem-Selected"}]
       61 SETTABLEKS                       R1 R0 K121 ["CarouselItem"]
       63 DUPTABLE                         R1 K127 [{["Continue"] = "Assistant-Alert-Continue", ["EditApiKeys"] = "Assistant-Alert-EditApiKeys", ["Close"] = "Assistant-Alert-Close"}]
       64 SETTABLEKS                       R1 R0 K128 ["Alert"]
       66 DUPTABLE                         R1 K133 [{["Image"] = "Assistant-ImageContent-Image", ["Expand"] = "Assistant-ImageContent-Expand"}]
       67 SETTABLEKS                       R1 R0 K134 ["ImageContent"]
       69 DUPTABLE                         R1 K136 [{["Expand"] = "Assistant-AssetInsert-Expand"}]
       70 SETTABLEKS                       R1 R0 K137 ["AssetInsert"]
       72 DUPTABLE                         R1 K141 [{["Expand"] = "Assistant-AssetSearch-Expand", ["Tile"] = "Assistant-AssetSearch-Tile"}]
       73 SETTABLEKS                       R1 R0 K142 ["AssetSearch"]
       75 DUPTABLE                         R1 K153 [{["SubmitButton"] = "Assistant-AskInput-SubmitButton", ["CancelButton"] = "Assistant-AskInput-CancelButton", ["CloseButton"] = "Assistant-AskInput-CloseButton", ["StepperPrev"] = "Assistant-AskInput-StepperPrev", ["StepperNext"] = "Assistant-AskInput-StepperNext"}]
       76 SETTABLEKS                       R1 R0 K154 ["AskInput"]
       78 DUPTABLE                         R1 K158 [{["Expand"] = "Assistant-AvatarAutoSetup-Expand", ["FailureReason"] = "Assistant-AvatarAutoSetup-FailureReason"}]
       79 SETTABLEKS                       R1 R0 K159 ["AvatarAutoSetup"]
       81 DUPTABLE                         R1 K165 [{["Expand"] = "Assistant-MaterialGen-Expand", ["StudsPerTileValueBar"] = "Assistant-MaterialGen-StudsPerTileValueBar", ["OrganicPatternToggle"] = "Assistant-MaterialGen-OrganicPatternToggle"}]
       82 SETTABLEKS                       R1 R0 K166 ["MaterialGen"]
       84 DUPTABLE                         R1 K174 [{["Expand"] = "Assistant-MeshGen-Expand", ["PreviewImage"] = "Assistant-MeshGen-PreviewImage", ["UseSelection"] = "Assistant-MeshGen-UseSelection", ["MaxTriangles"] = "Assistant-MeshGen-MaxTriangles"}]
       85 SETTABLEKS                       R1 R0 K175 ["MeshGen"]
       87 DUPTABLE                         R1 K177 [{["Expand"] = "Assistant-SegmentMesh-Expand"}]
       88 SETTABLEKS                       R1 R0 K178 ["SegmentMesh"]
       90 DUPTABLE                         R1 K181 [{["Expand"] = "Assistant-TextureGen-Expand", ["PreviewImage"] = "Assistant-TextureGen-PreviewImage"}]
       91 SETTABLEKS                       R1 R0 K182 ["TextureGen"]
       93 DUPTABLE                         R1 K185 [{["CloudIcon"] = "Assistant-GenericTool-CloudIcon"}]
       94 SETTABLEKS                       R1 R0 K186 ["GenericTool"]
       96 DUPTABLE                         R1 K189 [{["Expand"] = "Assistant-PrimitiveGen-Expand", ["PreviewImage"] = "Assistant-PrimitiveGen-PreviewImage"}]
       97 SETTABLEKS                       R1 R0 K190 ["PrimitiveGen"]
       99 DUPTABLE                         R1 K198 [{["Expand"] = "Assistant-RunCode-Expand", ["CloudIcon"] = "Assistant-RunCode-CloudIcon", ["Copy"] = "Assistant-RunCode-Copy", ["Run"] = "Assistant-RunCode-Run", ["Stop"] = "Assistant-RunCode-Stop"}]
      100 SETTABLEKS                       R1 R0 K199 ["RunCode"]
      102 DUPTABLE                         R1 K201 [{["Expand"] = "Assistant-Thinking-Expand"}]
      103 SETTABLEKS                       R1 R0 K202 ["Thinking"]
      105 DUPTABLE                         R1 K211 [{["Warning"] = "Assistant-ToolConfirmation-Warning", ["Accept"] = "Assistant-ToolConfirmation-Accept", ["Reject"] = "Assistant-ToolConfirmation-Reject", ["AlwaysAccept"] = "Assistant-ToolConfirmation-AlwaysAccept"}]
      106 SETTABLEKS                       R1 R0 K212 ["ToolConfirmation"]
      108 DUPTABLE                         R1 K220 [{["Warning"] = "Assistant-ScriptChangeConfirmation-Warning", ["ReviewEach"] = "Assistant-ScriptChangeConfirmation-ReviewEach", ["AcceptAllPrompt"] = "Assistant-ScriptChangeConfirmation-AcceptAllPrompt", ["AcceptAllSession"] = "Assistant-ScriptChangeConfirmation-AcceptAllSession"}]
      109 SETTABLEKS                       R1 R0 K221 ["ScriptChangeConfirmation"]
      111 DUPTABLE                         R1 K224 [{["Icon"] = "Assistant-Summarized-Icon", ["Expand"] = "Assistant-Summarized-Expand"}]
      112 SETTABLEKS                       R1 R0 K225 ["Summarized"]
      114 DUPTABLE                         R1 K228 [{["Title"] = "Assistant-ReadFile-Title"}]
      115 SETTABLEKS                       R1 R0 K229 ["ReadFile"]
      117 DUPTABLE                         R1 K231 [{["Expand"] = "Assistant-InputRequested-Expand"}]
      118 SETTABLEKS                       R1 R0 K232 ["InputRequested"]
      120 DUPTABLE                         R1 K241 [{["StepperPrev"] = "Assistant-QuestionAnswer-StepperPrev", ["StepperNext"] = "Assistant-QuestionAnswer-StepperNext", ["ConfirmCheckbox"] = "Assistant-QuestionAnswer-ConfirmCheckbox", ["ConfirmButton"] = "Assistant-QuestionAnswer-ConfirmButton", ["Dismiss"] = "Assistant-QuestionAnswer-Dismiss"}]
      121 SETTABLEKS                       R1 R0 K242 ["QuestionAnswer"]
      123 DUPTABLE                         R1 K249 [{["AddIntegrationDialog"] = "Assistant-IntegrationMenu-AddIntegrationDialog", ["TabContent"] = "Assistant-IntegrationMenu-TabContent", ["EmptyState"] = "Assistant-IntegrationMenu-EmptyState"}]
      124 SETTABLEKS                       R1 R0 K250 ["IntegrationMenu"]
      126 DUPTABLE                         R1 K270 [{["TabContent"] = "Assistant-Skills-TabContent", ["CreateNewButton"] = "Assistant-Skills-CreateNewButton", ["CreateFromTextButton"] = "Assistant-Skills-CreateFromTextButton", ["RefreshButton"] = "Assistant-Skills-RefreshButton", ["UploadButton"] = "Assistant-Skills-UploadButton", ["ImportError"] = "Assistant-Skills-ImportError", ["PersonalGroup"] = "Assistant-Skills-PersonalGroup", ["RobloxGroup"] = "Assistant-Skills-RobloxGroup", ["Row"], ["Toggle"], ["CreateModal"], ["DetailPane"]}]
      127 DUPCLOSURE                       R2 K271 [PROTO_0]
      128 SETTABLEKS                       R2 R1 K266 ["Row"]
      130 DUPCLOSURE                       R2 K272 [PROTO_1]
      131 SETTABLEKS                       R2 R1 K267 ["Toggle"]
      133 DUPTABLE                         R2 K281 [{["Container"] = "Assistant-Skills-CreateModal-Container", ["NameInput"] = "Assistant-Skills-CreateModal-NameInput", ["DescriptionInput"] = "Assistant-Skills-CreateModal-DescriptionInput", ["CreateButton"] = "Assistant-Skills-CreateModal-CreateButton", ["CancelButton"] = "Assistant-Skills-CreateModal-CancelButton"}]
      134 SETTABLEKS                       R2 R1 K268 ["CreateModal"]
      136 DUPTABLE                         R2 K293 [{["Container"] = "Assistant-Skills-DetailPane-Container", ["Empty"] = "Assistant-Skills-DetailPane-Empty", ["SourceUri"] = "Assistant-Skills-DetailPane-SourceUri", ["OpenButton"] = "Assistant-Skills-DetailPane-OpenButton", ["DuplicateButton"] = "Assistant-Skills-DetailPane-DuplicateButton", ["DeleteButton"] = "Assistant-Skills-DetailPane-DeleteButton"}]
      137 SETTABLEKS                       R2 R1 K269 ["DetailPane"]
      139 SETTABLEKS                       R1 R0 K294 ["Skills"]
      141 DUPTABLE                         R1 K302 [{["Dialog"] = "Assistant-IntegrationItem-Dialog", ["Header"] = "Assistant-IntegrationItem-Header", ["ToolsContainer"] = "Assistant-IntegrationItem-ToolsContainer", ["ToolPill"], ["Actions"]}]
      142 DUPCLOSURE                       R2 K303 [PROTO_2]
      143 SETTABLEKS                       R2 R1 K300 ["ToolPill"]
      145 DUPTABLE                         R2 K309 [{["Toggle"] = "Assistant-IntegrationItem-Actions-Toggle", ["OverflowButton"] = "Assistant-IntegrationItem-Actions-OverflowButton", ["OverflowContent"] = "Assistant-IntegrationItem-Actions-OverflowContent"}]
      146 SETTABLEKS                       R2 R1 K301 ["Actions"]
      148 SETTABLEKS                       R1 R0 K310 ["IntegrationItem"]
      150 DUPTABLE                         R1 K320 [{["Toggle"] = "Assistant-McpSetup-Toggle", ["StartupCommandLabel"] = "Assistant-McpSetup-StartupCommandLabel", ["JsonConfigLabel"] = "Assistant-McpSetup-JsonConfigLabel", ["StartupCommandCopy"] = "Assistant-McpSetup-StartupCommandCopy", ["JsonConfigCopy"] = "Assistant-McpSetup-JsonConfigCopy"}]
      151 SETTABLEKS                       R1 R0 K321 ["McpSetup"]
      153 DUPTABLE                         R1 K327 [{["Container"] = "Assistant-ScopePermissions-Container", ["PresetGroup"] = "Assistant-ScopePermissions-PresetGroup", ["PresetItem"], ["ScopeCheckbox"]}]
      154 DUPCLOSURE                       R2 K328 [PROTO_3]
      155 SETTABLEKS                       R2 R1 K325 ["PresetItem"]
      157 DUPCLOSURE                       R2 K329 [PROTO_4]
      158 SETTABLEKS                       R2 R1 K326 ["ScopeCheckbox"]
      160 SETTABLEKS                       R1 R0 K330 ["ScopePermissions"]
      162 DUPTABLE                         R1 K335 [{["Section"] = "Assistant-QuickConnect-Section", ["Toggle"], ["CommandLabel"], ["CommandCopy"]}]
      163 DUPCLOSURE                       R2 K336 [PROTO_5]
      164 SETTABLEKS                       R2 R1 K267 ["Toggle"]
      166 DUPCLOSURE                       R2 K337 [PROTO_6]
      167 SETTABLEKS                       R2 R1 K333 ["CommandLabel"]
      169 DUPCLOSURE                       R2 K338 [PROTO_7]
      170 SETTABLEKS                       R2 R1 K334 ["CommandCopy"]
      172 SETTABLEKS                       R1 R0 K339 ["QuickConnect"]
      174 DUPCLOSURE                       R1 K340 [PROTO_8]
      175 SETTABLEKS                       R1 R0 K341 ["ProviderCheckbox"]
      177 DUPTABLE                         R1 K346 [{"Display", "EditButton", "Input", "SaveButton", "CancelButton"}]
      178 DUPCLOSURE                       R2 K347 [PROTO_9]
      179 SETTABLEKS                       R2 R1 K342 ["Display"]
      181 DUPCLOSURE                       R2 K348 [PROTO_10]
      182 SETTABLEKS                       R2 R1 K343 ["EditButton"]
      184 DUPCLOSURE                       R2 K349 [PROTO_11]
      185 SETTABLEKS                       R2 R1 K344 ["Input"]
      187 DUPCLOSURE                       R2 K350 [PROTO_12]
      188 SETTABLEKS                       R2 R1 K345 ["SaveButton"]
      190 DUPCLOSURE                       R2 K351 [PROTO_13]
      191 SETTABLEKS                       R2 R1 K145 ["CancelButton"]
      193 SETTABLEKS                       R1 R0 K352 ["APIKey"]
      195 DUPTABLE                         R1 K356 [{["Container"] = "Assistant-AttachedImagePreview-Container", ["Remove"] = "Assistant-AttachedImagePreview-Remove"}]
      196 SETTABLEKS                       R1 R0 K357 ["AttachedImagePreview"]
      198 DUPTABLE                         R1 K369 [{["Header"] = "Assistant-DailyUsage-Header", ["LimitDecreaseButton"] = "Assistant-DailyUsage-LimitDecreaseButton", ["LimitIncreaseButton"] = "Assistant-DailyUsage-LimitIncreaseButton", ["UsageBar"] = "Assistant-DailyUsage-UsageBar", ["Loading"] = "Assistant-DailyUsage-Loading", ["BuyRobuxButton"] = "Assistant-DailyUsage-BuyRobuxButton"}]
      199 SETTABLEKS                       R1 R0 K370 ["DailyUsage"]
      201 DUPTABLE                         R1 K376 [{["Container"] = "Assistant-RobuxPackageModal-Container", ["BuyButton"] = "Assistant-RobuxPackageModal-BuyButton", ["Loading"] = "Assistant-RobuxPackageModal-Loading", ["PackageOption"]}]
      202 DUPCLOSURE                       R2 K377 [PROTO_14]
      203 SETTABLEKS                       R2 R1 K375 ["PackageOption"]
      205 SETTABLEKS                       R1 R0 K378 ["RobuxPackageModal"]
      207 DUPTABLE                         R1 K381 [{["InfoTooltip"] = "Assistant-PropRow-InfoTooltip", ["Row"]}]
      208 DUPCLOSURE                       R2 K382 [PROTO_15]
      209 SETTABLEKS                       R2 R1 K266 ["Row"]
      211 SETTABLEKS                       R1 R0 K383 ["PropertyRow"]
      213 DUPTABLE                         R1 K397 [{["SuggestCheckbox"] = "Assistant-SegPropRow-SuggestCheckbox", ["RefreshButton"] = "Assistant-SegPropRow-RefreshButton", ["WarningToggle"] = "Assistant-PropRow-WarningToggle", ["CancelButton"] = "Assistant-PropRow-CancelButton", ["SuggestButton"] = "Assistant-PropRow-SuggestButton", ["UploadButton"] = "Assistant-PropRow-UploadButton", ["DeletePillButton"] = "Assistant-PropRow-DeletePillButton", ["BooleanCheckbox"] = "Assistant-PropRow-BooleanCheckbox"}]
      214 SETTABLEKS                       R1 R0 K398 ["SegmentationPropertyRow"]
      216 GETIMPORT                        R1 K400 [pcall]
      218 GETIMPORT                        R2 K402 [game]
      220 GETTABLEKS                       R2 R2 K403 ["GetService"]
      222 GETIMPORT                        R3 K402 [game]
      224 LOADK                            R4 K404 ["ProcessService"]
      225 CALL                             R1 3 1
      226 JUMPIFNOT                        R1 ; [+8]
      227 NEWTABLE                         R2 0 0
      229 DUPCLOSURE                       R3 K405 [PROTO_16]
      230 CAPTURE                          VAL R3
      231 CAPTURE                          VAL R2
      232 MOVE                             R4 R3
      233 MOVE                             R5 R0
      234 CALL                             R4 1 0
      235 RETURN                           R0 1
