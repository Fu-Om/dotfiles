"setting
" leaader key
let mapleader="\<Space>"
" change coding to utf-8
set fenc=utf-8
" enable switching buffers without saving
set hidden
" Display all matching files when tabcomplete
set wildmenu
" complement as the terminal
set wildmode=longest,list,full
" show editing command in status
set showcmd
" set /file specific settings
filetype on
filetype plugin on
" share clipboard
set clipboard=unnamed
" copy or paste from X11 clipboard
vmap <leader>xyy :!xclip -f -sel clip<CR>
map <leader>xpp mz:-1r !xclip -o -sel clip<CR>`z

" set to decimals
set nrformats=
" set path recursively
set path+=**

" set dictionary
set dictionary+=/usr/share/dict/words
" modifiable buffer
set modifiable
" load bash aliases
let $BASH_ENV="~/.aliases"
" display
" show row number with relative number
set number relativenumber
" show current row
set cursorline
" able to go to the next line head
set virtualedit=onemore
" disable commenting in new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" splits open at right and bottom
set splitbelow splitright
"  persistent undo feature
set undofile
set undodir=$HOME/.vim/undo

" For arrow key use
set nocompatible
" For backspace use
set backspace=indent,eol,start
" For highlight search
set hlsearch
" Ignore upper and lower case when search
set ignorecase
" Recognize upper case
set smartcase

nnoremap <F8> :setlocal noautoindent
" Indentation space
set shiftwidth=2
" Tab space
set softtabstop=2
" Tab to space 
set expandtab
" Tab space
set tabstop=2

" Press esc 2 times to stop search highlight
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" Run current line in bash
nnoremap <F6> :exec '!'.getline('.')
" Start edit .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" remapping keys
" change split hotkey
nnoremap <C-Q><C-C> <C-W><C-C> 
nnoremap <C-Q><C-J> <C-W><C-J> 
nnoremap <C-Q><C-K> <C-W><C-K>
nnoremap <C-Q><C-L> <C-W><C-L>
nnoremap <C-Q><C-H> <C-W><C-H>
" saving shortcut
map <Space>s <esc>:w<CR>

" netrw tweaks
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()

" Navigating with guides
inoremap ,m <Esc>i<++>
vnoremap ,m <Esc>i<++>
map ,m <Esc>i<++>
inoremap ,/ <Esc>/<++><Enter>"_c4l
vnoremap ,/ <Esc>/<++><Enter>"_c4l
map ,/ <Esc>/<++><Enter>"_c4l
inoremap ,? <Esc>?<++><Enter>"_c4l
vnoremap ,? <Esc>?<++><Enter>"_c4l
map ,? <Esc>?<++><Enter>"_c4l


" vim-plug install
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" conda env setup
Plug 'cjrh/vim-conda', {'for': 'python'} 

Plug 'davidhalter/jedi-vim', {'for': 'python'} "activate when editing python files  

Plug 'vimwiki/vimwiki'

Plug 'ycm-core/YouCompleteMe'

" Initialize plugin system
call plug#end()

" plugin settings
" vim-instant-markdown config
let g:instant_markdown_autostart = 0
nnoremap <leader>md :InstantMarkdownPreview<CR>

" vimwiki
let g:vimwiki_list = [{'path': '~/Vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
" jedi-vim 
let g:jedi#completions_command = "<C-a>" 
