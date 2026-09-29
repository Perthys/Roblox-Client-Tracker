PROTO_0:
        0 LOADB                            R1 1
        1 JUMPIFEQKS                       R0 K0 ["/llms.txt"] ; [+10]
        3 GETIMPORT                        R2 K3 [string.match]
        5 MOVE                             R3 R0
        6 LOADK                            R4 K4 ["^/.+%.md$"]
        7 CALL                             R2 2 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 LOADN                            R8 1
        5 GETTABLEKS                       R10 R5 K0 ["base"]
        7 LENGTH                           R9 R10
        8 FASTCALL3                        STRING_SUB R0 R8 R9
       10 MOVE                             R7 R0
       11 GETIMPORT                        R6 K3 [string.sub]
       13 CALL                             R6 3 1
       14 GETTABLEKS                       R7 R5 K0 ["base"]
       16 JUMPIFNOTEQ                      R6 R7 ; [+21]
       18 GETTABLEKS                       R6 R5 K4 ["validate"]
       20 JUMPIFNOT                        R6 ; [+15]
       21 GETTABLEKS                       R10 R5 K0 ["base"]
       23 LENGTH                           R9 R10
       24 ADDK                             R8 R9 K5 [1]
       25 FASTCALL2                        STRING_SUB R0 R8 ; [+4]
       27 MOVE                             R7 R0
       28 GETIMPORT                        R6 K3 [string.sub]
       30 CALL                             R6 2 1
       31 GETTABLEKS                       R7 R5 K4 ["validate"]
       33 MOVE                             R8 R6
       34 CALL                             R7 1 -1
       35 RETURN                           R7 -1
       36 LOADB                            R6 1
       37 RETURN                           R6 1
       38 FORGLOOP                         R1 2 ; [-35]
       40 LOADB                            R1 0
       41 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 LOADK                            R8 K0 ["- %* (%*)"]
        7 GETTABLEKS                       R10 R5 K1 ["base"]
        9 GETTABLEKS                       R11 R5 K2 ["description"]
       11 NAMECALL                         R8 R8 K3 ["format"]
       13 CALL                             R8 3 1
       14 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       16 MOVE                             R7 R0
       17 GETIMPORT                        R6 K6 [table.insert]
       19 CALL                             R6 2 0
       20 FORGLOOP                         R1 2 ; [-15]
       22 GETIMPORT                        R1 K8 [table.concat]
       24 MOVE                             R2 R0
       25 LOADK                            R3 K9 ["\n"]
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R4 K0 ["([^\r\n]*)\r?\n?"]
        3 NAMECALL                         R2 R0 K1 ["gmatch"]
        5 CALL                             R2 2 3
        6 FORGPREP                         R2
        7 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R5
       11 GETIMPORT                        R7 K4 [table.insert]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 1 ; [-8]
       16 LENGTH                           R2 R1
       17 LOADN                            R3 0
       18 JUMPIFNOTLT                      R3 R2 ; [+9]
       20 LENGTH                           R3 R1
       21 GETTABLE                         R2 R1 R3
       22 JUMPIFNOTEQKS                    R2 K5 [""] ; [+5]
       24 GETIMPORT                        R2 K7 [table.remove]
       26 MOVE                             R3 R1
       27 CALL                             R2 1 0
       28 RETURN                           R1 1

