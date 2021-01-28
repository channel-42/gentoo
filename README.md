# Gentoo Dotfiles ![](https://shields.io/badge/Distro-Gentoo-6E56AF.svg) ![](https://img.shields.io/badge/Branch-Master-blue.svg)  ![](https://img.shields.io/badge/License-MIT-orange.svg) 

![desktop screenshot](https://github.com/channel-42/gentoo/blob/master/Pictures/.resources/main.png "Screenshot of my desktop")
These are the dotfiles, config-files and scripts of my gentoo box.

## Contents
1. [Goal](#goal)
2. [General setup](#general-setup)
3. [nvim](#nvim)
4. [Browser](#browser)
5. [Theme and colors](#theme-and-colors)
6. [Scripts](#scripts)

## Goal
The main goal of this setup is to have a minimal, distraction-free, but still pleasant-looking working environment for daily computer usage (coding and scripting, web-browsing, chatting, etc.).  
### Why gentoo?
In short, there are two reasons why I'm using gentoo for this setup:
1. It somewhat forces me not to install non-minimal programmes and/or a lot of packages in general, since it would take a long time to compile
2. I wanted to try out gentoo

## General setup

Here's an overview an overview of the software I use:

| Category | Name |
|:--------:|:----:|
|wm|dwm|
|bar|dwm / slstatus|
|terminal|urxvt|
|shell|zsh w/ oh-my-zsh|
|compositor|picom|
|text Editor|nvim|
|file browser|ranger|
|browser|librewolf|
|music player|ncmpcpp|
|pdf-viewer|zathura|
|launcher|dmenu|

## nvim

![vim example](https://github.com/channel-42/gentoo/blob/master/Pictures/.resources/nvim.png "Example of nvim")

After using vim for quite some time, I recently switched to nvim and ported (and also de-cluttered) my config. Nvim offers native lsp support, which works great for code-completion and syntax-checking. The config is still a WIP and some features, like LaTeX support, are still missing. I also decided to split the config into different files to keep things tidy and easy to modify.

My NeoVim config adds the following:
- lsp-completion
- lsp-syntax checking
- enhanced lsp-syntax highlighting (treesitter)
- snippets
- easier nav-bindings for jumping buffers
- some visual enhancements 

![completion example](https://github.com/channel-42/gentoo/blob/master/Pictures/.resources/nvim_feat.png "Example of nvim completion")

## Browser

Librewolf offers good privacy defaults and uses firefox as it's base, so it was easy to port my config. The only downside (for me) is that some webgl sites (like e.g. pixlr.com) don't work.

I use librewolf with a few plugins to enhance it even further:
- ublock (included by default), **webRTC-leak-blocker enabled!**
- user-agent spoofer
- https-everywhere (technically not needed)
- darkreader
- keepassxc extension

## Kernel
![kernel pic](https://github.com/channel-42/gentoo/blob/master/Pictures/.resources/kernel.png "Screenshot of my desktop")
The kernel-config included in this repo is tailored to my hardware, so I wouldn't recommend using it without some tweaking. In general this kernel includes the following: 
- amd cpu (ryzen) support w/ microcode
- nvidia drm drivers (not nouveau)
- nvme-ssd support
- audio over usb
- lz4 kernel compression

And some other hardware specific modules found by running `lspci -k | grep use`. The initramfs is generated with `genkernel`.

## Theme and colors
### Dracula
The system's theme is dracula with some modified colors (mainly the background) to bring out the purple shades of the palette. Purple colorschemes fit gentoo system well in my opinion. Here's how it looks in vim:

![another screenshot](https://github.com/channel-42/gentoo/blob/master/Pictures/.resources/colors.png "Screenshot of my desktop")
### Librewolf
My librewolf is styled using a custom `userChrome.css`, which is based on [this](https://github.com/mut-ex/minimal-functional-fox) great repo. I changed the colors to match the dracula system theme. As a startpage, I use a simple website that I wrote myself (see `.config/startpage/`). 

![librewolf screenshot](https://github.com/channel-42/gentoo/blob/master/Pictures/.resources/browser.png "Screenshot librewolf")

## Scripts

Most scripts are used in nvim as bindings (e.g. to compile a file), but there are also other scripts used for "quality of life" improvements.

- **bra**: "brightness adjust" through xrandr
- **wpp**: wallpaper setter (different methods)
- **wled**: control wled led strips
- **manmenu**: search man pages with dmenu
- **emoji.sh**: search emojis and copy them to the clipboard with dmenu
- **palette.sh**: show a pretty color palette

### nvim scripts

- **compiler.sh**: autocompile files
- **opout.sh**: open a compiled file
- **texclear.sh**: clean LaTeX compile files
- **make.sh**: find a makefile in higher dirs and make 
