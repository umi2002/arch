local null_ls = require("null-ls")

local code_action = null_ls.builtins.code_actions
local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting

null_ls.setup(
    {
        sources = {
            diagnostics.clang_check,
            diagnostics.markdownlint,
            diagnostics.chktex,

            code_action.cspell.with(
                {
                    filetypes = { "cpp" },
                    extra_args = {
                        "--config=/home/umi/.config/nvim/lua/umi/after/plugin/formatting/cspell.json",
                    },
                }
            ),

            formatting.clang_format.with(
                {
                    filetypes = { "cpp" },
                    extra_args = {
                        "--style=file:/home/umi/.config/nvim/lua/umi/after/plugin/formatting/.clang-format",
                    },
                }
            ),

            formatting.lua_format.with(
                {
                    filetypes = { "lua" },
                    extra_args = {
                        "--config=/home/umi/.config/nvim/lua/umi/after/plugin/formatting/.lua-format",
                    },
                }
            ),

            formatting.mdformat.with({ filetypes = { "markdown" } }),
            formatting.latexindent.with({ filetypes = { "tex" } }),
            formatting.cbfmt.with({ filetypes = { "org" } }),
            formatting.prettier.with({ filetypes = { "css" } }),
            formatting.beautysh.with({ filetypes = { "sh" } }),
        },
    }
)
