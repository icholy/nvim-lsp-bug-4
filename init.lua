vim.api.nvim_create_autocmd("FileType", {
	pattern = { "cpp" },
	callback = function()
		vim.lsp.start({
			name = "clangd",
			cmd = { "clangd" },
		})
	end
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "markdown" },
	callback = function()
		vim.lsp.start({
			name = "marksman",
			cmd = { "marksman" },
		})
	end
})

