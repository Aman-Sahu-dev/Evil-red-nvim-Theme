
# Evil Red for Neovim

A dark, aggressive red Neovim colorscheme inspired by the **Evil Red Theme for Visual Studio Code**.

Designed to keep the editor deeply dark while using bright reds for focus, navigation, selections, and important UI elements, with additional syntax colors adapted from the original theme's `Red.tmTheme`.

## Preview
<img width="1800" height="992" alt="evil-theme-screenshot" src="https://github.com/user-attachments/assets/c7fea87f-5bf0-4893-93e8-aa22f4364431" />


```text
```

## Features

* 🔴 Deep red and near-black editor background
* 🎨 Custom syntax highlighting
* 🌳 Treesitter highlight support
* 🔍 Search and selection highlighting
* 🧭 Distinct UI elements for navigation and focus
* ⚠️ Diagnostic colors for errors, warnings, info, and hints
* 🔭 Telescope support
* 💡 nvim-cmp support
* 📝 GitSigns support
* 🔔 nvim-notify highlight support
* 🖥️ Native Neovim highlight groups
* ⚡ No external theme framework required

## Installation

Clone the repository:

```bash
git clone https://github.com/YOUR_USERNAME/evil-red.nvim.git ~/.config/nvim/colors/evil-red.nvim
```

Or manually place:

```text
evil-red.lua
```

inside:

```text
~/.config/nvim/colors/
```

Your structure should look like:

```text
~/.config/nvim/
└── colors/
    └── evil-red.lua
```

## Usage

Run:

```vim
:colorscheme evil-red
```

Or set it in your Neovim configuration:

```lua
vim.cmd.colorscheme("evil-red")
```

## Supported Integrations

The theme includes highlight definitions for:

* **Treesitter**
* **Telescope**
* **nvim-cmp**
* **GitSigns**
* **nvim-notify**

The corresponding highlight groups are harmless if the plugin is not installed.

## Credits

This colorscheme is a **Neovim port/adaptation** of the original **Evil Red Theme for Visual Studio Code**.

Original project:

**[flumiie/vscode-evil-red-theme](https://github.com/flumiie/vscode-evil-red-theme)**

Credit for the original theme's design, visual concept, and original color palette belongs to **flumiie**.

This project adapts the original theme for Neovim using native highlight groups and Treesitter.

> This is an unofficial Neovim port and is not affiliated with the original project.

## License

The original theme's licensing terms apply to the original work.

See the [original repository](https://github.com/flumiie/vscode-evil-red-theme) for its licensing information.

The licensing of this Neovim adaptation should be determined in accordance with the original project's license and attribution requirements.

---

**Evil Red. Because apparently normal dark themes weren't sufficiently hostile.** 🔴
