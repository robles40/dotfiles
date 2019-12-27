call plug#begin('~/.config/nvim/bundle')
Plug 'jiangmiao/auto-pairs'

" SYNTAX:
"
Plug 'kien/ctrlp.vim'
" Check
Plug 'w0rp/ale'
Plug 'editorconfig/editorconfig-vim'

" Rust
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'

" GO
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'AndrewRadev/splitjoin.vim'

" Kotlin
Plug 'udalov/kotlin-vim'
" React
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
" TSC
Plug 'leafgarland/typescript-vim'

" Vue
Plug 'posva/vim-vue'
Plug 'ap/vim-css-color'
Plug 'mattn/emmet-vim'
Plug 'cakebaker/scss-syntax.vim'

Plug 'digitaltoad/vim-pug'

" APAREANCE:
Plug 'itchyny/lightline.vim'
Plug 'NLKNguyen/papercolor-theme'
call plug#end()

filetype plugin indent on
syntax on
set nu rnu
set incsearch
set ignorecase
set smartcase
set nobackup
set noswapfile
set nowrap
set tabstop=2
set shiftwidth=2
set encoding=utf-8
set termguicolors
hi CursorLine term=bold cterm=bold guibg=Grey10
set cursorline
set bg=dark
colorscheme PaperColor
" ALE
let g:ale_linters_explicit = 1
let g:ale_linters = []
let g:ale_linters = {
	\ "rust": ["cargo"],
	\ "vue": ["eslint"],
	\ "javascript": ['eslint'],
	\ "typescript": ['tslint'],
	\ "pug": ['puglint'],
	\}
let g:ale_fixers = {}
let g:ale_fixers = {
	\ '*': ['remove_trailing_lines', 'trim_whitespace'],
	\ "rust": ['rustfmt'],
	\ "vue": ['eslint'],
	\ "javascript": ['eslint'],
	\ "typescript": ['tslint']
	\}
let g:ale_rust_rustc_options=''
let g:ale_fix_on_text_changed = 0
let g:ale_fix_on_save = 1
let g:ale_sign_error = "☠"
let g:ale_sign_warning ="⚠"

" RUST
let g:rustfmt_autosave = 1

" CtrlP
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|target\|git'

" Emmet
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_install_global = 0
autocmd FileType html,vue,css EmmetInstall
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" XML
au FileType html,vue set wrap

" GO
let g:go_fmt_command = "goimports"
let g:go_highlight_fields = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
