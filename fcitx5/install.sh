#!/bin/bash

sudo apt update
sudo apt install -y fcitx5 fcitx5-chinese-addons fcitx5-frontend-all fcitx5-config-qt fcitx5-material-color

echo "Install fcitx5-themes-candlelight ..."
if [ ! -d ./fcitx5-themes-candlelight ]; then
 git clone https://github.com/thep0y/fcitx5-themes-candlelight.git
fi
cd fcitx5-themes-candlelight
git pull

cd ..
rm -rf ~/.local/share/fcitx5/themes
mkdir -p ~/.local/share/fcitx5/themes
cp -r ./fcitx5-themes-candlelight/spring ~/.local/share/fcitx5/themes/
cp -r ./fcitx5-themes-candlelight/summer ~/.local/share/fcitx5/themes/
cp -r ./fcitx5-themes-candlelight/autumn ~/.local/share/fcitx5/themes/
cp -r ./fcitx5-themes-candlelight/winter ~/.local/share/fcitx5/themes/
cp -r ./fcitx5-themes-candlelight/green ~/.local/share/fcitx5/themes/
cp -r ./fcitx5-themes-candlelight/transparent-green ~/.local/share/fcitx5/themes/
cp -r ./fcitx5-themes-candlelight/macOS-dark ~/.local/share/fcitx5/themes/
cp -r ./fcitx5-themes-candlelight/macOS-light ~/.local/share/fcitx5/themes/

cp ./classicui.conf ~/.config/fcitx5/conf/classicui.conf
