require("mason").setup {
    ui = {
        icons = {
            package_installed = "✓"
        }
    }
}

require("mason-lspconfig").setup {
    ensure_installed = { "pyright", "r_language_server" },
}
