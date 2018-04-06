if [ $TERMINIX_ID ] || [ $VTE_VERSION ]; then
    source /etc/profile.d/vte.sh
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#
# User configuration sourced by interactive shells
#

# Source zim
if [[ -s ${ZDOTDIR:-${HOME}}/.zim/init.zsh ]]; then
  source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
fi
unsetopt correct

# source configs
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh
for config (~/.zsh/*.zsh) source $config

bindkey '^r' history-incremental-search-backward

# Completions
if [ -f $(brew --prefix)/share/zsh-completions ]; then
    fpath=(/usr/local/share/zsh-completions $fpath)
fi

if [ $commands[kubectl] ]; then
    source <(kubectl completion zsh)
fi
