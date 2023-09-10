local configs = require("nvim-treesitter.configs")

configs.setup({
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "html", "go", "python","css","bash" },
  auto_install = true,
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true },
  incremental_selection = { enable = true }
})

