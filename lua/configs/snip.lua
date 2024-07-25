local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("python", {
    s("docf", fmt([[
    """{}

    Parameters
    ----------
    {}: {}
        {}

    Returns
    -------
    {}
        {}
    """
    ]], {
            i(1, "Function description"),
            i(2, "param_name"),
            i(3, "param_type"),
            i(4, "param_description"),
            i(5, "return_type"),
            i(6, "return_description"),
        })),
})
