":set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set wrap
:set termguicolors
:set linespace=3
":set guicursor=i:block
:set linespace=5
:set showmatch
:set encoding=UTF-8
:set cmdheight=2
:set hls is
" :set smartindent
:set cursorline
"autocmd InsertEnter * highlight CursorLine guibg=#000050 guifg=fg
" autocmd InsertLeave * highlight CursorLine guibg=#E76A08 guifg=fg
:set lsp=6
:set signcolumn=yes










" :set r rate 300 30

"let g:polyglot_disabled = ['markdown']
"let g:polyglot_disabled = ['markdown.plugin']
" let g:polyglot_disabled = ['autoindent']

"lua require('init') 
lua require('abhi/init') 


call plug#begin('~/.config/nvim/plugged')
"Plug 'https://github.com/vim-airline/vim-airline'
"Plug 'https://github.com/preservim/nerdtree'
"Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'} " for file explorer
"Plug 'https://github.com/morhetz/gruvbox'  "Gruvbox theme
"Plug 'drewtempelmeyer/palenight.vim'
"" Plug 'itchyny/lightline.vim' "light line theme
"Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
"Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
"Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin' "Nerd Tree

"Plug 'kdheepak/lazygit.nvim' "git terminal

"Plug 'https://github.com/christoomey/vim-tmux-navigator' "tmux navigator

"Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight' "Nerd tree syntax highlight

"Plug 'tpope/vim-commentary' "another commenter for comment toggler

"Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
"Plug 'https://github.com/ryanoasis/vim-devicons' "devIcons

" Plug 'https://github.com/neoclide/coc.nvim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'https://github.com/neoclide/coc-snippets'
"" Plug 'https://github.com/neoclide/coc-prettier' "prettier extension

"Plug 'https://github.com/mattn/emmet-vim' "emmet plugin

"Plug 'https://github.com/norcalli/nvim-colorizer.lua' "Colorizer


"" Plug 'https://github.com/preservim/nerdcommenter' "nerd commenter

"Plug 'junegunn/goyo.vim'
"Plug 'junegunn/limelight.vim'

"Plug 'ctrlpvim/ctrlp.vim' "file finder


"" Language Syntax Support
"Plug 'yuezk/vim-js'
"Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
"Plug 'jparise/vim-graphql' "graphql syntax highlighting
"Plug 'sheerun/vim-polyglot'
"Plug 'mxw/vim-jsx' "for jsx
"Plug 'suy/vim-context-commentstring' "important for surround
"Plug 'tpope/vim-surround' "for creating surround tags
"Plug 'neoclide/vim-jsx-improve' "for improvment for jsx

""for SCSS
"" Plug 'cakebaker/scss-syntax.vim'
"" Plug 'hail2u/vim-css3-syntax'
"" Plug 'shmargum/vim-sass-colors'

"" Plug 'https://github.com/AndrewRadev/tagalong.vim' "auto rename tag

""Plugin for tabs in neovim
"Plug 'kyazdani42/nvim-web-devicons'
"Plug 'romgrk/barbar.nvim'

set encoding=UTF-8

call plug#end()

"Save the file using Ctrl + s
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a




let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''


"making background Transparent
set background=dark
set termguicolors
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = '#777777'
"hi! Normal ctermbg=NONE guibg=NONE 
"hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

"Settings for telescope vim
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" Use completion-nvim in every buffer
autocmd BufEnter * lua require'completion'.on_attach()
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c









