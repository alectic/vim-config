" Naquadria is modification of the serene theme

let g:airline#themes#naquadria#palette = {}

let s:modified = '#ff3737'

let s:n_guibg = '#2e3233'
let s:n_termbg = 17
let s:n_termsep = 236
let s:n_guisep = '#303030'

let s:i_guibg = '#162b0e'
let s:i_termbg = 22

let s:v_guibg = '#2b2b00'
let s:v_termbg = 58

let s:ia_guibg = '#212121'
let s:ia_termbg = 232

let s:N1 = [ '#00dfff', s:n_guibg, 45, s:n_termbg ]
let s:N2 = [ '#ff5f00', s:n_guibg, 202, s:n_termbg ]
let s:N3 = [ '#767676', s:n_guibg, 7, s:n_termbg ]

let g:airline#themes#naquadria#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#naquadria#palette.normal_modified = { 'airline_c': [ s:modified, s:n_guibg, 160, s:n_termbg, '' ], }

let s:I1 = [ '#5fff00', s:i_guibg, 82, s:i_termbg ]
let s:I2 = [ '#ff5f00', s:i_guibg, 202, s:i_termbg ]
let s:I3 = [ '#767676', s:i_guibg, 7, s:i_termbg ]
let g:airline#themes#naquadria#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#naquadria#palette.insert_modified = { 'airline_c': [ s:modified, s:i_guibg, 160, s:i_termbg, '' ], }
let g:airline#themes#naquadria#palette.insert_paste = { 'airline_a': [ s:I1[0], '#d78700', s:I1[2], 172, '' ], }

let g:airline#themes#naquadria#palette.replace = { 'airline_a': [ '#ffffff', '#af0000', 'white', 52, ''], }
let g:airline#themes#naquadria#palette.replace_modified = copy(g:airline#themes#naquadria#palette.normal_modified)

let s:V1 = [ '#dfdf00', s:v_guibg, 184, s:v_termbg ]
let s:V2 = [ '#ff5f00', s:v_guibg, 202, s:v_termbg ]
let s:V3 = [ '#767676', s:v_guibg, 7, s:v_termbg ]
let g:airline#themes#naquadria#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#naquadria#palette.visual_modified = { 'airline_c': [ s:modified, s:v_guibg, 160, s:v_termbg, '' ], }

let s:IA  = [ '#4e4e4e', s:ia_guibg, 239, s:ia_termbg, '' ]
let s:IA2 = [ '#4e4e4e', s:ia_guibg, 239, s:ia_termbg, '' ]
let g:airline#themes#naquadria#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA2, s:IA2)
let g:airline#themes#naquadria#palette.inactive_modified = { 'airline_c': [ s:modified, s:ia_guibg, 160, s:ia_termbg, '' ], }
