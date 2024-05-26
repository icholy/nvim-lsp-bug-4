
local winid

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "markdown" },
	callback = function()
		vim.lsp.start({
			name = "marksman",
			cmd = { "marksman" },
		})
		vim.schedule(function ()
			vim.api.nvim_win_close(winid, true)
		end)
	end
})

function repro()
	_, winid = vim.lsp.util.open_floating_preview({"hello"}, "markdown")
end
