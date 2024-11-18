-- autopairs
-- https://github.com/windwp/nvim-autopairs
return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	-- Optional dependency
	dependencies = { "hrsh7th/nvim-cmp" },
	config = function()
		require("nvim-autopairs").setup({})

		-- If you want to automatically add `(` after selecting a function or method
		local cmp_autopairs = require("nvim-autopairs.completion.cmp")
		local cmp = require("cmp")
		cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

		-- Add custom rule for angle brackets only for Java files
		-- local Rule = require("nvim-autopairs.rule")
		-- local npairs = require("nvim-autopairs")

		-- -- Check if the current file type is Java
		-- local add_java_angle_bracket_rule = function()
		-- 	local filetype = vim.bo.filetype
		-- 	if filetype == "java" or filetype == "html" or filetype == "xml" then
		-- 		npairs.add_rule(Rule("<", ">"))
		-- 	end
		-- end
		--
		-- -- Call the function on setup or file type change
		-- vim.api.nvim_create_autocmd("FileType", {
		-- 	pattern = "java",
		-- 	callback = add_java_angle_bracket_rule,
		-- })
	end,
}
