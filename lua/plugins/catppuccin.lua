return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
        local catppuccin = require("catppuccin")

        catppuccin.setup({
			flavour = "frappe",


			transparent_background = true,
            show_end_of_buffer = false,

            integrations = {
                harpoon = true,
                overseer = true,
                mason = true,
                dap = true,
                dap_ui = true,
            },

            custom_highlights = function(frappe)
                return {
                    LineNr = { fg = frappe.subtext1 },
                    Comment = { fg = frappe.overlay2 },
                    SignColumn = { fg = frappe.peach },
                    LazyButton = { bg = frappe.none },
                }
            end
        })


        vim.keymap.set("n", "<C-b>", function()
            catppuccin.options.transparent_background = not catppuccin.options.transparent_background
            catppuccin.compile()
            vim.cmd([[colorscheme catppuccin]])
        end)

		vim.cmd([[colorscheme catppuccin]])

	end

}
