# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

zstyle ':omz:update' mode auto
plugins=(
  colored-man-pages
  colorize
  docker 
  git
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
alias yazi="flatpak run io.github.sxyazi.yazi"

export PATH="$HOME/.zellij:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"
