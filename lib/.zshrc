# Environment variables
export ZSH="$HOME/.config/oh-my-zsh"

export PNPM_HOME="$HOME/.local/share/pnpm"
export NPM_GLOBAL="$HOME/.local/share/npm-global/bin"
export PATH="$PATH:$PNPM_HOME:$NPM_GLOBAL:$HOME/go/bin:$HOME/.local/share/flutter/bin:$HOME/.local/share/genymotion"

export STARSHIP_CONFIG=~/.config/starship/starship.toml

# Aliases
alias "discord-mic=/home/user/dev/source/soundux/rohrkabel/examples/link-app-to-mic/cmake-build-release/link-app-to-mic-example"
alias "dc=docker compose"
alias "dcu=docker compose up -d --remove-orphans"
alias "dcd=docker compose down --remove-orphans"
alias "ingest-dnxhr=/run/media/user/data/media/ingest-dhxhr.sh"
alias "ingest-prores=/run/media/user/data/media/ingest-prores.sh"
alias "ingest-mpeg4=/run/media/user/data/media/ingest-mpeg4.sh"

# OMZ auto-update behavior
zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 13   # update every 13 days

plugins=(git fzf zsh-autosuggestions fast-syntax-highlighting zsh-history-substring-search)

source $ZSH/oh-my-zsh.sh
source /etc/grc.zsh

eval "$(starship init zsh)"
