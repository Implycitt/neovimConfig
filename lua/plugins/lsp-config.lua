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
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({capabilities = capabilities})
      lspconfig.tsserver.setup({capabilities = capabilities})
      lspconfig.csharp_ls.setup({capabilities = capabilities})
      lspconfig.asm_lsp.setup({capabilities = capabilities})
      lspconfig.jdtls.setup({capabilities = capabilities})
      lspconfig.marksman.setup({capabilities = capabilities})
      lspconfig.ltex.setup({capabilities = capabilities})
      lspconfig.html.setup({capabilities = capabilities})
      lspconfig.jsonls.setup({capabilities = capabilities})
      lspconfig.pylsp.setup({capabilities = capabilities})
      lspconfig.rust_analyzer.setup({capabilities = capabilities})
      lspconfig.clangd.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        filetypes = { "h", "c", "cpp", "cc", "objc", "objcpp"},
        flags = lsp_flags,
        cmd = {"clangd", "--background-index"},
        single_file_support = true,
        root_dir = lspconfig.util.root_pattern(
          '.clangd',
          '.clang-tidy',
          '.clang-format',
          'compile_commands.json',
          'compile_flags.txt',
          'configure.ac',
          '.git'
        )
      }) 
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
