local catppuccin = require("catppuccin")

-- configure it
catppuccin.setup()
vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
vim.cmd[[colorscheme catppuccin]]
