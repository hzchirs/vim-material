" -----------------------------------------------------------------------------
" File: vim-material.vim
" Description: A equinusocio's Material Theme porting
" Porting From: https://github.com/equinusocio/vsc-material-theme
" Author: hzchris <hzchirs@gmail.com>
" Source: https://github.com/hzchirs/vim-material
" Last Modified: 1 July 2018
" -----------------------------------------------------------------------------

if version > 580
  highlight clear 
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name = "vim-material"

let s:gui = {}
let s:cterm = {}

let s:gui.background = { 'dark': '#263238', 'light': '#FAFAFA' }
let s:gui.foreground = { 'dark': '#EEFFFF', 'light': '#666666' }
let s:gui.none       = { 'dark': 'NONE', 'light': 'NONE' }
let s:gui.selection  = { 'dark': '#455A64', 'light': '#CCEAE7' }
let s:gui.line       = { 'dark': '#212121', 'light': '#D8EFED' }
let s:gui.comment    = { 'dark': '#5D818E', 'light': '#90A4AE' }

let s:gui.red          = { 'dark': '#FF5370', 'light': '#E53935' }
let s:gui.dark_red     = { 'dark': '#B71C1C', 'light': '#E53935' }
let s:gui.pink         = { 'dark': '#F07178', 'light': '#FF5370' }
let s:gui.orange       = { 'dark': '#F78C6C', 'light': '#F76D47' }
let s:gui.light_yellow = { 'dark': '#FFE57F', 'light': '#FFB62C' }
let s:gui.yellow       = { 'dark': '#FFCB6B', 'light': '#FFAD13' }
let s:gui.green        = { 'dark': '#C3E88D', 'light': '#82A550' }
let s:gui.teal         = { 'dark': '#004D40', 'light': '#CCEAE7' }
let s:gui.light_teal   = { 'dark': '#69f0ae', 'light': '#73B6B0' }
let s:gui.pale_blue    = { 'dark': '#B2CCD6', 'light': '#8796B0' }
let s:gui.cyan         = { 'dark': '#89DDFF', 'light': '#39ADB5' }
let s:gui.blue         = { 'dark': '#82AAFF', 'light': '#6182B8' }
let s:gui.purple       = { 'dark': '#C792EA', 'light': '#7C4DFF' }
let s:gui.violet       = { 'dark': '#BB80B3', 'light': '#945EB8' }
let s:gui.brown        = { 'dark': '#AB7967', 'light': '#AB7967' }

function! s:hi(group, guifg, guibg, ctermfg, ctermbg, attr)
  if s:gui(a:guifg) != ""
    exec "hi " . a:group . " guifg=" . s:gui(a:guifg)
  endif
  if s:gui(a:guibg) != ""
    exec "hi " . a:group . " guibg=" . s:gui(a:guibg)
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfunction

function! s:gui(color)
  if &background == "light"
    return a:color['light']
  else
    return a:color['dark']
  endif
endfunction

" Neovim Terminal colors
if has("nvim")
  let g:terminal_color_0  = s:gui(s:gui.background)
  let g:terminal_color_1  = s:gui(s:gui.red)
  let g:terminal_color_2  = s:gui(s:gui.green)
  let g:terminal_color_3  = s:gui(s:gui.light_yellow)
  let g:terminal_color_4  = s:gui(s:gui.blue)
  let g:terminal_color_5  = s:gui(s:gui.pink)
  let g:terminal_color_6  = s:gui(s:gui.light_teal)
  let g:terminal_color_7  = s:gui(s:gui.pale_blue)
  let g:terminal_color_8  = s:gui(s:gui.selection)
  let g:terminal_color_9  = s:gui(s:gui.red)
  let g:terminal_color_10 = s:gui(s:gui.green)
  let g:terminal_color_11 = s:gui(s:gui.light_yellow)
  let g:terminal_color_12 = s:gui(s:gui.cyan)
  let g:terminal_color_13 = s:gui(s:gui.purple)
  let g:terminal_color_14 = s:gui(s:gui.cyan)
  let g:terminal_color_15 = s:gui(s:gui.foreground)
endif

" Editor colors
call s:hi("ColorColumn",  s:gui.none,       s:gui.line,       "", "", "")
call s:hi("Cursor",       s:gui.yellow,     "",               "", "", "")
call s:hi("CursorColumn", s:gui.none,       s:gui.line,       "", "", "")
call s:hi("LineNr",       s:gui.comment,    "",               "", "", "")
call s:hi("CursorLine",   s:gui.none,       s:gui.line,       "", "", "")
call s:hi("CursorLineNr", s:gui.cyan,       s:gui.line,       "", "", "")
call s:hi("Directory",    s:gui.blue,       "",               "", "", "")
call s:hi("FoldColumn",   "",               s:gui.background, "", "", "")
call s:hi("Folded",       s:gui.comment,    s:gui.line,       "", "", "")
call s:hi("PMenu",        s:gui.foreground, s:gui.line,       "", "", "")
call s:hi("PMenuSel",     s:gui.cyan,       s:gui.selection,  "", "", "bold")
call s:hi("ErrorMsg",     s:gui.red,        s:gui.none,       "", "", "")
call s:hi("Error",        s:gui.red,        s:gui.none,       "", "", "")
call s:hi("WarningMsg",   s:gui.orange,     "",               "", "", "")
call s:hi("VertSplit",    s:gui.background, s:gui.foreground, "", "", "")
call s:hi("Conceal",      s:gui.comment,    s:gui.background, "", "", "")

call s:hi("DiffAdded",   s:gui.green, "", "", "", "")
call s:hi("DiffRemoved", s:gui.red,   "", "", "", "")

