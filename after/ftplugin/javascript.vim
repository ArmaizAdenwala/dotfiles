" prettier formatting tool
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['eslint', 'prettier']
let g:ale_fixers['javascriptreact'] = ['eslint', 'prettier']

call jspc#init()
