vim.api.nvim_create_autocmd("FileType", {
	pattern = { "markdown" },
	callback = function()
		vim.lsp.start({
			name = "marksman",
			cmd = { "marksman" },
		})
		vim.api.nvim_feedkeys("jk", "n", true)
	end
})

function repro()
	vim.lsp.util.open_floating_preview({"hello"}, "markdown")
end
