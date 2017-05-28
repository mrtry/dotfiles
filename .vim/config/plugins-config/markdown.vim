" *.md をmarkdownと認識する
autocmd BufRead,BufNewFile *.md  set filetype=markdown

" Ctrl-pでプレビュー
nnoremap <silent> <C-p> :PrevimOpen<CR>

" 自動で折りたたまないようにする
let g:vim_markdown_folding_disabled=1
