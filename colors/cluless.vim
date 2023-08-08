" This colorscheme was built on top of the Nord Theme.

let g:colors_name = "cluless.vim"

hi clear
if exists("syntax_on")
  syntax reset
endif

set background=dark

let s:grid0_gui     = "#090909"
let s:grid1_gui     = "#191919"
let s:grid2_gui     = "#434C5E"
let s:grid3_gui     = "#4C566A"
let s:grid_comment  = "#616E88"
let s:grid4_gui     = "#D8DEE9"
let s:grid5_gui     = "#E5E9F0"
let s:grid6_gui     = "#ECEFF4"
let s:grid7_gui     = "#8FBCBB"
let s:grid8_gui     = "#88C0D0"
let s:grid9_gui     = "#81A1C1"
let s:grid10_gui    = "#5E81AC"
let s:grid11_gui    = "#BF616A"
let s:grid12_gui    = "#D08770"
let s:grid13_gui    = "#EBCB8B"
let s:grid14_gui    = "#A3BE8C"
let s:grid15_gui    = "#B48EAD"

let s:grid1_term = "0"
let s:grid3_term = "8"
let s:grid5_term = "7"
let s:grid6_term = "15"
let s:grid7_term = "14"
let s:grid8_term = "6"
let s:grid9_term = "4"
let s:grid10_term = "12"
let s:grid11_term = "1"
let s:grid12_term = "11"
let s:grid13_term = "3"
let s:grid14_term = "2"
let s:grid15_term = "5"

let s:bold = "bold,"
if !exists("g:grid_italic")
  if has("gui_running") || $TERM_ITALICS == "true"
    let g:grid_italic = 1
  else
    let g:grid_italic = 0
  endif
endif

let s:italic = "italic,"
let s:underline = "underline,"

function! s:hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . substitute(a:attr, "undercurl", s:underline, "")
  endif
  if a:guisp != ""
    exec "hi " . a:group . " guisp=" . a:guisp
  endif
endfunction

call s:hi("Bold", "", "", "", "", s:bold, "")
call s:hi("Italic", "", "", "", "", s:italic, "")
call s:hi("Underline", "", "", "", "", s:underline, "")

call s:hi("ColorColumn", "", s:grid1_gui, "NONE", s:grid1_term, "", "")
call s:hi("Cursor", s:grid0_gui, s:grid4_gui, "", "NONE", "", "")
call s:hi("CursorLine", "", s:grid1_gui, "NONE", s:grid1_term, "NONE", "")
call s:hi("Error", s:grid4_gui, s:grid11_gui, "", s:grid11_term, "", "")
call s:hi("iCursor", s:grid0_gui, s:grid4_gui, "", "NONE", "", "")
call s:hi("LineNr", s:grid3_gui, "NONE", s:grid3_term, "NONE", "", "")
call s:hi("MatchParen", s:grid8_gui, s:grid3_gui, s:grid8_term, s:grid3_term, "", "")
call s:hi("NonText", s:grid2_gui, "", s:grid3_term, "", "", "")
call s:hi("Normal", s:grid4_gui, s:grid0_gui, "NONE", "NONE", "", "")
call s:hi("Pmenu", s:grid4_gui, s:grid2_gui, "NONE", s:grid1_term, "NONE", "")
call s:hi("PmenuSbar", s:grid4_gui, s:grid2_gui, "NONE", s:grid1_term, "", "")
call s:hi("PmenuSel", s:grid8_gui, s:grid3_gui, s:grid8_term, s:grid3_term, "", "")
call s:hi("PmenuThumb", s:grid8_gui, s:grid3_gui, "NONE", s:grid3_term, "", "")
call s:hi("SpecialKey", s:grid3_gui, "", s:grid3_term, "", "", "")
call s:hi("SpellBad", s:grid11_gui, s:grid0_gui, s:grid11_term, "NONE", "undercurl", s:grid11_gui)
call s:hi("SpellCap", s:grid13_gui, s:grid0_gui, s:grid13_term, "NONE", "undercurl", s:grid13_gui)
call s:hi("SpellLocal", s:grid5_gui, s:grid0_gui, s:grid5_term, "NONE", "undercurl", s:grid5_gui)
call s:hi("SpellRare", s:grid6_gui, s:grid0_gui, s:grid6_term, "NONE", "undercurl", s:grid6_gui)
call s:hi("Visual", s:grid6_gui, s:grid10_gui, s:grid6_term, s:grid10_term, s:bold, "")
call s:hi("healthError", s:grid11_gui, s:grid1_gui, s:grid11_term, s:grid1_term, "", "")
call s:hi("healthSuccess", s:grid14_gui, s:grid1_gui, s:grid14_term, s:grid1_term, "", "")
call s:hi("healthWarning", s:grid13_gui, s:grid1_gui, s:grid13_term, s:grid1_term, "", "")
call s:hi("TermCursorNC", "", s:grid1_gui, "", s:grid1_term, "", "")
hi! link VisualNOS Visual

