" Plugins will be downloaded under the specified directory.

let $PLUG_LOAD_PATH = $BASE_PATH."/plugins"
call plug#begin($PLUG_LOAD_PATH)

Plug 'liuchengxu/vim-which-key'

Plug 'mhinz/vim-startify'

Plug 'ayu-theme/ayu-vim'
Plug 'liuchengxu/space-vim-dark'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'

Plug 'airblade/vim-rooter'
Plug 'scrooloose/nerdtree'

Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'matze/vim-move'

Plug 'jiangmiao/auto-pairs'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'luochen1990/rainbow'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'tpope/vim-fugitive'
"Plug 'airblade/vim-gitgutter'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

