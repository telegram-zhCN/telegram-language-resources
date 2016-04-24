#!/bin/bash

cookie="X-Mapping-fjhppofk=;ajs_group_id=;csrftoken=;sessionid="
dir=zh-CN

#Desktop
curl -b $cookie https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/lang-desktopstrings/zh_CN/download/for_use/ -o $dir/lang-desktop.strings --progress
#Android
curl -b $cookie https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/tgcn-android/zh_CN/download/for_use/ -o $dir/strings-android.xml --progress
#iOS
curl -b $cookie https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/tgcn-ios/zh_CN/download/for_use/ -o $dir/Localizable-iOS.strings --progress
#OSX
curl -b $cookie https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/localizable-osxstrings/zh_CN/download/for_use/ -o $dir/Localizable-OSX.strings --progress
#Webogram
curl -b $cookie https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/strings-webjson/zh_CN/download/for_use/ -o $dir/strings-web.json --progress
#WP
curl -b $cookie https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/appresources-wpresx/zh_CN/download/for_use/ -o $dir/AppResources-WP.resx --progress
