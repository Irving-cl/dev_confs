" Li's Vim configuration.

" Plugin configuration.
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'craigemery/vim-autotag'
Plugin 'scrooloose/nerdtree'
Plugin 'Majutsushi/tagbar'

"Color scheme
Plugin 'NLKNguyen/papercolor-theme'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"

" tagbar
" Usage:
" <F1> Toggle tagbar
let g:tagbar_autoclose = 0    " Don't close tagbar after jump to the tag selected in the tag window
nnoremap <silent> <F1> :TagbarToggle<CR>

" Non-Plugin stuff
set autoindent
set expandtab
set shiftwidth=4
set nu

"Color scheme
set t_Co=256
set background=dark
colorscheme PaperColor

