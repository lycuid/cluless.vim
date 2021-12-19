" This colorscheme is a long time of tweaks and updates on my previous
" colorscheme of choice 'https://github.com/sainnhe/edge'.

let g:colors_name = 'old_school'

function! s:highlight(name, fg, bg, ...)
  let hl = [
    \ 'highlight' , a:name,
    \ 'guifg='    , a:fg[0],
    \ 'guibg='    , a:bg[0],
    \ 'ctermfg='  , a:fg[1],
    \ 'ctermbg='  , a:bg[1],
    \ 'gui='      , (a:0 >= 1 ? a:1 : 'none'),
    \ 'cterm='    , (a:0 >= 1 ? a:1 : 'none')
    \ ]
  execute join(hl, ' ')
endfunction

let s:palette = {
  \ 'darkgrey':   ['#101010', '233'],
  \ 'comment':    ['#353535', '240'],
  \ 'grey1':      ['#7f8490', '248'],
  \ 'grey2':      ['#828a98', '248'],
  \ 'black1':     ['#090909', '0'],
  \ 'black2':     ['#252525', '8'],
  \ 'red1':       ['#ff4d4d', '1'],
  \ 'red2':       ['#ec7279', '9'],
  \ 'green1':     ['#1dd1a1', '2'],
  \ 'green2':     ['#1e824c', '10'],
  \ 'yellow1':    ['#e9d460', '3'],
  \ 'yellow2':    ['#f7ca18', '11'],
  \ 'blue1':      ['#22709f', '4'],
  \ 'blue2':      ['#6f93af', '12'],
  \ 'magenta1':   ['#736598', '5'],
  \ 'magenta2':   ['#d38aea', '13'],
  \ 'cyan1':      ['#6cb6eb', '6'],
  \ 'cyan2':      ['#8abeb7', '14'],
  \ 'white1':     ['#a8a8a8', '7'],
  \ 'white2':     ['#efefef', '15'],
  \ 'none':       ['NONE', 'NONE']
  \ }

