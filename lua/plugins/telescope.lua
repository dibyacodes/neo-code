return {
  -- Fuzzy Finder (Files, Grep, etc)
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6", -- Recommended to pin to a stable version
    dependencies = {
      "nvim-lua/plenary.nvim", -- Essential dependency for Telescope
      "nvim-tree/nvim-web-devicons", -- Optional, for icons
    },
    config = function()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")

      -- Configure Telescope
      telescope.setup({
        defaults = {
          -- Default configuration for telescope goes here:
          mappings = {
            i = {
              -- Map <Esc> to close the telescope window normally
              ["<Esc>"] = require("telescope.actions").close,
            },
          },
        },
        pickers = {
          -- Configure specific pickers here
          find_files = {
            theme = "dropdown", -- Use a dropdown theme for find_files
            hidden = true, -- Include hidden files (files starting with .)
          },
          live_grep = {
            theme = "dropdown", -- Use a dropdown theme for live_grep
          },
          buffers = {
            theme = "dropdown", -- Use a dropdown theme for buffers
            sort_lastused = true, -- Sort buffers by most recently used
          },
        },
        extensions = {
          -- Future extensions can be configured here
        },
      })

      -- Set keymaps for common Telescope functions
      -- Find files (respects .gitignore)
      vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[F]ind [F]iles" })
      
      -- Grep (search) string in current working directory
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[F]ind by [G]rep" })
      
      -- Find buffers (open files)
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "[F]ind [B]uffers" })
      
      -- Find help tags
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "[F]ind [H]elp" })
      
      -- Find recent files (oldfiles)
      vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "[F]ind [O]ld files" })
      
      -- Grep string under cursor
      vim.keymap.set("n", "<leader>fc", function()
        builtin.grep_string({ search = vim.fn.expand("<cword>") })
      end, { desc = "[F]ind [C]urrent word" })
    end,
  },
}
