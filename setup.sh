#!/usr/bin/env bash

# Install dependencies
echo "[+] Installing XMonad and dependencies"
sudo apt-get install xmonad libghc-xmonad-dev libghc-xmonad-contrib-dev xmobar suckless-tools
cabal install xmonad-extras

# Update the sample .xmobarrc to contain my current username
echo "[+] Generating configuration files"
USER=`whoami`
awk -v user="$USER" '{gsub("user", user)}1' .xmobarrc_template > .xmobarrc

# Copy configuration files to the appropriate places
cp .xmobarrc ~/
rm .xmobarrc
mkdir -p ~/.xmonad
cp xmonad.hs ~/.xmonad/

# Copy scripts to ~/.system
echo "[+] Installing helper scripts"
mkdir cp ./.system ~/.system

# Start/restart xmonad
echo "[+] XMonad installed"
echo "[+] Starting XMonad"
xmonad --recompile
xmonad --restart

echo "[!] Edit ~/.xmobarrc and change XXXXX to your zip code for local weather and run xmonad --restart"
