return {
	{
		"hrsh7th/nvim-cmp",
		dependencies = { "hrsh7th/cmp-emoji" },
		---@param opts cmp.ConfigSchema
		opts = function(_, opts)
			table.insert(opts.sources, { name = "emoji" })
		end,
	},
	{ "nvim-telescope/telescope.nvim" },

	--{ "RRethy/base16-nvim" },

	--{ "folke/tokyonight.nvim" },

	{ "catppuccin/nvim", name = "catppuccin", priority = 1000},
-- nvim v0.8.0
	{
		"kdheepak/lazygit.nvim",
		lazy = true,
		cmd = {
			"LazyGit",
			"LazyGitConfig",
			"LazyGitCurrentFile",
			"LazyGitFilter",
			"LazyGitFilterCurrentFile",
		},
		-- optional for floating window border decoration
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		-- setting the keybinding for LazyGit with 'keys' is recommended in
		-- order to load the plugin when the command is run for the first time
		keys = {
			{ "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
		}
	}
	--{ "ellisonleao/gruvbox.nvim" },

	--[[{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "gruvbox",
		},
	},]]

}
