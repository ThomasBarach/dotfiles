export TERM="xterm-256color"

dotfile_dir="$(dirname "$(readlink -f ~/.zshrc)")"

# Antigen rocks
source ${dotfile_dir}/.antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle Tarrasch/zsh-command-not-found
antigen bundle hcgraf/zsh-sudo
antigen bundle dotenv
antigen bundle osx
antigen bundle jsontools
antigen bundle node
antigen bundle colored-man-pages
antigen bundle colorize
antigen bundle common-aliases
antigen bundle copyfile
antigen bundle littleq0903/gcloud-zsh-completion
antigen bundle nnao45/zsh-kubectl-completion

antigen theme denysdovhan/spaceship-prompt
antigen apply
antigen selfupdate

# LMAO
fortune -s -n 300 | cowsay -f bong

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/thomasbarach/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/thomasbarach/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/thomasbarach/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/thomasbarach/google-cloud-sdk/completion.zsh.inc'; fi

eval "$(thefuck --alias)"