if has("terminal")
  let g:terminal_ansi_colors = [s:grid1_gui, s:grid11_gui, s:grid14_gui, s:grid13_gui, s:grid9_gui, s:grid15_gui, s:grid8_gui, s:grid5_gui, s:grid3_gui, s:grid11_gui, s:grid14_gui, s:grid13_gui, s:grid9_gui, s:grid15_gui, s:grid7_gui, s:grid6_gui]
endif

if has("nvim")
  let g:terminal_color_0 = s:grid1_gui
  let g:terminal_color_1 = s:grid11_gui
  let g:terminal_color_2 = s:grid14_gui
  let g:terminal_color_3 = s:grid13_gui
  let g:terminal_color_4 = s:grid9_gui
  let g:terminal_color_5 = s:grid15_gui
  let g:terminal_color_6 = s:grid8_gui
  let g:terminal_color_7 = s:grid5_gui
  let g:terminal_color_8 = s:grid3_gui
  let g:terminal_color_9 = s:grid11_gui
  let g:terminal_color_10 = s:grid14_gui
  let g:terminal_color_11 = s:grid13_gui
  let g:terminal_color_12 = s:grid9_gui
  let g:terminal_color_13 = s:grid15_gui
  let g:terminal_color_14 = s:grid7_gui
  let g:terminal_color_15 = s:grid6_gui
endif

