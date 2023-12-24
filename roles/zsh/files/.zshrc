export ZSH="$HOME/.oh-my-zsh"
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-history-substring-search
)
ZSH_THEME=robbyrussell
source $ZSH/oh-my-zsh.sh

! [ -f ~/.aliases ] || source ~/.aliases

# Where should I put you?
bindkey -s ^f "tmux-sessionizer\n"
bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
