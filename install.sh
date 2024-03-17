#!/bin/bash


mkdir /opt
mkdir /opt/ApiCheckuser

apt update -y && apt upgrade -y
apt install curl -y

arch=$(uname -m)

if [[ $arch == "x86_64" || $arch == "amd64" || $arch == "x86_64h" ]]; then
    echo "Sistema baseado em x86_64 (64-bit Intel/AMD)"
    curl -o "/opt/ApiCheckuser/GoCheckuser" ""
elif [[ $arch == "aarch64" || $arch == "arm64" || $arch == "armv8-a" ]]; then
    echo "Sistema baseado em arm64 (64-bit ARM)"
    curl -o "/opt/ApiCheckuser/GoCheckuser" ""
else
    echo "Arquitetura não reconhecida: $arch"
fi

curl -o "/opt/ApiCheckuser/menu.sh" ""


