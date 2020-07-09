let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:fg = [ '#c5cdd9', 250 ]
let s:bg = [ '#090909', 235 ]
let s:bg_alt = [ '#000000', 236 ]
let s:bg_grey = [ '#131313', 238 ]
let s:red_sel = [ '#ff4d4d', 203 ]
let s:darkblue_sel = [ '#6f93af', 176 ]
let s:grey_sel = [ '#7f8c8d', 107 ]
let s:blue_sel = [ '#6f93af', 110 ]
let s:red_fg = [ '#ff4d4d', 203 ]
let s:purple_fg = [ '#d38aea', 176 ]
let s:grey_fg = [ '#7f8c8d', 107 ]
let s:blue_fg = [ '#6f93af', 110 ]
let s:yellow = [ '#deb974', 179 ]

"{{{Definition
let s:accents = s:red_fg

let s:error_fg = s:bg
let s:error_bg = s:red_sel
let s:warning_fg = s:bg
let s:warning_bg = s:yellow

let s:tab_sel_fg = s:bg
let s:tab_sel_bg = s:darkblue_sel

let s:normal_side_fg = s:fg
let s:normal_side_bg = s:bg
let s:normal_sub_fg = s:fg
let s:normal_sub_bg = s:bg_grey
let s:normal_mid_fg = s:fg
let s:normal_mid_bg = s:bg_alt
let s:normal_mod_fg = s:grey_fg
let s:normal_mod_bg = s:bg_alt

let s:insert_side_fg = s:bg
let s:insert_side_bg = s:blue_sel
let s:insert_sub_fg = s:fg
let s:insert_sub_bg = s:bg_grey
let s:insert_mid_fg = s:fg
let s:insert_mid_bg = s:bg_alt
let s:insert_mod_fg = s:blue_fg
let s:insert_mod_bg = s:bg_alt

let s:visual_side_fg = s:bg
let s:visual_side_bg = s:red_sel
let s:visual_sub_fg = s:fg
let s:visual_sub_bg = s:bg_grey
let s:visual_mid_fg = s:fg
let s:visual_mid_bg = s:bg_alt
let s:visual_mod_fg = s:red_fg
let s:visual_mod_bg = s:bg_alt

let s:replace_side_fg = s:bg
let s:replace_side_bg = s:yellow
let s:replace_sub_fg = s:fg
let s:replace_sub_bg = s:bg_grey
let s:replace_mid_fg = s:fg
let s:replace_mid_bg = s:bg_alt
let s:replace_mod_fg = s:yellow
let s:replace_mod_bg = s:bg_alt

let s:inactive_side_fg = s:bg
let s:inactive_side_bg = s:bg_grey
let s:inactive_sub_fg = s:fg
let s:inactive_sub_bg = s:bg_grey
let s:inactive_mid_fg = s:fg
let s:inactive_mid_bg = s:bg_alt
let s:inactive_mod_fg = s:fg
let s:inactive_mod_bg = s:bg_alt
"}}}

"{{{Implementation
let g:airline#themes#old_school#palette = {}
let g:airline#themes#old_school#palette.accents = {
            \ 'red': [ s:accents[0] , '' , s:accents[1] , '' , '' ],
            \ }

" TabLine
let g:airline#themes#old_school#palette.tabline = {}
let g:airline#themes#old_school#palette.tabline.airline_tabsel = [ s:tab_sel_fg[0] , s:tab_sel_bg[0] , s:tab_sel_fg[1] , s:tab_sel_bg[1] , 'bold' ]
let g:airline#themes#old_school#palette.tabline.airline_tabsel_right = [ s:tab_sel_fg[0] , s:tab_sel_bg[0] , s:tab_sel_fg[1] , s:tab_sel_bg[1] , 'bold' ]

" Normal mode
let s:N1 = [ s:normal_side_fg[0] , s:normal_side_bg[0] , s:normal_side_fg[1] , s:normal_side_bg[1] ]
let s:N2 = [ s:normal_sub_fg[0] , s:normal_sub_bg[0] , s:normal_sub_fg[1] , s:normal_sub_bg[1] ]
let s:N3 = [ s:normal_mid_fg[0] , s:normal_mid_bg[0] , s:normal_mid_fg[1] , s:normal_mid_bg[1] ]

let g:airline#themes#old_school#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#old_school#palette.normal.airline_error = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#old_school#palette.normal.airline_warning = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#old_school#palette.normal.airline_error_inactive = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#old_school#palette.normal.airline_warning_inactive = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#old_school#palette.normal.airline_error_red = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#old_school#palette.normal.airline_warning_red = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#old_school#palette.normal_modified = {
            \ 'airline_c': [ s:normal_mod_fg[0] , s:normal_mod_bg[0] , s:normal_mod_fg[1] , s:normal_mod_bg[1] ] ,
            \ }

