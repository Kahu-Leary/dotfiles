" Plugins
source $HOME/.config/nvim/vim-plug/plugins.vim

" Defaults
set exrc
set nocompatible
set completeopt=menuone,noinsert,noselect
set mouse=a
set splitright
set splitbelow
set relativenumber
set nu
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set nohlsearch
set ignorecase
set smartcase
set hidden
set noerrorbells
set noswapfile
set nobackup
set undodir=~/.vim/ondodir
set undofile
set incsearch
set diffopt+=vertical
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
set cursorline                          " Enable highlighting of the current line
" Give more space for displaying messages
set cmdheight=2
" Longer updatetime leads to noticeable delays (default is 4000 ms)
set updatetime=50
" Don't pass messages to |ins-completion-menu|
set shortmess+=c

" jk or kj act as Escape when pressed in quick succssesion
inoremap jk <Esc>
inoremap kj <Esc>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

filetype plugin indent on

colorscheme gruvbox
highlight Normal guibg=none

let mapleader = " "

let g:netrw_banner=0
let g:markdown_fenced_languages = ['javascript', 'js=javascript', 'json=javascript']
" lightline and vim git-branch
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }
"let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum]"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum]"
endif
let g:gruvbox_invert_selections='0'

nnoremap <leader>v :e $MYVIMRC<CR>
nnoremap <leader>p :e $HOME/.config/nvim/vim-plug/plugins.vim<CR>

" szw/vim-maximizer
nnoremap <leader>m :MaximizerToggle!<CR>

" kassio/neoterm
let g:neoterm_default_mod = 'vertical'

" let g:neoterm_size = 100
let g:neoterm_autoinsert = 1
let g:neoterm_autoscroll = 1
let g:neoterm_term_per_tab = 1
nnoremap <c-y> :Ttoggle<CR>
inoremap <c-y> <Esc>:Ttoggle<CR>
tnoremap <c-y> <c-\><c-n>:Ttoggle<CR>
nnoremap <leader>x :TREPLSendLine<CR>
vnoremap <leader>x :TREPLSendSelection<CR>

if has('nvim')
  au! TermOpen * tnoremap <buffer> <Esc> <c-\><c-n>
endif

" sbdchd/neoformat
nnoremap <leader>F :Neoformat prettier<CR>

" fzf.vim
nnoremap <leader><space> :GFiles<CR>
nnoremap <leader>ff :Rg<CR>
inoremap <expr><c-x><c-f> fzf#vim#complete#path(
            \ "find . -path '*/\.*' -prune -o -print \| sed '1d;s:^..::'",
            \ fzf#wrap({'dir': expand('%:p:h')}))
if has('nvim')
    au! TermOpen * tnoremap <buffer> <Esc> <c-\><c-n>
    au! FileType fzf tunmap <buffer> <Esc>
endif


" tpope/vim-fugitive
nnoremap <leader>gg :G<cr>
nnoremap <leader>gd :Gdiff master<cr>
nnoremap <leader>gl :G log -100<cr>
nnoremap <leader>gp :G push<cr>

" LSP Imports
"lua require'lspconfig'.html.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

" Keymaps for lsp
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gh     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gH    <cmd>:Telescope lsp_code_actions<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gR    <cmd>lua vim.lsp.buf.rename()<CR>

" janko/vim-test
nnoremap <silent> tt :TestNearest<CR>
nnoremap <silent> tf :TestFile<CR>
nnoremap <silent> ts :TestSuite<CR>
nnoremap <silent> t_ :TestLast<CR>
let test#strategy = "neovim"
let test#neovim#term_position = "vertical"
