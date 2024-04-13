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
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'preservim/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ycm-core/YouCompleteMe'
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

" Leader key
let mapleader=","

" Non-Plugin stuff
set autoindent
set expandtab
set shiftwidth=4
set nu

" tagbar
" Usage:
" <F1> Toggle tagbar
let g:tagbar_autoclose=0    " Don't close tagbar after jump to the tag selected in the tag window
let g:tagbar_position='left'
nnoremap <silent> <F1> :TagbarToggle<CR>

" minibufexpl
" Usage:
" <leader>mbt : Toogle minibufexpl
let g:miniBufExplBuffersNeeded=0
noremap <leader>mbt :MBEToggle<CR>

" ctrlp
let g:ctrlp_regexp=0    " Don't use regexp search by default

" nerdtree
" Usage:
" <leader>ndt : Toggle NERDTree
let NERDTreeShowHidden=1         " Display hidden files by default
let NERDTreeShowLineNumbers=1    " Display line numbers for the NERDTree
noremap <leader>ndt :NERDTreeToggle<CR>

" vim-fugitive
command -nargs=+ Ggr execute 'silent Ggrep!' <q-args> | cw | redraw!  " For git grep

"Color scheme
set t_Co=256
set background=dark
colorscheme PaperColor

" misc
" switch buffers
noremap <tab> :bn<CR>
noremap <S-Tab> :bp<CR>

" syntax on
syntax on
