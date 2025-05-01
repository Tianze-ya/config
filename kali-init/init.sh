#!/bin/bash

echo "nameserver 114.114.114.114" | sudo tee -a /etc/resolv.conf
printf "\
199.232.68.133 raw.githubusercontent.com\n\
199.232.68.133 user-images.githubusercontent.com\n\
199.232.68.133 avatars2.githubusercontent.com\n\
199.232.68.133 avatars1.githubusercontent.com\n" | sudo tee -a /etc/hosts

# 更改/etc/apt/sources.list 文件
#sudo sed -i "s@http://http.kali.org/kali@https://mirrors.tuna.tsinghua.edu.cn/kali@g" /etc/apt/sources.list

sudo echo "kali    ALL=(ALL)   NOPASSWD:ALL" >> /etc/sudoers
ulimit -n 4096

chmod +x ./package/ssh.sh
sudo ./package/ssh.sh

#sudo dpkg-reconfigure locales