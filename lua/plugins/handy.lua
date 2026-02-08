return {
    {
	'ojroques/vim-oscyank',
    },

    {
	--show css colors
	'brenoprata10/nvim-highlight-colors',
	config = function()
	    require('nvim-highlight-colors').setup({})
	end
    },

{
    "L3MON4D3/LuaSnip",
    dependencies = {
        "rafamadriz/friendly-snippets",
    },
},
    -- Snippet engine
    {
	"L3MON4D3/LuaSnip",
	dependencies = {
	    "rafamadriz/friendly-snippets", -- Collection of pre-configured snippets
	},
    },

    -- Auto-close brackets, quotes, etc
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },
  
  -- Auto-close HTML/JSX/TSX tags
  {
    "windwp/nvim-ts-autotag",
    ft = { "html", "xml", "jsx", "tsx", "javascript", "typescript", "javascriptreact", "typescriptreact" },
    config = function()
      require("nvim-ts-autotag").setup()
    end
  },
}
