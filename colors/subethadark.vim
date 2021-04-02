" -----------------------------------------------------------------------------
" File: subethadark.vim
" Description: SubEthaEdit Dark color scheme for Vim
" Author: Kamil Fazilov <k.faziov@icloud.com>
" Source: https://github.com/AnotherProksY/subethadark.git
" Last Modified: 02 Apr 2021
" -----------------------------------------------------------------------------

hi clear
set background=dark

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "subethadark"

hi Normal		  guifg=white  guibg=black
hi Scrollbar	  guifg=darkcyan guibg=cyan
hi Menu			  guifg=black guibg=cyan
hi SpecialKey	  term=bold  cterm=bold  ctermfg=darkgray  guifg=#586272
hi NonText		  term=bold  cterm=bold  ctermfg=darkgray  gui=bold  guifg=#586272
hi Directory	  term=bold  cterm=bold  ctermfg=magenta  guifg=#9b93f8
hi ErrorMsg		  term=standout  cterm=bold  ctermfg=grey  ctermbg=red  guifg=White  guibg=#de1818
hi Search		  term=reverse  ctermfg=black  ctermbg=yellow  guifg=black  guibg=#ffff54
hi MoreMsg		  term=bold  cterm=bold  ctermfg=darkgreen	gui=bold  guifg=SeaGreen
hi ModeMsg		  term=bold  ctermfg=white  guifg=White
hi LineNr		  term=underline  ctermfg=gray	guifg=DarkGray
hi Question		  term=standout  cterm=bold  ctermfg=darkgreen	gui=bold  guifg=Green
hi StatusLine	  term=bold,reverse  cterm=bold ctermfg=black ctermbg=white gui=bold guifg=black guibg=white
hi StatusLineNC   term=reverse cterm=bold	ctermfg=black ctermbg=darkgray gui=bold guifg=black guibg=darkgray
hi Title		  term=bold  cterm=bold  ctermfg=white  gui=bold	guifg=White
hi Visual		  term=reverse	cterm=None ctermfg=white ctermbg=darkgray  gui=None guifg=white guibg=darkgray
hi WarningMsg	  term=standout  cterm=bold  ctermfg=darkred guifg=Red
hi Cursor		  guifg=bg	guibg=LightGray
hi Comment		  term=bold  cterm=italic ctermfg=green gui=italic  guifg=#91dc93
hi Constant		  term=underline  ctermfg=LightMagenta  guifg=#ffa0a0
hi Special		  term=bold  cterm=bold ctermfg=magenta  guifg=#97cdff
hi Identifier	  term=underline   ctermfg=magenta  guifg=#9b93f8
hi Statement	  term=bold  cterm=bold ctermfg=lightmagenta	guifg=#ec77b4
hi PreProc		  term=underline  ctermfg=darkmagenta guifg=#ec77b4
hi Type			  term=underline  cterm=bold ctermfg=magenta  gui=bold  guifg=#9b93f8
hi Error		  term=reverse	ctermfg=darkcyan  ctermbg=black  guifg=Red	guibg=Black
hi Todo			  term=standout  ctermfg=black	ctermbg=darkcyan  guifg=Blue  guibg=Yellow
hi CursorLine	  term=underline  guibg=#555555 cterm=underline
hi CursorColumn	  term=underline  guibg=#555555 cterm=underline
hi MatchParen	  term=reverse  ctermfg=darkgray guibg=DarkGray
hi TabLine		  term=bold,reverse  cterm=bold ctermfg=white ctermbg=black gui=bold guifg=white guibg=black
hi TabLineFill	  term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=white gui=bold guifg=black guibg=black
hi TabLineSel	  term=reverse	ctermfg=white ctermbg=lightblue guifg=black guibg=white
hi Underlined	  term=underline cterm=bold,underline ctermfg=lightblue guifg=lightblue gui=bold,underline
hi Ignore		  ctermfg=black ctermbg=black guifg=black guibg=black
hi EndOfBuffer	  term=bold  cterm=bold  ctermfg=darkgray guifg=darkgray gui=bold
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
