return {
    "rcarriga/nvim-notify",
    config = function()
        vim.keymap.set({"n", "v"}, "<leader>nc", function() require("notify").dismiss() end);
    end
}
