return {
  -- Treesitter: Better syntax highlighting and code parsing
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate", -- Run this command when the plugin is first installed
    config = function()
      require("nvim-treesitter.configs").setup({
        -- A list of parser names, or "all"
        ensure_installed = {
          "javascript",
          "typescript",
          "tsx", -- This is the crucial one for .tsx files
          "html",
          "css",
          "json",
          "lua",
          "python",
          "bash",
        },
        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,
        -- Automatically install missing parsers when entering buffer
        auto_install = true,
        -- Enable syntax highlighting
        highlight = {
          enable = true,
        },
      })
    end,
  },
}
