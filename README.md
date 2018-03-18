# xmonad-setup
This repository contains a series of scripts and configuration files for setting up XMonad on an Ubuntu 14.04 system.
[XMonad](http://xmonad.org/) is a light-weight, dynamically tiling X11 window manager.
I have configured it to use [XMobar](http://projects.haskell.org/xmobar/) (see below)
as well as added in actions for pressing volume/music keys.

# Setup
Simply run `./setup.sh` and XMonad and it's dependencies will be installed and configured.
The configuration for XMonad is located in `~/.xmonad/xmonad.hs` 
and the configuration for XMobar is located in `~/.xmobarrc`.

# XMobar
XMobar is a configurable status bar to be used with window managers, such as XMonad.
This script will configure XMonad to display a bar along the top of the screen.
The bar contains useful information about the system:
- Date/Time
- Weather
- Wifi network and strength
- Volume
- Battery charge

## Configuring weather
The user will be prompted for their zip code when running `./setup.sh`. This will automaticlaly be inserted into `~/.xmobarrc`.
