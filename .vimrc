set nocompatible		" be iMproved, required

so ~/.vim/plugins.vim

syntax enable

let mapleader = ','		" The default leader is '\', but a comma is much better.
set number			" Let's activate line numbers.


"--------Visuals--------"
syntax enable
set background=dark
colorscheme solarized
set t_CO=256			" Use 256 colors. This is useful for Terminal Vim.





"--------Search--------"
set hlsearch
set incsearch




"--------Split Management--------"
set splitright
nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>




"--------Mappings--------"
" Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

" Make NERDTree easier to toggle.
nmap <Leader>b :NERDTreeToggle<cr>

nmap <c-R> :CtrlPBufTag<cr>

"--------Plugins--------"

"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'DS_Store\|git'




"--------Auto-Commands--------"
"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
