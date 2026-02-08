return{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
      "nvim-ts-autotag",  -- Add this as dependency
    },

    config = function()
	local configs = require("nvim-treesitter.configs")
	configs.setup({
	    highlight = {
		enable = true,
	    },
	    indent = {enable = true},
	    autotag = {enable = true},
	    ensure_installed = {
		"lua",
		"tsx",
		"typescript",
		"javascript",
		"html",
		"css"
	    },
	    auto_install = true	
	})
    end
}
