export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/bin/:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.npm-global/bin/:$PATH
# pnpm
export PNPM_HOME="/Users/marwanfikrat/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
alias pn=pnpm
alias pnx="pnpm exec nx"
# pnpm end
# yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
# yarn end

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"



#bun
# completions
[ -s "~/.bun/_bun" ] && source "~/.bun/_bun"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
#bun end
