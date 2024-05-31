return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    cmd = "ToggleTerm",
    build= ":ToggleTerm",
    opts = { 
        direction = "horizontal", 
        shade_filetypes = {}, 
        hide_numbers = true, 
        insert_mappings = true, 
        terminal_mappings = true, 
        start_in_insert = true, 
        close_on_exit = true, 
    },
    config = function()
      vim.keymap.set('n', '<C-b>', ':ToggleTerm', {})
    end
  }
}
