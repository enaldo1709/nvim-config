require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua-lsp", "pyright" , "gopls", "tsserver", "eslint", "bashls", "jdtls", "marksman" },
})


