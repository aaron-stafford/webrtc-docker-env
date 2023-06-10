#!/usr/bin/env bash
set -e
set -x
export LIBWEBRTC_REPO=https://github.com/lumin-leaper/com.unity.webrtc
export LIBWEBRTC_REPO_BRANCH=bugfix-depot_tools-issue-workaround
git clone https://github.com/aaron-stafford/libwebrtc-docker-builder
mkdir -p result
pushd libwebrtc-docker-builder
./build.sh
./run.sh
popd
export WEBRTC_PLUGIN_REPO=https://github.com/lumin-leaper/com.unity.webrtc
export WEBRTC_PLUGIN_REPO_BRANCH=main
git clone https://github.com/aaron-stafford/unity-webrtc-plugin-docker-builder
pushd unity-webrtc-plugin-docker-builder
./build.sh
./run.sh
popd
