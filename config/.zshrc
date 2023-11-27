# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
BREW_PREFIX=$(brew --prefix)

plugins=(git docker docker-compose node npm zsh-syntax-highlighting)

source $BREW_PREFIX/share/powerlevel10k/powerlevel10k.zsh-theme

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source $ZSH/oh-my-zsh.sh

source ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh