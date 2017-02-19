[ ! -d ~/.zplug ] && curl -sL zplug.sh/installer | zsh
source ~/.zplug/init.zsh

zplug "djui/alias-tips"
zplug "sharat87/zsh-vim-mode"

! zplug check && zplug install
zplug load
