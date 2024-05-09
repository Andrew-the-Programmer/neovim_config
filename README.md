# neovim config

## Introduction

This is my neovim config.
Package manager: lazy.

Inspired by:
[ThePrimeagen](https://www.youtube.com/@ThePrimeagen/),
[typecraft](https://www.youtube.com/@typecraft_dev/),
and many others.

Feel free to copy and use.

Thanks nerds 😁.

## Walkthrough

My config is based on [typecraft's config](https://youtube.com/playlist?list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn&si=WUyWWtEgmL_k4q4E/).
Some plugins were modified, some added.

All plugins are loaded by lazy in lua/user/lazy_plugins.
If configuration of plugin is small, it's configured where it is loaded.
(f.e. catppuccin is configured in lua/user/lazy_plugins/catppuccin.lua)

If configuration of plugin is large, it's configured in lua/user/plugins-config/<plugin_name>-config.
(f.e. lsp is configured in lua/user/plugins-config/lsp-config.lua)

All neovim related configuration is in lua/user/vim-config.

