#!/bin/bash

sudo apt update
sudo apt install fonts-noto ttf-mscorefonts-installer

mkdir -p ~/.local/share/fonts
cp ./fonts/*.ttf ~/.local/share/fonts/

sudo fc-cache -f -v
