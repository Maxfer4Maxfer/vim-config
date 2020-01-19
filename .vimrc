set nocompatible		" be iMproved, required

so ~/.vim/plugins.vim

syntax enable

"let mapleader = ','		" The default leader is '\', but a comma is much better.
set number			" Let's activate line numbers.


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


"--------Tabs--------"
:set tabstop=4
:set shiftwidth=4
:set expandtab


"--------Split Management--------"
set splitright
nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>


"--------Mappings--------"
" Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<CR>

" Add simple highlight removal.
nmap <Leader><space> :nohlsearch<CR>

" Make NERDTree easier to toggle.
nmap <Leader>b :NERDTreeToggle<CR>

" Move lines
nnoremap <S-k> :m .-2<CR>==
nnoremap <S-j> :m .+1<CR>==
vnoremap <S-k> :m '<-2<CR>gv=gv
vnoremap <S-j> :m '>+1<CR>gv=gv
inoremap <Leader>k <Esc>:m .-2<CR>==gi
inoremap <Leader>j <Esc>:m .+1<CR>==gi

" Scroll screen
nnoremap zj jzz

"--------Plugins--------"

"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|\.git'

nmap <c-R> :CtrlPBufTag<cr>
nmap <c-P> :CtrlP<cr>

"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0

"--------Auto-Commands--------"
"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END



" Notes and Tips
" zz    center the line where the cursor is located
" di(   delete inside ()
" ai(   delete and edit inside ()
" 
" Tab managment
" gt        go to next tab
" gT        go to previous tab
" {i}gt     go to tab in position i