call s:highlight('Normal', s:palette.white1, s:palette.black1)
call s:highlight('Terminal', s:palette.white1, s:palette.black1)
call s:highlight('EndOfBuffer', s:palette.white1, s:palette.black1)
call s:highlight('FoldColumn', s:palette.grey1, s:palette.black1)
call s:highlight('Folded', s:palette.grey1, s:palette.black1)
call s:highlight('SignColumn', s:palette.white1, s:palette.black1)
call s:highlight('ToolbarLine', s:palette.white1, s:palette.black1)
call s:highlight('ColorColumn', s:palette.none, s:palette.darkgrey)
call s:highlight('Conceal', s:palette.grey1, s:palette.none)
call s:highlight('Cursor', s:palette.black1, s:palette.white1)
highlight! link vCursor Cursor
highlight! link iCursor Cursor
highlight! link lCursor Cursor
highlight! link CursorIM Cursor
call s:highlight('CursorColumn', s:palette.none, s:palette.darkgrey)
call s:highlight('CursorLine', s:palette.none, s:palette.darkgrey)
call s:highlight('LineNr', s:palette.black2, s:palette.none)
call s:highlight('CursorLineNr', s:palette.white1, s:palette.darkgrey)
call s:highlight('DiffAdd', s:palette.none, s:palette.green1)
call s:highlight('DiffChange', s:palette.none, s:palette.blue1)
call s:highlight('DiffDelete', s:palette.none, s:palette.red2)
call s:highlight('DiffText', s:palette.none, s:palette.none, 'reverse')
call s:highlight('Directory', s:palette.blue1, s:palette.none)
call s:highlight('ErrorMsg', s:palette.white2, s:palette.none, 'bold,underline')
call s:highlight('WarningMsg', s:palette.yellow1, s:palette.none, 'bold')
call s:highlight('ModeMsg', s:palette.white1, s:palette.none, 'bold')
call s:highlight('MoreMsg', s:palette.green1, s:palette.none, 'bold')
call s:highlight('IncSearch', s:palette.red2, s:palette.black2, 'bold,underline')
call s:highlight('Search', s:palette.red2, s:palette.black2, 'bold,underline')
call s:highlight('MatchParen', s:palette.white2, s:palette.red1, 'bold')
call s:highlight('NonText', s:palette.black2, s:palette.none)
call s:highlight('Whitespace', s:palette.black1, s:palette.none)
call s:highlight('SpecialKey', s:palette.white1, s:palette.black1)
call s:highlight('Pmenu', s:palette.black1, s:palette.grey1)
call s:highlight('PmenuSbar', s:palette.none, s:palette.black1)
call s:highlight('PmenuSel', s:palette.black1, s:palette.blue1)
call s:highlight('WildMenu', s:palette.black1, s:palette.blue1)
call s:highlight('PmenuThumb', s:palette.none, s:palette.grey2)
call s:highlight('Question', s:palette.yellow1, s:palette.none)
call s:highlight('SpellBad', s:palette.white2, s:palette.none, 'undercurl', s:palette.white2)
call s:highlight('SpellCap', s:palette.yellow1, s:palette.none, 'undercurl', s:palette.yellow1)
call s:highlight('SpellLocal', s:palette.green1, s:palette.none, 'undercurl', s:palette.green1)
call s:highlight('SpellRare', s:palette.magenta1, s:palette.none, 'undercurl', s:palette.magenta1)
call s:highlight('StatusLine', s:palette.black1, s:palette.white1, 'bold')
call s:highlight('StatusLineTerm', s:palette.black1, s:palette.white1, 'bold')
call s:highlight('StatusLineNC', s:palette.white1, s:palette.darkgrey)
call s:highlight('StatusLineTermNC', s:palette.white1, s:palette.darkgrey)
call s:highlight('TabLine', s:palette.white1, s:palette.black1)
call s:highlight('TabLineFill', s:palette.grey1, s:palette.black1)
call s:highlight('TabLineSel', s:palette.black1, s:palette.magenta2)
call s:highlight('VertSplit', s:palette.white1, s:palette.none)
call s:highlight('Visual', s:palette.none, s:palette.black2,)
call s:highlight('VisualNOS', s:palette.none, s:palette.black1, 'italic')
call s:highlight('QuickFixLine', s:palette.magenta1, s:palette.none, 'bold')
call s:highlight('Debug', s:palette.yellow1, s:palette.none)
call s:highlight('debugPC', s:palette.black1, s:palette.blue1)
call s:highlight('debugBreakpoint', s:palette.black1, s:palette.yellow1)
call s:highlight('ToolbarButton', s:palette.black1, s:palette.blue1)
if has('nvim')
  highlight! link healthError Red
  highlight! link healthSuccess Blue1
  highlight! link healthWarning Yellow
  highlight! link LspDiagnosticsError Grey
  highlight! link LspDiagnosticsWarning Grey
  highlight! link LspDiagnosticsInformation Grey
  highlight! link LspDiagnosticsHint Grey
  highlight! link LspReferenceText CocHighlightText
  highlight! link LspReferenceRead CocHighlightText
  highlight! link LspReferenceWrite CocHighlightText
endif

" Syntax
call s:highlight('PreProc', s:palette.white2, s:palette.none)
call s:highlight('PreCondit', s:palette.magenta1, s:palette.none)
call s:highlight('Include', s:palette.green1, s:palette.none)
call s:highlight('Define', s:palette.white2, s:palette.none)
call s:highlight('Conditional', s:palette.magenta1, s:palette.none)
call s:highlight('Repeat', s:palette.magenta1, s:palette.none)
call s:highlight('Keyword', s:palette.white2, s:palette.none)
call s:highlight('Typedef', s:palette.white2, s:palette.none)
call s:highlight('Statement', s:palette.white2, s:palette.none)
call s:highlight('Exception', s:palette.white2, s:palette.none)
call s:highlight('Macro', s:palette.white2, s:palette.none)
call s:highlight('Error', s:palette.white2, s:palette.none)
call s:highlight('Label', s:palette.white2, s:palette.none)
call s:highlight('Special', s:palette.yellow1, s:palette.none)
call s:highlight('SpecialChar', s:palette.yellow1, s:palette.none)
call s:highlight('Type', s:palette.yellow1, s:palette.none)
call s:highlight('Structure', s:palette.yellow1, s:palette.none)
call s:highlight('Boolean', s:palette.blue1, s:palette.none)
call s:highlight('String', s:palette.green2, s:palette.none)
call s:highlight('Character', s:palette.blue1, s:palette.none)
call s:highlight('Number', s:palette.blue1, s:palette.none)
call s:highlight('Float', s:palette.blue1, s:palette.none)
call s:highlight('Identifier', s:palette.white1, s:palette.none)
call s:highlight('Constant', s:palette.yellow1, s:palette.none)
call s:highlight('Function', s:palette.magenta1, s:palette.none)
call s:highlight('Operator', s:palette.green1, s:palette.none)
call s:highlight('Title', s:palette.magenta1, s:palette.none, 'bold')
call s:highlight('StorageClass', s:palette.green1, s:palette.none)
call s:highlight('Tag', s:palette.magenta1, s:palette.none)
call s:highlight('Delimiter', s:palette.green1, s:palette.none)
call s:highlight('Comment', s:palette.comment, s:palette.none)
call s:highlight('SpecialComment', s:palette.comment, s:palette.none)
call s:highlight('Todo', s:palette.magenta1, s:palette.none, 'italic')
call s:highlight('Ignore', s:palette.grey1, s:palette.none)
call s:highlight('Underlined', s:palette.none, s:palette.none, 'underline')

