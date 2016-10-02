execute pathogen#infect()
syntax on

set relativenumber
set number
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set colorcolumn=110
set guifont=Monaco:h12

colorscheme 0x7A69_dark

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set autoindent

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.

" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" 
" " If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
