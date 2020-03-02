let g:ale_fixers = {}
let g:ale_fixers['html'] = ['prettier', 'eslint']

let g:ale_linters = { 'html': ['eslint', 'prettier'] }
let g:ale_fix_on_save = 1

