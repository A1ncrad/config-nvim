return {
    'stevearc/overseer.nvim',
    opts = {},
    config = function()
        local overseer = require("overseer")

        overseer.setup({
            templates = { "builtin" },
        })

        vim.keymap.set("n", "<leader>r", vim.cmd.OverseerRun)
        vim.keymap.set("n", "<leader>t", vim.cmd.OverseerToggle)
    end
}
