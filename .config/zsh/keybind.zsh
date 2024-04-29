# Load functions from $PFX/share/zsh/functions
autoload -Uz select-quoted select-bracketed 

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# Keybind in insert mode
bindkey -v '^?'    backward-delete-char     #Backspace key
bindkey -v '[3~' vi-delete-char           #Home
bindkey -v '[1~' vi-beginning-of-line     #End
bindkey -v '[4~' vi-end-of-line           #Del
bindkey -v '[5~' vi-up-line-or-history    #PgUp
bindkey -v '[6~' vi-down-line-or-history  #PgDown

bindkey -v '' history-incremental-search-backward

export KEYTIMEOUT=1

# function vimrc() { echo "opening vimrc"; vim ~/.vimrc; zle reset-prompt; zle redisplay }
# zle -N vimrc
# bindkey '^gv' vimrc

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'

  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

zle-line-init() {
  zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
  echo -ne "\e[5 q"
}
zle -N zle-line-init

# Bind key for select quoted and bracketedzle -N select-quoted
zle -N select-quoted
zle -N select-bracketed
for m in vicmd viopp; do
  for seq in {a,i}{\',\",\`}; do
    bindkey -M "$m" "$seq" select-quoted
  done
  for seq in {a,i}${(s..)^:-'()[]{}<>bB'}; do
    bindkey -M "$m" "$seq" select-bracketed
  done
done
