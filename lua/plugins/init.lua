return {
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        config = function()
            require "configs.conform"
        end,
    },

    -- These are some examples, uncomment them if you want to see them work!
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require "configs.lspconfig"
        end,
    },
    {
       "L3MON4D3/LuaSnip", 
        config = function ()
            require "configs.snip"
        end
    },
    {"nvim-tree/nvim-tree.lua",
        init = function ()
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1

            -- optionally enable 24-bit colour
            vim.opt.termguicolors = true

        end,
        config  = function ()
            local function my_on_attach(bufnr)
                local api = require('nvim-tree.api')
                local function opts(desc)
                    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = false, silent = true, nowait = true }
                end
                api.config.mappings.default_on_attach(bufnr)
                vim.keymap.set('n', 's', 's',{ buffer = bufnr })
                vim.keymap.set('n', 'sv', api.node.open.vertical,{ buffer = bufnr })

            end
            require("nvim-tree").setup({
                filters = {dotfiles = true},
                on_attach = my_on_attach,
            })

        end,
    },
}
--
--
-- {
-- 	"williamboman/mason.nvim",
-- 	opts = {
-- 		ensure_installed = {
-- 			"lua-language-server", "stylua",
-- 			"html-lsp", "css-lsp" , "prettier"
-- 		},
-- 	},
-- },
--
-- {
-- 	"nvim-treesitter/nvim-treesitter",
-- 	opts = {
-- 		ensure_installed = {
-- 			"vim", "lua", "vimdoc",
--      "html", "css"
-- 		},
-- 	},
-- },