call s:hi("DiffAdd",    "",        s:gui.teal,       "", "", "")
call s:hi("DiffChange", "",        s:gui.teal,       "", "", "")
call s:hi("DiffDelete", s:gui.red, s:gui.background, "", "", "")
call s:hi("DiffText",   "",        s:gui.selection,  "", "", "")


call s:hi("NonText",     s:gui.comment,    "",               "", "", "")
call s:hi("helpExample", s:gui.blue,       "",               "", "", "")
call s:hi("MatchParen",  "",               s:gui.selection,  "", "", "")
call s:hi("Title",       s:gui.cyan,       "",               "", "", "")
call s:hi("Comment",     s:gui.comment,    "",               "", "", "italic")
call s:hi("String",      s:gui.green,      "",               "", "", "")
call s:hi("Normal",      s:gui.foreground, s:gui.background, "", "", "")
call s:hi("Visual",      "",               s:gui.selection,  "", "", "")
call s:hi("Constant",    s:gui.pink,       "",               "", "", "")
call s:hi("Type",        s:gui.yellow,     "",               "", "", "none")
call s:hi("Define",      s:gui.cyan,       "",               "", "", "")
call s:hi("Statement",   s:gui.cyan,       "",               "", "", "none")
call s:hi("Function",    s:gui.blue,       "",               "", "", "")
call s:hi("Conditional", s:gui.cyan,       "",               "", "", "")
call s:hi("Float",       s:gui.orange,     "",               "", "", "")
call s:hi("Noise",       s:gui.cyan,       "",               "", "", "")
call s:hi("Number",      s:gui.orange,     "",               "", "", "")
call s:hi("Identifier",  s:gui.pink,       "",               "", "", "")
call s:hi("Operator",    s:gui.cyan,       "",               "", "", "")
call s:hi("PreProc",     s:gui.blue,       "",               "", "", "")
call s:hi("Search",      s:gui.none,       s:gui.none,       "", "", "underline")
call s:hi("InSearch",    s:gui.background, s:gui.foreground, "", "", "")
call s:hi("Todo",        s:gui.red,        s:gui.foreground, "", "", "reverse")
call s:hi("Special",     s:gui.orange,     "",               "", "", "")


" Ruby colors
call s:hi("rubySymbolDelimiter", s:gui.cyan,   "", "", "", "")
call s:hi("rubyKeywordAsMethod", s:gui.blue,   "", "", "", "")
call s:hi("rubyConstant",        s:gui.yellow, "", "", "", "")
call s:hi("rubyClassName",       s:gui.yellow, "", "", "", "bold")

"eRuby colors
call s:hi("eRubyDelimiter", s:gui.cyan, "", "", "", "")

" Elixir colors
call s:hi("elixirKeyword", s:gui.blue, "", "", "", "")

" Javascript colors
" yajs
call s:hi("javascriptArrayMethod",      s:gui.blue,       "", "", "", "")
call s:hi("javascriptBlock",            s:gui.cyan,       "", "", "", "")
call s:hi("javascriptBraces",           s:gui.cyan,       "", "", "", "")
call s:hi("javascriptBrackets",         s:gui.cyan,       "", "", "", "")
call s:hi("javascriptClassName",        s:gui.yellow,     "", "", "", "bold")
call s:hi("javascriptClassSuperName",   s:gui.yellow,     "", "", "", "")
call s:hi("javascriptExport",           s:gui.cyan,       "", "", "", "")
call s:hi("javascriptFuncKeyword",      s:gui.purple,     "", "", "", "")
call s:hi("javascriptIdentifierName",   s:gui.foreground, "", "", "", "")
call s:hi("javascriptLabel",            s:gui.foreground, "", "", "", "")
call s:hi("javascriptMethod",           s:gui.blue,       "", "", "", "")
call s:hi("javascriptObjectMethodName", s:gui.blue,       "", "", "", "")
call s:hi("javascriptObjectLabel",      s:gui.foreground, "", "", "", "")
call s:hi("javascriptObjectLabelColon", s:gui.cyan,       "", "", "", "")
call s:hi("javascriptOperator",         s:gui.purple,     "", "", "", "")
call s:hi("javascriptProperty",         s:gui.cyan,       "", "", "", "")
call s:hi("javascriptStringMethod",     s:gui.blue,       "", "", "", "")
call s:hi("javascriptVariable",         s:gui.purple,     "", "", "", "")

" vim-javascript
call s:hi("jsArrowFunction", s:gui.cyan,       "", "", "", "")
call s:hi("jsFunction",      s:gui.purple,     "", "", "", "")
call s:hi("jsFuncCall",      s:gui.blue,       "", "", "", "")
call s:hi("jsNoise",         s:gui.cyan,       "", "", "", "")
call s:hi("jsOperator",      s:gui.purple,     "", "", "", "")
call s:hi("jsParens",        s:gui.foreground, "", "", "", "")
call s:hi("jsStorageClass",  s:gui.purple,     "", "", "", "")

" HTML colors
call s:hi("htmlTag",            s:gui.cyan,   "", "", "", "")
call s:hi("htmlEndTag",         s:gui.cyan,   "", "", "", "")
call s:hi("htmlTagName",        s:gui.red,    "", "", "", "")
call s:hi("htmlSpecialTagName", s:gui.red,    "", "", "", "")
call s:hi("htmlArg",            s:gui.yellow, "", "", "", "")

" jsx colors
call s:hi("xmlTag",     s:gui.cyan,   "", "", "", "")
call s:hi("xmlEndTag",  s:gui.cyan,   "", "", "", "")
call s:hi("xmlTagName", s:gui.red,    "", "", "", "")
call s:hi("xmlAttrib",  s:gui.yellow, "", "", "", "")
