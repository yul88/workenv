call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'

"Plug 'elixir-editors/vim-elixir'
Plug 'elzr/vim-json'
Plug 'fatih/vim-go'
"Plug 'kchmck/vim-coffee-script'
Plug 'hynek/vim-python-pep8-indent'
Plug 'hdima/python-syntax'
Plug 'lifepillar/pgsql.vim'
Plug 'mattn/emmet-vim'
Plug 'nginx/nginx'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'saltstack/salt-vim'
Plug 'vim-ruby/vim-ruby'

call plug#end()

syntax on
filetype plugin indent on

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ignorecase          " Do case insensitive matching
set smartcase           " Do smart case matching
set incsearch           " Incremental search
set autowrite           " Automatically save before commands like :next and :make
set hidden              " Hide buffers when they are abandoned
set mouse=a             " Enable mouse usage (all modes)

"se t_8f=u;%lu;%lum
"se t_8b=u;%lu;%lum
se termguicolors
se bg=dark
colo solarized

se et
se hls
se sw=4
se ts=4

let mapleader="\<SPACE>"
nnoremap <Leader>fs :w<CR>

se statusline+=%#warningmsg#
se statusline+=%{SyntasticStatuslineFlag()}
se statusline+=%*

"for crontab
autocmd filetype crontab setlocal nobackup nowritebackup

