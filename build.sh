#!/bin/bash
set -ex

sudo apt-get install devscripts build-essential lintian fakeroot dh-make dh-exec

if ! [ -d mpp ]; then
    #git clone https://github.com/rockchip-linux/mpp.git -b for_linux
    git clone https://github.com/mac-l1/mpp.git -b for_linux
fi

#cd mpp
#DEB_HOST_MULTIARCH=armhf DEB_BUILD_OPTIONS=nocheck debuild -i -nc -us -uc -b -d -aarmhf
DEB_BUILD_OPTIONS=nocheck debuild -i -nc -us -uc -b -d 



