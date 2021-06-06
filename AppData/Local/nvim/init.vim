" Enable hardtime
let g:hardtime_default_on = 1

set ignorecase
set smartcase
set surround



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
  Plug 'tpope/vim-surround'
  call plug#end()

  " Integrate with whichkey for spacemacs-style space key
  nnoremap <space> :call VSCodeNotify('vspacecode.space')<CR>
else
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spacevim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Dart format keybind
  nnoremap <Space>lff :DartFmt<cr>
  source ~/.Spacevim/vimrc
endif

