mkdir temp
cd temp
wget -O telegram.apk "https://rink.hockeyapp.net/api/2/apps/dc3b3c6317af4a3caa5269a58697e088?format=apk"
apktool d telegram.apk
cd telegram/res/values
cp strings.xml ../../../../source/strings-android.xml
cd ../../../../
rm -rf temp
