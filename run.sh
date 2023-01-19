#!/usr/bin/env bash

rm -rf out/*
mkdir -p out/Debug
mkdir -p out/Release

docker run --platform=linux/amd64 -v $(pwd)/out:/com.unity.webrtc/out -v $(pwd)/script:/script -it build_libwebrtc_android
