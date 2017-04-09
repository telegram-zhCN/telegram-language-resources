#!/bin/bash

cookie="csrftoken=;sessionid="
dir=source

#Desktop
echo "Desktop"
curl -b $cookie https://www.transifex.com/telegram/telegram-desktop/langstrings/en/download/for_use/ -o $dir/lang-desktop.strings --progress
#Android
echo "Android"
curl -b $cookie https://www.transifex.com/telegram/telegram/stringsxml-48/en/download/for_use/ -o $dir/strings-android.xml --progress
#iOS
echo "iOS"
curl -b $cookie https://www.transifex.com/telegram/iphone-1/localizablestrings/en/download/for_use/ -o $dir/Localizable-iOS.strings --progress
#macOS
echo "macOS"
curl -b $cookie https://www.transifex.com/telegram/osx/swiftapplocalizablestrings/en/download/for_use/ -o $dir/Localizable-macOS.strings --progress
echo "macOS MainMenu"
curl -b $cookie https://www.transifex.com/telegram/osx/swiftappmainmenustrings/en/download/for_use/ -o $dir/Localizable-MainMenu-macOS.strings --progress
#Webogram
echo "Webogram"
curl -b $cookie https://www.transifex.com/telegram/telegram-web/en-usjson/en/download/for_use/ -o $dir/strings-web.json --progress
#WP
echo "WP"
curl -b $cookie https://www.transifex.com/telegram/wp-telegram-messenger-beta/appresourcesresx/en/download/for_use/ -o $dir/AppResources-WP.resx --progress
