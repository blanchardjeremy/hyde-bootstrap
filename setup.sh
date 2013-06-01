#!/bin/bash

echo "Fetching bootstrap from github"
git submodule update
cd bootstrap
echo "Installing necessary bootstrap dependencies"
npm install
echo "Generating bootstrap js and css files"
make
cd ..
echo "Creating symlinks to bootstrap js and css files"
cp -rf `pwd`/bootstrap/docs/assets/js/* `pwd`/content/media/js/libs
cp -rf `pwd`/bootstrap/docs/assets/css/* `pwd`/content/media/css
