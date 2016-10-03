
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/vim-powerline'
Plugin 'wincent/Command-T'
call vundle#end()            " required
filetype plugin indent on    " required

execute pathogen#infect()

"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

source ~/.vim/plugin/DoxygenToolkit.vim

set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch

set autoread

function! FollowTag()
  echom "test"
  if !exists("w:tagbrowse")
    vsplit
    let w:tagbrowse=1
  endif
  execute "tag " . expand("<cword>")
endfunction

nnoremap <silent> <F4> :q!<CR>
nnoremap <silent> <F5> :NERDTreeTabsToggle<CR>
nnoremap <silent> <F2> gT<CR>
nnoremap <silent> <F3> gt<CR>
nnoremap <silent> <F9> :Dox<CR>
nnoremap <silent> <c-\> :call FollowTag()<CR>

filetype plugin indent off
syntax on
colorscheme jellybeans

set exrc
set secure
