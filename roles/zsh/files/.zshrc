ZSH_THEME=robbyrussell

# Plugins ----------------------------------------------------------------------

if ! [ -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc
fi

export ZSH="$HOME/.oh-my-zsh"
plugins=(
    git
    # z
    # zsh-autosuggestions
    # zsh-syntax-highlighting
    # zsh-history-substring-search
)
source $ZSH/oh-my-zsh.sh



# Other ----------------------------------------------------------------------

setopt NO_BEEP
# Stop ctrl-d from closing the shell
setopt IGNORE_EOF


export EDTIOR=nvim
export MANPAGER='nvim +Man!'

export ZSH_AUTOSUGGEST_USE_ASYNC=1

# Sourcing -------------------------------------------------------------------

! [ -f ~/.aliases      ] || source ~/.aliases
! [ -f ~/.zsh_profile  ] || source ~/.zsh_profile
! [ -f ~/.zshenv       ] || source ~/.zshenv
! [ -f ~/.inputrc      ] || source ~/.inputrc

! [ -f ~/.fzf.zsh       ] || source ~/.fzf.zsh
! [ -f ~/.aliases_local ] || source ~/.aliases_local
! [ -f ~/.zshrc_local   ] || source ~/.zshrc_local

function apt-history(){
    case "$1" in
      install)
            cat /var/log/dpkg.log | grep 'install '
            ;;
      upgrade|remove)

            cat /var/log/dpkg.log | grep $1

            ;;
      rollback)
            cat /var/log/dpkg.log | grep upgrade | \
                grep "$2" -A10000000 | \
                grep "$3" -B10000000 | \
                awk '{print $4"="$5}'
            ;;
      *)
            cat /var/log/dpkg.log
            ;;
    esac
}
