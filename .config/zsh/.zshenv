# Default programs:
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="zen-browser"
export READER="zathura"

if [[ -z $TMUX ]]; then
  # Add all directories in `~/.local/bin` to $PATH
  export PATH="$PATH:$(find ~/.local/bin -type d | paste -sd ':' -)"
  export LD_LIBRARY_PATH=${XDG_DATA_HOME}/lib:$LD_LIBRARY_PATH
  # proto
  export PROTO_HOME="$HOME/.proto";
  export PATH="$PROTO_HOME/shims:$PROTO_HOME/bin:$PATH";
fi
