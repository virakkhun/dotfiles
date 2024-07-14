return {
	"akinsho/bufferline.nvim",
	event = "VeryLazy",
	after = "cattpuccin",
	keys = {
		{ "<leader>]", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
		{ "<leader>[", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
	},
	init = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			highlights = require("catppuccin.groups.integrations.bufferline").get({
				styles = { "italic", "bold" },
			}),
			options = {
				diagnostics = "nvim_lsp",
				style_preset = bufferline.style_preset.minimal,
				diagnostics_indicator = function(_, _, diagnostics_dict, _)
					local s = " "
					for e, n in pairs(diagnostics_dict) do
						local sym = e == "error" and "  " or (e == "warning" and "  " or "  ")
						s = s .. n .. sym
					end
					return s
				end,
				show_buffer_close_icons = false,
				show_close_icon = false,
				color_icons = true,
				offsets = {
					{
						filetype = "neo-tree",
						text = "🗂️",
						highlight = "Directory",
						separator = false,
					},
				},
				custom_areas = {
					right = function()
						local result = {}
						local seve = vim.diagnostic.severity
						local error = #vim.diagnostic.get(0, { severity = seve.ERROR })
						local warning = #vim.diagnostic.get(0, { severity = seve.WARN })
						local info = #vim.diagnostic.get(0, { severity = seve.INFO })
						local hint = #vim.diagnostic.get(0, { severity = seve.HINT })

						if error ~= 0 then
							table.insert(result, { text = "  " .. error, fg = "#EC5241" })
						end

						if warning ~= 0 then
							table.insert(result, { text = "  " .. warning, fg = "#EFB839" })
						end

						if hint ~= 0 then
							table.insert(result, { text = "  " .. hint, fg = "#A3BA5E" })
						end

						if info ~= 0 then
							table.insert(result, { text = "  " .. info, fg = "#7EA9A7" })
						end
						return result
					end,
				},
			},
		})
	end,
}
