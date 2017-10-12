mkdir temp
cd temp
wget -O apktool.jar "https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.3.0.jar"
wget -O telegram.apk "https://rink.hockeyapp.net/api/2/apps/dc3b3c6317af4a3caa5269a58697e088?format=apk"
java -jar apktool.jar d telegram.apk
cd telegram/res/values
cp strings.xml ../../../../source/strings-android.xml
cd ../../../../
rm -rf temp
