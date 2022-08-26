#!/bin/bash

echo "Working!!"

rm -rf dist build
pyinstaller -w -n Clangen --onefile --noconfirm -i resources/icon.png main.py
mkdir -p dist/Clangen.app/Contents/Resources/sprites
mkdir dist/Clangen.app/Contents/Resources/saves
mkdir dist/Clangen.app/Contents/Resources/resources
cp sprites/* dist/Clangen.app/Contents/Resources/sprites
cp resources/* dist/Clangen.app/Contents/Resources/resources
rm -r dist/Clangen
codesign --force --sign - dist/Clangen.app

echo "Done!!"
