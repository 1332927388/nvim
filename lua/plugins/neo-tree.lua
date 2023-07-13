return {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {},
    config = function()
        require("neo-tree").setup({
            window = {
                width = 30,
                mappings = {
                    ["o"] = "open",
                },
            },
            filesystem = {
                filtered_items = {
                    hide_dotfiles = false,
                    hide_gitignored = false,
                },
            },
        })
    end,
}
