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

filetype plugin indent on
syntax on

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
se sc             " Show (partial) command in status line.
se sm           " Show matching brackets.
se ic          " Do case insensitive matching
se sc           " Do smart case matching
se is           " Incremental search
se aw           " Automatically save before commands like :next and :make
se hid              " Hide buffers when they are abandoned
set mouse=a             " Enable mouse usage (all modes)

"se t_8f=u;%lu;%lum
"se t_8b=u;%lu;%lum
"se tgc
se bg=dark
colo solarized

set title

se ar
se cf
se cpt-=i
"se cuc
se cul
se et
se fdm=syntax
se hls
se lbr
se lz
se ru
se sw=4
se sr
se ts=4
se vb
se wmnu

let mapleader="\<SPACE>"
nnoremap <Leader>fs :w<CR>

se statusline+=%#warningmsg#
se statusline+=%{SyntasticStatuslineFlag()}
se statusline+=%*

"for crontab
autocmd filetype crontab setlocal nobackup nowritebackup

