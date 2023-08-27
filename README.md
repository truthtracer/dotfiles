dotfiles
=====
```
cd dotfiles
mv .tmux* .vim* .rc.bash ~/

git clone https://github.com/chris-marsh/pureline
cp pureline/configs/powerline_full_256col.conf ~/.pureline.conf

vim ~/.bashrc
  source ~/.rc.bash
  source ~/pureline/pureline ~/.pureline.conf

for WSL only, vim ~/.bashrc
  if [ -f ~/.bash_sysinit ]; then
      . ~/.bash_sysinit
  fi
```
