-- unneeded highlighting
vim.opt.hlsearch = true
vim.keymap.set("n","<Esc>", "<cmd>nohlsearch<CR>")

-- LSP + other diagnostic keymap
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [e]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [q]uickfix list" })

-- Disable arrow keys to move
vim.keymap.set("n", "<left>", "")
vim.keymap.set("n", "<right>", "")
vim.keymap.set("n", "<up>", "")
vim.keymap.set("n", "<down>", "")

-- Auto Commands


-- Highlight when copying text
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when copying text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end 
})
