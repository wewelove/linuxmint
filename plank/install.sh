#!/bin/bash

unzip mcOS-BS-White-Stock.zip
unzip mcOS-Monterey-Light.zip
unzip elementaryMac-Dark.zip
unzip elementaryMac-Light.zip
unzip MacOS-Seirra-Dark.zip
unzip MacOS-Seirra-Light.zip

mkdir -p ~/.local/share/plank/themes
mv -f ./mcOS-Monterey-Light ~/.local/share/plank/themes/
mv -f ./mcOS-BS-White-Stock ~/.local/share/plank/themes/
mv -f ./elementaryMac-Dark ~/.local/share/plank/themes/
mv -f ./elementaryMac-Light ~/.local/share/plank/themes/
mv -f ./MacOS-Seirra-Dark ~/.local/share/plank/themes/
mv -f ./MacOS-Seirra-Light ~/.local/share/plank/themes/
