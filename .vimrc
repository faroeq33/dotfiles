syntax on

set nocompatible
set scrolloff=10
set nohls
set noerrorbells
set shiftwidth=2
set tabstop=2
set autoindent
set smartindent

" turn hybrid line numbers on
:set number relativenumber
:set nu rnu

set nowrap
set smartcase
set undodir=~/.vim/undodir
set noswapfile
set undofile
set incsearch
" set colorcolumn=80
set path+=**

highlight ColorColumn ctermbg=0 guibg=lightgrey

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
if (has('termguicolors'))
  set termguicolors
endif

" Plug 'morhetz/gruvbox'
set background=dark

if executable('rg')
	let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:user_emmet_leader_key=','
let mapleader = " "

autocmd VimEnter * silent exec "! echo -ne '\e[1 q'"
autocmd VimLeave * silent exec "! echo -ne '\e[5 q'"

"key remappings"
nmap <Leader>py <Plug>(Prettier)

imap jj <esc>
imap <c-Z> <esc>ui
imap <c-s> :w<cr>
imap <c-s> <esc>:w<cr>a

nnoremap <leader>h <c-w>h<cr>
nnoremap <leader>l <c-w>l<cr>
nmap <c-s> :w<cr>
nmap <c-Z> u

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')