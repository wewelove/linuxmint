#!/bin/bash

sudo apt install sassc optipng inkscape libglib2.0-dev
sudo apt install gtk2-engines-murrine gtk2-engines-pixbuf

echo "Install WhiteSur-gtk-theme..."
if [ ! -d ./WhiteSur-gtk-theme ]; then
 git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
fi
cd WhiteSur-gtk-theme
git pull
./install.sh -t all

cd ..
echo "Install WhiteSur-icon-theme..."
if [ ! -d ./WhiteSur-icon-theme ]; then
  git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
fi
cd WhiteSur-icon-theme
git pull
./install.sh -a
./install.sh -b


cd ..
echo "Install WhiteSur-cursors..."
if [ ! -d ./WhiteSur-cursors ]; then
  git clone https://github.com/vinceliuice/WhiteSur-cursors.git
fi
cd WhiteSur-cursors
git pull
./install.sh

cd ..
echo "Install McMojave-cursors..."
if [ ! -d ./McMojave-cursors ]; then
  git clone https://github.com/vinceliuice/McMojave-cursors.git
fi
cd McMojave-cursors
git pull
./install.sh

cd ..
echo "Install WhiteSur-wallpapers..."
if [ ! -d ./WhiteSur-wallpapers ]; then
  git clone https://github.com/vinceliuice/WhiteSur-wallpapers.git
fi
cd WhiteSur-wallpapers
git pull
./install-wallpapers.sh

cd ..
echo "Update Wallpapers..."
sudo cp -f ./wallpapers/* /usr/share/backgrounds/linuxmint-wallpapers/

echo "Update Plank Themes..."
mkdir -p ~/.local/share/plank/
rm -rf ~/.local/share/plank/themes
cp -rf ./WhiteSur-gtk-theme/other/plank ~/.local/share/plank/themes

sudo apt autoremove
