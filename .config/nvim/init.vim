call plug#begin('$HOME/.local/share/nvim/plugged')

"Vim aesthetics
Plug 'vim-airline/vim-airline'
Plug 'junegunn/goyo.vim'
Plug 'joshdick/onedark.vim'
"For writing
Plug 'reedes/vim-pencil'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

set tabstop=4 softtabstop=0 expandtab shiftwidth=4

" Clipboard settings
set clipboard+=unnamedplus
set number

" COC Settings

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set signcolumn=yes

autocmd CursorHold * silent call CocActionAsync('highlight')

" Copy from clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Goyo Configurations
nnoremap <F8> :Goyo<CR>

" Vim Pencil Configurations
set nocompatible
filetype plugin on 
let g:pencil#autoformat = 0
let g:pencil#conceallevel = 0 
let g:airline_section_x = '%{PencilMode()}'
let g:pencil#mode_indicators = {'hard': 'H', 'auto': 'A', 'soft': 'S', 'off': '',}
nnoremap <F9> :Pencil<CR>

augroup pencil
  autocmd!
  autocmd FileType markdown call pencil#init({'wrap': 'hard', 'autoformat': 1})
  autocmd FileType text     call pencil#init({'wrap': 'hard', 'autoformat': 0})
augroup END

" Suspend autoformat
let g:pencil#map#suspend_af = 'K'   " default is no mapping

  "24-bit color support
" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

syntax on
let g:onedark_hide_endofbuffer = 1
let g:onedark_termcolors = 16
let g:airline_theme='onedark'

if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup END
endif

colorscheme onedark







