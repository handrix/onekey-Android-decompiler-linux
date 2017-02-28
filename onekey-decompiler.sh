#!/bin/sh

mkdir ./tmp
cd ./apks && cp ./*.apk ./*.zip && unzip ./*.zip -d ../tmp
rm ./*.zip
cd ../decompiler-result && mv ../tmp/*.dex ./ && rm -rf ../tmp
echo "+++++++++already unzip+++++++++++"
./../tools/dex2jar-2.0/d2j-dex2jar.sh ./*.dex && rm *.dex
echo "+++++++++already dex2jar+++++++++"

for filename in `ls *.jar`
do
     ./../tools/cfr_0_119.jar $filename --outputpath ./${filename%*.jar}
     rm ./$filename
     echo "+++++++++already decompiler $filename+++++++++"
done