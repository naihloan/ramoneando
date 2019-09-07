SCRIPT  /home/nilon/.vimrc
Sourced 1 time
Total time:   0.209347
 Self time:   0.035370

count  total (s)   self (s)
                            
                            "  http://spf13.com
                            
                            " Environment {
                            
                                " Identify platform {
    1              0.000006         silent function! OSX()
                                        return has('macunix')
                                    endfunction
    1              0.000004         silent function! LINUX()
                                        return has('unix') && !has('macunix') && !has('win32unix')
                                    endfunction
    1              0.000002         silent function! WINDOWS()
                                        return  (has('win32') || has('win64'))
                                    endfunction
                                " }
                            
                                " Basics {
    1              0.000124         set nocompatible        " Must be first line
    1   0.000038   0.000026         if !WINDOWS()
    1              0.000004             set shell=/bin/sh
    1              0.000002         endif
                                " }
                            
                                " Windows Compatible {
                                    " On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
                                    " across (heterogeneous) systems easier.
    1   0.000010   0.000004         if WINDOWS()
                                      set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
                                    endif
                                " }
                            
                                " Arrow Key Fix {
                                    " https://github.com/spf13/spf13-vim/issues/780
    1              0.000007         if &term[:4] == "xterm" || &term[:5] == 'screen' || &term[:3] == 'rxvt'
    1              0.000010             inoremap <silent> <C-[>OC <RIGHT>
    1              0.000001         endif
                                " }
                            
                            " }
                            
                            " Use before config if available {
    1              0.000025     if filereadable(expand("~/.vimrc.before"))
    1              0.000027         source ~/.vimrc.before
    1              0.000001     endif
                            " }
                            
                            " Use bundles config {
    1              0.000017     if filereadable(expand("~/.vimrc.bundles"))
    1              0.000022         source ~/.vimrc.bundles
    1              0.000002     endif
                            " }
                            
                            " General {
                            
    1              0.000179     set background=dark         " Assume a dark background
                            
                                " Allow to trigger background
    1              0.000004     function! ToggleBG()
                                    let s:tbg = &background
                                    " Inversion
                                    if s:tbg == "dark"
                                        set background=light
                                    else
                                        set background=dark
                                    endif
                                endfunction
    1              0.000016     noremap <leader>bg :call ToggleBG()<CR>
                            
                                " if !has('gui')
                                    "set term=$TERM          " Make arrow and other keys work
                                " endif
    1              0.000493     filetype plugin indent on   " Automatically detect file types.
    1              0.000038     syntax on                   " Syntax highlighting
    1              0.000004     set mouse=a                 " Automatically enable mouse usage
    1              0.000003     set mousehide               " Hide the mouse cursor while typing
    1              0.000003     scriptencoding utf-8
                            
    1              0.000004     if has('clipboard')
    1              0.000004         if has('unnamedplus')  " When possible use + register for copy-paste
    1              0.000005             set clipboard=unnamed,unnamedplus
    1              0.000002         else         " On mac and Windows, use * register for copy-paste
                                        set clipboard=unnamed
                                    endif
    1              0.000001     endif
                            
                                " Most prefer to automatically switch to the current file directory when
                                " a new buffer is opened; to prevent this behavior, add the following to
                                " your .vimrc.before.local file:
                                "   let g:spf13_no_autochdir = 1
    1              0.000004     if !exists('g:spf13_no_autochdir')
    1              0.000008         autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif
                                    " Always switch to the current file directory
    1              0.000001     endif
                            
                                "set autowrite                       " Automatically write a file when leaving a modified buffer
    1              0.000005     set shortmess+=filmnrxoOtT          " Abbrev. of messages (avoids 'hit enter')
    1              0.000005     set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
    1              0.000005     set virtualedit=onemore             " Allow for cursor beyond last character
    1              0.000004     set history=1000                    " Store a ton of history (default is 20)
                                " set spelllang=es
                                " setlocal spell spelllang=es
    1              0.014222     set spell                           " Spell checking on
    1              0.012906     set spelllang=en_us,es        " Spanish/Español "
                                " set spelllang=en_us        " Spanish/Español "
                                " set spell spelllang=es        " Spanish/Español "
    1              0.000007     set hidden                          " Allow buffer switching without saving
    1              0.000042     set iskeyword-=.                    " '.' is an end of word designator
    1              0.000036     set iskeyword-=#                    " '#' is an end of word designator
    1              0.000035     set iskeyword-=-                    " '-' is an end of word designator
                            
                                " Instead of reverting the cursor to the last position in the buffer, we
                                " set it to the first line when editing a git commit message
    1              0.000018     au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])
                            
                                " http://vim.wikia.com/wiki/Restore_cursor_to_file_position_in_previous_editing_session
                                " Restore cursor to file position in previous editing session
                                " To disable this, add the following to your .vimrc.before.local file:
                                "   let g:spf13_no_restore_cursor = 1
    1              0.000012     if !exists('g:spf13_no_restore_cursor')
    1              0.000005         function! ResCur()
                                        if line("'\"") <= line("$")
                                            silent! normal! g`"
                                            return 1
                                        endif
                                    endfunction
                            
    1              0.000003         augroup resCur
    1              0.000179             autocmd!
    1              0.000009             autocmd BufWinEnter * call ResCur()
    1              0.000002         augroup END
    1              0.000002     endif
                            
                                " Setting up the directories {
    1              0.000003         set backup                  " Backups are nice ...
    1              0.000007         if has('persistent_undo')
    1              0.000004             set undofile                " So is persistent undo ...
    1              0.000005             set undolevels=1000         " Maximum number of changes that can be undone
    1              0.000002             set undoreload=10000        " Maximum number lines to save for undo on a buffer reload
    1              0.000002         endif
                            
                                    " To disable views add the following to your .vimrc.before.local file:
                                    "   let g:spf13_no_views = 1
    1              0.000004         if !exists('g:spf13_no_views')
                                        " Add exclusions to mkview and loadview
                                        " eg: *.*, svn-commit.tmp
    1              0.000008             let g:skipview_files = [
                                            \ '\[example pattern\]'
                                            \ ]
    1              0.000002         endif
                                " }
                            
                            " }
                            
                            " Vim UI {
                            
    1              0.000037     if !exists('g:override_spf13_bundles') && filereadable(expand("~/.vim/bundle/vim-colors-solarized/colors/solarized.vim"))
    1              0.000004         let g:solarized_termcolors=256
    1              0.000004         let g:solarized_termtrans=1
    1              0.000003         let g:solarized_contrast="normal"
    1              0.000003         let g:solarized_visibility="normal"
                                    " color solarized             " Load a colorscheme
                                    " color matrix
                                    " color torte
                                    " color evening
                                    " color murphy
                                    " color zenburn
    1              0.000218         color koehler
                            
                            " set termguicolors
                            " colorscheme herokudoc " +++ very neat and bright +++ " LAST colorscheme is valid ** BEST CHOICE FOR LONG TIME, and yet looking for alternatives
                            " colorscheme onedark "+++ good Balance!! nice but poor highlight
                            " colorscheme monochrome " + pretty cool actually!!
                             
                            " colorscheme solarized " classic
                            " colorscheme Base2Tone_EveningDark " great contrast but orange
                            " colorscheme magicwb " great grey background some colors too light
                            " colorscheme Base2Tone_LakeDark " blueparagraphs +contrast. yellow
                            " colorscheme Base2Tone_ForestDark " +++ yellow power
                            " colorscheme detailed " good contrast. a bit darkcolorscheme lucius " good but lacks contrast 
                            " colorscheme materialbox " Smooth
                             
                            " colorscheme 1989 " material-monokai
                            " colorscheme matrix " AWESOME but no highlight
                            " colorscheme dejavu " PERFECT but no spelling marks
                            " colorscheme seoul256 " mustard " SerialExperimentsLain
                            " colorscheme meta5 " orange but brown? install!!
                            " colorscheme smyck " no highlight in paragraph " install!!
                            " More COLORSCHEMES " deus " stellarized_dark " synthwave " xedit " vrunchbang-dark " subtle_dark " relaxedgreen " alchemie " plain " papaya " shadesofamber " blueprint " seagrey-dark " forgotten-dark "  rupza "  northpole "  perun "  lucariox "  typewriter-night "  bdconry "  duoduo
                            
                            " https://github.com/vim-scripts/ScrollColors >> Command :SCROLL 
                            " shortlist 2018-12-15 [240 colors]
                            " 11 adrian | matrix like ++++++++ " doesn't show type errors ----
                            " 18 astronaut | matrix like ++++++++ " doesn't show type errors ----
                            " 26 bigbang | matrix like ++++++++ " doesn't show type errors ----
                            " 92 gentooish ! simple black and white with proper highlights ++++ 
                            " 95 greenwint | simple with highlights, perhaps too monochrome ++
                            " 111 kellys ++
                            " 144 mustard | light-blue background ++
                            
                            " 1 1989
                            " 11 adrian | matrix like ++++++++ " doesn't show type errors ----
                            " 18 astronaut | matrix like ++++++++ " doesn't show type errors ----
                            " 26 bigbang | matrix like ++++++++ " doesn't show type errors ----
                            " 50 darkblue
                            " 66 deus | has highlights
                            " 79 elflord
                            " 92 gentooish ! simple black and white with proper highlights ++++ 
                            " 95 greenwint | simple with highlights, perhaps too monochrome ++
                            " 97 gruvbox | nice yellow paper style but light background 
                            " 101 herokudoc | grey neat background
                            " 110 jellybeans
                            " 111 kellys ++
                            " 124 masmed | blueprint
                            " 125 material-monokai | blueprint
                            " 128 matrix
                            " 135 mizore matrix aqua
                            " 144 mustard | light-blue background ++
                            " 188 sea | blueprint | no highlight
                            " 201 solarized
                            " 206 subtle dark
                            " 209 synthwave
                            " 210 tabula | green background smooth
                            " 215 tesla | dark blue background very calm
                            " 223 vimhut | purplish neat 
                            " 223 vividchalk | similar prior more contrast
                            " 231 wood | almost brown grayscale
                            " 232 wuye | shows line by line very nitid
                            " 237 zenburn
                            
    1              0.000002     endif
                            
                                " ColorStepper Keys
    1              0.000012     nmap <F6> <Plug>ColorstepPrev
    1              0.000010     nmap <F7> <Plug>ColorstepNext
    1              0.000010     nmap <S-F7> <Plug>ColorstepReload
                            
                                " ColorStepper
    1              0.000032     source ~/.vim/bundle/colorstepper/colorstepper.vim
                            
    1              0.000005     set tabpagemax=15               " Only show 15 tabs
    1              0.000003     set showmode                    " Display the current mode
    1              0.000003     set cursorline                  " Highlight current line
                            
    1              0.000004     highlight clear SignColumn      " SignColumn should match background
    1              0.000002     highlight clear LineNr          " Current line number row will have same background color in relative mode
                                "highlight clear CursorLineNr    " Remove highlight color from current line number
                            
    1              0.000005     if has('cmdline_info')
    1              0.000003         set ruler                   " Show the ruler
    1              0.000006         set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
    1              0.000002         set showcmd                 " Show partial commands in status line and
                                                                " Selected characters/lines in visual mode
    1              0.000002     endif
                            
    1              0.000004     if has('statusline')
    1              0.000007         set laststatus=2
                            
                                    " Broken down into easily includeable segments
    1              0.000003         set statusline=%<%f\                     " Filename
    1              0.000004         set statusline+=%w%h%m%r                 " Options
    1              0.000005         if !exists('g:override_spf13_bundles')
    1              0.000004             set statusline+=%{fugitive#statusline()} " Git Hotness
    1              0.000002         endif
    1              0.000004         set statusline+=\ [%{&ff}/%Y]            " Filetype
    1              0.000004         set statusline+=\ [%{getcwd()}]          " Current dir
    1              0.000004         set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
    1              0.000002     endif
                            
    1              0.000004     set backspace=indent,eol,start  " Backspace for dummies
    1              0.000003     set linespace=0                 " No extra spaces between rows
    1              0.000002     set number                      " Line numbers on
    1              0.000003     set relativenumber              " Line numbers addendum
    1              0.000002     set showmatch                   " Show matching brackets/parenthesis
    1              0.000002     set incsearch                   " Find as you type search
    1              0.000002     set hlsearch                    " Highlight search terms
    1              0.000003     set winminheight=0              " Windows can be 0 line high
    1              0.000002     set ignorecase                  " Case insensitive search
    1              0.000002     set smartcase                   " Case sensitive when uc present
    1              0.000002     set wildmenu                    " Show list instead of just completing
    1              0.000003     set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
    1              0.000004     set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
    1              0.000002     set scrolljump=5                " Lines to scroll when cursor leaves screen
    1              0.000002     set scrolloff=3                 " Minimum lines to keep above and below cursor
    1              0.000003     set foldenable                  " Auto fold code    " M
    1              0.000002     set list
    1              0.000007     set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
                            
                            " }
                            
                            " Formatting {
                            
    1              0.000002     set wrap                        " Do wrap long lines
                                " set nowrap                    " Do not wrap long lines
                                " set tw:79                       " textwith so that lines don't go on openly
                                " set fo-=1                       " when text is added this cuts the line " vim wiki 
                                " set textwidth=80                " textwith so that lines don't go on openly
    1              0.000003     set autoindent                  " Indent at the same level of the previous line
    1              0.000002     set shiftwidth=4                " Use indents of 4 spaces
    1              0.000003     set expandtab                   " Tabs are spaces, not tabs
    1              0.000003     set tabstop=4                   " An indentation every four columns
    1              0.000005     set softtabstop=4               " Let backspace delete indent
    1              0.000003     set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J) " M
    1              0.000002     set splitright                  " Puts new vsplit windows to the right of the current
    1              0.000003     set splitbelow                  " Puts new split windows to the bottom of the current
                                "set matchpairs+=<:>             " Match, to be used with %
    1              0.000005     set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)
                                "set comments=sl:/*,mb:*,elx:*/  " auto format comment blocks
                                " Remove trailing whitespaces and ^M chars
                                " To disable the stripping of whitespace, add the following to your
                                " .vimrc.before.local file:
                                "   let g:spf13_keep_trailing_whitespace = 1
                                " autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl,sql autocmd BufWritePre <buffer> if !exists('g:spf13_keep_trailing_whitespace') | call StripTrailingWhitespace() | endif
                                "autocmd FileType go autocmd BufWritePre <buffer> Fmt
    1              0.000094     autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig
    1              0.000017     autocmd FileType haskell,puppet,ruby,yml setlocal expandtab shiftwidth=2 softtabstop=2
                                " preceding line best in a plugin but here for now.
                            
                                " autocmd BufNewFile,BufRead *.coffee set filetype=coffee
                            
                                " Workaround vim-commentary for Haskell
    1              0.000007     autocmd FileType haskell setlocal commentstring=--\ %s
                                " Workaround broken colour highlighting in Haskell
    1              0.000007     autocmd FileType haskell,rust setlocal nospell
                            
                            " }
                            
                            " Key (re)Mappings {
                            
                                " The default leader is '\', but many people prefer ',' as it's in a standard
                                " location. To override this behavior and set it back to '\' (or any other
                                " character) add the following to your .vimrc.before.local file:
                                "   let g:spf13_leader='\'
    1              0.000005     if !exists('g:spf13_leader')
    1              0.000004         let mapleader = ','
    1              0.000001     else
                                    let mapleader=g:spf13_leader
                                endif
    1              0.000004     if !exists('g:spf13_localleader')
    1              0.000003         let maplocalleader = '_'
    1              0.000001     else
                                    let maplocalleader=g:spf13_localleader
                                endif
                            
                                " The default mappings for editing and applying the spf13 configuration
                                " are <leader>ev and <leader>sv respectively. Change them to your preference
                                " by adding the following to your .vimrc.before.local file:
                                "   let g:spf13_edit_config_mapping='<leader>ec'
                                "   let g:spf13_apply_config_mapping='<leader>sc'
    1              0.000004     if !exists('g:spf13_edit_config_mapping')
    1              0.000004         let s:spf13_edit_config_mapping = '<leader>ev'
    1              0.000002     else
                                    let s:spf13_edit_config_mapping = g:spf13_edit_config_mapping
                                endif
    1              0.000004     if !exists('g:spf13_apply_config_mapping')
    1              0.000004         let s:spf13_apply_config_mapping = '<leader>sv'
    1              0.000002     else
                                    let s:spf13_apply_config_mapping = g:spf13_apply_config_mapping
                                endif
                            
                                " Easier moving in tabs and windows
                                " The lines conflict with the default digraph mapping of <C-K>
                                " If you prefer that functionality, add the following to your
                                " .vimrc.before.local file:
                                "   let g:spf13_no_easyWindows = 1
    1              0.000004     if !exists('g:spf13_no_easyWindows')
    1              0.000008         map <C-J> <C-W>j<C-W>_
    1              0.000006         map <C-K> <C-W>k<C-W>_
    1              0.000005         map <C-L> <C-W>l<C-W>_
    1              0.000005         map <C-H> <C-W>h<C-W>_
    1              0.000002     endif
                            
                                " Wrapped lines goes down/up to next row, rather than next line in file.
    1              0.000005     noremap j gj
    1              0.000005     noremap k gk
                            
                                " End/Start of line motion keys act relative to row/wrap width in the
                                " presence of `:set wrap`, and relative to line for `:set nowrap`.
                                " Default vim behaviour is to act relative to text line in both cases
                                " If you prefer the default behaviour, add the following to your
                                " .vimrc.before.local file:
                                "   let g:spf13_no_wrapRelMotion = 1
    1              0.000004     if !exists('g:spf13_no_wrapRelMotion')
                                    " Same for 0, home, end, etc
    1              0.000004         function! WrapRelativeMotion(key, ...)
                                        let vis_sel=""
                                        if a:0
                                            let vis_sel="gv"
                                        endif
                                        if &wrap
                                            execute "normal!" vis_sel . "g" . a:key
                                        else
                                            execute "normal!" vis_sel . a:key
                                        endif
                                    endfunction
                            
                                    " Map g* keys in Normal, Operator-pending, and Visual+select
    1              0.000013         noremap $ :call WrapRelativeMotion("$")<CR>
    1              0.000012         noremap <End> :call WrapRelativeMotion("$")<CR>
    1              0.000010         noremap 0 :call WrapRelativeMotion("0")<CR>
    1              0.000012         noremap <Home> :call WrapRelativeMotion("0")<CR>
    1              0.000009         noremap ^ :call WrapRelativeMotion("^")<CR>
                                    " Overwrite the operator pending $/<End> mappings from above
                                    " to force inclusive motion with :execute normal!
    1              0.000011         onoremap $ v:call WrapRelativeMotion("$")<CR>
    1              0.000010         onoremap <End> v:call WrapRelativeMotion("$")<CR>
                                    " Overwrite the Visual+select mode mappings from above
                                    " to ensure the correct vis_sel flag is passed to function
    1              0.000011         vnoremap $ :<C-U>call WrapRelativeMotion("$", 1)<CR>
    1              0.000010         vnoremap <End> :<C-U>call WrapRelativeMotion("$", 1)<CR>
    1              0.000009         vnoremap 0 :<C-U>call WrapRelativeMotion("0", 1)<CR>
    1              0.000010         vnoremap <Home> :<C-U>call WrapRelativeMotion("0", 1)<CR>
    1              0.000009         vnoremap ^ :<C-U>call WrapRelativeMotion("^", 1)<CR>
    1              0.000001     endif
                            
                                " The following two lines conflict with moving to top and
                                " bottom of the screen
                                " If you prefer that functionality, add the following to your
                                " .vimrc.before.local file:
    1              0.000004       let g:spf13_no_fastTabs = 1
    1              0.000004     if !exists('g:spf13_no_fastTabs')
                                    map <S-H> gT
                                    map <S-L> gt
                                endif
                            
                                " Stupid shift key fixes
    1              0.000003     if !exists('g:spf13_no_keyfixes')
    1              0.000006         if has("user_commands")
    1              0.000011             command! -bang -nargs=* -complete=file E e<bang> <args>
    1              0.000011             command! -bang -nargs=* -complete=file W w<bang> <args>
    1              0.000010             command! -bang -nargs=* -complete=file Wq wq<bang> <args>
    1              0.000010             command! -bang -nargs=* -complete=file WQ wq<bang> <args>
    1              0.000007             command! -bang Wa wa<bang>
    1              0.000007             command! -bang WA wa<bang>
    1              0.000005             command! -bang Q q<bang>
    1              0.000006             command! -bang QA qa<bang>
    1              0.000007             command! -bang Qa qa<bang>
    1              0.000002         endif
                            
    1              0.000007         cmap Tabe tabe
    1              0.000002     endif
                            
                                " Yank from the cursor to the end of the line, to be consistent with C and D.
    1              0.000005     nnoremap Y y$
                            
                                " Code folding options
    1              0.000011     nmap <leader>f0 :set foldlevel=0<CR>
    1              0.000009     nmap <leader>f1 :set foldlevel=1<CR>
    1              0.000009     nmap <leader>f2 :set foldlevel=2<CR>
    1              0.000009     nmap <leader>f3 :set foldlevel=3<CR>
    1              0.000008     nmap <leader>f4 :set foldlevel=4<CR>
    1              0.000009     nmap <leader>f5 :set foldlevel=5<CR>
    1              0.000009     nmap <leader>f6 :set foldlevel=6<CR>
    1              0.000008     nmap <leader>f7 :set foldlevel=7<CR>
    1              0.000008     nmap <leader>f8 :set foldlevel=8<CR>
    1              0.000009     nmap <leader>f9 :set foldlevel=9<CR>
                            
                                " Most prefer to toggle search highlighting rather than clear the current
                                " search results. To clear search highlighting rather than toggle it on
                                " and off, add the following to your .vimrc.before.local file:
                                "   let g:spf13_clear_search_highlight = 1
    1              0.000005     if exists('g:spf13_clear_search_highlight')
                                    nmap <silent> <leader>/ :nohlsearch<CR>
                                else
    1              0.000009         nmap <silent> <leader>/ :set invhlsearch<CR>
    1              0.000002     endif
                            
                            
                                " Find merge conflict markers
    1              0.000011     map <leader>fc /\v^[<\|=>]{7}( .*\|$)<CR>
                            
                                " Shortcuts
                                " Change Working Directory to that of the current file
    1              0.000007     cmap cwd lcd %:p:h
    1              0.000008     cmap cd. lcd %:p:h
                            
                                " Visual shifting (does not exit Visual mode)
    1              0.000005     vnoremap < <gv
    1              0.000005     vnoremap > >gv
                            
                                " Allow using the repeat operator with a visual selection (!)
                                " http://stackoverflow.com/a/8064607/127816
    1              0.000006     vnoremap . :normal .<CR>
                            
                                " For when you forget to sudo.. Really Write the file.
    1              0.000008     cmap w!! w !sudo tee % >/dev/null
                            
                                " Some helpers to edit mode
                                " http://vimcasts.org/e/14
    1              0.000011     cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
    1              0.000009     map <leader>ew :e %%
    1              0.000007     map <leader>es :sp %%
    1              0.000008     map <leader>ev :vsp %%
    1              0.000007     map <leader>et :tabe %%
                            
                                " Adjust viewports to the same size
    1              0.000007     map <Leader>= <C-w>=
                            
                                " Map <Leader>ff to display all lines with keyword under cursor
                                " and ask which one to jump to
    1              0.000017     nmap <Leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>
                            
                                " Easier horizontal scrolling
    1              0.000005     map zl zL
    1              0.000004     map zh zH
                            
                                " Easier formatting
    1              0.000008     nnoremap <silent> <leader>q gwip
                            
                                " FIXME: Revert this f70be548
                                " fullscreen mode for GVIM and Terminal, need 'wmctrl' in you PATH
    1              0.000015     map <silent> <F11> :call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")<CR>
                            
                            " }
                            
                            " Plugins {
                            
                                " GoLang {
    1              0.000006         if count(g:spf13_bundle_groups, 'go')
                                        let g:go_highlight_functions = 1
                                        let g:go_highlight_methods = 1
                                        let g:go_highlight_structs = 1
                                        let g:go_highlight_operators = 1
                                        let g:go_highlight_build_constraints = 1
                                        let g:go_fmt_command = "goimports"
                                        let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
                                        let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
                                        au FileType go nmap <Leader>s <Plug>(go-implements)
                                        au FileType go nmap <Leader>i <Plug>(go-info)
                                        au FileType go nmap <Leader>e <Plug>(go-rename)
                                        au FileType go nmap <leader>r <Plug>(go-run)
                                        au FileType go nmap <leader>b <Plug>(go-build)
                                        au FileType go nmap <leader>t <Plug>(go-test)
                                        au FileType go nmap <Leader>gd <Plug>(go-doc)
                                        au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
                                        au FileType go nmap <leader>co <Plug>(go-coverage)
                                    endif
                                    " }
                            
                            
                                " TextObj Sentence {
    1              0.000004         if count(g:spf13_bundle_groups, 'writing')
    1              0.000003             augroup textobj_sentence
    1              0.000054               autocmd!
    1              0.000010               autocmd FileType markdown call textobj#sentence#init()
    1              0.000006               autocmd FileType textile call textobj#sentence#init()
    1              0.000006               autocmd FileType text call textobj#sentence#init()
    1              0.000001             augroup END
    1              0.000001         endif
                                " }
                            
                                " TextObj Quote {
    1              0.000004         if count(g:spf13_bundle_groups, 'writing')
    1              0.000002             augroup textobj_quote
    1              0.000044                 autocmd!
    1              0.000006                 autocmd FileType markdown call textobj#quote#init()
    1              0.000005                 autocmd FileType textile call textobj#quote#init()
    1              0.000006                 autocmd FileType text call textobj#quote#init({'educate': 0})
    1              0.000002             augroup END
    1              0.000001         endif
                                " }
                            
                                " PIV {
    1              0.000018         if isdirectory(expand("~/.vim/bundle/PIV"))
    1              0.000004             let g:DisableAutoPHPFolding = 0
    1              0.000003             let g:PIVAutoClose = 0
    1              0.000001         endif
                                " }
                            
                                " Misc {
    1              0.000012         if isdirectory(expand("~/.vim/bundle/nerdtree"))
    1              0.000003             let g:NERDShutUp=1
    1              0.000001         endif
    1              0.000041         if isdirectory(expand("~/.vim/bundle/matchit.zip"))
    1              0.000005             let b:match_ignorecase = 1
    1              0.000001         endif
                                " }
                            
                                " OmniComplete {
                                    " To disable omni complete, add the following to your .vimrc.before.local file:
                                    "   let g:spf13_no_omni_complete = 1
    1              0.000005         if !exists('g:spf13_no_omni_complete')
    1              0.000006             if has("autocmd") && exists("+omnifunc")
    1              0.000012                 autocmd Filetype *
                                                \if &omnifunc == "" |
                                                \setlocal omnifunc=syntaxcomplete#Complete |
                                                \endif
    1              0.000002             endif
                            
    1              0.000012             hi Pmenu  guifg=#000000 guibg=#F8F8F8 ctermfg=black ctermbg=Lightgray
    1              0.000020             hi PmenuSbar  guifg=#8A95A7 guibg=#F8F8F8 gui=NONE ctermfg=darkcyan ctermbg=lightgray cterm=NONE
    1              0.000007             hi PmenuThumb  guifg=#F8F8F8 guibg=#8A95A7 gui=NONE ctermfg=lightgray ctermbg=darkcyan cterm=NONE
                            
                                        " Some convenient mappings
                                        "inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
    1              0.000005             if exists('g:spf13_map_cr_omni_complete')
                                            inoremap <expr> <CR>     pumvisible() ? "\<C-y>" : "\<CR>"
                                        endif
    1              0.000013             inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
    1              0.000011             inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
    1              0.000012             inoremap <expr> <C-d>      pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<C-d>"
    1              0.000011             inoremap <expr> <C-u>      pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<C-u>"
                            
                                        " Automatically open and close the popup menu / preview window
    1              0.000011             au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
    1              0.000006             set completeopt=menu,preview,longest
    1              0.000001         endif
                                " }
                            
                                " Ctags {
    1              0.000005         set tags=./tags;/,~/.vimtags
                            
                                    " Make tags placed in .git/tags file available in all levels of a repository
    1   0.007395   0.000265         let gitroot = substitute(system('git rev-parse --show-toplevel'), '[\n\r]', '', 'g')
    1              0.000015         if gitroot != ''
                                        let &tags = &tags . ',' . gitroot . '/.git/tags'
                                    endif
                                " }
                            
                                " AutoCloseTag {
                                    " Make it so AutoCloseTag works for xml and xhtml files as well
    1              0.000023         au FileType xhtml,xml ru ftplugin/html/autoclosetag.vim
    1              0.000030         nmap <Leader>ac <Plug>ToggleAutoCloseMappings
                                " }
                            
                                " SnipMate {
                                    " Setting the author var
                                    " If forking, please overwrite in your .vimrc.local file
    1              0.000006         let g:snips_author = 'Steve Francia <steve.francia@gmail.com>'
                                " }
                            
                                " NerdTree {
    1              0.000027         if isdirectory(expand("~/.vim/bundle/nerdtree"))
    1              0.000016             map <C-e> <plug>NERDTreeTabsToggle<CR>
    1              0.000013             map <leader>e :NERDTreeFind<CR>
    1              0.000012             nmap <leader>nt :NERDTreeFind<CR>
                            
    1              0.000005             let NERDTreeShowBookmarks=1
    1              0.000009             let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
    1              0.000003             let NERDTreeChDirMode=0
    1              0.000003             let NERDTreeQuitOnOpen=1
    1              0.000003             let NERDTreeMouseMode=2
    1              0.000003             let NERDTreeShowHidden=1
    1              0.000003             let NERDTreeKeepTreeInNewTab=1
    1              0.000004             let g:nerdtree_tabs_open_on_gui_startup=0
    1              0.000002         endif
                                " }
                            
                                " Tabularize {
    1              0.000017         if isdirectory(expand("~/.vim/bundle/tabular"))
    1              0.000012             nmap <Leader>a& :Tabularize /&<CR>
    1              0.000012             vmap <Leader>a& :Tabularize /&<CR>
    1              0.000013             nmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
    1              0.000012             vmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
    1              0.000011             nmap <Leader>a=> :Tabularize /=><CR>
    1              0.000011             vmap <Leader>a=> :Tabularize /=><CR>
    1              0.000010             nmap <Leader>a: :Tabularize /:<CR>
    1              0.000009             vmap <Leader>a: :Tabularize /:<CR>
    1              0.000011             nmap <Leader>a:: :Tabularize /:\zs<CR>
    1              0.000010             vmap <Leader>a:: :Tabularize /:\zs<CR>
    1              0.000010             nmap <Leader>a, :Tabularize /,<CR>
    1              0.000010             vmap <Leader>a, :Tabularize /,<CR>
    1              0.000011             nmap <Leader>a,, :Tabularize /,\zs<CR>
    1              0.000010             vmap <Leader>a,, :Tabularize /,\zs<CR>
    1              0.000011             nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
    1              0.000011             vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
    1              0.000001         endif
                                " }
                            
                                " Session List {
    1              0.000054         set sessionoptions=blank,buffers,curdir,folds,tabpages,winsize
    1              0.000024         if isdirectory(expand("~/.vim/bundle/sessionman.vim/"))
    1              0.000014             nmap <leader>sl :SessionList<CR>
    1              0.000010             nmap <leader>ss :SessionSave<CR>
    1              0.000011             nmap <leader>sc :SessionClose<CR>
    1              0.000002         endif
                                " }
                            
                                " JSON {
    1              0.000019         nmap <leader>jt <Esc>:%!python -m json.tool<CR><Esc>:set filetype=json<CR>
    1              0.000005         let g:vim_json_syntax_conceal = 0
                                " }
                            
                                " PyMode {
                                    " Disable if python support not present
    1              0.000011         if !has('python') && !has('python3')
                                        let g:pymode = 0
                                    endif
                            
    1              0.000017         if isdirectory(expand("~/.vim/bundle/python-mode"))
    1              0.000004             let g:pymode_lint_checkers = ['pyflakes']
    1              0.000004             let g:pymode_trim_whitespaces = 0
    1              0.000003             let g:pymode_options = 0
    1              0.000002             let g:pymode_rope = 0
    1              0.000002         endif
                                " }
                            
                                " ctrlp {
    1              0.000015         if isdirectory(expand("~/.vim/bundle/ctrlp.vim/"))
    1              0.000004             let g:ctrlp_working_path_mode = 'ra'
    1              0.000010             nnoremap <silent> <D-t> :CtrlP<CR>
    1              0.000010             nnoremap <silent> <D-r> :CtrlPMRU<CR>
    1              0.000011             let g:ctrlp_custom_ignore = {
                                            \ 'dir':  '\.git$\|\.hg$\|\.svn$',
                                            \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }
                            
    1              0.000025             if executable('ag')
                                            let s:ctrlp_fallback = 'ag %s --nocolor -l -g ""'
                                        elseif executable('ack-grep')
                                            let s:ctrlp_fallback = 'ack-grep %s --nocolor -f'
                                        elseif executable('ack')
                                            let s:ctrlp_fallback = 'ack %s --nocolor -f'
                                        " On Windows use "dir" as fallback command.
                                        elseif WINDOWS()
                                            let s:ctrlp_fallback = 'dir %s /-n /b /s /a-d'
                                        else
    1              0.000004                 let s:ctrlp_fallback = 'find %s -type f'
    1              0.000002             endif
    1              0.000004             if exists("g:ctrlp_user_command")
                                            unlet g:ctrlp_user_command
                                        endif
    1              0.000032             let g:ctrlp_user_command = {
                                            \ 'types': {
                                                \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
                                                \ 2: ['.hg', 'hg --cwd %s locate -I .'],
                                            \ },
                                            \ 'fallback': s:ctrlp_fallback
                                        \ }
                            
    1              0.000018             if isdirectory(expand("~/.vim/bundle/ctrlp-funky/"))
                                            " CtrlP extensions
    1              0.000006                 let g:ctrlp_extensions = ['funky']
                            
                                            "funky
    1              0.000013                 nnoremap <Leader>fu :CtrlPFunky<Cr>
    1              0.000001             endif
    1              0.000002         endif
                                "}
                            
                                " TagBar {
    1              0.000023         if isdirectory(expand("~/.vim/bundle/tagbar/"))
    1              0.000013             nnoremap <silent> <leader>tt :TagbarToggle<CR>
    1              0.000002         endif
                                "}
                            
                                " Rainbow {
    1              0.000015         if isdirectory(expand("~/.vim/bundle/rainbow/"))
    1              0.000006             let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
    1              0.000001         endif
                                "}
                            
                                " Fugitive {
    1              0.000015         if isdirectory(expand("~/.vim/bundle/vim-fugitive/"))
    1              0.000013             nnoremap <silent> <leader>gs :Gstatus<CR>
    1              0.000011             nnoremap <silent> <leader>gd :Gdiff<CR>
    1              0.000011             nnoremap <silent> <leader>gc :Gcommit<CR>
    1              0.000010             nnoremap <silent> <leader>gb :Gblame<CR>
    1              0.000010             nnoremap <silent> <leader>gl :Glog<CR>
    1              0.000010             nnoremap <silent> <leader>gp :Git push<CR>
    1              0.000011             nnoremap <silent> <leader>gr :Gread<CR>
    1              0.000009             nnoremap <silent> <leader>gw :Gwrite<CR>
    1              0.000010             nnoremap <silent> <leader>ge :Gedit<CR>
                                        " Mnemonic _i_nteractive
    1              0.000010             nnoremap <silent> <leader>gi :Git add -p %<CR>
    1              0.000012             nnoremap <silent> <leader>gg :SignifyToggle<CR>
    1              0.000002         endif
                                "}
                            
                                " YouCompleteMe {
    1              0.000009         if count(g:spf13_bundle_groups, 'youcompleteme')
                                        let g:acp_enableAtStartup = 0
                            
                                        " enable completion from tags
                                        let g:ycm_collect_identifiers_from_tags_files = 1
                            
                                        " remap Ultisnips for compatibility for YCM
                                        let g:UltiSnipsExpandTrigger = '<C-j>'
                                        let g:UltiSnipsJumpForwardTrigger = '<C-j>'
                                        let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
                            
                                        " Enable omni completion.
                                        autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
                                        autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
                                        autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
                                        autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
                                        autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
                                        autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
                                        autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
                            
                                        " Haskell post write lint and check with ghcmod
                                        " $ `cabal install ghcmod` if missing and ensure
                                        " ~/.cabal/bin is in your $PATH.
                                        if !executable("ghcmod")
                                            autocmd BufWritePost *.hs GhcModCheckAndLintAsync
                                        endif
                            
                                        " For snippet_complete marker.
                                        if !exists("g:spf13_no_conceal")
                                            if has('conceal')
                                                set conceallevel=2 concealcursor=i
                                            endif
                                        endif
                            
                                        " Disable the neosnippet preview candidate window
                                        " When enabled, there can be too much visual noise
                                        " especially when splits are used.
                                        set completeopt-=preview
                                    endif
                                " }
                            
                                " neocomplete {
    1              0.000004         if count(g:spf13_bundle_groups, 'neocomplete')
    1              0.000006             let g:acp_enableAtStartup = 0
    1              0.000005             let g:neocomplete#enable_at_startup = 1
    1              0.000004             let g:neocomplete#enable_smart_case = 1
    1              0.000004             let g:neocomplete#enable_auto_delimiter = 1
    1              0.000003             let g:neocomplete#max_list = 15
    1              0.000004             let g:neocomplete#force_overwrite_completefunc = 1
                            
                            
                                        " Define dictionary.
    1              0.000011             let g:neocomplete#sources#dictionary#dictionaries = {
                                                    \ 'default' : '',
                                                    \ 'vimshell' : $HOME.'/.vimshell_hist',
                                                    \ 'scheme' : $HOME.'/.gosh_completions'
                                                    \ }
                            
                                        " Define keyword.
    1              0.000006             if !exists('g:neocomplete#keyword_patterns')
    1              0.000004                 let g:neocomplete#keyword_patterns = {}
    1              0.000001             endif
    1              0.000005             let g:neocomplete#keyword_patterns['default'] = '\h\w*'
                            
                                        " Plugin key-mappings {
                                            " These two lines conflict with the default digraph mapping of <C-K>
    1              0.000004                 if !exists('g:spf13_no_neosnippet_expand')
    1              0.000015                     imap <C-k> <Plug>(neosnippet_expand_or_jump)
    1              0.000014                     smap <C-k> <Plug>(neosnippet_expand_or_jump)
    1              0.000001                 endif
    1              0.000004                 if exists('g:spf13_noninvasive_completion')
                                                inoremap <CR> <CR>
                                                " <ESC> takes you out of insert mode
                                                inoremap <expr> <Esc>   pumvisible() ? "\<C-y>\<Esc>" : "\<Esc>"
                                                " <CR> accepts first, then sends the <CR>
                                                inoremap <expr> <CR>    pumvisible() ? "\<C-y>\<CR>" : "\<CR>"
                                                " <Down> and <Up> cycle like <Tab> and <S-Tab>
                                                inoremap <expr> <Down>  pumvisible() ? "\<C-n>" : "\<Down>"
                                                inoremap <expr> <Up>    pumvisible() ? "\<C-p>" : "\<Up>"
                                                " Jump up and down the list
                                                inoremap <expr> <C-d>   pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<C-d>"
                                                inoremap <expr> <C-u>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<C-u>"
                                            else
                                                " <C-k> Complete Snippet
                                                " <C-k> Jump to next snippet point
    1              0.000029                     imap <silent><expr><C-k> neosnippet#expandable() ?
                                                            \ "\<Plug>(neosnippet_expand_or_jump)" : (pumvisible() ?
                                                            \ "\<C-e>" : "\<Plug>(neosnippet_expand_or_jump)")
    1              0.000012                     smap <TAB> <Right><Plug>(neosnippet_jump_or_expand)
                            
    1              0.000010                     inoremap <expr><C-g> neocomplete#undo_completion()
    1              0.000010                     inoremap <expr><C-l> neocomplete#complete_common_string()
                                                "inoremap <expr><CR> neocomplete#complete_common_string()
                            
                                                " <CR>: close popup
                                                " <s-CR>: close popup and save indent.
    1              0.000014                     inoremap <expr><s-CR> pumvisible() ? neocomplete#smart_close_popup()."\<CR>" : "\<CR>"
                            
    1              0.000004                     function! CleverCr()
                                                    if pumvisible()
                                                        if neosnippet#expandable()
                                                            let exp = "\<Plug>(neosnippet_expand)"
                                                            return exp . neocomplete#smart_close_popup()
                                                        else
                                                            return neocomplete#smart_close_popup()
                                                        endif
                                                    else
                                                        return "\<CR>"
                                                    endif
                                                endfunction
                            
                                                " <CR> close popup and save indent or expand snippet
    1              0.000008                     imap <expr> <CR> CleverCr()
                                                " <C-h>, <BS>: close popup and delete backword char.
    1              0.000010                     inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
    1              0.000010                     inoremap <expr><C-y> neocomplete#smart_close_popup()
    1              0.000001                 endif
                                            " <TAB>: completion.
    1              0.000008                 inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
    1              0.000009                 inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"
                            
                                            " Courtesy of Matteo Cavalleri
                            
    1              0.000002                 function! CleverTab()
                                                if pumvisible()
                                                    return "\<C-n>"
                                                endif
                                                let substr = strpart(getline('.'), 0, col('.') - 1)
                                                let substr = matchstr(substr, '[^ \t]*$')
                                                if strlen(substr) == 0
                                                    " nothing to match on empty string
                                                    return "\<Tab>"
                                                else
                                                    " existing text matching
                                                    if neosnippet#expandable_or_jumpable()
                                                        return "\<Plug>(neosnippet_expand_or_jump)"
                                                    else
                                                        return neocomplete#start_manual_complete()
                                                    endif
                                                endif
                                            endfunction
                            
    1              0.000022                 imap <expr> <Tab> CleverTab()
                                        " }
                            
                                        " Enable heavy omni completion.
    1              0.000006             if !exists('g:neocomplete#sources#omni#input_patterns')
    1              0.000004                 let g:neocomplete#sources#omni#input_patterns = {}
    1              0.000001             endif
    1              0.000004             let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
    1              0.000004             let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
    1              0.000004             let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
    1              0.000004             let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
    1              0.000003             let g:neocomplete#sources#omni#input_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'
                                " }
                                " neocomplcache {
    1              0.000003         elseif count(g:spf13_bundle_groups, 'neocomplcache')
                                        let g:acp_enableAtStartup = 0
                                        let g:neocomplcache_enable_at_startup = 1
                                        let g:neocomplcache_enable_camel_case_completion = 1
                                        let g:neocomplcache_enable_smart_case = 1
                                        let g:neocomplcache_enable_underbar_completion = 1
                                        let g:neocomplcache_enable_auto_delimiter = 1
                                        let g:neocomplcache_max_list = 15
                                        let g:neocomplcache_force_overwrite_completefunc = 1
                            
                                        " Define dictionary.
                                        let g:neocomplcache_dictionary_filetype_lists = {
                                                    \ 'default' : '',
                                                    \ 'vimshell' : $HOME.'/.vimshell_hist',
                                                    \ 'scheme' : $HOME.'/.gosh_completions'
                                                    \ }
                            
                                        " Define keyword.
                                        if !exists('g:neocomplcache_keyword_patterns')
                                            let g:neocomplcache_keyword_patterns = {}
                                        endif
                                        let g:neocomplcache_keyword_patterns._ = '\h\w*'
                            
                                        " Plugin key-mappings {
                                            " These two lines conflict with the default digraph mapping of <C-K>
                                            imap <C-k> <Plug>(neosnippet_expand_or_jump)
                                            smap <C-k> <Plug>(neosnippet_expand_or_jump)
                                            if exists('g:spf13_noninvasive_completion')
                                                inoremap <CR> <CR>
                                                " <ESC> takes you out of insert mode
                                                inoremap <expr> <Esc>   pumvisible() ? "\<C-y>\<Esc>" : "\<Esc>"
                                                " <CR> accepts first, then sends the <CR>
                                                inoremap <expr> <CR>    pumvisible() ? "\<C-y>\<CR>" : "\<CR>"
                                                " <Down> and <Up> cycle like <Tab> and <S-Tab>
                                                inoremap <expr> <Down>  pumvisible() ? "\<C-n>" : "\<Down>"
                                                inoremap <expr> <Up>    pumvisible() ? "\<C-p>" : "\<Up>"
                                                " Jump up and down the list
                                                inoremap <expr> <C-d>   pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<C-d>"
                                                inoremap <expr> <C-u>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<C-u>"
                                            else
                                                imap <silent><expr><C-k> neosnippet#expandable() ?
                                                            \ "\<Plug>(neosnippet_expand_or_jump)" : (pumvisible() ?
                                                            \ "\<C-e>" : "\<Plug>(neosnippet_expand_or_jump)")
                                                smap <TAB> <Right><Plug>(neosnippet_jump_or_expand)
                            
                                                inoremap <expr><C-g> neocomplcache#undo_completion()
                                                inoremap <expr><C-l> neocomplcache#complete_common_string()
                                                "inoremap <expr><CR> neocomplcache#complete_common_string()
                            
                                                function! CleverCr()
                                                    if pumvisible()
                                                        if neosnippet#expandable()
                                                            let exp = "\<Plug>(neosnippet_expand)"
                                                            return exp . neocomplcache#close_popup()
                                                        else
                                                            return neocomplcache#close_popup()
                                                        endif
                                                    else
                                                        return "\<CR>"
                                                    endif
                                                endfunction
                            
                                                " <CR> close popup and save indent or expand snippet
                                                imap <expr> <CR> CleverCr()
                            
                                                " <CR>: close popup
                                                " <s-CR>: close popup and save indent.
                                                inoremap <expr><s-CR> pumvisible() ? neocomplcache#close_popup()."\<CR>" : "\<CR>"
                                                "inoremap <expr><CR> pumvisible() ? neocomplcache#close_popup() : "\<CR>"
                            
                                                " <C-h>, <BS>: close popup and delete backword char.
                                                inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
                                                inoremap <expr><C-y> neocomplcache#close_popup()
                                            endif
                                            " <TAB>: completion.
                                            inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
                                            inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"
                                        " }
                            
                                        " Enable omni completion.
                                        autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
                                        autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
                                        autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
                                        autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
                                        autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
                                        autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
                                        autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
                            
                                        " Enable heavy omni completion.
                                        if !exists('g:neocomplcache_omni_patterns')
                                            let g:neocomplcache_omni_patterns = {}
                                        endif
                                        let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
                                        let g:neocomplcache_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
                                        let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
                                        let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
                                        let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'
                                        let g:neocomplcache_omni_patterns.go = '\h\w*\.\?'
                                " }
                                " Normal Vim omni-completion {
                                " To disable omni complete, add the following to your .vimrc.before.local file:
                                "   let g:spf13_no_omni_complete = 1
                                    elseif !exists('g:spf13_no_omni_complete')
                                        " Enable omni-completion.
                                        autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
                                        autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
                                        autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
                                        autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
                                        autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
                                        autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
                                        autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
                            
                                    endif
                                " }
                            
                                " Snippets {
    1              0.000007         if count(g:spf13_bundle_groups, 'neocomplcache') ||
                                                \ count(g:spf13_bundle_groups, 'neocomplete')
                            
                                        " Use honza's snippets.
    1              0.000003             let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
                            
                                        " Enable neosnippet snipmate compatibility mode
    1              0.000003             let g:neosnippet#enable_snipmate_compatibility = 1
                            
                                        " For snippet_complete marker.
    1              0.000003             if !exists("g:spf13_no_conceal")
    1              0.000004                 if has('conceal')
    1              0.000009                     set conceallevel=2 concealcursor=i
    1              0.000002                 endif
    1              0.000001             endif
                            
                                        " Enable neosnippets when using go
    1              0.000003             let g:go_snippet_engine = "neosnippet"
                            
                                        " Disable the neosnippet preview candidate window
                                        " When enabled, there can be too much visual noise
                                        " especially when splits are used.
    1              0.000006             set completeopt-=preview
    1              0.000001         endif
                                " }
                            
                                " FIXME: Isn't this for Syntastic to handle?
                                " Haskell post write lint and check with ghcmod
                                " $ `cabal install ghcmod` if missing and ensure
                                " ~/.cabal/bin is in your $PATH.
    1              0.000016     if !executable("ghcmod")
    1              0.000013         autocmd BufWritePost *.hs GhcModCheckAndLintAsync
    1              0.000001     endif
                            
                                " UndoTree {
    1              0.000016         if isdirectory(expand("~/.vim/bundle/undotree/"))
    1              0.000013             nnoremap <Leader>u :UndotreeToggle<CR>
                                        " If undotree is opened, it is likely one wants to interact with it.
    1              0.000003             let g:undotree_SetFocusWhenToggle=1
    1              0.000001         endif
                                " }
                            
                                " indent_guides {
    1              0.000014         if isdirectory(expand("~/.vim/bundle/vim-indent-guides/"))
    1              0.000003             let g:indent_guides_start_level = 2
    1              0.000002             let g:indent_guides_guide_size = 1
    1              0.000002             let g:indent_guides_enable_on_vim_startup = 1
    1              0.000001         endif
                                " }
                            
                                " Wildfire {
    1              0.000008     let g:wildfire_objects = {
                                            \ "*" : ["i'", 'i"', "i)", "i]", "i}", "ip"],
                                            \ "html,xml" : ["at"],
                                            \ }
                                " }
                            
                                " vim-airline {
                                    " Set configuration options for the statusline plugin vim-airline.
                                    " Use the powerline theme and optionally enable powerline symbols.
                                    " To use the symbols , , , , , , and .in the statusline
                                    " segments add the following to your .vimrc.before.local file:
                                    "   let g:airline_powerline_fonts=1
                                    " If the previous symbols do not render for you then install a
                                    " powerline enabled font.
                            
                                    " See `:echo g:airline_theme_map` for some more choices
                                    " Default in terminal vim is 'dark'
    1              0.000015         if isdirectory(expand("~/.vim/bundle/vim-airline-themes/"))
    1              0.000003             if !exists('g:airline_theme')
    1              0.000003                 let g:airline_theme = 'solarized'
    1              0.000001             endif
    1              0.000004             if !exists('g:airline_powerline_fonts')
                                            " Use the default set of separators with a few customizations
    1              0.000003                 let g:airline_left_sep='›'  " Slightly fancier than '>'
    1              0.000003                 let g:airline_right_sep='‹' " Slightly fancier than '<'
    1              0.000001             endif
    1              0.000001         endif
                                " }
                            
                            " }
                            
                            " GUI Settings {
                            
                                " GVIM- (here instead of .gvimrc)
    1              0.000005     if has('gui_running')
                                    set guioptions-=T           " Remove the toolbar
                                    set lines=40                " 40 lines of text instead of 24
                                    if !exists("g:spf13_no_big_font")
                                        if LINUX() && has("gui_running")
                                            set guifont=Andale\ Mono\ Regular\ 12,Menlo\ Regular\ 11,Consolas\ Regular\ 12,Courier\ New\ Regular\ 14
                                        elseif OSX() && has("gui_running")
                                            set guifont=Andale\ Mono\ Regular:h12,Menlo\ Regular:h11,Consolas\ Regular:h12,Courier\ New\ Regular:h14
                                        elseif WINDOWS() && has("gui_running")
                                            set guifont=Andale_Mono:h10,Menlo:h10,Consolas:h10,Courier_New:h10
                                        endif
                                    endif
                                else
    1              0.000004         if &term == 'xterm' || &term == 'screen'
                                        set t_Co=256            " Enable 256 colors to stop the CSApprox warning and make xterm vim shine
                                    endif
                                    "set term=builtin_ansi       " Make arrow and other keys work
    1              0.000001     endif
                            
                            " }
                            
                            " Functions {
                            
                                " Initialize directories {
    1              0.000003     function! InitializeDirectories()
                                    let parent = $HOME
                                    let prefix = 'vim'
                                    let dir_list = {
                                                \ 'backup': 'backupdir',
                                                \ 'views': 'viewdir',
                                                \ 'swap': 'directory' }
                            
                                    if has('persistent_undo')
                                        let dir_list['undo'] = 'undodir'
                                    endif
                            
                                    " To specify a different directory in which to place the vimbackup,
                                    " vimviews, vimundo, and vimswap files/directories, add the following to
                                    " your .vimrc.before.local file:
                                    "   let g:spf13_consolidated_directory = <full path to desired directory>
                                    "   eg: let g:spf13_consolidated_directory = $HOME . '/.vim/'
                                    if exists('g:spf13_consolidated_directory')
                                        let common_dir = g:spf13_consolidated_directory . prefix
                                    else
                                        let common_dir = parent . '/.' . prefix
                                    endif
                            
                                    for [dirname, settingname] in items(dir_list)
                                        let directory = common_dir . dirname . '/'
                                        if exists("*mkdir")
                                            if !isdirectory(directory)
                                                call mkdir(directory)
                                            endif
                                        endif
                                        if !isdirectory(directory)
                                            echo "Warning: Unable to create backup directory: " . directory
                                            echo "Try: mkdir -p " . directory
                                        else
                                            let directory = substitute(directory, " ", "\\\\ ", "g")
                                            exec "set " . settingname . "=" . directory
                                        endif
                                    endfor
                                endfunction
    1   0.000243   0.000007     call InitializeDirectories()
                                " }
                            
                                " Initialize NERDTree as needed {
    1              0.000003     function! NERDTreeInitAsNeeded()
                                    redir => bufoutput
                                    buffers!
                                    redir END
                                    let idx = stridx(bufoutput, "NERD_tree")
                                    if idx > -1
                                        NERDTreeMirror
                                        NERDTreeFind
                                        wincmd l
                                    endif
                                endfunction
                                " }
                            
                                " Strip whitespace {
    1              0.000002     function! StripTrailingWhitespace()
                                    " Preparation: save last search, and cursor position.
                                    let _s=@/
                                    let l = line(".")
                                    let c = col(".")
                                    " do the business:
                                    %s/\s\+$//e
                                    " clean up: restore previous search history, and cursor position
                                    let @/=_s
                                    call cursor(l, c)
                                endfunction
                                " }
                            
                                " Shell command {
    1              0.000004     function! s:RunShellCommand(cmdline)
                                    botright new
                            
                                    setlocal buftype=nofile
                                    setlocal bufhidden=delete
                                    setlocal nobuflisted
                                    setlocal noswapfile
                                    " setlocal nowrap
                                    setlocal filetype=shell
                                    setlocal syntax=shell
                            
                                    call setline(1, a:cmdline)
                                    call setline(2, substitute(a:cmdline, '.', '=', 'g'))
                                    execute 'silent $read !' . escape(a:cmdline, '%#')
                                    setlocal nomodifiable
                                    1
                                endfunction
                            
    1              0.000016     command! -complete=file -nargs=+ Shell call s:RunShellCommand(<q-args>)
                                " e.g. Grep current file for <search_term>: Shell grep -Hn <search_term> %
                                " }
                            
    1              0.000003     function! s:IsSpf13Fork()
                                    let s:is_fork = 0
                                    let s:fork_files = ["~/.vimrc.fork", "~/.vimrc.before.fork", "~/.vimrc.bundles.fork"]
                                    for fork_file in s:fork_files
                                        if filereadable(expand(fork_file, ":p"))
                                            let s:is_fork = 1
                                            break
                                        endif
                                    endfor
                                    return s:is_fork
                                endfunction
                                 
    1              0.000003     function! s:ExpandFilenameAndExecute(command, file)
                                    execute a:command . " " . expand(a:file, ":p")
                                endfunction
                                 
    1              0.000002     function! s:EditSpf13Config()
                                    call <SID>ExpandFilenameAndExecute("tabedit", "~/.vimrc")
                                    call <SID>ExpandFilenameAndExecute("vsplit", "~/.vimrc.before")
                                    call <SID>ExpandFilenameAndExecute("vsplit", "~/.vimrc.bundles")
                                 
                                    execute bufwinnr(".vimrc") . "wincmd w"
                                    call <SID>ExpandFilenameAndExecute("split", "~/.vimrc.local")
                                    wincmd l
                                    call <SID>ExpandFilenameAndExecute("split", "~/.vimrc.before.local")
                                    wincmd l
                                    call <SID>ExpandFilenameAndExecute("split", "~/.vimrc.bundles.local")
                                 
                                    if <SID>IsSpf13Fork()
                                        execute bufwinnr(".vimrc") . "wincmd w"
                                        call <SID>ExpandFilenameAndExecute("split", "~/.vimrc.fork")
                                        wincmd l
                                        call <SID>ExpandFilenameAndExecute("split", "~/.vimrc.before.fork")
                                        wincmd l
                                        call <SID>ExpandFilenameAndExecute("split", "~/.vimrc.bundles.fork")
                                    endif
                                 
                                    execute bufwinnr(".vimrc.local") . "wincmd w"
                                endfunction
                                 
    1              0.000023     execute "noremap " . s:spf13_edit_config_mapping " :call <SID>EditSpf13Config()<CR>"
    1              0.000015     execute "noremap " . s:spf13_apply_config_mapping . " :source ~/.vimrc<CR>"
                            " }
                            
                            " Use fork vimrc if available {
    1              0.000018     if filereadable(expand("~/.vimrc.fork"))
                                    source ~/.vimrc.fork
                                endif
                            " }
                            
                            " Use local vimrc if available {
    1              0.000018     if filereadable(expand("~/.vimrc.local"))
    1              0.000028         source ~/.vimrc.local
    1              0.000002     endif
                            " }
                            
                            " Use local gvimrc if available and gui is running {
    1              0.000008     if has('gui_running')
                                    if filereadable(expand("~/.gvimrc.local"))
                                        source ~/.gvimrc.local
                                    endif
                                endif
                            " }
                            
                            " Agregar acentos con facilidad
    1              0.000022 nnoremap <silent> - s<c-r>=tr(@",'aeioucnAEIOUCNáéíóúçñÁÉÍÓÚÇÑ', 'áéíóúçñÁÉÍÓUÇÑaeioucnAEIOUCN')<cr><esc>
    1              0.000004 :iabbrev </ </<C-X><C-O>
                            
    1              0.000006 hi IndentGuidesOdd  ctermbg=black
    1              0.000004 hi IndentGuidesEven ctermbg=lightgrey
    1              0.000002 hi clear SpellBad
    1              0.000005 hi SpellBad cterm=bold cterm=underline  ctermfg=yellow " guifg=yellow 
                            
                            
    1              0.000007 autocmd Filetype markdown map <F5> :!pandoc<space><C-r>%<space>-o<space><C-r>%<backspace><backspace><backspace>.pdf<Enter><Enter>
    1              0.000007 autocmd Filetype markdown map <F9> :!pandoc<space><C-r>%<space>-o<space><C-r>%<backspace><backspace><backspace>.html<space>-s<Enter><Enter> " my script for html template!! 
                            
                            
                            "
                            "         ___ _ __  / _/ |___ /      __   __(_)_ __ ___
                            "        / __| '_ \| |_| | |_ \ _____\ \ / /| | '_ ` _ \
                            "        \__ \ |_) |  _| |___) |_____|\ V / | | | | | | |
                            "        |___/ .__/|_| |_|____/        \_/  |_|_| |_| |_|
                            "            |_|
                            "
                            " Modeline and Notes {
                            " vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker spell:
                            "                    __ _ _____              _
                            "   This is the personal .vimrc file of Steve Francia.
                            "   While much of it is beneficial for general use, I would
                            "   recommend picking out the parts you want and understand.
                            "
                            "   You can find me at http://spf13.com
                            "
                            "   Copyright 2014 Steve Francia
                            "
                            "   Licensed under the Apache License, Version 2.0 (the "License");
                            "   you may not use this file except in compliance with the License.
                            "   You may obtain a copy of the License at
                            "
                            "       http://www.apache.org/licenses/LICENSE-2.0
                            "
                            "   Unless required by applicable law or agreed to in writing, software
                            "   distributed under the License is distributed on an "AS IS" BASIS,
                            "   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
                            "   See the License for the specific language governing permissions and
                            "   limitations under the License.
                            " }

