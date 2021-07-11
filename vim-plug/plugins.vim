call plug#begin('~/.config/nvim/autoload/plugged')

  " File Explorer
  Plug 'scrooloose/NERDTree'
  Plug 'chxuan/vim-edit'
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
  Plug 'chxuan/cpp-mode'
  Plug 'octol/vim-cpp-enhanced-highlight'
  Plug 'airblade/vim-gitgutter'
  Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
  Plug 'tpope/vim-fugitive'
  Plug 'junegunn/fzf.vim'
  Plug 'preservim/nerdcommenter'
  Plug 'rhysd/vim-clang-format'
  Plug 'folke/tokyonight.nvim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'cdelledonne/vim-cmake'
  Plug 'jackguo380/vim-lsp-cxx-highlight'
  Plug 'honza/vim-snippets'

call plug#end()

" Example config in VimScript
let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

" Load the colorscheme
colorscheme tokyonight

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

" Create default mappings
let g:NERDCreateDefaultMappings = 1

let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11"}

" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-i>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>

let g:cmake_link_compile_commands = 1
"nmap <leader>cg :CMakeGenerate<cr>
"nmap <leader>cb :CMakeBuild<cr>
"nmap <leader>cg :CMakeGenerate<cr>

