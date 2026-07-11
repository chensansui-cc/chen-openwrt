#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# 修改默认 IP 为 192.168.10.1
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 添加 helloworld 软件源
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

# 添加 Passwall 2 主程序源和依赖包源（必须有这两行，才能编译出 Passwall 2！）
echo 'src-git passwall2_luci https://github.com/Openwrt-Passwall/openwrt-passwall2.git;main' >>feeds.conf.default
echo 'src-git passwall_packages https://github.com/Openwrt-Passwall/openwrt-passwall-packages.git;main' >>feeds.conf.default
