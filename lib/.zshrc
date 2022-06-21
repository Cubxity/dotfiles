# Environment variables
export ZSH="$HOME/.config/oh-my-zsh"

export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PATH:$PNPM_HOME"

export STARSHIP_CONFIG=~/.config/starship/starship.toml

# OMZ auto-update behavior
zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 13   # update every 13 days

plugins=(git fzf zsh-autosuggestions fast-syntax-highlighting zsh-history-substring-search)

source $ZSH/oh-my-zsh.sh
source /etc/grc.zsh

eval "$(starship init zsh)"
