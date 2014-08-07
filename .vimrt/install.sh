if [ "$1" == "" ]; then
  echo ""
  echo "Usage to install vimrc:"
  echo "   sh .vimrt/install.sh <system>"
  echo "      - where <system> can be 'mac', 'linux' or 'windows'"
  exit 1
fi
echo "
fun! MySys()
   return \"$1\"
endfun
set runtimepath=~/.vimrt,~/.vimrt/after,\$VIMRUNTIME
source ~/.vimrt/vimrc
helptags ~/.vimrt/doc
let g:ex_toolkit_path = '~/.vimrt/toolkit'
" > ~/.vimrc
echo "Installed vim configuration successfully!"
