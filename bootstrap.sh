#!/bin/sh

echo "=============================================================================="
echo "                                      "
echo "       __    ___  ___   ___  _______	"
echo "      /  \__/  / /  /  /  / /  ____/  "
echo "     /        / /  /__/  / /  /__     "
echo "    /  /\_/  / /  ___   / /  ___/     "
echo "   /  /  /  / /  /  /  / /  /		    "
echo "  /__/  /__/ /__/  /__/ /__/ 		    "
echo "                                      "
echo "======================================"
echo ""
echo "Good, let's update your system"
echo ""

set -e

echo "=== System Update ==="
echo ""

sudo apt-get update -q
sudo apt-get upgrade -y -q
sudo apt-get autoremove -y -q
sudo apt-get autoclean -y -q   

install_packages() {
    if command -v apt-get > /dev/null 2>&1; then
        sudo apt-get update -q
        sudo apt-get install -y -q "$@"
    else
        echo "ERROR: No supported package manager found" >&2
        exit 1
    fi
}

echo "=== Prepare confiugrations ==="
echo ""

curdir="$(dirname "$0")"
cp "$curdir/zsh/.zshrc" ~/.zshrc
cp "$curdir/git/.gitconfig" ~/.gitconfig
cp "$curdir/starship/.config/starship.toml" ~/.config/starship.toml
cp "$curdir/tmux/.tmux.conf" ~/.tmux.conf
cp "$curdir/vim/.vimrc" ~/.vimrc

echo "=== Installing zsh ==="
echo ""

echo "==> Installing zsh..."
install_packages zsh

echo "==> Setting zsh as default shell for $(whoami)..."
ZSH_PATH="$(command -v zsh)"

if ! grep -qF "$ZSH_PATH" /etc/shells; then
    echo "$ZSH_PATH" | sudo tee -a /etc/shells > /dev/null
fi

sudo chsh -s "$ZSH_PATH" "$(whoami)"
echo "    Default shell set to $ZSH_PATH"

echo "=== Installing oh-my-zsh ==="
echo ""

echo "==> Installing oh-my-zsh..."
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc
else
    echo "    oh-my-zsh already installed, skipping."
fi

echo "=== Installing tmux ==="
echo ""

install_packages tmux

echo "=== Installing starship ==="
echo ""

curl -sS https://starship.rs/install.sh | sudo sh -s -- --yes

echo "=== Installing vim ==="
echo ""

install_packages vim

echo "=== Installing LazyVim ==="
echo ""

mv ~/.config/nvim{,.bak}
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

echo ""
echo "Good, we're done"
echo ""
echo "=============================================================================="
