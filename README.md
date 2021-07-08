# Darkside

## Overview
Inspired by [onedark](https://github.com/joshdick/onedark.vim)... leveraging the power of lush.

## Goal
To have a nice looking theme that handles modern nvim features and plugins
such as LSP, treesitter, telescope, nvim-tree... with fewer highlights done in the cofig.

Beware this is a WIP... These colors might change often as I figure out what works best for my daily use.

With that in mind, you're welcome to use it as you please!

## Check Lush out

This theme is built with [Lush](http://git.io/lush.nvim), a pretty nice colorscheme generator.

## Installation

### Packer 

```lua
  use({ 'pedropmedina/darkside', requires = { 'rktjmp/lush.nvim' } })
```
#### Note: 

You might want to set this somewhere in your config as well

```lua
  vim.opt.background = 'dark'
  vim.g.colors_name = 'darkside'
```

## Usage

Since this is bare-bones, there aren't any configurations *yet*, you need to worry about.
Just install and require. 

You can *reference theme colors* by accessing the color palette

```lua
  local darkside = require('darkside')
  local colors = darkside.colors
```
