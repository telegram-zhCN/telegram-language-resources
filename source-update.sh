#!/bin/bash

cookie="X-Mapping-fjhppofk=;ajs_group_id=;csrftoken=;sessionid="
dir=source

#Desktop
curl -b $cookie https://www.transifex.com/telegram/telegram-desktop/langstrings/en/download/for_use/ -o $dir/lang-desktop.strings --progress
#Android
curl -b $cookie https://www.transifex.com/telegram/telegram/stringsxml-48/en/download/for_use/ -o $dir/strings-android.xml --progress
#iOS
curl -b $cookie https://www.transifex.com/telegram/iphone-1/localizablestrings/en/download/for_use/ -o $dir/Localizable-iOS.strings --progress
#OSX
curl -b $cookie https://www.transifex.com/telegram/osx/localizablestrings/en/download/for_use/ -o $dir/Localizable-OSX.strings --progress
#Webogram
curl -b $cookie https://www.transifex.com/telegram/telegram-web/en-usjson/en/download/for_use/ -o $dir/strings-web.json --progress
#WP
curl -b $cookie https://www.transifex.com/telegram/wp-telegram-messenger-beta/appresourcesresx/en/download/for_use/ -o $dir/AppResources-WP.resx --progress
