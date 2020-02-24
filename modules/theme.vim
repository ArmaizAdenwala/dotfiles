colorscheme one
set background=dark
let g:one_allow_italics = 1
let g:airline_theme='one'

hi Comment guifg=#5C6370 ctermfg=59
hi Comment cterm=italic

if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
