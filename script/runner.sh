#!/usr/bin/env bash
git clone --branch issue-802-part-1 https://github.com/lumin-leaper/com.unity.webrtc --depth=1
mkdir -p out/Debug
mkdir -p out/Release
bash -e BuildScripts~/build_libwebrtc_android.sh
cp /com.unity.webrtc/artifacts/webrtc-android.zip /result/.
