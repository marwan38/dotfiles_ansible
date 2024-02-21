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

# help switching php version
function bindphp() {
  version=$(php -v | grep -Eo '\d{1}\.\d{1,2}' | head -n 1)
  echo "Unlinking PHP $version"
  brew unlink php@$version
  echo "Linking PHP $1"
  brew link php@$1
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
