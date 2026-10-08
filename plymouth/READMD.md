# 开机画面

- [GNOME-LOOK.ORG](https://www.gnome-look.org)
- [OpenDesktop.org](https://www.opendesktop.org)

## 安装

通过 `install.sh` 的输入参数选择要安装的主题（不带参数时默认安装 `linuxmint`）：

```bash
# 查看帮助与可用主题
./install.sh --help

# 安装默认主题（linuxmint-glowing-slider）
./install.sh

# 安装指定主题（linuxmint / deepin / elementaryos / popos / ubuntu）
./install.sh ubuntu
./install.sh deepin
./install.sh elementaryos
./install.sh popos
./install.sh linuxmint
```

脚本会自动完成以下步骤：

```bash
# 解压指定的 zip 包（如 ubuntu-glowing-slider.zip）
unzip <主题>-glowing-slider.zip

# Copy the unzipped archive to /usr/share/plymouth/themes/:
sudo cp -r <主题>-glowing-slider /usr/share/plymouth/themes/

# 注册并选择为默认主题
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth \
  /usr/share/plymouth/themes/<主题>-glowing-slider/<主题>-glowing-slider.plymouth 110

# 选择主题
sudo update-alternatives --config default.plymouth

# Apply the selected theme & rebuild the initrd:
sudo update-initramfs -u -k all
```