call s:hi("DiagnosticWarn", s:grid13_gui, "", s:grid13_term, "", "", "")
call s:hi("DiagnosticError" , s:grid11_gui, "", s:grid11_term, "", "", "")
call s:hi("DiagnosticInfo" , s:grid8_gui, "", s:grid8_term, "", "", "")
call s:hi("DiagnosticHint" , s:grid10_gui, "", s:grid10_term, "", "", "")
call s:hi("DiagnosticUnderlineWarn" , s:grid13_gui, "", s:grid13_term, "", "undercurl", "")
call s:hi("DiagnosticUnderlineError" , s:grid11_gui, "", s:grid11_term, "", "undercurl", "")
call s:hi("DiagnosticUnderlineInfo" , s:grid8_gui, "", s:grid8_term, "", "undercurl", "")
call s:hi("DiagnosticUnderlineHint" , s:grid10_gui, "", s:grid10_term, "", "undercurl", "")
call s:hi("LspReferenceText", "", s:grid3_gui, "", s:grid3_term, "", "")
call s:hi("LspReferenceRead", "", s:grid3_gui, "", s:grid3_term, "", "")
call s:hi("LspReferenceWrite", "", s:grid3_gui, "", s:grid3_term, "", "")
call s:hi("LspSignatureActiveParameter", s:grid8_gui, "", s:grid8_term, "", s:underline, "")
call s:hi("CursorColumn", "", s:grid1_gui, "NONE", s:grid1_term, "", "")
call s:hi("CursorLineNr", s:grid4_gui, s:grid1_gui, "NONE", s:grid1_term, "NONE", "")
call s:hi("Folded", s:grid3_gui, s:grid1_gui, s:grid3_term, s:grid1_term, s:bold, "")
call s:hi("FoldColumn", s:grid3_gui, s:grid0_gui, s:grid3_term, "NONE", "", "")
call s:hi("SignColumn", s:grid1_gui, s:grid0_gui, s:grid1_term, "NONE", "", "")
call s:hi("Directory", s:grid8_gui, "", s:grid8_term, "NONE", "", "")
call s:hi("EndOfBuffer", s:grid1_gui, "", s:grid1_term, "NONE", "", "")
call s:hi("ErrorMsg", s:grid4_gui, s:grid11_gui, "NONE", s:grid11_term, "", "")
call s:hi("ModeMsg", s:grid4_gui, "", "", "", "", "")
call s:hi("MoreMsg", s:grid8_gui, "", s:grid8_term, "", "", "")
call s:hi("Question", s:grid4_gui, "", "NONE", "", "", "")
call s:hi("WarningMsg", s:grid0_gui, s:grid13_gui, s:grid1_term, s:grid13_term, "", "")
call s:hi("WildMenu", s:grid8_gui, s:grid1_gui, s:grid8_term, s:grid1_term, "", "")
call s:hi("Search", s:grid11_gui, s:grid1_gui, s:grid1_term, s:grid11_term, s:bold, "")
call s:hi("TabLine", s:grid4_gui, s:grid1_gui, "NONE", s:grid1_term, "NONE", "")
call s:hi("TabLineFill", s:grid4_gui, s:grid1_gui, "NONE", s:grid1_term, "NONE", "")
call s:hi("TabLineSel", s:grid8_gui, s:grid3_gui, s:grid8_term, s:grid3_term, "NONE", "")
call s:hi("Title", s:grid4_gui, "", "NONE", "", "NONE", "")
call s:hi("VertSplit", s:grid2_gui, s:grid0_gui, s:grid3_term, "NONE", "NONE", "")

call s:hi("Boolean", s:grid9_gui, "", s:grid9_term, "", "", "")
call s:hi("Character", s:grid14_gui, "", s:grid14_term, "", "", "")
call s:hi("Comment", s:grid_comment, "", s:grid3_term, "", s:italic, "")
call s:hi("Conceal", "", "NONE", "", "NONE", "", "")
call s:hi("Conditional", s:grid9_gui, "", s:grid9_term, "", "", "")
call s:hi("Constant", s:grid4_gui, "", "NONE", "", "", "")
call s:hi("Decorator", s:grid12_gui, "", s:grid12_term, "", "", "")
call s:hi("Define", s:grid9_gui, "", s:grid9_term, "", s:bold, "")
call s:hi("Delimiter", s:grid6_gui, "", s:grid6_term, "", "", "")
call s:hi("Exception", s:grid9_gui, "", s:grid9_term, "", "", "")
call s:hi("Float", s:grid15_gui, "", s:grid15_term, "", "", "")
call s:hi("Function", s:grid8_gui, "", s:grid8_term, "", "", "")
call s:hi("Keyword", s:grid6_gui, "", s:grid6_term, "", "", "")
call s:hi("Label", s:grid9_gui, "", s:grid9_term, "", "", "")
call s:hi("Number", s:grid15_gui, "", s:grid15_term, "", "", "")
call s:hi("Operator", s:grid9_gui, "", s:grid9_term, "", "NONE", "")
call s:hi("PreProc", s:grid9_gui, "", s:grid9_term, "", "NONE", "")
call s:hi("Repeat", s:grid9_gui, "", s:grid9_term, "", "", "")
call s:hi("Special", s:grid4_gui, "", "NONE", "", "", "")
call s:hi("SpecialChar", s:grid13_gui, "", s:grid13_term, "", "", "")
call s:hi("SpecialComment", s:grid8_gui, "", s:grid8_term, "", s:italic, "")
call s:hi("Statement", s:grid9_gui, "", s:grid9_term, "", "", "")
call s:hi("StorageClass", s:grid9_gui, "", s:grid9_term, "", "", "")
call s:hi("String", s:grid14_gui, "", s:grid14_term, "", "", "")
call s:hi("Structure", s:grid9_gui, "", s:grid9_term, "", "", "")
call s:hi("Tag", s:grid4_gui, "", "", "", "", "")
call s:hi("Todo", s:grid13_gui, "NONE", s:grid13_term, "NONE", "", "")
call s:hi("Type", s:grid9_gui, "", s:grid9_term, "", "NONE", "")
call s:hi("Typedef", s:grid9_gui, "", s:grid9_term, "", "", "")
hi! link Identifier Keyword
hi! link Include Keyword
hi! link IncSearch Search
hi! link Annotation Decorator
hi! link Macro Define
hi! link PreCondit PreProc
hi! link Variable Identifier

