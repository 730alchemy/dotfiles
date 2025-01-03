""
""  General
""
let mapleader = ","
map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>

map <space> /

""
""  VIM User Interface
""
set so=7
set backspace=indent,eol,start

""colorscheme delek
syntax on

""
""  TAB
""
set ai
set expandtab
set shiftwidth=2
set ts=2

""
""  PLUGIN CONFIGURATION
""
let g:SimpylFold_fold_docstring = 0
let g:SimpylFold_fold_import = 0
