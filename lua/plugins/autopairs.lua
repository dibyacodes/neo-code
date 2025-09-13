return {
  -- Auto-pairs for automatic closing of brackets, quotes, etc.
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter", -- Load the plugin when you enter Insert mode
    config = function()
      require("nvim-autopairs").setup({})
      -- If you want to integrate with nvim-cmp (your autocompletion plugin), add this:
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      local cmp = require("cmp")
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end,
  },
}
