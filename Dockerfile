FROM --platform=linux/amd64 ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y pkg-config
RUN apt install -y python-is-python3
RUN apt install -y git
RUN apt install -y wget
RUN apt install -y pip

RUN mkdir -p /out/Debug
RUN mkdir -p /out/Release

RUN git clone https://github.com/Unity-Technologies/com.unity.webrtc.git
WORKDIR com.unity.webrtc/BuildScripts~
CMD ["./build_libwebrtc_android.sh"]
