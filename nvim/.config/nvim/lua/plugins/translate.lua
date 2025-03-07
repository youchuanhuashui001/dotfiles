return {
	{
		"uga-rosa/translate.nvim",
		event = "VeryLazy",
		config = function()
			require("translate").setup({
				default = {
					command = "google",
					output = "floating",
				},
				preset = {
					output = {
						split = {
							min_size = { 1, 20 },
							position = "bottom",
						},
						floating = {
							max_width = 80,
							max_height = 40,
							border = "rounded",
						},
					},
				},
			})
		end,
		keys = {
			-- 翻译当前单词或选中文本
			{
				"<leader>tt",
				":Translate zh-CN<CR>",
				mode = { "n", "v" },
				desc = "翻译为中文",
			},
			-- 替换为翻译结果
			{
				"<leader>tr",
				":Translate zh-CN --replace<CR>",
				mode = { "n", "v" },
				desc = "替换为中文",
			},
			-- 在新窗口中显示翻译
			{
				"<leader>tw",
				":Translate zh-CN --window<CR>",
				mode = { "n", "v" },
				desc = "新窗口显示翻译",
			},
		},
	},
} 