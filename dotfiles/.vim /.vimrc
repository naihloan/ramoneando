" basics 
syntax on
filetype plugin indent on
set ts=4 sw=4 et " set tabstop=4 shiftwidth=4 expandtab
set spell spelllang=en_us,es
set clipboard=unnamedplus showcmd encoding=utf-8 fileencoding=utf-8 nocompatible
set linebreak
set number relativenumber nobackup nowritebackup noswapfile ignorecase
set omnifunc=htmlcomplete#CompleteTags
set omnifunc=syntaxcomplete#Complete
set shortmess+=A
set wildmode=longest,list,full
set background=dark " for indentguides
set swapfile " set dir=~/tmp
set incsearch
set hlsearch
set foldmethod=indent
" set cursorline
setlocal foldmethod=manual

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" save with ctrl + s
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1
" let g:python_recommended_style=0
" let g:markdown_recommended_style=1
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nnoremap <silent> - s<c-r>=tr(@",'aeioucnAEIOUCNáéíóúçñÁÉÍÓÚÇÑ', 'áéíóúçñÁÉÍÓUÇÑaeioucnAEIOUCN')<cr><esc>
:iabbrev </ </<C-X><C-O>
map <F2> :!wc <C-R>%<CR> " Word count " Get line, word and character counts with F2. " https://www.dralexnorman.net/post/a-literate-vimrc-file/
map <F6> :setlocal spell! spelllang=en,es<CR>
nmap <F3> i<C-R>=strftime("%Y-%m-%d")<CR><Esc> imap <F3> <C-R>=strftime("%Y-%m-%d")<CR> " https://stackoverflow.com/questions/56052/best-way-to-insert-timestamp-in-vim " 

autocmd FileType apache setlocal commentstring=#\ %s " https://github.com/tpope/vim-commentary // gcc +++++++
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd Filetype markdown map <F5> :!pandoc<space><C-r>%<space>-o<space><C-r>%<backspace><backspace><backspace>.pdf<Enter><Enter>
autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
autocmd Filetype markdown map <F9> :!pandoc<space><C-r>%<space>-o<space><C-r>%<backspace><backspace><backspace>.html<space>-s<Enter><Enter> " my script for html template!! 
autocmd BufRead,BufNewFile /tmp/calcurse set filetype#markdown " Make calcurse use markdown by default
autocmd BufRead,BufNewFile ~/.calcurse/notes/* set filetype#markdown


hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=lightgrey
hi clear SpellBad
hi SpellBad cterm=bold cterm=underline  ctermfg=yellow " guifg=yellow 

" execute pathogen#infect()
" call plug#begin('~/.vim/plugged')
" autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" if empty(glob('~/.vim/autoload/plug.vim'))
"   silent execute "!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
"   autocmd VimEnter * PlugInstall | source $MYVIMRC
" endif


let g:bullets_enabled_file_types = ['markdown', 'text', 'gitcommit']

" ******

""".bib
autocmd FileType bib inoremap ,a @article{<Enter><tab>author<Space>=<Space>{  },<Enter>year<Space>=<Space>{  },<Enter>title<Space>=<Space>{  },<Enter>journal<Space>=<Space>{  },<Enter>volume<Space>=<Space>{  },<Enter>pages<Space>=<Space>{  },<Enter>}<Enter><Esc>8kA,<Esc>i
autocmd FileType bib inoremap ,b @book{<Enter>author<Space>=<Space>{},<Enter>year<Space>=<Space>{},<Enter>title<Space>=<Space>{},<Enter>publisher<Space>=<Space>{},<Enter>}<Enter><Esc>6kA,<Esc>i
autocmd FileType bib inoremap ,c @incollection{<Enter>author<Space>=<Space>{<++>},<Enter>title<Space>=<Space>{<++>},<Enter>booktitle<Space>=<Space>{<++>},<Enter>editor<Space>=<Space>{<++>},<Enter>year<Space>=<Space>{<++>},<Enter>publisher<Space>=<Space>{<++>},<Enter>}<Enter><++><Esc>8kA,<Esc>i

" https://vi.stackexchange.com/questions/388/what-is-the-difference-between-the-vim-plugin-managers?noredirect=1&lq=1
call pathogen#infect()
call pathogen#helptags() "If you like to get crazy :)

" " https://vi.stackexchange.com/questions/666/how-to-add-indentation-guides-lines
" set list lcs=tab:\|\
" set cursorcolumn
" set cursorline
" set listchars=tab:\|\ 
" set list

" http://learnvimscriptthehardway.stevelosh.com/chapters/07.html
" this allows direct acces to vimrc from any vim instance
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>eb :vsplit /home/nilon/Public/ramoneando/docs/mybib.bib<cr>
:nnoremap <leader>ei :vsplit /home/nilon/Public/ramoneando/ultra/index.html<cr>

" jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

