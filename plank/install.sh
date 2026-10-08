#!/bin/bash

unzip mcOS-BS-White-Stock.zip
unzip mcOS-Monterey-Light.zip
unzip elementaryMac-Dark.zip
unzip elementaryMac-Light.zip
unzip MacOS-Seirra-Dark.zip
unzip MacOS-Seirra-Light.zip

mkdir -p ~/.local/share/plank/themes
mv -rf ./mcOS-Monterey-Light ~/.local/share/plank/themes/
mv -rf ./mcOS-BS-White-Stock ~/.local/share/plank/themes/
mv -rf ./elementaryMac-Dark ~/.local/share/plank/themes/
mv -rf ./elementaryMac-Light ~/.local/share/plank/themes/
mv -rf ./MacOS-Seirra-Dark ~/.local/share/plank/themes/
mv -rf ./MacOS-Seirra-Light ~/.local/share/plank/themes/
