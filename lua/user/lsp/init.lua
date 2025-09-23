vim.lsp.enable('lua_ls')
vim.lsp.enable('jdtls')
vim.lsp.enable('bashls')

require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
require "user.lsp.fidget"
require("symbols-outline").setup()
