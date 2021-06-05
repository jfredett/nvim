""""""""""""
" Mappings "
""""""""""""

let maplocalleader = ","
let mapleader = ","

" I screw up alot
command! W w
command! Wq wq
command! Q q
command! WQ wq


" Make Y consistent with D, C
nmap Y y$

"remap mark from ` to ', and vice versa, so we get the better behavior more
"easily.
nmap ' `
nmap ` '

nmap <silent> <leader>t<space> yl<ESC>:Tab /"<CR>
nmap <silent> <leader>a<space> :Rg '<cword>'<CR>
nmap <silent> <leader>c<space> gcc<CR>
xmap <silent> <leader>c<space> gc
vmap <silent> <leader>c<space> gc

nmap <silent> C :cnext<CR>
nmap <silent> B :cprevious<CR>

nmap <silent> <leader>f<space> :bn<CR>
nmap <silent> <leader>b<space> :bp<CR>