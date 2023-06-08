#!/usr/bin/env bash
set -e
git clone https://github.com/aaron-stafford/libwebrtc-docker-builder
mkdir -p /result
pushd libwebrtc-docker-builder
sudo ./build.sh
sudo ./run.sh
popd
git clone https://github.com/aaron-stafford/unity-webrtc-plugin-docker-builder
pushd unity-webrtc-plugin-docker-builder
sudo ./build.sh
sudo ./run.sh
