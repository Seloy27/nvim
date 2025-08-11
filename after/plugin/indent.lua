
require("ibl").setup {
  scope = {
    enabled = true,
    show_start = false,
    show_end = false,
    injected_languages = true,
    highlight = { "Function", "Label" },
    priority = 500,
  },
  indent = {
    char = "│",
    smart_indent_cap = true,
    highlight = "IblIndent",
  },
}

