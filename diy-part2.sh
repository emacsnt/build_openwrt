#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
rm -rf feeds/packages/net/smartdns
rm -rf feeds/luci/application/luci-app-smartdns
rm -rf feeds/kenzo/smartdns
rm -rf feeds/kenzo/luci-app-smartdns
git clone https://github.com/lisakhan/openwrt-smartdns feeds/kenzo/smartdns

# Modify default IP
sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate
