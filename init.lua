
-- Init lua file for loading other files.

require('plugins')
require('settings')
require('maps')
require('statusline')


require('nvim-treesitter.configs').setup {
  
    -- A list of parser names, or "all"
  ensure_installed = { },
  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  -- List of parsers to ignore installing (for "all")
  ignore_install = {},
  
  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = {},
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  }
}


require("luasnip.loaders.from_vscode").lazy_load()

-- Framework snippets
require("luasnip").filetype_extend("python", {"django"})


require("nvim-lsp-installer").setup({
    automatic_installation = false, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})
