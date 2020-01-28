set autoindent
syntax on
set background=dark
set nu
set hlsearch
set incsearch
set shiftwidth=4
set softtabstop=4
set expandtab

augroup filetypedetect
        au BufNewFile,BufRead *.sls    setf yaml
augroup END