" Predefined Highlight Groups
call s:highlight('Fg', s:palette.white1, s:palette.none)
call s:highlight('Grey', s:palette.grey1, s:palette.none)
call s:highlight('Yellow', s:palette.yellow1, s:palette.none, 'bold')
call s:highlight('Green1', s:palette.green1, s:palette.none)
call s:highlight('Green2', s:palette.green2, s:palette.none)
call s:highlight('White1', s:palette.white2, s:palette.none)
call s:highlight('Red1', s:palette.red1, s:palette.none)
call s:highlight('Blue1', s:palette.blue1, s:palette.none)
call s:highlight('Blue2', s:palette.blue2, s:palette.none)
call s:highlight('Magenta1', s:palette.magenta1, s:palette.none)

" Extended File Types
" markdown
call s:highlight('markdownH1', s:palette.magenta1, s:palette.none, 'bold')
call s:highlight('markdownH2', s:palette.white2, s:palette.none, 'bold')
call s:highlight('markdownH3', s:palette.yellow1, s:palette.none, 'bold')
call s:highlight('markdownH4', s:palette.green2, s:palette.none, 'bold')
call s:highlight('markdownH5', s:palette.green1, s:palette.none, 'bold')
call s:highlight('markdownH6', s:palette.blue1, s:palette.none, 'bold')
call s:highlight('markdownUrl', s:palette.green1, s:palette.none, 'underline')
call s:highlight('markdownItalicDelimiter', s:palette.grey1, s:palette.none, 'italic')
call s:highlight('markdownBold', s:palette.none, s:palette.none, 'bold')
call s:highlight('markdownItalic', s:palette.none, s:palette.none, 'italic')
call s:highlight('mkdURL', s:palette.green2, s:palette.none, 'underline')
call s:highlight('mkdItalic', s:palette.grey1, s:palette.none, 'italic')
highlight! link markdownLinkText Green2
highlight! link markdownHeadingDelimiter Grey
highlight! link markdownIdDeclaration Green1
highlight! link markdownId Green1
highlight! link markdownListMarker Green1
highlight! link markdownCodeDelimiter Green1
highlight! link markdownCode Blue1
highlight! link markdownBoldDelimiter Grey
highlight! link markdownRule Purple
highlight! link mkdLink Green2
highlight! link mkdHeading Grey
highlight! link mkdLinkDef Green1
highlight! link mkdID Green1
highlight! link mkdListItem Green1
highlight! link mkdCodeDelimiter Green1
highlight! link mkdCode Blue1
highlight! link mkdBold Grey
highlight! link mkdRule Purple

" html
call s:highlight('htmlH1', s:palette.magenta1, s:palette.none, 'bold')
call s:highlight('htmlH2', s:palette.white2, s:palette.none, 'bold')
call s:highlight('htmlH3', s:palette.yellow1, s:palette.none, 'bold')
call s:highlight('htmlH4', s:palette.green1, s:palette.none, 'bold')
call s:highlight('htmlH5', s:palette.green1, s:palette.none, 'bold')
call s:highlight('htmlH6', s:palette.blue1, s:palette.none, 'bold')
call s:highlight('htmlLink', s:palette.none, s:palette.none, 'underline')
call s:highlight('htmlBold', s:palette.none, s:palette.none, 'bold')
call s:highlight('htmlBoldUnderline', s:palette.none, s:palette.none, 'bold,underline')
call s:highlight('htmlBoldItalic', s:palette.none, s:palette.none, 'bold,italic')
call s:highlight('htmlBoldUnderlineItalic', s:palette.none, s:palette.none, 'bold,underline,italic')
call s:highlight('htmlUnderline', s:palette.none, s:palette.none, 'underline')
call s:highlight('htmlUnderlineItalic', s:palette.none, s:palette.none, 'underline,italic')
call s:highlight('htmlItalic', s:palette.none, s:palette.none, 'italic')

