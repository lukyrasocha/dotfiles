call plug#begin()
	Plug 'sheerun/vim-polyglot'
	Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
  Plug 'vifm/vifm.vim' 
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
call plug#end()


if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif

colorscheme spaceduck
let g:airline_theme = 'spaceduck'

" leader
let mapleader=' '
imap <Esc> <Esc>l
imap kj <Esc>

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set noshiftround
let g:python_recommended_style = 0

set relativenumber
set number
set rnu

set mouse=a

" vifm 
nnoremap <leader>fm :Vifm<CR>
nnoremap <leader>fs :VsplitVifm<CR>
nnoremap <leader>fh :HsplitVifm<CR>

" fzf   
set rtp+=~/.fzf
nnoremap <leader><leader>f :Files<CR>
nnoremap <leader><leader>g :GFiles<CR>
nnoremap <leader><leader>h :History<CR>
nnoremap <leader><leader>b :Bufferes<CR>

let g:fzf_preview_floating_window_rate = 0.8
let g:fzf_preview_default_fzf_options = {}

"Change cursor in different modes
if &term =~ '^xterm'
  " solid underscore
  let &t_SI .= "\<Esc>[5 q"
  " solid block
  let &t_EI .= "\<Esc>[1 q"
  " 1 or 0 -> blinking block
  " 3 -> blinking underscore
  " Recent versions of xterm (282 or above) also support
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar
endif
