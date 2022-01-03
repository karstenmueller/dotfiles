GOPATH=$HOME
SOURCE=$GOPATH/src

_path+="$HOME/.bin"
_path+=":$HOME/.local/bin"
_path+=":$HOME/.tgenv/bin"
_path+=":$HOME/.helmenv/bin"
_path+=":/usr/local/opt/coreutils/libexec/gnubin" # use Homebrew GNU tools with their usual names
_path+=":$GOPATH/bin"
_path+=":$HOME/.krew/bin"
_path+=":$HOME/.cargo/bin"

fpath=(~/.oh-my-zsh/custom $fpath)
autoload -Uz compinit && compinit -i

PATH="$_path:$PATH"
TERM="xterm-256color"

export APPLE_SSH_ADD_BEHAVIOR="macos"
ssh-add -K ~/.ssh/id_rsa # macOS: passphrase will also be stored in the user's keychain

# --------------------------------------------------------------------------
# zsh related
# --------------------------------------------------------------------------
# Path to oh-my-zsh installation
ZSH="$HOME/.oh-my-zsh"
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
HISTCONTROL=ignoredups:ignorespace
source "$ZSH/oh-my-zsh.sh"

plugins=(
  terraform
  kubectl
  brew
  zsh-autosuggestions
  zsh-syntax-highlighting
)
# zsh-syntax-highlighting  has to be the last plugin

# zsh plugin does not work!?
if [ $commands[kubectl] ]; then source <(kubectl completion zsh); fi

# --------------------------------------------------------------------------
# History
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=10000000
export SAVEHIST=$HISTSIZE
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS

# --------------------------------------------------------------------------
# helmenv
[ -e $HOME/.helm/helmenv.sh ] && source $HOME/.helm/helmenv.sh

# --------------------------------------------------------------------------
# keep secrets secret ;)
[ -e $HOME/.zshrc.secret ] && source $HOME/.zshrc.secret

# iTerm2
[ -e "${HOME}/.iterm2_shell_integration.zsh" ] && source "${HOME}/.iterm2_shell_integration.zsh"

# --------------------------------------------------------------------------
# direnv
if command -v direnv &>/dev/null; then
  alias enva='direnv allow'
  export DIRENV_WARN_TIMEOUT=360s
  # export DIRENV_LOG_FORMAT="" # makes direnv less noisy
  eval "$(direnv hook zsh)"
fi

if command -v cloud-nuke &>/dev/null; then
  alias aws-nuke=cloud-nuke
fi

# eksctl
# eval "$(eksctl completion zsh)"

# gpg
export GPG_TTY=$(tty)

# --------------------------------------------------------------------------
# Preferred editor for local and remote sessions
if [ -n "$SSH_CONNECTION" ]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi

# Open VSCode
# does not work
# code() { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $*; }

# --------------------------------------------------------------------------
# edit ~/.zshrc
alias ec="$EDITOR $HOME/.zshrc"
# source ~/.zshrc
alias sc="source $HOME/.zshrc"
# edit ~/.Brewfile
alias eb="$EDITOR $HOME/.Brewfile"

alias git-open='gh repo view --web'
alias mtr='sudo /usr/local/sbin/mtr'

# prune docker files
alias docker-prune='docker system prune --all --force --volumes'

# run super-linter
alias super-linter='docker run -e RUN_LOCAL=true -v $(pwd):/tmp/lint github/super-linter'

# pre-commit
alias pre-commit-show='pre-commit run --all-files --show-diff-on-failure'

alias tf='terraform'
alias tf-docs='terraform-docs markdown table --output-file README.md --output-mode inject .'

# --------------------------------------------------------------------------
# Kubernetes
export KUBERNETES_MASTER=""
export KUBE_EDITOR='code --wait'
# see https://github.com/ahmetb/kubectl-aliases
alias kx="kubectx"
alias kn="kubens"
alias kc='kubectl'
# alias kgi='kubectl cluster-info'
# alias kgp='kubectl get pods'
# alias kgs='kubectl get svc'
# alias kgc='kubectl get componentstatuses'
# alias kctx='kubectl config current-context'
# alias kcon='kubectl config use-context'
# alias kgc='kubectl config get-context'
alias kalias='alias | egrep "kx=|kn=|kc=|kgi=|kgp=|kgs=|kct|kcon=|kgc="'
alias kubetail=stern
alias kc-get-ns='kubectl get ns -o jsonpath="{range .items[*]}{.metadata.name}{'\n'}"'
alias brew-update='brew update; brew bundle check --global || ( brew bundle --global; brew link tfenv; brew bundle --cleanup --global); brew upgrade; brew cleanup'

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
  cd) fzf "$@" --preview 'tree -C {} | head -200' ;;
  *) fzf "$@" ;;
  esac
}

# change directory to topmost finder window while in terminal
function ff { osascript -e 'tell application "Finder"' \
  -e "if (${1-1} <= (count Finder windows)) then" \
  -e "get POSIX path of (target of window ${1-1} as alias)" \
  -e 'else' -e 'get POSIX path of (desktop as alias)' \
  -e 'end if' -e 'end tell'; }

function cdf { cd "$(ff $@)"; }
