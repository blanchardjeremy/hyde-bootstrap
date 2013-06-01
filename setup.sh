#!/bin/bash

git submodule update
cd bootstrap
npm install
make
cd ..
cp -rsf `pwd`/bootstrap/docs/assets/js/* `pwd`/content/media/js/libs
cp -rsf `pwd`/bootstrap/docs/assets/css/* `pwd`/content/media/css
