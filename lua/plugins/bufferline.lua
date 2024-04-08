return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "BufReadPre",
	config = function()
		require("bufferline").setup({
			highlights = require("catppuccin.groups.integrations.bufferline").get(),
			options = {
				mode = "buffers",
				offsets = {
					{
						filetype = "NvimTree",
						text = "Nvim Tree",
						highlight = "Directory",
						separator = true,
					},
				},
			},
		})
		vim.keymap.set("n", "<Leader>bb", ":BufferLinePick<CR>")
		vim.keymap.set("n", "<Leader>bd", ":BufferLinePickClose<CR>")
		vim.keymap.set("n", "<Leader>bo", ":BufferLineCloseOther<CR>")
		vim.keymap.set("n", "<Leader>bn", ":BufferLineCycleNext<CR>")
		vim.keymap.set("n", "<Leader>bp", ":BufferLineCyclePrev<CR>")
	end,
}
