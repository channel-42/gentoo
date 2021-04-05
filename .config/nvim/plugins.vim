call plug#begin(stdpath('data') . '/plugged')

" coding helpers ----------
Plug 'Yggdroot/indentLine'
"Plug 'lukas-reineke/indent-blankline.nvim', {'branch': 'lua'}
Plug 'Raimondi/delimitMate'
Plug 'ap/vim-css-color'

" completion --------------
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'rafamadriz/friendly-snippets'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Tools -------------------
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'voldikss/vim-floaterm'
Plug 'liuchengxu/vim-which-key'
Plug 'TimUntersberger/neogit'

" aesthetics ---------------
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
Plug 'kyazdani42/nvim-web-devicons' 
Plug 'kyazdani42/nvim-tree.lua'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'dracula/vim'
Plug 'glepnir/dashboard-nvim'

call plug#end()
filetype plugin indent on "required
