#!/usr/bin/env bash

cd /Users/buddybuild/workspace
echo '=== Start to run : npm install npm -g'
npm install npm -g

echo '=== Start to run : npm install -g cordova ionic'
npm install -g cordova ionic

echo '=== Start to run : npm install'
npm install

echo '=== Start to run : bower install'
bower install

echo '=== Start to run : ionic info'
ionic info

echo '=== Start to run : ionic add platforms'
ionic platform android ios

echo '=== Start to run : ionic state restore'
ionic state restore

echo '=== Start to run : ionic list platforms'
ionic platform list

echo '=== Start to run : cp buddybuild_prebuild to ios platform'
cp ./buddybuild_prebuild.sh ./platforms/ios
echo '=== Start to run : cp buddybuild_prebuild to android platform'
cp ./buddybuild_prebuild.sh ./platforms/android
echo '=== Start to run : cp ./build_extra.gradle to android platform'
cp ./build-extras.gradle ./platforms/android

echo '=== Start to run : env'
env

if hash android 2>/dev/null; then
  echo '=== Detected android command, run android list sdk --all'
  android list sdk --all
fi
