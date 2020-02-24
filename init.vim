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
  call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
  call dein#add('mhinz/vim-startify')
  call dein#add('joshdick/onedark.vim')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('tpope/vim-commentary')
  call dein#add('ntpeters/vim-better-whitespace')
  call dein#add('Yggdroot/indentLine')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('luochen1990/rainbow')
  call dein#add('ap/vim-css-color')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('pangloss/vim-javascript', {'lazy': 1, 'on_ft': ['javascript', 'javascript.jsx', 'javascriptreact']})
  call dein#add('othree/jspc.vim', {'lazy': 1, 'on_ft': ['javascript', 'javascript.jsx', 'javascriptreact']})
  call dein#add('othree/javascript-libraries-syntax.vim', {'lazy': 1, 'on_ft': ['javascript', 'javascript.jsx', 'javascriptreact']})
  call dein#add('maxmellon/vim-jsx-pretty', {'lazy': 1, 'on_ft': ['javascript', 'javascript.jsx', 'javascriptreact']})
  call dein#add('HerringtonDarkholme/yats.vim')
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

filetype plugin indent on
syntax on
source $HOME/.config/nvim/modules/theme.vim
