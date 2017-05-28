if &compatible
  set nocompatible               " Be iMproved
  endif

" Required:
set runtimepath+=/Users/symmt/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/Users/symmt/.vim/dein')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

" -- Editor --
call dein#add('editorconfig/editorconfig-vim')
call dein#add('Shougo/neocomplcache')
call dein#add('Townk/vim-autoclose')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('airblade/vim-gitgutter')
call dein#add('tpope/vim-fugitive')
call dein#add('othree/eregex.vim')
call dein#add('nathanaelkane/vim-indent-guides')
call dein#add('tpope/vim-surround')
call dein#add('bronson/vim-trailing-whitespace')
call dein#add('rking/ag.vim')
call dein#add('itchyny/lightline.vim')

" -- HTML --
call dein#add('mattn/emmet-vim')

" -- Syntax checker --
call dein#add('scrooloose/syntastic')
call dein#add('gcorne/vim-sass-lint')

" -- Markdown --
call dein#add('plasticboy/vim-markdown')
call dein#add('kannokanno/previm')
call dein#add('tyru/open-browser.vim')

" -- PHP--
call dein#add('bpearson/vim-phpcs')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
call dein#add('Shougo/vimproc', {
    \ 'build':     {
    \   'windows': 'make -f make_mingw32.mak',
    \   'cygwin':  'make -f make_cygwin.mak',
    \   'mac':     'make -f make_mac.mak',
    \   'unix':    'make -f make_unix.mak',
    \    },
    \ })

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
