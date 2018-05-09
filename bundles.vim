set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=/etc/vim/bundle
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'

"------------------
" golang
"------------------
"Plugin 'nsf/gocode'
"Plugin 'dgryski/vim-godef'
"Plugin 'fatih/vim-go'

"------------------
" Code Completions
"------------------
Plugin 'Shougo/neocomplcache'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
" Plugin 'honza/snipmate-snippets'
" Plugin 'mattn/zencoding-vim'
" Plugin 'Raimondi/delimitMate'
"------ snipmate dependencies -------
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'

"-----------------
" Fast navigation
"-----------------
"Plugin 'tsaleh/vim-matchit'
Plugin 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'sjl/gundo.vim'
Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'

"--------------
" IDE features
"--------------
Plugin 'scrooloose/nerdtree'
" Plugin 'humiaozuzu/TabBar'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'vim-scripts/winmanager'
Plugin 'vim-scripts/a.vim'
Plugin 'bronson/vim-visual-star-search'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'kshenoy/vim-signature'

"-------------
" Other Utils
"-------------
" Plugin 'humiaozuzu/fcitx-status'
" Plugin 'nvie/vim-togglemouse'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
"------- web backend ---------
Plugin '2072/PHP-Indenting-for-VIm'
"Plugin 'tpope/vim-rails'
"Plugin 'lepture/vim-jinja'
"Plugin 'digitaltoad/vim-jade'

"------- web frontend ----------
Plugin 'othree/html5.vim'
" Plugin 'tpope/vim-haml'
Plugin 'pangloss/vim-javascript'
" Plugin 'kchmck/vim-coffee-script'
Plugin 'nono/jquery.vim'
" Plugin 'groenewege/vim-less'
" Plugin 'wavded/vim-stylus'
" Plugin 'nono/vim-handlebars'
Plugin 'leafgarland/typescript-vim'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'clausreinke/typescript-tools.vim'

"------- markup language -------
Plugin 'tpope/vim-markdown'
" Plugin 'timcharper/textile.vim'

"------- Ruby --------
" Plugin 'tpope/vim-endwise'

"------- Go ----------
" Plugin 'jnwhiteh/vim-golang'

"------- Lisp --------
Plugin 'kovisoft/slimv'

"------- FPs ------
Plugin 'kien/rainbow_parentheses.vim'
" Plugin 'wlangstroth/vim-racket'
" Plugin 'vim-scripts/VimClojure'
" Plugin 'rosstimson/scala-vim-support'
"

"--------------
" Color Schemes
"--------------
Plugin 'rickharris/vim-blackboard'
" Plugin 'altercation/vim-colors-solarized'
Plugin 'rickharris/vim-monokai'
Plugin 'tpope/vim-vividchalk'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'fisadev/fisa-vim-colorscheme'
call vundle#end()

filetype plugin indent on     " required!
