inoremap jj <Esc>
set rnu!

let g:airline_theme = "peaksea"

let g:tokyonight_transparent = "true"
let g:tokyonight_transparent_sidebar = "true"
let g:tokyonight_dark_sidebar = "false"

call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vifm/vifm.vim'
call plug#end()

colorscheme tokyonight
