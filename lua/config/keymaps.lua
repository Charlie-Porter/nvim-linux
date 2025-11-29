local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local smart_splits = require("smart-splits") -- Optimized require
local builtin = require("telescope.builtin") -- Optimized require


-- Exit insert mode with "jk"
-- keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- Prevent "x" from yanking into register
keymap.set("n", "x", '"_x', opts)

vim.keymap.set("n", "<leader>o", "<cmd>Portal jumplist backward<cr>")
vim.keymap.set("n", "<leader>i", "<cmd>Portal jumplist forward<cr>")

-- Select all
-- keymap.set("n", "<C-a>", "gg<S-v>G", opts)

-- Save file and quit
-- keymap.set("n", "<Leader>Q", ":qa<Return>", opts)
keymap.set("n", "<C-q>", ":q<Return>", opts)

-- File explorer with NvimTree
keymap.set("n", "<Leader>f", ":NvimTreeFindFile<Return>", opts)
keymap.set("n", "<Leader>t", ":NvimTreeToggle<Return>", opts)

-- Tabs
keymap.set("n", "<Tab>", ":tabnext<Return>", opts)
keymap.set("n", "<S-Tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Diagnostics (Changed <C-j> to <C-d> to avoid conflict)
keymap.set("n", "<C-d>", vim.diagnostic.goto_next, opts)
keymap.set("n", "<A-r>", builtin.lsp_references, { desc = "Find References (Alt+r)" })
keymap.set("n", "<A-i>", builtin.lsp_implementations, { desc = "Go to Implementation (Alt+l)" })
keymap.set("n", "<A-d>", builtin.lsp_definitions, { desc = "Go to definitions (Alt+d)" })

-- Moving between splits
keymap.set("n", "<C-h>", smart_splits.move_cursor_left, opts)
keymap.set("n", "<C-j>", smart_splits.move_cursor_down, opts) -- Kept <C-j> for movement
keymap.set("n", "<C-k>", smart_splits.move_cursor_up, opts)
keymap.set("n", "<C-l>", smart_splits.move_cursor_right, opts)

-- Telescope General Pickers
keymap.set("n", "<Leader>ff", builtin.find_files, { desc = "Telescope find files" })
keymap.set("n", "<Leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
keymap.set("n", "<Leader>fb", builtin.buffers, { desc = "Telescope buffers" })
keymap.set("n", "<Leader>fo", builtin.oldfiles, { desc = "Telescope previously opened files" })
keymap.set("n", "<Leader>fC", builtin.commands, { desc = "Telescope available commands" })
keymap.set("n", "<Leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- Telescope LSP Pickers
keymap.set("n", "<Leader>fi", builtin.lsp_implementations, { desc = "Telescope LSP Implementations" })
keymap.set("n", "<Leader>fr", builtin.lsp_references, { desc = "Telescope LSP References" })
keymap.set("n", "<Leader>fd", builtin.diagnostics, { desc = "Telescope Diagnostics" })
keymap.set("n", "<Leader>fs", builtin.lsp_document_symbols, { desc = "Telescope Document Symbols" })

-- Telescope Git Pickers
keymap.set("n", "<Leader>gc", builtin.git_commits, { desc = "Telescope Git Commits" })
keymap.set("n", "<Leader>gs", builtin.git_status, { desc = "Telescope Git Status" })
keymap.set("n", "<Leader>gsh", builtin.git_stash, { desc = "Telescope Git Stash" })

-- ChatGPT 
keymap.set("n", "<Leader>cgc", ":ChatGPT<CR>", opts)
keymap.set("n", "<Leader>cge", ":ChatGPTEditWithInstruction<CR>", opts)
-- ChatGPTRun commands
keymap.set("n", "<Leader>cgg", ":ChatGPTRun grammar_correction<CR>", opts)
keymap.set("n", "<Leader>cgt", ":ChatGPTRun translate<CR>", opts)
keymap.set("n", "<Leader>cgk", ":ChatGPTRun keywords<CR>", opts)
keymap.set("n", "<Leader>cgd", ":ChatGPTRun docstring<CR>", opts)
keymap.set("n", "<Leader>cga", ":ChatGPTRun add_tests<CR>", opts)
keymap.set({ "n", "v" }, "<Leader>cgo", ":ChatGPTRun optimize_code<CR>", opts)
keymap.set("n", "<Leader>cgs", ":ChatGPTRun summarize<CR>", opts)
keymap.set("n", "<Leader>cgf", ":ChatGPTRun fix_bugs<CR>", opts)
keymap.set("n", "<Leader>cgx", ":ChatGPTRun explain_code<CR>", opts)
keymap.set("n", "<Leader>cgr", ":ChatGPTRun roxygen_edit<CR>", opts)
keymap.set("n", "<Leader>cgl", ":ChatGPTRun code_readability_analysis<CR>", opts)

