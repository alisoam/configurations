call plug#begin(stdpath('data') . '/plugged')
Plug 'Valloric/YouCompleteMe'
""Plugin 'rdnetto/YCM-Generator'
Plug 'arcticicestudio/nord-vim'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'posva/vim-vue'
Plug 'tpope/vim-fugitive'
Plug 'fatih/vim-go'
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh \| UpdateRemotePlugins' }
"Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
call plug#end()

set autoindent
set laststatus=2

set number
set nocompatible

let g:nord_underline = 1
let g:nord_italic_comments = 1
let g:nord_uniform_status_lines = 1
let g:nord_cursor_line_number_background = 1
let g:nord_uniform_diff_background = 1
let g:indentLine_leadingSpacChar='.'
let g:indentLine_leadingSpaceEnabled='1'
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 1
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

set number
set cursorline
set listchars=tab:».,nbsp:␣,trail:.,eol:¬,precedes:«,extends:»
set list
let g:airline_powerline_fonts = 1
let g:airline_theme='base16_nord'
colorscheme nord
" let g:netrw_winsize = 18
" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
" let g:netrw_banner = 0

filetype plugin on
filetype plugin indent on

set termbidi

"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"let python_highlight_all=1
"syntax on

"let g:flake8_show_quickfix=0
"let g:flake8_show_in_file=1
"let g:flake8_show_in_gutter=1
"
"
function! NvimGdbNoTKeymaps()
  tnoremap <silent> <buffer> <esc> <c-\><c-n>
endfunction

let g:nvimgdb_config_override = {
  \ 'key_next': 'n',
  \ 'key_step': 's',
  \ 'key_finish': 'f',
  \ 'key_continue': 'c',
  \ 'key_until': 'u',
  \ 'key_breakpoint': 'b',
  \ 'set_tkeymaps': "NvimGdbNoTKeymaps",
  \ }

let g:tex_flavor = "latex"
set conceallevel=2

let g:ycm_show_diagnostics_ui = 0

set exrc
set secure

