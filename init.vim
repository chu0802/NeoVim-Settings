set nocompatible

execute pathogen#infect()
syntax on

set t_Co=256
set mouse=a
set bs=2		" allow backspacing over everything in insert mode
set ai			" always set autoindenting on
set wildmenu " command-line completion
set showmatch " briefly jump to the matching one
set tabstop=4
set shiftwidth=4
set number
set nowrap
set ruler
set splitbelow
set expandtab
set swapfile
set dir=.

" Crontabs must be edited in place
" au BufRead /tmp/crontab* :set backupcopy=yes

" Auto Commenter
fu! PyComment(i)
	let cur_pos = col('.') - a:i
	normal! 0
	if getline('.')[col('.')-1] == '#'
		exec "normal! xx0"
		exec (cur_pos) > 2 ? "normal! ".(cur_pos-2)."\<right>" : ""
	else
		exec "normal! i"."# "
		normal! 0

		exec "normal! ".(cur_pos+1+(cur_pos != 1))."\<right>"
	endif
endfu

au BufNewFile,BufRead *.c,*.cpp,*.h,*.hpp
	\ set cindent |
	\ inoremap {<CR> {<CR>}<Esc>ko|
	\ inoremap // <Esc>I//|
	\ inoremap /* <Esc>O/*|
	\ inoremap */ <Esc>o*/|

au BufNewFile,BufRead *.py
	\ inoremap {<CR> {<CR>}<Esc>ko<Tab> |
	\ inoremap <C-_> <Esc>:call PyComment(0)<CR>i|
	\ nnoremap <C-_> :call PyComment(1)<Cr>|

au BufNewFile,BufRead *.swift
    \ inoremap {<CR> {<CR>}<Esc>ko|

" Useful

tnoremap <Esc> <C-\><C-n>
" map  <C-c> :tabnew<CR>
map  <C-p> :tabprev<CR>
map  <C-n> :tabnext<CR>
map <F4> :set invcursorline<CR>

highlight TabLineSel term=bold,underline cterm=bold,underline ctermfg=7 ctermbg=0
highlight TabLine    term=bold cterm=bold
highlight clear TabLineFill


inoremap <C-Up> <Esc><C-w><Up>i
inoremap <C-Down> <Esc><C-w><Down>i
inoremap <C-Left> <Esc><C-w><Left>i
inoremap <C-Right> <Esc><C-w><Right>i
" 
nnoremap <C-Up> <C-w><Up>i
nnoremap <C-Down> <C-w><Down>i
nnoremap <C-Left> <C-w><Left>i
nnoremap <C-Right> <C-w><Right>i

" Open a terminal
nnoremap <C-t> :split<CR>:resize 10<CR>:terminal<CR>i
nnoremap <Esc><Esc> :noh
" Close the terminal
tnoremap <C-t> <C-\><C-n>:q<CR>

" form term mode
tnoremap <C-Up> <C-\><C-n><C-w><Up>i
tnoremap <C-Down> <C-\><C-n><C-w><Down>i
tnoremap <C-Left> <C-\><C-n><C-w><Left>i
tnoremap <C-Right> <C-\><C-n><C-w><Right>i

" For nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-d> :NERDTreeToggle<CR><C-w><Right>
let g:NERDTreeMouseMode=3

" close nerdtree automatically
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" open nerdtree on every tab automatically
autocmd BufWinEnter * silent NERDTreeMirror

" For ncm2
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect
set shortmess+=c

let ncm2#popup_delay = 5
let ncm2#complete_length = [[1, 1]]
let g:ncm2#matcher = 'substrfuzzy'

inoremap <C-c> <ESC>:w<CR>
nnoremap <C-c> :w<CR>
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" onedark
" colorscheme onedark

" vim-one
colorscheme one
set background=dark
" Transparent background
hi Normal guibg=NONE ctermbg=NONE
hi SpecialKey guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE
" Transparent StatusLine
hi StatusLine ctermbg=none cterm=bold

" python-syntax
let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0

" swift-syntax
let g:syntastic_swift_checkers = ['swiftpm', 'swiftlint']
