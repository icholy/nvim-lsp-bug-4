local winid

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "markdown" },
	callback = function()
		vim.lsp.start({
			name = "marksman",
			cmd = { "marksman" },
		})
		vim.schedule(function()
			vim.api.nvim_win_close(winid, true)
		end)
	end
})

function repro()
	local bufnr = vim.api.nvim_create_buf(false, true)
	vim.bo[bufnr].bufhidden = 'wipe'
	vim.bo[bufnr].filetype = 'markdown'
	vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "" })

	winid = vim.api.nvim_open_win(bufnr, false, {
		col = 0,
		height = 1,
		relative = "cursor",
		row = 1,
		width = 1,
	})
end
