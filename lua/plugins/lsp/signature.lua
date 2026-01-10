return {
	"ray-x/lsp_signature.nvim",
	event = "VeryLazy",
	opts = {},
	config = function(_, opts)
		require("lsp_signature").setup(opts)

        -- Only attach for desired filetypes
        local ft = vim.bo.filetype
        local allowed = {
            cs = true,
            lua = true,
            rust = true,
            ts = true,
            js = true,
            php = true,
        }
    
        if allowed[ft] then
            require("lsp_signature").setup(opts)
        end
    end,
}
