#!/bin/sh

set -e

echo "==> Installing zsh..."
if command -v apt-get > /dev/null 2>&1; then
    sudo apt-get update -q && sudo apt-get install -y -q zsh
elif command -v dnf > /dev/null 2>&1; then
    sudo dnf install -y zsh
elif command -v yum > /dev/null 2>&1; then
    sudo yum install -y zsh
elif command -v apk > /dev/null 2>&1; then
    sudo apk add --no-cache zsh
else
    echo "ERROR: No supported package manager found (apt, dnf, yum, apk)" >&2
    exit 1
fi

echo "==> Setting zsh as default shell for $(whoami)..."
ZSH_PATH="$(command -v zsh)"

if ! grep -qF "$ZSH_PATH" /etc/shells; then
    echo "$ZSH_PATH" | sudo tee -a /etc/shells > /dev/null
fi

sudo chsh -s "$ZSH_PATH" "$(whoami)"

echo "==> Done. Default shell set to $ZSH_PATH"

echo "==> Installing starship..."
curl -sS https://starship.rs/install.sh | sudo sh -s -- --yes

echo "==> Applying starship catppuccin preset..."
STARSHIP_CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}"
mkdir -p "$STARSHIP_CONFIG_DIR"
starship preset catppuccin-powerline -o "$STARSHIP_CONFIG_DIR/starship.toml"

echo "==> Done. Starship installed with catppuccin preset."
