#!/usr/bin/env bash

cd com.unity.webrtc

# The following may seem strange, but in order to map the "out" ifolder, the
# com.unity.webrtc folder needs to already exist with the "out" folder already
# in it. This is in part because the build_libwebrtc_android.sh script needs to
# be run from the com.unity.webrtc directory. So instead of perfoming a clone
# (which would create a new folder), the existing folder is initialized as a
# git repo, the origin is mapped and then fetched.
git init
git remote add origin https://github.com/Unity-Technologies/com.unity.webrtc.git
git fetch origin main:main --depth=1
git checkout main

./BuildScripts~/build_libwebrtc_android.sh
