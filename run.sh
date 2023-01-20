#!/usr/bin/env bash

mkdir -p result
docker run --platform=linux/amd64 -v $(pwd)/result:/result -v $(pwd)/script:/script -it build_libwebrtc_android
