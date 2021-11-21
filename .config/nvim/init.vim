inoremap jj <Esc>
set rnu!
colorscheme slate

call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'gko/vim-coloresque'
call plug#end()
