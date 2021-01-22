# Gentoo Dotfiles ![](https://shields.io/badge/Distro-Gentoo-6E56AF.svg) ![](https://img.shields.io/badge/Branch-Master-blue.svg)  ![](https://img.shields.io/badge/License-MIT-orange.svg) 

![desktop screenshot](https://github.com/channel-42/gentoo/blob/master/Pictures/.resources/main.png "Screenshot of my desktop")
These are the dotfiles, config-files and scripts of my gentoo box.

## Contents
1. [Goal](#goal)
2. [General setup](#general-setup)
3. [Theme and colors](#theme-and-colors)

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
|WM|dwm|
|Bar|dwm / slstatus|
|Terminal|urxvt|
|Shell|zsh w/ oh-my-zsh|
|Compositor|picom|
|Text Editor|vim (w/ vundle)|
|File Browser|ranger|
|Browser|firefox|
|Music Player|ncmpcpp|
|PDF-Viewer|zathura|
|Launcher|dmenu|

### Kernel
![kernel pic](https://github.com/channel-42/gentoo/blob/master/Pictures/.resources/kernel.png "Screenshot of my desktop")
The kernel-config included in this repo is tailored to my hardware. In general this kernel includes the following: 
- amd cpu (ryzen) support w/ microcode
- nvidia drm drivers (not nouveau)
- nvme-ssd support
- audio over usb
- lz4 kernel compression

And some other hardware specific modules found by running `lspci -k | grep use`. The initramfs is generated with `genkernel`.

## Theme and colors

The system's theme is dracula with some modified colors (mainly the background) to bring out the purple shades of the palette. Purple colorschemes fit gentoo system well in my opinion. 

![another screenshot](https://github.com/channel-42/gentoo/blob/master/Pictures/.resources/colors.png "Screenshot of my desktop")
