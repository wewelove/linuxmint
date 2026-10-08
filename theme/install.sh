#!/bin/bash

# 获取当前目录
DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)

sudo apt update
sudo apt install sassc optipng inkscape libglib2.0-dev gtk2-engines-murrine gtk2-engines-pixbuf

cd $DIR
echo "Install WhiteSur-gtk-theme..."
if [ ! -d ./WhiteSur-gtk-theme ]; then
  git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
fi
if [ -d ./WhiteSur-gtk-theme ]; then
  cd WhiteSur-gtk-theme
  git pull
  ./install.sh -t all
fi

cd $DIR
if [ -d ./WhiteSur-gtk-theme ]; then
  echo "Update Plank Themes..."
  mkdir -p ~/.local/share/plank/
  rm -rf ~/.local/share/plank/themes
  cp -rf ./WhiteSur-gtk-theme/other/plank ~/.local/share/plank/themes
fi

cd $DIR
echo "Install WhiteSur-icon-theme..."
if [ ! -d ./WhiteSur-icon-theme ]; then
  git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
fi
if [ -d ./WhiteSur-icon-theme ]; then
  cd WhiteSur-icon-theme
  git pull
  ./install.sh -a
  ./install.sh -b
fi


cd $DIR
echo "Install WhiteSur-cursors..."
if [ ! -d ./WhiteSur-cursors ]; then
  git clone https://github.com/vinceliuice/WhiteSur-cursors.git
fi
if [ -d ./WhiteSur-cursors ]; then
  cd WhiteSur-cursors
  git pull
  ./install.sh
fi

cd $DIR
echo "Install McMojave-cursors..."
if [ ! -d ./McMojave-cursors ]; then
  git clone https://github.com/vinceliuice/McMojave-cursors.git
fi
if [ -d ./McMojave-cursors ]; then
  cd McMojave-cursors
  git pull
  ./install.sh
fi

cd $DIR
echo "Install WhiteSur-wallpapers..."
if [ ! -d ./WhiteSur-wallpapers ]; then
  git clone https://github.com/vinceliuice/WhiteSur-wallpapers.git
fi
if [ -d ./WhiteSur-wallpapers ]; then
  cd WhiteSur-wallpapers
  git pull
  ./install-wallpapers.sh
fi

cd $DIR
echo "Update Wallpapers..."
sudo cp -f ./wallpapers/* /usr/share/backgrounds/linuxmint-wallpapers/

sudo apt autoremove