FUNCTION  <SNR>3_ExpandFilenameAndExecute()
Called 0 times
Total time:   0.000000
 Self time:   0.000000

count  total (s)   self (s)
                                    execute a:command . " " . expand(a:file, ":p")

FUNCTION  InitializeDirectories()
Called 1 time
Total time:   0.000236
 Self time:   0.000236

count  total (s)   self (s)
    1              0.000003         let parent = $HOME
    1              0.000002         let prefix = 'vim'
    1              0.000006         let dir_list = { 'backup': 'backupdir', 'views': 'viewdir', 'swap': 'directory' }
                            
    1              0.000004         if has('persistent_undo')
    1              0.000004             let dir_list['undo'] = 'undodir'
    1              0.000001         endif
                            
                                    " To specify a different directory in which to place the vimbackup,
                                    " vimviews, vimundo, and vimswap files/directories, add the following to
                                    " your .vimrc.before.local file:
                                    "   let g:spf13_consolidated_directory = <full path to desired directory>
                                    "   eg: let g:spf13_consolidated_directory = $HOME . '/.vim/'
    1              0.000006         if exists('g:spf13_consolidated_directory')
                                        let common_dir = g:spf13_consolidated_directory . prefix
                                    else
    1              0.000004             let common_dir = parent . '/.' . prefix
    1              0.000001         endif
                            
    5              0.000015         for [dirname, settingname] in items(dir_list)
    4              0.000013             let directory = common_dir . dirname . '/'
    4              0.000012             if exists("*mkdir")
    4              0.000019                 if !isdirectory(directory)
                                                call mkdir(directory)
                                            endif
    4              0.000004             endif
    4              0.000015             if !isdirectory(directory)
                                            echo "Warning: Unable to create backup directory: " . directory
                                            echo "Try: mkdir -p " . directory
                                        else
    4              0.000027                 let directory = substitute(directory, " ", "\\\\ ", "g")
    4              0.000033                 exec "set " . settingname . "=" . directory
    4              0.000003             endif
    4              0.000005         endfor

