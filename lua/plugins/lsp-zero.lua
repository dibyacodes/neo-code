return {
	-- LSP Zero: The ultimate starting point for LSP and Autocompletion
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		dependencies = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' }, -- Required
			{ 'williamboman/mason.nvim' }, -- Optional
			{ 'williamboman/mason-lspconfig.nvim' }, -- Optional

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' }, -- Required
			{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
			{ 'hrsh7th/cmp-buffer' }, -- Optional
			{ 'hrsh7th/cmp-path' }, -- Optional
			{ 'saadparwaiz1/cmp_luasnip' }, -- Optional
			{ 'L3MON4D3/LuaSnip' }, -- Optional, Replace with your snippet engine
		},
		config = function()
			local lsp_zero = require('lsp-zero')

      -- This is where you configure LSP Zero
      lsp_zero.on_attach(function(client, bufnr)
        -- see :help lsp-zero-keybindings
        -- to learn the available actions
        lsp_zero.default_keymaps({ buffer = bufnr })
      end)
      require('lspconfig').ts_ls.setup({
        on_attach = function(client, bufnr)
          -- Tell tsserver to use Biome for formatting
          client.server_capabilities.documentFormattingProvider = true
          -- Set Biome as the formatter for this buffer
          vim.api.nvim_buf_set_var(bufnr, 'typescript.format', {
            command = 'biome',
            args = { 'format', '--stdin-file-path', '%',
            '--config-path=~/.config/nvim/biome/biome.json'},
          })
        end,
      })
      require('lspconfig').html.setup({})
      require('lspconfig').cssls.setup({})
      require('lspconfig').tailwindcss.setup({})
      require('lspconfig').pyright.setup({})
      -- Add any other servers you need

			-- Setup Mason to automatically install LSP servers
			require('mason').setup({})
			require('mason-lspconfig').setup({
				ensure_installed = { 'ts_ls', 'html', 'cssls', 'tailwindcss', 'pyright' }, -- Your servers
				handlers = {
					lsp_zero.default_setup,
				}
			})

			-- Autocompletion config
			local cmp = require('cmp')
			local cmp_select = { behavior = cmp.SelectBehavior.Select }

			cmp.setup({
				sources = {
					{ name = 'nvim_lsp' },
					{ name = 'luasnip' }, -- Replace if you use a different snippet engine
				},
				mapping = cmp.mapping.preset.insert({
					['<C-Space>'] = cmp.mapping.complete(),
					['<CR>'] = cmp.mapping.confirm({ select = false }),
				}),
				snippet = {
					expand = function(args)
						require('luasnip').lsp_expand(args.body)
					end,
				},
			})
		end
	}
}
