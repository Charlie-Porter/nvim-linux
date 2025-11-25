-- Load Lazy.nvim plugin manager configuration
require("config.lazy") -- This file likely contains the Lazy.nvim setup and plugin configuration
vim.filetype.add({
	extension = {
		js = "javascriptreact",
	},
})
-- Create an LSP (Language Server Protocol) client capabilities object
local capabilities = vim.lsp.protocol.make_client_capabilities()

-- Enable inlay hints support (but this is later overridden)
capabilities.textDocument.inlayHint = {
	dynamicRegistration = false, -- Disables dynamic registration for inlay hints
}

-- Explicitly disable Inlay Hints support by setting it to nil
capabilities.textDocument.inlayHint = nil -- Ensures that inlay hints are fully disabled


	capabilities = capabilities,


-- Enable debugging for LSP logs
vim.lsp.set_log_level("error") -- Useful for troubleshooting LSP-related issues
