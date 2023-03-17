local opts = {noremap = true, silent = false}

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

vim.keymap.set("n", ";n", "<cmd>NvimTreeToggle<CR>", opts)
vim.keymap.set("n", "<C-t>", "<cmd>NvimTreeToggle<CR>", opts)
vim.keymap.set("n", "<leader>nl", "<cmd>NvimTreeFindFile<CR>", opts)

-- Terminal mode remappings 
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts) 
-- the opts entry is optional, btw:
-- vim.keymap.set('t', '<esc>', [[<C-\><C-n>]]) 
vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
vim.keymap.set('t', '<C-h>', vim.cmd.wincmd("h"), opts)
vim.keymap.set('t', '<C-j>', vim.cmd.wincmd("j"), opts)
vim.keymap.set('t', '<C-k>', vim.cmd.wincmd("k"), opts)
vim.keymap.set('t', '<C-l>', vim.cmd.wincmd("l"), opts)
-- I map these binds to both terminal and insert mode like:
-- vim.keymap.set({'t', 'i'}, '<C-h>', vim.cmd.wincmd("h"), opts)

-- Rust remapping and editor config
vim.o.completeopt = "menuone,noinsert,noselect"

-- Avoid showing extra messages when using completion
vim.opt.shortmess = vim.opt.shortmess + "c" 

