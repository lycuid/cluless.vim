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
call s:highlight('StatusLine', s:palette.white1, s:palette.black1)
call s:highlight('StatusLineTerm', s:palette.white1, s:palette.black1)
call s:highlight('StatusLineNC', s:palette.grey1, s:palette.black1)
call s:highlight('StatusLineTermNC', s:palette.grey1, s:palette.black1)
call s:highlight('TabLine', s:palette.white1, s:palette.black1)
call s:highlight('TabLineFill', s:palette.grey1, s:palette.black1)
call s:highlight('TabLineSel', s:palette.black1, s:palette.magenta2)
call s:highlight('VertSplit', s:palette.white1, s:palette.none)
call s:highlight('Visual', s:palette.white2, s:palette.black2, 'bold')
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
call s:highlight('Comment', s:palette.black2, s:palette.none)
call s:highlight('SpecialComment', s:palette.black2, s:palette.none)
call s:highlight('Todo', s:palette.magenta1, s:palette.none, 'italic')
call s:highlight('Ignore', s:palette.grey1, s:palette.none)
call s:highlight('Underlined', s:palette.none, s:palette.none, 'underline')

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
