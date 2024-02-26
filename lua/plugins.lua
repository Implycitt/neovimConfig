return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
     dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {'andweeb/presence.nvim'},
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-tree/nvim-web-devicons", 
      "MunifTanjim/nui.nvim",
    }
  }
}
