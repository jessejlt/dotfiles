if [[ `uname` == 'Darwin' ]]; then
	export ZPLUG_HOME=/usr/local/opt/zplug
	source $ZPLUG_HOME/init.zsh
else
	source ~/.zplug/init.zsh
fi

[ ! -d ~/.zplug ] && curl -sL zplug.sh/installer | zsh

zplug "djui/alias-tips"
zplug "sharat87/zsh-vim-mode"

! zplug check && zplug install
zplug load
