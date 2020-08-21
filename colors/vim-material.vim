" -----------------------------------------------------------------------------
" File: vim-material.vim
" Description: equinusocio's Material Theme porting
" Porting From: https://github.com/equinusocio/vsc-material-theme
" Author: hzchris <hzchirs@gmail.com>
" Source: https://github.com/hzchirs/vim-material
" Last Modified: 10 February 2019
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

let s:gui.background = { 'dark': '#263238', 'light': '#FAFAFA', 'palenight': '#292D3E', 'oceanic': '#0F111A'  }
let s:gui.foreground = { 'dark': '#ECEFF1', 'light': '#666666', 'palenight': '#A6ACCD', 'oceanic': '#A6ACCD'  }
let s:gui.none       = { 'dark': 'NONE',    'light': 'NONE',    'palenight': 'NONE'   , 'oceanic': 'NONE'     }
let s:gui.selection  = { 'dark': '#455A64', 'light': '#CCEAE7', 'palenight': '#434A6C', 'oceanic': '#292D3E'  }
let s:gui.line       = { 'dark': '#212121', 'light': '#EAEFF0', 'palenight': '#191919', 'oceanic': '#191919'  }
let s:gui.comment    = { 'dark': '#5D818E', 'light': '#90A4AE', 'palenight': '#676E95', 'oceanic': '#525975'  }

let s:gui.red          = { 'dark': '#FF5370', 'light': '#E53935', 'palenight': '#FF5370', 'oceanic': '#FF5370'  }
let s:gui.dark_red     = { 'dark': '#B71C1C', 'light': '#E53935', 'palenight': '#FF5370', 'oceanic': '#FF5370'  }
let s:gui.pink         = { 'dark': '#F07178', 'light': '#FF5370', 'palenight': '#F07178', 'oceanic': '#F07178'  }
let s:gui.orange       = { 'dark': '#F78C6C', 'light': '#F76D47', 'palenight': '#F78C6C', 'oceanic': '#F78C6C'  }
let s:gui.light_yellow = { 'dark': '#FFE57F', 'light': '#FFAD13', 'palenight': '#FFE57F', 'oceanic': '#FFE57F'  }
let s:gui.yellow       = { 'dark': '#FFCB6B', 'light': '#FFAD13', 'palenight': '#FFCB6B', 'oceanic': '#FFCB6B'  }
let s:gui.green        = { 'dark': '#C3E88D', 'light': '#82A550', 'palenight': '#C3E88D', 'oceanic': '#C3E88D'  }
let s:gui.teal         = { 'dark': '#004D40', 'light': '#CCEAE7', 'palenight': '#004D40', 'oceanic': '#004D40'  }
let s:gui.light_teal   = { 'dark': '#69F0AE', 'light': '#73B6B0', 'palenight': '#69F0AE', 'oceanic': '#69F0AE'  }
let s:gui.pale_blue    = { 'dark': '#B2CCD6', 'light': '#8796B0', 'palenight': '#B2CCD6', 'oceanic': '#B2CCD6'  }
let s:gui.cyan         = { 'dark': '#89DDFF', 'light': '#39ADB5', 'palenight': '#89DDFF', 'oceanic': '#89DDFF'  }
let s:gui.blue         = { 'dark': '#82AAFF', 'light': '#6182B8', 'palenight': '#82AAFF', 'oceanic': '#82AAFF'  }
let s:gui.purple       = { 'dark': '#C792EA', 'light': '#7C4DFF', 'palenight': '#C792EA', 'oceanic': '#C792EA'  }
let s:gui.violet       = { 'dark': '#BB80B3', 'light': '#945EB8', 'palenight': '#BB80B3', 'oceanic': '#BB80B3'  }
let s:gui.brown        = { 'dark': '#AB7967', 'light': '#AB7967', 'palenight': '#C17E70', 'oceanic': '#C17E70'  }

if !exists('g:material_style')
  let g:material_style='default'
endif

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
    if g:material_style == 'default'
      return a:color['dark']
    else
      return a:color[g:material_style]
    endif
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
call s:hi("SignColumn",  "",               s:gui.background, "", "", "")


