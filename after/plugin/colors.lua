function ColorMyPencils()
    color = color or "onedark"
    vim.cmd.colorscheme(color)

	--Primagen adds his color scheme here and sets the background. This doesn't do anything in windows terminal
	
	vim.api.nvim_set_hl(0, "Normal", {bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none" })
end

ColorMyPencils()
