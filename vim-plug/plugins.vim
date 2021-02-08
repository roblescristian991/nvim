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
    
    " Dracula theme
    "Plug 'dracula/vim'
    
    " ALE (C/C++ Linter)
    "Plug 'dense-analysis/ale'
    
    " YouCompleteMe
    "Plug 'ycm-core/YouCompleteMe'
    
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    
    " Dark+ theme
    Plug 'tomasiser/vim-code-dark'
    Plug 'dunstontc/vim-vscode-theme'
    
    " C++ Syntax highlighting
    "Plug 'bfrg/vim-cpp-modern'
    
    " Rainbow Pairs
    Plug 'oblitum/rainbow'
    
    " PHP syntax highlighting
    Plug 'StanAngeloff/php.vim', {'for': 'php'}

    call plug#end()
