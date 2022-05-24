" curl vimplug
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

call plug#begin('$HOME/.local/share/nvim/plugged')
"Plug 'mhinz/vim-startify'
"Plug 'goolord/alpha-nvim'
Plug 'preservim/nerdtree'
Plug 'sickill/vim-monokai'
Plug 'arcticicestudio/nord-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'nvim-telescope/telescope.nvim'
" dashboard-nvim plugs
Plug 'glepnir/dashboard-nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'nvim-telescope/telescope-fzf-native.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
call plug#end()

map <F5> :NERDTreeToggle<CR>
"autocmd VimEnter * NERDTree | wincmd p

let g:airline_powerline_fonts = 1
syntax enable
colorscheme nordic
set number

" system clipboard
set clipboard=unnamedplus

"lua require'alpha'.setup(require'alpha.themes.dashboard'.config)
lua require'colorizer'.setup()

" dashboard-nvim
let g:dashboard_default_executive ='telescope'
let g:mapleader="\<Space>"
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>cn :DashboardNewFile<CR>

" tex mappings
if &filetype ==# 'tex'
  set wrap linebreak
  map <C-s> <ESC>:w<Return>
" insert mode
  imap <C-e> \emph{}<ESC>i
  imap <C-b> \textbf{}<ESC>i
  imap <C-k> \title{}<ESC>i
  imap <C-l> \chapter{}<ESC>i
  imap <C-z> \section*{}<ESC>i
  imap <C-v> \subsection*{}<ESC>i
endif
