import sys
import os
import requests
from bs4 import BeautifulSoup

identification = os.environ.get('TRANSIFEX_USERNAME')
password = os.environ.get("TRANSIFEX_PASSWORD")

if identification is None:
    identification = sys.argv[1]
if password is None:
    password = sys.argv[2]

directory = 'zh-CN/'

s = requests.session()
r = s.get('https://www.transifex.com/signin/')
soup = BeautifulSoup(r.text, 'html.parser')
csrftoken = soup.find('input', {'name': 'csrfmiddlewaretoken'})['value']

post = {'identification': identification, 'password': password, 'csrfmiddlewaretoken': csrftoken}
r = s.post("https://www.transifex.com/signin/", data=post, headers={'referer': 'https://www.transifex.com/signin/'})

print('Desktop')
r = s.get('https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/telegram-desktop/zh_CN/download/for_use/')
with open(directory + "lang-desktop.strings", "wb") as code:
    code.write(r.content)

print('Android')
r = s.get('https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/telegram-android/zh_CN/download/for_use/')
with open(directory + "strings-android.xml", "wb") as code:
    code.write(r.content)

print('iOS')
r = s.get('https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/telegram-ios/zh_CN/download/for_use/')
with open(directory + "Localizable-iOS.strings", "wb") as code:
    code.write(r.content)

print('macOS')
r = s.get('https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/telegram-macos/zh_CN/download/for_use/')
with open(directory + "Localizable-macOS.strings", "wb") as code:
    code.write(r.content)

print('Webogram')
r = s.get('https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/telegram-webogram/zh_CN/download/for_use/')
with open(directory + "strings-web.json", "wb") as code:
    code.write(r.content)

print('wp')
r = s.get('https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/telegram-wp/zh_CN/download/for_use/')
with open(directory + "AppResources-WP.resx", "wb") as code:
    code.write(r.content)
