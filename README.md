## Dibyacode's Neovim Setup
Make your shit code look atleast pretty.

A clean, minimal, and eye-friendly Neovim configuration built for productivity. Features a custom color scheme with orange and white on a pure black/terminal background, optimized for JavaScript/TypeScript, Python, and web development.

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
1.  Backup your existing Neovim configuration (if you have one).
2.  Clone this repository to your Neovim config directory.
3.  Start Neovim - the plugin manager will automatically install all dependencies.
4.  Wait for the installation to complete, then restart Neovim.

## ⌨️ Keymaps

### Leader Key
- `<space>` - Leader key (instead of default `\`)

### File Operations
- `<space>e` - Toggle file explorer (nvim-tree)
- `<space>ff` - Reveal current file in explorer

### Telescope (Fuzzy Finder)
- `<space>sf` - Search Files (fuzzy file finder)
- `<space>sg` - Search by Grep (live grep in files)
- `<space>sb` - Search Buffers (open files)
- `<space>sh` - Search Help (documentation)
- `<space>sc` - Search Current word (grep word under cursor)

### LSP (Language Server Protocol)
- `gd` - Go to definition
- `K` - Show documentation hover
- `<space>ca` - Code actions (refactor, fix, etc.)

## 🎨 Color Scheme

The custom color scheme uses only two main colors for minimal visual noise:
- **White** (`#ffffff`): Primary text color
- **Orange** (`#d08700`): Comments, constants, special syntax
- **Black/Terminal BG**: Pure black or terminal background

## ⚙️ Project Structure

~/.config/nvim/
├── init.lua
├── lua/
│ ├── options.lua
│ └── plugins/
│ ├── init.lua
│ ├── lsp.lua
│ ├── telescope.lua
│ ├── nvim-tree.lua
│ └── ui.lua
└── README.md


## 🔧 Customization

### Adding New LSP Servers
Edit `lua/plugins/lsp.lua` and add to the `ensure_installed` list.

### Changing Colors
Edit `lua/options.lua` and modify the highlight groups.

### Adding Plugins
Add new plugins to the appropriate file in `lua/plugins/` or create a new file.

## ❓ Troubleshooting

### LSP Servers Not Installing
Run `:Mason` to manually install or check LSP server status.

### Plugins Not Loading
Run `:Lazy` to check plugin status and debug issues.

### Colors Look Wrong
Ensure you have `termguicolors` enabled in your terminal.

**Happy Coding!** 🚀

The name is [**Dibyacodes**](https://x.com/dibyacodes)