call s:hi("asciidocAttributeEntry", s:grid10_gui, "", s:grid10_term, "", "", "")
call s:hi("asciidocAttributeList", s:grid10_gui, "", s:grid10_term, "", "", "")
call s:hi("asciidocAttributeRef", s:grid10_gui, "", s:grid10_term, "", "", "")
call s:hi("asciidocHLabel", s:grid9_gui, "", s:grid9_term, "", "", "")
call s:hi("asciidocListingBlock", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("asciidocMacroAttributes", s:grid8_gui, "", s:grid8_term, "", "", "")
call s:hi("asciidocOneLineTitle", s:grid8_gui, "", s:grid8_term, "", "", "")
call s:hi("asciidocPassthroughBlock", s:grid9_gui, "", s:grid9_term, "", "", "")
call s:hi("asciidocQuotedMonospaced", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("asciidocTriplePlusPassthrough", s:grid7_gui, "", s:grid7_term, "", "", "")
hi! link asciidocAdmonition Keyword
hi! link asciidocAttributeRef markdownH1
hi! link asciidocBackslash Keyword
hi! link asciidocMacro Keyword
hi! link asciidocQuotedBold Bold
hi! link asciidocQuotedEmphasized Italic
hi! link asciidocQuotedMonospaced2 asciidocQuotedMonospaced
hi! link asciidocQuotedUnconstrainedBold asciidocQuotedBold
hi! link asciidocQuotedUnconstrainedEmphasized asciidocQuotedEmphasized
hi! link asciidocURL markdownLinkText

call s:hi("awkCharClass", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("awkPatterns", s:grid9_gui, "", s:grid9_term, "", s:bold, "")
hi! link awkArrayElement Identifier
hi! link awkBoolLogic Keyword
hi! link awkBrktRegExp SpecialChar
hi! link awkComma Delimiter
hi! link awkExpression Keyword
hi! link awkFieldVars Identifier
hi! link awkLineSkip Keyword
hi! link awkOperator Operator
hi! link awkRegExp SpecialChar
hi! link awkSearch Keyword
hi! link awkSemicolon Delimiter
hi! link awkSpecialCharacter SpecialChar
hi! link awkSpecialPrintf SpecialChar
hi! link awkVariables Identifier

call s:hi("cIncluded", s:grid7_gui, "", s:grid7_term, "", "", "")
hi! link cOperator Operator
hi! link cPreCondit PreCondit
hi! link cConstant Type

call s:hi("cmakeGeneratorExpression", s:grid10_gui, "", s:grid10_term, "", "", "")

hi! link csPreCondit PreCondit
hi! link csType Type
hi! link csXmlTag SpecialComment

call s:hi("cssAttributeSelector", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("cssDefinition", s:grid7_gui, "", s:grid7_term, "", "NONE", "")
call s:hi("cssIdentifier", s:grid7_gui, "", s:grid7_term, "", s:underline, "")
call s:hi("cssStringQ", s:grid7_gui, "", s:grid7_term, "", "", "")
hi! link cssAttr Keyword
hi! link cssBraces Delimiter
hi! link cssClassName cssDefinition
hi! link cssColor Number
hi! link cssProp cssDefinition
hi! link cssPseudoClass cssDefinition
hi! link cssPseudoClassId cssPseudoClass
hi! link cssVendor Keyword

call s:hi("dosiniHeader", s:grid8_gui, "", s:grid8_term, "", "", "")
hi! link dosiniLabel Type

call s:hi("dtBooleanKey", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("dtExecKey", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("dtLocaleKey", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("dtNumericKey", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("dtTypeKey", s:grid7_gui, "", s:grid7_term, "", "", "")
hi! link dtDelim Delimiter
hi! link dtLocaleValue Keyword
hi! link dtTypeValue Keyword

call s:hi("DiffAdd", s:grid14_gui, s:grid0_gui, s:grid14_term, "NONE", "inverse", "")
call s:hi("DiffChange", s:grid13_gui, s:grid0_gui, s:grid13_term, "NONE", "inverse", "")
call s:hi("DiffDelete", s:grid11_gui, s:grid0_gui, s:grid11_term, "NONE", "inverse", "")
call s:hi("DiffText", s:grid9_gui, s:grid0_gui, s:grid9_term, "NONE", "inverse", "")
" Legacy groups for official git.vim and diff.vim syntax
hi! link diffAdded DiffAdd
hi! link diffChanged DiffChange
hi! link diffRemoved DiffDelete

call s:hi("gitconfigVariable", s:grid7_gui, "", s:grid7_term, "", "", "")

call s:hi("goBuiltins", s:grid7_gui, "", s:grid7_term, "", "", "")
hi! link goConstants Keyword

call s:hi("helpBar", s:grid3_gui, "", s:grid3_term, "", "", "")
call s:hi("helpHyperTextJump", s:grid8_gui, "", s:grid8_term, "", s:underline, "")

call s:hi("htmlArg", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("htmlLink", s:grid4_gui, "", "", "", "NONE", "NONE")
hi! link htmlBold Bold
hi! link htmlEndTag htmlTag
hi! link htmlItalic Italic
hi! link htmlH1 markdownH1
hi! link htmlH2 markdownH1
hi! link htmlH3 markdownH1
hi! link htmlH4 markdownH1
hi! link htmlH5 markdownH1
hi! link htmlH6 markdownH1
hi! link htmlSpecialChar SpecialChar
hi! link htmlTag Keyword
hi! link htmlTagN htmlTag

call s:hi("javaDocTags", s:grid7_gui, "", s:grid7_term, "", "", "")
hi! link javaCommentTitle Comment
hi! link javaScriptBraces Delimiter
hi! link javaScriptIdentifier Keyword
hi! link javaScriptNumber Number

call s:hi("jsonKeyword", s:grid7_gui, "", s:grid7_term, "", "", "")

hi! link lispAtomBarSymbol SpecialChar
hi! link lispAtomList SpecialChar
hi! link lispAtomMark Keyword
hi! link lispBarSymbol SpecialChar
hi! link lispFunc Function

hi! link luaFunc Function

call s:hi("markdownBlockquote", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("markdownCode", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("markdownCodeDelimiter", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("markdownFootnote", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("markdownId", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("markdownIdDeclaration", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("markdownH1", s:grid8_gui, "", s:grid8_term, "", "", "")
call s:hi("markdownLinkText", s:grid8_gui, "", s:grid8_term, "", "", "")
call s:hi("markdownUrl", s:grid4_gui, "", "NONE", "", "NONE", "")
hi! link markdownBold Bold
hi! link markdownBoldDelimiter Keyword
hi! link markdownFootnoteDefinition markdownFootnote
hi! link markdownH2 markdownH1
hi! link markdownH3 markdownH1
hi! link markdownH4 markdownH1
hi! link markdownH5 markdownH1
hi! link markdownH6 markdownH1
hi! link markdownIdDelimiter Keyword
hi! link markdownItalic Italic
hi! link markdownItalicDelimiter Keyword
hi! link markdownLinkDelimiter Keyword
hi! link markdownLinkTextDelimiter Keyword
hi! link markdownListMarker Keyword
hi! link markdownRule Keyword
hi! link markdownHeadingDelimiter Keyword

call s:hi("perlPackageDecl", s:grid7_gui, "", s:grid7_term, "", "", "")

call s:hi("phpClasses", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("phpDocTags", s:grid7_gui, "", s:grid7_term, "", "", "")
hi! link phpDocCustomTags phpDocTags
hi! link phpMemberSelector Keyword

call s:hi("podCmdText", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("podVerbatimLine", s:grid4_gui, "", "NONE", "", "", "")
hi! link podFormat Keyword

hi! link pythonBuiltin Type
hi! link pythonEscape SpecialChar

call s:hi("rubyConstant", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("rubySymbol", s:grid6_gui, "", s:grid6_term, "", s:bold, "")
hi! link rubyAttribute Identifier
hi! link rubyBlockParameterList Operator
hi! link rubyInterpolationDelimiter Keyword
hi! link rubyKeywordAsMethod Function
hi! link rubyLocalVariableOrMethod Function
hi! link rubyPseudoVariable Keyword
hi! link rubyRegexp SpecialChar

call s:hi("rustAttribute", s:grid10_gui, "", s:grid10_term, "", "", "")
call s:hi("rustEnum", s:grid7_gui, "", s:grid7_term, "", s:bold, "")
call s:hi("rustMacro", s:grid8_gui, "", s:grid8_term, "", s:bold, "")
call s:hi("rustModPath", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("rustPanic", s:grid9_gui, "", s:grid9_term, "", s:bold, "")
call s:hi("rustTrait", s:grid7_gui, "", s:grid7_term, "", s:italic, "")
hi! link rustCommentLineDoc Comment
hi! link rustDerive rustAttribute
hi! link rustEnumVariant rustEnum
hi! link rustEscape SpecialChar
hi! link rustQuestionMark Keyword

call s:hi("sassClass", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("sassId", s:grid7_gui, "", s:grid7_term, "", s:underline, "")
hi! link sassAmpersand Keyword
hi! link sassClassChar Delimiter
hi! link sassControl Keyword
hi! link sassControlLine Keyword
hi! link sassExtend Keyword
hi! link sassFor Keyword
hi! link sassFunctionDecl Keyword
hi! link sassFunctionName Function
hi! link sassidChar sassId
hi! link sassInclude SpecialChar
hi! link sassMixinName Function
hi! link sassMixing SpecialChar
hi! link sassReturn Keyword

hi! link shCmdParenRegion Delimiter
hi! link shCmdSubRegion Delimiter
hi! link shDerefSimple Identifier
hi! link shDerefVar Identifier

hi! link sqlKeyword Keyword
hi! link sqlSpecial Keyword

call s:hi("vimAugroup", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("vimMapRhs", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("vimNotation", s:grid7_gui, "", s:grid7_term, "", "", "")
hi! link vimFunc Function
hi! link vimFunction Function
hi! link vimUserFunc Function

call s:hi("xmlAttrib", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("xmlCdataStart", s:grid_comment, "", s:grid3_term, "", s:bold, "")
call s:hi("xmlNamespace", s:grid7_gui, "", s:grid7_term, "", "", "")
hi! link xmlAttribPunct Delimiter
hi! link xmlCdata Comment
hi! link xmlCdataCdata xmlCdataStart
hi! link xmlCdataEnd xmlCdataStart
hi! link xmlEndTag xmlTagName
hi! link xmlProcessingDelim Keyword
hi! link xmlTagName Keyword

call s:hi("yamlBlockMappingKey", s:grid7_gui, "", s:grid7_term, "", "", "")
hi! link yamlBool Keyword
hi! link yamlDocumentStart Keyword


" Neovim LSP
" > neovim/nvim-lspconfig
call s:hi("LspCodeLens", s:grid_comment, "", s:grid3_term, "", "", "")
if has("nvim-0.5")
  call s:hi("LspDiagnosticsDefaultWarning", s:grid13_gui, "", s:grid13_term, "", "", "")
  call s:hi("LspDiagnosticsDefaultError" , s:grid11_gui, "", s:grid11_term, "", "", "")
  call s:hi("LspDiagnosticsDefaultInformation" , s:grid8_gui, "", s:grid8_term, "", "", "")
  call s:hi("LspDiagnosticsDefaultHint" , s:grid10_gui, "", s:grid10_term, "", "", "")
  call s:hi("LspDiagnosticsUnderlineWarning" , s:grid13_gui, "", s:grid13_term, "", "undercurl", "")
  call s:hi("LspDiagnosticsUnderlineError" , s:grid11_gui, "", s:grid11_term, "", "undercurl", "")
  call s:hi("LspDiagnosticsUnderlineInformation" , s:grid8_gui, "", s:grid8_term, "", "undercurl", "")
  call s:hi("LspDiagnosticsUnderlineHint" , s:grid10_gui, "", s:grid10_term, "", "undercurl", "")
endif

" GitGutter
" > airblade/vim-gitgutter
call s:hi("GitGutterAdd", s:grid14_gui, "", s:grid14_term, "", "", "")
call s:hi("GitGutterChange", s:grid13_gui, "", s:grid13_term, "", "", "")
call s:hi("GitGutterChangeDelete", s:grid11_gui, "", s:grid11_term, "", "", "")
call s:hi("GitGutterDelete", s:grid11_gui, "", s:grid11_term, "", "", "")

" NERDTree
" > scrooloose/nerdtree
call s:hi("NERDTreeExecFile", s:grid7_gui, "", s:grid7_term, "", "", "")
hi! link NERDTreeDirSlash Keyword
hi! link NERDTreeHelp Comment

" vim-indent-guides
" > nathanaelkane/vim-indent-guides
call s:hi("IndentGuidesEven", "", s:grid1_gui, "", s:grid1_term, "", "")
call s:hi("IndentGuidesOdd", "", s:grid2_gui, "", s:grid3_term, "", "")

" Haskell
" > neovimhaskell/haskell-vim
call s:hi("haskellPreProc", s:grid10_gui, "", s:grid10_term, "", "", "")
call s:hi("haskellType", s:grid7_gui, "", s:grid7_term, "", "", "")
hi! link haskellPragma haskellPreProc

" JavaScript
" > pangloss/vim-javascript
call s:hi("jsGlobalNodeObjects", s:grid8_gui, "", s:grid8_term, "", s:italic, "")
hi! link jsBrackets Delimiter
hi! link jsFuncCall Function
hi! link jsFuncParens Delimiter
hi! link jsThis Keyword
hi! link jsNoise Delimiter
hi! link jsPrototype Keyword
hi! link jsRegexpString SpecialChar

" Pandoc
" > vim-pandoc/vim-pandoc-syntax
call s:hi("pandocDefinitionBlockTerm", s:grid7_gui, "", s:grid7_term, "", s:italic, "")
call s:hi("pandocTableDelims", s:grid3_gui, "", s:grid3_term, "", "", "")
hi! link pandocAtxHeader markdownH1
hi! link pandocBlockQuote markdownBlockquote
hi! link pandocCiteAnchor Operator
hi! link pandocCiteKey pandocReferenceLabel
hi! link pandocDefinitionBlockMark Operator
hi! link pandocEmphasis markdownItalic
hi! link pandocFootnoteID pandocReferenceLabel
hi! link pandocFootnoteIDHead markdownLinkDelimiter
hi! link pandocFootnoteIDTail pandocFootnoteIDHead
hi! link pandocGridTableDelims pandocTableDelims
hi! link pandocGridTableHeader pandocTableDelims
hi! link pandocOperator Operator
hi! link pandocPipeTableDelims pandocTableDelims
hi! link pandocReferenceDefinition pandocReferenceLabel
hi! link pandocReferenceLabel markdownLinkText
hi! link pandocReferenceURL markdownUrl
hi! link pandocSimpleTableHeader pandocAtxHeader
hi! link pandocStrong markdownBold
hi! link pandocTableHeaderWord pandocAtxHeader
hi! link pandocUListItemBullet Operator

" tree-sitter
" > nvim-treesitter/nvim-treesitter
if has("nvim")
  hi! link TSAnnotation Annotation
  hi! link TSConstBuiltin Constant
  hi! link TSConstructor Function
  hi! link TSEmphasis Italic
  hi! link TSFuncBuiltin Function
  hi! link TSFuncMacro Function
  hi! link TSStringRegex SpecialChar
  hi! link TSStrong Bold
  hi! link TSStructure Structure
  hi! link TSTagDelimiter TSTag
  hi! link TSUnderline Underline
  hi! link TSVariable Variable
  hi! link TSVariableBuiltin Keyword
endif

" TypeScript
" > HerringtonDarkholme/yats.vim
call s:hi("typescriptBOMWindowMethod", s:grid8_gui, "", s:grid8_term, "", s:italic, "")
call s:hi("typescriptClassName", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("typescriptDecorator", s:grid12_gui, "", s:grid12_term, "", "", "")
call s:hi("typescriptInterfaceName", s:grid7_gui, "", s:grid7_term, "", s:bold, "")
call s:hi("typescriptRegexpString", s:grid13_gui, "", s:grid13_term, "", "", "")
" TypeScript JSX
 call s:hi("tsxAttrib", s:grid7_gui, "", s:grid7_term, "", "", "")
hi! link typescriptOperator Operator
hi! link typescriptBinaryOp Operator
hi! link typescriptAssign Operator
hi! link typescriptMember Identifier
hi! link typescriptDOMStorageMethod Identifier
hi! link typescriptArrowFuncArg Identifier
hi! link typescriptGlobal typescriptClassName
hi! link typescriptBOMWindowProp Function
hi! link typescriptArrowFuncDef Function
hi! link typescriptAliasDeclaration Function
hi! link typescriptPredefinedType Type
hi! link typescriptTypeReference typescriptClassName
hi! link typescriptTypeAnnotation Structure
hi! link typescriptDocNamedParamType SpecialComment
hi! link typescriptDocNotation Keyword
hi! link typescriptDocTags Keyword
hi! link typescriptImport Keyword
hi! link typescriptExport Keyword
hi! link typescriptTry Keyword
hi! link typescriptVariable Keyword
hi! link typescriptBraces Normal
hi! link typescriptObjectLabel Normal
hi! link typescriptCall Normal
hi! link typescriptClassHeritage typescriptClassName
hi! link typescriptFuncTypeArrow Structure
hi! link typescriptMemberOptionality Structure
hi! link typescriptNodeGlobal typescriptGlobal
hi! link typescriptTypeBrackets Structure
hi! link tsxEqual Operator
hi! link tsxIntrinsicTagName htmlTag
hi! link tsxTagName tsxIntrinsicTagName

" Markdown
" > plasticboy/vim-markdown
call s:hi("mkdCode", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("mkdFootnote", s:grid8_gui, "", s:grid8_term, "", "", "")
call s:hi("mkdRule", s:grid10_gui, "", s:grid10_term, "", "", "")
call s:hi("mkdLineBreak", s:grid9_gui, "", s:grid9_term, "", "", "")
hi! link mkdBold Bold
hi! link mkdItalic Italic
hi! link mkdString Keyword
hi! link mkdCodeStart mkdCode
hi! link mkdCodeEnd mkdCode
hi! link mkdBlockquote Comment
hi! link mkdListItem Keyword
hi! link mkdListItemLine Normal
hi! link mkdFootnotes mkdFootnote
hi! link mkdLink markdownLinkText
hi! link mkdURL markdownUrl
hi! link mkdInlineURL mkdURL
hi! link mkdID Identifier
hi! link mkdLinkDef mkdLink
hi! link mkdLinkDefTarget mkdURL
hi! link mkdLinkTitle mkdInlineURL
hi! link mkdDelimiter Keyword

" PHP
" > StanAngeloff/php.vim
call s:hi("phpClass", s:grid7_gui, "", s:grid7_term, "", "", "")
call s:hi("phpClassImplements", s:grid7_gui, "", s:grid7_term, "", s:bold, "")
hi! link phpClassExtends phpClass
hi! link phpFunction Function
hi! link phpMethod Function
hi! link phpUseClass phpClass

" YAML
" > stephpy/vim-yaml
call s:hi("yamlKey", s:grid7_gui, "", s:grid7_term, "", "", "")
