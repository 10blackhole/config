set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2  
set relativenumber
"set virtualedit=all
set background=dark
set cursorline

set laststatus=2
set noshowmode

call plug#begin("~/.vim/plugged")

"Themes
Plug 'morhetz/gruvbox' 
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'tomasr/molokai'
Plug 'NLKNguyen/papercolor-theme'
Plug 'rakr/vim-one'
Plug 'arcticicestudio/nord-vim' "colorscheme nord
Plug 'dylanaraps/wal.vim' " colorscheme wal
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'neovim/nvim-lspconfig'
Plug 'sainnhe/gruvbox-material'
" 
" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator' "Para saltar usar ctrl
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter' "Con space-c-space se cometa la línea
Plug 'ryanoasis/vim-devicons'
Plug 'strboul/urlview.vim'     "Urlview<CR>
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'junegunn/goyo.vim'" 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
"Plug 'mhinz/vim-signify'

"syntax
Plug 'sheerun/vim-polyglot'

" LaTeX
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'lervag/vimtex'

"Julia
Plug 'JuliaEditorSupport/julia-vim'

" typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround' 

" autocomplete
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim' , {'branch': 'release'}

" status bar
Plug 'itchyny/lightline.vim'

call plug#end()

colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE
let g:gruvbox_contsrast_dark = 'hard'
let NERDTreeQuitOnOpen=0
let NERDTreeShowHidden=0
let g:airline_theme='one'
let g:one_allow_italics = 1
"
" Settings og colorscheme one
"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


" set background=light " for the light version

"Mapeos
let mapleader=" "

nmap <leader>s <Plug>(easymotion-s2)
nmap <leader>nt :NERDTree<CR>
nmap <leader>tt :NERDTreeToggle<CR>
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>wq :wq<CR>

" split resize
nnoremap <leader>> 10<C-w>>
nnoremap <leader>< 10<C-w><

" faster scrolling
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>

" Vimtex
nmap <leader>tc :VimtexTocOpen<CR>
nmap <leader>co :VimtexCompile<CR>
"
" Ultisnips
"let g:UltiSnipsExpandTrigger = '<tab>'
"let g:UltiSnipsJumpForwardTrigger = '<tab>'
"let g:UltisnipsBackwardTrigger = '<s-tab>'

" Plantillas
nnoremap <leader>tex :-1read ~/.config/platillas/tex.tex<CR>
nnoremap <leader>tar :-1read ~/.config/platillas/tarea.tex<CR>
nnoremap <leader>graf :-1read ~/.config/platillas/grafico.py<CR>
nnoremap <leader>fig :-1read ~/.config/platillas/fig.tex<CR>
nnoremap <leader>eq :-1read ~/.config/platillas/equation.tex<CR>
nnoremap <leader>al :-1read ~/.config/platillas/align.tex<CR>
nnoremap <leader>3d :-1read ~/.config/platillas/graf3d.py<CR>
nnoremap <leader>html :-1read ~/.config/platillas/index.html<CR>
nnoremap <leader>eqs :-1read ~/.config/platillas/eq-system.tex<CR>

"Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
"Goyo
nnoremap <C-g> :Goyo<CR>

 "Use deoplete.
"let g:deoplete#enable_at_startup = 1
