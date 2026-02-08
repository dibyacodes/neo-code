-- colors.lua should be:
local function enable_transparency()
    vim.api.nvim_set_hl(0,"Normal",{bg = "none", bold = true})
    vim.api.nvim_set_hl(0,"NormalFloat",{bg = "none"})
end

return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            enable_transparency()
            require('lualine').setup({
                options = {
                    theme = 'auto',
                }
            })
        end
    }
}
