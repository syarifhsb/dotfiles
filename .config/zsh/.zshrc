# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/syh/.zshrc'

autoload -U colors && colors
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -d $XDG_CACHE_HOME/.zsh/.zcompdump

# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=$XDG_CACHE_HOME/zsh/.zsh_history
HISTSIZE=5000
SAVEHIST=5000
bindkey -v # vim binding
# End of lines configured by zsh-newuser-install

# Load Aliases and shortcut
[ -f $XDG_CONFIG_HOME/shell/aliasrc ] && . $XDG_CONFIG_HOME/shell/aliasrc
[ -f $XDG_CONFIG_HOME/shell/shortcutrc ] && . $XDG_CONFIG_HOME/shell/shortcutrc

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

export KEYTIMEOUT=1

# Prompt
PROMPT="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%1~%{$fg[red]%}]%{$reset_color%}$%b "

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

# Load zsh-syntax-highlighting; should be last. (No plugin yet)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
