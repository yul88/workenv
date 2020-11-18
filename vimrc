call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
"Plug 'iCyMind/NeoSolarized'
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

Plug 'elixir-editors/vim-elixir'
Plug 'elzr/vim-json'
Plug 'fatih/vim-go'
Plug 'kchmck/vim-coffee-script'
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

se t_8f=[38;2;%lu;%lu;%lum
se t_8b=[48;2;%lu;%lu;%lum
se termguicolors
se bg=dark
colo solarized
"colo NeoSolarized

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