highlight! link htmlTag Purple
highlight! link htmlTagN Magenta1
highlight! link htmlTagName Magenta1
highlight! link htmlSpecialTagName White1
highlight! link htmlArg Green2
highlight! link htmlEndTag Green2

" xml
highlight! link xmlTag Purple
highlight! link xmlTagName Magenta1
highlight! link xmlAttrib Green2

" css
highlight! link cssFunctionName Yellow
highlight! link cssClassName Magenta1
highlight! link cssClassNameDot Purple
highlight! link cssAttrComma Fg
highlight! link cssTagName Magenta1
highlight! link cssBraces Fg
highlight! link cssSelectorOp Fg
highlight! link cssVendor Grey
highlight! link cssSelectorOp2 Green2
highlight! link cssImportant White1

" js
highlight! link jsGlobalNodeObjects White1
highlight! link jsGlobalObjects Yellow
highlight! link jsFunction Green2
highlight! link jsOperatorKeyword White1
highlight! link jsThis Green1
highlight! link jsParensError Red
highlight! link jsArrowFunction Green2
highlight! link jsTaggedTemplate Green1
highlight! link javaScriptReserved Magenta1
highlight! link javaScriptBraces Fg
highlight! link javaScriptOperator White1
highlight! link javaScriptNull Yellow
highlight! link javaScriptMessage Green1
highlight! link javaScriptGlobal Green2

" ts
highlight! link typescriptLabel Magenta1
highlight! link typescriptExceptions White1
highlight! link typescriptBraces Fg
highlight! link typescriptEndColons Fg
highlight! link typescriptParens Fg
highlight! link typescriptDocTags Purple
highlight! link typescriptLogicSymbols Green2
highlight! link typescriptImport Magenta1
highlight! link typescriptBOM Green2
highlight! link typescriptVariableDeclaration Fg
highlight! link typescriptVariable White1
highlight! link typescriptExport Magenta1
highlight! link typescriptAliasDeclaration Yellow
highlight! link typescriptClassName Green2
highlight! link typescriptAccessibilityModifier Magenta1
highlight! link typescriptOperator White1
highlight! link typescriptEnumKeyword White1
highlight! link typescriptArrowFunc Green2
highlight! link typescriptMethodAccessor White1
highlight! link typescriptMember Green2
highlight! link typescriptTypeReference Green1
highlight! link typescriptDefault Yellow
highlight! link typescriptTemplateSB Green1
highlight! link typescriptArrowFuncArg Fg
highlight! link typescriptParamImpl Blue1
highlight! link typescriptFuncComma Fg
highlight! link jsxOpenPunct Green2
highlight! link typescriptCastKeyword White1
highlight! link typescriptCall Green2
highlight! link typescriptCase White1

" python
highlight! link pythonNone Yellow
highlight! link pythonExClass Magenta1
highlight! link pythonDecorator White1
highlight! link pythonDottedName White1

" go
highlight! link goPackage Blue1
highlight! link goImport Blue1
highlight! link goDeclType Green1
highlight! link goBuiltins Green1

" rust
highlight! link rustModPath Purple
highlight! link rustAttribute Magenta1
highlight! link rustPubScopeCrate Blue1
highlight! link rustStructure Magenta1
highlight! link rustSigil Green2
highlight! link rustSelf Green1
highlight! link rustEnumVariant Green2
highlight! link rustDerive Purple
highlight! link rustDeriveTrait White1

" php
highlight! link phpUseClass Green2
highlight! link phpClass Magenta1
highlight! link phpClassExtends Green2
highlight! link phpParent Fg
highlight! link phpFunction Green2
highlight! link phpType Magenta1
highlight! link phpMethod Yellow
highlight! link phpMemberSelector Blue1

" c
highlight! link cStatement White1

" haskell
highlight! link haskellDeclKeyword White1
highlight! link haskellType Blue2
highlight! link haskellDecl Magenta1
highlight! link haskellPreProc Magenta1
highlight! link haskellWhere White1
highlight! link haskellOperators Green1

