require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "pyright" , "gopls", "tsserver", "eslint", "bashls", "jdtls", "marksman" },
})


