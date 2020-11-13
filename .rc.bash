alias ll='ls $LS_OPTIONS -l'
alias tmux='tmux -2'

### ctrl+arrows
# works in most terminals: xterm, gnome-terminal, terminator, st, sakura, termit, …
bind '"\e[1;5C": forward-word'
bind '"\e[1;5D": backward-word'
# urxvt
bind '"\eOc": forward-word'
bind '"\eOd": backward-word'

### ctrl+delete
bind '"\e[3;5~": kill-word'
# in this case, st misbehaves (even with tmux)
bind '"\e[M": kill-word'
# and of course, urxvt must be always special
bind '"\e[3^": kill-word'

### ctrl+backspace
bind '"\C-h": backward-kill-word'

### ctrl+shift+delete
bind '"\e[3;6~": kill-line'
# URxvt note: you have to disable Ctrl+Shift popup in ~/.Xresources:
# URxvt.iso14755: true
# URxvt.iso14755_52: false
bind '"\e[3@": kill-line'
# st sends same sequence as plain delete :(
