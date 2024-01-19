#!/bin/bash

cd vendor/sony/qti-telephony

if [ -d "custom/QtiTelephonyCustom" ]; then
    cd custom
    ./../.bin/APKEditor b -i QtiTelephonyCustom -f -o QtiTelephonyCustom.apk
    cd ../
fi

if [ -d "custom/imsCustom" ]; then
    cd custom
    ./../.bin/APKEditor b -i imsCustom -f -o imsCustom.apk
    cd ../
fi

if [ -d "custom/qti-telephony-common-custom" ]; then
    cd custom
    ./../.bin/APKEditor b -i qti-telephony-common-custom -f -o qti-telephony-common-custom.jar
    cd ../
fi

cd ../../../
