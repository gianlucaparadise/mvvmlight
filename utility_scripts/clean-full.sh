#!/bin/bash

echo "Cleaning Packages folder"
rm -r GalaSoft.MvvmLight/packages

echo "Cleaning Bin/Obj"
find . -name obj -type d -exec /bin/rm -rf {} \;
find . -name bin -type d -exec /bin/rm -rf {} \;

echo "Cleaning Binaries"
rm -r GalaSoft.MvvmLight/_Binaries

echo "Cleaning previous nupkgs"
rm GalaSoft.MvvmLight/GP.MvvmLightAndroidX*.nupkg