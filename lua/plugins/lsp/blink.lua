return {
  'saghen/blink.cmp',
  dependencies = { 'L3MON4D3/LuaSnip' },
  version = '1.*',
  ft = { "lua", "rust", "html", "js", "ts", "json", "css", "php" },

  opts = {
    snippets = { preset = "luasnip" },
    keymap = {
      preset = 'super-tab',
      ["<C-t>"] = { 'accept' },
    },
    appearance = {
      nerd_font_variant = 'mono',
    },
    completion = {
      documentation = { auto_show = true },
    },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
  opts_extend = { "sources.default" },
}

