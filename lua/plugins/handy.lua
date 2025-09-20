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

    -- auto code completion
    {
	"hrsh7th/nvim-cmp",
	dependencies = {
	    "hrsh7th/cmp-nvim-lsp",       -- LSP completion source
	    "hrsh7th/cmp-buffer",         -- Buffer words completion
	    "hrsh7th/cmp-path",           -- File path completion
	    "hrsh7th/cmp-cmdline",        -- Command line completion
	    "saadparwaiz1/cmp_luasnip",   -- Snippet completion
	},
    },

    -- Snippet engine
    {
	"L3MON4D3/LuaSnip",
	dependencies = {
	    "rafamadriz/friendly-snippets", -- Collection of pre-configured snippets
	},
    }
}
