#!/usr/bin/env bash
git clone https://github.com/aaron-stafford/libwebrtc-docker-builder
mkdir -p /result
pushd libwebrtc-docker-builder
sudo ./build.sh
sudo ./run.sh
sudo docker system prune # need to start with a bigger disk to avoid this. this is really a disk saving measure.
popd
git clone https://github.com/aaron-stafford/unity-webrtc-plugin-docker-builder
pushd unity-webrtc-plugin-docker-builder
sudo ./build.sh
sudo ./run.sh
