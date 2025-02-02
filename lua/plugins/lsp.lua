return {
	{
		"williamboman/mason.nvim",
    dependencies = {
		  "williamboman/mason-lspconfig.nvim",
    },
    lazy = false,
		config = function()
			require("mason").setup()

      require("mason-lspconfig").setup({
        ensure_installed = {
          "pylsp",
          "lua_ls",
          "clangd",
          "cmake",
          "tailwindcss",
          "glsl_analyzer",
          "prismals",
          "jsonls",
          "html",
          "cssls",
          "ts_ls",
        },
        automatic_installation = true,
      })
		end,
	},
	{
		"neovim/nvim-lspconfig",
    event = {"BufReadPre", "BufNewFile"},
    lazy = false,
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "nvim-lua/diagnostic-nvim",
    },
		config = function()
			local lspconf = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local bin_path = "C:/Users/hp/AppData/Local/nvim-data/mason/bin/"
      lspconf.pylsp.setup({
        capabilities = capabilities,
        cmd = { bin_path .. "pylsp.cmd" },
      })
			lspconf.lua_ls.setup({
        capabilities = capabilities,
        cmd = { bin_path .. "lua-language-server.cmd" },
      })
			lspconf.clangd.setup({
        capabilities = capabilities,
      })
      lspconf.cmake.setup({
        capabilities = capabilities,
        cmd = { bin_path .. "cmake-language-server.cmd" },
      })
			lspconf.tailwindcss.setup({
        capabilities = capabilities,
        cmd = { bin_path .. "tailwind-language-server.cmd" },
      })
			lspconf.glsl_analyzer.setup({
        capabilities = capabilities,
        cmd = { bin_path .. "glsl_analyzer.cmd" },
      })
			lspconf.prismals.setup({
        capabilities = capabilities,
        cmd = { bin_path .. "prisma-language-server.cmd" },
      })
			lspconf.jsonls.setup({
        capabilities = capabilities,
        cmd = { bin_path .. "vscode-json-language-server.cmd" },
      })
			lspconf.html.setup({
        capabilities = capabilities,
        cmd = { bin_path .. "vscode-html-language-server.cmd" },
      })
      lspconf.cssls.setup({
        capabilities = capabilities,
        cmd = { bin_path .. "vscode-css-language-server.cmd" },
      })
			lspconf.ts_ls.setup({
        capabilities = capabilities,
        cmd = { bin_path .. "typescript-language-server.cmd" },
      })

      -- vim.diagnostic.config({
      --   update_in_insert = true,
      --   float = {
      --     focusable = false,
      --     style = 'minimal',
      --     border = 'rounded',
      --     source = 'always',
      --     header = '',
      --     prefex = '',
      --   }
      -- })
		end,
	},
}
