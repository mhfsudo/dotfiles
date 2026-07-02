#!/bin/sh

set -e

echo "==> Installing zsh..."
if command -v apt-get > /dev/null 2>&1; then
    apt-get update -q && apt-get install -y -q zsh
elif command -v dnf > /dev/null 2>&1; then
    dnf install -y zsh
elif command -v yum > /dev/null 2>&1; then
    yum install -y zsh
elif command -v apk > /dev/null 2>&1; then
    apk add --no-cache zsh
else
    echo "ERROR: No supported package manager found (apt, dnf, yum, apk)" >&2
    exit 1
fi

echo "==> Setting zsh as default shell for $(whoami)..."
ZSH_PATH="$(command -v zsh)"

if ! grep -qF "$ZSH_PATH" /etc/shells; then
    echo "$ZSH_PATH" >> /etc/shells
fi

chsh -s "$ZSH_PATH" "$(whoami)"

echo "==> Done. Default shell set to $ZSH_PATH"
