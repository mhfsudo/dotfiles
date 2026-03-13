# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

Personal dotfiles for Michael Friderich. Configs are organized by tool name, each containing the full path structure needed for symlinking or copying into `$HOME`. There are no build steps, tests, or package managers — this is a collection of configuration files and shell scripts.

## Structure

Each top-level directory maps to a tool and mirrors the target filesystem path:

- `nvim/.config/nvim/` — Neovim config (Lua, lazy.nvim plugin manager)
- `zsh/.zshrc` — Zsh with Oh My Zsh, Powerlevel10k theme
- `alacritty/.config/alacritty/` — Alacritty terminal config
- `ghostty/.config/ghostty/` — Ghostty terminal with Catppuccin themes
- `kitty/.config/kitty/` — Kitty terminal config
- `glaze-wm/` — GlazeWM tiling window manager (Windows)
- `nixos/` — NixOS system configuration
- `keychron/` — QMK keyboard layout files
- `scripts/linux/` — Shell scripts organized by distro (`arch`, `debian`, `fedora`)
- `scripts/macos/` — macOS shell scripts
- `Brewfile` — macOS Homebrew packages, casks, and VS Code extensions

## Neovim Architecture

The nvim config uses lazy.nvim with plugins split into individual files under `plugins/`:

- `init.lua` — bootstraps lazy.nvim, loads `lazy-setup` and scans `plugins/` directory
- `lua/lazy-setup.lua` — vim options and keymaps (leader=Space, Ctrl+S save, Ctrl+W quit)
- `plugins/` — one file per plugin (catppuccin, telescope, treesitter, neo-tree, mason, none-ls, completions, lualine, debugging, obsidian, zen, alpha-nvim, tmux-navigation)

To add a new plugin, create a new `.lua` file in `nvim/.config/nvim/plugins/`.

## Workflow

- Branching: GitHub/GitLab Flow — feature branches merged to `main` via PR/MR
- CI: GitHub Actions syncs `main` to GitLab on every push (`.github/workflows/github-ci.yml`)
- Pre-commit hooks: uses `pre-commit` framework (not yet configured beyond the sample hook)

## Themes

Catppuccin is the consistent colorscheme across all tools (Frappe, Latte, Macchiato, Mocha variants available in ghostty and COSMIC desktop themes).
