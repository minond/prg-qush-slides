let g:slides_glob = $SLIDES_DIR . '/*/*'
source ./vim/slides.vim

noremap <C-k> :call slides#prev()<cr>
noremap <C-j> :call slides#next()<cr>
noremap <C-h> :call slides#prev_section()<cr>
noremap <C-l> :call slides#next_section()<cr>
noremap <left> :call slides#prev()<cr>
noremap <right> :call slides#next()<cr>
noremap <Leader>S :call slides#start()<cr>
noremap <Leader>D :call slides#del()<cr>
command! -nargs=1 -complete=file -bar Mv call slides#mv('<args>')

au BufNewFile,BufRead,BufEnter *.qsh so ./vim/qush.vim
