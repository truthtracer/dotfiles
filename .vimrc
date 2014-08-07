
fun! MySys()
   return "linux"
endfun
set runtimepath=~/.vimrt,~/.vimrt/after,$VIMRUNTIME
source ~/.vimrt/vimrc
helptags ~/.vimrt/doc
let g:ex_toolkit_path = '~/.vimrt/toolkit'

