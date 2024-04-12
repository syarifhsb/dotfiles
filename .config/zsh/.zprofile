#!/bin/sh

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Add all directories in `~/.local/bin` to $PATH
export PATH="$PATH:$(find ~/.local/bin -type d | paste -sd ':' -)"

# export PATH=${XDG_DATA_HOME}/bin/:$PATH
export LD_LIBRARY_PATH=${XDG_DATA_HOME}/lib:$LD_LIBRARY_PATH

# Start X if not started on tty 1 yet
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -lt 3 ]; then
	exec startx 
fi
