call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'Lokaltog/vim-easymotion'
Plug 'kien/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'bronson/vim-visual-star-search'
Plug 'dense-analysis/ale'
Plug 'vim-scripts/a.vim'
Plug 'kshenoy/vim-signature'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'justinmk/vim-sneak'
Plug 'ycm-core/YouCompleteMe'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
call plug#end()

filetype on
syntax on
set ignorecase
" set smartcase
set encoding=utf8
set nofoldenable
set confirm
set number
set showmatch
set title
set laststatus=2
set matchtime=2
set ruler
set incsearch
set hls
set cursorline
set autochdir
set backspace=indent,eol,start
set history=1000
set tabstop=4
set shiftwidth=4
set expandtab
set showcmd
if has("gui_running")
  set guifont=Menlo:h18
  set background=light
endif
let g:EasyMotion_leader_key = '<Space>'
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$','\.meta$','\.o$','\.lo$','\.la$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "left"
nmap mm :NERDTreeToggle<cr>

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
autocmd FileType cpp nnoremap gd :YcmCompleter GoTo<cr>
autocmd FileType h nnoremap gd :YcmCompleter GoTo<cr>
autocmd FileType cpp nnoremap gr :YcmCompleter GoToReferences<cr>
autocmd FileType h nnoremap gr :YcmCompleter GoToReferences<cr>

" ctrlp
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store,*.lo,*/build/*,  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_regexp = 1

" searching settings
map gw :call Search_Word()<CR>:copen<CR>
vnoremap gs :<C-u>call VisualStarSearchSet('/')<CR>:execute 'noautocmd vimgrep /' . @/ . './**/*.cpp  ./**/*.h'<CR>:copen<CR>)

function Search_Word()
let w = expand("<cword>") " 在当前光标位置抓词
execute "vimgrep " . '/\<' . w . '\>/' . " ./**/*.cpp ./**/*.h"
endfunction

" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")

let g:lightline = {
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'gitbranch#name'
    \ },
    \ }


" Basic cursor movement and deletion keybindings from emacs, for vim.

" insert mode
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-a> <C-o>:call <SID>home()<CR>
inoremap <C-e> <End>
inoremap <C-d> <Del>
inoremap <C-h> <BS>
inoremap <C-k> <C-r>=<SID>kill_line()<CR>
inoremap <Esc>b <C-o>b
inoremap <Esc>f <C-o>e

" command line mode
cmap <C-p> <Up>
cmap <C-n> <Down>
cmap <C-b> <Left>
cmap <C-f> <Right>
cmap <C-a> <Home>
cmap <C-e> <End>
cnoremap <C-d> <Del>
cnoremap <C-h> <BS>
cnoremap <C-k> <C-f>D<C-c><C-c>:<Up>

" command-T window
let g:CommandTCursorLeftMap  = ['<Left>',  '<C-b>']
let g:CommandTCursorRightMap = ['<Right>', '<C-f>']
let g:CommandTBackspaceMap   = ['<BS>',    '<C-h>']
let g:CommandTDeleteMap      = ['<Del>',   '<C-d>']

function! s:home()
  let start_col = col('.')
  normal! ^
  if col('.') == start_col
    normal! 0
  endif
  return ''
endfunction

function! s:kill_line()
  let [text_before_cursor, text_after_cursor] = s:split_line_text_at_cursor()
  if len(text_after_cursor) == 0
    normal! J
  else
    call setline(line('.'), text_before_cursor)
  endif
  return ''
endfunction

function! s:split_line_text_at_cursor()
  let line_text = getline(line('.'))
  let text_after_cursor  = line_text[col('.')-1 :]
  let text_before_cursor = (col('.') > 1) ? line_text[: col('.')-2] : ''
  return [text_before_cursor, text_after_cursor]
endfunction
