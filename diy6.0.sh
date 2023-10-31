 #!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

#sed -i 's/KERNEL_PATCHVER:=5.15/KERNEL_PATCHVER:=6.1/g' ./target/linux/x86/Makefile
# sed -i 's/KERNEL_PATCHVER:=6.1/KERNEL_PATCHVER:=6.2/g' ./target/linux/x86/Makefile


# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#git clone https://github.com/fw876/helloworld.git package/helloworld
#cd package/helloworld
#git reset --hard HEAD^
#cd ../..
#git clone https://github.com/sirpdboy/sirpdboy-package package/sirpdboy-package
#git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat package/luci-theme-opentomcat
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config
#svn co https://github.com/kenzok8/small-package/trunk/adguardhome package/adguardhome
#svn co https://github.com/kenzok8/small-package/trunk/luci-app-adguardhome package/luci-app-adguardhome
#svn co https://github.com/sirpdboy/sirpdboy-package/trunk/adguardhome package/sirpdboy-package/adguardhome
#svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-adguardhome package/sirpdboy-package/luci-app-adguardhome
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-eqos package/luci-app-eqos
#svn co https://github.com/kenzok8/small-package/trunk/luci-app-netdata package/luci-app-netdata
git clone https://github.com/sirpdboy/luci-app-netdata.git package/luci-app-netdata
#svn co https://github.com/sirpdboy/sirpdboy-package/trunk/netdata package/sirpdboy-package/netdata
#git clone https://github.com/kenzok8/openwrt-packages package/openwrt-packages
#git clone https://github.com/kenzok8/small package/small
#git clone https://github.com/kenzok8/small-package package/small-package
#git clone https://github.com/jerrykuku/lua-maxminddb package/lua-maxminddb
#git clone https://github.com/jerrykuku/luci-app-vssr package/luci-app-vssr
#svn co https://github.com/kenzok8/small-package/trunk/lua-maxminddb package/lua-maxminddb
#svn co https://github.com/kenzok8/small-package/trunk/luci-app-vssr package/luci-app-vssr
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
#svn co https://github.com/kenzok8/small-package/trunk/luci-theme-argonne package/luci-theme-argonne
#svn co https://github.com/kenzok8/small-package/trunk/luci-app-argonne-config package/luci-app-argonne-config
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#svn co https://github.com/kenzok8/small-package/trunk/aria2 package/aria2
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/aria2 package/aria2
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-aria2 package/luci-app-aria2
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-wrtbwmon package/luci-app-wrtbwmon
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/wrtbwmon package/wrtbwmon
#git clone https://github.com/vernesong/OpenClash package/openclash
