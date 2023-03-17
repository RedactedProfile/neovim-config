local opts = {noremap = true, silent = false}

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

vim.keymap.set("n", ";n", "<cmd>NvimTreeToggle<CR>", opts)
vim.keymap.set("n", "<C-t>", "<cmd>NvimTreeToggle<CR>", opts)
vim.keymap.set("n", "<leader>nl", "<cmd>NvimTreeFindFile<CR>", opts)

-- Rust remapping and editor config
vim.o.completeopt = "menuone,noinsert,noselect"

-- Avoid showing extra messages when using completion
vim.opt.shortmess = vim.opt.shortmess + "c" 

