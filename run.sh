#!/usr/bin/env bash
set -e
set -x
export LIBWEBRTC_REPO=https://github.com/aaron-stafford/com.unity.webrtc
export LIBWEBRTC_REPO_BRANCH=issue-802-part-1
git clone --branch variable-approach https://github.com/aaron-stafford/libwebrtc-docker-builder
mkdir -p result
pushd libwebrtc-docker-builder
./build.sh
./run.sh
popd
export WEBRTC_PLUGIN_REPO=https://github.com/aaron-stafford/com.unity.webrtc
export WEBRTC_PLUGIN_REPO_BRANCH=issue-802-part-2-workaround
git clone https://github.com/aaron-stafford/unity-webrtc-plugin-docker-builder
pushd unity-webrtc-plugin-docker-builder
./build.sh
./run.sh
popd
