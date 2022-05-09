" curl vimplug
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

call plug#begin('$HOME/.local/share/nvim/plugged')
"Plug 'mhinz/vim-startify'
Plug 'goolord/alpha-nvim'
Plug 'preservim/nerdtree'
Plug 'sickill/vim-monokai'
Plug 'arcticicestudio/nord-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
call plug#end()

map <F5> :NERDTreeToggle<CR>
"autocmd VimEnter * NERDTree | wincmd p

let g:airline_powerline_fonts = 1
syntax enable
colorscheme nordic
set number

set clipboard=unnamedplus

lua require'alpha'.setup(require'alpha.themes.dashboard'.config)
lua require'colorizer'.setup()
