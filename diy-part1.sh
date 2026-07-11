#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# 修改默认 IP（可选，比如修改为 192.168.1.1）
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall_luci https://github.com/Openwrt-Passwall/openwrt-passwall.git;main' >> feeds.conf.default
echo 'src-git passwall_packages https://github.com/Openwrt-Passwall/openwrt-passwall-packages.git;main' >> feeds.conf.default
# 添加 Passwall 2 软件源
echo 'src-git passwall2_luci https://github.com/Openwrt-Passwall/openwrt-passwall2.git;main' >> feeds.conf.default
echo 'src-git passwall_packages https://github.com/Openwrt-Passwall/openwrt-passwall-packages.git;main' >> feeds.conf.default
