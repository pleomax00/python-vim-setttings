" ViM Settings
" @author: Shamail Tayyab (@shamail)
" @date: Tue Sep 18 15:53:27 IST 2012
"
" cd ~ && ln -s .vim/vimrc ./.vimrc

set nu                          " Show line numbers.
sy on                           " Syntax Hilighting on
"set cindent shiftwidth=4       " Set C like indentation with shiftwith of 4.
set background=light            " We are working with light terminal background.
set shiftwidth=4                " Set shift width of 4
set et                          " Set expand tab to spaces.
set ai                          " Set auto indent
set smartindent                 " Set vim's smart indent on.
set directory=/tmp              " Our working directory is /tmp
set backupdir=/tmp              " Our .swp files should go in /tmp (not poweroff safe)
set tabstop=4                   " Tabstop is 4.
set ignorecase                  " Case insensitive search.
set smartcase                   " Now a case sensitive search only if you enter an uppercase character in the search, e.g Apple.

" Set options for vim ctags support.
" Ctrl + ] will jump to definition in a horizontal split pane.
" Ctrl + \ will jump to definition in a new tab.
" Also make sure to load tags file in any directory above the current working dir.
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <C-]> <C-W><C-]>
set tags=./tags;/

" CtrlP intergration.
" 2 means wherever ctrlP finds .git
" c-x to open a file in horizontal split.
let g:ctrlp_working_path_mode = '2'
let g:ctrlp_by_filename = 0             " Set this to 1 to search by filename instead of path.
let g:ctrlp_match_window_bottom = 1     " Set to 0 to make the window appear at the top.
set wildignore+=*.pyc
set wildignore+=django

" Close Tag integration, Ctrl+Plus (c-s-=)
source ~/.vim/plugin/closetag.vim 

" GUI Specific Settings
if has("gui_running")
   set guifont=Monaco:h15
   set guioptions=egmrt
   " Navigate using Meta+Number to move to a tab.
   map <D-1> 1gt
   map <D-2> 2gt
   map <D-3> 3gt
   map <D-4> 4gt
   map <D-5> 5gt
   map <D-6> 6gt
   map <D-7> 7gt
   map <D-8> 8gt
   map <D-9> 9gt

   map! <D-1> <ESC>1gt
   map! <D-2> <ESC>2gt
   map! <D-3> <ESC>3gt
   map! <D-4> <ESC>4gt
   map! <D-5> <ESC>5gt
   map! <D-6> <ESC>6gt
   map! <D-7> <ESC>7gt
   map! <D-8> <ESC>8gt
   map! <D-9> <ESC>9gt
endif

" Tell vim to remember certain things when we exit
" '10 : marks will be remembered for up to 10 previously edited files
" "100 : will save up to 100 lines for each register
" :100 : up to 100 lines of command-line history will be remembered
" % : saves and restores the buffer list
" n... : where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo
 
" when we reload, tell vim to restore the cursor to the saved position
augroup JumpCursorOnEdit
 au!
 autocmd BufReadPost *
 \ if expand("<afile>:p:h") !=? $TEMP |
 \ if line("'\"") > 1 && line("'\"") <= line("$") |
 \ let JumpCursorOnEdit_foo = line("'\"") |
 \ let b:doopenfold = 1 |
 \ if (foldlevel(JumpCursorOnEdit_foo) > foldlevel(JumpCursorOnEdit_foo - 1)) |
 \ let JumpCursorOnEdit_foo = JumpCursorOnEdit_foo - 1 |
 \ let b:doopenfold = 2 |
 \ endif |
 \ exe JumpCursorOnEdit_foo |
 \ endif |
 \ endif
 " Need to postpone using "zv" until after reading the modelines.
 autocmd BufWinEnter *
 \ if exists("b:doopenfold") |
 \ exe "normal zv" |
 \ if(b:doopenfold > 1) |
 \ exe "+".1 |
 \ endif |
 \ unlet b:doopenfold |
 \ endif
augroup END

" Uncomment next two lines to show trailing whitespaces.
" set list
" set listchars=tab:>-,trail:~,extends:>,precedes:<

" File syntax fixes for some known files.
au BufReadPost *.zcml set syntax=xml
au BufReadPost *.pt set syntax=html
au BufReadPost *.rst set syntax=rest
au BufReadPost *.fish set syntax=fish

" Some aliases
abbr pl. #! /usr/bin/env perl
abbr py. #! /usr/bin/env python
abbr rb. #! /usr/bin/env ruby
abbr sh. #! /usr/bin/env bash