FUNCTION  CleverTab()
Called 0 times
Total time:   0.000000
 Self time:   0.000000

count  total (s)   self (s)
                                                if pumvisible()
                                                    return "\<C-n>"
                                                endif
                                                let substr = strpart(getline('.'), 0, col('.') - 1)
                                                let substr = matchstr(substr, '[^ \t]*$')
                                                if strlen(substr) == 0
                                                    " nothing to match on empty string
                                                    return "\<Tab>"
                                                else
                                                    " existing text matching
                                                    if neosnippet#expandable_or_jumpable()
                                                        return "\<Plug>(neosnippet_expand_or_jump)"
                                                    else
                                                        return neocomplete#start_manual_complete()
                                                    endif
                                                endif

FUNCTION  CleverCr()
Called 0 times
Total time:   0.000000
 Self time:   0.000000

count  total (s)   self (s)
                                                    if pumvisible()
                                                        if neosnippet#expandable()
                                                            let exp = "\<Plug>(neosnippet_expand)"
                                                            return exp . neocomplete#smart_close_popup()
                                                        else
                                                            return neocomplete#smart_close_popup()
                                                        endif
                                                    else
                                                        return "\<CR>"
                                                    endif

FUNCTION  <SNR>3_EditSpf13Config()
Called 0 times
Total time:   0.000000
 Self time:   0.000000