" Insert mode
let s:I1 = [ s:insert_side_fg[0] , s:insert_side_bg[0] , s:insert_side_fg[1] , s:insert_side_bg[1] ]
let s:I2 = [ s:insert_sub_fg[0] , s:insert_sub_bg[0] , s:insert_sub_fg[1] , s:insert_sub_bg[1] ]
let s:I3 = [ s:insert_mid_fg[0] , s:insert_mid_bg[0] , s:insert_mid_fg[1] , s:insert_mid_bg[1] ]

let g:airline#themes#old_school#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#old_school#palette.insert.airline_error = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#old_school#palette.insert.airline_warning = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#old_school#palette.insert.airline_error_inactive = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#old_school#palette.insert.airline_warning_inactive = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#old_school#palette.insert.airline_error_red = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#old_school#palette.insert.airline_warning_red = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#old_school#palette.insert_modified = {
            \ 'airline_c': [ s:insert_mod_fg[0] , s:insert_mod_bg[0] , s:insert_mod_fg[1] , s:insert_mod_bg[1] ] ,
            \ }

" Replace mode
let s:R1 = [ s:replace_side_fg[0] , s:replace_side_bg[0] , s:replace_side_fg[1] , s:replace_side_bg[1] ]
let s:R2 = [ s:replace_sub_fg[0] , s:replace_sub_bg[0] , s:replace_sub_fg[1] , s:replace_sub_bg[1] ]
let s:R3 = [ s:replace_mid_fg[0] , s:replace_mid_bg[0] , s:replace_mid_fg[1] , s:replace_mid_bg[1] ]

let g:airline#themes#old_school#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#old_school#palette.replace.airline_error = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#old_school#palette.replace.airline_warning = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#old_school#palette.replace.airline_error_inactive = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#old_school#palette.replace.airline_warning_inactive = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#old_school#palette.replace.airline_error_red = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#old_school#palette.replace.airline_warning_red = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#old_school#palette.replace_modified = {
            \ 'airline_c': [ s:replace_mod_fg[0] , s:replace_mod_bg[0] , s:replace_mod_fg[1] , s:replace_mod_bg[1] ] ,
            \ }

" Visual mode
let s:V1 = [ s:visual_side_fg[0] , s:visual_side_bg[0] , s:visual_side_fg[1] , s:visual_side_bg[1] ]
let s:V2 = [ s:visual_sub_fg[0] , s:visual_sub_bg[0] , s:visual_sub_fg[1] , s:visual_sub_bg[1] ]
let s:V3 = [ s:visual_mid_fg[0] , s:visual_mid_bg[0] , s:visual_mid_fg[1] , s:visual_mid_bg[1] ]

let g:airline#themes#old_school#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#old_school#palette.visual.airline_error = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#old_school#palette.visual.airline_warning = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#old_school#palette.visual.airline_error_inactive = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#old_school#palette.visual.airline_warning_inactive = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#old_school#palette.visual.airline_error_red = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#old_school#palette.visual.airline_warning_red = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#old_school#palette.visual_modified = {
            \ 'airline_c': [ s:visual_mod_fg[0] , s:visual_mod_bg[0] , s:visual_mod_fg[1] , s:visual_mod_bg[1] ] ,
            \ }

" Inactive
let s:IA1 = [ s:inactive_side_fg[0] , s:inactive_side_bg[0] , s:inactive_side_fg[1] , s:inactive_side_bg[1] ]
let s:IA2 = [ s:inactive_sub_fg[0] , s:inactive_sub_bg[0] , s:inactive_sub_fg[1] , s:inactive_sub_bg[1] ]
let s:IA3 = [ s:inactive_mid_fg[0] , s:inactive_mid_bg[0] , s:inactive_mid_fg[1] , s:inactive_mid_bg[1] ]

let g:airline#themes#old_school#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#old_school#palette.inactive.airline_error = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#old_school#palette.inactive.airline_warning = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#old_school#palette.inactive.airline_error_inactive = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#old_school#palette.inactive.airline_warning_inactive = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#old_school#palette.inactive.airline_error_red = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#old_school#palette.inactive.airline_warning_red = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#old_school#palette.inactive_modified = {
            \ 'airline_c': [ s:inactive_mod_fg[0] , s:inactive_mod_bg[0] , s:inactive_mod_fg[1] , s:inactive_mod_bg[1] ] ,
            \ }
"}}}

