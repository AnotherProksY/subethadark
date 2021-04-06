" -----------------------------------------------------------------------------
" File: subethadark.vim
" Description: SubEthaEdit Dark color scheme for Vim
" Author: Kamil Fazilov <k.faziov@icloud.com>
" Source: https://github.com/AnotherProksY/subethadark.git
" Last Modified: 06 Apr 2021
" -----------------------------------------------------------------------------

" Initialisation: {{{

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  echoerr "'SubEthaDark' no 256 color support detected! Please check if your terminal uses 256 colors or 'screen/tmux' configured with 256 colors."
  finish
endif

hi clear

if exists("syntax_on")
  syntax reset
endif

set background=dark
let g:colors_name = "subethadark"

" }}}
" Palette: {{{

let s:sb = {
      \  'black'    : ['#000000', 0],
      \  'white'    : ['#ffffff', 15],
      \  'cyan'     : ['#00ffff', 51],
      \  'd_cyan'   : ['#00af87', 36],
      \  'd_gray'   : ['#586272', 241],
      \  'l_gray'   : ['#dadada', 253],
      \  'sd_gray'  : ['#555555', 240],
      \  'purple'   : ['#9b93f8', 141],
      \  'l_purple' : ['#ec77b4', 211],
      \  'red'      : ['#de1818', 160],
      \  'yellow'   : ['#ffff54', 227],
      \  's_green'  : ['#5fffaf', 85],
      \  'green'    : ['#00ff00', 46],
      \  'l_green'  : ['#91dc93', 114],
      \  'pink'     : ['#ffa0a0', 217],
      \  'blue'     : ['#0000ff', 12],
      \  'aqua'     : ['#97cdff', 117],
      \}

" }}}
" Color function: {{{

function! s:Coloring(group, fg, bg, style, gui_only=0, reverse=0)
  if type(a:fg) != type([])
    let l:fg = ['NONE', 'NONE']
  else
    let l:fg = a:fg
  endif
  if type(a:bg) != type([])
    let l:bg = ['NONE', 'NONE']
  else
    let l:bg = a:bg
  endif

  " GUI fg, bg
  let l:gfg = l:fg[0]
  let l:gbg = l:bg[0]

  " CLI fg, bg
  " If you pass '1' as last argument
  " It means that you 'hi' GUI only
  if a:gui_only == 1
    let l:cfg = 'NONE'
    let l:cbg = 'NONE'
  else
    let l:cfg = l:fg[1]
    let l:cbg = l:bg[1]
  endif

  if a:reverse == 1
    let l:tmp = l:cfg
    let l:cfg = l:cbg
    let l:cbg = l:tmp
  endif

  let highlightstr = 'highlight ' . a:group . ' '
  let highlightstr .= 'guifg=' . l:gfg . ' '
  let highlightstr .= 'guibg=' . l:gbg . ' '
  let highlightstr .= 'gui=' . a:style . ' '
  let highlightstr .= 'ctermfg=' . l:cfg . ' '
  let highlightstr .= 'ctermbg=' . l:cbg . ' '
  let highlightstr .= 'cterm=' . a:style . ' '

  execute highlightstr
endfunction

" }}}
" Set colors: {{{

" Normal
call s:Coloring('Normal', s:sb['white'], s:sb['black'], 'NONE')

" Scrollbar
call s:Coloring('Scrollbar', s:sb['d_cyan'],s:sb['cyan'], 'NONE', 1)

" Menu
call s:Coloring('Menu', s:sb['black'],s:sb['cyan'], 'NONE', 1)

" SpecialKey
call s:Coloring('SpecialKey', s:sb['d_gray'], 'NONE', 'bold')

" NonText
call s:Coloring('NonText', s:sb['d_gray'], 'NONE', 'bold')

" Directory
call s:Coloring('Directory', s:sb['purple'], 'NONE', 'bold')

" ErrorMsg
call s:Coloring('ErrorMsg', s:sb['white'], s:sb['red'], 'bold')

