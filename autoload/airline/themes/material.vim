let s:gui = {}

let s:gui.blue_grey = '#263238'
let s:gui.white     = '#EEFFFF'
let s:gui.none      = 'NONE'
let s:gui.selection = '#455A64'
let s:gui.line      = '#212121'
let s:gui.comment   = '#49656F'

let s:gui.red       = '#FF5370'
let s:gui.pink      = '#F07178'
let s:gui.orange    = '#F78C6C'
let s:gui.yellow    = '#FFCB6B'
let s:gui.green     = '#C3E88D'
let s:gui.pale_blue = '#B2CCD6'
let s:gui.cyan      = '#89DDFF'
let s:gui.blue      = '#82AAFF'
let s:gui.purple    = '#C792EA'
let s:gui.violet    = '#BB80B3'
let s:gui.brown     = '#AB7967'

let g:airline#themes#material#palette = {}
let s:modified = { 'airline_c': [ s:gui.yellow, s:gui.selection, 215, '', '' ] }

" Normal mode
let s:N1 = [ s:gui.blue_grey , s:gui.cyan , "" , ""  ]
let s:N2 = [ s:gui.white , s:gui.selection , "" , ""  ]
let s:N3 = [ s:gui.white , s:gui.selection , "" , ""  ]
let g:airline#themes#material#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#material#palette.normal_modified = s:modified

" Insert mode
let s:I1 = [ s:gui.blue_grey , s:gui.blue , "" , ""  ]
let s:I2 = [ s:gui.white , s:gui.selection , "" , ""  ]
let s:I3 = [ s:gui.white , s:gui.selection , "" , ""  ]
let g:airline#themes#material#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#material#palette.insert_modified = s:modified

" Visual mode
let s:V1 = [ s:gui.blue_grey , s:gui.green , "" , ""  ]
let s:V2 = [ s:gui.white , s:gui.selection , "" , ""  ]
let s:V3 = [ s:gui.white , s:gui.selection , "" , ""  ]
let g:airline#themes#material#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#material#palette.visual_modified = s:modified

" Replace mode
let s:R1 = [ s:gui.blue_grey , s:gui.yellow , "" , ""  ]
let s:R2 = [ s:gui.white , s:gui.selection , "" , ""  ]
let s:R3 = [ s:gui.white , s:gui.selection , "" , ""  ]
let g:airline#themes#material#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#material#palette.replace_modified = s:modified

" Inactive mode
let s:IN1 = [ s:gui.comment , s:gui.line , "" , ""  ]
let s:IN2 = [ s:gui.comment , s:gui.line , "" , ""  ]
let s:IN3 = [ s:gui.comment , s:gui.line , "" , ""  ]
let g:airline#themes#material#palette.inactive = airline#themes#generate_color_map(s:IN1, s:IN2, s:IN3)
let g:airline#themes#material#palette.inactive_modified = s:modified

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 = [ s:gui.comment , s:gui.blue_grey , "" , ""  ]
let s:CP2 = [ s:gui.comment , s:gui.blue_grey , "" , ""  ]
let s:CP3 = [ s:gui.comment , s:gui.blue_grey , "" , ""  ]

let g:airline#themes#material#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)
