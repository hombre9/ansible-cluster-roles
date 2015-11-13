#!/usr/bin/env bash

wget http://mirrors.aliyun.com/debian/pool/main/d/dpkg/dpkg_1.17.25.tar.xz
unxz dpkg_1.17.25.tar.xz
tar -xvf dpkg_1.17.25.tar
cd dpkg-1.17.25
./configure # 这一步如果提示缺少curses，需要yun install ncurses-devel
make # 这一步会报错，忽略即可
sudo cp utils/start-stop-daemon /usr/local/bin/start-stop-daemon
