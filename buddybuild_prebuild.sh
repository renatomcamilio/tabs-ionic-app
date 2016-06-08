#!/usr/bin/env bash

cd /Users/buddybuild/workspace

if [ -z ${PLATFORM+x} ]; then
  echo '=== Detected environmental variable PLATFORM is set: $PLATFORM'
  ionic prepare $PLATFORM
else
  echo '=== Could not detect environmental variable PLATFORM. ionic prepare both ios and android. PLATFORM: $PLATFORM'
  ionic prepare android ios
fi