PROTO_4:
        0 NAMECALL                         R4 R0 K0 ["lower"]
        2 CALL                             R4 1 1
        3 NAMECALL                         R5 R1 K0 ["lower"]
        5 CALL                             R5 1 1
        6 MOVE                             R8 R5
        7 LOADN                            R9 1
        8 LOADB                            R10 1
        9 NAMECALL                         R6 R4 K1 ["find"]
       11 CALL                             R6 4 1
       12 JUMPIF                           R6 ; [+3]
       13 LOADB                            R6 0
       14 LOADK                            R7 K2 [""]
       15 RETURN                           R6 2
       16 GETUPVAL                         R6 0
       17 MOVE                             R7 R0
       18 CALL                             R6 1 1
       19 JUMPIF                           R3 ; [+4]
       20 LENGTH                           R7 R6
       21 LOADN                            R8 60
       22 JUMPIFNOTLE                      R7 R8 ; [+4]
       24 LOADB                            R7 1
       25 MOVE                             R8 R0
       26 RETURN                           R7 2
       27 GETUPVAL                         R7 0
       28 MOVE                             R8 R4
       29 CALL                             R7 1 1
       30 NEWTABLE                         R8 0 0
       32 MOVE                             R9 R7
       33 LOADNIL                          R10
       34 LOADNIL                          R11
       35 FORGPREP                         R9
       36 MOVE                             R16 R5
       37 LOADN                            R17 1
       38 LOADB                            R18 1
       39 NAMECALL                         R14 R13 K1 ["find"]
       41 CALL                             R14 4 1
       42 JUMPIFNOT                        R14 ; [+7]
       43 FASTCALL2                        TABLE_INSERT R8 R12 ; [+5]
       45 MOVE                             R15 R8
       46 MOVE                             R16 R12
       47 GETIMPORT                        R14 K5 [table.insert]
       49 CALL                             R14 2 0
       50 FORGLOOP                         R9 2 ; [-15]
       52 NEWTABLE                         R9 0 0
       54 MOVE                             R10 R8
       55 LOADNIL                          R11
       56 LOADNIL                          R12
       57 FORGPREP                         R10
       58 LOADN                            R16 1
       59 SUB                              R17 R14 R2
       60 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
       62 GETIMPORT                        R15 K8 [math.max]
       64 CALL                             R15 2 1
       65 LENGTH                           R17 R6
       66 ADD                              R18 R14 R2
       67 FASTCALL2                        MATH_MIN R17 R18 ; [+3]
       69 GETIMPORT                        R16 K10 [math.min]
       71 CALL                             R16 2 1
       72 LENGTH                           R17 R9
       73 LOADN                            R18 0
       74 JUMPIFNOTLT                      R18 R17 ; [+11]
       76 LENGTH                           R20 R9
       77 GETTABLE                         R19 R9 R20
       78 GETTABLEN                        R18 R19 2
       79 ADDK                             R17 R18 K11 [1]
       80 JUMPIFNOTLE                      R15 R17 ; [+5]
       82 LENGTH                           R18 R9
       83 GETTABLE                         R17 R9 R18
       84 SETTABLEN                        R16 R17 2
       85 JUMP                             ; [+12]
       86 NEWTABLE                         R19 0 2
       88 MOVE                             R20 R15
       89 MOVE                             R21 R16
       90 SETLIST                          R19 R20 2 [1]
       92 FASTCALL2                        TABLE_INSERT R9 R19 ; [+4]
       94 MOVE                             R18 R9
       95 GETIMPORT                        R17 K5 [table.insert]
       97 CALL                             R17 2 0
       98 FORGLOOP                         R10 2 ; [-41]
      100 LOADN                            R10 0
      101 MOVE                             R11 R9
      102 LOADNIL                          R12
      103 LOADNIL                          R13
      104 FORGPREP                         R11
      105 GETTABLEN                        R18 R15 2
      106 GETTABLEN                        R19 R15 1
      107 SUB                              R17 R18 R19
      108 ADDK                             R16 R17 K11 [1]
      109 ADD                              R10 R10 R16
      110 FORGLOOP                         R11 2 ; [-6]
      112 NEWTABLE                         R11 0 0
      114 MOVE                             R12 R9
      115 LOADNIL                          R13
      116 LOADNIL                          R14
      117 FORGPREP                         R12
      118 NEWTABLE                         R17 0 0
      120 GETTABLEN                        R20 R16 1
      121 GETTABLEN                        R18 R16 2
      122 LOADN                            R19 1
      123 FORNPREP                         R18
      124 GETTABLE                         R23 R6 R20
      125 FASTCALL2                        TABLE_INSERT R17 R23 ; [+4]
      127 MOVE                             R22 R17
      128 GETIMPORT                        R21 K5 [table.insert]
      130 CALL                             R21 2 0
      131 FORNLOOP                         R18
      132 MOVE                             R19 R11
      133 GETIMPORT                        R20 K13 [table.concat]
      135 MOVE                             R21 R17
      136 LOADK                            R22 K14 ["\n"]
      137 CALL                             R20 2 -1
      138 FASTCALL                         TABLE_INSERT ; [+2]
      139 GETIMPORT                        R18 K5 [table.insert]
      141 CALL                             R18 -1 0
      142 FORGLOOP                         R12 2 ; [-25]
      144 GETIMPORT                        R12 K17 [string.format]
      146 LOADK                            R13 K18 ["Found %d match(es) for '%s' (%d/%d lines shown):\n"]
      147 LENGTH                           R14 R8
      148 MOVE                             R15 R1
      149 MOVE                             R16 R10
      150 LENGTH                           R17 R6
      151 CALL                             R12 5 1
      152 LOADB                            R13 1
      153 MOVE                             R15 R12
      154 LOADK                            R16 K14 ["\n"]
      155 GETIMPORT                        R17 K13 [table.concat]
      157 MOVE                             R18 R11
      158 LOADK                            R19 K19 ["\n\n---\n\n"]
      159 CALL                             R17 2 1
      160 CONCAT                           R14 R15 R17
      161 RETURN                           R13 2

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["url"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 JUMPIFNOTEQKS                    R2 K1 [""] ; [+4]
        5 LOADB                            R3 0
        6 LOADK                            R4 K2 ["url is required"]
        7 RETURN                           R3 2
        8 GETUPVAL                         R3 0
        9 MOVE                             R4 R2
       10 CALL                             R3 1 1
       11 JUMPIF                           R3 ; [+6]
       12 LOADB                            R3 0
       13 LOADK                            R5 K3 ["URL not allowed. Only these patterns are permitted:\n"]
       14 GETUPVAL                         R6 1
       15 CALL                             R6 0 1
       16 CONCAT                           R4 R5 R6
       17 RETURN                           R3 2
       18 GETIMPORT                        R3 K5 [pcall]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K6 ["http"]
       23 GETTABLEKS                       R4 R4 K7 ["requestAsync"]
       25 DUPTABLE                         R5 K11 [{["Url"], ["Method"] = "GET"}]
       26 SETTABLEKS                       R2 R5 K8 ["Url"]
       28 CALL                             R3 2 2
       29 JUMPIF                           R3 ; [+11]
       30 LOADB                            R5 0
       31 LOADK                            R6 K12 ["HTTP GET request failed: %*"]
       32 FASTCALL1                        TOSTRING R4 ; [+3]
       33 MOVE                             R9 R4
       34 GETIMPORT                        R8 K14 [tostring]
       36 CALL                             R8 1 1
       37 NAMECALL                         R6 R6 K15 ["format"]
       39 CALL                             R6 2 1
       40 RETURN                           R5 2
       41 GETTABLEKS                       R5 R4 K16 ["Success"]
       43 JUMPIF                           R5 ; [+8]
       44 LOADB                            R5 0
       45 LOADK                            R6 K17 ["HTTP GET request failed with status %*"]
       46 GETTABLEKS                       R8 R4 K18 ["StatusCode"]
       48 NAMECALL                         R6 R6 K15 ["format"]
       50 CALL                             R6 2 1
       51 RETURN                           R5 2
       52 LOADB                            R5 1
       53 GETTABLEKS                       R6 R4 K19 ["Body"]
       55 RETURN                           R5 2

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 DUPTABLE                         R3 K1 [{"url"}]
        3 GETTABLEKS                       R4 R0 K0 ["url"]
        5 SETTABLEKS                       R4 R3 K0 ["url"]
        7 CALL                             R1 2 2
        8 JUMPIF                           R1 ; [+22]
        9 GETUPVAL                         R3 1
       10 CALL                             R3 0 1
       11 MOVE                             R5 R2
       12 NAMECALL                         R3 R3 K2 ["addText"]
       14 CALL                             R3 2 1
       15 DUPTABLE                         R5 K1 [{"url"}]
       16 GETTABLEKS                       R6 R0 K0 ["url"]
       18 SETTABLEKS                       R6 R5 K0 ["url"]
       20 NAMECALL                         R3 R3 K3 ["setStructuredContent"]
       22 CALL                             R3 2 1
       23 LOADB                            R5 1
       24 NAMECALL                         R3 R3 K4 ["setError"]
       26 CALL                             R3 2 1
       27 NAMECALL                         R3 R3 K5 ["build"]
       29 CALL                             R3 1 -1
       30 RETURN                           R3 -1
       31 GETUPVAL                         R3 2
       32 GETTABLEKS                       R3 R3 K6 ["effectiveQuery"]
       34 GETTABLEKS                       R4 R0 K7 ["query"]
       36 CALL                             R3 1 1
       37 JUMPIF                           R3 ; [+18]
       38 GETUPVAL                         R4 1
       39 CALL                             R4 0 1
       40 MOVE                             R6 R2
       41 NAMECALL                         R4 R4 K2 ["addText"]
       43 CALL                             R4 2 1
       44 DUPTABLE                         R6 K1 [{"url"}]
       45 GETTABLEKS                       R7 R0 K0 ["url"]
       47 SETTABLEKS                       R7 R6 K0 ["url"]
       49 NAMECALL                         R4 R4 K3 ["setStructuredContent"]
       51 CALL                             R4 2 1
       52 NAMECALL                         R4 R4 K5 ["build"]
       54 CALL                             R4 1 -1
       55 RETURN                           R4 -1
       56 GETTABLEKS                       R5 R0 K9 ["context_lines"]
       58 ORK                              R4 R5 K8 [3]
       59 GETTABLEKS                       R6 R0 K11 ["return_full"]
       61 ORK                              R5 R6 K10 [False]
       62 GETUPVAL                         R6 3
       63 MOVE                             R7 R2
       64 MOVE                             R8 R3
       65 MOVE                             R9 R4
       66 MOVE                             R10 R5
       67 CALL                             R6 4 2
       68 JUMPIF                           R6 ; [+26]
       69 GETUPVAL                         R8 1
       70 CALL                             R8 0 1
       71 GETIMPORT                        R10 K14 [string.format]
       73 LOADK                            R11 K15 ["No matches for '%s' in %s — skip this doc."]
       74 MOVE                             R12 R3
       75 GETTABLEKS                       R13 R0 K0 ["url"]
       77 CALL                             R10 3 -1
       78 NAMECALL                         R8 R8 K2 ["addText"]
       80 CALL                             R8 -1 1
       81 DUPTABLE                         R10 K17 [{[1], ["query"], ["found"] = False}]
       82 GETTABLEKS                       R11 R0 K0 ["url"]
       84 SETTABLEKS                       R11 R10 K0 ["url"]
       86 SETTABLEKS                       R3 R10 K7 ["query"]
       88 NAMECALL                         R8 R8 K3 ["setStructuredContent"]
       90 CALL                             R8 2 1
       91 NAMECALL                         R8 R8 K5 ["build"]
       93 CALL                             R8 1 -1
       94 RETURN                           R8 -1
       95 GETUPVAL                         R8 1
       96 CALL                             R8 0 1
       97 MOVE                             R10 R7
       98 NAMECALL                         R8 R8 K2 ["addText"]
      100 CALL                             R8 2 1
      101 DUPTABLE                         R10 K19 [{[1], ["query"], ["found"] = True}]
      102 GETTABLEKS                       R11 R0 K0 ["url"]
      104 SETTABLEKS                       R11 R10 K0 ["url"]
      106 SETTABLEKS                       R3 R10 K7 ["query"]
      108 NAMECALL                         R8 R8 K3 ["setStructuredContent"]
      110 CALL                             R8 2 1
      111 NAMECALL                         R8 R8 K5 ["build"]
      113 CALL                             R8 1 -1
      114 RETURN                           R8 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 LOADK                            R5 K2 ["HttpGetTool_httpGet"]
        5 NEWCLOSURE                       R6 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R2
        9 NAMECALL                         R3 R1 K3 ["OnHostInvokeAsync"]
       11 CALL                             R3 3 1
       12 NEWCLOSURE                       R4 P1
       13 CAPTURE                          VAL R3
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 GETUPVAL                         R5 5
       18 GETTABLEKS                       R5 R5 K4 ["define"]
       20 CALL                             R5 0 1
       21 GETUPVAL                         R7 6
       22 GETTABLEKS                       R7 R7 K5 ["HttpGet"]
       24 NAMECALL                         R5 R5 K6 ["setName"]
       26 CALL                             R5 2 1
       27 GETUPVAL                         R7 6
       28 GETTABLEKS                       R7 R7 K7 ["replaceTokens"]
       30 LOADK                            R8 K8 ["Fetches the content of a URL via HTTP GET request. Returns the response body as text.\n\nOptionally searches the fetched content for a keyword (query parameter). When a query is provided:\n- Returns only the matching sections with surrounding context lines, saving context window space.\n- Returns a short \"no match\" message if the keyword isn't found.\n- Use context_lines to control how many lines of context around each match (default: 3).\n- Use return_full: true to get the entire document when the keyword matches.\n\nWithout a query, the full response body is returned.\n\nOnly the following URL patterns are allowed:\n{ALLOWED_URLS}\n\nAny URL that does not match one of the above rules will be rejected.\nOnly GET requests are supported. The full URL must be provided.\n\nExamples:\n- {ToolNames.HttpGet}(url: \"{ENGINE_DOCS_URL}/classes/Part.md\")\n- {ToolNames.HttpGet}(url: \"{ENGINE_DOCS_URL}/classes/Part.md\", query: \"Anchored\")\n- {ToolNames.HttpGet}(url: \"{ENGINE_DOCS_URL}/classes/BasePart.md\", query: \"Position\", context_lines: 10)\n- {ToolNames.HttpGet}(url: \"{ENGINE_DOCS_URL}/classes/Part.md\", query: \"Anchored\", return_full: true)\n"]
       31 DUPTABLE                         R9 K11 [{"ALLOWED_URLS", "ENGINE_DOCS_URL"}]
       32 GETUPVAL                         R10 1
       33 CALL                             R10 0 1
       34 SETTABLEKS                       R10 R9 K9 ["ALLOWED_URLS"]
       36 GETUPVAL                         R10 7
       37 SETTABLEKS                       R10 R9 K10 ["ENGINE_DOCS_URL"]
       39 CALL                             R7 2 -1
       40 NAMECALL                         R5 R5 K12 ["setDescription"]
       42 CALL                             R5 -1 1
       43 LOADK                            R7 K13 ["url"]
       44 DUPTABLE                         R8 K18 [{["type"] = "string", ["description"] = "The full URL to fetch. Must match one of the allowed URL patterns."}]
       45 NAMECALL                         R5 R5 K19 ["addArgument"]
       47 CALL                             R5 3 1
       48 LOADK                            R7 K20 ["query"]
       49 DUPTABLE                         R8 K22 [{["type"] = "string", ["description"] = "Optional keyword to search for in the fetched content (case-insensitive literal match). When provided, only matching sections are returned."}]
       50 NAMECALL                         R5 R5 K23 ["addOptionalArgument"]
       52 CALL                             R5 3 1
       53 LOADK                            R7 K24 ["context_lines"]
       54 DUPTABLE                         R8 K27 [{["type"] = "number", ["description"] = "Lines of surrounding context per match. Only meaningful when query is provided. Default: 3."}]
       55 NAMECALL                         R5 R5 K23 ["addOptionalArgument"]
       57 CALL                             R5 3 1
       58 LOADK                            R7 K28 ["return_full"]
       59 DUPTABLE                         R8 K31 [{["type"] = "boolean", ["description"] = "If true and query matches, return the entire document instead of just matched sections. Only meaningful when query is provided. Default: false."}]
       60 NAMECALL                         R5 R5 K23 ["addOptionalArgument"]
       62 CALL                             R5 3 1
       63 DUPTABLE                         R7 K40 [{["title"] = "HTTP GET", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = True}]
       64 NAMECALL                         R5 R5 K41 ["setAnnotations"]
       66 CALL                             R5 2 1
       67 MOVE                             R7 R4
       68 NAMECALL                         R5 R5 K42 ["setHandler"]
       70 CALL                             R5 2 1
       71 NAMECALL                         R5 R5 K43 ["build"]
       73 CALL                             R5 1 1
       74 DUPTABLE                         R6 K45 [{"definition"}]
       75 SETTABLEKS                       R5 R6 K44 ["definition"]
       77 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R3 K8 ["HttpGetQuery"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["ModelContextProtocol"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Tools"]
       30 GETTABLEKS                       R5 R5 K12 ["ToolTypes"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R3 K7 ["Util"]
       35 GETTABLEKS                       R5 R5 K13 ["ToolBuilder"]
       37 GETTABLEKS                       R6 R3 K7 ["Util"]
       39 GETTABLEKS                       R6 R6 K14 ["ToolResult"]
       41 GETTABLEKS                       R7 R4 K15 ["ToolNames"]
       43 GETTABLEKS                       R8 R1 K16 ["ROBLOX_ENGINE_DOCS_BASE_URL"]
       45 GETTABLEKS                       R9 R1 K17 ["ROBLOX_CREATOR_DOCS_BASE_URL"]
       47 DUPCLOSURE                       R10 K18 [PROTO_0]
       48 NEWTABLE                         R11 0 5
       50 DUPTABLE                         R12 K23 [{["base"], ["description"] = "Roblox Engine API docs — URLs must end with .md or be llms.txt", ["validate"]}]
       51 SETTABLEKS                       R8 R12 K19 ["base"]
       53 SETTABLEKS                       R10 R12 K22 ["validate"]
       55 DUPTABLE                         R13 K26 [{["base"] = "https://create.roblox.com/docs/cloud", ["description"] = "Roblox Cloud API docs — URLs must end with .md or be llms.txt", ["validate"]}]
       56 SETTABLEKS                       R10 R13 K22 ["validate"]
       58 DUPTABLE                         R14 K29 [{["base"] = "https://create.roblox.com/docs/performance-optimization", ["description"] = "Roblox Performance Optimization docs — URLs must end with .md or be llms.txt", ["validate"]}]
       59 SETTABLEKS                       R10 R14 K22 ["validate"]
       61 DUPTABLE                         R15 K32 [{["base"] = "https://github.com/Roblox/libmp", ["description"] = "Roblox LibMP repository — URLs must end with .md or be llms.txt", ["validate"]}]
       62 SETTABLEKS                       R10 R15 K22 ["validate"]
       64 DUPTABLE                         R16 K34 [{["base"], ["description"] = "Roblox Creator docs (guides, tutorials, etc.) — URLs must end with .md or be llms.txt", ["validate"]}]
       65 SETTABLEKS                       R9 R16 K19 ["base"]
       67 SETTABLEKS                       R10 R16 K22 ["validate"]
       69 SETLIST                          R11 R12 5 [1]
       71 DUPCLOSURE                       R12 K35 [PROTO_1]
       72 CAPTURE                          VAL R11
       73 DUPCLOSURE                       R13 K36 [PROTO_2]
       74 CAPTURE                          VAL R11
       75 DUPCLOSURE                       R14 K37 [PROTO_3]
       76 DUPCLOSURE                       R15 K38 [PROTO_4]
       77 CAPTURE                          VAL R14
       78 DUPCLOSURE                       R16 K39 [PROTO_7]
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R13
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R15
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R8
       87 RETURN                           R16 1
