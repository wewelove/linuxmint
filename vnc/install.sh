#!/bin/bash

sudo apt install ./VNC-Server-6.3.2-Linux-x64.deb
sudo vnclicense -add 3TH6P-DV5AE-BLHY6-PNENS-B3AQA
sudo systemctl daemon-reload
sudo systemctl start vncserver-x11-serviced.service
sudo systemctl enable vncserver-x11-serviced.service
sudo systemctl status vncserver-x11-serviced.service
