#!/bin/bash

# 获取当前目录
DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
cd "$DIR" || exit 1

# 默认安装的主题
THEME="linuxmint"

usage() {
  cat <<EOF
用法: $0 [主题名称]

安装指定的 Plymouth 开机画面主题（根据输入参数选择）。

可用主题:
$(printf '  - %s\n' "${THEMES[@]}")

参数:
  主题名称    要安装的主题名称（默认: ${THEME}）
  -h, --help  显示本帮助信息

示例:
  $0                 # 安装默认主题: ${THEME}
  $0 ubuntu          # 安装 ubuntu-glowing-slider
  $0 deepin          # 安装 deepin-glowing-slider
EOF
}

# 根据脚本目录下存在的 zip 包生成可用主题列表
THEMES=()
for zip in "$DIR"/*-glowing-slider.zip; do
  [ -e "$zip" ] || continue
  name=$(basename "$zip")
  THEMES+=("${name%-glowing-slider.zip}")
done

case "$1" in
  -h|--help)
    usage
    exit 0
    ;;
  "")
    ;;
  -*)
    echo "错误: 未知参数 '$1'" >&2
    usage
    exit 1
    ;;
  *)
    THEME="$1"
    ;;
esac

# 校验主题是否存在对应的 zip 包
ZIP="$DIR/${THEME}-glowing-slider.zip"
if [ ! -f "$ZIP" ]; then
  echo "错误: 未找到主题 '${THEME}' 对应的安装包: ${ZIP}" >&2
  echo "可用主题: ${THEMES[*]}" >&2
  exit 1
fi

# 解压主题包
echo "安装 Plymouth 主题: ${THEME}-glowing-slider"
rm -rf "$DIR/${THEME}-glowing-slider"
if ! unzip -q -o "$ZIP" -d "$DIR"; then
  echo "错误: 解压 $ZIP 失败" >&2
  exit 1
fi

# 安装主题文件
sudo mv -f "$DIR/${THEME}-glowing-slider" /usr/share/plymouth/themes/

# 注册并选择为默认主题
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth \
  "/usr/share/plymouth/themes/${THEME}-glowing-slider/${THEME}-glowing-slider.plymouth" 110
sudo update-alternatives --config default.plymouth

# 更新 initramfs
sudo update-initramfs -u -k all

echo "完成: 已安装并配置 ${THEME}-glowing-slider"
