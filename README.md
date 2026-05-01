# nvim-slipstream

A dark and fast theme for [Neovim](https://neovim.io). Ported from the [Zed Slipstream theme](https://github.com/kylemcd/zed-slipstream).

## Color Palette

| Color | Hex | Used For |
| --- | --- | --- |
| Black | `#000000` | Background |
| Teal | `#5CB8A2` | Functions, tags, attributes |
| Gold | `#F4D58D` | Strings, numbers, constants |
| Sky | `#8CB8DC` | Keywords, types, enums |
| Rose | `#E85C6C` | Errors |

## Requirements

- Neovim 0.8+
- `termguicolors` enabled (set automatically by the theme)

## Installation

### lazy.nvim

```lua
{
  "kylemcd/nvim-slipstream",
  priority = 1000,
  config = function()
    vim.cmd("colorscheme slipstream")
  end,
}
```

### packer.nvim

```lua
use {
  "kylemcd/nvim-slipstream",
  config = function()
    vim.cmd("colorscheme slipstream")
  end,
}
```

### Manual

Add the repo to your `runtimepath` and call:

```lua
vim.cmd("colorscheme slipstream")
```

## Plugin Support

- Treesitter
- LSP diagnostics
- Telescope
- nvim-cmp
- GitSigns
- nvim-tree / neo-tree
- bufferline.nvim
- which-key.nvim
- indent-blankline.nvim
- Noice.nvim
- mini.statusline / mini.tabline

## License

MIT — see [LICENSE](LICENSE) for details.
