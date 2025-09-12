# Dibya's Minimalist Neovim Setup

A clean, minimal, and eye-friendly Neovim configuration built for productivity. Features a custom color scheme with orange and white on a pure black/terminal background, optimized for JavaScript/TypeScript, Python, and web development.

![Neovim Setup Preview](https://via.placeholder.com/800x400/000000/d08700?text=Clean+Neovim+Setup)
*(Consider adding a screenshot of your setup here)*

## ✨ Features

- **🎨 Custom Color Scheme**: Minimalist orange (`#d08700`) and white syntax highlighting on a pure black/terminal background
- **⚡ Fast Startup**: Optimized with lazy.nvim for quick loading
- **🧠 Smart LSP**: Full Language Server Protocol support for:
  - JavaScript/TypeScript (tsserver)
  - Python (pyright)
  - HTML, CSS, Tailwind CSS
  - JSON, Bash, and more
- **🔍 Fuzzy Finding**: Telescope integration for blazing-fast file searching and text grepping
- **📁 File Explorer**: Nvim-tree with simple ASCII-style navigation (no font requirements)
- **📊 Status Line**: Clean lualine with custom orange theme
- **⌨️ Efficient Keymaps**: Space-based leader key for ergonomic navigation

## 🛠️ Tech Stack

- **Plugin Manager**: [lazy.nvim](https://github.com/folke/lazy.nvim)
- **LSP**: Mason + nvim-lspconfig + nvim-cmp
- **Fuzzy Finder**: [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- **File Explorer**: [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- **Status Line**: [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)

## 🚀 Installation

### Prerequisites
- Neovim (v0.9+ recommended)
- Git
- Node.js (for LSP support)
- Python (for LSP support)

### Quick Install
    1. **Backup your existing config** (if any):
        ```bash
           mv ~/.config/nvim ~/.config/nvim.backup