" elixir
highlight! link elixirModuleDeclaration Magenta1
highlight! link elixirInclude Magenta1
highlight! link elixirAlias Green2
highlight! link elixirVariable Yellow
highlight! link elixirPseudoVariable Yellow
highlight! link elixirDefine Magenta1
highlight! link elixirMacroDeclaration Magenta1
highlight! link elixirModuleDefine Magenta1
highlight! link elixirProtocolDefine Magenta1
highlight! link elixirImplDefine Magenta1
highlight! link elixirRecordDefine Magenta1
highlight! link elixirPrivateRecordDefine Magenta1
highlight! link elixirMacroDefine Magenta1
highlight! link elixirPrivateMacroDefine Magenta1
highlight! link elixirDelegateDefine Magenta1
highlight! link elixirOverridableDefine Magenta1
highlight! link elixirExceptionDefine Magenta1
highlight! link elixirCallbackDefine Magenta1
highlight! link elixirStructDefine Magenta1

" ocaml
highlight! link ocamlModule Green2
highlight! link ocamlEqual Green2
highlight! link ocamlPpxEncl Magenta1
highlight! link ocamlArrow Green2
highlight! link ocamlModPath Magenta1
highlight! link ocamlKeyChar Green2
highlight! link ocamlFullMod Magenta1
highlight! link ocamlFuncWith Fg
highlight! link ocamlWith Green2
highlight! link ocamlModParam1 Blue1
highlight! link ocamlModPreRHS Fg
highlight! link ocamlConstructor Blue1

" clojure
highlight! link clojureDefine Magenta1
highlight! link clojureQuote Fg
highlight! link clojureSpecial Magenta1
highlight! link clojureDispatch Yellow
highlight! link clojureVariable Blue1

" erlang
highlight! link erlangType Magenta1
highlight! link erlangLocalFuncCall Green2
highlight! link erlangLocalFuncRef Yellow
highlight! link erlangGlobalFuncCall Magenta1

" lisp
highlight! link lispDecl White1
highlight! link lispKey Green2

" sh
highlight! link shCommandSub White1
highlight! link shDerefSimple Green2
highlight! link shDerefVar Yellow
highlight! link shQuote Blue1
highlight! link shFunction White1

" zsh
highlight! link zshOptStart Magenta1
highlight! link zshOption Green2
highlight! link zshSubst Yellow
highlight! link zshFunction Magenta1
highlight! link zshDeref Green2
highlight! link zshTypes Magenta1

" vim
highlight! link vimFunction Green2
highlight! link vimLet White1
highlight! link vimMap Green2
highlight! link vimMapMod Yellow
highlight! link vimMapLhs Blue1
highlight! link vimMapRhs Blue1
highlight! link vimNotation Magenta1
highlight! link vimAugroupKey White1
highlight! link vimAutoCmd Green2

" json
highlight! link jsonKeyword Green2

" yaml
highlight! link yamlKey Green2

" toml
highlight! link tomlKey Green2

" diff
highlight! link diffAdded Blue1
highlight! link diffRemoved Red
highlight! link diffChanged Yellow
highlight! link diffOldFile Green2
highlight! link diffNewFile Purple
highlight! link diffFile Blue1
highlight! link diffLine Grey
highlight! link diffIndexLine Green1

" help
call s:highlight('helpURL', s:palette.green2, s:palette.none, 'underline')
call s:highlight('helpNote', s:palette.white2, s:palette.none, 'bold')
highlight! link helpHyperTextEntry Green2
highlight! link helpHyperTextJump Red
highlight! link helpSectionDelim Grey
highlight! link helpExample Blue1
highlight! link helpCommand Purple
highlight! link helpHeadline Purple
highlight! link helpHeader Green2

" GitGutter
call s:highlight('GitGutterAdd', s:palette.green1, s:palette.black1)
call s:highlight('GitGutterChange', s:palette.yellow2, s:palette.black1)
call s:highlight('GitGutterDelete', s:palette.red2, s:palette.black1)
call s:highlight('GitGutterChangeDelete', s:palette.white1, s:palette.black1)

if exists("g:transparent_bg") && g:transparent_bg==1
  hi! Normal        ctermbg=NONE guibg=NONE
  hi! LineNr        ctermbg=NONE guibg=NONE
  hi! VertSplit     ctermbg=NONE guibg=NONE
  hi! EndOfBuffer   ctermbg=NONE guibg=NONE
  hi! NonText       ctermbg=NONE guibg=NONE
  hi! SignColumn    ctermbg=NONE guibg=NONE
  hi! CursorLine    ctermbg=NONE guibg=NONE
  hi! CursorLineNr  ctermbg=NONE guibg=NONE
endif
