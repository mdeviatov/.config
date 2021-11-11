
call plug#begin('~/.vim/plugged')
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'mbbill/undotree'             " :UndotreeToggle ctrl-r/u
 Plug 'tpope/vim-commentary'        " commentary: toggle by 'gcc' or 5gcc and so one 
 Plug 'Yggdroot/indentLine'
 Plug 'psliwka/vim-smoothie'        " Ctrl-D/ Ctrl-U
 " Plug 'dracula/vim'
 " Using Vim-Plug
 Plug 'navarasu/onedark.nvim'
 Plug 'ghifarit53/tokyonight-vim'
 Plug 'itchyny/lightline.vim'
 " Plug 'SirVer/ultisnips'            " 
 Plug 'honza/vim-snippets'          " TAB, Ctrl-], Ctrl-[
 Plug 'scrooloose/nerdtree'
 Plug 'jistr/vim-nerdtree-tabs'     " Nerd for all tabs
 " Plug 'Xuyuanp/nerdtree-git-plugin' " Git + NerdTree integration
 
 " - Folding -
 " Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
 Plug 'kalekundert/vim-coiled-snake'
 " Plug 'tmhedberg/simpylfold'
 Plug 'Konfekt/FastFold'
 " Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 " Plug 'ryanoasis/vim-devicons'
call plug#end()

