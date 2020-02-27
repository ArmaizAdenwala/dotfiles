" prettier formatting tool
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['eslint', 'prettier']
let g:ale_fixers['javascriptreact'] = ['eslint', 'prettier']

let g:ale_linters = { 'javascript': ['eslint', 'prettier'] }

call jspc#init()
