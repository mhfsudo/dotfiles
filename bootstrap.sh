#!/bin/sh

set -e

DOTFILES_DIR="${DOTFILES_DIR:-$HOME/dotfiles}"
DOTFILES_REPO="${DOTFILES_REPO:-https://github.com/mhfsudo/dotfiles.git}"

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
# 2. Install starship
# ---------------------------------------------------------------------------

echo "==> Installing starship..."
curl -sS https://starship.rs/install.sh | sudo sh -s -- --yes

# ---------------------------------------------------------------------------
# 3. Install stow (needed to link configs)
# ---------------------------------------------------------------------------

if ! command -v stow > /dev/null 2>&1; then
    echo "==> Installing stow..."
    install_packages stow
fi

# ---------------------------------------------------------------------------
# 4. Clone dotfiles repo (if not already present)
# ---------------------------------------------------------------------------

if [ ! -d "$DOTFILES_DIR" ]; then
    echo "==> Cloning dotfiles into $DOTFILES_DIR..."
    git clone "$DOTFILES_REPO" "$DOTFILES_DIR"
else
    echo "==> Dotfiles directory already exists at $DOTFILES_DIR, skipping clone."
fi

# ---------------------------------------------------------------------------
# 5. Stow configs
# ---------------------------------------------------------------------------

echo "==> Stowing configs..."
stow --dir="$DOTFILES_DIR" --target="$HOME" --restow zsh starship

echo "==> Done."
