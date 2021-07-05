" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Use alt + hjkl to resize windows
nnoremap <M-j>   :resize -2<CR>
nnoremap <M-k>   :resize +2<CR>
nnoremap <M-h>   :vertical resize -2<CR>
nnoremap <M-l>   :vertical resize +2<CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 重新加载vimrc文件
nnoremap <leader>s :source $MYVIMRC<cr>

" 复制当前选中到系统剪切板
vmap <leader><leader>y "+y

" 将系统剪切板内容粘贴到vim
nnoremap <leader><leader>p "+p

