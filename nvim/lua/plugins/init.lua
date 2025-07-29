return {
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
    config = function()
      require "options"
    end,
  },
	{ "nvim-lua/plenary.nvim" },
	{
	  "folke/todo-comments.nvim",
	  dependencies = { "nvim-lua/plenary.nvim" },
	  opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		-- TODO
	  },
	},
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
	{
		"Diogo-ss/42-header.nvim",
		cmd = { "Stdheader" },
		keys = { "<F1>" },
		opts = {
			default_map = true, -- Default mapping <F1> in normal mode.
			auto_update = true, -- Update header when saving.
			user = "lazmoud", -- Your user.
			mail = "lazmoud@student.1337.ma", -- Your mail.
			-- add other options.
		},
		config = function(_, opts)
			require("42header").setup(opts)
		end,
	},
	{
		"hardyrafael17/norminette42.nvim"
	},
	-- These are some examples, uncomment them if you want to see them work!
  -- {
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     require("nvchad.configs.lspconfig").defaults()
  --     require "configs.lspconfig"
  --   end,
  -- },
  --
  -- {
  --	"williamboman/mason.nvim",
  --	opts = {
  --		ensure_installed = {
  --			"lua-language-server", "stylua",
  --			"html-lsp", "css-lsp" , "prettier"
  --		},
  --	},
  -- },
  --
  -- {
  --	"nvim-treesitter/nvim-treesitter",
  --	opts = {
  --		ensure_installed = {
  --			"vim", "lua", "vimdoc",
  --      "html", "css"
  --		},
  --	},
  -- },
}