count  total (s)   self (s)
                                    call <SID>ExpandFilenameAndExecute("tabedit", "~/.vimrc")
                                    call <SID>ExpandFilenameAndExecute("vsplit", "~/.vimrc.before")
                                    call <SID>ExpandFilenameAndExecute("vsplit", "~/.vimrc.bundles")
                                 
                                    execute bufwinnr(".vimrc") . "wincmd w"
                                    call <SID>ExpandFilenameAndExecute("split", "~/.vimrc.local")
                                    wincmd l
                                    call <SID>ExpandFilenameAndExecute("split", "~/.vimrc.before.local")
                                    wincmd l
                                    call <SID>ExpandFilenameAndExecute("split", "~/.vimrc.bundles.local")
                                 
                                    if <SID>IsSpf13Fork()
                                        execute bufwinnr(".vimrc") . "wincmd w"
                                        call <SID>ExpandFilenameAndExecute("split", "~/.vimrc.fork")
                                        wincmd l
                                        call <SID>ExpandFilenameAndExecute("split", "~/.vimrc.before.fork")
                                        wincmd l
                                        call <SID>ExpandFilenameAndExecute("split", "~/.vimrc.bundles.fork")
                                    endif
                                 
                                    execute bufwinnr(".vimrc.local") . "wincmd w"

