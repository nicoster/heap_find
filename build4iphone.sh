#! /bin/sh

OUT=heap_find

clang++ -arch armv7 -gdwarf-2 -O0 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS6.1.sdk -lobjc -miphoneos-version-min=4.3 heap_find.cpp  -o ${OUT}
chmod +x ${OUT}
ldid -Sentitle.xml ${OUT} 
scp -P 2222 ${OUT} root@localhost:/sbin/
