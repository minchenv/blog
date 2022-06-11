#!/bin/bash

echo -e "\033[2J"
echo "===================================================="
echo ""
echo "You are executing minchenv-hexo-on-termux.sh!"
echo ""
echo "If you want to install, press Enter."
echo "Else, press CTRL+C."
echo ""
echo "===================================================="

read useless

echo -e "\033[2J"

function checkReturnCode() {
    if [ $? -eq 0 ]; then
        echo -e "\033[46;37mSuccess.\033[0m"
    fi
}

# 更换 APT 源
echo -n "Replacing apt sources..."
sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/apt/termux-main stable main@' $PREFIX/etc/apt/sources.list &> /dev/null
eval "apt update -y" &> /dev/null
eval "apt upgrade -y" &> /dev/null
checkReturnCode

# 安装所需文件
echo -n -e "\nInstalling packages(git nodejs etc.)..."
eval "apt install git nodejs -y" &> /dev/null
checkReturnCode

# 展示包的版本
echo -e "\nListing packages version:"
eval "git --version"
echo -n "Node.js version: "
eval "node --version"
echo -n "NPM(Node.js Packages Manager) version: "
eval "npm --version"

# 安装 hexo-cli
echo -n -e "\nInstalling hexo-cli(It's may take a while)..."
eval "npm install -g hexo-cli" &> /dev/null
echo -n ""
checkReturnCode

# 展示 hexo-cli 版本
echo -e "\nListing hexo-cli version: "
eval "hexo -v"
echo -e "\n"

# Done!
echo -e "\033[7m\007\nCongratulations! Hexo has been successfully installed on your device.\033[0m"
