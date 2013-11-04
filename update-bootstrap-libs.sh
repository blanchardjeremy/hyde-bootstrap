#!/bin/bash

echo "Fetching bootstrap from github"
git submodule update
cd bootstrap
echo "Installing necessary bootstrap dependencies"
npm install -g grunt-cli
npm install
echo "Generating bootstrap js and css files"
grunt dist
cd ..
echo "Creating symlinks to bootstrap js, css and font files"
cp -rf `pwd`/bootstrap/dist/js/* `pwd`/content/media/js/libs
cp -rf `pwd`/bootstrap/js/*.js `pwd`/content/media/js/libs
cp -rf `pwd`/bootstrap/dist/css/* `pwd`/content/media/css
cp -rf `pwd`/bootstrap/dist/fonts/* `pwd`/content/media/fonts
