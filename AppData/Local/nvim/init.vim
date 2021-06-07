" Enable hardtime
let g:hardtime_default_on = 1

set ignorecase
set smartcase

" VSCode/Neovim exclusive stuff
if exists('g:vscode')
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VSCode stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  call plug#begin('~/.vim/plugged')

  Plug 'justinmk/vim-sneak'
  Plug 'takac/vim-hardtime'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'

  call plug#end()

  " Integrate with whichkey for spacemacs-style space key
  nnoremap <space> :call VSCodeNotify('vspacecode.space')<CR>

  " Use sneak for f and t
  map f <Plug>Sneak_f
  map F <Plug>Sneak_F
  map t <Plug>Sneak_t
  map T <Plug>Sneak_T

else
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spacevim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Dart format keybind
  nnoremap <Space>lff :DartFmt<cr>
  source ~/.Spacevim/init.vim

  noremap <A-j> <C-n>
  noremap <A-k> <C-p>

  " Set Pmenu bg color
  hi Pmenu guibg=#2E303E
  hi Pmenu guifg=#FDF0ED
endif

