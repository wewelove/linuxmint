#!/bin/bash

unzip mcOS-BS-White-Stock.zip
unzip mcOS-Monterey-Light.zip

mkdir -p ~/.local/share/plank/themes
cp -rf ./mcOS-Monterey-Light ~/.local/share/plank/themes/
cp -rf ./mcOS-BS-White-Stock ~/.local/share/plank/themes/
