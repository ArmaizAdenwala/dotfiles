" prettier formatting tool
let g:ale_fixers = {}
" let g:ale_fixers['javascript'] = ['eslint', 'prettier']
" let g:ale_fixers['javascriptreact'] = ['eslint', 'prettier']
let g:ale_fixers['javascript'] = ['prettier', 'eslint']
let g:ale_fixers['html'] = ['prettier', 'eslint']

let g:ale_linters = { 'javascript': ['eslint', 'prettier'] }
let g:ale_fix_on_save = 1

autocmd BufWritePre *.js ALEFix

call jspc#init()
