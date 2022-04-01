" curl vimplug
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

call plug#begin('$HOME/.local/share/nvim/plugged')
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'sickill/vim-monokai'
Plug 'tc50cal/vim-terminal'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

map <F5> :NERDTreeToggle<CR>
"autocmd VimEnter * NERDTree | wincmd p

let g:airline_powerline_fonts = 1
syntax enable
colorscheme monokai
