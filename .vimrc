set nocompatible		" be iMproved, required

so ~/.vim/plugins.vim

syntax enable

"let mapleader = ','		        " The default leader is '\', but a comma is much better.
" Open help in a separate tab.
":cabbrev help tab help              
set number			                " Let's activate line numbers.
set ruler
set backspace=indent,eol,start      " Make backspace behave like every other editors
set noerrorbells visualbell t_vb=   " No dump bells!
set autowriteall                    " Automatically write the file when switching buffers


"--------Visuals--------"
syntax enable
set background=dark
colorscheme solarized
set t_CO=256			" Use 256 colors. This is useful for Terminal Vim.

let &t_SI = "\e[6 q"    " set cursore shape
let &t_EI = "\e[2 q"    " set cursore shape

highlight VertSplit ctermbg=NONE guibg=NONE     " color of vertical split color
set fillchars+=vert:│                           " shape of vertical split

highlight LineNr ctermfg=11 ctermbg=bg


"--------Search--------"
set hlsearch
set incsearch
set ignorecase                      " Search lower and upper case letter
set smartcase                       " If in a search vim meets an uppercase caracter then it will do case sansetive search


"--------Tabs--------"
:set softtabstop=4
:set shiftwidth=4
:set expandtab      " expand tab to spaces


"--------Split Management--------"
set splitright
nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>


"--------Mappings--------"
" Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<CR>
nmap <Leader>es :e ~/.vim/snippets<CR>

" Add simple highlight removal.
nmap <Leader><space> :nohlsearch<CR>

" Make NERDTree easier to toggle.
nmap <Leader>b :NERDTreeToggle<CR>

" Move lines
"nnoremap <S-k> :m .-2<CR>==
"nnoremap <S-j> :m .+1<CR>==
"vnoremap <S-k> :m '<-2<CR>gv=gv
"vnoremap <S-j> :m '>+1<CR>gv=gv
inoremap <Leader>k <Esc>:m .-2<CR>==gi
inoremap <Leader>j <Esc>:m .+1<CR>==gi

" Scroll screen
nnoremap <Leader>j jzz
nnoremap <Leader>k kzz

" Go project specifig mappings
nmap <Leader><Leader>c :CtrlP<CR>config/config.go
nmap <Leader><Leader>s :e configs<CR>

"--------Plugins--------"

"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|\.git'

"nmap <c-R> :CtrlPBufTag<cr>
nmap <c-P> :CtrlP<cr>


"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0


"/
"/ Greaplace
"/
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'


"--------Auto-Commands--------"
"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

"Only apply to .txt files...
augroup HelpInTabs
    autocmd!
    autocmd BufEnter  *.txt   call HelpInNewTab()
augroup END

"Only apply to help files...
" Elso can be done by this line:
":cabbrev help tab help              
function! HelpInNewTab ()
    if &buftype == 'help' 
        "Convert the help window to a tab...
        execute "normal \<C-W>T"
    endif
endfunction



" Notes and Tips
" zz    center the line where the cursor is located
" ZZ    quit :q
" di(   delete inside ()
" ai(   delete and edit inside ()
" :wa   save all files
" <S-j> join lines
" yiw   yank inner word
" 
"
" Visual mode
" s     start edit
" vit   select everything inside tags
" <S-<> untend 
" <S->  intend
" 
" Splits
" :sp       horisontal split
" :vsp      vertical split
" <C-w>|    expand current split
" <C-w>=    normalize splits
" <C-w>o        current buffer full screen
" 
" 
" Tab managment
" gT        go to previous tab
" gt        go to next tab
" {i}gt     go to tab in position i
"
"
" Search
" :grep -R "" .
" :copen
"
"
" Buffers
" :bufdo bd!    close every buffer
" <C-^>         back to a previous buffer
" :b{i}         go to buffer i
" :sbuffer{i}   open buffer i in split 
"
"
" Completeon
" <C-n>             suggestion dropdown 
" <C-n><C-n>        cycle trought a suggestion dropdown
" set complet       show completeon settings (. current file
"                                             w all open window
"                                             b loaded buffer
"                                             u unloaded buffer)
"
"
" Folds
" za            open all folds
" zo            open current fold
" zc            close fold
"
"
" CtrlP
" <c-p>             open file
" :CrtlPBufTag      navigate inside files
" :CtrlPMRUFiles    MRU (Most Resently Used)
"
" Surround
" cs'"      change surround ' to "
" ds"       delete surround "
" S<tag>    surround text with tag
