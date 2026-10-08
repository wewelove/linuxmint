#!/bin/bash

unzip -o mcOS-BS-White-Stock.zip
unzip -o mcOS-Monterey-Light.zip
unzip -o elementaryMac-Dark.zip
unzip -o elementaryMac-Light.zip
unzip -o MacOS-Seirra-Dark.zip
unzip -o MacOS-Seirra-Light.zip

mkdir -p ~/.local/share/plank/themes
cp -rf ./mcOS-Monterey-Light ~/.local/share/plank/themes/
cp -rf ./mcOS-BS-White-Stock ~/.local/share/plank/themes/
cp -rf ./elementaryMac-Dark ~/.local/share/plank/themes/
cp -rf ./elementaryMac-Light ~/.local/share/plank/themes/
cp -rf ./MacOS-Seirra-Dark ~/.local/share/plank/themes/
cp -rf ./MacOS-Seirra-Light ~/.local/share/plank/themes/
