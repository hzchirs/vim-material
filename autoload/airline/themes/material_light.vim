let s:gui = {}

let s:gui.background = '#FAFAFA'
let s:gui.foreground = '#666666'
let s:gui.none      = 'NONE'
let s:gui.selection = '#E4E4E4'
let s:gui.line      = '#E4E4E4'
let s:gui.comment   = '#90A4AE'

let s:gui.red       = '#E53935'
let s:gui.pink      = '#FF5370'
let s:gui.orange    = '#F76D47'
let s:gui.yellow    = '#FFAD13'
let s:gui.green     = '#82A550'
let s:gui.pale_blue = '#8796B0'
let s:gui.cyan      = '#39ADB5'
let s:gui.blue      = '#6182B8'
let s:gui.purple    = '#C792EA'
let s:gui.violet    = '#945EB8'
let s:gui.brown     = '#AB7967'

let g:airline#themes#material_light#palette = {}
let s:modified = { 'airline_c': [ s:gui.yellow, s:gui.selection, 215, '', '' ] }

" Normal mode
let s:N1 = [ s:gui.background, s:gui.cyan , "" , ""  ]
let s:N2 = [ s:gui.foreground, s:gui.selection , "" , ""  ]
let s:N3 = [ s:gui.foreground, s:gui.selection , "" , ""  ]
let g:airline#themes#material_light#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#material_light#palette.normal_modified = s:modified

" Insert mode
let s:I1 = [ s:gui.background, s:gui.blue , "" , ""  ]
let s:I2 = [ s:gui.foreground, s:gui.selection , "" , ""  ]
let s:I3 = [ s:gui.foreground, s:gui.selection , "" , ""  ]
let g:airline#themes#material_light#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#material_light#palette.insert_modified = s:modified

" Visual mode
let s:V1 = [ s:gui.background, s:gui.green , "" , ""  ]
let s:V2 = [ s:gui.foreground, s:gui.selection , "" , ""  ]
let s:V3 = [ s:gui.foreground, s:gui.selection , "" , ""  ]
let g:airline#themes#material_light#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#material_light#palette.visual_modified = s:modified

" Replace mode
let s:R1 = [ s:gui.background, s:gui.yellow , "" , ""  ]
let s:R2 = [ s:gui.foreground, s:gui.selection , "" , ""  ]
let s:R3 = [ s:gui.foreground, s:gui.selection , "" , ""  ]
let g:airline#themes#material_light#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#material_light#palette.replace_modified = s:modified

" Inactive mode
let s:IN1 = [ s:gui.comment , s:gui.line , "" , ""  ]
let s:IN2 = [ s:gui.comment , s:gui.line , "" , ""  ]
let s:IN3 = [ s:gui.comment , s:gui.line , "" , ""  ]
let g:airline#themes#material_light#palette.inactive = airline#themes#generate_color_map(s:IN1, s:IN2, s:IN3)
let g:airline#themes#material_light#palette.inactive_modified = s:modified

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 = [ s:gui.comment , s:gui.background , "" , ""  ]
let s:CP2 = [ s:gui.comment , s:gui.background , "" , ""  ]
let s:CP3 = [ s:gui.comment , s:gui.background , "" , ""  ]

let g:airline#themes#material_light#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)
