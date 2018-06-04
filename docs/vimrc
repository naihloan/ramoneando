set background=dark
set termguicolors
set nocompatible " no vi [from previous millenia]
" set clipboard+=unnamed  " use the clipboards of vim and win
" set paste               " Paste from a window or from vim
" set go+=a               " Visual selection automatically copied to the clipboard

colorscheme dejavu
syntax on " same as enable?
:iabbrev </ </<C-X><C-O>
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags

" jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" " https://github.com/mcantor/no_plugins/blob/master/no_plugins.vim
" " https://www.youtube.com/watch?v=XA2WjJbmmoM
" FINDING FILES: " Search down into subfolders " Provides tab-completion for all file-related tasks
set path+=**
" Display all matching files when we tab complete
set wildmenu

" NOW WE CAN: " - Hit tab to :find by partial match " - Use * to make it fuzzy
" THINGS TO CONSIDER: " - :b lets you autocomplete any open buffer

" AUTOCOMPLETE: The good stuff is documented in |ins-completion| " HIGHLIGHTS:
" - ^x^n for JUST this file
" - ^x^f for filenames (works with our path trick!)
" - ^x^] for tags only
" - ^n for anything specified by the 'complete' option
" NOW WE CAN: - Use ^n and ^p to go back and forth in the suggestion list

filetype plugin on
set linebreak
set number
set relativenumber
set nobackup
set nowritebackup
set noswapfile
set nobackup
set shortmess+=A
set clipboard=unnamedplus
set omnifunc=htmlcomplete#CompleteTags
call plug#begin('~/.vim/plugged')
"
" set swapfile
" set dir=~/tmp
syntax on
execute pathogen#infect()
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
" filenames like *.xml, *.html, *.xhtml, ...
" let g:closetag_filenames = "*.html,*.xhtml,*.phtml"
" autocmd vimenter * NERDTree
" instead of NERDTree the following can find: any file!!
" http://yannesposito.com/Scratch/en/blog/Vim-as-IDE/
" https://github.com/ggreer/the_silver_searcher
let g:ackprg = 'ag --nogroup --nocolor --column'

