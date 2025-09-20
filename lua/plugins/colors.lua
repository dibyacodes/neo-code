local function enable_transparency()
    vim.api.nvim_set_hl(0,"Normal",{bg = "none", bold = true})
    vim.api.nvim_set_hl(0,"NormalFloat",{bg = "none"})
end
return {
    {
	"folke/tokyonight.nvim",
	config = function()
	    vim.cmd.colorscheme "tokyonight"
	    enable_transparency()
	end
    },
    {
	"nvim-lualine/lualine.nvim",
	dependencies = {
	    "nvim-tree/nvim-web-devicons",
	},
	styles = {
	    -- Set font styles for specific categories
	    comments = { italic = true, bold = true }, -- Italics and bold for comments
	    keywords = { bold = true }, -- Bold for keywords
	    functions = { bold = true, italic = true }, -- Bold and italics for functions
	    variables = { italic = true }, -- Italics for variables
	    -- Add more categories as needed
	    sidebars = "dark", -- Style for sidebars (e.g., transparent)
	    floats = "transparent", -- Style for floating windows
	},
	opts = {
	    theme = 'tokyonight',

	}
    }
}
