#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# 添加软件
git clone https://github.com/KFERMercer/luci-app-serverchan package/luci-app-serverchan
git clone https://github.com/rosywrt/luci-theme-rosy package/luci-theme-rosy
# feeds
./scripts/feeds update -a
./scripts/feeds install -a
