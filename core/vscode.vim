
"  WhichKey bindings
nnoremap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>
xnoremap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>

"  Navigation
nnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
xnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
nnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
xnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
nnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
xnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
nnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>
xnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>

nnoremap <silent> <leader><Space> :call VSCodeNotify('editor.action.trimTrailingWhitespace')<CR>

nnoremap <silent> <Space>r :call VSCodeNotify('fileutils.renameFile')<CR>
nnoremap <silent> <Space>m :call VSCodeNotify('fileutils.moveFile')<CR>
nnoremap <silent> <Space>d :call VSCodeNotify('fileutils.removeFile')<CR>
nnoremap <silent> <Space>n :call VSCodeNotify('fileutils.newFile')<CR>
nnoremap <silent> <Space>nn :call VSCodeNotify('fileutils.newFolder')<CR>
nnoremap <silent> <Space>c :call VSCodeNotify('fileutils.copyFileName')<CR>
