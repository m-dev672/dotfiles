call plug#begin('$LOCALAPPDATA\nvim-data\site\autoload')
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'itchyny/lightline.vim'
Plug 'lambdalisue/fern.vim'
Plug 'dense-analysis/ale'
call plug#end()

set foldcolumn=1
let g:ale_sign_column_always = 1

set number
set numberwidth=3

set nowrap

colorscheme gruvbox
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
highlight clear FoldColumn
highlight clear SignColumn
highlight clear GruvboxRedSign
highlight clear GruvboxGreenSign
highlight clear GruvboxYellowSign
highlight clear GruvboxBlueSign
highlight clear GruvboxPurpleSign
highlight clear GruvboxAquaSign
highlight clear GruvboxOrangeSign
highlight link GruvboxRedSign GruvboxRed
highlight link GruvboxGreenSign GruvboxYellow
highlight link GruvboxYellowSign GruvboxYellow
highlight link GruvboxBlueSign GruvboxBlue
highlight link GruvboxPurpleSign GruvboxPurple
highlight link GruvboxAquaSign GruvboxAqua
highlight link GruvboxOrangeSign GruvboxOrange

autocmd BufNewFile,BufRead,CursorMoved,CursorMovedI * let &numberwidth=len(line("$"))+2
autocmd VimEnter * ++nested Fern . -drawer -toggle -reveal=%
