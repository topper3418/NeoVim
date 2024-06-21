function ColorMyPencils(color)
	color = color or "cyberdream"
	vim.cmd([[colorscheme cyberdream]])

	vim.o.background = "dark" -- or "light" for light mode
	vim.o.termguicolors = true

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()
