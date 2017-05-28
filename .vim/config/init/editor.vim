set autoindent
set expandtab
set fileformat=unix
set hlsearch
set number
set shiftwidth=4
set tabstop=4
set ruler
set title

" color scheme
colorscheme twilight256
set t_Co=256
set background=dark

" 保存時に行末の空白を削除し、tabがあれば2スペースに置換する
function! s:remove_dust()
    let cursor = getpos(".")
    %s/\s\+$//ge
    %s/\t/  /ge
    call setpos(".", cursor)
    unlet cursor
endfunction
autocmd BufWritePre * call <SID>remove_dust()

" twigのsytax
autocmd BufNewFile,BufRead *.twig set filetype=htmljinja

" 全角スペースの可視化
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction

if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme * call ZenkakuSpace()
        autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
    augroup END
    call ZenkakuSpace()
endif

" Undoの永続化
" 事前にUndo履歴の保存先を生成しておく
" http://qiita.com/tamanobi/items/8f013cce36881af8cee3
" mkdir -p ~/.vim/undo
if has('persistent_undo')
  set undodir=~/.vim/undo
  set undofile
endif
