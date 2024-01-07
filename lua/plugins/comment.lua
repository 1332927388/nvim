return {
    "JoosepAlviste/nvim-ts-context-commentstring",
    lazy = true,
    config = function()
        require("ts_context_commentstring").setup({
            enable_autocmd = false,
            languages = {
                c = "// %s",
                cpp = "// %s",
            },
            config = {},
            commentary_integration = {},
        })
    end,
}
