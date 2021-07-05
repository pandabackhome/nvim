call plug#begin('~/.config/nvim/autoload/plugged')

  " File Explorer
  Plug 'scrooloose/NERDTree'
  Plug 'jiangmiao/auto-pairs'
  Plug 'joshdick/onedark.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'christianchiarulli/nvcode-color-schemes.vim'
  Plug 'nvim-treesitter/nvim-treesitter'
  " Keeping up to date with master
  Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
  Plug 'mhinz/vim-startify'
  Plug 'chxuan/vim-buffer'
  Plug 'preservim/tagbar'
  Plug 'ctrlpvim/ctrlp.vim'


call plug#end()


" nerdtree
"nnoremap <silent> <leader>n :NERDTreeToggle<cr>
nnoremap <leader>v :NERDTreeFind<cr>
map <F3> : NERDTreeMirror<CR>
map <F3> : NERDTreeToggle<CR>

" vim-buffer
"nnoremap <silent> <c-p> :PreviousBuffer<cr>
nnoremap <silent> <c-m> :NextBuffer<cr>
nnoremap <silent> <leader>d :CloseBuffer<cr>
nnoremap <silent> <leader>D :BufOnly<cr>

" airline
" let g:airline_theme="gruvbox"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" tagbar
let g:tagbar_width = 30
nnoremap <silent> <leader>t :TagbarToggle<cr>

" ctrlpvim
let g:ctrl_map = '<c-p>'

