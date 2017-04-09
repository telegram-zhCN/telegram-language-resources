#!/bin/bash

cookie="csrftoken=;sessionid="
dir=zh-CN

#Desktop
echo "Desktop"
curl -b $cookie https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/telegram-desktop/zh_CN/download/for_use/ -o $dir/lang-desktop.strings --progress
#Android
echo "Android"
curl -b $cookie https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/telegram-android/zh_CN/download/for_use/ -o $dir/strings-android.xml --progress
#iOS
echo "iOS"
curl -b $cookie https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/telegram-ios/zh_CN/download/for_use/ -o $dir/Localizable-iOS.strings --progress
#macOS
echo "macOS"
curl -b $cookie https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/telegram-macos/zh_CN/download/for_use/ -o $dir/Localizable-macOS.strings --progress
echo "macOS MainMenu"
curl -b $cookie https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/telegram-macos-mainmenu/zh_CN/download/for_use/ -o $dir/Localizable-MainMenu-macOS.strings --progress
#Webogram
echo "Webogram"
curl -b $cookie https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/telegram-webogram/zh_CN/download/for_use/ -o $dir/strings-web.json --progress
#WP
echo "WP"
curl -b $cookie https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/telegram-wp/zh_CN/download/for_use/ -o $dir/AppResources-WP.resx --progress
#Generate zip file for macOS
cd $dir/
mkdir -p Contents/Resources/zh.lproj
cp Localizable-macOS.strings Contents/Resources/zh.lproj/Localizable.strings
cp Localizable-MainMenu-macOS.strings Contents/Resources/zh.lproj/MainMenu.strings
rm Localizable-macOS.zip
zip -r9 Localizable-macOS.zip Contents
rm -rf Contents
