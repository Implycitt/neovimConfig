local mappings = {

    -- Added Alpha Keybinding
    ["a"] = { "<cmd>Alpha<cr>", "Alpha" },
    ["e"] = { "<cmd>NvimTreeToggle<cr>", "Explorer" }, -- File Explorer
    ["k"] = { "<cmd>bdelete<CR>", "Kill Buffer" },  -- Close current file
    ["p"] = { "<cmd>Lazy<CR>", "Plugin Manager" }, -- Invoking plugin manager
    ["q"] = { "<cmd>wqall!<CR>", "Quit" }, -- Quit Neovim after saving the file
    ["w"] = { "<cmd>w!<CR>", "Save" }, -- Save current file
}
which_key.register(mappings)
