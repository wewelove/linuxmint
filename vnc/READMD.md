## RealVNC 

```bash
# 安装
sudo apt install ./VNC-Server-6.3.2-Linux-x64.deb

# 注册
sudo vnclicense -add 3TH6P-DV5AE-BLHY6-PNENS-B3AQA
sudo vnclicense -add URF4A-YZRVW-PEDAE-BLNK3-Y5DMA
sudo vnclicense -add 3TH6P-DV5AE-BLHY6-PNENS-B3AQA

# 启动
sudo systemctl daemon-reload
sudo systemctl start vncserver-x11-serviced.service
sudo systemctl enable vncserver-x11-serviced.service
sudo systemctl status vncserver-x11-serviced.service
sudo systemctl restart vncserver-x11-serviced.service
sudo systemctl stop vncserver-x11-serviced.service
```
