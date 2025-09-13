return {
  -- File Tree Explorer
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- We'll still keep this for file icons, but configure folder glyphs
    },
    config = function()
      -- Recommended settings from the plugin README to avoid crashes
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      -- Configure nvim-tree with simple ASCII arrows
      require("nvim-tree").setup({
        view = {
          width = 35,
        },
        renderer = {
          group_empty = true,
          icons = {
            -- Use simple ASCII arrows for folders (no font required!)
            glyphs = {
              folder = {
                arrow_closed = "▶",  -- Closed folder: right-pointing angle bracket
                arrow_open = "▼",    -- Open folder: down-pointing angle bracket
              },
            },
            -- Disable all other icons to keep it clean and universal
            show = {
              file = false,     -- Don't show icons for files
              folder = false,   -- Don't show icons for folders (we're using arrows)
              folder_arrow = true, -- DO show our custom folder arrows
              git = true,       -- Keep git status indicators (they use text: M, U, etc.)
            },
          },
        },
        filters = {
          dotfiles = false,
        },
        git = {
          enable = true,
          ignore = false,
        },
        actions = {
          open_file = {
            quit_on_open = false,
            window_picker = {
              enable = true,
            },
          },
        },
      })

      -- Set keymaps to toggle the file tree
      vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle File [E]xplorer" })
      vim.keymap.set("n", "<leader>ff", ":NvimTreeFindFile<CR>", { desc = "[F]ind File in Explorer" })
    end,
  },
}
