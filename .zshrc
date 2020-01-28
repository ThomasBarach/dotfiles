export TERM="xterm-256color"

dotfile_dir="$(dirname "$(readlink -f ~/.zshrc)")"

# Antigen rocks
source ${dotfile_dir}/zsh/antigen/antigen.zsh

# nécessaire pour spaceship
antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle Tarrasch/zsh-command-not-found
antigen bundle hcgraf/zsh-sudo

# theme super cool, custom : https://github.com/denysdovhan/spaceship-zsh-theme
#antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship
#SPACESHIP_BATTERY_SHOW=false
antigen theme denysdovhan/spaceship-prompt

antigen apply
