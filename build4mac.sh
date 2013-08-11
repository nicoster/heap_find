#! /bin/sh 

clang++ -arch x86_64 -gdwarf-2 -O0 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.7.sdk -v -lobjc heap_find.cpp -o heap_find
