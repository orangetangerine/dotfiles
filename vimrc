set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

" let Vundle manage Vundle, required
"Plugin 'gmarik/Vundle.vim'
"Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on    " required

set ts=4
:syntax on
set number
set nocompatible
set backspace=indent,eol,start

autocmd BufNewFile *.sh call SetTitle()
func SetTitle() 
    "如果文件类型为.sh文件 
    if &filetype == 'sh' 
        call setline(1,"\#########################################################################") 
        call append(line("."),   "\# File Name: ".expand("%")) 
        call append(line(".")+1, "\# Author: Orange") 
        call append(line(".")+2, "\#") 
        call append(line(".")+3, "\# Created Time: ".strftime("%Y-%m-%d")) 
        call append(line(".")+4, "\#########################################################################") 
		call append(line(".")+5, "")
        call append(line(".")+6, "\#!/bin/bash") 
        call append(line(".")+7, "")
	endif
endfunc