FUNCTION  ResCur()
Called 1 time
Total time:   0.000039
 Self time:   0.000039

count  total (s)   self (s)
    1              0.000012             if line("'\"") <= line("$")
    1              0.000017                 silent! normal! g`"
    1              0.000003                 return 1
                                        endif

FUNCTION  StripTrailingWhitespace()
Called 0 times
Total time:   0.000000
 Self time:   0.000000

count  total (s)   self (s)
                                    " Preparation: save last search, and cursor position.
                                    let _s=@/
                                    let l = line(".")
                                    let c = col(".")
                                    " do the business:
                                    %s/\s\+$//e
                                    " clean up: restore previous search history, and cursor position
                                    let @/=_s
                                    call cursor(l, c)

FUNCTION  ToggleBG()
Called 0 times
Total time:   0.000000
 Self time:   0.000000

count  total (s)   self (s)
                                    let s:tbg = &background
                                    " Inversion
                                    if s:tbg == "dark"
                                        set background=light
                                    else
                                        set background=dark
                                    endif

FUNCTION  <SNR>3_RunShellCommand()
Called 0 times
Total time:   0.000000
 Self time:   0.000000

count  total (s)   self (s)
                                    botright new
                            
                                    setlocal buftype=nofile
                                    setlocal bufhidden=delete
                                    setlocal nobuflisted
                                    setlocal noswapfile
                                    " setlocal nowrap
                                    setlocal filetype=shell
                                    setlocal syntax=shell
                            
                                    call setline(1, a:cmdline)
                                    call setline(2, substitute(a:cmdline, '.', '=', 'g'))
                                    execute 'silent $read !' . escape(a:cmdline, '%#')
                                    setlocal nomodifiable
                                    1

FUNCTION  <SNR>3_IsSpf13Fork()
Called 0 times
Total time:   0.000000
 Self time:   0.000000

count  total (s)   self (s)
                                    let s:is_fork = 0
                                    let s:fork_files = ["~/.vimrc.fork", "~/.vimrc.before.fork", "~/.vimrc.bundles.fork"]
                                    for fork_file in s:fork_files
                                        if filereadable(expand(fork_file, ":p"))
                                            let s:is_fork = 1
                                            break
                                        endif
                                    endfor
                                    return s:is_fork

FUNCTION  OSX()
Called 0 times
Total time:   0.000000
 Self time:   0.000000

count  total (s)   self (s)
                                        return has('macunix')

FUNCTION  WrapRelativeMotion()
Called 0 times
Total time:   0.000000
 Self time:   0.000000

count  total (s)   self (s)
                                        let vis_sel=""
                                        if a:0
                                            let vis_sel="gv"
                                        endif
                                        if &wrap
                                            execute "normal!" vis_sel . "g" . a:key
                                        else
                                            execute "normal!" vis_sel . a:key
                                        endif

FUNCTION  LINUX()
Called 0 times
Total time:   0.000000
 Self time:   0.000000

count  total (s)   self (s)
                                        return has('unix') && !has('macunix') && !has('win32unix')

FUNCTION  WINDOWS()
Called 3 times
Total time:   0.000034
 Self time:   0.000034

count  total (s)   self (s)
    3              0.000029             return  (has('win32') || has('win64'))

FUNCTION  NERDTreeInitAsNeeded()
Called 0 times
Total time:   0.000000
 Self time:   0.000000

count  total (s)   self (s)
                                    redir => bufoutput
                                    buffers!
                                    redir END
                                    let idx = stridx(bufoutput, "NERD_tree")
                                    if idx > -1
                                        NERDTreeMirror
                                        NERDTreeFind
                                        wincmd l
                                    endif

FUNCTIONS SORTED ON TOTAL TIME
count  total (s)   self (s)  function
    1   0.000236             InitializeDirectories()
    1   0.000039             ResCur()
    3   0.000034             WINDOWS()
                             <SNR>3_ExpandFilenameAndExecute()
                             CleverTab()
                             CleverCr()
                             <SNR>3_EditSpf13Config()
                             StripTrailingWhitespace()
                             ToggleBG()
                             <SNR>3_RunShellCommand()
                             <SNR>3_IsSpf13Fork()
                             OSX()
                             WrapRelativeMotion()
                             LINUX()
                             NERDTreeInitAsNeeded()

FUNCTIONS SORTED ON SELF TIME
count  total (s)   self (s)  function
    1              0.000236  InitializeDirectories()
    1              0.000039  ResCur()
    3              0.000034  WINDOWS()
                             <SNR>3_ExpandFilenameAndExecute()
                             CleverTab()
                             CleverCr()
                             <SNR>3_EditSpf13Config()
                             StripTrailingWhitespace()
                             ToggleBG()
                             <SNR>3_RunShellCommand()
                             <SNR>3_IsSpf13Fork()
                             OSX()
                             WrapRelativeMotion()
                             LINUX()
                             NERDTreeInitAsNeeded()

