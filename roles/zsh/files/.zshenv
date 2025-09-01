export EDTIOR=nvim
export MANPAGER='nvim +Man!'

export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.npm-global/bin/:$PATH
export PATH=$HOME/.local/bin:$PATH

# GO
export PATH=/usr/local/go/bin:$PATH

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
alias pnx="pnpm exec nx"
# pnpm end

# yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
# yarn end

# fnm
FNM_PATH="$HOME/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/marwan/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi

#bun
# completions
[ -s "~/.bun/_bun" ] && source "~/.bun/_bun"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
#bun end

