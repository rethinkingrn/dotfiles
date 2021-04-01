source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/vim-plug/plugins.vim
if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

