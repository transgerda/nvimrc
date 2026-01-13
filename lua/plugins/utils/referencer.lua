return {
    "romus204/referencer.nvim",
    config = function()
        require("referencer").setup({
            enable = true,
            format = "  %d ref",
            show_no_reference = true,
            kinds = { 12, 6, 5, 23, 8 },
            hl_group = "Comment",
            color = "#FFA500",
            virt_text_pos = "eol",
            pattern = nil,
            lsp_servers = {},
        })

        vim.keymap.set("n", "<leader>tr", require("referencer").toggle, { desc = "[t]oggle [r]eference" })
    end
}
