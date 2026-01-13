return {
	{
		"ludovicchabant/vim-gutentags",
		config = function()
			-- Basic settings
			vim.g.gutentags_enabled = 1 -- enable gutentags
			vim.g.gutentags_project_root = { ".git", "." } -- detect project root
			vim.g.gutentags_ctags_tagfile = "tags" -- name of tags file
			vim.g.gutentags_ctags_extra_args = { "--fields=+l" } -- optional extra args
			vim.g.gutentags_cache_dir = vim.fn.stdpath("data") .. "/gutentags"
		end,
	},
}
