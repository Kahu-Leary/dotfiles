" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " A light and configurable statusline/tabline plugin for vim
    Plug 'itchyny/lightline.vim'
    " Show the current git branch
    Plug 'itchyny/vim-gitbranch'
    " Maximizes and restores the current window in Vim
    Plug 'szw/vim-maximizer'
    " Tmux navigation between windows in Vim
    Plug 'christoomey/vim-tmux-navigator'
    " Terminal inside Vim
    Plug 'kassio/neoterm'
    " Comment and uncomment code in Vim
    Plug 'tpope/vim-commentary'
    " Code formatter
    Plug 'sbdchd/neoformat'
    " fuzzy finding
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    " Git interactions
    Plug 'tpope/vim-fugitive'
    " Show git signs in code
    Plug 'airblade/vim-gitgutter'
    " LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/completion-nvim'
    " Testing
    Plug 'janko/vim-test'
    " Debugger
    Plug 'puremourning/vimspector'
    " Gruvbox colorscheme
    Plug 'gruvbox-community/gruvbox'

call plug#end()
