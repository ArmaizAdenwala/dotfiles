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

filetype plugin indent on
syntax on
source $HOME/.config/nvim/modules/theme.vim
