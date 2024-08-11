return {
    'stevearc/overseer.nvim',
    opts = {},
    config = function()
        require("overseer").setup()
        vim.keymap.set("n", "<leader>r", vim.cmd.OverseerRun)
        vim.keymap.set("n", "<leader>t", vim.cmd.OverseerToggle)
    end

}
