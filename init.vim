set showmatch
set ignorecase
set mouse=v
set hlsearch
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set autoindent
set number
set ruler
set colorcolumn=78
set wildmode=longest,list

if &compatible
  set nocompatible
endif
set encoding=utf8

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  call dein#add('scrooloose/nerdtree')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
  call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
  call dein#add('mhinz/vim-startify')
  call dein#add('rakr/vim-one')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('tpope/vim-commentary')
  call dein#add('ntpeters/vim-better-whitespace')
  call dein#add('Yggdroot/indentLine')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('luochen1990/rainbow')
  call dein#add('ap/vim-css-color')
  call dein#add('dense-analysis/ale')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('pangloss/vim-javascript', {'lazy': 1, 'on_ft': ['javascript', 'javascript.jsx', 'javascriptreact']})
  call dein#add('othree/jspc.vim', {'lazy': 1, 'on_ft': ['javascript', 'javascript.jsx', 'javascriptreact']})
  call dein#add('othree/javascript-libraries-syntax.vim', {'lazy': 1, 'on_ft': ['javascript', 'javascript.jsx', 'javascriptreact']})
  call dein#add('maxmellon/vim-jsx-pretty', {'lazy': 1, 'on_ft': ['javascript', 'javascript.jsx', 'javascriptreact']})
  call dein#add('HerringtonDarkholme/yats.vim')
  call dein#add('leafgarland/typescript-vim')
  call dein#add('zivyangll/git-blame.vim')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('tpope/vim-commentary')
  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif

map <C-n> :NERDTreeToggle<CR>
" autocmd vimenter * NERDTree

nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)
" supercharge FZF
" https://medium.com/@crashybang/supercharge-vim-with-fzf-and-ripgrep-d4661fc853d2
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

nnoremap <c-p> :FZF<cr>
nnoremap <c-g> :Find<cr>

let $FZF_DEFAULT_COMMAND = 'ag -g ""'
augroup fzf
  autocmd!
  autocmd! FileType fzf
  autocmd  FileType fzf set laststatus=0 noshowmode noruler
    \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
augroup END

let g:rainbow_active = 1

autocmd VimEnter *
\   if !argc()
\ |   Startify
\ |   NERDTree
\ |   wincmd w
\ | endif

let g:indentLine_char = '¦'
let g:indentLine_enabled = 1
let g:indentLine_fileTypeExclude = ['help', 'nerdtree', 'startify']
nmap <silent> <leader>ti :IndentLinesToggle<CR>

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)

let g:ale_linters = { 'javascript': ['eslint'] }
let g:ale_sign_column_always = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
nmap <silent> <leader>fp <Plug>(ale_fix)
nmap <silent> <leader>pe <Plug>(ale_previous_wrap)
nmap <silent> <leader>ne <Plug>(ale_next_wrap)

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

let s:orange = 'D4843E'
let s:red = 'FE405F'

let g:NERDTreePatternMatchHighlightColor = {}
let g:NERDTreePatternMatchHighlightColor['.*.md|.*config\.js$'] = s:orange
let g:NERDTreePatternMatchHighlightColor['.*.json$'] = s:red

:autocmd CursorMoved * :call gitblame#echo()

filetype plugin indent on
syntax on
source $HOME/.config/nvim/modules/theme.vim
