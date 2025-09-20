return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",
	opts = {
		keymap = { preset = "enter" },
		appearance = {
			nerd_font_variant = "mono",
		},
		completion = {
			documentation = { auto_show = false },
			menu = {
				draw = {
					columns = { { "item_idx" }, { "kind_icon" }, { "label", "label_description", gap = 1 } },
					components = {
						item_idx = {
							text = function(ctx)
								return ctx.idx == 10 and "0" or ctx.idx >= 10 and " " or tostring(ctx.idx)
							end,
							highlight = "BlinkCmpItemIdx", -- optional, only if you want to change its color
						},
					},
				},
			},
		},
		cmdline = {
			enabled = false,
			completion = { menu = { auto_show = true } },
			keymap = {
				["<CR>"] = { "accept_and_enter", "fallback" },
			},
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
		fuzzy = { implementation = "prefer_rust" },
	},
	opts_extend = { "sources.default" },
}
