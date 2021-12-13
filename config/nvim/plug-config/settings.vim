syntax on
filetype plugin indent on

" default TabSpace
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

autocmd FileType typescriptreact,typescript,javascriptreact,javascript,yaml,json,css setlocal ts=2 sts=2 sw=2 et
" python FileType create filetype in ~/.vim/after/ftplugin/python.vim : vim
" python FileType create filetype in ~/.config/nvim/ftplugin/python.viam : nvim
" ex.
" setlocal softtabstop=4
" setlocal shiftwidth=4
" setlocal tabstop=4
" setlocal expandtab
" setlocal smarttab
" setlocal autoindent
" setlocal cindent
" filetype indent off

" Disable Overwrite theme to Tmux
let g:airline#extensions#tmuxline#enabled = 0
" disable bell
set noerrorbells visualbell t_vb=

" Numbers
set number
set rnu

let g:rainbow_active = 1
let g:typescript_indent_disable = 1

" prettier
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

command! -nargs=0 Prettier :CocCommand prettier.formatFile
