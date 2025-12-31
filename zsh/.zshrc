# Powerlevel10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
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
alias bashconfig="nvim ~/.bashrc"
alias ghosttyconfig="nvim ~/.config/ghostty/config"
alias gitconfig="nvim ~/.gitconfig"
alias p10kconfig="nvim ~/.p10k.zsh"
alias vimconfig="nvim ~/.vimrc"
alias zshconfig="nvim ~/.zshrc"

# Alias scripts
alias update="zsh ~/Git/dotfiles/scripts/linux/scripts_fedora_based_distribution/update.sh"
alias restart="zsh ~/Git/dotfiles/scripts/linux/scripts_fedora_based_distribution/reboot.sh"
alias shutdown="zsh ~/Git/dotfiles/scripts/linux/scripts_fedora_based_distribution/poweroff.sh"

# Alias Shortcuts
alias g="git"
alias l="ls -lah"
alias nv="nvim"
alias yazi="flatpak run io.github.sxyazi.yazi"