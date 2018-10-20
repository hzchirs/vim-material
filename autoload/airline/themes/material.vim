let s:gui = {}

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

let g:airline#themes#material#palette = {}
let s:modified = { 'airline_c': [ s:gui(s:gui.yellow), s:gui(s:gui.selection), 215, '', '' ] }

" Normal mode
let s:N1 = [ s:gui(s:gui.background) , s:gui(s:gui.cyan) , "" , ""  ]
let s:N2 = [ s:gui(s:gui.foreground) , s:gui(s:gui.selection) , "" , ""  ]
let s:N3 = [ s:gui(s:gui.foreground) , s:gui(s:gui.selection) , "" , ""  ]
let g:airline#themes#material#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#material#palette.normal_modified = s:modified

" Insert mode
let s:I1 = [ s:gui(s:gui.background) , s:gui(s:gui.blue) , "" , ""  ]
let s:I2 = [ s:gui(s:gui.foreground) , s:gui(s:gui.selection) , "" , ""  ]
let s:I3 = [ s:gui(s:gui.foreground) , s:gui(s:gui.selection) , "" , ""  ]
let g:airline#themes#material#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#material#palette.insert_modified = s:modified

" Visual mode
let s:V1 = [ s:gui(s:gui.background) , s:gui(s:gui.green) , "" , ""  ]
let s:V2 = [ s:gui(s:gui.foreground) , s:gui(s:gui.selection) , "" , ""  ]
let s:V3 = [ s:gui(s:gui.foreground) , s:gui(s:gui.selection) , "" , ""  ]
let g:airline#themes#material#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#material#palette.visual_modified = s:modified

" Replace mode
let s:R1 = [ s:gui(s:gui.background) , s:gui(s:gui.yellow) , "" , ""  ]
let s:R2 = [ s:gui(s:gui.foreground) , s:gui(s:gui.selection) , "" , ""  ]
let s:R3 = [ s:gui(s:gui.foreground) , s:gui(s:gui.selection) , "" , ""  ]
let g:airline#themes#material#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#material#palette.replace_modified = s:modified

" Inactive mode
let s:IN1 = [ s:gui(s:gui.comment) , s:gui(s:gui.line) , "" , ""  ]
let s:IN2 = [ s:gui(s:gui.comment) , s:gui(s:gui.line) , "" , ""  ]
let s:IN3 = [ s:gui(s:gui.comment) , s:gui(s:gui.line) , "" , ""  ]
let g:airline#themes#material#palette.inactive = airline#themes#generate_color_map(s:IN1, s:IN2, s:IN3)
let g:airline#themes#material#palette.inactive_modified = s:modified

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 = [ s:gui(s:gui.comment) , s:gui(s:gui.background) , "" , ""  ]
let s:CP2 = [ s:gui(s:gui.comment) , s:gui(s:gui.background) , "" , ""  ]
let s:CP3 = [ s:gui(s:gui.comment) , s:gui(s:gui.background) , "" , ""  ]

let g:airline#themes#material#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)
