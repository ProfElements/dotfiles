local cmp = require("cmp")

cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      end,
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'path' },
      { name = "luasnip" },
      { name = "buffer", keyword_length = 5 }-- For luasnip users.
    })
})

require("lspconfig").rust_analyzer.setup{
    on_attach = function() 
        vim.keymap.set("n", "<leader>K", vim.lsp.buf.hover, {buffer=0})
        vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {buffer=0})
        vim.keymap.set("n", "<leader>gt", vim.lsp.buf.type_definition, {buffer=0})
        vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, {buffer=0})
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {buffer=0})
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {buffer=0})
        vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, {buffer=0})
        vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, {buffer=0})
        
        vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics", {buffer=0})

    end,
    cmd = {"rustup", "run", "nightly", "rust-analyzer"},
    capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
}
