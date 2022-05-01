" Quicker way to open command window
nnoremap q; q:

" Turn the word under cursor to upper case
inoremap <c-u> <Esc>viwUea

" Turn the current word into title case
inoremap <c-t> <Esc>b~lea

" Shortcut for faster save and quit
nnoremap <silent> <leader>w :<C-U>update<CR>
" Saves the file if modified and quit
nnoremap <silent> <leader>q :<C-U>x<CR>
" Quit all opened buffers
nnoremap <silent> <leader>Q :<C-U>qa!<CR>

" Navigation in the location and quickfix list
nnoremap <silent> [l :<C-U>lprevious<CR>zv
nnoremap <silent> ]l :<C-U>lnext<CR>zv
nnoremap <silent> [L :<C-U>lfirst<CR>zv
nnoremap <silent> ]L :<C-U>llast<CR>zv
nnoremap <silent> [q :<C-U>cprevious<CR>zv
nnoremap <silent> ]q :<C-U>cnext<CR>zv
nnoremap <silent> [Q :<C-U>cfirst<CR>zv
nnoremap <silent> ]Q :<C-U>clast<CR>zv

" Close location list or quickfix list if they are present,
" see https://superuser.com/q/355325/736190
nnoremap<silent> \x :<C-U>windo lclose <bar> cclose<CR>

" Close a buffer and switching to another buffer, do not close the
" window, see https://stackoverflow.com/q/4465095/6064933
nnoremap <silent> \d :<C-U>bprevious <bar> bdelete #<CR>

" When completion menu is shown, use <cr> to select an item and do not add an
" annoying newline. Otherwise, <enter> is what it is. For more info , see
" https://superuser.com/a/941082/736190 and
" https://unix.stackexchange.com/q/162528/221410
" inoremap <expr> <cr> ((pumvisible())?("\<C-Y>"):("\<cr>"))
" Use <esc> to close auto-completion menu
" inoremap <expr> <esc> ((pumvisible())?("\<C-e>"):("\<esc>"))

" Tab-complete, see https://vi.stackexchange.com/q/19675/15292.
inoremap <expr> <tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

" Edit and reload init.vim quickly
nnoremap <silent> <leader>ev :<C-U>tabnew $MYVIMRC <bar> tcd %:h<cr>
nnoremap <silent> <leader>sv :<C-U>silent update $MYVIMRC <bar> source $MYVIMRC <bar>
      \ call v:lua.vim.notify("Nvim config successfully reloaded!", 'info', {'title': 'nvim-config'})<cr>

" Search in selected region
xnoremap / :<C-U>call feedkeys('/\%>'.(line("'<")-1).'l\%<'.(line("'>")+1)."l")<CR>

" Change current working directory locally and print cwd after that,
" see https://vim.fandom.com/wiki/Set_working_directory_to_the_current_file
nnoremap <silent> <leader>cd :<C-U>lcd %:p:h<CR>:pwd<CR>

" Toggle spell checking (autosave does not play well with z=, so we disable it
" when we are doing spell checking)
nnoremap <silent> <F11> :<C-U>set spell!<cr>
inoremap <silent> <F11> <C-O>:<C-U>set spell!<cr>

nnoremap <Left> <C-W>h
nnoremap <Right> <C-W>l
nnoremap <Up> <C-W>k
nnoremap <Down> <C-W>j

" check the syntax group of current cursor position
nnoremap <silent> <leader>st :<C-U>call utils#SynGroup()<CR>

" Clear highlighting
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :<C-U>nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" Toggle cursor column
nnoremap <silent> <leader>cl :<C-U>call utils#ToggleCursorCol()<CR>

" Move current line up and down
nnoremap <silent> <A-k> <Cmd>call utils#SwitchLine(line('.'), 'up')<CR>
nnoremap <silent> <A-j> <Cmd>call utils#SwitchLine(line('.'), 'down')<CR>

" Move current visual-line selection up and down
xnoremap <silent> <A-k> :<C-U>call utils#MoveSelection('up')<CR>
xnoremap <silent> <A-j> :<C-U>call utils#MoveSelection('down')<CR>

nnoremap <silent> gb :<C-U>call buf_utils#GoToBuffer(v:count, 'forward')<CR>
nnoremap <silent> gB :<C-U>call buf_utils#GoToBuffer(v:count, 'backward')<CR>

" Text objects for URL
xnoremap <silent> iu :<C-U>call text_obj#URL()<CR>
onoremap <silent> iu :<C-U>call text_obj#URL()<CR>

" Text objects for entire buffer
xnoremap <silent> iB :<C-U>call text_obj#Buffer()<CR>
onoremap <silent> iB :<C-U>call text_obj#Buffer()<CR>

" insert semicolon in the end
inoremap <A-;> <ESC>miA;<ESC>`ii


" Remove trailing whitespace characters
nnoremap <silent> <leader><Space> :<C-U>StripTrailingWhitespace<CR>

