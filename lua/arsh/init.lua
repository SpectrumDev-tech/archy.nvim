local M = {}

function M.setup()
	-- Create command for checking version
	vim.api.nvim_create_user_command("ArshVersion", function()
		print("ARSH language plugin v0.1.0")
	end, {})

	-- Auto type file .ar
	vim.filetype.add({
		extension = {
			ar = "arsh",
		},
		filename = {
			["main.ar"] = "arsh",
		},
		pattern = {
			["./*examples/.*%.ar$"] = "arsh",
		},
	})

	vim.api.nvim_create_autocmd("FileType", {
		pattern = "arsh",
		callback = function()
			-- Устанавливаем ширину табуляции
			vim.bo.tabstop = 4
			vim.bo.softtabstop = 4
			vim.bo.shiftwidth = 4
			vim.bo.expandtab = true
			-- Включаем автоматический отступ
			vim.bo.autoindent = true
			vim.bo.smartindent = true
			-- Определяем символ комментария
			vim.bo.commentstring = "// %s"
		end,
	})

	local has_treesitter, ts_config = pcall(require, "nvim-treesitter.configs")
	if has_treesitter then
		ts_config.setup({
			ensure_installed = { "arsh" },
		})
	end
end

return M
