" curl vimplug
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

call plug#begin('$HOME/.local/share/nvim/plugged')
"Plug 'mhinz/vim-startify'
"Plug 'goolord/alpha-nvim'
Plug 'preservim/nerdtree'
Plug 'sickill/vim-monokai'
Plug 'arcticicestudio/nord-vim'
Plug 'B4mbus/oxocarbon-lua.nvim'
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

filetype on

map <F5> :NERDTreeToggle<CR>
"autocmd VimEnter * NERDTree | wincmd p

let g:airline_powerline_fonts = 1
syntax enable
colorscheme oxocarbon-lua
set number

let g:tex_flavour = "latex"

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
function! TexBind()
  set wrap linebreak
  map <C-s> <ESC>:w<Return>
" insert mode
  imap <C-a>i \emph{}<ESC>i
  imap <C-a>b \textbf{}<ESC>i
  imap <C-a>t \title{}<ESC>i
  imap <C-a>c \section{}<ESC>i
  imap <C-a>s \section*{}<ESC>i
  imap <C-a>k \subsection*{}<ESC>i
  imap " ``''<ESC>2ha
" visual mode
  vmap <C-a>i xi<C-a>i<ESC>p
  vmap <C-a>b xi<C-a>b<ESC>p
  vmap <C-a>t xi<C-a>t<ESC>p
  vmap <C-a>s xi<C-a>s<ESC>p
  vmap <C-a>k xi<C-a>k<ESC>p
endfunction

function! MdBind()
	set wrap linebreak
	map <C-s> <ESC>:w<Return>
	" insert mode
	imap <C-a>i **<ESC>hi
	imap <C-a>b ****<ESC>hhi
	imap <C-a>t #
	imap <C-a>c ##
	imap <C-a>k ###
	" visual mode
	vmap <C-a>i xi<C-a>i<ESC>p
	vmap <C-a>b xi<C-a>b<ESC>p
	vmap <C-a>t xi<C-a>t<ESC>p
	vmap <C-a>k xi<C-a>k<ESC>p
endfunction

autocmd FileType tex call TexBind()
autocmd FileType markdown call MdBind()
autocmd BufWritePost *.tex execute "!pdflatex %"