" Search
call s:Coloring('Search', s:sb['black'], s:sb['yellow'], 'NONE')

" MoreMsg
call s:Coloring('MoreMsg', s:sb['s_green'], 'NONE', 'bold')

" ModeMsg
call s:Coloring('ModeMsg', s:sb['white'], 'NONE', 'NONE')

" LineNr
call s:Coloring('LineNr', s:sb['d_gray'], 'NONE', 'NONE')

" VertSplit
call s:Coloring('VertSplit', s:sb['white'], s:sb['black'], 'NONE')

" Question
call s:Coloring('Question', s:sb['green'], 'NONE', 'bold')

" StatusLine
call s:Coloring('StatusLine', s:sb['black'], s:sb['white'], 'bold')

" StatusLineNC
call s:Coloring('StatusLineNC', s:sb['black'], s:sb['d_gray'], 'bold')

" Title
call s:Coloring('Title', s:sb['white'], 'NONE', 'bold')

" Visual
call s:Coloring('Visual', s:sb['white'], s:sb['d_gray'], 'NONE')

" WarningMsg
call s:Coloring('WarningMsg', s:sb['red'], 'NONE', 'bold')

" Cursor
call s:Coloring('Cursor', 'bg', s:sb['l_gray'], 'NONE', 1)

" Comment
call s:Coloring('Comment', s:sb['l_green'], s:sb['black'], 'bold,italic', 0)

" Constant
call s:Coloring('Constant', s:sb['pink'], 'NONE', 'NONE')

" Special
call s:Coloring('Special', s:sb['aqua'], 'NONE', 'bold')

" Identifier
call s:Coloring('Identifier', s:sb['purple'], 'NONE', 'NONE')

" Statement
call s:Coloring('Statement', s:sb['l_purple'], 'NONE', 'bold')

" PreProc
call s:Coloring('PreProc', s:sb['l_purple'], 'NONE', 'NONE')

" Type
call s:Coloring('Type', s:sb['l_purple'], 'NONE', 'bold')

" Error
call s:Coloring('Error', s:sb['red'], s:sb['black'], 'NONE')

" Todo
call s:Coloring('Todo', s:sb['blue'], s:sb['yellow'], 'NONE')

" CursorLine
call s:Coloring('CursorLine', 'NONE', s:sb['sd_gray'], 'underline')

" CursorColumn
call s:Coloring('CursorColumn', 'NONE', s:sb['sd_gray'], 'underline')

" MatchParen
call s:Coloring('MatchParen', 'NONE', s:sb['d_gray'], 'NONE')

" TabLine
call s:Coloring('TabLine', s:sb['white'], s:sb['black'], 'bold')

" TabLineFill
call s:Coloring('TabLineFill', s:sb['black'], s:sb['black'], 'bold')

" TabLineSel
call s:Coloring('TabLineSel', s:sb['black'], s:sb['white'], 'NONE')

" Underlined
call s:Coloring('Underlined', s:sb['blue'], 'NONE', 'bold,underline')

" Ignore
call s:Coloring('Ignore', s:sb['black'], s:sb['black'], 'NONE')

" EndOfBuffer
call s:Coloring('EndOfBuffer', s:sb['d_gray'], 'NONE', 'bold')

" SignColumn
call s:Coloring('SignColumn', 'NONE', s:sb['black'], 'bold')

" Link
hi link IncSearch		Visual
hi link String			Constant
hi link Character		Constant
hi link Number			Constant
hi link Boolean			Constant
hi link Float			Number
hi link Function		Identifier
hi link Conditional		Statement
hi link Repeat			Statement
hi link Label			Statement
hi link Operator		Statement
hi link Keyword			Statement
hi link Exception		Statement
hi link Include			PreProc
hi link Define			PreProc
hi link Macro			PreProc
hi link PreCondit		PreProc
hi link StorageClass	Type
hi link Structure		Type
hi link Typedef			Type
hi link Tag				Special
hi link SpecialChar		Special
hi link Delimiter		Special
hi link SpecialComment	Special
hi link Debug			Special

" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
