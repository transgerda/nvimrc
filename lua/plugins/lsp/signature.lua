return {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {},
    config = function(_, opts)
        --require("lsp_signature").setup(opts)

        -- Attach only for desired filetypes
        local allowed_filetypes = { "lua", "rust", "ts", "js", "php" }
        local ft = vim.bo.filetype

        if vim.tbl_contains(allowed_filetypes, ft) then
            require("lsp_signature").setup(opts)
        end
    end,
}

