local lsp_zero = require('lsp-zero')
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig').tsserver.setup({
  capabilities = lsp_capabilities,
  on_attach = function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
  end,
})
require('lspconfig').jdtls.setup({
	capabilities = lsp_capabilities,
	on_attach = function(client, bufnr)
		lsp_zero.default_keymaps({buffer = bufnr})
	end,
})
require('lspconfig').lua_ls.setup({
	capabilities = lsp_capabilities,
	on_attach = function(client, bufnr)
		lsp_zero.default_keymaps({buffer = bufnr})
	end,
})

lsp_zero.preset({}).setup()

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    -- delay update diagnostics
    update_in_insert = true,
  }
)

