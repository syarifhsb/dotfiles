# The following lines were added by compinstall


autoload -U colors && colors
autoload -Uz compinit
zmodload zsh/complist
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' menu select
zstyle ':completion:*:*:cp:*' file-sort size reverse
zstyle :compinstall filename '/home/syarif/.config/zsh/.zshrc'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path $XDG_CACHE_HOME/zsh/.zcompcache
compinit -d $XDG_CACHE_HOME/zsh/.zcompdump
fpath=(~/.local/share/zsh $fpath)
# _comp_options+=(globdots)

# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=$XDG_CACHE_HOME/zsh/.zsh_history
HISTSIZE=5000
SAVEHIST=5000
setopt appendhistory
bindkey -v # use vim binding
# End of lines configured by zsh-newuser-install

# Load Aliases and shortcut
[ -f $XDG_CONFIG_HOME/shell/aliasrc ] && . $XDG_CONFIG_HOME/shell/aliasrc
[ -f $XDG_CONFIG_HOME/shell/shortcutrc ] && . $XDG_CONFIG_HOME/shell/shortcutrc

# Import custom keybindings
source $ZDOTDIR/keybind.zsh

# Prompt
PROMPT="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%1~%{$fg[red]%}]%{$reset_color%}$%b "

# Load zsh-syntax-highlighting; should be last. (No plugin yet)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh

# bun completions
[ -s "/home/syarif/.bun/_bun" ] && source "/home/syarif/.bun/_bun"

# deno env
. "/home/syarif/.deno/env"
# deno completions
[ -s "/home/syarif/.deno/_deno" ] && source "/home/syarif/.deno/_deno"
