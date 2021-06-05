" Vim Configuration!

" This should work about everywhere and will let me set machine-specific customizations
let g:hostname = system('hostname')

" Set up runtimepath
if has('win32')
    let g:vim_path = "S:/Dropbox/code/nvim/"
    let g:vim_plug_path = g:vim_path . 'plugged/'
    set runtimepath+=S:/Dropbox/code/nvim/
    set rtp+=S:/Dropbox/code/nvim/
endif

" The path to the specific overrides for this machine, may or may not exist.
let g:hostname_vim_path = g:vim_path . 'host/' . g:hostname . '.vim'

" The only time we'll need a bare execute, helpers includes a function 'Require' which hides all this mess.
execute 'source' g:vim_path . 'helpers.vim'

" Load Plugin Manager
call Require('plug.vim')
call plug#begin(g:vim_plug_path)

call Require('plugins.vim')

call plug#end()

" Load global settings File
call Require('settings.vim')
" Load global mappings File
call Require('mappings.vim')

" Load vscode specific stuff
if exists('g:vscode')
    call Require('vscode.vim')
endif

" Load machine specific customizations
if filereadable(g:hostname_vim_path)
    call Require(g:hostname_vim_path)
endif


helptags ALL