require('nvim-treesitter.configs').setup {
    ensure_installed = { "typescript" },
    sync_install = false,
    highlight = {
        enable = true
    },
    indent = {
        enable = true
    },
    incremental_selection = {
        enable = true
    },
    textobjects = {
        enable = true
    }
}
