#!/bin/sh

export GVIMINIT='let $MYGVIMRC="$XDG_CONFIG_HOME/vim/gvimrc" | source $MYGVIMRC'
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

if [[ -z $TMUX ]]; then
  # Add all directories in `~/.local/bin` to $PATH
  export PATH="$PATH:$(find ~/.local/bin -type d | paste -sd ':' -)"
  export LD_LIBRARY_PATH=${XDG_DATA_HOME}/lib:$LD_LIBRARY_PATH
fi

# Start X if not started on tty 1 yet
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR = 3 ]]; then
  exec startx
fi
