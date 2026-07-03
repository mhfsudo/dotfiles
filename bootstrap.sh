#!/bin/sh

set -e

# ---------------------------------------------------------------------------
# Package installation helpers
# ---------------------------------------------------------------------------

install_packages() {
    if command -v apt-get > /dev/null 2>&1; then
        sudo apt-get update -q
        sudo apt-get install -y -q "$@"
    elif command -v dnf > /dev/null 2>&1; then
        sudo dnf install -y "$@"
    elif command -v yum > /dev/null 2>&1; then
        sudo yum install -y "$@"
    elif command -v apk > /dev/null 2>&1; then
        sudo apk add --no-cache "$@"
    else
        echo "ERROR: No supported package manager found (apt, dnf, yum, apk)" >&2
        exit 1
    fi
}

# ---------------------------------------------------------------------------
# Prepare configurations
# ---------------------------------------------------------------------------

curdir="$(dirname "$0")"
cp "$curdir/zsh/.zshrc" ~/.zshrc
cp "$curdir/starship/.config/starship.toml" ~/.config/starship.toml
echo "==> Configuration files copied to home directory."

# ---------------------------------------------------------------------------
# 1. Install zsh
# ---------------------------------------------------------------------------

echo "==> Installing zsh..."
install_packages zsh

echo "==> Setting zsh as default shell for $(whoami)..."
ZSH_PATH="$(command -v zsh)"

if ! grep -qF "$ZSH_PATH" /etc/shells; then
    echo "$ZSH_PATH" | sudo tee -a /etc/shells > /dev/null
fi

sudo chsh -s "$ZSH_PATH" "$(whoami)"
echo "    Default shell set to $ZSH_PATH"

# ---------------------------------------------------------------------------
# 2. Install oh-my-zsh
# ---------------------------------------------------------------------------

echo "==> Installing oh-my-zsh..."
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc
else
    echo "    oh-my-zsh already installed, skipping."
fi

# ---------------------------------------------------------------------------
# 3. Install tmux
# ---------------------------------------------------------------------------

echo "==> Installing tmux..."
install_packages tmux

# ---------------------------------------------------------------------------
# 4. Install starship
# ---------------------------------------------------------------------------

echo "==> Installing starship..."
curl -sS https://starship.rs/install.sh | sudo sh -s -- --yes

# ---------------------------------------------------------------------------
# 5. Install JetBrainsMono Nerd Font
# ---------------------------------------------------------------------------

echo "==> Installing JetBrainsMono Nerd Font..."
FONT_DIR="$HOME/.local/share/fonts/JetBrainsMonoNerdFont"
mkdir -p "$FONT_DIR"
FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz"
curl -fsSL "$FONT_URL" | tar -xJ -C "$FONT_DIR"
fc-cache -f "$FONT_DIR"
echo "    JetBrainsMono Nerd Font installed."

echo "==> Done."
