if [[ `uname` == 'Darwin' ]]; then
	export ZPLUG_HOME=/usr/local/opt/zplug
	source $ZPLUG_HOME/init.zsh
else
	source ~/.zplug/init.zsh
fi

# [ ! -d ~/.zplug ] && curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh

zplug "djui/alias-tips"
zplug "sharat87/zsh-vim-mode"
zplug "plugins/emacs", from:oh-my-zsh
zplug "lib/clipboard", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
zplug 'dracula/zsh', as:theme

! zplug check && zplug install
zplug load
