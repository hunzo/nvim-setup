call plug#begin()
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

" colorscheme
Plug 'frazrepo/vim-rainbow'
Plug 'lifepillar/vim-solarized8'
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ayu-theme/ayu-vim'
Plug 'sainnhe/everforest'
Plug 'sonph/onehalf', {'rtp': 'vim/'}

" React Typscript Plugin
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'

" plugin for golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Plugin Nerdtree
Plug 'preservim/nerdtree'

" TMUX Plugin
Plug 'edkolev/tmuxline.vim'

call plug#end()
