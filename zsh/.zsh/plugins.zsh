zplug "zplug/zplug", hook-build:'zplug --self-manage'
zplug "b4b4r07/zsh-vimode-visual", use:"*.zsh", defer:3
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Completions
zplug "zsh-users/zsh-completions"
zplug "plugins/kubectl", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
