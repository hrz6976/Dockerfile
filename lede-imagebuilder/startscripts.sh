if  [ -d "/lede/" ];then
    sudo rm -rf /lede/
fi
git clone https://github.com/coolsnowwolf/lede /lede
sudo chmod -R 777 /lede
/lede/scripts/feeds update -a
/lede/scripts/feeds install -a
make menuconfig
/bin/bash