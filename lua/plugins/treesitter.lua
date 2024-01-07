return {
    { import = "lazyvim.plugins.extras.lang.typescript" },

    -- require("nvim-treesitter.install").prefer_git = true,
    -- add more treesitter parsers
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            "JoosepAlviste/nvim-ts-context-commentstring",
        },
        -- "nvim-treesitter/nvim-treesitter",
        -- dependencies = {
        --   "JoosepAlviste/nvim-ts-context-commentstring",
        -- },
        opts = {
            highlight = { enable = true },
            prefer_git = true,
            ensure_installed = {
                "python",
                "bash",
                "json",
                "lua",
                "vim",
                "yaml",
                "c",
                "cpp",
            },
        },
    },

    -- since `vim.tbl_deep_extend`, can only merge tables and not lists, the code above
    -- would overwrite `ensure_installed` with the new value.
    -- If you'd rather extend the default config, use the code below instead:
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            -- add tsx and treesittek
            vim.list_extend(opts.ensure_installed, {
                "c",
                "cpp",
                "cmake",
                "ninja",
                "python",
                "rst",
                "toml",
            })
        end,
    },
}
