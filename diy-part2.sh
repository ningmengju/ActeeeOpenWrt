#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate
git clone https://github.com/sirpdboy/luci-app-autotimeset package/luci-app-autotimeset
git clone https://github.com/EOYOHOO/rkp-ipid.git package/rkp-ipid
make download -j8 V=s
wget -P /dl https://sources.openwrt.org/ath11k-firmware-2023-03-31-a039049a.tar.xz
