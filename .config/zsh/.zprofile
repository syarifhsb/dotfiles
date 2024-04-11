#!/bin/sh

export PATH=/home/syarif/.local/bin/:$PATH
export LD_LIBRARY_PATH=/home/syarif/.local/lib:$LD_LIBRARY_PATH
# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Start X if not started on tty 1 yet
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -lt 3 ]; then
	exec startx 
fi