" Ruby colors
call s:hi("rubyClassName",       s:gui.yellow, "", "", "", "bold")
call s:hi("rubyConstant",        s:gui.yellow, "", "", "", "")
call s:hi("rubyKeywordAsMethod", s:gui.blue,   "", "", "", "")
call s:hi("rubyOperator",        s:gui.purple, "", "", "", "")
call s:hi("rubyPseudoVariable",  s:gui.red,   "", "", "", "italic")
call s:hi("rubySymbol",          s:gui.orange,   "", "", "", "")
call s:hi("rubySymbolDelimiter", s:gui.cyan,   "", "", "", "")

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
call s:hi("javascriptObjectLabel",      s:gui.foreground, "", "", "", "")
call s:hi("javascriptObjectLabelColon", s:gui.cyan,       "", "", "", "")
call s:hi("javascriptObjectMethodName", s:gui.blue,       "", "", "", "")
call s:hi("javascriptOperator",         s:gui.purple,     "", "", "", "")
call s:hi("javascriptProperty",         s:gui.cyan,       "", "", "", "")
call s:hi("javascriptStringMethod",     s:gui.blue,       "", "", "", "")
call s:hi("javascriptVariable",         s:gui.purple,     "", "", "", "")

" vim-javascript
call s:hi("jsArrowFuncArgs",   s:gui.red,     "", "", "", "")
call s:hi("jsArrowFunction",   s:gui.purple,       "", "", "", "")
call s:hi("jsBooleanFalse",    s:gui.orange,       "", "", "", "")
call s:hi("jsBooleanTrue",     s:gui.orange,       "", "", "", "")
call s:hi("jsClassBraces",     s:gui.cyan,       "", "", "", "")
call s:hi("jsClassDefinition", s:gui.yellow,       "", "", "", "")
call s:hi("jsClassKeyword",    s:gui.purple,       "", "", "", "")
call s:hi("jsConditional",     s:gui.cyan,       "", "", "", "italic")
call s:hi("jsFuncArgs",        s:gui.red,     "", "", "", "")
call s:hi("jsFuncBraces",      s:gui.cyan,     "", "", "", "")
call s:hi("jsFuncCall",        s:gui.blue,       "", "", "", "")
call s:hi("jsFuncParens",      s:gui.cyan,     "", "", "", "")
call s:hi("jsFunction",        s:gui.purple,     "", "", "", "")
call s:hi("jsFunctionKey",     s:gui.blue,     "", "", "", "")
call s:hi("jsGlobalObjects",   s:gui.yellow,       "", "", "", "")
call s:hi("jsNoise",           s:gui.cyan,       "", "", "", "")
call s:hi("jsObjectKey",       s:gui.foreground,     "", "", "", "")
call s:hi("jsOperator",        s:gui.purple,     "", "", "", "")
call s:hi("jsParens",          s:gui.cyan, "", "", "", "")
call s:hi("jsReturn",          s:gui.cyan,       "", "", "", "italic")
call s:hi("jsStorageClass",    s:gui.purple,     "", "", "", "")
call s:hi("jsThis",            s:gui.red,     "", "", "", "italic")

" yats
call s:hi("typescriptAccessibilityModifier", s:gui.purple, "", "", "", "")
call s:hi("typescriptCall",                  s:gui.pink, "", "", "", "")
call s:hi("typescriptClassName",             s:gui.yellow, "", "", "", "")
call s:hi("typescriptExport",                s:gui.blue, "", "", "", "")
call s:hi("typescriptImport",                s:gui.blue, "", "", "", "")
call s:hi("typescriptInterfaceName",         s:gui.yellow, "", "", "", "")
call s:hi("typescriptPredefinedType",        s:gui.pale_blue, "", "", "", "")
call s:hi("typescriptVariable",              s:gui.purple, "", "", "", "")
call s:hi("typescriptOperator",              s:gui.purple, "", "", "", "")

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

" GitGutter
call s:hi("GitGutterAdd",          s:gui.green, s:gui.background, "", "", "")
call s:hi("GitGutterChange",       s:gui.yellow,  s:gui.background, "", "", "")
call s:hi("GitGutterDelete",       s:gui.red,   s:gui.background, "", "", "")
call s:hi("GitGutterChangeDelete", s:gui.yellow,  s:gui.background, "", "", "")
