import sys
import os
import requests
from bs4 import BeautifulSoup

identification = os.environ.get('TRANSIFEX_USERNAME')
password = os.environ.get("TRANSIFEX_PASSWORD")
stel_ssid = os.environ.get('STEL_SSID')
stel_token = os.environ.get('STEL_TOKEN')

if identification is None:
    identification = sys.argv[1]
if password is None:
    password = sys.argv[2]
if stel_ssid is None:
    stel_ssid = sys.argv[3]
if stel_token is None:
    stel_token = sys.argv[4]

directory = 'zh-CN/'

s = requests.session()
r = s.get('https://www.transifex.com/signin/')
soup = BeautifulSoup(r.text, 'html.parser')
csrftoken = soup.find('input', {'name': 'csrfmiddlewaretoken'})['value']

post = {'identification': identification, 'password': password, 'csrfmiddlewaretoken': csrftoken}
r = s.post("https://www.transifex.com/signin/", data=post, headers={'referer': 'https://www.transifex.com/signin/'})

print('Webogram')
r = s.get('https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/telegram-webogram/zh_CN/download/for_use/')
with open(directory + "strings-web.json", "wb") as code:
    code.write(r.content)

print('wp')
r = s.get('https://www.transifex.com/telegram-zhcn/telegram-zhcn-allplat/telegram-wp/zh_CN/download/for_use/')
with open(directory + "AppResources-WP.resx", "wb") as code:
    code.write(r.content)

print('Fetching sources from telegram.org')
cookies = {'stel_ssid': stel_ssid, 'stel_token': stel_token}
print('Desktop')
r = requests.get('https://translations.telegram.org/classic-zh-cn/tdesktop/export', cookies=cookies)
with open(directory + "lang-desktop.strings", "wb") as code:
    code.write(r.content)

print('Android')
r = requests.get('https://translations.telegram.org/classic-zh-cn/android/export', cookies=cookies)
with open(directory + "strings-android.xml", "wb") as code:
    code.write(r.content)

print('iOS')
r = requests.get('https://translations.telegram.org/classic-zh-cn/ios/export', cookies=cookies)
with open(directory + "Localizable-iOS.strings", "wb") as code:
    code.write(r.content)

print('macOS')
r = requests.get('https://translations.telegram.org/classic-zh-cn/macos/export', cookies=cookies)
with open(directory + "Localizable-macOS.strings", "wb") as code:
    code.write(r.content)

print('Android X')
r = requests.get('https://translations.telegram.org/classic-zh-cn/android_x/export', cookies=cookies)
with open(directory + "strings-androidx.xml", "wb") as code:
    code.write(r.content)
