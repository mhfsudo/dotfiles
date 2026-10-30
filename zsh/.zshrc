# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

zstyle ':omz:update' mode auto
plugins=(
  aliases
  brew
  colored-man-pages
  colorize
  cp
  docker 
  fzf
  git
  git-auto-fetch
  git-lfs
  gitignore
  herdr
  k9s
  kubectl
  kubectx
  macos
  mvn
  starship
  vscode
  zsh-syntax-highlighting
  zsh-navigation-tools
  zsh-interactive-cd
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Aliases
# Alias configs
alias aerospaceconfig="nvim ~/.aerospace.toml"
alias alacrittyconfig="nvim ~/.config/alacritty/alacritty.toml"
alias bashconfig="nvim ~/.bashrc"
alias ghosttyconfig="nvim ~/.config/ghostty/config"
alias gitconfig="nvim ~/.gitconfig"
alias kittyconfig="nvim ~/.config/kitty/kitty.conf"
alias p10kconfig="nvim ~/.p10k.zsh"
alias vimconfig="nvim ~/.vimrc"
alias zshconfig="nvim ~/.zshrc"

# Alias scripts
alias updatelinux="zsh ~/dotfiles/scripts/linux/scripts_fedora_based_distribution/update.sh"
alias updatemac="zsh ~/dotfiles/scripts/macos/update.sh"

# Alias Shortcuts
alias g="git"
alias kc="kubectl"
alias l="ls -lah"
alias nv="nvim"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export PATH="/opt/homwbrew/bin/:$PATH"
export SSH_AUTH_SOCK=/home/mhf/.ssh/proton-pass-ssh-agent.sock
export PATH="/home/mhf/.local/bin:$PATH"
export PATH=$PATH:$HOME/go/bin

eval "$(starship init zsh)"

