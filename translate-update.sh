#!/bin/bash

cookie=""
dir=zh-CN

#Desktop
echo "Desktop"
curl -b $cookie https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/lang-desktopstrings/zh_CN/download/for_use/ -o $dir/lang-desktop.strings --progress
#Android
echo "Android"
curl -b $cookie https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/tgcn-android/zh_CN/download/for_use/ -o $dir/strings-android.xml --progress
#iOS
echo "iOS"
curl -b $cookie https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/tgcn-ios/zh_CN/download/for_use/ -o $dir/Localizable-iOS.strings --progress
#OSX
echo "OS X"
curl -b $cookie https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/localizable-osxstrings/zh_CN/download/for_use/ -o $dir/Localizable-OSX.strings --progress
#Webogram
echo "Webogram"
curl -b $cookie https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/strings-webjson/zh_CN/download/for_use/ -o $dir/strings-web.json --progress
#WP
echo "WP"
curl -b $cookie https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/appresources-wpresx/zh_CN/download/for_use/ -o $dir/AppResources-WP.resx --progress
