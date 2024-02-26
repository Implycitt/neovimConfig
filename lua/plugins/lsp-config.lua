return {
  {
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
  end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "tsserver", "clangd", "csharp_ls", "asm_lsp", "jdtls", "marksman", "ltex", "html", "jsonls", "pylsp", "rust_analyzer" }
    })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.clangd.setup({})
      lspconfig.csharp_ls.setup({})
      lspconfig.asm_lsp.setup({})
      lspconfig.jdtls.setup({})
      lspconfig.marksman.setup({})
      lspconfig.ltex.setup({})
      lspconfig.html.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.pylsp.setup({})
      lspconfig.rust_analyzer.setup({}) 
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
